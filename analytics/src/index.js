"use strict";
import Analytics from './analytics'

const analytics = new Analytics('http://localhost:30001/visitors.json');
window.addEventListener('load', (event) => {
  analytics.register(event.target.URL);
  let forms = document.getElementsByTagName('form');
  forms = Array.prototype.slice.call( forms );
  forms.forEach((form) => {
    let email_field = form.querySelector('input[type="email"]');
    if(email_field) {
      form.addEventListener('submit', (event) => {
        analytics.send(email_field.value);
      });
    }
  });
});