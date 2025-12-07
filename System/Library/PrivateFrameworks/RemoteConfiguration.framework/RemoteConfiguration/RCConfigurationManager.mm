@interface RCConfigurationManager
- (BOOL)_areAllConfigurationResourcesAvailable:(id)available requestKeys:(id)keys;
- (BOOL)_areAllConfigurationResourcesExpired:(id)expired allowedToReachEndpoint:(BOOL)endpoint configurationSettings:(id)settings requestKeys:(id)keys;
- (BOOL)_areAllConfigurationResourcesInvalid:(id)invalid configurationSettings:(id)settings allowedToReachEndpoint:(BOOL)endpoint requestKeys:(id)keys;
- (BOOL)_isAllowedToReachEndpointWithSettings:(id)settings configurationResource:(id)resource endpointURL:(id)l;
- (BOOL)_isUnexpiredConfigurationResource:(id)resource allowedToReachEndpoint:(BOOL)endpoint useBackgroundRefreshRate:(BOOL)rate;
- (BOOL)_isValidConfigurationResource:(id)resource configurationSettings:(id)settings allowedToReachEndpoint:(BOOL)endpoint cachePolicy:(id)policy;
- (RCConfigurationManager)initWithContentDirectoryURL:(id)l;
- (id)_decodeConfigurationResource:(id)resource;
- (id)_endpointURLForEndpointConfig:(id)config overrideEnvironment:(unint64_t)environment overrideEnabled:(BOOL)enabled;
- (id)_endpointURLForEnvironment:(unint64_t)environment requestKey:(id)key;
- (void)_fetchConfigurationFromFallbackURLWithSettings:(id)settings completion:(id)completion;
- (void)_fetchMultiConfigurationFromEndpointURL:(id)l settings:(id)settings networkActivityBlock:(id)block changeTagsByRequestKey:(id)key completion:(id)completion;
- (void)_loadConfigurationResourcesFromStore;
- (void)_processConfigurationCompletionWithResources:(id)resources configurationSettings:(id)settings processedConfigurationDataByRequestKey:(id *)key processedTreatmentIDs:(id *)ds processedSegmentSetIDs:(id *)iDs error:(id *)error;
- (void)_removeConfigurationResourceForRequestKey:(id)key;
- (void)_saveConfigurationResource:(id)resource;
- (void)cancelAllTasksOnBackgroundSessionWithSettings:(id)settings completion:(id)completion;
- (void)fetchConfigurationWithSettings:(id)settings completionQueue:(id)queue completion:(id)completion;
- (void)fetchMultiConfigurationWithSettings:(id)settings networkActivityBlock:(id)block completionQueue:(id)queue completion:(id)completion;
- (void)fetchSingleConfigurationWithSettings:(id)settings networkActivityBlock:(id)block completionQueue:(id)queue completion:(id)completion;
- (void)reestablishBackgroundSessionWithSettings:(id)settings sessionCompletionHandler:(id)handler;
@end

@implementation RCConfigurationManager

- (void)_loadConfigurationResourcesFromStore
{
  v34 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(RCConfigurationManager *)self setConfigResourceByRequestKey:dictionary];

  localStore = [(RCConfigurationManager *)self localStore];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  allKeys = [localStore allKeys];
  v24 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v24)
  {
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = objc_opt_class();
        v10 = [localStore objectForKey:v8];
        v11 = RCDynamicCast(v9, v10);

        v12 = [(RCConfigurationManager *)self _decodeConfigurationResource:v11];
        v13 = v12;
        if (v12)
        {
          configurationData = [v12 configurationData];
          v15 = configurationData;
          if (configurationData && (configurationData = [configurationData length]) != 0)
          {
            v16 = v6;
            v17 = localStore;
            v18 = allKeys;
            configResourceByRequestKey = [(RCConfigurationManager *)self configResourceByRequestKey];
            requestKey = [v13 requestKey];
            [configResourceByRequestKey setObject:v13 forKeyedSubscript:requestKey];

            v22 = RCSharedLog(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v15 length];
              *buf = 138543618;
              v30 = v13;
              v31 = 2048;
              v32 = v23;
              _os_log_impl(&dword_2179FC000, v22, OS_LOG_TYPE_DEFAULT, "loaded configuration resource: %{public}@ size: %lu", buf, 0x16u);
            }

            allKeys = v18;
            localStore = v17;
            v6 = v16;
          }

          else
          {
            v22 = RCSharedLog(configurationData);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v30 = v13;
              _os_log_error_impl(&dword_2179FC000, v22, OS_LOG_TYPE_ERROR, "missing data when loading configuration resource: %{public}@", buf, 0xCu);
            }
          }
        }

        ++v7;
      }

      while (v24 != v7);
      v24 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v24);
  }
}

- (RCConfigurationManager)initWithContentDirectoryURL:(id)l
{
  lCopy = l;
  v23.receiver = self;
  v23.super_class = RCConfigurationManager;
  v6 = [(RCConfigurationManager *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentDirectoryURL, l);
    v8 = [[RCAsyncSerialQueue alloc] initWithQualityOfService:25];
    configRequestSerialQueue = v7->_configRequestSerialQueue;
    v7->_configRequestSerialQueue = v8;

    v10 = [RCKeyValueStore alloc];
    relativePath = [lCopy relativePath];
    v12 = [(RCKeyValueStore *)v10 initWithName:@"remote-configuration" directory:relativePath version:3 options:0];
    localStore = v7->_localStore;
    v7->_localStore = v12;

    array = [MEMORY[0x277CBEB18] array];
    runningOperations = v7->_runningOperations;
    v7->_runningOperations = array;

    v16 = objc_alloc_init(RCUnfairLock);
    runningOperationsLock = v7->_runningOperationsLock;
    v7->_runningOperationsLock = v16;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    backgroundURLSessionHandlers = v7->_backgroundURLSessionHandlers;
    v7->_backgroundURLSessionHandlers = dictionary;

    v20 = objc_alloc_init(RCUnfairLock);
    backgroundURLSessionHandlersLock = v7->_backgroundURLSessionHandlersLock;
    v7->_backgroundURLSessionHandlersLock = v20;

    [(RCConfigurationManager *)v7 _loadConfigurationResourcesFromStore];
  }

  return v7;
}

- (void)fetchSingleConfigurationWithSettings:(id)settings networkActivityBlock:(id)block completionQueue:(id)queue completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__RCConfigurationManager_fetchSingleConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke;
  v14[3] = &unk_27822F480;
  v15 = settingsCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = settingsCopy;
  [(RCConfigurationManager *)self fetchMultiConfigurationWithSettings:v13 networkActivityBlock:block completionQueue:queue completion:v14];
}

void __111__RCConfigurationManager_fetchSingleConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(a1 + 32);
  v12 = a2;
  v13 = [v11 requestInfos];
  v14 = [v13 firstObject];

  v15 = [v14 requestCacheKey];
  v16 = [v12 objectForKeyedSubscript:v15];

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v16, v18, v9, v10);
  }
}

- (void)fetchConfigurationWithSettings:(id)settings completionQueue:(id)queue completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__RCConfigurationManager_fetchConfigurationWithSettings_completionQueue_completion___block_invoke;
  v12[3] = &unk_27822F480;
  v13 = settingsCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = settingsCopy;
  [(RCConfigurationManager *)self fetchMultiConfigurationWithSettings:v11 completionQueue:queue completion:v12];
}

void __84__RCConfigurationManager_fetchConfigurationWithSettings_completionQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v20 = a5;
  v9 = *(a1 + 32);
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = [v9 requestInfos];
  v14 = [v13 firstObject];

  v15 = [v14 requestCacheKey];
  v16 = [v12 objectForKeyedSubscript:v15];

  v17 = [v11 rc_arrayByTransformingWithBlock:&__block_literal_global_0];

  v18 = [v10 rc_arrayByTransformingWithBlock:&__block_literal_global_83];

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, v16, v17, v18, v20);
  }
}

