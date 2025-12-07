@interface CSDDeviceLockStateObserver
- (CSDDeviceLockStateObserver)initWithFirstUnlockObserver:(id)observer whenUnlockedObserver:(id)unlockedObserver queue:(id)queue;
- (CSDDeviceLockStateObserver)initWithQueue:(id)queue;
- (void)_handleDeviceFirstUnlockNotification;
- (void)_handleDeviceLockStatusNotification;
- (void)_refreshHasBeenUnlockedSinceBoot;
- (void)performBlockAfterFirstUnlock:(id)unlock;
- (void)performBlockWhenUnlocked:(id)unlocked;
@end

@implementation CSDDeviceLockStateObserver

- (CSDDeviceLockStateObserver)initWithFirstUnlockObserver:(id)observer whenUnlockedObserver:(id)unlockedObserver queue:(id)queue
{
  observerCopy = observer;
  unlockedObserverCopy = unlockedObserver;
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = CSDDeviceLockStateObserver;
  v12 = [(CSDDeviceLockStateObserver *)&v25 init];
  if (v12)
  {
    dispatch_assert_queue_V2(queueCopy);
    objc_storeStrong(&v12->_queue, queue);
    v13 = +[NSMutableArray array];
    firstUnlockCallbacks = v12->_firstUnlockCallbacks;
    v12->_firstUnlockCallbacks = v13;

    v15 = +[NSMutableArray array];
    whenUnlockedCallbacks = v12->_whenUnlockedCallbacks;
    v12->_whenUnlockedCallbacks = v15;

    hasBeenUnlockedSinceBootBlock = v12->_hasBeenUnlockedSinceBootBlock;
    v12->_hasBeenUnlockedSinceBootBlock = &stru_10061E130;

    mobileKeyLockStateBlock = v12->_mobileKeyLockStateBlock;
    v12->_mobileKeyLockStateBlock = &stru_10061E190;

    v12->_mobileKeyLockState = -1;
    objc_initWeak(&location, v12);
    objc_storeStrong(&v12->_firstUnlockObserver, observer);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001DCB84;
    v22[3] = &unk_10061A740;
    objc_copyWeak(&v23, &location);
    [(TUNotifyObserver *)v12->_firstUnlockObserver setCallback:v22];
    objc_storeStrong(&v12->_whenUnlockedObserver, unlockedObserver);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001DCBC4;
    v20[3] = &unk_10061A740;
    objc_copyWeak(&v21, &location);
    [(TUNotifyObserver *)v12->_whenUnlockedObserver setCallback:v20];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (CSDDeviceLockStateObserver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = [[TUNotifyObserver alloc] initWithNotificationName:@"com.apple.mobile.keybagd.first_unlock" queue:queueCopy];
  v6 = [[TUNotifyObserver alloc] initWithNotificationName:@"com.apple.mobile.keybagd.lock_status" queue:queueCopy];
  v7 = [(CSDDeviceLockStateObserver *)self initWithFirstUnlockObserver:v5 whenUnlockedObserver:v6 queue:queueCopy];

  return v7;
}

- (void)_refreshHasBeenUnlockedSinceBoot
{
  queue = [(CSDDeviceLockStateObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(CSDDeviceLockStateObserver *)self hasBeenUnlockedSinceBoot])
  {
    hasBeenUnlockedSinceBootBlock = [(CSDDeviceLockStateObserver *)self hasBeenUnlockedSinceBootBlock];
    v5 = hasBeenUnlockedSinceBootBlock[2]();

    hasBeenUnlockedSinceBoot = [(CSDDeviceLockStateObserver *)self hasBeenUnlockedSinceBoot];
    if (v5 != hasBeenUnlockedSinceBoot)
    {
      v7 = sub_100004778(hasBeenUnlockedSinceBoot);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8[0] = 67109376;
        v8[1] = [(CSDDeviceLockStateObserver *)self hasBeenUnlockedSinceBoot];
        v9 = 1024;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "hasBeenUnlockedSinceBoot changing from %d to %d", v8, 0xEu);
      }

      [(CSDDeviceLockStateObserver *)self setHasBeenUnlockedSinceBoot:v5];
    }
  }
}

