import axios from 'axios';

export default class Service {
  constructor(base) {
    this.base = base;
  }

  saveVisitor(visitor, success) {
    axios.post(`${this.base}/visitors.json`, visitor).then(success).catch((error) => {
      console.log(error);
    });
  }
}