@interface WLKSettingsCloudUtilities
+ (BOOL)_shouldContinueWithCloudSyncResult:(BOOL)result onDisabledHandler:(id)handler;
+ (BOOL)synchronizeSettingsFromCloudIfNeeded:(id *)needed;
+ (id)_connection;
+ (id)_queue;
+ (id)_syncDictionaryForAppSettings:(id)settings;
+ (id)_syncDictionaryForLocalStore;
+ (void)_cloudSyncEnabledWithCompletion:(id)completion;
+ (void)_fetchSyncDictionary:(id)dictionary;
+ (void)_postChangeDictionaryToCloud:(id)cloud completion:(id)completion;
+ (void)_runResetAccountWithCompletion:(id)completion;
+ (void)_runSynchronizeSettingsFromCloudIfNeededWithCompletion:(id)completion;
+ (void)_runUpdateCloudStoreAppSettings:(id)settings deleteHistory:(BOOL)history removeEntry:(BOOL)entry completion:(id)completion;
+ (void)resetAccountWithCompletion:(id)completion;
+ (void)synchronizeSettingsFromCloudIfNeededWithCompletion:(id)completion;
+ (void)updateCloudStoreAccountLevelSetting:(id)setting value:(id)value completion:(id)completion;
+ (void)updateCloudStoreAppSettings:(id)settings deleteHistory:(BOOL)history removeEntry:(BOOL)entry completion:(id)completion;
+ (void)updateCloudStoreWithCompletion:(id)completion;
+ (void)updateLocalStoreWithCompletion:(id)completion;
@end

@implementation WLKSettingsCloudUtilities

+ (id)_queue
{
  if (_queue_onceToken != -1)
  {
    +[WLKSettingsCloudUtilities _queue];
  }

  v3 = _queue___queue;

  return v3;
}

uint64_t __35__WLKSettingsCloudUtilities__queue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.WatchListKit.WLKSettingsCloudUtilities", 0);
  v1 = _queue___queue;
  _queue___queue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)updateCloudStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__WLKSettingsCloudUtilities_updateCloudStoreWithCompletion___block_invoke;
  v6[3] = &unk_279E5F7F0;
  v7 = completionCopy;
  selfCopy = self;
  v5 = completionCopy;
  [self _cloudSyncEnabledWithCompletion:v6];
}

void __60__WLKSettingsCloudUtilities_updateCloudStoreWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 40) _shouldContinueWithCloudSyncResult:a2 onDisabledHandler:*(a1 + 32)])
  {
    v3 = [*(a1 + 40) _queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__WLKSettingsCloudUtilities_updateCloudStoreWithCompletion___block_invoke_2;
    block[3] = &unk_279E5F7C8;
    v5 = *(a1 + 32);
    v4 = v5;
    v7 = v5;
    dispatch_async(v3, block);
  }
}

void __60__WLKSettingsCloudUtilities_updateCloudStoreWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) _syncDictionaryForLocalStore];
  [*(a1 + 40) _postChangeDictionaryToCloud:v2 completion:*(a1 + 32)];
}

+ (void)updateCloudStoreAppSettings:(id)settings deleteHistory:(BOOL)history removeEntry:(BOOL)entry completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__WLKSettingsCloudUtilities_updateCloudStoreAppSettings_deleteHistory_removeEntry_completion___block_invoke;
  v14[3] = &unk_279E5F818;
  v16 = completionCopy;
  selfCopy = self;
  v15 = settingsCopy;
  historyCopy = history;
  entryCopy = entry;
  v12 = settingsCopy;
  v13 = completionCopy;
  [self _cloudSyncEnabledWithCompletion:v14];
}

void *__94__WLKSettingsCloudUtilities_updateCloudStoreAppSettings_deleteHistory_removeEntry_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 48) _shouldContinueWithCloudSyncResult:a2 onDisabledHandler:*(a1 + 40)];
  if (result)
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 57);
    v8 = *(a1 + 32);

    return [v4 _runUpdateCloudStoreAppSettings:v8 deleteHistory:v6 removeEntry:v7 completion:v5];
  }

  return result;
}

