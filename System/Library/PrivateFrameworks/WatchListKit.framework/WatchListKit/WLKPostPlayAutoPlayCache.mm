@interface WLKPostPlayAutoPlayCache
+ (void)_postLocalNotificationForType:(unint64_t)type status:(BOOL)status error:(id)error;
- (BOOL)_cacheResultForType:(unint64_t)type;
- (BOOL)currentSettingForType:(unint64_t)type;
- (BOOL)hasCacheForType:(unint64_t)type;
- (WLKPostPlayAutoPlayCache)initWithUserDefaults:(id)defaults;
- (id)_cacheKeyForType:(unint64_t)type;
- (id)currentSettings;
- (void)_setEnabled:(BOOL)enabled type:(unint64_t)type;
- (void)dealloc;
- (void)invalidate;
- (void)setIsWaitingForConnection:(BOOL)connection;
- (void)updateWithSettings:(id)settings;
@end

@implementation WLKPostPlayAutoPlayCache

- (WLKPostPlayAutoPlayCache)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v19.receiver = self;
  v19.super_class = WLKPostPlayAutoPlayCache;
  v6 = [(WLKPostPlayAutoPlayCache *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, defaults);
    objc_initWeak(&location, v7);
    v8 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __49__WLKPostPlayAutoPlayCache_initWithUserDefaults___block_invoke;
    handler[3] = &unk_279E5F220;
    v10 = v7;
    v16 = v10;
    objc_copyWeak(&v17, &location);
    notify_register_dispatch("com.apple.WatchListKit.WLKPostPlayAutoPlayNextEpisodeStatusChangedNotification", &v7->_postPlayAutoPlayNextEpisodeSettingChangedNotificationToken, v8, handler);

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__WLKPostPlayAutoPlayCache_initWithUserDefaults___block_invoke_19;
    v12[3] = &unk_279E5F220;
    v13 = v10;
    objc_copyWeak(&v14, &location);
    notify_register_dispatch("com.apple.WatchListKit.WLKPostPlayAutoPlayRecommendedItemsStatusChangedNotification", v10 + 5, v8, v12);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v17);

    objc_destroyWeak(&location);
  }

  return v7;
}

void __49__WLKPostPlayAutoPlayCache_initWithUserDefaults___block_invoke(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 16), &state64);
  if (state64 != getpid())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = WLKSystemLogObject(WeakRetained);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Received post play auto-play next episode status changed notification, fetching cache", v5, 2u);
      }

      [objc_opt_class() _postLocalNotificationForType:1 status:objc_msgSend(v3 error:{"_cacheResultForType:", 1), 0}];
    }
  }
}

void __49__WLKPostPlayAutoPlayCache_initWithUserDefaults___block_invoke_19(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 20), &state64);
  if (state64 != getpid())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = WLKSystemLogObject(WeakRetained);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Received post play auto-play recommended items status changed notification, fetching cache", v5, 2u);
      }

      [objc_opt_class() _postLocalNotificationForType:2 status:objc_msgSend(v3 error:{"_cacheResultForType:", 2), 0}];
    }
  }
}

- (void)dealloc
{
  postPlayAutoPlayNextEpisodeSettingChangedNotificationToken = self->_postPlayAutoPlayNextEpisodeSettingChangedNotificationToken;
  if (postPlayAutoPlayNextEpisodeSettingChangedNotificationToken)
  {
    notify_cancel(postPlayAutoPlayNextEpisodeSettingChangedNotificationToken);
  }

  postPlayAutoPlayRecommendedItemsSettingChangedNotificationToken = self->_postPlayAutoPlayRecommendedItemsSettingChangedNotificationToken;
  if (postPlayAutoPlayRecommendedItemsSettingChangedNotificationToken)
  {
    notify_cancel(postPlayAutoPlayRecommendedItemsSettingChangedNotificationToken);
  }

  v5.receiver = self;
  v5.super_class = WLKPostPlayAutoPlayCache;
  [(WLKPostPlayAutoPlayCache *)&v5 dealloc];
}

