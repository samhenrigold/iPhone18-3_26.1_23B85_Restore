@interface WLKSettingsAMSBagTracker
+ (id)sharedTracker;
- (WLKSettingsAMSBagTracker)init;
- (id)isNowPlayingEnabled;
- (void)_removeInactiveKeys:(id)keys;
- (void)_setIsNowPlayingEnabled:(BOOL)enabled;
- (void)_updateBoolValueForTrackedKey:(id)key;
- (void)_updateKeys:(id)keys;
- (void)updateTrackedBagValues;
- (void)updateTrackedBagValuesWithChangedKeys:(id)keys;
@end

@implementation WLKSettingsAMSBagTracker

+ (id)sharedTracker
{
  if (sharedTracker___once != -1)
  {
    +[WLKSettingsAMSBagTracker sharedTracker];
  }

  v3 = sharedTracker___singleInstance;

  return v3;
}

uint64_t __41__WLKSettingsAMSBagTracker_sharedTracker__block_invoke()
{
  v0 = objc_alloc_init(WLKSettingsAMSBagTracker);
  v1 = sharedTracker___singleInstance;
  sharedTracker___singleInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WLKSettingsAMSBagTracker)init
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = WLKSettingsAMSBagTracker;
  v2 = [(WLKSettingsAMSBagTracker *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10[0] = kBagKeyUVSearchNowPlayingEnabled;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v3 setValue:v4 forKey:@"uvSearch"];

    v5 = [v3 copy];
    trackedBagKeys = v2->_trackedBagKeys;
    v2->_trackedBagKeys = v5;

    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"AMSBagTracker_SportsEnabledKey", 0}];
    [(WLKSettingsAMSBagTracker *)v2 _removeInactiveKeys:v7];
  }

  return v2;
}

- (void)updateTrackedBagValues
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = WLKSystemLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKSettingsAMSBagTracker - updateTrackedBagValues", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_trackedBagKeys;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSDictionary *)self->_trackedBagKeys objectForKey:*(*(&v10 + 1) + 8 * v8), v10];
        [(WLKSettingsAMSBagTracker *)self _updateKeys:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)updateTrackedBagValuesWithChangedKeys:(id)keys
{
  v20 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v5 = WLKSystemLogObject(keysCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKSettingsAMSBagTracker - Update tracked bag values did change", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
        v12 = [(NSDictionary *)self->_trackedBagKeys objectForKey:v11, v14];

        if (v12)
        {
          v13 = [(NSDictionary *)self->_trackedBagKeys objectForKey:v11];
          [(WLKSettingsAMSBagTracker *)self _updateKeys:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }
}

- (id)isNowPlayingEnabled
{
  wlk_userDefaults = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  v3 = [wlk_userDefaults objectForKey:@"AMSBagTracker_NowPlayingEnabledKey"];

  return v3;
}

- (void)_updateBoolValueForTrackedKey:(id)key
{
  v11 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([keyCopy isEqualToString:kBagKeyUVSearchNowPlayingEnabled])
  {
    v5 = [MEMORY[0x277D6C480] app];
    v6 = [v5 cachedBooleanForKey:keyCopy];
    bOOLValue = [v6 BOOLValue];

    v9 = WLKSystemLogObject(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = bOOLValue;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKSettingsAMSBagTracker - Update now playing enabled: %d", v10, 8u);
    }

    [(WLKSettingsAMSBagTracker *)self _setIsNowPlayingEnabled:bOOLValue];
  }
}

- (void)_updateKeys:(id)keys
{
  v14 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [keysCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(keysCopy);
        }

        [(WLKSettingsAMSBagTracker *)self _updateBoolValueForTrackedKey:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [keysCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_setIsNowPlayingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  wlk_userDefaults = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [wlk_userDefaults setObject:v4 forKey:@"AMSBagTracker_NowPlayingEnabledKey"];
}

- (void)_removeInactiveKeys:(id)keys
{
  v23 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [keysCopy countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    *&v5 = 138412290;
    v15 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(keysCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        wlk_userDefaults = [MEMORY[0x277CBEBD0] wlk_userDefaults];
        v11 = [wlk_userDefaults objectForKey:v9];

        if (v11)
        {
          wlk_userDefaults2 = [MEMORY[0x277CBEBD0] wlk_userDefaults];
          [wlk_userDefaults2 removeObjectForKey:v9];

          v14 = WLKSystemLogObject(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            v21 = v9;
            _os_log_impl(&dword_272A0F000, v14, OS_LOG_TYPE_DEFAULT, "WLKSettingsAMSBagTracker - Removed object from user defaults for key: %@", buf, 0xCu);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [keysCopy countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }
}

@end