+ (void)updateCloudStoreAccountLevelSetting:(id)setting value:(id)value completion:(id)completion
{
  settingCopy = setting;
  valueCopy = value;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__WLKSettingsCloudUtilities_updateCloudStoreAccountLevelSetting_value_completion___block_invoke;
  v14[3] = &unk_279E5F868;
  v17 = completionCopy;
  selfCopy = self;
  v15 = settingCopy;
  v16 = valueCopy;
  v11 = valueCopy;
  v12 = settingCopy;
  v13 = completionCopy;
  [self _cloudSyncEnabledWithCompletion:v14];
}

void __82__WLKSettingsCloudUtilities_updateCloudStoreAccountLevelSetting_value_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 56) _shouldContinueWithCloudSyncResult:a2 onDisabledHandler:*(a1 + 48)])
  {
    v3 = [*(a1 + 56) _queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__WLKSettingsCloudUtilities_updateCloudStoreAccountLevelSetting_value_completion___block_invoke_2;
    block[3] = &unk_279E5F840;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v5 = *(a1 + 48);
    v4 = v5;
    v9 = v5;
    dispatch_async(v3, block);
  }
}

void __82__WLKSettingsCloudUtilities_updateCloudStoreAccountLevelSetting_value_completion___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [*(a1 + 56) _postChangeDictionaryToCloud:v3 completion:*(a1 + 48)];
}

+ (void)resetAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__WLKSettingsCloudUtilities_resetAccountWithCompletion___block_invoke;
  v6[3] = &unk_279E5F7F0;
  v7 = completionCopy;
  selfCopy = self;
  v5 = completionCopy;
  [self _cloudSyncEnabledWithCompletion:v6];
}

void *__56__WLKSettingsCloudUtilities_resetAccountWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 40) _shouldContinueWithCloudSyncResult:a2 onDisabledHandler:*(a1 + 32)];
  if (result)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v4 _runResetAccountWithCompletion:v5];
  }

  return result;
}

+ (void)updateLocalStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = WLKStartupSignpostLogObject(completionCopy);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync.CloudSyncEnabled", &unk_272A8884E, buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__WLKSettingsCloudUtilities_updateLocalStoreWithCompletion___block_invoke;
  v7[3] = &unk_279E5F7F0;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  [self _cloudSyncEnabledWithCompletion:v7];
}

void __60__WLKSettingsCloudUtilities_updateLocalStoreWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = WLKStartupSignpostLogObject(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync.CloudSyncEnabled", &unk_272A8884E, buf, 2u);
  }

  if ([*(a1 + 40) _shouldContinueWithCloudSyncResult:a2 onDisabledHandler:*(a1 + 32)])
  {
    v5 = [*(a1 + 40) _queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__WLKSettingsCloudUtilities_updateLocalStoreWithCompletion___block_invoke_54;
    block[3] = &unk_279E5F7C8;
    v7 = *(a1 + 32);
    v6 = v7;
    v9 = v7;
    dispatch_async(v5, block);
  }
}

void __60__WLKSettingsCloudUtilities_updateLocalStoreWithCompletion___block_invoke_54(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __60__WLKSettingsCloudUtilities_updateLocalStoreWithCompletion___block_invoke_2;
  v2[3] = &unk_279E5F890;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  [v1 _fetchSyncDictionary:v2];
}

uint64_t __60__WLKSettingsCloudUtilities_updateLocalStoreWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

+ (BOOL)synchronizeSettingsFromCloudIfNeeded:(id *)needed
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__WLKSettingsCloudUtilities_synchronizeSettingsFromCloudIfNeeded___block_invoke;
  v9[3] = &unk_279E5E8D0;
  v11 = &v19;
  v12 = &v13;
  v6 = v5;
  v10 = v6;
  [self synchronizeSettingsFromCloudIfNeededWithCompletion:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  if (needed)
  {
    *needed = v14[5];
  }

  v7 = *(v20 + 24);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v7;
}

void __66__WLKSettingsCloudUtilities_synchronizeSettingsFromCloudIfNeeded___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)synchronizeSettingsFromCloudIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = WLKStartupSignpostLogObject(completionCopy);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSyncEnabled", &unk_272A8884E, buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__WLKSettingsCloudUtilities_synchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke;
  v7[3] = &unk_279E5F7F0;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  [self _cloudSyncEnabledWithCompletion:v7];
}

