@interface WLKPostPlayAutoPlayManager
+ (id)defaultManager;
- (BOOL)_hasPreviousPreferenceAsDisableAutoPlay;
- (BOOL)isEnabledForType:(unint64_t)type;
- (WLKPostPlayAutoPlayManager)initWithCache:(id)cache;
- (void)_fetchStatusForType:(unint64_t)type withCompletion:(id)completion;
- (void)_handleAccountDidChange:(id)change;
- (void)_migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion:(id)completion;
- (void)_migrateOffStatusWithCompletion:(id)completion;
- (void)_networkReachabilityDidChange:(id)change;
- (void)_performUserSettingsAction:(unint64_t)action settings:(id)settings dsid:(id)dsid isMigration:(BOOL)migration completion:(id)completion;
- (void)_performUserSettingsOperation:(id)operation dsid:(id)dsid completion:(id)completion;
- (void)fetchStatusForAllTypesWithCompletion:(id)completion;
- (void)getStatusForType:(unint64_t)type withCompletion:(id)completion;
- (void)setSettings:(id)settings completion:(id)completion;
@end

@implementation WLKPostPlayAutoPlayManager

+ (id)defaultManager
{
  if (defaultManager___once != -1)
  {
    +[WLKPostPlayAutoPlayManager defaultManager];
  }

  v3 = defaultManager___defaultManager;

  return v3;
}

void __44__WLKPostPlayAutoPlayManager_defaultManager__block_invoke()
{
  v3 = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  v0 = [[WLKPostPlayAutoPlayCache alloc] initWithUserDefaults:v3];
  v1 = [[WLKPostPlayAutoPlayManager alloc] initWithCache:v0];
  v2 = defaultManager___defaultManager;
  defaultManager___defaultManager = v1;
}

- (BOOL)_hasPreviousPreferenceAsDisableAutoPlay
{
  v2 = +[WLKSystemPreferencesStore sharedPreferences];
  v3 = +[WLKSettingsStore sharedSettings];
  hasPostPlayAutoPlayNextVideoPreferences = [v2 hasPostPlayAutoPlayNextVideoPreferences];
  if (hasPostPlayAutoPlayNextVideoPreferences)
  {
    v5 = WLKSystemLogObject(hasPostPlayAutoPlayNextVideoPreferences);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Migrating post play auto-play from WLKSystemPreferencesStore", buf, 2u);
    }

    v6 = v2;
  }

  else
  {
    hasPostPlayAutoPlayNextVideoPreferences2 = [v3 hasPostPlayAutoPlayNextVideoPreferences];
    if (!hasPostPlayAutoPlayNextVideoPreferences2)
    {
      LOBYTE(v8) = 0;
      goto LABEL_11;
    }

    v5 = WLKSystemLogObject(hasPostPlayAutoPlayNextVideoPreferences2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Migrating post play auto-play from WLKSettingsStore", v10, 2u);
    }

    v6 = v3;
  }

  v8 = [v6 postPlayAutoPlayNextVideo] ^ 1;
LABEL_11:

  return v8;
}

