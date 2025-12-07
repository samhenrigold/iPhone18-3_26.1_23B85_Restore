@interface TMLJSONObjectDerived
- (TMLJSONObjectDerived)initWithParent:(id)parent keyPath:(id)path;
- (id)rawJSON;
- (id)valueForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (void)tmlAddObserver:(id)observer forKeyPath:(id)path callback:(id)callback;
- (void)tmlRemoveObserver:(id)observer forKeyPath:(id)path;
@end

@implementation TMLJSONObjectDerived

- (TMLJSONObjectDerived)initWithParent:(id)parent keyPath:(id)path
{
  parentCopy = parent;
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = TMLJSONObjectDerived;
  v8 = [(TMLJSONObject *)&v13 initWithSchema:0 json:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_parent, parentCopy);
    v10 = [pathCopy stringByAppendingString:@"."];
    keyPath = v9->_keyPath;
    v9->_keyPath = v10;
  }

  return v9;
}

- (id)rawJSON
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v4 = [(NSString *)self->_keyPath substringToIndex:[(NSString *)self->_keyPath length]- 1];
  v5 = objc_loadWeakRetained(&self->_parent);
  rawJSON = [v5 rawJSON];
  v7 = [WeakRetained rawValueForKeyPath:v4 dictionary:rawJSON];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v6 = [(NSString *)self->_keyPath stringByAppendingString:keyCopy];

  v7 = [WeakRetained valueForKeyPath:v6];

  return v7;
}

- (id)valueForKeyPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v6 = [(NSString *)self->_keyPath stringByAppendingString:pathCopy];

  v7 = [WeakRetained valueForKeyPath:v6];

  return v7;
}

- (void)tmlAddObserver:(id)observer forKeyPath:(id)path callback:(id)callback
{
  callbackCopy = callback;
  pathCopy = path;
  observerCopy = observer;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v11 = [(NSString *)self->_keyPath stringByAppendingString:pathCopy];

  [WeakRetained tmlAddObserver:observerCopy forKeyPath:v11 callback:callbackCopy];
}

- (void)tmlRemoveObserver:(id)observer forKeyPath:(id)path
{
  pathCopy = path;
  observerCopy = observer;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v8 = [(NSString *)self->_keyPath stringByAppendingString:pathCopy];

  [WeakRetained tmlRemoveObserver:observerCopy forKeyPath:v8];
}

@end