- (void)fetchMultiConfigurationWithSettings:(id)settings networkActivityBlock:(id)block completionQueue:(id)queue completion:(id)completion
{
  v120 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  blockCopy = block;
  queueCopy = queue;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke;
  aBlock[3] = &unk_27822F518;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  requestInfos = [settingsCopy requestInfos];
  v14 = [requestInfos rc_arrayByTransformingWithBlock:&__block_literal_global_91];

  configResourceByRequestKey = [(RCConfigurationManager *)self configResourceByRequestKey];
  v16 = [configResourceByRequestKey rc_subdictionaryForKeys:v14];

  v17 = [v16 rc_dictionaryByTransformingValuesWithKeyAndValueBlock:&__block_literal_global_94];
  v81 = v14;
  [v14 firstObject];
  v80 = v84 = v16;
  v82 = [v16 objectForKeyedSubscript:?];
  requestInfos2 = [settingsCopy requestInfos];
  LODWORD(v14) = [requestInfos2 rc_containsObjectPassingTest:&__block_literal_global_97];

  requestInfos3 = [settingsCopy requestInfos];
  v20 = [requestInfos3 rc_containsObjectPassingTest:&__block_literal_global_99];

  v76 = queueCopy;
  if (v14)
  {
    configResourceByRequestKey2 = [(RCConfigurationManager *)self configResourceByRequestKey];
    endpointURLString = [configResourceByRequestKey2 objectForKeyedSubscript:@"appConfigRequest"];

    userSegmentationConfiguration = [endpointURLString userSegmentationConfiguration];
    widgetEndpointURLString = [userSegmentationConfiguration widgetEndpointURLString];

    if (!-[__CFString length](widgetEndpointURLString, "length") || ([MEMORY[0x277CBEBC0] URLWithString:widgetEndpointURLString], (rc_endpointURLNotAvailableError = objc_claimAutoreleasedReturnValue()) == 0))
    {
      debugOverrides = [settingsCopy debugOverrides];
      debugEnvironment = [debugOverrides debugEnvironment];
      v27 = RCRequestWidgetConfigurationKey;
LABEL_15:
      v39 = *v27;
      selfCopy2 = self;
LABEL_16:
      rc_endpointURLNotAvailableError = [(RCConfigurationManager *)selfCopy2 _endpointURLForEnvironment:debugEnvironment requestKey:v39];
      v30 = v84;

      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if (v20)
  {
    configResourceByRequestKey3 = [(RCConfigurationManager *)self configResourceByRequestKey];
    endpointURLString = [configResourceByRequestKey3 objectForKeyedSubscript:@"appConfigRequest"];

    userSegmentationConfiguration2 = [endpointURLString userSegmentationConfiguration];
    widgetEndpointURLString = [userSegmentationConfiguration2 todayEndpointURLString];

    if (!-[__CFString length](widgetEndpointURLString, "length") || ([MEMORY[0x277CBEBC0] URLWithString:widgetEndpointURLString], (rc_endpointURLNotAvailableError = objc_claimAutoreleasedReturnValue()) == 0))
    {
      debugOverrides = [settingsCopy debugOverrides];
      debugEnvironment = [debugOverrides debugEnvironment];
      v27 = RCRequestTodayConfigurationKey;
      goto LABEL_15;
    }

LABEL_8:
    v30 = v84;
LABEL_17:

LABEL_18:
LABEL_19:
    v41 = [v30 objectForKeyedSubscript:{v80, v17}];
    treatmentIDs = [v41 treatmentIDs];

    v42 = [v30 objectForKeyedSubscript:v80];
    segmentSetIDs = [v42 segmentSetIDs];

    v43 = [(RCConfigurationManager *)self _isAllowedToReachEndpointWithSettings:settingsCopy configurationResource:v82 endpointURL:rc_endpointURLNotAvailableError];
    v44 = [MEMORY[0x277CBEB98] setWithArray:v81];
    requestInfos4 = [settingsCopy requestInfos];
    v46 = [requestInfos4 rc_containsObjectPassingTest:&__block_literal_global_104];

    if (!v43)
    {
      requestInfos5 = [settingsCopy requestInfos];
      v48 = [requestInfos5 rc_arrayByTransformingWithBlock:&__block_literal_global_107];

      v49 = [MEMORY[0x277CBEB98] setWithArray:v48];

      v30 = v84;
      v44 = v49;
    }

    if (v46)
    {
      v50 = [(RCConfigurationManager *)self _areAllConfigurationResourcesAvailable:v30 requestKeys:v44];
      v51 = v44;
      v52 = [(RCConfigurationManager *)self _areAllConfigurationResourcesInvalid:v30 configurationSettings:settingsCopy allowedToReachEndpoint:v43 requestKeys:v44];
      v53 = v52;
      v54 = RCSharedLog(v52);
      v55 = v54;
      if (!v50 || (v53 & 1) != 0)
      {
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          [RCConfigurationManager fetchMultiConfigurationWithSettings:v81 networkActivityBlock:? completionQueue:? completion:?];
        }

        rc_notCachedError = [MEMORY[0x277CCA9B8] rc_notCachedError];
        v38 = completionCopy;
        v37 = v76;
        v17 = v74;
        v61 = segmentSetIDs;
        if (v76)
        {
          if (completionCopy)
          {
            v102[0] = MEMORY[0x277D85DD0];
            v102[1] = 3221225472;
            v102[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_109;
            v102[3] = &unk_27822F350;
            v104 = completionCopy;
            v103 = rc_notCachedError;
            dispatch_async(v76, v102);
          }
        }

        else if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 0, 0, 0, rc_notCachedError);
        }

        v60 = treatmentIDs;
        goto LABEL_61;
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        allKeys = [v84 allKeys];
        rc_description = [allKeys rc_description];
        rc_description2 = [treatmentIDs rc_description];
        rc_description3 = [segmentSetIDs rc_description];
        *buf = 138543874;
        v115 = rc_description;
        v116 = 2114;
        v117 = rc_description2;
        v118 = 2114;
        v119 = rc_description3;
        _os_log_impl(&dword_2179FC000, v55, OS_LOG_TYPE_DEFAULT, "cache-only policy: returning cached configuration for requestKeys: %{public}@ treatmentIDs: %{public}@ segmentSetIDs: %{public}@", buf, 0x20u);
      }

      v37 = v76;
      if (!v76)
      {
        v17 = v74;
        v38 = completionCopy;
        v61 = segmentSetIDs;
        v60 = treatmentIDs;
        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, v74, treatmentIDs, segmentSetIDs, 0);
        }

        goto LABEL_61;
      }

      v17 = v74;
      v38 = completionCopy;
      v61 = segmentSetIDs;
      v60 = treatmentIDs;
      if (!completionCopy)
      {
LABEL_61:

        goto LABEL_62;
      }

      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_108;
      v105[3] = &unk_27822F5A0;
      v109 = completionCopy;
      v106 = v74;
      v107 = treatmentIDs;
      v108 = segmentSetIDs;
      dispatch_async(v76, v105);

      v62 = v109;
LABEL_56:

      goto LABEL_61;
    }

    debugOverrides2 = [settingsCopy debugOverrides];
    if (([debugOverrides2 ignoreCache] & 1) != 0 || !-[RCConfigurationManager _areAllConfigurationResourcesAvailable:requestKeys:](self, "_areAllConfigurationResourcesAvailable:requestKeys:", v30, v44) || -[RCConfigurationManager _areAllConfigurationResourcesInvalid:configurationSettings:allowedToReachEndpoint:requestKeys:](self, "_areAllConfigurationResourcesInvalid:configurationSettings:allowedToReachEndpoint:requestKeys:", v30, settingsCopy, v43, v44))
    {
      v51 = v44;

      v17 = v74;
    }

    else
    {
      v51 = v44;
      v71 = [(RCConfigurationManager *)self _areAllConfigurationResourcesExpired:v30 allowedToReachEndpoint:v43 configurationSettings:settingsCopy requestKeys:v44];

      v17 = v74;
      if (!v71)
      {
        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v95[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_110;
        v95[3] = &unk_27822F5C8;
        v96 = v30;
        v60 = treatmentIDs;
        v97 = treatmentIDs;
        v61 = segmentSetIDs;
        v98 = segmentSetIDs;
        v37 = v76;
        v99 = v76;
        v38 = completionCopy;
        v101 = completionCopy;
        v100 = v74;
        __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_110(v95);

        v62 = v96;
        goto LABEL_56;
      }
    }

    v65 = RCSharedLog(v64);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2179FC000, v65, OS_LOG_TYPE_DEFAULT, "configuration request(s) not available in the cache or expired, starting fetch", buf, 2u);
    }

    if (!v43)
    {
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_112;
      v90[3] = &unk_27822F5F0;
      v93 = v12;
      v91 = settingsCopy;
      v37 = v76;
      v92 = v76;
      v38 = completionCopy;
      v94 = completionCopy;
      __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_112(v90);

LABEL_60:
      v61 = segmentSetIDs;
      v60 = treatmentIDs;
      goto LABEL_61;
    }

    debugOverrides3 = [settingsCopy debugOverrides];
    v38 = completionCopy;
    v37 = v76;
    if ([debugOverrides3 ignoreCache])
    {
    }

    else
    {
      v68 = [(RCConfigurationManager *)self _areAllConfigurationResourcesInvalid:v84 configurationSettings:settingsCopy allowedToReachEndpoint:1 requestKeys:v51];

      if (!v68)
      {
        v69 = [v84 rc_dictionaryByTransformingValuesWithKeyAndValueBlock:&__block_literal_global_116];
        goto LABEL_59;
      }
    }

    v69 = 0;
