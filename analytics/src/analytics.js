'use strict';

import View from './view';
import Storage from './storage'
import _ from 'lodash';
import axios from 'axios';
import moment from 'moment';


export default class Analytics {
  constructor(url) {
    this.url = url;
    this.views = Storage.get('views') || [];
  }

  register(url) {
    this.views.push(new View(url, moment().format('YYYY-MM-DD HH:mm:ss')));
    this.views = _.uniqBy(this.views, 'url');
    Storage.add('views', this.views);
  }

  send(email) {
    let data = {
      email: email,
      views: this.views
    }
    console.log("Enviando..");
    axios.post(this.url, data).then((response) => {
    }).catch((error) => {
      console.log(error);
    });
  }
}