void *__80__WLKSettingsCloudUtilities_synchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = WLKStartupSignpostLogObject(a1);
  if (os_signpost_enabled(v4))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSyncEnabled", &unk_272A8884E, v6, 2u);
  }

  result = [*(a1 + 40) _shouldContinueWithCloudSyncResult:a2 onDisabledHandler:*(a1 + 32)];
  if (result)
  {
    return [*(a1 + 40) _runSynchronizeSettingsFromCloudIfNeededWithCompletion:*(a1 + 32)];
  }

  return result;
}

+ (void)_runUpdateCloudStoreAppSettings:(id)settings deleteHistory:(BOOL)history removeEntry:(BOOL)entry completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  _queue = [self _queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__WLKSettingsCloudUtilities__runUpdateCloudStoreAppSettings_deleteHistory_removeEntry_completion___block_invoke;
  v15[3] = &unk_279E5F8B8;
  v17 = completionCopy;
  selfCopy = self;
  historyCopy = history;
  entryCopy = entry;
  v16 = settingsCopy;
  v13 = completionCopy;
  v14 = settingsCopy;
  dispatch_async(_queue, v15);
}

void __98__WLKSettingsCloudUtilities__runUpdateCloudStoreAppSettings_deleteHistory_removeEntry_completion___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 48) _syncDictionaryForAppSettings:*(a1 + 32)];
  v3 = [v2 mutableCopy];

  if (v3)
  {
    if (*(a1 + 56) == 1)
    {
      [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"deleteHistory"];
    }

    if (*(a1 + 57) == 1)
    {
      [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"removeEntry"];
    }

    v10 = v3;
    v11 = @"watchListSettingsEntries";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    v12[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    [*(a1 + 48) _postChangeDictionaryToCloud:v6 completion:*(a1 + 40)];
LABEL_11:

    goto LABEL_12;
  }

  if (*(a1 + 40))
  {
    v7 = WLKSystemLogObject(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Warning: app dictionary is nil.", v9, 2u);
    }

    v8 = *(a1 + 40);
    v6 = WLKError(200, 0, @"app dictionary is nil");
    (*(v8 + 16))(v8, 0, v6);
    goto LABEL_11;
  }

LABEL_12:
}

+ (void)_runResetAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__WLKSettingsCloudUtilities__runResetAccountWithCompletion___block_invoke;
  v7[3] = &unk_279E5F7C8;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  dispatch_async(_queue, v7);
}

void __60__WLKSettingsCloudUtilities__runResetAccountWithCompletion___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"doResetAccount";
  v8[0] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__WLKSettingsCloudUtilities__runResetAccountWithCompletion___block_invoke_2;
  v4[3] = &unk_279E5F8E0;
  v6 = v3;
  v5 = *(a1 + 32);
  [v3 _postChangeDictionaryToCloud:v2 completion:v4];
}

void __60__WLKSettingsCloudUtilities__runResetAccountWithCompletion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(a1 + 40) deleteAllHistoryWithCompletion:*(a1 + 32)];
  }

  else
  {
    v7 = WLKSystemLogObject(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__WLKSettingsCloudUtilities__runResetAccountWithCompletion___block_invoke_2_cold_1();
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }
  }
}

+ (void)_runSynchronizeSettingsFromCloudIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke;
  v7[3] = &unk_279E5F7C8;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  dispatch_async(_queue, v7);
}

void __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  v2 = WLKStartupSignpostLogObject(a1);
  if (os_signpost_enabled(v2))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.ActiveAccount", &unk_272A8884E, buf, 2u);
  }

  v3 = [MEMORY[0x277D6C478] activeAccount];
  v4 = [v3 ams_DSID];
  v5 = [v4 stringValue];

  v7 = WLKStartupSignpostLogObject(v6);
  if (os_signpost_enabled(v7))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.ActiveAccount", &unk_272A8884E, buf, 2u);
  }

  v8 = [v5 length];
  if (v8)
  {
    v9 = WLKStartupSignpostLogObject(v8);
    if (os_signpost_enabled(v9))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.SettingsStoreRefresh", &unk_272A8884E, buf, 2u);
    }

    v10 = +[WLKSettingsStore sharedSettings];
    objc_initWeak(buf, *(a1 + 40));
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_66;
    v14[3] = &unk_279E5F908;
    objc_copyWeak(&v17, buf);
    v16 = *(a1 + 32);
    v11 = v10;
    v15 = v11;
    [v11 refreshWithCompletion:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
    goto LABEL_13;
  }

  v12 = WLKSystemLogObject(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_272A0F000, v12, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - cannot synchronize from cloud. Not signed in..", buf, 2u);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v11 = WLKError(200, 0, @"Cannot synchronize from cloud. Not signed in...");
    (*(v13 + 16))(v13, 0, v11);
LABEL_13:
  }
}

