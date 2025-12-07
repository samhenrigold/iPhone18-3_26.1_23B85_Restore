@interface AppletConfigurationData
+ (BOOL)setConfiguration:(id)configuration;
+ (_DWORD)dumpState;
+ (id)dataHash;
+ (id)extraDebugScriptForModule:(id)module;
+ (id)getCalypsoSettings;
+ (id)getConfig;
+ (id)getDreamworksSettings;
+ (id)getExpressModeSettings;
+ (id)getHerculesSettings;
+ (id)getInstance;
+ (id)getNFCSettings;
+ (id)getOverrideConfig;
+ (id)getSlalomSettings;
+ (id)getStaticCalypsoSettings;
+ (id)getStaticConfig;
+ (id)getStaticExpressModeSettings;
+ (id)getStaticHerculesSettings;
+ (id)getWuluSettings;
+ (id)plasticCardScriptForModule:(id)module;
+ (id)pluginDecoderForMid:(id)mid;
+ (id)scriptForModule:(id)module;
+ (void)init;
+ (void)registerStateHandler;
- (AppletConfigurationData)init;
- (id)optionsForInterval:(uint64_t)interval;
- (id)pluginDecoderForMid:(int)mid depth:;
- (uint64_t)isEligibleAsset:(NSObject *)asset;
- (void)downloadAsset:(uint64_t)asset;
- (void)handleAvailableAsset:(dispatch_queue_t *)asset;
- (void)handleQueryResult:(void *)result query:;
- (void)handleQuerySuccess:(dispatch_queue_t *)success;
- (void)maybeQueryMetadata;
- (void)queryMA;
- (void)queryMetadata;
- (void)retryWithBackoff:(uint64_t)backoff;
- (void)tsmScriptPerformed:(id)performed;
@end

@implementation AppletConfigurationData

+ (id)getOverrideConfig
{
  v13 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/AppleInternal/com.apple.stockholm.atl.override.plist"];
  v10 = 0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v2 error:&v10];
  v4 = v10;
  v5 = v4;
  if (v3)
  {
    objc_opt_self();
    v6 = v3;
  }

  else
  {
    v7 = ATLLogObject(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      code = [v5 code];
      *buf = 67109120;
      v12 = code;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "No valid override found %d", buf, 8u);
    }
  }

  return v3;
}

+ (id)getInstance
{
  objc_opt_self();
  if (getInstance_onceToken_2 != -1)
  {
    +[AppletConfigurationData getInstance];
  }

  v2 = getInstance_inst_1;

  return v2;
}

uint64_t __38__AppletConfigurationData_getInstance__block_invoke()
{
  getInstance_inst_1 = objc_alloc_init(AppletConfigurationData);

  return MEMORY[0x2821F96F8]();
}

- (AppletConfigurationData)init
{
  *&v48[5] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = AppletConfigurationData;
  v2 = [(AppletConfigurationData *)&v46 init];
  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("ATLConfiguration", v3);
  queue = v2->queue;
  v2->queue = v4;

  v2->maErrorCount = 0;
  v2->retryInProgress = 0;
  v7 = +[AppletTranslator userDefaults];
  userDefaults = v2->userDefaults;
  v2->userDefaults = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  pluginCache = v2->pluginCache;
  v2->pluginCache = v9;

  v12 = +[AppletTranslator isInternalBuild];
  if (v12)
  {
    v13 = [(NSUserDefaults *)v2->userDefaults objectForKey:@"debug.maMetadataQueryTimeInterval"];

    if (v13)
    {
      v15 = [(NSUserDefaults *)v2->userDefaults objectForKey:@"debug.maMetadataQueryTimeInterval"];
      v2->maMetadataQueryInterval = [v15 intValue];
    }

    else
    {
      v2->maMetadataQueryInterval = 604800.0;
    }

    v16 = +[AppletConfigurationData getOverrideConfig];
    config = v2->config;
    v2->config = v16;

    if (v16)
    {
      v19 = ATLLogObject(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_DEFAULT, "Override configuration, disabling updates via MA", buf, 2u);
      }

      v20 = v2;
      goto LABEL_26;
    }
  }

  else
  {
    v2->maMetadataQueryInterval = 604800.0;
  }

  v21 = +[AppletConfigurationData getStaticConfig];
  v22 = [v21 mutableCopy];

  v23 = [(NSUserDefaults *)v2->userDefaults objectForKey:@"config"];
  v24 = ATLLogObject(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v48 = v23;
    _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_DEFAULT, "Loaded persisted MA config %@", buf, 0xCu);
  }

  if (v23)
  {
    v25 = [v23 objectForKeyedSubscript:@"_CompatibilityVersion"];
    intValue = [v25 intValue];

    if (intValue == 6)
    {
      [v22 addEntriesFromDictionary:v23];
    }

    else
    {
      v28 = ATLLogObject(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v48[0] = intValue;
        LOWORD(v48[1]) = 1024;
        *(&v48[1] + 2) = 6;
        _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_DEFAULT, "Incompatible (%d != %d) version, deleting it", buf, 0xEu);
      }

      [(NSUserDefaults *)v2->userDefaults removeObjectForKey:@"config"];
    }
  }

  objc_storeStrong(&v2->config, v22);
  v30 = ATLLogObject(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v2->config;
    *buf = 138412290;
    *v48 = v31;
    _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_DEFAULT, "Resolved config %@", buf, 0xCu);
  }

  if (v12)
  {
    [(NSUserDefaults *)v2->userDefaults setObject:&unk_2843C6A58 forKey:@"debug.currentCompatibilityVersion"];
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel_tsmScriptPerformed_ name:@"com.apple.stockholm.tsm.script.executed" object:0];

  v34 = ATLLogObject(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v48 = @"com.apple.stockholm.tsm.script.executed";
    _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_DEFAULT, "Listening to %@", buf, 0xCu);
  }

  v35 = v2->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__AppletConfigurationData_init__block_invoke;
  block[3] = &unk_278874C98;
  v36 = v2;
  v45 = v36;
  dispatch_async(v35, block);
  v37 = dispatch_time(0, 15000000000);
  v38 = v2->queue;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __31__AppletConfigurationData_init__block_invoke_2;
  v42[3] = &unk_278874C98;
  v39 = v36;
  v43 = v39;
  dispatch_after(v37, v38, v42);
  v40 = v39;

