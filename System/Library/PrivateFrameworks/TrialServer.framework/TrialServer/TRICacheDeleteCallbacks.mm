@interface TRICacheDeleteCallbacks
+ (id)_assetPurger:(id)purger experimentDatabase:(id)database rolloutDatabase:(id)rolloutDatabase taskQueue:(id)queue loggingClient:(id)client;
+ (void)registerCallbacksWithPaths:(id)paths experimentDatabase:(id)database rolloutDatabase:(id)rolloutDatabase taskQueue:(id)queue loggingClient:(id)client;
- (BOOL)_trialVolumeIsEqualToVolume:(id)volume;
- (TRICacheDeleteCallbacks)initWithPaths:(id)paths assetPurger:(id)purger loggingClient:(id)client;
- (id)purge:(id)purge urgency:(int)urgency;
- (id)purgeable:(id)purgeable urgency:(int)urgency;
- (void)_logPurgedAmountTelemetry:(int)telemetry purgedAmountInBytes:(id)bytes;
- (void)cancel:(id)cancel;
@end

@implementation TRICacheDeleteCallbacks

- (TRICacheDeleteCallbacks)initWithPaths:(id)paths assetPurger:(id)purger loggingClient:(id)client
{
  pathsCopy = paths;
  purgerCopy = purger;
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = TRICacheDeleteCallbacks;
  v12 = [(TRICacheDeleteCallbacks *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_paths, paths);
    objc_storeStrong(&v13->_assetPurger, purger);
    objc_storeStrong(&v13->_loggingClient, client);
  }

  return v13;
}

- (id)purgeable:(id)purgeable urgency:(int)urgency
{
  v4 = *&urgency;
  v23 = *MEMORY[0x277D85DE8];
  purgeableCopy = purgeable;
  v7 = objc_autoreleasePoolPush();
  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Purgeable CacheDelete callback invoked", buf, 2u);
  }

  localTempDir = [(TRIPaths *)self->_paths localTempDir];
  [TRITempDirScopeGuard ifUnreferencedCleanupPath:localTempDir];

  v10 = [purgeableCopy triObjectForExpectedKey:@"CACHE_DELETE_VOLUME"];
  if ([(TRICacheDeleteCallbacks *)self _trialVolumeIsEqualToVolume:v10])
  {
    v11 = [MEMORY[0x277D737B0] purgeabilityLevelFromCacheDeleteUrgency:v4];
    v12 = v11;
    if (v11)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[TRIAssetPurging purgeableAssetSizeForPurgeabilityLevel:](self->_assetPurger, "purgeableAssetSizeForPurgeabilityLevel:", objc_msgSend(v11, "unsignedIntValue"))}];
    }

    else
    {
      v13 = &unk_287FC4630;
    }
  }

  else
  {
    v13 = &unk_287FC4630;
  }

  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v13;
    v21 = 1024;
    v22 = v4;
    _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Trial CacheDelete service found %@ bytes to be purgeable at CacheDeleteUrgency %d", buf, 0x12u);
  }

  if (v10)
  {
    v17[0] = @"CACHE_DELETE_VOLUME";
    v17[1] = @"CACHE_DELETE_AMOUNT";
    v18[0] = v10;
    v18[1] = v13;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v15;
}

