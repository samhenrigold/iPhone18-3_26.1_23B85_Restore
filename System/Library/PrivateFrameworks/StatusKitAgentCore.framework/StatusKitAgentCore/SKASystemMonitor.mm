@interface SKASystemMonitor
+ (SKASystemMonitor)sharedInstance;
+ (id)logger;
- (BOOL)isFirstProcessLaunchOfBootSession;
- (BOOL)isUnderFirstDataProtectionLock;
- (SKASystemMonitor)init;
- (id)getBootSessionUUID;
- (void)_deliverNotificationSelectorToListeners:(SEL)listeners;
- (void)_listenForKeyBagChangeNotifications;
- (void)_updateLockState;
- (void)addListener:(id)listener;
- (void)isFirstProcessLaunchOfBootSession;
- (void)recordBootSessionUUID:(id)d;
- (void)removeListener:(id)listener;
@end

@implementation SKASystemMonitor

void __55__SKASystemMonitor__listenForKeyBagChangeNotifications__block_invoke(int a1, int val)
{
  if (notify_is_valid_token(val))
  {
    v2 = +[SKASystemMonitor sharedInstance];
    [v2 _updateLockState];
  }
}

+ (SKASystemMonitor)sharedInstance
{
  if (sharedInstance_creation != -1)
  {
    +[SKASystemMonitor sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (void)_updateLockState
{
  os_unfair_lock_lock(&self->_ivarLock);
  _deviceStillUnderFirstLock = [(SKASystemMonitor *)self _deviceStillUnderFirstLock];
  if (_deviceStillUnderFirstLock)
  {
    self->_underFirstLock = _deviceStillUnderFirstLock;

    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    underFirstLock = self->_underFirstLock;
    self->_underFirstLock = _deviceStillUnderFirstLock;
    os_unfair_lock_unlock(&self->_ivarLock);
    if (underFirstLock)
    {

      [(SKASystemMonitor *)self _deliverNotificationSelectorToListeners:sel_systemDidLeaveFirstDataProtectionLock];
    }
  }
}

- (SKASystemMonitor)init
{
  v8.receiver = self;
  v8.super_class = SKASystemMonitor;
  v2 = [(SKASystemMonitor *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_ivarLock._os_unfair_lock_opaque = 0;
    v4 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    listeners = v3->_listeners;
    v3->_listeners = v4;

    v3->_underFirstLock = 0;
    isFirstProcessLaunch = v3->_isFirstProcessLaunch;
    v3->_isFirstProcessLaunch = 0;

    [(SKASystemMonitor *)v3 _updateLockState];
    [(SKASystemMonitor *)v3 _listenForKeyBagChangeNotifications];
  }

  return v3;
}

uint64_t __34__SKASystemMonitor_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(SKASystemMonitor);

  return MEMORY[0x2821F96F8]();
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  os_unfair_lock_lock(&self->_ivarLock);
  if (![(NSHashTable *)self->_listeners containsObject:listenerCopy])
  {
    [(NSHashTable *)self->_listeners addObject:listenerCopy];
  }

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  os_unfair_lock_lock(&self->_ivarLock);
  [(NSHashTable *)self->_listeners removeObject:listenerCopy];

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (BOOL)isUnderFirstDataProtectionLock
{
  os_unfair_lock_lock(&self->_ivarLock);
  underFirstLock = self->_underFirstLock;
  os_unfair_lock_unlock(&self->_ivarLock);
  return underFirstLock;
}

- (void)_listenForKeyBagChangeNotifications
{
  out_token = -1;
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create(0, v2);

  if (notify_register_dispatch(*MEMORY[0x277D28B30], &out_token, v3, &__block_literal_global_5) || !notify_is_valid_token(out_token))
  {
    v4 = +[SKASystemMonitor logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SKASystemMonitor *)v4 _listenForKeyBagChangeNotifications];
    }
  }
}

- (void)_deliverNotificationSelectorToListeners:(SEL)listeners
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_ivarLock);
  allObjects = [(NSHashTable *)self->_listeners allObjects];
  os_unfair_lock_unlock(&self->_ivarLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v12 = +[SKASystemMonitor logger];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = NSStringFromSelector(listeners);
            *buf = 138412546;
            v19 = v13;
            v20 = 2112;
            v21 = v11;
            _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Delivering %@ to %@", buf, 0x16u);
          }

          [v11 performSelectorOnMainThread:listeners withObject:0 waitUntilDone:1];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v8);
  }
}