LABEL_26:
  return v2;
}

+ (id)getConfig
{
  objc_opt_self();
  v3 = +[AppletConfigurationData getInstance];
  objc_sync_enter(v3);
  v4 = v3[3];
  objc_sync_exit(v3);

  return v4;
}

void __40__AppletConfigurationData_queryMetadata__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = ATLLogObject(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = a2;
    _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "catalog download result %ld", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__AppletConfigurationData_queryMetadata__block_invoke_997;
  v7[3] = &unk_2788750B8;
  v7[4] = v5;
  v7[5] = a2;
  dispatch_async(v6, v7);
}

void __40__AppletConfigurationData_queryMetadata__block_invoke_997(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = (a1 + 32);
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__AppletConfigurationData_queryMetadata__block_invoke_2;
    v6[3] = &unk_278874C98;
    v6[4] = v2;
    [(AppletConfigurationData *)v2 retryWithBackoff:v6];
  }

  else
  {
    __40__AppletConfigurationData_queryMetadata__block_invoke_997_cold_1(v2, v3, v5);
  }
}

- (void)tsmScriptPerformed:(id)performed
{
  queue = self->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__AppletConfigurationData_tsmScriptPerformed___block_invoke;
  block[3] = &unk_278874C98;
  block[4] = self;
  dispatch_async(queue, block);
}

void __34__AppletConfigurationData_queryMA__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__AppletConfigurationData_queryMA__block_invoke_2;
  block[3] = &unk_278875108;
  block[4] = v3;
  v7 = a2;
  v6 = v2;
  dispatch_async(v4, block);
}

- (void)handleQueryResult:(void *)result query:
{
  v37 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  if (self)
  {
    dispatch_assert_queue_V2(self[1]);
    inited = objc_initWeak(&location, self);
    v7 = ATLLogObject(inited);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = resultCopy;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "Query %@ result %ld", buf, 0x16u);
    }

    switch(a2)
    {
      case 0:
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        results = [resultCopy results];
        v12 = [results countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v12)
        {
          v13 = *v28;
          do
          {
            v14 = 0;
            do
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(results);
              }

              v15 = *(*(&v27 + 1) + 8 * v14);
              v16 = objc_loadWeakRetained(&location);
              [(AppletConfigurationData *)v16 handleQuerySuccess:v15];

              ++v14;
            }

            while (v12 != v14);
            v12 = [results countByEnumeratingWithState:&v27 objects:v36 count:16];
          }

          while (v12);
        }

        break;
      case 1:
      case 3:
      case 4:
      case 6:
      case 8:
      case 10:
      case 12:
        v9 = ATLLogObject(v8);
        [AppletConfigurationData handleQueryResult:v9 query:a2];

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __51__AppletConfigurationData_handleQueryResult_query___block_invoke;
        v31[3] = &unk_278875090;
        objc_copyWeak(&v32, &location);
        [(AppletConfigurationData *)self retryWithBackoff:v31];
        objc_destroyWeak(&v32);
        break;
      case 2:
        [(AppletConfigurationData *)self queryMetadata];
        break;
      case 5:
      case 7:
      case 11:
      case 13:
      case 14:
        v10 = ATLLogObject(v8);
        [AppletConfigurationData handleQueryResult:v10 query:?];
        break;
      case 9:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v35 = -1;
        v17 = ATLLogObject(v8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_DEFAULT, "Registering for lock status changes", v26, 2u);
        }

        v18 = *&buf[8];
        v19 = self[1];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __51__AppletConfigurationData_handleQueryResult_query___block_invoke_1001;
        v24[3] = &unk_278875158;
        v24[4] = buf;
        objc_copyWeak(&v25, &location);
        notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (v18 + 24), v19, v24);
        v20 = MKBDeviceUnlockedSinceBoot();
        if (v20)
        {
          v21 = ATLLogObject(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *v26 = 0;
            _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_DEFAULT, "Device unlocked between last query and registration, canceling notify and requery", v26, 2u);
          }

          v22 = *(*&buf[8] + 24);
          if (v22 >= 1)
          {
            notify_cancel(v22);
            *(*&buf[8] + 24) = -1;
          }

          v23 = objc_loadWeakRetained(&location);
          [(AppletConfigurationData *)v23 queryMA];
        }

        objc_destroyWeak(&v25);
        _Block_object_dispose(buf, 8);
        break;
      default:
        break;
    }

    objc_destroyWeak(&location);
  }
}