- (id)purge:(id)purge urgency:(int)urgency
{
  v4 = *&urgency;
  v30 = *MEMORY[0x277D85DE8];
  purgeCopy = purge;
  v7 = objc_autoreleasePoolPush();
  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Purge CacheDelete callback invoked", buf, 2u);
  }

  v9 = [purgeCopy triObjectForExpectedKey:@"CACHE_DELETE_VOLUME"];
  v10 = v9;
  v11 = &stru_287FA0430;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [purgeCopy triObjectForExpectedKey:@"CACHE_DELETE_AMOUNT"];
  v14 = v13;
  v15 = &unk_287FC4630;
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = &unk_287FC4630;
  }

  v17 = v16;

  if ([(TRICacheDeleteCallbacks *)self _trialVolumeIsEqualToVolume:v12])
  {
    v18 = [MEMORY[0x277D737B0] purgeabilityLevelFromCacheDeleteUrgency:v4];
    v19 = v18;
    if (v18)
    {
      unsignedIntValue = [v18 unsignedIntValue];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[TRIAssetPurging purgeAssetsForPurgeabilityLevel:requestedPurgeAmount:](self->_assetPurger, "purgeAssetsForPurgeabilityLevel:requestedPurgeAmount:", unsignedIntValue, objc_msgSend(v17, "intValue"))}];
      if ([v15 unsignedLongLongValue])
      {
        [(TRICacheDeleteCallbacks *)self _logPurgedAmountTelemetry:unsignedIntValue purgedAmountInBytes:v15];
      }
    }
  }

  v21 = TRILogCategory_Server();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v15;
    v28 = 1024;
    v29 = v4;
    _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_DEFAULT, "Trial CacheDelete service purged %@ bytes at CacheDeleteUrgency %d", buf, 0x12u);
  }

  v24[0] = @"CACHE_DELETE_VOLUME";
  v24[1] = @"CACHE_DELETE_AMOUNT";
  v25[0] = v12;
  v25[1] = v15;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  objc_autoreleasePoolPop(v7);

  return v22;
}

- (void)_logPurgedAmountTelemetry:(int)telemetry purgedAmountInBytes:(id)bytes
{
  v4 = *&telemetry;
  v17[1] = *MEMORY[0x277D85DE8];
  bytesCopy = bytes;
  v7 = objc_opt_new();
  ensureAssetPurgeFields = [v7 ensureAssetPurgeFields];
  [v7 setAssetPurgeFields:ensureAssetPurgeFields];

  v9 = [MEMORY[0x277D73BC0] assetPurgeFieldsPurgeabilityLevelFromPurgeabilityLevel:v4];
  assetPurgeFields = [v7 assetPurgeFields];
  [assetPurgeFields setPurgeabilityLevel:v9];

  v11 = MEMORY[0x277D73B40];
  intValue = [bytesCopy intValue];

  v13 = [v11 metricWithName:@"total_purged_asset_size" integerValue:intValue];
  logger = [(TRIClient *)self->_loggingClient logger];
  trackingId = [(TRIClient *)self->_loggingClient trackingId];
  v17[0] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [logger logWithTrackingId:trackingId metrics:v16 dimensions:0 trialSystemTelemetry:v7];
}

- (void)cancel:(id)cancel
{
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEBUG, "Cancel CacheDelete callback invoked", v4, 2u);
  }
}

- (BOOL)_trialVolumeIsEqualToVolume:(id)volume
{
  v19 = *MEMORY[0x277D85DE8];
  paths = self->_paths;
  volumeCopy = volume;
  trialVolume = [(TRIPaths *)paths trialVolume];
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (trialVolume)
    {
      v8 = trialVolume;
    }

    else
    {
      v8 = @"nil";
    }

    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_INFO, "Found the following trial directory volume: %@", &v15, 0xCu);
  }

  v9 = [(TRIPaths *)self->_paths volumeForDirectory:volumeCopy];

  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"nil";
    }

    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_INFO, "Found the following cache delete requested volume: %@", &v15, 0xCu);
  }

  if (!trialVolume || !v9)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Invalid trial or cache delete requested volume", &v15, 2u);
    }

    goto LABEL_19;
  }

  if (([(__CFString *)v9 isEqualToString:trialVolume]& 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = trialVolume;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Cache delete request for %@ does not match expected volume %@", &v15, 0x16u);
    }

LABEL_19:

    v12 = 0;
    goto LABEL_20;
  }

  v12 = 1;
LABEL_20:

  return v12;
}