LABEL_59:
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_118;
    v85[3] = &unk_27822F660;
    v86 = v76;
    v88 = completionCopy;
    v87 = settingsCopy;
    v89 = v12;
    [(RCConfigurationManager *)self _fetchMultiConfigurationFromEndpointURL:rc_endpointURLNotAvailableError settings:v87 networkActivityBlock:blockCopy changeTagsByRequestKey:v69 completion:v85];

    goto LABEL_60;
  }

  endpointConfig = [settingsCopy endpointConfig];

  if (!endpointConfig)
  {
    userSegmentationConfiguration3 = [v82 userSegmentationConfiguration];
    endpointURLString = [userSegmentationConfiguration3 endpointURLString];

    if ([endpointURLString length])
    {
      rc_endpointURLNotAvailableError = [MEMORY[0x277CBEBC0] URLWithString:endpointURLString];
      if (rc_endpointURLNotAvailableError)
      {
        v30 = v84;
        goto LABEL_18;
      }
    }

    requestInfos6 = [settingsCopy requestInfos];
    firstObject = [requestInfos6 firstObject];
    widgetEndpointURLString = [firstObject requestKey];

    debugOverrides = [settingsCopy debugOverrides];
    debugEnvironment = [debugOverrides debugEnvironment];
    selfCopy2 = self;
    v39 = widgetEndpointURLString;
    goto LABEL_16;
  }

  endpointConfig2 = [settingsCopy endpointConfig];
  debugOverrides4 = [settingsCopy debugOverrides];
  debugEnvironment2 = [debugOverrides4 debugEnvironment];
  debugOverrides5 = [settingsCopy debugOverrides];
  v36 = [(RCConfigurationManager *)self _endpointURLForEndpointConfig:endpointConfig2 overrideEnvironment:debugEnvironment2 overrideEnabled:debugOverrides5 != 0];

  v30 = v84;
  rc_endpointURLNotAvailableError = v36;
  if (v36)
  {
    goto LABEL_19;
  }

  rc_endpointURLNotAvailableError = [MEMORY[0x277CCA9B8] rc_endpointURLNotAvailableError];
  v37 = v76;
  if (v76)
  {
    v38 = completionCopy;
    if (completionCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_6;
      block[3] = &unk_27822F350;
      v112 = completionCopy;
      rc_endpointURLNotAvailableError = rc_endpointURLNotAvailableError;
      v111 = rc_endpointURLNotAvailableError;
      dispatch_async(v76, block);
    }
  }

  else
  {
    v38 = completionCopy;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, rc_endpointURLNotAvailableError);
    }
  }

LABEL_62:
}

void __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2;
  v12[3] = &unk_27822F4F0;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [v9 _fetchConfigurationFromFallbackURLWithSettings:a2 completion:v12];
}

void __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = RCSharedLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_cold_1();
    }
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v10)
  {
    if (v9)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_84;
      block[3] = &unk_27822F4C8;
      v14 = v9;
      v12 = v5;
      v13 = v7;
      dispatch_async(v10, block);
    }
  }

  else if (v9)
  {
    (v9)[2](v9, v5, 0, 0, v7);
  }
}

uint64_t __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 requestKey];
  v3 = [v2 isEqualToString:@"widgetConfigRequest"];

  return v3;
}

uint64_t __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 requestKey];
  v3 = [v2 isEqualToString:@"todayConfigRequest"];

  return v3;
}

BOOL __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 cachePolicy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[RCCachePolicy defaultCachePolicy];
  }

  v5 = v4;

  v6 = [v5 requestCachePolicy] == 2;
  return v6;
}

id __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 fallbackURL];
  if (v3)
  {
    v4 = [v2 requestCacheKey];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_110(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = RCSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) allKeys];
    v4 = [v3 rc_description];
    v5 = [*(a1 + 40) rc_description];
    v6 = [*(a1 + 48) rc_description];
    *buf = 138543874;
    v15 = v4;
    v16 = 2114;
    v17 = v5;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_2179FC000, v2, OS_LOG_TYPE_DEFAULT, "returning the cached configuration for requestKeys: %{public}@ treatmentIDs: %{public}@ segmentSetIDs: %{public}@", buf, 0x20u);
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  if (v7)
  {
    if (v8)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_111;
      v9[3] = &unk_27822F5A0;
      v13 = v8;
      v10 = *(a1 + 64);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      dispatch_async(v7, v9);
    }
  }

  else if (v8)
  {
    v8[2](v8, *(a1 + 64), *(a1 + 40), *(a1 + 48), 0);
  }
}

uint64_t __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_112(uint64_t a1)
{
  v2 = RCSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2179FC000, v2, OS_LOG_TYPE_DEFAULT, "not allowed to reach the endpoint at this time, using the fallbackURL", v4, 2u);
  }

  return (*(*(a1 + 48) + 16))();
}

RCChangeTag *__110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_113(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 configurationID];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v3 contentHash];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v3 lastModifiedString];
  if (v8)
  {
    v9 = [v3 gzippedConfigurationData];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [RCChangeTag alloc];
      v5 = [v3 configurationID];
      v7 = [v3 contentHash];
      v12 = [v3 lastModifiedString];
      v8 = [(RCChangeTag *)v11 initWithIdentifier:v5 contentHash:v7 lastModifiedString:v12];

      goto LABEL_6;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_10;
  }

LABEL_6:

LABEL_9:
LABEL_10:

  return v8;
}

void __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_118(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v12)
  {
    v14 = RCSharedLog(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_118_cold_1();
    }
  }

  if (v9)
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    if (v15)
    {
      if (v16)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_119;
        block[3] = &unk_27822F638;
        v33 = v16;
        v29 = v9;
        v30 = v10;
        v31 = v11;
        v32 = v13;
        dispatch_async(v15, block);

        v17 = v33;
LABEL_13:

        goto LABEL_20;
      }

      goto LABEL_20;
    }

    if (!v16)
    {
      goto LABEL_20;
    }

    v22 = v16[2];