- (void)handleQuerySuccess:(dispatch_queue_t *)success
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (success)
  {
    objc_initWeak(&location, success);
    dispatch_assert_queue_V2(success[1]);
    v5 = ATLLogObject(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      assetId = [v3 assetId];
      state = [v3 state];
      attributes = [v3 attributes];
      *buf = 138412802;
      v18 = assetId;
      v19 = 2048;
      v20 = state;
      v21 = 2112;
      v22 = attributes;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Got asset id %@ state %ld attributes %@", buf, 0x20u);
    }

    if (([(AppletConfigurationData *)success isEligibleAsset:v3]& 1) != 0)
    {
      state2 = [v3 state];
      if (state2 > 6)
      {
        goto LABEL_19;
      }

      if (((1 << state2) & 0x64) != 0)
      {
        [(AppletConfigurationData *)success handleAvailableAsset:v3];
        goto LABEL_17;
      }

      if (((1 << state2) & 0x12) != 0)
      {
        [(AppletConfigurationData *)success + 1 handleQuerySuccess:?];
LABEL_17:
        objc_destroyWeak(&location);
        goto LABEL_18;
      }

      if (state2 != 3)
      {
LABEL_19:
        if (!state2)
        {
          v12 = ATLLogObject(0);
          [AppletConfigurationData handleQuerySuccess:v12];

          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __46__AppletConfigurationData_handleQuerySuccess___block_invoke_1005;
          v14[3] = &unk_278875090;
          objc_copyWeak(&v15, &location);
          [(AppletConfigurationData *)success retryWithBackoff:v14];
          objc_destroyWeak(&v15);
        }

        goto LABEL_17;
      }

      v11 = &__block_literal_global_1007;
    }

    else
    {
      if ([v3 state] != 2)
      {
        goto LABEL_17;
      }

      v10 = ATLLogObject(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_DEFAULT, "Purgning ineligible asset in installed state", buf, 2u);
      }

      v11 = &__block_literal_global_1004;
    }

    [v3 purge:v11];
    goto LABEL_17;
  }

LABEL_18:
}

void __51__AppletConfigurationData_handleQueryResult_query___block_invoke_1001(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = ATLLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 32) + 8) + 24);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_22EEF5000, v2, OS_LOG_TYPE_DEFAULT, "Got lock status change, querying and canceling notify token %d", v4, 8u);
  }

  if (*(*(*(a1 + 32) + 8) + 24) >= 1)
  {
    __51__AppletConfigurationData_handleQueryResult_query___block_invoke_1001_cold_1(a1, a1 + 32);
  }
}

- (void)handleAvailableAsset:(dispatch_queue_t *)asset
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (asset)
  {
    dispatch_assert_queue_V2(asset[1]);
    if (([(AppletConfigurationData *)asset isEligibleAsset:v3]& 1) != 0)
    {
      getLocalFileUrl = [v3 getLocalFileUrl];
      v5 = [getLocalFileUrl URLByAppendingPathComponent:@"ATLConfiguration.plist"];

      v19 = 0;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5 error:&v19];
      v7 = v19;
      v8 = v7;
      if (v6)
      {
        v9 = [v6 mutableCopy];
        attributes = [v3 attributes];
        v11 = [attributes objectForKeyedSubscript:@"_CompatibilityVersion"];
        [v9 setObject:v11 forKeyedSubscript:@"_CompatibilityVersion"];

        attributes2 = [v3 attributes];
        v13 = [attributes2 objectForKeyedSubscript:@"_ContentVersion"];
        [v9 setObject:v13 forKeyedSubscript:@"_ContentVersion"];

        v14 = +[AppletConfigurationData getStaticConfig];
        v15 = [v14 mutableCopy];

        [v15 addEntriesFromDictionary:v9];
        assetCopy = asset;
        objc_sync_enter(assetCopy);
        objc_storeStrong(assetCopy + 3, v15);
        [assetCopy[4] removeAllObjects];
        objc_sync_exit(assetCopy);

        [assetCopy[2] setObject:v9 forKey:@"config"];
        [assetCopy[2] synchronize];
        v17 = ATLLogObject([v3 purge:&__block_literal_global_1019]);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v9 objectForKeyedSubscript:@"_ContentVersion"];
          *buf = 138412290;
          v21 = v18;
          _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_DEFAULT, "Asset version %@ successfully set and syncrhonized", buf, 0xCu);
        }
      }

      else
      {
        v9 = ATLLogObject(v7);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v21 = v5;
          v22 = 2112;
          v23 = v8;
          _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "Failed to load config at URL %@ error %@", buf, 0x16u);
        }
      }
    }

    else
    {
      [AppletConfigurationData handleAvailableAsset:v3];
    }
  }
}

void __41__AppletConfigurationData_downloadAsset___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AppletConfigurationData_downloadAsset___block_invoke_2;
  block[3] = &unk_278875108;
  v7 = a2;
  block[4] = v3;
  v6 = v2;
  dispatch_async(v4, block);
}

void __41__AppletConfigurationData_downloadAsset___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = ATLLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 134217984;
    v8 = v3;
    _os_log_impl(&dword_22EEF5000, v2, OS_LOG_TYPE_DEFAULT, "Download result %ld", buf, 0xCu);
  }

  v4 = *(a1 + 48);
  if (v4 == 10 || v4 == 0)
  {
    [*(*(a1 + 32) + 16) removeObjectForKey:@"assetDownloadStartedOn"];
    [(AppletConfigurationData *)*(a1 + 32) handleAvailableAsset:?];
  }

  else
  {
    __41__AppletConfigurationData_downloadAsset___block_invoke_2_cold_1(a1, v6);
  }
}