- (WLKPostPlayAutoPlayManager)initWithCache:(id)cache
{
  cacheCopy = cache;
  v16.receiver = self;
  v16.super_class = WLKPostPlayAutoPlayManager;
  v6 = [(WLKPostPlayAutoPlayManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cache, cache);
    v8 = dispatch_queue_create("WLKPostPlayAutoPlayManagerPersistentCacheQueue", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ongoingUpdateOperations = v7->_ongoingUpdateOperations;
    v7->_ongoingUpdateOperations = v10;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__handleAccountDidChange_ name:@"WLKAccountMonitorAccountDidChange" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = +[WLKReachabilityMonitor sharedInstance];
    [defaultCenter2 addObserver:v7 selector:sel__networkReachabilityDidChange_ name:@"WLKReachabilityMonitorReachabilityDidChange" object:v14];

    [(WLKPostPlayAutoPlayManager *)v7 _migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion:0];
  }

  return v7;
}

- (BOOL)isEnabledForType:(unint64_t)type
{
  cache = [(WLKPostPlayAutoPlayManager *)self cache];
  LOBYTE(type) = [cache currentSettingForType:type];

  return type;
}

- (void)getStatusForType:(unint64_t)type withCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v21 = 0;
  v7 = WLKPostPlayAutoPlayCheckHasActiveAccount(&v21);
  v8 = v21;
  v9 = v8;
  if (v7)
  {
    cache = [(WLKPostPlayAutoPlayManager *)self cache];
    v11 = [cache hasCacheForType:type];

    if (v11)
    {
      cache2 = [(WLKPostPlayAutoPlayManager *)self cache];
      v14 = [cache2 currentSettingForType:type];

      v16 = WLKSystemLogObject(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
        *buf = 138412546;
        v23 = v17;
        v24 = 1024;
        v25 = v14;
        _os_log_impl(&dword_272A0F000, v16, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - getStatusForType: %@, replied with cached state: %d", buf, 0x12u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, v14, 0);
      }
    }

    else
    {
      v19 = WLKSystemLogObject(v12);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
        *buf = 138412290;
        v23 = v20;
        _os_log_impl(&dword_272A0F000, v19, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - getStatusForType: %@, no cache found.", buf, 0xCu);
      }

      [(WLKPostPlayAutoPlayManager *)self _fetchStatusForType:type withCompletion:completionCopy];
    }
  }

  else
  {
    v18 = WLKSystemLogObject(v8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [WLKPostPlayAutoPlayManager getStatusForType:withCompletion:];
    }

    if (completionCopy)
    {
      (completionCopy)[2](completionCopy, 1, v9);
    }
  }
}

- (void)setSettings:(id)settings completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  completionCopy = completion;
  v16 = 0;
  v8 = WLKPostPlayAutoPlayCheckHasActiveAccount(&v16);
  v9 = v16;
  v10 = WLKSystemLogObject(v9);
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = settingsCopy;
      _os_log_impl(&dword_272A0F000, v11, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - setSettings: %@", buf, 0xCu);
    }

    _hasValues = [settingsCopy _hasValues];
    if (_hasValues)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __53__WLKPostPlayAutoPlayManager_setSettings_completion___block_invoke;
      v14[3] = &unk_279E5FEC0;
      v15 = completionCopy;
      [(WLKPostPlayAutoPlayManager *)self _performUserSettingsAction:1 settings:settingsCopy dsid:0 isMigration:0 completion:v14];
    }

    else
    {
      v13 = WLKSystemLogObject(_hasValues);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272A0F000, v13, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Nothing to update since settings has no values set", buf, 2u);
      }

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, settingsCopy, 0);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WLKPostPlayAutoPlayManager getStatusForType:withCompletion:];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v9);
    }
  }
}

uint64_t __53__WLKPostPlayAutoPlayManager_setSettings_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchStatusForAllTypesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = WLKSystemLogObject(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - fetchStatusForAllTypesWithCompletion", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke;
  block[3] = &unk_279E5F908;
  objc_copyWeak(&v10, buf);
  block[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained isFetchingAllStatusInProgress];
  if (!v3)
  {
    [WeakRetained setIsFetchingAllStatusInProgress:1];
    objc_initWeak(buf, WeakRetained);
    v6 = [WeakRetained cache];
    v7 = [v6 isWaitingForConnection];

    if (v7)
    {
      v9 = WLKSystemLogObject(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Retry sending request for current settings.", v27, 2u);
      }

      if (![WeakRetained _hasPreviousPreferenceAsDisableAutoPlay])
      {
        v16 = [a1[4] cache];
        v17 = [v16 currentSettings];

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke_2;
        v21[3] = &unk_279E5FEE8;
        objc_copyWeak(&v23, buf);
        v22 = a1[5];
        [WeakRetained _performUserSettingsAction:1 settings:v17 dsid:0 isMigration:0 completion:v21];

        objc_destroyWeak(&v23);
        goto LABEL_21;
      }

      v10 = v24;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke_51;
      v24[3] = &unk_279E5E660;
      objc_copyWeak(&v26, buf);
      v25 = a1[5];
      [WeakRetained _migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion:v24];
      v11 = v25;
    }

    else
    {
      v12 = [WeakRetained isMigrationInProgress];
      if (v12)
      {
        v13 = WLKSystemLogObject(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&dword_272A0F000, v13, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - There is ongoing migration. Skip the GET action", v27, 2u);
        }

        [WeakRetained setIsFetchingAllStatusInProgress:0];
        v14 = a1[5];
        if (v14)
        {
          v14[2]();
        }

        goto LABEL_21;
      }

      v15 = WLKSystemLogObject(v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        _os_log_impl(&dword_272A0F000, v15, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - _performUserSettingsAction GET", v27, 2u);
      }

      v10 = v18;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke_52;
      v18[3] = &unk_279E5FEE8;
      objc_copyWeak(&v20, buf);
      v19 = a1[5];
      [WeakRetained _performUserSettingsAction:0 settings:0 dsid:0 isMigration:0 completion:v18];
      v11 = v19;
    }

    objc_destroyWeak(v10 + 5);
LABEL_21:
    objc_destroyWeak(buf);
    goto LABEL_22;
  }

  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - There is ongoing fetchStatusForAllTypesWithCompletion. Skip this one.", buf, 2u);
  }

  v5 = a1[5];
  if (v5)
  {
    v5[2]();
  }

LABEL_22:
}