void __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_66(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_2;
    v7[3] = &unk_279E5EFC0;
    v8 = a1[4];
    v9 = a1[5];
    dispatch_async(v4, v7);
  }

  else
  {
    v5 = a1[5];
    v6 = WLKError(-1, 0, @"Nil Self");
    v5[2](v5, 0, v6);
  }
}

void __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = WLKStartupSignpostLogObject(a1);
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.SettingsStoreRefresh", &unk_272A8884E, buf, 2u);
  }

  v3 = [*(a1 + 32) lastSyncDate];
  v4 = v3;
  if (WLKSettingsStoreURLBagKeyAPIMaxSettingsAge_block_invoke_onceToken == -1)
  {
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_2_cold_1();
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSinceDate:v4];
  v7 = v6;
  v8 = WLKSettingsStoreURLBagKeyAPIMaxSettingsAge_block_invoke_maxAge;

  if (v7 <= v8)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

LABEL_6:
  v9 = WLKStartupSignpostLogObject(v3);
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync", &unk_272A8884E, buf, 2u);
  }

  v11 = WLKSystemLogObject(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v11, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Requesting settings sync", buf, 2u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_73;
  v13[3] = &unk_279E5EA68;
  v12 = *(a1 + 32);
  v14 = *(a1 + 40);
  [v12 synchronize:1 completion:v13];

LABEL_12:
}

void __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_70(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = WLKStartupSignpostLogObject(a1);
  if (os_signpost_enabled(v1))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v1, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.BagMaxLocalAge", &unk_272A8884E, &v15, 2u);
  }

  v2 = [MEMORY[0x277D6C480] app];
  v3 = [v2 cachedIntegerForKey:kBagKeyUVSearchMaxLocalSettingsAgeSeconds];

  if (v3)
  {
    WLKSettingsStoreURLBagKeyAPIMaxSettingsAge_block_invoke_maxAge = [v3 unsignedIntegerValue];
    v5 = WLKSystemLogObject(WLKSettingsStoreURLBagKeyAPIMaxSettingsAge_block_invoke_maxAge);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = WLKSettingsStoreURLBagKeyAPIMaxSettingsAge_block_invoke_maxAge;
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - SettingStore maxAge=%lu", &v15, 0xCu);
    }
  }

  else
  {
    WLKSettingsStoreURLBagKeyAPIMaxSettingsAge_block_invoke_maxAge = 604800;
    v5 = WLKSystemLogObject(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_70_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v14 = WLKStartupSignpostLogObject(v13);
  if (os_signpost_enabled(v14))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.BagMaxLocalAge", &unk_272A8884E, &v15, 2u);
  }
}

void __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_73(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v5 = [(__CFString *)v5 description];
    v7 = v5;
  }

  else
  {
    v7 = &stru_288206BC0;
  }

  v8 = WLKSystemLogObject(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (a2)
    {
      v9 = @"YES";
    }

    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - settings sync from cloud success: %@ %@", &v12, 0x16u);
  }

  v11 = WLKStartupSignpostLogObject(v10);
  if (os_signpost_enabled(v11))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync", &unk_272A8884E, &v12, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)_syncDictionaryForLocalStore
{
  v21 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  v5 = +[WLKSettingsStore sharedSettings];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  watchListApps = [v5 watchListApps];
  v7 = [watchListApps countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(watchListApps);
        }

        v11 = [self _syncDictionaryForAppSettings:*(*(&v16 + 1) + 8 * i)];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [watchListApps countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([array count])
  {
    [dictionary setObject:array forKeyedSubscript:@"watchListSettingsEntries"];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "optedIn")}];
  [dictionary setObject:v12 forKeyedSubscript:@"isOptedIn"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "migratedtvOS")}];
  [dictionary setObject:v13 forKeyedSubscript:@"isTvOSMigrated"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "migratediOS")}];
  [dictionary setObject:v14 forKeyedSubscript:@"isIOSMigrated"];

  return dictionary;
}

