@interface TMLJSONObserverInfo
- (BOOL)isEqual:(id)equal;
- (TMLJSONObserverInfo)initWithObserver:(id)observer keyPath:(id)path callback:(id)callback;
- (id)target;
- (void)notify:(id)notify;
@end

@implementation TMLJSONObserverInfo

- (TMLJSONObserverInfo)initWithObserver:(id)observer keyPath:(id)path callback:(id)callback
{
  observerCopy = observer;
  pathCopy = path;
  callbackCopy = callback;
  v16.receiver = self;
  v16.super_class = TMLJSONObserverInfo;
  v11 = [(TMLJSONObserverInfo *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_keyPath, path);
    v12->_targetUnsafe = observerCopy;
    objc_storeWeak(&v12->_target, observerCopy);
    v13 = MEMORY[0x27438BB60](callbackCopy);
    callback = v12->_callback;
    v12->_callback = v13;

    v12->_hash = [observerCopy hash];
  }

  return v12;
}

- (void)notify:(id)notify
{
  callback = self->_callback;
  notifyCopy = notify;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  callback[2](callback, WeakRetained, self->_keyPath, notifyCopy);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    targetUnsafe = [v5 targetUnsafe];
    targetUnsafe2 = [(TMLJSONObserverInfo *)self targetUnsafe];
    if (targetUnsafe == targetUnsafe2)
    {
      keyPath = [v5 keyPath];
      keyPath2 = [(TMLJSONObserverInfo *)self keyPath];
      v8 = keyPath == keyPath2;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end