@interface WLKConfigurationManager
+ (id)sharedInstance;
- (WLKConfigurationManager)init;
- (id)_config;
- (id)_configurationWithOptions:(int64_t)options cachePolicy:(unint64_t)policy queryParameters:(id)parameters;
- (id)_init;
- (id)_stringForCachePolicy:(unint64_t)policy;
- (id)_utsk;
- (void)_fetchConfigurationWithOptions:(int64_t)options cachePolicy:(unint64_t)policy queryParameters:(id)parameters completion:(id)completion;
- (void)_invalidateCache;
- (void)_invalidateNetworkCache;
- (void)_setConfig:(id)config;
- (void)_setUtsk:(id)utsk;
- (void)fetchConfigurationWithOptions:(int64_t)options cachePolicy:(unint64_t)policy queryParameters:(id)parameters completion:(id)completion;
@end

@implementation WLKConfigurationManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[WLKConfigurationManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __41__WLKConfigurationManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = WLKStartupSignpostLogObject(a1);
  if (os_signpost_enabled(v1))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v1, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Init", &unk_272A8884E, buf, 2u);
  }

  v2 = [[WLKConfigurationManager alloc] _init];
  v3 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v2;

  v5 = WLKStartupSignpostLogObject(v4);
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Init", &unk_272A8884E, v6, 2u);
  }
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = WLKConfigurationManager;
  v2 = [(WLKConfigurationManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_extendedCacheExpireDuration = 0.0;
    v4 = dispatch_get_global_queue(25, 0);
    v5 = dispatch_queue_create_with_target_V2("WLKConfigurationManagerInternalFetch", 0, v4);
    fetchQueue = v3->_fetchQueue;
    v3->_fetchQueue = v5;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleLibraryDidChangeNotification_ name:@"WLKAppLibraryDidChangeNotification" object:0];

    v8 = [[WLKSharedFileStorage alloc] initWithFileName:@"serverConfiguration.plist" class:objc_opt_class()];
    fileCache = v3->_fileCache;
    v3->_fileCache = v8;
  }

  return v3;
}

- (id)_config
{
  os_unfair_lock_lock(&__accessLock);
  v3 = self->_config;
  os_unfair_lock_unlock(&__accessLock);

  return v3;
}

- (WLKConfigurationManager)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKConfigurationManagerInitException" format:@"init is not supported. Use +sharedInstance"];

  return 0;
}

- (void)fetchConfigurationWithOptions:(int64_t)options cachePolicy:(unint64_t)policy queryParameters:(id)parameters completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  completionCopy = completion;
  if (!completionCopy)
  {
    [WLKConfigurationManager fetchConfigurationWithOptions:cachePolicy:queryParameters:completion:];
  }

  v12 = completionCopy;
  _config = [(WLKConfigurationManager *)self _config];
  v14 = _config;
  if (policy > 3)
  {
    if (policy == 4)
    {
      if (_config && ([_config isValidIgnoringExpiration] & 1) != 0)
      {
        goto LABEL_5;
      }
    }

    else if (policy == 5)
    {
      v17 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(WLKConfigurationManager *)self _stringForCachePolicy:5];
        [(WLKConfigurationManager *)self extendedCacheExpireDuration];
        v22 = 138412546;
        v23 = v18;
        v24 = 2048;
        v25 = v19;
        _os_log_impl(&dword_272A0F000, v17, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - PreCheck: cachePolicy=%@, extendedCacheExpireDuration=%f", &v22, 0x16u);
      }

      if (v14)
      {
        [(WLKConfigurationManager *)self extendedCacheExpireDuration];
        if ([v14 isValidWithinExtendedExpiration:?])
        {
          goto LABEL_5;
        }
      }
    }
  }

  else if (policy - 1 >= 2)
  {
    if (!policy && _config && [_config isValid])
    {
      goto LABEL_5;
    }
  }

  else if (_config)
  {
LABEL_5:
    v15 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(WLKConfigurationManager *)self _stringForCachePolicy:policy];
      v22 = 138412290;
      v23 = v16;
      _os_log_impl(&dword_272A0F000, v15, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - PreCheck: Use memory cache immediately, cachePolicy: %@", &v22, 0xCu);
    }

    (v12)[2](v12, v14, 0);
    goto LABEL_24;
  }

  v20 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(WLKConfigurationManager *)self _stringForCachePolicy:policy];
    v22 = 138412290;
    v23 = v21;
    _os_log_impl(&dword_272A0F000, v20, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - PreCheck: Enter fetchQueue to fetch configuration, cachePolicy: %@", &v22, 0xCu);
  }

  [(WLKConfigurationManager *)self _fetchConfigurationWithOptions:options cachePolicy:policy queryParameters:parametersCopy completion:v12];
