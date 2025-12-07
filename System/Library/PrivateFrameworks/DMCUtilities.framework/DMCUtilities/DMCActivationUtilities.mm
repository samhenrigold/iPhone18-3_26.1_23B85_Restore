@interface DMCActivationUtilities
+ (id)sharedInstance;
- (id)activationRecord;
- (id)initPrivate;
- (int)activationState;
- (int)hrnMode;
- (void)_clearCache;
- (void)addDidBecomeReadyKey:(id)key callback:(id)callback;
- (void)setIsReady:(BOOL)ready;
@end

@implementation DMCActivationUtilities

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__DMCActivationUtilities_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance__sharedInstance;

  return v2;
}

uint64_t __40__DMCActivationUtilities_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__sharedInstance = [objc_alloc(*(a1 + 32)) initPrivate];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initPrivate
{
  v9.receiver = self;
  v9.super_class = DMCActivationUtilities;
  v2 = [(DMCActivationUtilities *)&v9 init];
  v3 = v2;
  if (v2)
  {
    hrnModeCache = v2->_hrnModeCache;
    v2->_hrnModeCache = 0;

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

- (int)activationState
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->_isReady)
  {
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(DMCActivationUtilities *)selfCopy isActivatedCache])
  {
    v4 = 2;
  }

  else
  {
    v17 = 0;
    v5 = DMCMAEGetActivationStateWithError(&v17);
    v6 = v17;
    v8 = v6;
    if (v6)
    {
      v9 = *DMCLogObjects(v6, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v8;
        _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_ERROR, "MAEGetActivationStateWithError() error: %@", buf, 0xCu);
      }

      self->_isReady = 0;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v11 = DMCkNotificationActivationStateChanged();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, selfCopy, DMCActivationUtilitiesWaitingForReady, v11, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v4 = 0;
    }

    else
    {
      v12 = DMCkMAActivationStateActivated();
      v13 = [v5 isEqualToString:v12];

      if (v13)
      {
        [(DMCActivationUtilities *)selfCopy setIsActivatedCache:1];
        v14 = CFNotificationCenterGetDarwinNotifyCenter();
        v15 = DMCkNotificationActivationStateChanged();
        CFNotificationCenterAddObserver(v14, selfCopy, DMCActivationUtilitiesDeactivated, v15, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)activationRecord
{
  v12 = *MEMORY[0x1E69E9840];
  activationRecordCache = [(DMCActivationUtilities *)self activationRecordCache];
  if (!activationRecordCache)
  {
    v9 = 0;
    activationRecordCache = DMCMAECopyActivationRecordWithError(&v9);
    v4 = v9;
    v6 = v4;
    if (v4)
    {
      v7 = *DMCLogObjects(v4, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_ERROR, "MAECopyActivationRecordWithError error: %@", buf, 0xCu);
      }

      activationRecordCache = 0;
    }

    [(DMCActivationUtilities *)self setActivationRecordCache:activationRecordCache];
  }

  return activationRecordCache;
}

- (int)hrnMode
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = +[DMCMultiUserModeUtilities isSharediPad];
  if (v3)
  {
    return 1;
  }

  if (self->_isReady)
  {
    v6 = +[DMCFeatureFlags isHRNEnabled];
    if (v6)
    {
      v8 = *DMCLogObjects(v6, v7);
      v5 = 2;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_DEBUG, "hrnMode returning yes because of feature flag", &v30, 2u);
      }
    }

    else
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      hrnModeCache = [(DMCActivationUtilities *)selfCopy hrnModeCache];
      v12 = hrnModeCache;
      if (hrnModeCache)
      {
        bOOLValue = [hrnModeCache BOOLValue];
        v14 = bOOLValue;
        v16 = *DMCLogObjects(bOOLValue, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = "no";
          if (v14)
          {
            v17 = "yes";
          }

          v30 = 136446210;
          v31 = v17;
          _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_DEBUG, "hrnMode returning %{public}s from cache", &v30, 0xCu);
        }

        if (v14)
        {
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        activationState = [(DMCActivationUtilities *)selfCopy activationState];
        if (activationState == 2)
        {
          activationRecord = [(DMCActivationUtilities *)selfCopy activationRecord];
          v21 = [activationRecord objectForKeyedSubscript:@"DeviceConfigurationFlags"];
          integerValue = [v21 integerValue];
          v24 = integerValue & 0x21;
          v25 = *DMCLogObjects(integerValue, v23);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = "no";
            if (v24 == 33)
            {
              v26 = "yes";
            }

            v30 = 136446210;
            v31 = v26;
            _os_log_impl(&dword_1B1630000, v25, OS_LOG_TYPE_DEBUG, "hrnMode returning %{public}s from activation record", &v30, 0xCu);
          }

          v27 = [MEMORY[0x1E696AD98] numberWithBool:v24 == 33];
          [(DMCActivationUtilities *)selfCopy setHrnModeCache:v27];

          if (v24 == 33)
          {
            v5 = 2;
          }

          else
          {
            v5 = 1;
          }
        }

        else
        {
          v28 = *DMCLogObjects(activationState, v19);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v30) = 0;
            _os_log_impl(&dword_1B1630000, v28, OS_LOG_TYPE_DEBUG, "hrnMode returning unknown because the device isn't activated", &v30, 2u);
          }

          v5 = 0;
        }
      }

      objc_sync_exit(selfCopy);
    }
  }

  else
  {
    v9 = *DMCLogObjects(v3, v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_DEBUG, "hrnMode returning unknown because it's not ready", &v30, 2u);
    }

    return 0;
  }

  return v5;
}

- (void)addDidBecomeReadyKey:(id)key callback:(id)callback
{
  keyCopy = key;
  v8 = keyCopy;
  if (self->_isReady)
  {
    v9 = *DMCLogObjects(keyCopy, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_FAULT, "Ignoring an added callback when DMCActivationUtilities are already ready", v11, 2u);
    }
  }

  else
  {
    v10 = MEMORY[0x1B2731A20](callback);
    [(NSMutableDictionary *)self->_didBecomeReadyCallbacks setObject:v10 forKeyedSubscript:v8];
  }
}

- (void)_clearCache
{
  observer = self;
  objc_sync_enter(observer);
  [(DMCActivationUtilities *)observer setHrnModeCache:0];
  [(DMCActivationUtilities *)observer setIsActivatedCache:0];
  [(DMCActivationUtilities *)observer setActivationRecordCache:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = DMCkNotificationActivationStateChanged();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, observer, v3, 0);
  objc_sync_exit(observer);
}

@end