void __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke_51(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsFetchingAllStatusInProgress:0];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

void __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsFetchingAllStatusInProgress:0];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

void __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke_52(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsFetchingAllStatusInProgress:0];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (void)_migrateOffStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v14 = 0;
  v5 = WLKPostPlayAutoPlayCheckHasActiveAccount(&v14);
  v6 = v14;
  v7 = WLKSystemLogObject(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - _migrateOffStatusWithCompletion", buf, 2u);
    }

    v9 = objc_alloc_init(WLKPostPlayAutoPlaySettings);
    v10 = MEMORY[0x277CBEC28];
    [(WLKPostPlayAutoPlaySettings *)v9 setNextEpisodeSettingValue:MEMORY[0x277CBEC28]];
    [(WLKPostPlayAutoPlaySettings *)v9 setRecommendedItemsSettingValue:v10];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__WLKPostPlayAutoPlayManager__migrateOffStatusWithCompletion___block_invoke;
    v11[3] = &unk_279E5FEC0;
    v12 = completionCopy;
    [(WLKPostPlayAutoPlayManager *)self _performUserSettingsAction:1 settings:v9 dsid:0 isMigration:1 completion:v11];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WLKPostPlayAutoPlayManager getStatusForType:withCompletion:];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v6);
    }
  }
}

uint64_t __62__WLKPostPlayAutoPlayManager__migrateOffStatusWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)_migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = WLKSystemLogObject(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - _migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__WLKPostPlayAutoPlayManager__migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion___block_invoke;
  v8[3] = &unk_279E5E660;
  objc_copyWeak(&v10, buf);
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __94__WLKPostPlayAutoPlayManager__migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isMigrationInProgress];
  if (v3)
  {
    v4 = WLKSystemLogObject(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Migration is in progress, ignoring this call _migrateFromSystemPreferencesStoreOrSettingsStore.", buf, 2u);
    }
  }

  else if ([WeakRetained _hasPreviousPreferenceAsDisableAutoPlay])
  {
    [WeakRetained setIsMigrationInProgress:1];
    objc_initWeak(buf, WeakRetained);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __94__WLKPostPlayAutoPlayManager__migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion___block_invoke_2;
    v6[3] = &unk_279E5FF10;
    objc_copyWeak(&v8, buf);
    v7 = *(a1 + 32);
    [WeakRetained _migrateOffStatusWithCompletion:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
    goto LABEL_9;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }

LABEL_9:
}