+ (id)pluginDecoderForMid:(id)mid
{
  midCopy = mid;
  v6 = +[(AppletConfigurationData *)self];
  v7 = [(AppletConfigurationData *)v6 pluginDecoderForMid:midCopy depth:0];

  return v7;
}

- (id)pluginDecoderForMid:(int)mid depth:
{
  v5 = a2;
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = [selfCopy[4] objectForKeyedSubscript:v5];
    if (v7)
    {
      v8 = v7;
      v9 = v8;
    }

    else
    {
      v10 = [selfCopy[3] objectForKeyedSubscript:v5];
      v11 = [v10 objectForKeyedSubscript:@"pluginData"];

      if (v11)
      {
        v12 = [PluginDecoder decoderWithData:v11];
        if (v12)
        {
          [selfCopy[4] setObject:v12 forKeyedSubscript:v5];
        }

        v8 = v12;
        v9 = v8;
      }

      else
      {
        v13 = [selfCopy[3] objectForKeyedSubscript:v5];
        v14 = [v13 objectForKeyedSubscript:@"pluginAlias"];

        v9 = 0;
        if (mid <= 11 && v14)
        {
          v9 = [(AppletConfigurationData *)selfCopy pluginDecoderForMid:v14 depth:mid + 1];
        }

        v8 = 0;
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)dataHash
{
  v2 = +[AppletConfigurationData getConfig];
  v4 = +[HashHelper hashHelper];
  v5 = [(HashHelper *)v4 addDictionary:v2];
  getHash = [(HashHelper *)v5 getHash];

  return getHash;
}

+ (id)scriptForModule:(id)module
{
  moduleCopy = module;
  v5 = +[AppletConfigurationData getConfig];
  v6 = [v5 objectForKeyedSubscript:moduleCopy];

  v7 = [v6 objectForKeyedSubscript:@"appletConfigurationScript"];

  return v7;
}

+ (id)plasticCardScriptForModule:(id)module
{
  moduleCopy = module;
  v5 = +[AppletConfigurationData getConfig];
  v6 = [v5 objectForKeyedSubscript:moduleCopy];

  v7 = [v6 objectForKeyedSubscript:@"appletPlasticModeScript"];

  return v7;
}

+ (id)extraDebugScriptForModule:(id)module
{
  moduleCopy = module;
  v5 = +[AppletConfigurationData getConfig];
  v6 = [v5 objectForKeyedSubscript:moduleCopy];

  v7 = [v6 objectForKeyedSubscript:@"appletDebugScript"];

  return v7;
}

+ (id)getNFCSettings
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = [v2 objectForKeyedSubscript:@"nfcSettings"];

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = ATLLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_ERROR, "No NFC Settings in config?!", v8, 2u);
    }

    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

+ (id)getWuluSettings
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = [v2 objectForKeyedSubscript:@"wuluSettings"];

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = ATLLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_ERROR, "No Wulu Settings in config?!", v8, 2u);
    }

    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

+ (id)getHerculesSettings
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = [v2 objectForKeyedSubscript:@"herculesSettings"];

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = ATLLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_ERROR, "No Hercules Settings in config?!", v8, 2u);
    }

    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

+ (id)getSlalomSettings
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = [v2 objectForKeyedSubscript:@"slalomSettings"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

+ (id)getDreamworksSettings
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = [v2 objectForKeyedSubscript:@"dreamworksSettings"];

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = ATLLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_ERROR, "No Dreamworks Settings in config?!", v8, 2u);
    }

    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

+ (id)getExpressModeSettings
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = [v2 objectForKeyedSubscript:@"expressMode"];

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = ATLLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_ERROR, "No EM Settings in config?!", v8, 2u);
    }

    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

+ (id)getCalypsoSettings
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = [v2 objectForKeyedSubscript:@"calypsoSettings"];

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = ATLLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_ERROR, "No Calypso Settings in config?!", v8, 2u);
    }

    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

+ (BOOL)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    configurationCopy = +[AppletConfigurationData getStaticConfig];
    v5 = +[AppletConfigurationData getInstance];
    [v5[4] removeAllObjects];
  }

  objc_opt_self();
  v7 = +[AppletConfigurationData getInstance];
  v8 = v7[3];
  v7[3] = configurationCopy;

  return 1;
}

+ (void)init
{
  v2 = +[AppletConfigurationData getInstance];

  +[AppletConfigurationData registerStateHandler];
}

+ (void)registerStateHandler
{
  objc_opt_self();
  if (registerStateHandler_onceToken != -1)
  {
    +[AppletConfigurationData registerStateHandler];
  }
}

+ (_DWORD)dumpState
{
  objc_opt_self();
  v2 = MEMORY[0x277CCAC58];
  v4 = +[AppletConfigurationData getConfig];
  v5 = [v2 dataWithPropertyList:v4 format:200 options:0 error:0];

  v6 = malloc_type_calloc(1uLL, [v5 length] + 200, 0x1000040BEF03554uLL);
  *v6 = 1;
  v6[1] = [v5 length];
  __strlcpy_chk();
  memcpy(v6 + 50, [v5 bytes], objc_msgSend(v5, "length"));

  return v6;
}