LABEL_19:
    v22();
    goto LABEL_20;
  }

  v18 = [*(a1 + 40) debugOverrides];
  v19 = [v18 configurationSource];

  if (v19 != 1)
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_20;
  }

  v20 = *(a1 + 32);
  v21 = *(a1 + 48);
  if (!v20)
  {
    if (!v21)
    {
      goto LABEL_20;
    }

    v22 = v21[2];
    goto LABEL_19;
  }

  if (v21)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __110__RCConfigurationManager_fetchMultiConfigurationWithSettings_networkActivityBlock_completionQueue_completion___block_invoke_2_120;
    v23[3] = &unk_27822F5A0;
    v27 = v21;
    v24 = v10;
    v25 = v11;
    v26 = v13;
    dispatch_async(v20, v23);

    v17 = v27;
    goto LABEL_13;
  }

LABEL_20:
}

- (void)reestablishBackgroundSessionWithSettings:(id)settings sessionCompletionHandler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  backgroundFetchConfiguration = [settingsCopy backgroundFetchConfiguration];

  if (!backgroundFetchConfiguration && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationManager reestablishBackgroundSessionWithSettings:sessionCompletionHandler:];
  }

  backgroundFetchConfiguration2 = [settingsCopy backgroundFetchConfiguration];
  sessionIdentifier = [backgroundFetchConfiguration2 sessionIdentifier];

  backgroundURLSessionHandlersLock = [(RCConfigurationManager *)self backgroundURLSessionHandlersLock];
  [backgroundURLSessionHandlersLock lock];

  backgroundURLSessionHandlers = [(RCConfigurationManager *)self backgroundURLSessionHandlers];
  v13 = [backgroundURLSessionHandlers objectForKeyedSubscript:sessionIdentifier];

  if (!v13)
  {
    v13 = objc_alloc_init(RCBackgroundURLSessionHandler);
    backgroundURLSessionHandlers2 = [(RCConfigurationManager *)self backgroundURLSessionHandlers];
    [backgroundURLSessionHandlers2 setObject:v13 forKeyedSubscript:sessionIdentifier];
  }

  backgroundURLSessionHandlersLock2 = [(RCConfigurationManager *)self backgroundURLSessionHandlersLock];
  [backgroundURLSessionHandlersLock2 unlock];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__RCConfigurationManager_reestablishBackgroundSessionWithSettings_sessionCompletionHandler___block_invoke;
  v19[3] = &unk_27822F688;
  v19[4] = self;
  v20 = settingsCopy;
  v21 = sessionIdentifier;
  v22 = handlerCopy;
  v16 = sessionIdentifier;
  v17 = handlerCopy;
  v18 = settingsCopy;
  [(RCBackgroundURLSessionHandler *)v13 reestablishBackgroundSessionWithConfigurationSettings:v18 sessionCompletionHandler:v19];
}

void __92__RCConfigurationManager_reestablishBackgroundSessionWithSettings_sessionCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v26 = *v32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = v4;
        if (*v32 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = *(a1 + 32);
        v11 = [v9 configurationResourcesByRequestKey];
        v12 = *(a1 + 40);
        v29 = 0;
        v30 = 0;
        v27 = 0;
        v28 = 0;
        [v10 _processConfigurationCompletionWithResources:v11 configurationSettings:v12 processedConfigurationDataByRequestKey:&v30 processedTreatmentIDs:&v29 processedSegmentSetIDs:&v28 error:&v27];
        v13 = v30;
        v14 = v29;
        v15 = v28;
        v16 = v27;

        v17 = [RCConfigurationFetchResult alloc];
        v18 = [v9 taskIdentifier];
        v19 = [(RCConfigurationFetchResult *)v17 initWithTaskIdentifier:v18 configurationDataByRequestKey:v13 treatmentIDs:v14 segmentSetIDs:v15 error:v16];

        v4 = v8;
        [v8 addObject:v19];
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v6);
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    v21 = [v4 copy];
    (*(v20 + 16))(v20, v21);
  }

  v22 = [*(a1 + 32) backgroundURLSessionHandlersLock];
  [v22 lock];

  v23 = [*(a1 + 32) backgroundURLSessionHandlers];
  [v23 setObject:0 forKeyedSubscript:*(a1 + 48)];

  v24 = [*(a1 + 32) backgroundURLSessionHandlersLock];
  [v24 unlock];
}

- (void)cancelAllTasksOnBackgroundSessionWithSettings:(id)settings completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  backgroundFetchConfiguration = [settingsCopy backgroundFetchConfiguration];

  if (!backgroundFetchConfiguration && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationManager cancelAllTasksOnBackgroundSessionWithSettings:completion:];
  }

  backgroundFetchConfiguration2 = [settingsCopy backgroundFetchConfiguration];
  [RCURLSession cancelAllTasksOnBackgroundSessionWithFetchConfig:backgroundFetchConfiguration2 completion:completionCopy];
}

- (void)_processConfigurationCompletionWithResources:(id)resources configurationSettings:(id)settings processedConfigurationDataByRequestKey:(id *)key processedTreatmentIDs:(id *)ds processedSegmentSetIDs:(id *)iDs error:(id *)error
{
  v80 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  settingsCopy = settings;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v51 = settingsCopy;
  obj = [settingsCopy requestInfos];
  v63 = [obj countByEnumeratingWithState:&v67 objects:v79 count:16];
  segmentSetIDs3 = 0;
  if (!v63)
  {
    v66 = 0;
    goto LABEL_33;
  }

  v66 = 0;
  v59 = *v68;
  *&v13 = 138544130;
  v50 = v13;
  keyCopy = key;
  dsCopy = ds;
  keyCopy2 = key;
  v60 = dictionary;
  do
  {
    v16 = 0;
    do
    {
      v65 = segmentSetIDs3;
      if (*v68 != v59)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v67 + 1) + 8 * v16);
      requestCacheKey = [v17 requestCacheKey];
      v19 = [resourcesCopy objectForKeyedSubscript:requestCacheKey];

      configResourceByRequestKey = [(RCConfigurationManager *)self configResourceByRequestKey];
      requestCacheKey2 = [v17 requestCacheKey];
      v22 = [configResourceByRequestKey objectForKeyedSubscript:requestCacheKey2];

      if (!v22)
      {
        contentHash = RCSharedLog(v23);
        if (os_log_type_enabled(contentHash, OS_LOG_TYPE_DEFAULT))
        {
          requestKey = [v17 requestKey];
          *buf = 138543362;
          v72 = requestKey;
          _os_log_impl(&dword_2179FC000, contentHash, OS_LOG_TYPE_DEFAULT, "cached configuration not available for requestKey: %{public}@, skip updating last fetch date, treatmentIDs and segmentSetIDs", buf, 0xCu);
LABEL_14:
        }

        goto LABEL_16;
      }

      contentHash = [v22 contentHash];
      requestKey = [v19 contentHash];
      if (([contentHash isEqualToString:requestKey]& 1) == 0)
      {
        goto LABEL_14;
      }

      userID = [v22 userID];
      userID2 = [v19 userID];
      if (![userID isEqualToString:userID2])
      {

        ds = dsCopy;
        goto LABEL_16;
      }

      v53 = v17;
      storefrontID = [v22 storefrontID];
      storefrontID2 = [v19 storefrontID];
      if (![storefrontID isEqualToString:storefrontID2])
      {

        ds = dsCopy;
        dictionary = v60;
        v17 = v53;
        goto LABEL_17;
      }

      debugOverrides = [v51 debugOverrides];
      ignoreCache = [debugOverrides ignoreCache];

      v17 = v53;
      if ((ignoreCache & 1) == 0)
      {
        v40 = RCSharedLog(v31);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          requestKey2 = [v53 requestKey];
          treatmentIDs = [v19 treatmentIDs];
          rc_description = [treatmentIDs rc_description];
          segmentSetIDs = [v19 segmentSetIDs];
          rc_description2 = [segmentSetIDs rc_description];
          contentHash2 = [v22 contentHash];
          *buf = v50;
          v72 = requestKey2;
          v73 = 2114;
          v74 = rc_description;
          v75 = 2114;
          v76 = rc_description2;
          v77 = 2114;
          v78 = contentHash2;
          _os_log_impl(&dword_2179FC000, v40, OS_LOG_TYPE_DEFAULT, "matched contentHash, returning cached configuration for requestKey: %{public}@ treatmentIDs: %{public}@ segmentSetIDs: %{public}@ contentHash: %{public}@", buf, 0x2Au);
        }

        date = [MEMORY[0x277CBEAA8] date];
        [v22 setLastFetchedDate:date];

        treatmentIDs2 = [v19 treatmentIDs];
        [v22 setTreatmentIDs:treatmentIDs2];

        segmentSetIDs2 = [v19 segmentSetIDs];
        [v22 setSegmentSetIDs:segmentSetIDs2];

        contentHash = v19;
        v19 = v22;
        ds = dsCopy;
        keyCopy = keyCopy2;
LABEL_16:
        dictionary = v60;
LABEL_17:

        goto LABEL_18;
      }

      ds = dsCopy;
      keyCopy = keyCopy2;
      dictionary = v60;
