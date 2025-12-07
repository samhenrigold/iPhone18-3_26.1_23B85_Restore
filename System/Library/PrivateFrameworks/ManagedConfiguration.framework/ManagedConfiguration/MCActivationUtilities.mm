@interface MCActivationUtilities
+ (id)sharedInstance;
- (id)activationRecord;
- (id)initPrivate;
- (int)isActivated;
- (int)isHRNMode;
- (void)_clearCache;
- (void)addDidBecomeReadyKey:(id)key callback:(id)callback;
- (void)setIsReady:(BOOL)ready;
@end

@implementation MCActivationUtilities

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MCActivationUtilities_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance__sharedInstance;

  return v2;
}

uint64_t __39__MCActivationUtilities_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__sharedInstance = [objc_alloc(*(a1 + 32)) initPrivate];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initPrivate
{
  v9.receiver = self;
  v9.super_class = MCActivationUtilities;
  v2 = [(MCActivationUtilities *)&v9 init];
  v3 = v2;
  if (v2)
  {
    isHRNModeCache = v2->_isHRNModeCache;
    v2->_isHRNModeCache = 0;

    v3->_isActivatedCache = 0;
    activationRecordCache = v3->_activationRecordCache;
    v3->_activationRecordCache = 0;

    v3->_isReady = 1;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    didBecomeReadyCallbacks = v3->_didBecomeReadyCallbacks;
    v3->_didBecomeReadyCallbacks = dictionary;
  }

  return v3;
}

- (void)setIsReady:(BOOL)ready
{
  v17 = *MEMORY[0x1E69E9840];
  isReady = self->_isReady;
  self->_isReady = ready;
  if (ready && !isReady)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [(NSMutableDictionary *)self->_didBecomeReadyCallbacks allValues];
    v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          (*(*(*(&v12 + 1) + 8 * i) + 16))();
        }

        v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    didBecomeReadyCallbacks = self->_didBecomeReadyCallbacks;
    self->_didBecomeReadyCallbacks = dictionary;
  }
}

- (int)isActivated
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_isReady)
  {
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MCActivationUtilities *)selfCopy isActivatedCache])
  {
    v3 = 2;
  }

  else
  {
    v12 = 0;
    v4 = MCMAEGetActivationStateWithError(&v12);
    v5 = v12;
    if (v5)
    {
      v6 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v5;
        _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "MAEGetActivationStateWithError() error: %@", buf, 0xCu);
      }

      v3 = 0;
    }

    else
    {
      v7 = MCkMAActivationStateActivated();
      v8 = [v4 isEqualToString:v7];

      if (v8)
      {
        [(MCActivationUtilities *)selfCopy setIsActivatedCache:1];
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v10 = MCkNotificationActivationStateChanged();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, selfCopy, MCActivationUtilitiesDeactivated, v10, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (id)activationRecord
{
  v10 = *MEMORY[0x1E69E9840];
  activationRecordCache = [(MCActivationUtilities *)self activationRecordCache];
  if (!activationRecordCache)
  {
    v7 = 0;
    activationRecordCache = MCMAECopyActivationRecordWithError(&v7);
    v4 = v7;
    if (v4)
    {
      v5 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v4;
        _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "MAECopyActivationRecordWithError error: %@", buf, 0xCu);
      }

      activationRecordCache = 0;
    }

    [(MCActivationUtilities *)self setActivationRecordCache:activationRecordCache];
  }

  return activationRecordCache;
}

- (int)isHRNMode
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_isReady)
  {
    if (_os_feature_enabled_impl())
    {
      v3 = _MCLogObjects;
      v4 = 2;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_DEBUG, "isHRNMode returning yes because of feature flag", &v20, 2u);
      }
    }

    else
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      isHRNModeCache = [(MCActivationUtilities *)selfCopy isHRNModeCache];
      v8 = isHRNModeCache;
      if (isHRNModeCache)
      {
        bOOLValue = [isHRNModeCache BOOLValue];
        v10 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
        {
          v11 = "no";
          if (bOOLValue)
          {
            v11 = "yes";
          }

          v20 = 136446210;
          v21 = v11;
          _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_DEBUG, "isHRNMode returning %{public}s from cache", &v20, 0xCu);
        }

        if (bOOLValue)
        {
          v4 = 2;
        }

        else
        {
          v4 = 1;
        }
      }

      else if ([(MCActivationUtilities *)selfCopy isActivated]== 2)
      {
        activationRecord = [(MCActivationUtilities *)selfCopy activationRecord];
        v13 = [activationRecord objectForKeyedSubscript:@"DeviceConfigurationFlags"];
        v14 = [v13 integerValue] & 0x21;
        v15 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
        {
          v16 = "no";
          if (v14 == 33)
          {
            v16 = "yes";
          }

          v20 = 136446210;
          v21 = v16;
          _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEBUG, "isHRNMode returning %{public}s from activation record", &v20, 0xCu);
        }

        v17 = [MEMORY[0x1E696AD98] numberWithBool:v14 == 33];
        [(MCActivationUtilities *)selfCopy setIsHRNModeCache:v17];

        if (v14 == 33)
        {
          v4 = 2;
        }

        else
        {
          v4 = 1;
        }
      }

      else
      {
        v18 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_DEBUG, "isHRNMode returning unknown because the device isn't activated", &v20, 2u);
        }

        v4 = 0;
      }

      objc_sync_exit(selfCopy);
    }
  }

  else
  {
    v5 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEBUG, "isHRNMode returning unknown because it's not ready", &v20, 2u);
    }

    return 0;
  }

  return v4;
}

- (void)addDidBecomeReadyKey:(id)key callback:(id)callback
{
  keyCopy = key;
  callbackCopy = callback;
  v8 = callbackCopy;
  if (self->_isReady)
  {
    v9 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_FAULT, "Ignoring an added callback when MCActivationUtilities are already ready", v11, 2u);
    }
  }

  else
  {
    v10 = MEMORY[0x1AC55F990](callbackCopy);
    [(NSMutableDictionary *)self->_didBecomeReadyCallbacks setObject:v10 forKeyedSubscript:keyCopy];
  }
}

- (void)_clearCache
{
  observer = self;
  objc_sync_enter(observer);
  [(MCActivationUtilities *)observer setIsHRNModeCache:0];
  [(MCActivationUtilities *)observer setIsActivatedCache:0];
  [(MCActivationUtilities *)observer setActivationRecordCache:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = MCkNotificationActivationStateChanged();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, observer, v3, 0);
  objc_sync_exit(observer);
}

@end