+ (id)getStaticConfig
{
  v39[2] = *MEMORY[0x277D85DE8];
  v30[0] = @"appletConfigurationScript";
  v30[1] = @"appletPlasticModeScript";
  v31[0] = &unk_2843C7430;
  v31[1] = &unk_2843C7460;
  v32[0] = @"D1560000101000001201";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v33[0] = v21;
  v32[1] = @"9156000014020001";
  v28[0] = @"appletConfigurationScript";
  v28[1] = @"appletPlasticModeScript";
  v29[0] = &unk_2843C7448;
  v29[1] = &unk_2843C7460;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v33[1] = v3;
  v32[2] = @"A000000704A0010010010001";
  v26[0] = @"appletConfigurationScript";
  v26[1] = @"appletPlasticModeScript";
  v27[0] = &unk_2843C7478;
  v27[1] = &unk_2843C7490;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v33[2] = v4;
  v32[3] = @"A0000003965453000000010150000000";
  v24[0] = @"appletConfigurationScript";
  v24[1] = @"appletPlasticModeScript";
  v25[0] = &unk_2843C74C0;
  v25[1] = &unk_2843C74A8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v33[3] = v5;
  v32[4] = @"F8434E412E43414C2E52657633";
  v22[0] = @"appletConfigurationScript";
  v22[1] = @"appletPlasticModeScript";
  v23[0] = &unk_2843C74F0;
  v23[1] = &unk_2843C74D8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v33[4] = v6;
  v32[5] = @"nfcSettings";
  objc_opt_self();
  v33[5] = &unk_2843C76F0;
  v32[6] = @"wuluSettings";
  objc_opt_self();
  v33[6] = &unk_2843C7D58;
  v32[7] = @"expressMode";
  v8 = +[(AppletConfigurationData *)self];
  v33[7] = v8;
  v32[8] = @"herculesSettings";
  v10 = +[(AppletConfigurationData *)self];
  v33[8] = v10;
  v32[9] = @"calypsoSettings";
  v12 = +[(AppletConfigurationData *)self];
  v33[9] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:10];
  v14 = [v13 mutableCopy];

  v38[0] = @"dreamworksMetroTypes";
  v38[1] = @"dreamworksBusTypeRanges";
  v39[0] = &unk_2843C75F8;
  v39[1] = &unk_2843C7658;
  v15 = MEMORY[0x277CBEAC0];
  v16 = v14;
  v17 = [v15 dictionaryWithObjects:v39 forKeys:v38 count:2];
  v34[0] = @"appletConfigurationScript";
  v34[1] = @"appletPlasticModeScript";
  v35[0] = &unk_2843C75C8;
  v35[1] = &unk_2843C75E0;
  v36[0] = @"A0000008588400010100";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v36[1] = @"dreamworksSettings";
  v37[0] = v18;
  v37[1] = v17;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  [v16 addEntriesFromDictionary:v19];

  return v16;
}

+ (id)getStaticExpressModeSettings
{
  v13[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v12 = @"rfModifierTCIs";
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&getStaticExpressModeSettings_tciNYTR3 length:4];
  v11[0] = v2;
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:&getStaticExpressModeSettings_tciBrisbaneTR3 length:4];
  v11[1] = v3;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&getStaticExpressModeSettings_tciAccessIS length:4];
  v11[2] = v4;
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:&getStaticExpressModeSettings_tciRevere length:4];
  v11[3] = v5;
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&getStaticExpressModeSettings_tciLyon length:4];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:&getStaticExpressModeSettings_tciSF length:4];
  v11[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:6];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  return v9;
}

