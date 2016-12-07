'use strict';

import View from './view';
import Storage from './storage'
import Service from './service';
import moment from 'moment';


export default class Analytics {
  constructor() {
    this.service = new Service('http://localhost:30001');
    this.visitor = Storage.get('visitor') || this.init_visitor();
  }

  init_visitor() {
    return {
      email: null,
      views: []
    }
  }

  register(url) {
    let view = new View(url, moment().format('YYYY-MM-DD HH:mm:ss'));
    let { views } = this.visitor;
    views.push(view);
    if(this.visitor.email) {
      this.service.saveVisitor(this.visitor, (response) => {
        Storage.add('visitor', response.data);
      });
    } else { 
      Storage.add('visitor', this.visitor);
    }
  }

  send(email, callback) {
    this.visitor.email = email;
    this.service.saveVisitor(this.visitor, (response) => {
      Storage.add('visitor', response.data);
      if(callback) callback();
    });
  }
}