
import Storage from '../src/storage'; 

describe('Storage', () => {
  it('#add', () => {
    Storage.add('item', 10);
    expect(Storage.getStore().getItem('item')).toEqual('10')
  });

  it('#get', () => {
    Storage.add('item', 10);
    expect(Storage.get('item')).toEqual(10)
  });

  it('#clear', () => {
    Storage.add('user', {
      email: 'fulano@teste.com'
    });
    Storage.clear();
    expect(Storage.getStore().getItem('user')).toEqual(null);
  });

  it('#get should return an object', () => {
    let user = {
      email: 'fulano@teste.com',
      name: 'Fulano'
    };

    Storage.add('user', user);
    let recovered = Storage.get('user');
    expect(typeof(recovered)).toEqual('object');
    expect(recovered.email).toEqual(user.email);
  });
});