+ (id)getStaticHerculesSettings
{
  v10[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v9 = @"fareTables";
  stringValue = [&unk_2843C6C38 stringValue];
  v7[0] = stringValue;
  v8[0] = @"KHkBAQABAlAoeQIBAAECTCh5BgEAAQWoKXkBAQABAk8qeQEBAAECTip5AgEAAQM8KnkGAQABBaoreQEBAAECTS15AQEAAQXRLnkBAQABBdAyKQEDAAEAYT55AQEAAQI4P3kCAQABAjk/eQYBAAEFqUAAAQMAAEABQAACAwAAQAJAAAMDAAEE9EAABAMAAEAEQAAFAwAAQAVAAAYDAABABkAABwMAAEB/QAAJAwAAQAlAABADAABAhEAAEQMAAECFQAASAwAAQIZAABMDAABAh0AAFAMAAECIQAAVAwAAQIlAABYDAABACkAAFwMAAECLQACAAwAAQIBAAIEDAABAfkABCAMAAEAIQAGDAwAAQINAFQ8DAABAgkAWDgMAAECBQBZ/AwABBgxAMwwDAAEFMEBlCwMAAQTgURUBAQABBsBjFgEDAAEAYnIWAQMAAQBjgXkBAQABA1CaAQgBAACaCKMBCAEAAKMI8AABAwABAPrwAAIDAAEA+/AABgMAAQW/8DMMAwABAhfxAAEDAAEA+PEAAgMAAQD58QAGAwABBbzxAIADAAEFw/EzDAMAAQIY8gABAwABAPzyAAIDAAEA/fIABgMAAQXC8jMMAwABAhnzAAEDAAEB/PMAAgMAAQH98wAGAwABBcHzAIADAAEFx/QAAQMAAQIS9AACAwABAhP0AAYDAAEFwPUAAQMAAQH+9QACAwABAf/1AAYDAAEFvvUAgAMAAQXF9gABAwABAhD2AAIDAAECEfYABgMAAQW99gCAAwABBcT5AAEDAAECFPkAgAMAAQXG+gACAwABAhX7AAYDAAECFvwzDAMAAQIa";
  stringValue2 = [&unk_2843C6D28 stringValue];
  v7[1] = stringValue2;
  v8[1] = @"AA0BAQABBH4BDQEBAAEEfwENAgEAAQSAAwoBAQABAZsFAwEBAAEElgUGAQEAAQANBQsBAQABBFYFDgEBAAEFlgYLAgEAAQRXBg4CAQABBZcHBgEBAAEEIwcLBAEAAQRYBw0BAQABBIcHDQIBAAEEiAcNBAEAAQSKBw0FAQABBIkHDgUBAAEFmQgBAQEAAAgBCAYBAQABBCQICwUBAAEEWQgOBAEAAQWYEAIBAQABAbMQAgIBAAEBtBEFAQEAAQM+EQsBAQABBGQSBQIBAAEDQBMFBAEAAQNCFAUFAQABA0QUBgEBAAEAURQLAQEAAQRnFQUBAQABAz8WBQUBAAEDRRcFAgEAAQNBGAUEAQABA0MYBgEBAAEAMhgIAQEAAQPAGQUBAQABBKwdAQEBAAAdAR0GAQEAAQQXHgUBAQABBTIfBgEBAAEENyEJAQEAAQLEIgkCAQABAsUjCQUBAAECxiMMAQEAAQRJJAkEAQABAsckDAIBAAEESiUCAQEAAQI2JQYBAQABBO4lDAUBAAEESyYCAQEAAQI3JgYBAQABBP8mDAQBAAEETCcCAQEAAQI4JwwBAQABBE0oAgIBAAECOSkCAgEAAQI6KgICAQABAjsrBwEBAAEDvzEHAQEAAQPMMQcCAQABA9gyBwEBAAEDzTIHAgEAAQPZMwcBAQABA84zBwIBAAED2jQGAQEAAQA7NAcBAQABA880BwIBAAED2zUHAQEAAQPQNQcCAQABA902AAIBAAEC0TcAAgEAAQLSNwYBAQABADo4BgEBAAEAOTkGAQEAAQA2OgABAQABA4I6AAIBAAEDgzoABAEAAQOEOgAFAQABA4U6AgUBAAECbjoGAQEAAQAwOwABAQABA448AAEBAAEDjz0AAQEAAQOQPgABAQABA5E/AAEBAAEDkj8CBAEAAQJ0PwcBAQABA/FCAgUBAAECeEMCBQEAAQJ5RAIFAQABAnpFAgQBAAECfEYCBAEAAQJ+RwIEAQABAoBPBwEBAAEEAVAHAgEAAQQCUgoBAQABApVWAAMDAAEDHFcCAQEAAQUEWAABAQABBPtYAgIBAAEFBVoAAQEAAQOTXQABAQABA5R/CgEBAAEDrX8KAgEAAQOuhgABAQABADyGAAIBAAEAPYYKAQEAAQO1hwABAwABAMmHAAIDAAEAU4cABAMAAQE9hwAFAwABAFSHCgIBAAEDsogKAgEAAQOziQoCAQABA7SKAAEBAAEDlYoKAQEAAQO2iwABAQABA5aLCgEBAAEDt4wAAQEAAQOXjAQBAQABAeWNAAEBAAEDmJkAAgEAAQT9mwAFAQABBQGcAAQBAAEFAJ0AAQEAAQURnwABAQABBUO5AQMBAAEDLroBAwEAAQMvvQEBAQABA1C+AQEBAAEDUcABAQEAAQNTwQECAQABA1XDAQIBAAEDVMUBBAEAAQNnxgEFAQABA2jPAQEBAAEDh9ABAQEAAQOI2QEBAQABA9HdAQEBAAED5eQBAQEAAQQT7wEBAQABBM3yAQEBAAEE0PgBAQEAAQUC";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  return v5;
}

+ (id)getStaticCalypsoSettings
{
  v11[4] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v8 = &unk_2843C6C38;
  v9 = &unk_2843C7D80;
  v10[0] = @"calypsoSettings";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[0] = v2;
  v10[1] = @"fileMapping";
  v6 = &unk_2843C6C38;
  v7 = &unk_2843C7F60;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v11[1] = v3;
  v11[2] = &unk_2843C7F88;
  v10[2] = @"idToCityMapping";
  v10[3] = @"aidToCityMapping";
  v11[3] = &unk_2843C7FB0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v4;
}

- (void)queryMA
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    v4 = ATLLogObject(v3);
    if (OUTLINED_FUNCTION_5(v4))
    {
      *v11 = 0;
      OUTLINED_FUNCTION_4(&dword_22EEF5000, v5, v6, "Querying MA", v11);
    }

    v7 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.AppletTranslationLibraryAssets"];
    [v7 setDoNotBlockBeforeFirstUnlock:1];
    OUTLINED_FUNCTION_0_1();
    v9[1] = 3221225472;
    v9[2] = __34__AppletConfigurationData_queryMA__block_invoke;
    v9[3] = &unk_278875130;
    v9[4] = self;
    v10 = v7;
    v8 = v7;
    [v8 queryMetaData:v9];
  }
}

