class Storage {
  constructor() {
    if(sessionStorage) {
      this.store = sessionStorage;
    } else if(localStorage) {
      this.store = localStorage;
    } else {
      throw "Storage is not defined";
    }
  }

  add(key, object) {
    let str_obj = JSON.stringify(object);
    this.store.setItem(key, str_obj);
  }

  get(key) {
    let str_obj = this.store.getItem(key);
    if(str_obj === null) return;
    return JSON.parse(str_obj);
  }

  clear() {
    this.store.clear();
  }

  getStore() {
    return this.store;
  }
}

export default new Storage();