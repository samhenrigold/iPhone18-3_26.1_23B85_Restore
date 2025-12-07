@interface BLSPendingBacklightProxy
- (BLSPendingBacklightProxy)init;
- (BOOL)deviceSupportsAlwaysOn;
- (BOOL)isAlwaysOnEnabled;
- (BOOL)isTransitioning;
- (id)performChangeRequest:(id)request;
- (int64_t)backlightState;
- (int64_t)flipbookState;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)replaceWithBacklightProxy:(id)proxy;
@end

@implementation BLSPendingBacklightProxy

- (BOOL)isAlwaysOnEnabled
{
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    isAlwaysOnEnabled = [(BLSBacklightProxy *)replacementBacklightProxy isAlwaysOnEnabled];
  }

  else
  {
    isAlwaysOnEnabled = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return isAlwaysOnEnabled;
}

- (int64_t)backlightState
{
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    backlightState = [(BLSBacklightProxy *)replacementBacklightProxy backlightState];
  }

  else
  {
    backlightState = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return backlightState;
}

- (BLSPendingBacklightProxy)init
{
  v9.receiver = self;
  v9.super_class = BLSPendingBacklightProxy;
  v2 = [(BLSPendingBacklightProxy *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x277CBEB18] array];
    requests = v3->_requests;
    v3->_requests = array;

    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:2];
    observers = v3->_observers;
    v3->_observers = v6;
  }

  return v3;
}

- (int64_t)flipbookState
{
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    flipbookState = [(BLSBacklightProxy *)replacementBacklightProxy flipbookState];
  }

  else
  {
    flipbookState = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return flipbookState;
}

- (BOOL)isTransitioning
{
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    isTransitioning = [(BLSBacklightProxy *)replacementBacklightProxy isTransitioning];
  }

  else
  {
    isTransitioning = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return isTransitioning;
}

- (BOOL)deviceSupportsAlwaysOn
{
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    deviceSupportsAlwaysOn = [(BLSBacklightProxy *)replacementBacklightProxy deviceSupportsAlwaysOn];
  }

  else
  {
    deviceSupportsAlwaysOn = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return deviceSupportsAlwaysOn;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    [(BLSBacklightProxy *)replacementBacklightProxy addObserver:observerCopy];
  }

  else
  {
    [(NSHashTable *)self->_observers addObject:observerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    [(BLSBacklightProxy *)replacementBacklightProxy removeObserver:observerCopy];
  }

  else
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)performChangeRequest:(id)request
{
  requestCopy = request;
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    v6 = replacementBacklightProxy;
    os_unfair_lock_unlock(&self->_lock);
    v7 = [(BLSBacklightProxy *)v6 performChangeRequest:requestCopy];
  }

  else
  {
    requests = self->_requests;
    v9 = 0;
    [(NSMutableArray *)requests addObject:requestCopy];

    os_unfair_lock_unlock(&self->_lock);
    v7 = 0;
  }

  return v7;
}

- (void)replaceWithBacklightProxy:(id)proxy
{
  v39 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_replacementBacklightProxy, proxy);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  observers = self->_observers;
  self->_observers = 0;

  v8 = self->_requests;
  requests = self->_requests;
  self->_requests = 0;

  os_unfair_lock_unlock(&self->_lock);
  v11 = bls_assertions_log(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    selfCopy = self;
    v35 = 1024;
    v36 = [allObjects count];
    v37 = 1024;
    v38 = [(NSMutableArray *)v8 count];
    _os_log_debug_impl(&dword_21FE25000, v11, OS_LOG_TYPE_DEBUG, "%p backlight proxy setup, will set %u observers, perform %u requests", buf, 0x18u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = allObjects;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      v16 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [proxyCopy addObserver:*(*(&v27 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v14);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = v8;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [proxyCopy performChangeRequest:{*(*(&v23 + 1) + 8 * v21++), v23}];
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v19);
  }
}

@end