- (void)maybeQueryMetadata
{
  v33 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    timeIntervalSinceNow = [*(self + 16) objectForKey:@"nextMetadataCheck"];
    v3 = timeIntervalSinceNow;
    if (timeIntervalSinceNow)
    {
      timeIntervalSinceNow = [timeIntervalSinceNow timeIntervalSinceNow];
      v5 = v4;
    }

    else
    {
      v5 = -1.0;
    }

    if (v5 <= *(self + 56))
    {
      v6 = v3;
    }

    else
    {
      v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];

      v7 = ATLLogObject([*(self + 16) setObject:v6 forKey:@"nextMetadataCheck"]);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v30 = v5;
        v31 = 2112;
        v32 = *&v6;
        OUTLINED_FUNCTION_6(&dword_22EEF5000, v8, v9, "Clamping ttnc %.0f to interval, next check %@", v10, v11, v12, v13, v23, block, v25, v26, v27, selfCopy);
      }

      v5 = *(self + 56);
    }

    v14 = ATLLogObject(timeIntervalSinceNow);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = *&v6;
      v31 = 2048;
      v32 = v5;
      OUTLINED_FUNCTION_6(&dword_22EEF5000, v15, v16, "nextCheck %@ ttNC %.0f", v17, v18, v19, v20, v23, block, v25, v26, v27, selfCopy);
    }

    if (v5 <= 0.0)
    {
      [(AppletConfigurationData *)self queryMetadata];
    }

    else
    {
      dispatch_time(0, (v5 * 1000000000.0));
      OUTLINED_FUNCTION_2();
      v25 = 3221225472;
      v26 = __45__AppletConfigurationData_maybeQueryMetadata__block_invoke;
      v27 = &unk_278874C98;
      selfCopy = self;
      dispatch_after(v21, v22, &block);
    }
  }
}

- (void)queryMetadata
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    v2 = [*(self + 16) objectForKey:@"catalogDownloadStartedOn"];
    v3 = v2;
    if (v2)
    {
      [v2 timeIntervalSinceNow];
      v6 = fabs(v7);
    }

    else
    {
      v4 = *(self + 16);
      v5 = [MEMORY[0x277CBEAA8] now];
      [v4 setObject:v5 forKey:@"catalogDownloadStartedOn"];

      v6 = 0.0;
    }

    v8 = [(AppletConfigurationData *)self optionsForInterval:v6];
    OUTLINED_FUNCTION_2();
    v11 = 3221225472;
    v12 = __40__AppletConfigurationData_queryMetadata__block_invoke;
    v13 = &unk_2788750E0;
    selfCopy = self;
    [v9 startCatalogDownload:@"com.apple.MobileAsset.AppletTranslationLibraryAssets" options:v8 then:v10];
  }
}

- (id)optionsForInterval:(uint64_t)interval
{
  if (interval)
  {
    v3 = objc_opt_new();
    [v3 setRequiresPowerPluggedIn:a2 < 604800.0];
    [v3 setDiscretionary:a2 < 1209600.0];
    [v3 setAllowsCellularAccess:a2 > 1209600.0];
    [v3 setAllowsExpensiveAccess:a2 > 1814400.0];
    [v3 logOptions];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)retryWithBackoff:(uint64_t)backoff
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (backoff)
  {
    dispatch_assert_queue_V2(*(backoff + 8));
    if (*(backoff + 48) == 1)
    {
      v5 = ATLLogObject(v4);
      if (OUTLINED_FUNCTION_5(v5))
      {
        *buf = 0;
        OUTLINED_FUNCTION_4(&dword_22EEF5000, v6, v7, "Retry is already in progress, dropping error", buf);
      }
    }

    else
    {
      v8 = *(backoff + 40);
      v9 = 7;
      if (v8 < 7)
      {
        v9 = *(backoff + 40);
      }

      v10 = retryWithBackoff__backoffTable[v9];
      *(backoff + 48) = 1;
      *(backoff + 40) = v8 + 1;
      v11 = ATLLogObject(v4);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(backoff + 40);
        *buf = 134218240;
        v18 = v12;
        v19 = 2048;
        v20 = v10;
        _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "ec %lu retry in %lu sec", buf, 0x16u);
      }

      v13 = dispatch_time(0, 1000000000 * v10);
      v14 = *(backoff + 8);
      OUTLINED_FUNCTION_0_1();
      v15[1] = 3221225472;
      v15[2] = __44__AppletConfigurationData_retryWithBackoff___block_invoke;
      v15[3] = &unk_2788751C8;
      v15[4] = backoff;
      v16 = v3;
      dispatch_after(v13, v14, v15);
    }
  }
}

void __46__AppletConfigurationData_tsmScriptPerformed___block_invoke(uint64_t a1)
{
  v3 = ATLLogObject(a1);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v6 = 0;
    OUTLINED_FUNCTION_4(&dword_22EEF5000, v4, v5, "TSM script performed, synchronizing catalog as well", v6);
  }

  [(AppletConfigurationData *)*(a1 + 32) queryMetadata];
}

void __51__AppletConfigurationData_handleQueryResult_query___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AppletConfigurationData *)WeakRetained queryMA];
}