void __94__WLKPostPlayAutoPlayManager__migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!v7)
  {
    v3 = +[WLKSystemPreferencesStore sharedPreferences];
    [v3 removePostPlayAutoPlayNextVideoPreferences];
    v4 = +[WLKSettingsStore sharedSettings];
    [v4 removePostPlayAutoPlayNextVideoPreferences];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsMigrationInProgress:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

- (void)_handleAccountDidChange:(id)change
{
  v4 = WLKSystemLogObject(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Invalidate cache due to _handleAccountDidChange", v5, 2u);
  }

  [(WLKPostPlayAutoPlayCache *)self->_cache invalidate];
  [(WLKPostPlayAutoPlayManager *)self fetchStatusForAllTypesWithCompletion:0];
}

- (void)_networkReachabilityDidChange:(id)change
{
  v4 = WLKSystemLogObject(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - _networkReachabilityDidChange", buf, 2u);
  }

  v5 = +[WLKReachabilityMonitor sharedInstance];
  isNetworkReachable = [v5 isNetworkReachable];

  if (isNetworkReachable)
  {
    v8 = WLKSystemLogObject(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Device is back online.", v9, 2u);
    }

    [(WLKPostPlayAutoPlayManager *)self fetchStatusForAllTypesWithCompletion:0];
  }
}

- (void)_fetchStatusForType:(unint64_t)type withCompletion:(id)completion
{
  completionCopy = completion;
  v16 = 0;
  v7 = WLKPostPlayAutoPlayCheckHasActiveAccount(&v16);
  v8 = v16;
  v9 = v8;
  if (v7)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__WLKPostPlayAutoPlayManager__fetchStatusForType_withCompletion___block_invoke;
    block[3] = &unk_279E5FF60;
    objc_copyWeak(v14, &location);
    v14[1] = type;
    v13 = completionCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = WLKSystemLogObject(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WLKPostPlayAutoPlayManager getStatusForType:withCompletion:];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, v9);
    }
  }
}

void __65__WLKPostPlayAutoPlayManager__fetchStatusForType_withCompletion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isMigrationInProgress])
  {
    v3 = [WeakRetained cache];
    v4 = [v3 currentSettingForType:*(a1 + 48)];

    v6 = WLKSystemLogObject(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v16) = v4;
      _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - fetchStatus replied with cached state because there is ongoing migration: %d", buf, 8u);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, v4, 0);
    }
  }

  else
  {
    inited = objc_initWeak(&location, WeakRetained);
    v9 = WLKSystemLogObject(inited);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - fetchStatusForType: %@", buf, 0xCu);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__WLKPostPlayAutoPlayManager__fetchStatusForType_withCompletion___block_invoke_56;
    v11[3] = &unk_279E5FF38;
    objc_copyWeak(v13, &location);
    v13[1] = *(a1 + 48);
    v12 = *(a1 + 32);
    [WeakRetained _performUserSettingsAction:0 settings:0 dsid:0 isMigration:0 completion:v11];

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

void __65__WLKPostPlayAutoPlayManager__fetchStatusForType_withCompletion___block_invoke_56(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained cache];
  v7 = [v6 currentSettingForType:*(a1 + 48)];

  v9 = WLKSystemLogObject(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v4 localizedDescription];
    v12[0] = 67109378;
    v12[1] = v7;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - fetchStatus replied with fresh state: %d, error: %@", v12, 0x12u);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v7, v4);
  }
}

- (void)_performUserSettingsAction:(unint64_t)action settings:(id)settings dsid:(id)dsid isMigration:(BOOL)migration completion:(id)completion
{
  migrationCopy = migration;
  settingsCopy = settings;
  dsidCopy = dsid;
  completionCopy = completion;
  v37 = 0;
  v15 = WLKPostPlayAutoPlayCheckHasActiveAccount(&v37);
  v16 = v37;
  v17 = v16;
  if (v15)
  {
    v18 = [[WLKUserSettings alloc] initWithPostPlayAutoPlaySettings:settingsCopy];
    v19 = [[WLKUserSettingsRequestOperation alloc] initWithAction:action userSettings:v18 dsid:dsidCopy isMigration:migrationCopy];
    if (dsidCopy)
    {
      v30 = v18;
      activeAccount = [MEMORY[0x277D6C478] activeAccount];
      v21 = activeAccount;
      if (activeAccount && ([activeAccount ams_DSID], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "stringValue"), v23 = objc_claimAutoreleasedReturnValue(), v22, v23))
      {
        [dsidCopy stringValue];
        v24 = v29 = v19;
        v25 = [v23 isEqualToString:v24];

        v19 = v29;
      }

      else
      {
        v25 = 0;
      }

      v18 = v30;
    }

    else
    {
      v25 = 1;
    }

    if (action == 1 && v25)
    {
      cache = [(WLKPostPlayAutoPlayManager *)self cache];
      [cache setIsWaitingForConnection:0];

      cache2 = [(WLKPostPlayAutoPlayManager *)self cache];
      [cache2 updateWithSettings:settingsCopy];
    }

    objc_initWeak(&location, self);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __94__WLKPostPlayAutoPlayManager__performUserSettingsAction_settings_dsid_isMigration_completion___block_invoke;
    v31[3] = &unk_279E5FF88;
    objc_copyWeak(v34, &location);
    v34[1] = action;
    v35 = v25;
    v33 = completionCopy;
    v32 = settingsCopy;
    [(WLKPostPlayAutoPlayManager *)self _performUserSettingsOperation:v19 dsid:dsidCopy completion:v31];

    objc_destroyWeak(v34);
    objc_destroyWeak(&location);
  }

  else
  {
    v26 = WLKSystemLogObject(v16);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [WLKPostPlayAutoPlayManager getStatusForType:withCompletion:];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v17);
    }
  }
}