LABEL_18:
      configurationData = [v19 configurationData];
      v33 = configurationData;
      if (configurationData && (configurationData = [configurationData length]) != 0)
      {
        [(RCConfigurationManager *)self _saveConfigurationResource:v19];
        requestCacheKey3 = [v17 requestCacheKey];
        [dictionary setObject:v33 forKeyedSubscript:requestCacheKey3];

        treatmentIDs3 = [v19 treatmentIDs];

        segmentSetIDs3 = [v19 segmentSetIDs];

        v36 = keyCopy2;
      }

      else
      {
        v37 = RCSharedLog(configurationData);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v72 = v19;
          _os_log_error_impl(&dword_2179FC000, v37, OS_LOG_TYPE_ERROR, "endpoint: missing data in configuration resource %{public}@", buf, 0xCu);
        }

        *error = [MEMORY[0x277CCA9B8] rc_notAvailableError];
        segmentSetIDs3 = v65;
        treatmentIDs3 = v66;
        v36 = keyCopy;
      }

      keyCopy = v36;
      *v36 = [dictionary copy];
      v38 = treatmentIDs3;
      v66 = treatmentIDs3;
      *ds = treatmentIDs3;
      v39 = segmentSetIDs3;
      *iDs = segmentSetIDs3;

      ++v16;
    }

    while (v63 != v16);
    v49 = [obj countByEnumeratingWithState:&v67 objects:v79 count:16];
    v63 = v49;
  }

  while (v49);
LABEL_33:
}

- (BOOL)_areAllConfigurationResourcesAvailable:(id)available requestKeys:(id)keys
{
  v5 = MEMORY[0x277CBEB98];
  keysCopy = keys;
  allKeys = [available allKeys];
  v8 = [v5 setWithArray:allKeys];

  LOBYTE(allKeys) = [v8 isEqualToSet:keysCopy];
  return allKeys;
}

- (BOOL)_areAllConfigurationResourcesInvalid:(id)invalid configurationSettings:(id)settings allowedToReachEndpoint:(BOOL)endpoint requestKeys:(id)keys
{
  settingsCopy = settings;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __120__RCConfigurationManager__areAllConfigurationResourcesInvalid_configurationSettings_allowedToReachEndpoint_requestKeys___block_invoke;
  v15[3] = &unk_27822F6B0;
  v16 = settingsCopy;
  selfCopy = self;
  endpointCopy = endpoint;
  v11 = settingsCopy;
  keysCopy = keys;
  v13 = [invalid keysOfEntriesPassingTest:v15];
  LOBYTE(self) = [v13 isEqualToSet:keysCopy];

  return self;
}

uint64_t __120__RCConfigurationManager__areAllConfigurationResourcesInvalid_configurationSettings_allowedToReachEndpoint_requestKeys___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 requestInfoForRequestCacheKey:a2];
  v10 = v9;
  if (v9)
  {
    [v9 cachePolicy];
  }

  else
  {
    +[RCCachePolicy defaultCachePolicy];
  }
  v11 = ;
  v12 = [*(a1 + 40) _isValidConfigurationResource:v8 configurationSettings:*(a1 + 32) allowedToReachEndpoint:*(a1 + 48) cachePolicy:v11];

  *a4 = v12;
  return v12 ^ 1u;
}

- (BOOL)_areAllConfigurationResourcesExpired:(id)expired allowedToReachEndpoint:(BOOL)endpoint configurationSettings:(id)settings requestKeys:(id)keys
{
  settingsCopy = settings;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __120__RCConfigurationManager__areAllConfigurationResourcesExpired_allowedToReachEndpoint_configurationSettings_requestKeys___block_invoke;
  v15[3] = &unk_27822F6B0;
  endpointCopy = endpoint;
  v15[4] = self;
  v16 = settingsCopy;
  v11 = settingsCopy;
  keysCopy = keys;
  v13 = [expired keysOfEntriesPassingTest:v15];
  LOBYTE(self) = [v13 isEqualToSet:keysCopy];

  return self;
}

uint64_t __120__RCConfigurationManager__areAllConfigurationResourcesExpired_allowedToReachEndpoint_configurationSettings_requestKeys___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a3;
  LODWORD(v5) = [v6 _isUnexpiredConfigurationResource:v8 allowedToReachEndpoint:v5 useBackgroundRefreshRate:{objc_msgSend(v7, "useBackgroundRefreshRate")}];

  *a4 = v5;
  return v5 ^ 1;
}

- (BOOL)_isValidConfigurationResource:(id)resource configurationSettings:(id)settings allowedToReachEndpoint:(BOOL)endpoint cachePolicy:(id)policy
{
  v40 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  settingsCopy = settings;
  policyCopy = policy;
  if (!resourceCopy)
  {
    goto LABEL_15;
  }

  v12 = MEMORY[0x277CCACA8];
  userID = [resourceCopy userID];
  userID2 = [settingsCopy userID];
  LOBYTE(v12) = [v12 rc_string:userID isEqualToString:userID2];

  if ((v12 & 1) == 0)
  {
    v25 = RCSharedLog(v15);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    userID3 = [settingsCopy userID];
    v38 = 138543362;
    v39 = userID3;
    v28 = "configuration resource no longer valid because the userID changed: %{public}@";
    goto LABEL_12;
  }

  v16 = MEMORY[0x277CCACA8];
  storefrontID = [resourceCopy storefrontID];
  storefrontID2 = [settingsCopy storefrontID];
  LOBYTE(v16) = [v16 rc_string:storefrontID isEqualToString:storefrontID2];

  if ((v16 & 1) == 0)
  {
    v25 = RCSharedLog(v19);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    userID3 = [settingsCopy storefrontID];
    v38 = 138543362;
    v39 = userID3;
    v28 = "configuration resource no longer valid because the storefrontID changed: %{public}@";
LABEL_12:
    _os_log_impl(&dword_2179FC000, v25, OS_LOG_TYPE_DEFAULT, v28, &v38, 0xCu);
LABEL_13:

    goto LABEL_14;
  }

  preferredLanguages = [resourceCopy preferredLanguages];
  deviceInfo = [settingsCopy deviceInfo];
  preferredLanguages2 = [deviceInfo preferredLanguages];
  v23 = [preferredLanguages isEqualToArray:preferredLanguages2];

  if ((v23 & 1) == 0)
  {
    v25 = RCSharedLog(v24);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    userID3 = [settingsCopy deviceInfo];
    preferredLanguages3 = [userID3 preferredLanguages];
    v38 = 138543362;
    v39 = preferredLanguages3;
    _os_log_impl(&dword_2179FC000, v25, OS_LOG_TYPE_DEFAULT, "configuration resource no longer valid because preferredLanguages changed: %{public}@", &v38, 0xCu);

    goto LABEL_13;
  }

  if ([policyCopy requestCachePolicy] != 1)
  {
    if (!endpoint && ![settingsCopy requestMode] || (objc_msgSend(settingsCopy, "endpointConfig"), (v32 = objc_claimAutoreleasedReturnValue()) == 0) || (v33 = v32, v34 = objc_msgSend(resourceCopy, "environment"), objc_msgSend(settingsCopy, "endpointConfig"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "environment"), v35, v33, v34 == v36))
    {
      v29 = 1;
      goto LABEL_16;
    }

    v25 = RCSharedLog(v37);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v38 = 138543362;
    v39 = resourceCopy;
    v26 = "configuration resource not valid due to mismatched environments: %{public}@";
    goto LABEL_26;
  }

  v25 = RCSharedLog(1);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 138543362;
    v39 = resourceCopy;
    v26 = "configuration resource not valid due to ignore cache policy: %{public}@";
LABEL_26:
    _os_log_impl(&dword_2179FC000, v25, OS_LOG_TYPE_DEFAULT, v26, &v38, 0xCu);
  }