- (uint64_t)isEligibleAsset:(NSObject *)asset
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (asset)
  {
    attributes = [v3 attributes];
    v6 = [attributes objectForKeyedSubscript:@"_CompatibilityVersion"];
    intValue = [v6 intValue];

    if (intValue == 6)
    {
      v9 = [(objc_class *)asset[2].isa objectForKey:@"config"];
      asset = [v9 objectForKeyedSubscript:@"_ContentVersion"];

      attributes2 = [v4 attributes];
      v11 = [attributes2 objectForKeyedSubscript:@"_ContentVersion"];

      if (!asset || (v12 = [asset compare:v11], v12 == -1))
      {
        v13 = MGCopyAnswer();
        attributes3 = [v4 attributes];
        v17 = [attributes3 objectForKeyedSubscript:@"deviceClasses"];

        v18 = [v17 containsObject:v13];
        v14 = v18;
        if ((v18 & 1) == 0)
        {
          v19 = ATLLogObject(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v21 = 138412546;
            *v22 = v17;
            *&v22[8] = 2112;
            assetCopy = v13;
            _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_DEFAULT, "Asset ineligible because device class %@ does not contain %@", &v21, 0x16u);
          }
        }
      }

      else
      {
        v13 = ATLLogObject(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412546;
          *v22 = v11;
          *&v22[8] = 2112;
          assetCopy = asset;
          _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_DEFAULT, "Asset CV %@ <= currentCV %@", &v21, 0x16u);
        }

        v14 = 0;
      }
    }

    else
    {
      v15 = ATLLogObject(v8);
      if (OUTLINED_FUNCTION_5(v15))
      {
        v21 = 67109376;
        *v22 = intValue;
        *&v22[4] = 1024;
        *&v22[6] = 6;
        _os_log_impl(&dword_22EEF5000, asset, OS_LOG_TYPE_DEFAULT, "Asset ineligible, asset compatVersion %d mine %d", &v21, 0xEu);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __46__AppletConfigurationData_handleQuerySuccess___block_invoke_1005(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AppletConfigurationData *)WeakRetained queryMA];
}

- (void)downloadAsset:(uint64_t)asset
{
  v3 = a2;
  if (asset)
  {
    dispatch_assert_queue_V2(*(asset + 8));
    v4 = [*(asset + 16) objectForKey:@"assetDownloadStartedOn"];
    v5 = v4;
    if (v4)
    {
      [v4 timeIntervalSinceNow];
      v8 = fabs(v9);
    }

    else
    {
      v6 = *(asset + 16);
      v7 = [MEMORY[0x277CBEAA8] now];
      [v6 setObject:v7 forKey:@"assetDownloadStartedOn"];

      v8 = 0.0;
    }

    v10 = [(AppletConfigurationData *)asset optionsForInterval:v8];
    OUTLINED_FUNCTION_0_1();
    v11[1] = 3221225472;
    v11[2] = __41__AppletConfigurationData_downloadAsset___block_invoke;
    v11[3] = &unk_278875130;
    v11[4] = asset;
    v12 = v3;
    [v12 startDownload:v10 then:v11];
  }
}

void __40__AppletConfigurationData_queryMetadata__block_invoke_997_cold_1(uint64_t a1, uint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 16) removeObjectForKey:@"catalogDownloadStartedOn"];
  *(*a2 + 40) = 0;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:*(*a2 + 56)];
  [*(*a2 + 16) setObject:v5 forKey:@"nextMetadataCheck"];
  v6 = dispatch_time(0, (*(*a2 + 56) * 1000000000.0));
  v7 = *a2;
  v8 = *(*a2 + 8);
  *a3 = MEMORY[0x277D85DD0];
  a3[1] = 3221225472;
  a3[2] = __40__AppletConfigurationData_queryMetadata__block_invoke_3;
  a3[3] = &unk_278874C98;
  a3[4] = v7;
  dispatch_after(v6, v8, a3);
  v10 = ATLLogObject(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_DEFAULT, "Metadata downloaded success, next check %@", &v11, 0xCu);
  }

  [(AppletConfigurationData *)*a2 queryMA];
}

- (void)handleQueryResult:(NSObject *)a1 query:(uint64_t)a2 .cold.1(NSObject *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&dword_22EEF5000, a1, OS_LOG_TYPE_ERROR, "MA Transient error %ld", &v4, 0xCu);
  }
}

- (void)handleQueryResult:(NSObject *)a1 query:.cold.2(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_22EEF5000, a1, OS_LOG_TYPE_ERROR, "MA Fatal Error not retrying", v2, 2u);
  }
}

- (void)handleQuerySuccess:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_22EEF5000, a1, OS_LOG_TYPE_DEFAULT, "Unknown asset state . . . ", v2, 2u);
  }
}

- (void)handleQuerySuccess:(NSObject *)a1 .cold.2(NSObject **a1, uint64_t a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_3(a1, a2);
  v4[1] = 3221225472;
  v4[2] = __46__AppletConfigurationData_handleQuerySuccess___block_invoke_2;
  v4[3] = &unk_2788751A0;
  v4[4] = v5;
  *(a2 + 40) = v6;
  dispatch_async(v3, a2);
}

uint64_t __51__AppletConfigurationData_handleQueryResult_query___block_invoke_1001_cold_1(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(AppletConfigurationData *)WeakRetained queryMA];

  result = notify_cancel(*(*(*a2 + 8) + 24));
  *(*(*a2 + 8) + 24) = -1;
  return result;
}

- (uint64_t)handleAvailableAsset:(void *)a1 .cold.1(void *a1)
{
  v3 = ATLLogObject(a1);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v7 = 0;
    OUTLINED_FUNCTION_4(&dword_22EEF5000, v4, v5, "Purging ineligible asset", v7);
  }

  return [a1 purge:&__block_literal_global_1013];
}

void __41__AppletConfigurationData_downloadAsset___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3(*(a1 + 32), a2);
  v2[1] = 3221225472;
  v2[2] = __41__AppletConfigurationData_downloadAsset___block_invoke_1011;
  v2[3] = &unk_278874C98;
  v2[4] = v3;
  [(AppletConfigurationData *)v3 retryWithBackoff:v2];
}

@end