+ (void)registerCallbacksWithPaths:(id)paths experimentDatabase:(id)database rolloutDatabase:(id)rolloutDatabase taskQueue:(id)queue loggingClient:(id)client
{
  pathsCopy = paths;
  databaseCopy = database;
  rolloutDatabaseCopy = rolloutDatabase;
  queueCopy = queue;
  clientCopy = client;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __113__TRICacheDeleteCallbacks_registerCallbacksWithPaths_experimentDatabase_rolloutDatabase_taskQueue_loggingClient___block_invoke;
  v31[3] = &unk_279DDFE28;
  v32 = pathsCopy;
  v33 = databaseCopy;
  v34 = rolloutDatabaseCopy;
  v35 = queueCopy;
  v36 = clientCopy;
  selfCopy = self;
  v17 = clientCopy;
  v18 = queueCopy;
  v19 = rolloutDatabaseCopy;
  v20 = databaseCopy;
  v21 = pathsCopy;
  v22 = MEMORY[0x2743948D0](v31);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __113__TRICacheDeleteCallbacks_registerCallbacksWithPaths_experimentDatabase_rolloutDatabase_taskQueue_loggingClient___block_invoke_2;
  v29[3] = &unk_279DDFE50;
  v23 = v22;
  v30 = v23;
  v24 = MEMORY[0x2743948D0](v29);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __113__TRICacheDeleteCallbacks_registerCallbacksWithPaths_experimentDatabase_rolloutDatabase_taskQueue_loggingClient___block_invoke_3;
  v27[3] = &unk_279DDFE50;
  v28 = v23;
  v25 = v23;
  v26 = MEMORY[0x2743948D0](v27);
  CacheDeleteRegisterInfoCallbacks();
}

TRICacheDeleteCallbacks *__113__TRICacheDeleteCallbacks_registerCallbacksWithPaths_experimentDatabase_rolloutDatabase_taskQueue_loggingClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 72) _assetPurger:*(a1 + 32) experimentDatabase:*(a1 + 40) rolloutDatabase:*(a1 + 48) taskQueue:*(a1 + 56) loggingClient:*(a1 + 64)];
  v3 = [[TRICacheDeleteCallbacks alloc] initWithPaths:*(a1 + 32) assetPurger:v2 loggingClient:*(a1 + 64)];

  return v3;
}

id __113__TRICacheDeleteCallbacks_registerCallbacksWithPaths_experimentDatabase_rolloutDatabase_taskQueue_loggingClient___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a3;
  v7 = v5(v4);
  v8 = [v7 purgeable:v6 urgency:a2];

  v9 = v8;
  return v9;
}

id __113__TRICacheDeleteCallbacks_registerCallbacksWithPaths_experimentDatabase_rolloutDatabase_taskQueue_loggingClient___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a3;
  v7 = v5(v4);
  v8 = [v7 purge:v6 urgency:a2];

  v9 = v8;
  return v9;
}

+ (id)_assetPurger:(id)purger experimentDatabase:(id)database rolloutDatabase:(id)rolloutDatabase taskQueue:(id)queue loggingClient:(id)client
{
  clientCopy = client;
  queueCopy = queue;
  rolloutDatabaseCopy = rolloutDatabase;
  databaseCopy = database;
  purgerCopy = purger;
  v23 = [[TRIAssetStore alloc] initWithPaths:purgerCopy];
  v16 = [objc_alloc(MEMORY[0x277D73688]) initWithPaths:purgerCopy];
  v17 = [[TRIPurgeableNamespacesProvider alloc] initWithPaths:purgerCopy clientNamespaceMetadataStorage:v16];
  v18 = [objc_alloc(MEMORY[0x277D73778]) initWithPaths:purgerCopy];
  v19 = [[TRIPurgeableOnDemandFactorsEnumerator alloc] initWithPaths:purgerCopy namespaceResolver:v18];
  v20 = [[TRIPurgeableExperimentAndRolloutProvider alloc] initWithPaths:purgerCopy experimentDatabase:databaseCopy rolloutDatabase:rolloutDatabaseCopy];

  v21 = [[TRIAssetPurger alloc] initWithPaths:purgerCopy assetStore:v23 purgeableNamespacesProvider:v17 purgeableFactorPacksEnumerator:v19 purgeableExperimentAndRolloutProvider:v20 taskQueue:queueCopy loggingClient:clientCopy];

  return v21;
}

@end