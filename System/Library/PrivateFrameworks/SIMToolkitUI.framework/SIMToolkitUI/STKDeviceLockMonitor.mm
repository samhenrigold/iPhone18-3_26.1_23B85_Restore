@interface STKDeviceLockMonitor
+ (id)sharedInstance;
- (BOOL)isDeviceLocked;
- (STKDeviceLockMonitor)init;
- (void)_updateDeviceLockState;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)init;
- (void)removeObserver:(id)observer;
@end

@implementation STKDeviceLockMonitor

void __28__STKDeviceLockMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDeviceLockState];
}

- (void)_updateDeviceLockState
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_stateLock);
  os_unfair_lock_lock(&self->_observersLock);
  v3 = +[STKUtil isDeviceLocked];
  v4 = v3;
  if (self->_deviceLocked == v3)
  {
    v5 = 0;
  }

  else
  {
    self->_deviceLocked = v3;
    v5 = [(NSHashTable *)self->_observersList copy];
    v6 = STKCommonLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "unlocked";
      if (v4)
      {
        v7 = "locked";
      }

      *buf = 136315138;
      v19 = v7;
      _os_log_impl(&dword_262BB4000, v6, OS_LOG_TYPE_DEFAULT, "Device is %s", buf, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_observersLock);
  os_unfair_lock_unlock(&self->_stateLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) deviceLockStateChanged:{v4, v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[STKDeviceLockMonitor sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

uint64_t __38__STKDeviceLockMonitor_sharedInstance__block_invoke()
{
  sharedInstance___instance = objc_alloc_init(STKDeviceLockMonitor);

  return MEMORY[0x2821F96F8]();
}

- (STKDeviceLockMonitor)init
{
  v22 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = STKDeviceLockMonitor;
  v2 = [(STKDeviceLockMonitor *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_stateLock._os_unfair_lock_opaque = 0;
    v2->_observersLock._os_unfair_lock_opaque = 0;
    v2->_notify_token = -1;
    p_notify_token = &v2->_notify_token;
    objc_initWeak(&location, v2);
    v5 = dispatch_get_global_queue(33, 0);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __28__STKDeviceLockMonitor_init__block_invoke;
    v16 = &unk_279B4C648;
    objc_copyWeak(&v17, &location);
    v6 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v3->_notify_token, v5, &v13);

    v8 = STKCommonLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *p_notify_token;
      *buf = 67109120;
      v21 = v9;
      _os_log_impl(&dword_262BB4000, v8, OS_LOG_TYPE_DEFAULT, "Received token: %d for lock status update", buf, 8u);
    }

    if (v6)
    {
      v11 = STKCommonLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(STKDeviceLockMonitor *)v6 init];
      }
    }

    [(STKDeviceLockMonitor *)v3 _updateDeviceLockState:v13];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  notify_token = self->_notify_token;
  if (notify_token != -1)
  {
    notify_cancel(notify_token);
    self->_notify_token = -1;
  }

  v4.receiver = self;
  v4.super_class = STKDeviceLockMonitor;
  [(STKDeviceLockMonitor *)&v4 dealloc];
}

- (BOOL)isDeviceLocked
{
  os_unfair_lock_lock(&self->_stateLock);
  deviceLocked = self->_deviceLocked;
  os_unfair_lock_unlock(&self->_stateLock);
  return deviceLocked;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v8 = observerCopy;
    os_unfair_lock_lock(&self->_observersLock);
    observersList = self->_observersList;
    if (!observersList)
    {
      hashTableWithWeakObjects = [MEMORY[0x277CCAA50] hashTableWithWeakObjects];
      v7 = self->_observersList;
      self->_observersList = hashTableWithWeakObjects;

      observersList = self->_observersList;
    }

    [(NSHashTable *)observersList addObject:v8];
    os_unfair_lock_unlock(&self->_observersLock);
    observerCopy = v8;
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observersList removeObject:observerCopy];

    if (![(NSHashTable *)self->_observersList count])
    {
      observersList = self->_observersList;
      self->_observersList = 0;
    }

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)init
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_262BB4000, a2, OS_LOG_TYPE_ERROR, "Could not register for lock state notification: %d", v2, 8u);
}

@end