- (void)invalidate
{
  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:@"auto-play-next-episode-status"];
  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:@"auto-play-recommended-items-status"];
  userDefaults = self->_userDefaults;

  [(NSUserDefaults *)userDefaults removeObjectForKey:@"auto-play-is-waiting-for-connection-status"];
}

- (BOOL)hasCacheForType:(unint64_t)type
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(WLKPostPlayAutoPlayCache *)self _cacheKeyForType:?];
  v6 = [(NSUserDefaults *)self->_userDefaults objectForKey:v5];

  v8 = WLKSystemLogObject(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v6 != 0];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - hasCacheForType: %@, hasCache: %@", &v12, 0x16u);
  }

  return v6 != 0;
}

- (void)updateWithSettings:(id)settings
{
  v14 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = WLKSystemLogObject(settingsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = settingsCopy;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - update cache for post play auto-play settings: %@", &v12, 0xCu);
  }

  nextEpisodeSettingValue = [settingsCopy nextEpisodeSettingValue];

  if (nextEpisodeSettingValue)
  {
    nextEpisodeSettingValue2 = [settingsCopy nextEpisodeSettingValue];
    bOOLValue = [nextEpisodeSettingValue2 BOOLValue];

    [(WLKPostPlayAutoPlayCache *)self _setEnabled:bOOLValue type:1];
  }

  recommendedItemsSettingValue = [settingsCopy recommendedItemsSettingValue];

  if (recommendedItemsSettingValue)
  {
    recommendedItemsSettingValue2 = [settingsCopy recommendedItemsSettingValue];
    bOOLValue2 = [recommendedItemsSettingValue2 BOOLValue];

    [(WLKPostPlayAutoPlayCache *)self _setEnabled:bOOLValue2 type:2];
  }
}

- (id)currentSettings
{
  v3 = objc_alloc_init(WLKPostPlayAutoPlaySettings);
  v4 = [(WLKPostPlayAutoPlayCache *)self _cacheResultForType:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  [(WLKPostPlayAutoPlaySettings *)v3 setNextEpisodeSettingValue:v5];

  v6 = [(WLKPostPlayAutoPlayCache *)self _cacheResultForType:2];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [(WLKPostPlayAutoPlaySettings *)v3 setRecommendedItemsSettingValue:v7];

  return v3;
}

- (BOOL)currentSettingForType:(unint64_t)type
{
  v17 = *MEMORY[0x277D85DE8];
  currentSettings = [(WLKPostPlayAutoPlayCache *)self currentSettings];
  v5 = currentSettings;
  if (type == 2)
  {
    recommendedItemsSettingValue = [currentSettings recommendedItemsSettingValue];
    goto LABEL_5;
  }

  if (type == 1)
  {
    recommendedItemsSettingValue = [currentSettings nextEpisodeSettingValue];
LABEL_5:
    v7 = recommendedItemsSettingValue;
    bOOLValue = [recommendedItemsSettingValue BOOLValue];

    goto LABEL_7;
  }

  bOOLValue = 1;
LABEL_7:
  v9 = WLKSystemLogObject(currentSettings);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - currentSettingForType: %@, enabled: %@", &v13, 0x16u);
  }

  return bOOLValue;
}

- (void)setIsWaitingForConnection:(BOOL)connection
{
  userDefaults = self->_userDefaults;
  if (connection)
  {
    [(NSUserDefaults *)userDefaults setBool:1 forKey:@"auto-play-is-waiting-for-connection-status"];
  }

  else
  {
    [(NSUserDefaults *)userDefaults removeObjectForKey:@"auto-play-is-waiting-for-connection-status"];
  }
}