void __94__WLKPostPlayAutoPlayManager__performUserSettingsAction_settings_dsid_isMigration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v6)
  {
    if ([v6 code] == -1009 && *(a1 + 56) == 1 && *(a1 + 64) == 1)
    {
      v8 = WLKSystemLogObject(-1009);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - No internet connection. Retry later when device is back online", v19, 2u);
      }

      v9 = [WeakRetained cache];
      [v9 setIsWaitingForConnection:1];
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(a1 + 56);
      if (v11 != 1)
      {
        if (!v11)
        {
          v12 = [WeakRetained cache];
          v13 = [v12 currentSettings];

          (*(*(a1 + 40) + 16))();
        }

        goto LABEL_21;
      }

      v18 = *(v10 + 16);
LABEL_20:
      v18();
    }
  }

  else if (*(a1 + 56) <= 1uLL)
  {
    if (v5 && (*(a1 + 64) & 1) != 0)
    {
      v14 = [v5 postPlayAutoPlaySettings];
      if (!v14)
      {
        __94__WLKPostPlayAutoPlayManager__performUserSettingsAction_settings_dsid_isMigration_completion___block_invoke_cold_1();
      }

      v15 = v14;
      v16 = [WeakRetained cache];
      [v16 updateWithSettings:v15];
    }

    v17 = *(a1 + 40);
    if (v17)
    {
      v18 = *(v17 + 16);
      goto LABEL_20;
    }
  }

LABEL_21:
}