LABEL_14:

LABEL_15:
  v29 = 0;
LABEL_16:

  return v29;
}

- (BOOL)_isUnexpiredConfigurationResource:(id)resource allowedToReachEndpoint:(BOOL)endpoint useBackgroundRefreshRate:(BOOL)rate
{
  rateCopy = rate;
  endpointCopy = endpoint;
  v27 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  v8 = resourceCopy;
  if (resourceCopy)
  {
    userSegmentationConfiguration = [resourceCopy userSegmentationConfiguration];
    v10 = userSegmentationConfiguration;
    if (rateCopy)
    {
      backgroundRefreshRate = [userSegmentationConfiguration backgroundRefreshRate];
      v12 = &RCUserSegmentationConfigurationDefaultBackgroundRefreshRate;
    }

    else
    {
      backgroundRefreshRate = [userSegmentationConfiguration foregroundRefreshRate];
      v12 = &RCUserSegmentationConfigurationDefaultForegroundRefreshRate;
    }

    v14 = *v12;
    if (backgroundRefreshRate)
    {
      v15 = backgroundRefreshRate;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v8 isExpiredWithMaxTTL:endpointCopy allowedToReachEndpoint:v15];
    v13 = v16 ^ 1;
    v17 = RCSharedLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138544130;
      v20 = v8;
      v21 = 2048;
      v22 = v15;
      v23 = 1024;
      v24 = v13;
      v25 = 1024;
      v26 = rateCopy;
      _os_log_impl(&dword_2179FC000, v17, OS_LOG_TYPE_DEFAULT, "checking if configuration is valid with resource: %{public}@ maxTTL: %lu isUnexpired: %d useBackgroundRefreshRate: %d", &v19, 0x22u);
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)_isAllowedToReachEndpointWithSettings:(id)settings configurationResource:(id)resource endpointURL:(id)l
{
  v41 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  resourceCopy = resource;
  lCopy = l;
  if (lCopy)
  {
    debugOverrides = [settingsCopy debugOverrides];
    configurationSource = [debugOverrides configurationSource];

    if (configurationSource == 1)
    {
      v13 = __98__RCConfigurationManager__isAllowedToReachEndpointWithSettings_configurationResource_endpointURL___block_invoke_2(v12);
LABEL_7:
      v14 = v13;
      goto LABEL_8;
    }

    debugOverrides2 = [settingsCopy debugOverrides];
    configurationSource2 = [debugOverrides2 configurationSource];

    if (configurationSource2 == 2)
    {
      v13 = __98__RCConfigurationManager__isAllowedToReachEndpointWithSettings_configurationResource_endpointURL___block_invoke_138(v17);
      goto LABEL_7;
    }

    if ([settingsCopy requestMode] == 2)
    {
      v19 = RCSharedLog(2);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2179FC000, v19, OS_LOG_TYPE_DEFAULT, "allowed to reach endpoint because request mode is: EndpointOnly", buf, 2u);
      }

      v14 = 1;
    }

    else
    {
      userID = [settingsCopy userID];
      v21 = [userID length];

      if (resourceCopy && v21)
      {
        userID2 = [settingsCopy userID];
        userSegmentationConfiguration = [resourceCopy userSegmentationConfiguration];
        modThreshold = [userSegmentationConfiguration modThreshold];

        userSegmentationConfiguration2 = [resourceCopy userSegmentationConfiguration];
        modMax = [userSegmentationConfiguration2 modMax];

        v27 = [userID2 hash];
        v28 = v27 % modMax;
        v14 = v27 % modMax < modThreshold;
        v29 = RCSharedLog(v27);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [RCConfigurationManager _isAllowedToReachEndpointWithSettings:configurationResource:endpointURL:];
        }

        v31 = RCSharedLog(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          v34 = v28 < modThreshold;
          v35 = 2048;
          v36 = v28;
          v37 = 2048;
          v38 = modMax;
          v39 = 2048;
          v40 = modThreshold;
          _os_log_impl(&dword_2179FC000, v31, OS_LOG_TYPE_DEFAULT, "client allowedToReachEndpoint: %d with moddedHash: %lu modMax: %lu modThreshold: %lu", buf, 0x26u);
        }
      }

      else
      {
        v32 = settingsCopy;
        v14 = ([v32 requestMode] - 1) < 2;
      }
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_8:

  return v14;
}

uint64_t __98__RCConfigurationManager__isAllowedToReachEndpointWithSettings_configurationResource_endpointURL___block_invoke_2(uint64_t a1)
{
  v1 = RCSharedLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2179FC000, v1, OS_LOG_TYPE_DEFAULT, "configuration source override enabled: Endpoint", v3, 2u);
  }

  return 1;
}

uint64_t __98__RCConfigurationManager__isAllowedToReachEndpointWithSettings_configurationResource_endpointURL___block_invoke_138(uint64_t a1)
{
  v1 = RCSharedLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2179FC000, v1, OS_LOG_TYPE_DEFAULT, "configuration source override enabled: CloudKit", v3, 2u);
  }

  return 0;
}

- (void)_fetchMultiConfigurationFromEndpointURL:(id)l settings:(id)settings networkActivityBlock:(id)block changeTagsByRequestKey:(id)key completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  lCopy = l;
  settingsCopy = settings;
  blockCopy = block;
  keyCopy = key;
  completionCopy = completion;
  v17 = RCSharedLog(completionCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v32 = settingsCopy;
    _os_log_impl(&dword_2179FC000, v17, OS_LOG_TYPE_DEFAULT, "enqueuing configuration fetch from endpoint with settings: %{public}@", buf, 0xCu);
  }

  configRequestSerialQueue = [(RCConfigurationManager *)self configRequestSerialQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke;
  v24[3] = &unk_27822F778;
  v25 = settingsCopy;
  v26 = keyCopy;
  v27 = lCopy;
  selfCopy = self;
  v29 = blockCopy;
  v30 = completionCopy;
  v19 = completionCopy;
  v20 = blockCopy;
  v21 = lCopy;
  v22 = keyCopy;
  v23 = settingsCopy;
  [configRequestSerialQueue enqueueBlock:v24];
}

void __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = RCSharedLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v23 = v5;
    _os_log_impl(&dword_2179FC000, v4, OS_LOG_TYPE_DEFAULT, "fetching configuration from endpoint with settings: %{public}@", buf, 0xCu);
  }

  v6 = objc_alloc_init(RCEndpointOperation);
  [(RCOperation *)v6 setQualityOfService:25];
  [(RCOperation *)v6 setRelativePriority:1];
  [(RCEndpointOperation *)v6 setConfigurationSettings:*(a1 + 32)];
  [(RCEndpointOperation *)v6 setChangeTagsByRequestKey:*(a1 + 40)];
  [(RCEndpointOperation *)v6 setEndpointURL:*(a1 + 48)];
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = (*(v7 + 16))();
    [(RCEndpointOperation *)v6 setNetworkActivity:v8];
  }

  objc_initWeak(buf, v6);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_143;
  v20[3] = &unk_27822F700;
  v20[4] = *(a1 + 56);
  v21 = *(a1 + 32);
  [(RCEndpointOperation *)v6 setNetworkEventHandler:v20];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_2;
  v15[3] = &unk_27822F750;
  objc_copyWeak(&v19, buf);
  v17 = *(a1 + 72);
  v9 = v3;
  v10 = *(a1 + 56);
  v18 = v9;
  v15[4] = v10;
  v16 = *(a1 + 32);
  [(RCEndpointOperation *)v6 setConfigurationCompletionHandler:v15];
  v11 = [*(a1 + 56) runningOperationsLock];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_6;
  v13[3] = &unk_27822F130;
  v13[4] = *(a1 + 56);
  v12 = v6;
  v14 = v12;
  [v11 performWithLockSync:v13];

  [(RCOperation *)v12 start];
  objc_destroyWeak(&v19);

  objc_destroyWeak(buf);
}