+ (id)_syncDictionaryForAppSettings:(id)settings
{
  settingsCopy = settings;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  channelID = [settingsCopy channelID];
  if (channelID)
  {
    [dictionary setObject:channelID forKeyedSubscript:@"searchBrandId"];
  }

  externalID = [settingsCopy externalID];
  if ([externalID length])
  {
    [dictionary setObject:externalID forKeyedSubscript:@"externalAccountId"];
  }

  if ([settingsCopy accessStatus] == 1)
  {
    v7 = MEMORY[0x277CBEC38];
LABEL_9:
    [dictionary setObject:v7 forKeyedSubscript:@"enabled"];
    goto LABEL_11;
  }

  if ([settingsCopy accessStatus] == 2)
  {
    v7 = MEMORY[0x277CBEC28];
    goto LABEL_9;
  }

  dictionary = 0;
LABEL_11:
  if ([settingsCopy obsolete])
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"removeEntry"];
  }

  v8 = [dictionary copy];

  return v8;
}

+ (void)_fetchSyncDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  activeAccount = [MEMORY[0x277D6C478] activeAccount];
  v5 = activeAccount;
  if (activeAccount && ([activeAccount ams_DSID], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "stringValue"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = WLKShouldRunInProcess();
    if (v9)
    {
      v10 = WLKSystemLogObject(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Fetching settings in WLKProcess", buf, 2u);
      }

      v11 = objc_alloc_init(WLKSettingsRequestOperation);
      objc_initWeak(buf, v11);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke;
      v24[3] = &unk_279E5E660;
      objc_copyWeak(&v26, buf);
      v25 = dictionaryCopy;
      [(WLKSettingsRequestOperation *)v11 setCompletionBlock:v24];
      wlkDefaultConcurrentQueue = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];
      [wlkDefaultConcurrentQueue addOperation:v11];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
      goto LABEL_9;
    }

    _connection = [objc_opt_class() _connection];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_95;
    v22[3] = &unk_279E5EB38;
    v14 = dictionaryCopy;
    v23 = v14;
    v15 = [_connection remoteObjectProxyWithErrorHandler:v22];

    v17 = WLKStartupSignpostLogObject(v16);
    if (os_signpost_enabled(v17))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync.NetworkRequest", &unk_272A8884E, buf, 2u);
    }

    v19 = WLKSystemLogObject(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_272A0F000, v19, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - calling out to daemon to fetch settings", buf, 2u);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_97;
    v20[3] = &unk_279E5F890;
    v21 = v14;
    [v15 fetchSettings:v20];
  }

  else if (dictionaryCopy)
  {
    v11 = WLKError(700, 0, @"Login required for this operation");
    (*(dictionaryCopy + 2))(dictionaryCopy, 0, v11);
LABEL_9:
  }
}

void __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke(uint64_t a1)
{
  v1 = a1;
  v50 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];

  if (v3)
  {
    v5 = WLKSystemLogObject(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_cold_1(WeakRetained, v5);
    }

    v6 = *(v1 + 32);
    v7 = [WeakRetained error];
    (*(v6 + 16))(v6, 0, v7);
  }

  else
  {
    v7 = [WeakRetained response];
    if (v7)
    {
      v36 = v1;
      v37 = WeakRetained;
      v8 = +[WLKSettingsStore sharedSettings];
      [v8 beginIgnoringChanges];
      v9 = [MEMORY[0x277CBEB58] set];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v35 = v7;
      obj = [v7 objectForKeyedSubscript:@"watchListSettingsEntries"];
      v10 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v45;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v45 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v44 + 1) + 8 * i);
            v15 = [v14 objectForKeyedSubscript:@"enabled"];
            v16 = [v15 BOOLValue];

            v17 = [v14 objectForKeyedSubscript:@"searchBrandId"];
            if (v16)
            {
              v18 = 1;
            }

            else
            {
              v18 = 2;
            }

            v19 = [v14 objectForKeyedSubscript:@"externalAccountId"];
            [v8 setStatus:v18 forChannelID:v17 externalID:v19];
            v20 = [v17 stringByAppendingFormat:@":%@", v19];
            [v9 addObject:v20];
          }

          v11 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v11);
      }

      v21 = [v8 watchListApps];
      v22 = [v21 copy];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obja = v22;
      v23 = [obja countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v41;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v41 != v25)
            {
              objc_enumerationMutation(obja);
            }

            v27 = *(*(&v40 + 1) + 8 * j);
            v28 = [v27 channelID];
            v29 = [v27 externalID];
            v30 = [v28 stringByAppendingFormat:@":%@", v29];

            if (([v9 containsObject:v30] & 1) == 0)
            {
              [v8 _removeWatchListApp:v27];
            }
          }

          v24 = [obja countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v24);
      }

      v7 = v35;
      v31 = [v35 objectForKeyedSubscript:@"isOptedIn"];
      [v8 setOptedIn:{objc_msgSend(v31, "BOOLValue")}];

      v32 = [v35 objectForKeyedSubscript:@"isTvOSMigrated"];
      [v8 setMigratedtvOS:{objc_msgSend(v32, "BOOLValue")}];

      v33 = [v35 objectForKeyedSubscript:@"isIOSMigrated"];
      [v8 setMigratediOS:{objc_msgSend(v33, "BOOLValue")}];

      v34 = [MEMORY[0x277CBEAA8] date];
      [v8 setLastSyncDate:v34];

      [v8 endIgnoringChanges];
      v1 = v36;
      WeakRetained = v37;
    }

    (*(*(v1 + 32) + 16))(*(v1 + 32), v7, 0);
  }
}