- (void)_handleDeviceFirstUnlockNotification
{
  queue = [(CSDDeviceLockStateObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDDeviceLockStateObserver *)self _refreshHasBeenUnlockedSinceBoot];
  if ([(CSDDeviceLockStateObserver *)self hasBeenUnlockedSinceBoot])
  {
    firstUnlockObserver = [(CSDDeviceLockStateObserver *)self firstUnlockObserver];
    [firstUnlockObserver endObserving];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    firstUnlockCallbacks = [(CSDDeviceLockStateObserver *)self firstUnlockCallbacks];
    v6 = [firstUnlockCallbacks countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(firstUnlockCallbacks);
          }

          (*(*(*(&v11 + 1) + 8 * v9) + 16))();
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [firstUnlockCallbacks countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    firstUnlockCallbacks2 = [(CSDDeviceLockStateObserver *)self firstUnlockCallbacks];
    [firstUnlockCallbacks2 removeAllObjects];
  }
}

- (void)_handleDeviceLockStatusNotification
{
  queue = [(CSDDeviceLockStateObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  mobileKeyLockStateBlock = [(CSDDeviceLockStateObserver *)self mobileKeyLockStateBlock];
  v5 = mobileKeyLockStateBlock[2]();

  v6 = v5 == 3 || v5 == 0;
  if (v6 && [(CSDDeviceLockStateObserver *)self mobileKeyLockState]&& [(CSDDeviceLockStateObserver *)self mobileKeyLockState]!= 3)
  {
    whenUnlockedCallbacks = [(CSDDeviceLockStateObserver *)self whenUnlockedCallbacks];
    v8 = [whenUnlockedCallbacks count];

    if (v8)
    {
      v10 = sub_100004778(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        mobileKeyLockState = [(CSDDeviceLockStateObserver *)self mobileKeyLockState];
        v25 = 1024;
        v26 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "mobileKeyLockState changing from %d to %d", buf, 0xEu);
      }
    }

    whenUnlockedObserver = [(CSDDeviceLockStateObserver *)self whenUnlockedObserver];
    [whenUnlockedObserver endObserving];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    whenUnlockedCallbacks2 = [(CSDDeviceLockStateObserver *)self whenUnlockedCallbacks];
    v13 = [whenUnlockedCallbacks2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(whenUnlockedCallbacks2);
          }

          (*(*(*(&v18 + 1) + 8 * v16) + 16))();
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [whenUnlockedCallbacks2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    whenUnlockedCallbacks3 = [(CSDDeviceLockStateObserver *)self whenUnlockedCallbacks];
    [whenUnlockedCallbacks3 removeAllObjects];
  }

  [(CSDDeviceLockStateObserver *)self setMobileKeyLockState:v5];
}

- (void)performBlockAfterFirstUnlock:(id)unlock
{
  unlockCopy = unlock;
  queue = [(CSDDeviceLockStateObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDDeviceLockStateObserver *)self _refreshHasBeenUnlockedSinceBoot];
  hasBeenUnlockedSinceBoot = [(CSDDeviceLockStateObserver *)self hasBeenUnlockedSinceBoot];
  v7 = hasBeenUnlockedSinceBoot;
  v8 = sub_100004778(hasBeenUnlockedSinceBoot);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device has been unlocked since boot, so invoking block immediately", buf, 2u);
    }

    unlockCopy[2](unlockCopy);
LABEL_12:

    return;
  }

  if (v9)
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device has not been unlocked since boot, so storing block to be performed upon first unlock after boot", v20, 2u);
  }

  firstUnlockCallbacks = [(CSDDeviceLockStateObserver *)self firstUnlockCallbacks];
  v11 = [unlockCopy copy];

  v12 = objc_retainBlock(v11);
  [firstUnlockCallbacks addObject:v12];

  firstUnlockObserver = [(CSDDeviceLockStateObserver *)self firstUnlockObserver];
  if (firstUnlockObserver)
  {
    v14 = firstUnlockObserver;
    firstUnlockObserver2 = [(CSDDeviceLockStateObserver *)self firstUnlockObserver];
    isObserving = [firstUnlockObserver2 isObserving];

    if ((isObserving & 1) == 0)
    {
      v18 = sub_100004778(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device has not been unlocked-after-boot and is not yet observing device lock-after-boot changes, so begin to observe device unlock-after-boot changes", v19, 2u);
      }

      unlockCopy = [(CSDDeviceLockStateObserver *)self firstUnlockObserver];
      [unlockCopy beginObserving];
      goto LABEL_12;
    }
  }
}

- (void)performBlockWhenUnlocked:(id)unlocked
{
  unlockedCopy = unlocked;
  queue = [(CSDDeviceLockStateObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(CSDDeviceLockStateObserver *)self mobileKeyLockState]== -1)
  {
    mobileKeyLockStateBlock = [(CSDDeviceLockStateObserver *)self mobileKeyLockStateBlock];
    [(CSDDeviceLockStateObserver *)self setMobileKeyLockState:mobileKeyLockStateBlock[2]()];
  }

  mobileKeyLockState = [(CSDDeviceLockStateObserver *)self mobileKeyLockState];
  if (mobileKeyLockState && (mobileKeyLockState = [(CSDDeviceLockStateObserver *)self mobileKeyLockState], mobileKeyLockState != 3))
  {
    v9 = sub_100004778(mobileKeyLockState);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Adding callback to perform on next unlock", v21, 2u);
    }

    whenUnlockedCallbacks = [(CSDDeviceLockStateObserver *)self whenUnlockedCallbacks];
    v11 = [unlockedCopy copy];
    v12 = objc_retainBlock(v11);
    [whenUnlockedCallbacks addObject:v12];

    whenUnlockedObserver = [(CSDDeviceLockStateObserver *)self whenUnlockedObserver];
    if (whenUnlockedObserver)
    {
      v14 = whenUnlockedObserver;
      whenUnlockedObserver2 = [(CSDDeviceLockStateObserver *)self whenUnlockedObserver];
      isObserving = [whenUnlockedObserver2 isObserving];

      if ((isObserving & 1) == 0)
      {
        v18 = sub_100004778(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device is not yet observing device unlock changes, beginning to observe device unlock changes", v20, 2u);
        }

        whenUnlockedObserver3 = [(CSDDeviceLockStateObserver *)self whenUnlockedObserver];
        [whenUnlockedObserver3 beginObserving];
      }
    }
  }

  else
  {
    v8 = sub_100004778(mobileKeyLockState);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device unlocked, performing callback immediately", buf, 2u);
    }

    unlockedCopy[2](unlockedCopy);
  }
}

@end