void __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_143(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) networkEventHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) networkEventHandler];
    (v4)[2](v4, v5, *(a1 + 40), 0);
  }
}

void __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v6)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_3;
    v24[3] = &unk_27822F728;
    v28 = *(a1 + 48);
    v25 = v6;
    v29 = *(a1 + 56);
    v8 = WeakRetained;
    v9 = *(a1 + 32);
    v26 = v8;
    v27 = v9;
    __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_3(v24);

    v10 = v28;
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v22 = 0;
    v23 = 0;
    v20 = 0;
    v21 = 0;
    [v11 _processConfigurationCompletionWithResources:v5 configurationSettings:v12 processedConfigurationDataByRequestKey:&v23 processedTreatmentIDs:&v22 processedSegmentSetIDs:&v21 error:&v20];
    v13 = v23;
    v14 = v22;
    v15 = v21;
    v10 = v20;
    v16 = *(a1 + 48);
    if (v16)
    {
      (*(v16 + 16))(v16, v13, v14, v15, v10);
    }

    (*(*(a1 + 56) + 16))();
    if (WeakRetained)
    {
      v17 = [*(a1 + 32) runningOperationsLock];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_5;
      v18[3] = &unk_27822F130;
      v18[4] = *(a1 + 32);
      v19 = WeakRetained;
      [v17 performWithLockSync:v18];
    }
  }
}

void __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, 0, 0, *(a1 + 32));
  }

  (*(*(a1 + 64) + 16))();
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 48) runningOperationsLock];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_4;
    v6[3] = &unk_27822F130;
    v5 = *(a1 + 40);
    v4 = v5.i64[0];
    v7 = vextq_s8(v5, v5, 8uLL);
    [v3 performWithLockSync:v6];
  }
}

void __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) runningOperations];
  [v2 removeObject:*(a1 + 40)];
}

void __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) runningOperations];
  [v2 removeObject:*(a1 + 40)];
}

void __130__RCConfigurationManager__fetchMultiConfigurationFromEndpointURL_settings_networkActivityBlock_changeTagsByRequestKey_completion___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) runningOperations];
  [v2 addObject:*(a1 + 40)];
}

- (id)_endpointURLForEnvironment:(unint64_t)environment requestKey:(id)key
{
  keyCopy = key;
  if (([keyCopy isEqualToString:@"appConfigRequest"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"magazinesConfigRequest") & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"audioConfigRequest") || objc_msgSend(keyCopy, "isEqualToString:", @"widgetConfigRequest"))
  {
    goto LABEL_5;
  }

  if ([keyCopy isEqualToString:@"todayConfigRequest"])
  {
    if (environment >= 5)
    {
      goto LABEL_22;
    }

    v8 = off_27822F810;
LABEL_18:
    v6 = &v8[environment];
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"stocksConfigRequest"])
  {
    if (environment >= 5)
    {
      goto LABEL_22;
    }

    v8 = off_27822F838;
    goto LABEL_18;
  }

  if (([keyCopy isEqualToString:@"weatherConfigRequest"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"weather2ConfigRequest"))
  {
    if (environment >= 5)
    {
      goto LABEL_22;
    }

    v8 = off_27822F860;
    goto LABEL_18;
  }

  v9 = [keyCopy isEqualToString:@"booksConfigRequest"];
  if (v9)
  {
    if (environment >= 5)
    {
      goto LABEL_22;
    }

    v8 = off_27822F888;
    goto LABEL_18;
  }

  v12 = RCSharedLog(v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [RCConfigurationManager _endpointURLForEnvironment:requestKey:];
  }

LABEL_5:
  if (environment - 1 < 4)
  {
    v6 = &off_27822F8B0[environment - 1];
LABEL_7:
    v7 = *v6;
    goto LABEL_23;
  }

LABEL_22:
  v7 = @"https://news-edge.apple.com/v1/configs";
LABEL_23:
  v10 = [MEMORY[0x277CBEBC0] URLWithString:v7];

  return v10;
}

- (id)_endpointURLForEndpointConfig:(id)config overrideEnvironment:(unint64_t)environment overrideEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  configCopy = config;
  v8 = configCopy;
  if (!configCopy)
  {
    v11 = RCSharedLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_2179FC000, v11, OS_LOG_TYPE_DEFAULT, "EndpointConfig not available, falling back to the config to look for the endpointURL", v14, 2u);
    }

    goto LABEL_23;
  }

  environment = [configCopy environment];
  if (enabledCopy)
  {
    environmentCopy = environment;
  }

  else
  {
    environmentCopy = environment;
  }

  if (environmentCopy <= 1)
  {
    if (environmentCopy)
    {
      if (environmentCopy != 1)
      {
        goto LABEL_21;
      }

      environment = [v8 stagingURL];
    }

    else
    {
      environment = [v8 productionURL];
    }
  }

  else
  {
    switch(environmentCopy)
    {
      case 2:
        environment = [v8 qaURL];
        break;
      case 3:
        environment = [v8 develURL];
        break;
      case 4:
        environment = [v8 testURL];
        break;
      default:
        goto LABEL_21;
    }
  }

  v12 = environment;
  if (!environment)
  {
LABEL_21:
    v11 = RCSharedLog(environment);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [RCConfigurationManager _endpointURLForEndpointConfig:v8 overrideEnvironment:? overrideEnabled:?];
    }

LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v11 = RCSharedLog(environment);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [RCConfigurationManager _endpointURLForEndpointConfig:v12 overrideEnvironment:v8 overrideEnabled:v11];
  }

LABEL_24:

  return v12;
}