- (BOOL)isFirstProcessLaunchOfBootSession
{
  v25 = *MEMORY[0x277D85DE8];
  isFirstProcessLaunch = self->_isFirstProcessLaunch;
  if (!isFirstProcessLaunch)
  {
    v4 = +[SKAEnvironment overrideStatusKitPrefsDomain];
    v5 = v4;
    v6 = @"com.apple.StatusKitAgent";
    if (v4)
    {
      v6 = v4;
    }

    v7 = v6;

    v8 = +[SKAEnvironment overrideBootSessionUUIDPrefsKey];
    v9 = v8;
    v10 = @"bootSessionUUID";
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = CFPreferencesCopyAppValue(v11, v7);
    getBootSessionUUID = [(SKASystemMonitor *)self getBootSessionUUID];
    v14 = +[SKASystemMonitor logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 138412546;
      *&v22[4] = v12;
      v23 = 2112;
      v24 = getBootSessionUUID;
      _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Found current boot UUID %@ and last boot UUID %@", v22, 0x16u);
    }

    if (!getBootSessionUUID)
    {
      v16 = +[SKASystemMonitor logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(SKASystemMonitor *)v12 isFirstProcessLaunchOfBootSession];
      }

      goto LABEL_18;
    }

    [(SKASystemMonitor *)self recordBootSessionUUID:getBootSessionUUID];
    if (v12)
    {
      v15 = [v12 isEqualToString:getBootSessionUUID];
      v16 = +[SKASystemMonitor logger];
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (!v15)
      {
        if (v17)
        {
          *v22 = 0;
          _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "StatusKitAgent is launching for the first time in this boot session", v22, 2u);
        }

        v19 = MEMORY[0x277CBEC38];
        goto LABEL_19;
      }

      if (v17)
      {
        *v22 = 0;
        v18 = "StatusKitAgent is not launching for the first time in this boot session";
LABEL_17:
        _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, v18, v22, 2u);
      }
    }

    else
    {
      v16 = +[SKASystemMonitor logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        v18 = "Last boot session UUID was not present in preferences";
        goto LABEL_17;
      }
    }

LABEL_18:
    v19 = MEMORY[0x277CBEC28];
LABEL_19:

    v20 = self->_isFirstProcessLaunch;
    self->_isFirstProcessLaunch = v19;

    isFirstProcessLaunch = self->_isFirstProcessLaunch;
  }

  return [(NSNumber *)isFirstProcessLaunch BOOLValue];
}

- (id)getBootSessionUUID
{
  if (getBootSessionUUID_onceToken != -1)
  {
    [SKASystemMonitor getBootSessionUUID];
  }

  v3 = getBootSessionUUID_bootUUID;

  return v3;
}

void __38__SKASystemMonitor_getBootSessionUUID__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  memset(v3, 0, sizeof(v3));
  v2 = 37;
  if (!sysctlbyname("kern.bootsessionuuid", v3, &v2, 0, 0))
  {
    v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
    v1 = getBootSessionUUID_bootUUID;
    getBootSessionUUID_bootUUID = v0;
  }
}

- (void)recordBootSessionUUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = +[SKASystemMonitor logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = dCopy;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Recording that current boot session UUID is %@", &v15, 0xCu);
  }

  v6 = +[SKAEnvironment overrideStatusKitPrefsDomain];
  v7 = v6;
  v8 = @"com.apple.StatusKitAgent";
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = +[SKAEnvironment overrideBootSessionUUIDPrefsKey];
  v11 = v10;
  v12 = @"bootSessionUUID";
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  CFPreferencesSetAppValue(v13, dCopy, v9);
  isFirstProcessLaunch = self->_isFirstProcessLaunch;
  self->_isFirstProcessLaunch = 0;
}

+ (id)logger
{
  if (logger_onceToken_8 != -1)
  {
    +[SKASystemMonitor logger];
  }

  v3 = logger__logger_8;

  return v3;
}

uint64_t __26__SKASystemMonitor_logger__block_invoke()
{
  logger__logger_8 = os_log_create("com.apple.StatusKit", "SKASystemMonitor");

  return MEMORY[0x2821F96F8]();
}

- (void)isFirstProcessLaunchOfBootSession
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_220099000, a2, OS_LOG_TYPE_ERROR, "Current boot session UUID could not be retrieved, last boot session UUID is %@", &v2, 0xCu);
}

@end