LABEL_24:
}

- (void)_fetchConfigurationWithOptions:(int64_t)options cachePolicy:(unint64_t)policy queryParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke;
  v22[3] = &unk_279E5E8A8;
  v23 = completionCopy;
  v12 = completionCopy;
  v13 = MEMORY[0x2743D2DF0](v22);
  objc_initWeak(&location, self);
  fetchQueue = self->_fetchQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke_2;
  v17[3] = &unk_279E5F040;
  objc_copyWeak(v20, &location);
  v20[1] = policy;
  v20[2] = options;
  v18 = parametersCopy;
  v19 = v13;
  v17[4] = self;
  v15 = parametersCopy;
  v16 = v13;
  dispatch_async(fetchQueue, v17);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

void __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke_2(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained _config];
  v3 = [v2 utsk];
  v47 = v3;
  v4 = 0;
  v5 = *(a1 + 64);
  v6 = 1;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      goto LABEL_20;
    }

    if (v5 != 4)
    {
      if (v5 != 5)
      {
        goto LABEL_30;
      }

      if (!v2)
      {
        goto LABEL_29;
      }

      [*(a1 + 32) extendedCacheExpireDuration];
      if (([v2 isValidWithinExtendedExpiration:?] & 1) == 0)
      {
        v7 = WLKNetworkingLogObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Memory cache is not valid within extended expiration duration, try to load another one", &buf, 2u);
        }

        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if (v2)
    {
      if (([v2 isValid] & 1) == 0)
      {
        v46 = WLKNetworkingLogObject();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_272A0F000, v46, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Memory cache is no good. If fails to load, use expired.", &buf, 2u);
        }

        v4 = 0;
        v6 = 0;
LABEL_30:
        v13 = WLKStartupSignpostLogObject(v3);
        if (os_signpost_enabled(v13))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_272A0F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync", &unk_272A8884E, &buf, 2u);
        }

        [WLKSettingsCloudUtilities synchronizeSettingsFromCloudIfNeededWithCompletion:&__block_literal_global_31];
        v14 = WLKNetworkingLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [*(a1 + 32) _stringForCachePolicy:*(a1 + 64)];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v15;
          _os_log_impl(&dword_272A0F000, v14, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - fetchConfiguration with cachePolicy: %@", &buf, 0xCu);
        }

        v16 = [*(a1 + 40) mutableCopy];
        if (!v16)
        {
          v16 = [MEMORY[0x277CBEB38] dictionary];
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v62 = 0x3032000000;
        v63 = __Block_byref_object_copy__1;
        v64 = __Block_byref_object_dispose__1;
        v65 = 0;
        v53 = 0;
        v54 = &v53;
        v55 = 0x3032000000;
        v56 = __Block_byref_object_copy__1;
        v57 = __Block_byref_object_dispose__1;
        v58 = 0;
        v17 = dispatch_semaphore_create(0);
        v18 = *(a1 + 64);
        v19 = *(a1 + 72);
        [*(a1 + 32) extendedCacheExpireDuration];
        v21 = v20;
        if (v18 == 1)
        {
          v22 = 2;
        }

        else
        {
          v22 = v4;
        }

        v23 = *(*(a1 + 32) + 24);
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke_34;
        v49[3] = &unk_279E5F018;
        v51 = &v53;
        p_buf = &buf;
        v24 = v17;
        v50 = v24;
        v25 = v16;
        [WLKConfigurationRequest fetchWithOptions:v19 cachePolicy:v22 wlkCachePolicy:v18 extendedCacheExpireDuration:0 sessionConfiguration:v16 queryParameters:v23 fileStorage:v21 completion:v49];
        dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
        if (v2)
        {
          v26 = [v2 isValidIgnoringExpiration];
          v27 = v54;
          if (v26)
          {
            v28 = v6;
            if (v54[5])
            {
              v28 = 1;
            }

            if ((v28 & 1) == 0)
            {
              v29 = WLKNetworkingLogObject();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *v59 = 0;
                _os_log_impl(&dword_272A0F000, v29, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Current init/config is valid and new init/config is nil. Policy allows the use of expired init/config.", v59, 2u);
              }

              (*(*(a1 + 48) + 16))();
LABEL_68:

              _Block_object_dispose(&v53, 8);
              _Block_object_dispose(&buf, 8);

              v12 = 0;
              goto LABEL_69;
            }
          }
        }

        else
        {
          v27 = v54;
        }

        [WeakRetained _setConfig:v27[5]];
        v30 = [v54[5] utsk];
        if (v47 && ([v47 isEqualToString:v30] & 1) == 0)
        {
          v31 = WLKNetworkingLogObject();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *v59 = 0;
            _os_log_impl(&dword_272A0F000, v31, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Posting UTSK didChange notification", v59, 2u);
          }

          v32 = [MEMORY[0x277CCAB98] defaultCenter];
          v33 = [v54[5] responseDictionary];
          [v32 postNotificationName:@"WLKServerConfigurationUTSKDidChangeNotification" object:v33];
        }

        if (v2)
        {
          v34 = [v2 responseDictionary];
          v35 = [v54[5] responseDictionary];
          v36 = [v34 isEqualToDictionary:v35];

          if ((v36 & 1) == 0)
          {
            v37 = WLKNetworkingLogObject();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *v59 = 0;
              _os_log_impl(&dword_272A0F000, v37, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Posting in-process didChange notification", v59, 2u);
            }

            v38 = [MEMORY[0x277CCAB98] defaultCenter];
            v39 = [v54[5] responseDictionary];
            [v38 postNotificationName:@"WLKServerConfigurationDidChangeNotification" object:v39];
          }
        }

        v40 = v54[5];
        v41 = WLKNetworkingLogObject();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = @"success";
          if (!v40)
          {
            v42 = @"failure";
          }

          *v59 = 138412290;
          v60 = v42;
          _os_log_impl(&dword_272A0F000, v41, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Firing completion handler %@", v59, 0xCu);
        }

        if (v40)
        {
          v43 = 0;
        }

        else
        {
          v44 = WLKNetworkingLogObject();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = *(*(&buf + 1) + 40);
            *v59 = 138412290;
            v60 = v45;
            _os_log_impl(&dword_272A0F000, v44, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Error: %@", v59, 0xCu);
          }

          v43 = *(*(&buf + 1) + 40);
        }

        (*(*(a1 + 48) + 16))();

        goto LABEL_68;
      }

      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if (!v5)
  {
    if (v2)
    {
      if ([v2 isValid])
      {
        goto LABEL_25;
      }

      v8 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Memory cache is no good. Load new one then replace the cache later when response comes", &buf, 2u);
      }

LABEL_20:
      v4 = 1;
      goto LABEL_30;
    }

LABEL_29:
    v4 = 0;
    goto LABEL_30;
  }

  if (v5 == 1)
  {
    if (!v2)
    {
      goto LABEL_29;
    }

LABEL_25:
    v9 = v2;
    goto LABEL_26;
  }

  if (v5 != 2)
  {
    goto LABEL_30;
  }

  v3 = v2;
  if (!v3)
  {
    goto LABEL_29;
  }

