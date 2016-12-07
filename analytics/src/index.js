"use strict";
import Analytics from './analytics'

const analytics = new Analytics();
window.addEventListener('load', (event) => {
  analytics.register(event.target.URL);
  let forms = document.getElementsByTagName('form');
  forms = Array.prototype.slice.call( forms );
  forms.forEach((form) => {
    let email_field = form.querySelector('input[type="email"]');
    if(email_field) {
      form.addEventListener('submit', (event) => {
        event.preventDefault();
        analytics.send(email_field.value, () => { event.target.submit() });
      });
    }
  });
});