void __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_95(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_95_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_97(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = WLKStartupSignpostLogObject(v6);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync.NetworkRequest.Refresh", &unk_272A8884E, buf, 2u);
  }

  v8 = +[WLKSettingsStore sharedSettings];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_98;
  v12[3] = &unk_279E5F930;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  [v8 refreshWithCompletion:v12];
}

uint64_t __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_98(void *a1)
{
  v2 = WLKStartupSignpostLogObject(a1);
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync.NetworkRequest.Refresh", &unk_272A8884E, buf, 2u);
  }

  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - WLKSettingsCloudUtilities - daemon callback for fetch settings", v9, 2u);
  }

  v6 = WLKStartupSignpostLogObject(v5);
  if (os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync.CloudSync.NetworkRequest", &unk_272A8884E, v8, 2u);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

+ (void)_postChangeDictionaryToCloud:(id)cloud completion:(id)completion
{
  cloudCopy = cloud;
  completionCopy = completion;
  activeAccount = [MEMORY[0x277D6C478] activeAccount];
  v8 = activeAccount;
  if (activeAccount && ([activeAccount ams_DSID], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "stringValue"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v9, v11))
  {
    if (WLKShouldRunInProcess())
    {
      v12 = +[WLKSettingsStore sharedSettings];
      pushToken = [v12 pushToken];

      if ([pushToken length])
      {
        v14 = [cloudCopy mutableCopy];
        [v14 setObject:pushToken forKeyedSubscript:@"fromPushToken"];
        v15 = [v14 copy];

        cloudCopy = v15;
      }

      v16 = [[WLKSettingsModificationRequestOperation alloc] initWithModifications:cloudCopy];
      objc_initWeak(location, v16);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __69__WLKSettingsCloudUtilities__postChangeDictionaryToCloud_completion___block_invoke;
      v27[3] = &unk_279E5E660;
      objc_copyWeak(&v29, location);
      v28 = completionCopy;
      [(WLKSettingsModificationRequestOperation *)v16 setCompletionBlock:v27];
      wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
      [wlkDefaultQueue addOperation:v16];

      objc_destroyWeak(&v29);
      objc_destroyWeak(location);

      goto LABEL_9;
    }

    _connection = [objc_opt_class() _connection];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __69__WLKSettingsCloudUtilities__postChangeDictionaryToCloud_completion___block_invoke_2;
    v25[3] = &unk_279E5EB38;
    v19 = completionCopy;
    v26 = v19;
    v20 = [_connection remoteObjectProxyWithErrorHandler:v25];

    v22 = WLKSystemLogObject(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_272A0F000, v22, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - calling out to daemon to post settings", location, 2u);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__WLKSettingsCloudUtilities__postChangeDictionaryToCloud_completion___block_invoke_101;
    v23[3] = &unk_279E5EA68;
    v24 = v19;
    [v20 postSettings:cloudCopy replyHandler:v23];
  }

  else if (completionCopy)
  {
    pushToken = WLKError(700, 0, @"Login required for this operation");
    (*(completionCopy + 2))(completionCopy, 0, pushToken);
LABEL_9:
  }
}

void __69__WLKSettingsCloudUtilities__postChangeDictionaryToCloud_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];
  v4 = [v3 copy];

  v6 = WLKSystemLogObject(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (!v4)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Updated cloud settings success: %@", buf, 0xCu);
  }

  if (*(a1 + 32))
  {
    if (!v4)
    {
      v8 = [MEMORY[0x277CBEAA8] date];
      v9 = WLKSystemLogObject(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v8;
        _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Updating lastSyncToCloud date %@", buf, 0xCu);
      }

      v10 = +[WLKSettingsStore sharedSettings];
      [v10 setLastSyncToCloudDate:v8];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__WLKSettingsCloudUtilities__postChangeDictionaryToCloud_completion___block_invoke_100;
    block[3] = &unk_279E5F958;
    v13 = *(a1 + 32);
    v14 = v4 == 0;
    v12 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __69__WLKSettingsCloudUtilities__postChangeDictionaryToCloud_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKSystemLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_95_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __69__WLKSettingsCloudUtilities__postChangeDictionaryToCloud_completion___block_invoke_101(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = WLKSystemLogObject(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - daemon callback for post settings", v8, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

+ (id)_connection
{
  v3 = _connection___connection;
  if (!_connection___connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    v5 = _connection___connection;
    _connection___connection = v4;

    v6 = _connection___connection;
    v7 = WLKConnectionClientInterface();
    [v6 setExportedInterface:v7];

    [_connection___connection setExportedObject:self];
    v8 = _connection___connection;
    v9 = WLKConnectionServerInterface();
    [v8 setRemoteObjectInterface:v9];

    [_connection___connection setInterruptionHandler:&__block_literal_global_107];
    [_connection___connection setInvalidationHandler:&__block_literal_global_110];
    [_connection___connection resume];
    v3 = _connection___connection;
  }

  return v3;
}

void __40__WLKSettingsCloudUtilities__connection__block_invoke(uint64_t a1)
{
  v1 = WLKSystemLogObject(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_272A0F000, v1, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Connection interrupted.", v2, 2u);
  }
}

void __40__WLKSettingsCloudUtilities__connection__block_invoke_108()
{
  v0 = +[WLKSettingsCloudUtilities _queue];
  dispatch_async(v0, &__block_literal_global_113);
}

void __40__WLKSettingsCloudUtilities__connection__block_invoke_2(uint64_t a1)
{
  v1 = WLKSystemLogObject(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_272A0F000, v1, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Connection invalidated.", v3, 2u);
  }

  v2 = _connection___connection;
  _connection___connection = 0;
}

+ (BOOL)_shouldContinueWithCloudSyncResult:(BOOL)result onDisabledHandler:(id)handler
{
  if (handler && !result)
  {
    handlerCopy = handler;
    v6 = WLKSystemLogObject(handlerCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Cloud sync disabled.", v9, 2u);
    }

    v7 = WLKError(201, 0, @"Cloud sync disabled");
    handlerCopy[2](handlerCopy, 0, v7);
  }

  return result;
}

+ (void)_cloudSyncEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WLKSettingsCloudUtilities__cloudSyncEnabledWithCompletion___block_invoke;
  block[3] = &unk_279E5EA90;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(_queue, block);
}

void __61__WLKSettingsCloudUtilities__cloudSyncEnabledWithCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D6C480] app];
  v3 = [v2 cachedURLForKey:kBagKeyGetWatchListSettings];

  v4 = [MEMORY[0x277D6C480] app];
  v5 = [v4 cachedURLForKey:kBagKeyUpdateWatchListSettings];

  if (v3)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  v9 = WLKSystemLogObject(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v8;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKSettingsCloudUtilities - Completed isCloudSyncEnabled fetch with enabled status=%d", v10, 8u);
  }

  (*(*(a1 + 32) + 16))();
}

void __84__WLKSettingsCloudUtilities__runSynchronizeSettingsFromCloudIfNeededWithCompletion___block_invoke_70_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = WLKSettingsStoreURLBagKeyAPIMaxSettingsAge_block_invoke_maxAge;
  OUTLINED_FUNCTION_0(&dword_272A0F000, a1, a3, "WLKSettingsCloudUtilities - SettingStore maxAge configuration is nil, use default value=%lu", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __50__WLKSettingsCloudUtilities__fetchSyncDictionary___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_272A0F000, a2, OS_LOG_TYPE_ERROR, "WLKSettingsCloudUtilities - Failed to fetch settings with error: %@", v4, 0xCu);
}

@end