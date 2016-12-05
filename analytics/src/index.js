"use strict";

import View from './view';
import LocalStorage from './local_storage'
import _ from 'lodash';


window.onload = (event) => {
  let pages = LocalStorage.get('pages') || []
  pages.push(new View(event.target.URL, new Date()));
  LocalStorage.add('pages', pages);
  console.log(_.uniqBy(pages, 'url'));
}