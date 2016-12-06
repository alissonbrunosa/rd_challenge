"use strict";

import View from './view';
import Storage from './storage'
import _ from 'lodash';

const Analytics = (() => {
  function Analytics(event) {
    let pages = Storage.get('pages') || []
    pages.push(new View(event.target.URL, new Date()));
    Storage.add('pages', pages);
    console.log(_.uniqBy(pages, 'url'));
  }
  return Analytics;
})();

window.addEventListener('load', Analytics);