LABEL_26:
  v10 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) _stringForCachePolicy:*(a1 + 64)];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Memory cache can be used for this policy, return it now, cachePolicy=%@", &buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
  v12 = v2;
LABEL_69:
}

void __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke_28(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke_28_cold_1(v3, v5, v6);
    }
  }

  v7 = WLKStartupSignpostLogObject(v4);
  if (os_signpost_enabled(v7))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync", &unk_272A8884E, v8, 2u);
  }
}

void __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_configurationWithOptions:(int64_t)options cachePolicy:(unint64_t)policy queryParameters:(id)parameters
{
  parametersCopy = parameters;
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v9 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__WLKConfigurationManager__configurationWithOptions_cachePolicy_queryParameters___block_invoke;
  v14[3] = &unk_279E5F068;
  v16 = &v17;
  v10 = v9;
  v15 = v10;
  [(WLKConfigurationManager *)self fetchConfigurationWithOptions:options cachePolicy:policy queryParameters:parametersCopy completion:v14];
  v11 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v10, v11);
  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __81__WLKConfigurationManager__configurationWithOptions_cachePolicy_queryParameters___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6 && !a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_utsk
{
  os_unfair_lock_lock(&__accessLock);
  utsk = [(WLKServerConfigurationResponse *)self->_config utsk];
  v4 = [utsk copy];

  os_unfair_lock_unlock(&__accessLock);

  return v4;
}