- (void)_performUserSettingsOperation:(id)operation dsid:(id)dsid completion:(id)completion
{
  operationCopy = operation;
  dsidCopy = dsid;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__WLKPostPlayAutoPlayManager__performUserSettingsOperation_dsid_completion___block_invoke;
  v15[3] = &unk_279E5FFD8;
  objc_copyWeak(&v20, &location);
  v16 = operationCopy;
  v17 = dsidCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = dsidCopy;
  v13 = completionCopy;
  v14 = operationCopy;
  dispatch_async(queue, v15);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __76__WLKPostPlayAutoPlayManager__performUserSettingsOperation_dsid_completion___block_invoke(uint64_t a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ([*(a1 + 32) action] != 1 || (objc_msgSend(*(a1 + 32), "userSettings"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v5 = [*(a1 + 32) userSettings];
    v6 = [v5 postPlayAutoPlaySettings];

    v7 = [*(a1 + 32) action];
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    if (!v9)
    {
      v9 = &unk_288222CB0;
    }

    v10 = v9;
    if (v7 == 1)
    {
      v11 = [WeakRetained ongoingUpdateOperations];
      v12 = [v11 objectForKey:v10];

      if (v12 && (v13 = [v12 isCancelled], (v13 & 1) == 0))
      {
        v19 = WLKSystemLogObject(v13);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&dword_272A0F000, v19, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - There is ongoing operation.", location, 2u);
        }

        v20 = [v12 userSettings];
        v29 = [v20 postPlayAutoPlaySettings];

        v21 = [v29 isEqual:v6];
        LODWORD(v20) = v21;
        v22 = WLKSystemLogObject(v21);
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          if (v23)
          {
            LOWORD(location[0]) = 0;
            _os_log_impl(&dword_272A0F000, v22, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - The ongoing operation has the same settings, skipping the latest one.", location, 2u);
          }

          (*(*(a1 + 56) + 16))();
          goto LABEL_12;
        }

        if (v23)
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&dword_272A0F000, v22, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - The ongoing operation has different settings, cancel the ongoing operation.", location, 2u);
        }

        [v12 cancel];
        v24 = [WeakRetained ongoingUpdateOperations];
        [v24 removeObjectForKey:v10];

        v28 = [v6 _newSettingsMergedWithPreviousSettings:v29];
        v25 = WLKSystemLogObject(v28);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v28;
          _os_log_impl(&dword_272A0F000, v25, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - New settings: %@", location, 0xCu);
        }

        v26 = [[WLKUserSettings alloc] initWithPostPlayAutoPlaySettings:v28];
        v27 = -[WLKUserSettingsRequestOperation initWithAction:userSettings:]([WLKUserSettingsRequestOperation alloc], "initWithAction:userSettings:", [*(a1 + 32) action], v26);

        v8 = v27;
      }

      else
      {
      }
    }

    objc_initWeak(location, v8);
    objc_initWeak(&from, WeakRetained);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __76__WLKPostPlayAutoPlayManager__performUserSettingsOperation_dsid_completion___block_invoke_64;
    v30[3] = &unk_279E5FFB0;
    objc_copyWeak(&v33, location);
    v32 = *(a1 + 56);
    objc_copyWeak(&v34, &from);
    v35 = v7 == 1;
    v30[4] = *(a1 + 48);
    v14 = v10;
    v31 = v14;
    [(WLKUserSettingsRequestOperation *)v8 setCompletionBlock:v30];
    if (v7 == 1)
    {
      v15 = [WeakRetained ongoingUpdateOperations];
      [v15 setObject:v8 forKey:v14];
    }

    v16 = [MEMORY[0x277CCABD8] wlkDefaultQueue];
    [v16 addOperation:v8];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
LABEL_12:

    goto LABEL_13;
  }

  v17 = WLKSystemLogObject(v4);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_272A0F000, v17, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Post play auto-play (user settings) action will not be executed -- empty userSettings parameter.", location, 2u);
  }

  v18 = *(a1 + 56);
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKPostPlayAutoPlayErrorDomain" code:-1 userInfo:0];
  (*(v18 + 16))(v18, 0, v6);
LABEL_13:
}

void __76__WLKPostPlayAutoPlayManager__performUserSettingsOperation_dsid_completion___block_invoke_64(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained error];
  v4 = WLKSystemLogObject(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v3 localizedDescription];
      *buf = 138412546;
      v17 = v6;
      v18 = 2048;
      v19 = [WeakRetained action];
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Post play auto-play (user settings) action failed -- %@. Request -- %lu", buf, 0x16u);
    }

    v7 = *(a1 + 48);
    v8 = [WeakRetained response];
    (*(v7 + 16))(v7, v8, v3);
  }

  else
  {
    if (v5)
    {
      v9 = [0 localizedDescription];
      *buf = 138412546;
      v17 = v9;
      v18 = 2048;
      v19 = [WeakRetained action];
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Post play auto-play (user settings) action succeeded -- %@. Request -- %lu", buf, 0x16u);
    }

    v10 = *(a1 + 48);
    v8 = [WeakRetained response];
    (*(v10 + 16))(v10, v8, 0);
  }

  v11 = objc_loadWeakRetained((a1 + 64));
  v12 = v11;
  if (*(a1 + 72) == 1)
  {
    v13 = *(*(a1 + 32) + 8);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__WLKPostPlayAutoPlayManager__performUserSettingsOperation_dsid_completion___block_invoke_65;
    v14[3] = &unk_279E5E5F8;
    v14[4] = v11;
    v15 = *(a1 + 40);
    dispatch_async(v13, v14);
  }
}

void __76__WLKPostPlayAutoPlayManager__performUserSettingsOperation_dsid_completion___block_invoke_65(uint64_t a1)
{
  v2 = [*(a1 + 32) ongoingUpdateOperations];
  [v2 removeObjectForKey:*(a1 + 40)];
}

@end