- (void)_fetchConfigurationFromFallbackURLWithSettings:(id)settings completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  configRequestSerialQueue = [(RCConfigurationManager *)self configRequestSerialQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke;
  v11[3] = &unk_27822F7F0;
  v12 = settingsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = settingsCopy;
  [configRequestSerialQueue enqueueBlock:v11];
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke(id *a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = RCSharedLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 138543362;
    v51 = v5;
    _os_log_impl(&dword_2179FC000, v4, OS_LOG_TYPE_DEFAULT, "fetching configuration from fallback with settings: %{public}@", buf, 0xCu);
  }

  v6 = [a1[4] requestInfos];
  v7 = [v6 rc_firstObjectPassingTest:&__block_literal_global_148];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = [a1[4] requestInfos];
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v9)
  {
    v10 = *v46;
    do
    {
      v11 = 0;
      do
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v45 + 1) + 8 * v11);
        if (v12 != v7)
        {
          v13 = a1[5];
          v14 = [v12 requestKey];
          [v13 _removeConfigurationResourceForRequestKey:v14];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v9);
  }

  if (v7)
  {
    v15 = objc_alloc_init(RCFallbackOperation);
    [(RCOperation *)v15 setQualityOfService:25];
    [(RCOperation *)v15 setRelativePriority:1];
    v16 = [v7 fallbackURL];
    [(RCFallbackOperation *)v15 setFallbackURL:v16];

    v17 = [v7 requestCacheKey];
    [(RCFallbackOperation *)v15 setRequestKey:v17];

    v18 = [a1[4] debugOverrides];
    -[RCFallbackOperation setEnableExtraLogs:](v15, "setEnableExtraLogs:", [v18 enableExtraLogs]);

    v19 = [a1[4] debugOverrides];
    -[RCFallbackOperation setEnvironment:](v15, "setEnvironment:", [v19 debugEnvironment]);

    v20 = [a1[5] configResourceByRequestKey];
    v21 = [v7 requestCacheKey];
    v22 = [v20 objectForKeyedSubscript:v21];
    [(RCFallbackOperation *)v15 setCachedConfigurationResource:v22];

    [a1[4] fallbackTimeoutDuration];
    [(RCFallbackOperation *)v15 setFallbackTimeoutDuration:?];
    v23 = [a1[4] userID];
    [(RCFallbackOperation *)v15 setUserID:v23];

    v24 = [a1[4] storefrontID];
    [(RCFallbackOperation *)v15 setStorefrontID:v24];

    v25 = [a1[4] deviceInfo];
    v26 = [v25 preferredLanguages];
    [(RCFallbackOperation *)v15 setPreferredLanguages:v26];

    objc_initWeak(buf, v15);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_150;
    v40[3] = &unk_27822F700;
    v32 = *(a1 + 2);
    v27 = v32.i64[0];
    v41 = vextq_s8(v32, v32, 8uLL);
    [(RCFallbackOperation *)v15 setNetworkEventHandler:v40];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2_151;
    v35[3] = &unk_27822F7C8;
    objc_copyWeak(&v39, buf);
    v37 = a1[6];
    v28 = v3;
    v29 = a1[5];
    v38 = v28;
    v35[4] = v29;
    v36 = v7;
    [(RCFallbackOperation *)v15 setConfigurationCompletionHandler:v35];
    v30 = [a1[5] runningOperationsLock];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2_155;
    v33[3] = &unk_27822F130;
    v33[4] = a1[5];
    v31 = v15;
    v34 = v31;
    [v30 performWithLockSync:v33];

    [(RCOperation *)v31 start];
    objc_destroyWeak(&v39);

    objc_destroyWeak(buf);
  }

  else
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2;
    v42[3] = &unk_27822F7A0;
    v43 = a1[6];
    v44 = v3;
    __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2(v42);

    v31 = v43;
  }
}

BOOL __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_146(uint64_t a1, void *a2)
{
  v2 = [a2 fallbackURL];
  v3 = v2 != 0;

  return v3;
}

uint64_t __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2(uint64_t a1)
{
  v2 = RCSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2179FC000, v2, OS_LOG_TYPE_DEFAULT, "fallback operation failed, missing fallbackURL", v5, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, 0);
  }

  return (*(*(a1 + 40) + 16))();
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_150(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) networkEventHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) networkEventHandler];
    (v4)[2](v4, v5, *(a1 + 40), 1);
  }
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2_151(id *a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (!v5 || v6)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_3;
    v21[3] = &unk_27822F728;
    v25 = a1[6];
    v13 = v6;
    v22 = v13;
    v26 = a1[7];
    v14 = WeakRetained;
    v15 = a1[4];
    v23 = v14;
    v24 = v15;
    __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_3(v21);

    v12 = v25;
  }

  else
  {
    v8 = [v5 configurationData];
    v9 = v8;
    if (v8 && (v8 = [v8 length]) != 0)
    {
      [a1[4] _saveConfigurationResource:v5];
      v10 = [a1[5] requestKey];
      v27 = v10;
      v11 = [v5 configurationData];
      v28[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];

      v13 = 0;
    }

    else
    {
      v16 = RCSharedLog(v8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2_151_cold_1();
      }

      v13 = [MEMORY[0x277CCA9B8] rc_notAvailableError];
      v12 = 0;
    }

    v17 = a1[6];
    if (v17)
    {
      v17[2](v17, v12, v13);
    }

    (*(a1[7] + 2))();
    if (WeakRetained)
    {
      v18 = [a1[4] runningOperationsLock];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_153;
      v19[3] = &unk_27822F130;
      v19[4] = a1[4];
      v20 = WeakRetained;
      [v18 performWithLockSync:v19];
    }
  }
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, *(a1 + 32));
  }

  (*(*(a1 + 64) + 16))();
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 48) runningOperationsLock];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_4;
    v6[3] = &unk_27822F130;
    v5 = *(a1 + 40);
    v4 = v5.i64[0];
    v7 = vextq_s8(v5, v5, 8uLL);
    [v3 performWithLockSync:v6];
  }
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) runningOperations];
  [v2 removeObject:*(a1 + 40)];
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_153(uint64_t a1)
{
  v2 = [*(a1 + 32) runningOperations];
  [v2 removeObject:*(a1 + 40)];
}

void __84__RCConfigurationManager__fetchConfigurationFromFallbackURLWithSettings_completion___block_invoke_2_155(uint64_t a1)
{
  v2 = [*(a1 + 32) runningOperations];
  [v2 addObject:*(a1 + 40)];
}

- (void)_saveConfigurationResource:(id)resource
{
  resourceCopy = resource;
  configResourceByRequestKey = [(RCConfigurationManager *)self configResourceByRequestKey];
  requestKey = [resourceCopy requestKey];
  [configResourceByRequestKey setObject:resourceCopy forKeyedSubscript:requestKey];

  v6 = [(RCConfigurationManager *)self _encodeConfigurationResource:resourceCopy];
  if (v6)
  {
    localStore = [(RCConfigurationManager *)self localStore];
    requestKey2 = [resourceCopy requestKey];
    [localStore setObject:v6 forKey:requestKey2];
  }
}

- (void)_removeConfigurationResourceForRequestKey:(id)key
{
  keyCopy = key;
  configResourceByRequestKey = [(RCConfigurationManager *)self configResourceByRequestKey];
  [configResourceByRequestKey removeObjectForKey:keyCopy];

  localStore = [(RCConfigurationManager *)self localStore];
  [localStore removeObjectForKey:keyCopy];
}

- (id)_decodeConfigurationResource:(id)resource
{
  v3 = MEMORY[0x277CCAAC8];
  resourceCopy = resource;
  v5 = [[v3 alloc] initForReadingFromData:resourceCopy error:0];

  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];

  return v6;
}

- (void)fetchMultiConfigurationWithSettings:(void *)a1 networkActivityBlock:completionQueue:completion:.cold.1(void *a1)
{
  v1 = [a1 rc_description];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1(&dword_2179FC000, v2, v3, "cache-only policy: cached configuration not available or invalid for requestKeys: %{public}@", v4, v5, v6, v7);
}

- (void)reestablishBackgroundSessionWithSettings:sessionCompletionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"invalid nil value for '%s'", "configurationSettings.backgroundFetchConfiguration"];
  *buf = 136315906;
  v2 = "[RCConfigurationManager reestablishBackgroundSessionWithSettings:sessionCompletionHandler:]";
  v3 = 2080;
  v4 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/RCConfigurationManager.m";
  v5 = 1024;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);
}

- (void)cancelAllTasksOnBackgroundSessionWithSettings:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"invalid nil value for '%s'", "configurationSettings.backgroundFetchConfiguration"];
  *buf = 136315906;
  v2 = "[RCConfigurationManager cancelAllTasksOnBackgroundSessionWithSettings:completion:]";
  v3 = 2080;
  v4 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/RCConfigurationManager.m";
  v5 = 1024;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);
}

- (void)_isAllowedToReachEndpointWithSettings:configurationResource:endpointURL:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_2179FC000, v0, OS_LOG_TYPE_DEBUG, "checking if client is allowed to reach endpoint with userID: %@", v1, 0xCu);
}

- (void)_endpointURLForEndpointConfig:(uint64_t)a1 overrideEnvironment:(void *)a2 overrideEnabled:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 environmentDescription];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_2179FC000, a3, OS_LOG_TYPE_DEBUG, "Found endpoint URL: %{public}@ for environment: %{public}@", &v6, 0x16u);
}

- (void)_endpointURLForEndpointConfig:(void *)a1 overrideEnvironment:overrideEnabled:.cold.2(void *a1)
{
  v1 = [a1 environmentDescription];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1(&dword_2179FC000, v2, v3, "No endpoint URL found in the endpointConfig for environment: %{public}@", v4, v5, v6, v7);
}

@end