- (void)_setUtsk:(id)utsk
{
  v20 = *MEMORY[0x277D85DE8];
  utskCopy = utsk;
  os_unfair_lock_lock(&__accessLock);
  utsk = [(WLKServerConfigurationResponse *)self->_config utsk];
  if (utsk && (v6 = utsk, -[WLKServerConfigurationResponse utsk](self->_config, "utsk"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToString:utskCopy], v7, v6, (v8 & 1) == 0))
  {
    v9 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      utsk2 = [(WLKServerConfigurationResponse *)self->_config utsk];
      v16 = 138412546;
      v17 = utsk2;
      v18 = 2112;
      v19 = utskCopy;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Handling UTSK change: %@ -> %@", &v16, 0x16u);
    }

    v11 = [(WLKServerConfigurationResponse *)self->_config configurationResponseByReplacingUTSK:utskCopy];
    config = self->_config;
    self->_config = v11;
    v13 = v11;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    responseDictionary = [(WLKServerConfigurationResponse *)self->_config responseDictionary];

    [defaultCenter postNotificationName:@"WLKServerConfigurationUTSKDidChangeNotification" object:responseDictionary];
    os_unfair_lock_unlock(&__accessLock);
    [(WLKConfigurationManager *)self _invalidateCache];
  }

  else
  {
    os_unfair_lock_unlock(&__accessLock);
  }
}

- (void)_setConfig:(id)config
{
  configCopy = config;
  os_unfair_lock_lock(&__accessLock);
  objc_storeStrong(&self->_config, config);
  os_unfair_lock_unlock(&__accessLock);
  if (configCopy)
  {
    v5 = +[WLKStoredConfigurationManager sharedInstance];
    [v5 _updateConfiguration:configCopy];
  }
}

- (void)_invalidateCache
{
  v3 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Invalidating cache", v5, 2u);
  }

  os_unfair_lock_lock(&__accessLock);
  config = self->_config;
  self->_config = 0;

  os_unfair_lock_unlock(&__accessLock);
  [(WLKConfigurationManager *)self _invalidateNetworkCache];
}

- (void)_invalidateNetworkCache
{
  v3 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Invalidating URL cache", v4, 2u);
  }

  os_unfair_lock_lock(&__accessLock);
  [(WLKSharedFileStorage *)self->_fileCache delete:&__block_literal_global_43_0];
  os_unfair_lock_unlock(&__accessLock);
}

void __50__WLKConfigurationManager__invalidateNetworkCache__block_invoke(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Invalidating disk cache success: %d Err: %@", v6, 0x12u);
  }
}

- (id)_stringForCachePolicy:(unint64_t)policy
{
  if (policy > 5)
  {
    return @"Unmapped";
  }

  else
  {
    return off_279E5F088[policy];
  }
}

void __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke_28_cold_1(char a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a1 & 1;
  v5 = [a2 description];
  v6[0] = 67109378;
  v6[1] = v4;
  v7 = 2112;
  v8 = v5;
  _os_log_error_impl(&dword_272A0F000, a3, OS_LOG_TYPE_ERROR, "WLKConfigurationManager - fetchConfiguration SettingsSync success: %d error: %@", v6, 0x12u);
}

@end