+ (void)_postLocalNotificationForType:(unint64_t)type status:(BOOL)status error:(id)error
{
  statusCopy = status;
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v8 = WLKSystemLogObject(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Firing local post play auto-play status changed notification for type: %@", buf, 0xCu);
  }

  if (type - 1 >= 2)
  {
    +[WLKPostPlayAutoPlayCache _postLocalNotificationForType:status:error:];
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:statusCopy];
  [v10 setObject:v11 forKey:@"WLKPostPlayAutoPlaySettingChangedNotificationStatusKey"];

  if (errorCopy)
  {
    [v10 setObject:errorCopy forKey:@"WLKPostPlayAutoPlaySettingChangedNotificationErrorKey"];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__WLKPostPlayAutoPlayCache__postLocalNotificationForType_status_error___block_invoke;
  v13[3] = &unk_279E5E5F8;
  v14 = @"WLKPostPlayAutoPlayNextEpisodeSettingChangedNotification";
  v15 = v10;
  v12 = v10;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

void __71__WLKPostPlayAutoPlayCache__postLocalNotificationForType_status_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:0 userInfo:*(a1 + 40)];
}

- (BOOL)_cacheResultForType:(unint64_t)type
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(WLKPostPlayAutoPlayCache *)self hasCacheForType:?];
  if (v5)
  {
    v6 = [(WLKPostPlayAutoPlayCache *)self _cacheKeyForType:type];
    v7 = [(NSUserDefaults *)self->_userDefaults BOOLForKey:v6];
    v8 = WLKSystemLogObject(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      v12 = 138412546;
      v13 = v9;
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - cached post play auto-play type: %@, state: %d", &v12, 0x12u);
    }
  }

  else
  {
    v6 = WLKSystemLogObject(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - No cache result for type: %@, default to YES", &v12, 0xCu);
    }

    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)_setEnabled:(BOOL)enabled type:(unint64_t)type
{
  enabledCopy = enabled;
  *&v20[5] = *MEMORY[0x277D85DE8];
  v7 = WLKSystemLogObject(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v19 = 67109378;
    v20[0] = enabledCopy;
    LOWORD(v20[1]) = 2112;
    *(&v20[1] + 2) = v8;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - setting cache for post play auto-play state: %d, type: %@", &v19, 0x12u);
  }

  v9 = [(WLKPostPlayAutoPlayCache *)self _cacheKeyForType:type];
  if ([(WLKPostPlayAutoPlayCache *)self hasCacheForType:type])
  {
    v10 = [(NSUserDefaults *)self->_userDefaults BOOLForKey:v9];
  }

  else
  {
    v10 = 1;
  }

  userDefaults = self->_userDefaults;
  v12 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [(NSUserDefaults *)userDefaults setObject:v12 forKey:v9];

  if (v10 != enabledCopy)
  {
    if (type == 2)
    {
      v14 = WLKSystemLogObject(v13);
      v15 = "com.apple.WatchListKit.WLKPostPlayAutoPlayRecommendedItemsStatusChangedNotification";
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        *v20 = "com.apple.WatchListKit.WLKPostPlayAutoPlayRecommendedItemsStatusChangedNotification";
        _os_log_impl(&dword_272A0F000, v14, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - posting (cross process) notification %s", &v19, 0xCu);
      }

      v16 = 20;
      goto LABEL_15;
    }

    if (type == 1)
    {
      v14 = WLKSystemLogObject(v13);
      v15 = "com.apple.WatchListKit.WLKPostPlayAutoPlayNextEpisodeStatusChangedNotification";
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        *v20 = "com.apple.WatchListKit.WLKPostPlayAutoPlayNextEpisodeStatusChangedNotification";
        _os_log_impl(&dword_272A0F000, v14, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - posting (cross process) notification %s", &v19, 0xCu);
      }

      v16 = 16;
LABEL_15:

      v17 = *(&self->super.isa + v16);
      v18 = getpid();
      notify_set_state(v17, v18);
      notify_post(v15);
    }
  }
}

- (id)_cacheKeyForType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = @"auto-play-recommended-items-status";
  if (type != 2)
  {
    v4 = 0;
  }

  if (type == 1)
  {
    v5 = @"auto-play-next-episode-status";
  }

  else
  {
    v5 = v4;
  }

  v6 = WLKSystemLogObject(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - _cacheKeyForType: %@, key: %@", &v9, 0x16u);
  }

  return v5;
}

@end