@interface HDOTAFeatureAvailabilityManager
- (BOOL)downloadImmediatelyWithError:(id *)error;
- (HDOTAFeatureAvailabilityManager)initWithDaemon:(id)daemon;
- (NSDictionary)unitTest_factorFileCache;
- (NSString)factorPackID;
- (id)_fileURLForFileNamed:(id)named factorPath:(id)path;
- (id)_infoDictionaryRepresentationForFileNamed:(void *)named error:;
- (id)_queue_refreshClientAndNotifyObservers;
- (id)disableAndExpiryConditionsDictionaryWithError:(id *)error;
- (id)featureAvailabilityInfoForFeature:(id)feature error:(id *)error;
- (void)_queue_syncDisableAndExpiryConditionsToLegacyPairedWatches;
- (void)_unitTest_refreshClientAndNotifyObservers;
- (void)daemonReady:(id)ready;
- (void)dealloc;
- (void)downloadWithCompletion:(id)completion;
@end

@implementation HDOTAFeatureAvailabilityManager

- (HDOTAFeatureAvailabilityManager)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v21.receiver = self;
  v21.super_class = HDOTAFeatureAvailabilityManager;
  v5 = [(HDOTAFeatureAvailabilityManager *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
    v7 = [MEMORY[0x277D73660] clientWithIdentifier:275];
    trialClient = v6->_trialClient;
    v6->_trialClient = v7;

    v9 = HKLogInfrastructure();
    loggingCategory = v6->_loggingCategory;
    v6->_loggingCategory = v9;

    v11 = objc_alloc(MEMORY[0x277CCD738]);
    v12 = [(HDOTAFeatureAvailabilityManager *)v6 hk_classNameWithTag:@"observers"];
    v13 = [v11 initWithName:v12 loggingCategory:v6->_loggingCategory];
    observers = v6->_observers;
    v6->_observers = v13;

    v15 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v15;

    v6->_lock._os_unfair_lock_opaque = 0;
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lock_factorFileCache = v6->_lock_factorFileCache;
    v6->_lock_factorFileCache = v17;

    WeakRetained = objc_loadWeakRetained(&v6->_daemon);
    [WeakRetained registerDaemonReadyObserver:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)dealloc
{
  [(TRIClient *)self->_trialClient removeUpdateHandlerForToken:self->_trialToken];
  v3.receiver = self;
  v3.super_class = HDOTAFeatureAvailabilityManager;
  [(HDOTAFeatureAvailabilityManager *)&v3 dealloc];
}

- (void)downloadWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HDOTAFeatureAvailabilityManager_downloadWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __58__HDOTAFeatureAvailabilityManager_downloadWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  [v2 downloadImmediatelyWithError:&v4];
  v3 = v4;
  (*(*(a1 + 40) + 16))();
}

- (BOOL)downloadImmediatelyWithError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = objc_opt_class();
    v6 = v19;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting immediate download from Trial", buf, 0xCu);
  }

  trialClient = self->_trialClient;
  v8 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCC5B0]];
  v17 = 0;
  v9 = [(TRIClient *)trialClient immediateDownloadForNamespaceNames:v8 allowExpensiveNetworking:1 error:&v17];
  v10 = v17;

  if ((v9 & 1) == 0)
  {
    v11 = v10;
    if (v11)
    {
      if (error)
      {
        v12 = v11;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _HKInitializeLogging();
  v13 = HKLogInfrastructure();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    *buf = 138543362;
    v19 = v14;
    v15 = v14;
    _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ending immediate download from Trial", buf, 0xCu);
  }

  return v9;
}

- (void)daemonReady:(id)ready
{
  readyCopy = ready;
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  trialClient = self->_trialClient;
  v6 = *MEMORY[0x277CCC5B0];
  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __47__HDOTAFeatureAvailabilityManager_daemonReady___block_invoke;
  v19[3] = &unk_27861F1B8;
  objc_copyWeak(&v20, &location);
  v8 = [(TRIClient *)trialClient addUpdateHandlerForNamespaceName:v6 queue:queue usingBlock:v19];
  trialToken = self->_trialToken;
  self->_trialToken = v8;

  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  behavior = [WeakRetained behavior];
  LODWORD(queue) = [behavior isCompanionCapable];

  if (queue)
  {
    v12 = objc_loadWeakRetained(&self->_daemon);
    maintenanceWorkCoordinator = [v12 maintenanceWorkCoordinator];
    v14 = self->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__HDOTAFeatureAvailabilityManager_daemonReady___block_invoke_2;
    v17[3] = &unk_278616F38;
    objc_copyWeak(&v18, &location);
    v15 = [HDMaintenanceOperation maintenanceOperationWithName:@"HDOTAFeatureAvailabilityManager:syncDisableAndExpiryConditionsToLegacyPairedWatches" queue:v14 synchronousBlock:v17];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v15];

    objc_destroyWeak(&v18);
  }

  unitTest_daemonReadyObserverDidFinish = self->_unitTest_daemonReadyObserverDidFinish;
  if (unitTest_daemonReadyObserverDidFinish)
  {
    unitTest_daemonReadyObserverDidFinish[2]();
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __47__HDOTAFeatureAvailabilityManager_daemonReady___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDOTAFeatureAvailabilityManager *)WeakRetained _queue_refreshClientAndNotifyObservers];
}

- (id)_queue_refreshClientAndNotifyObservers
{
  v12 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    [result[2] refresh];
    WeakRetained = objc_loadWeakRetained(v1 + 1);
    behavior = [WeakRetained behavior];
    isCompanionCapable = [behavior isCompanionCapable];

    if (isCompanionCapable)
    {
      [(HDOTAFeatureAvailabilityManager *)v1 _queue_syncDisableAndExpiryConditionsToLegacyPairedWatches];
    }

    os_unfair_lock_lock(v1 + 14);
    [v1[8] removeAllObjects];
    os_unfair_lock_unlock(v1 + 14);
    _HKInitializeLogging();
    v5 = v1[4];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      *buf = 138543362;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying observers of new feature availability information", buf, 0xCu);
    }

    v8 = v1[3];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__HDOTAFeatureAvailabilityManager__queue_refreshClientAndNotifyObservers__block_invoke;
    v9[3] = &unk_27861F1E0;
    v9[4] = v1;
    return [v8 notifyObservers:v9];
  }

  return result;
}

void __47__HDOTAFeatureAvailabilityManager_daemonReady___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDOTAFeatureAvailabilityManager *)WeakRetained _queue_syncDisableAndExpiryConditionsToLegacyPairedWatches];
}

- (void)_queue_syncDisableAndExpiryConditionsToLegacyPairedWatches
{
  v34 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 40));
    v2 = *(self + 80);
    if (v2)
    {
      hk_remoteFeatureAvailabilityUserDefaults = v2;
    }

    else
    {
      hk_remoteFeatureAvailabilityUserDefaults = [MEMORY[0x277CBEBD0] hk_remoteFeatureAvailabilityUserDefaults];
    }

    v4 = hk_remoteFeatureAvailabilityUserDefaults;
    v28 = 0;
    v5 = [self disableAndExpiryConditionsDictionaryWithError:&v28];
    v6 = v28;
    if (v5)
    {
      dictionaryRepresentation = [v4 dictionaryRepresentation];
      allKeys = [dictionaryRepresentation allKeys];
      v9 = [allKeys hk_filter:&__block_literal_global_83];

      allKeys2 = [v5 allKeys];
      v11 = [v9 arrayByAddingObjectsFromArray:allKeys2];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            v18 = [v5 objectForKeyedSubscript:{v17, v24}];
            [v4 setObject:v18 forKey:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v14);
      }

      v19 = [MEMORY[0x277CBEB98] setWithArray:v12];
      HKSynchronizeNanoPreferencesUserDefaults();

      notify_post(*MEMORY[0x277CCCD08]);
    }

    else
    {
      _HKInitializeLogging();
      v20 = HKLogInfrastructure();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

      if (!v21)
      {
LABEL_18:

        return;
      }

      v12 = HKLogInfrastructure();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v22 = objc_opt_class();
        *buf = 138543618;
        v31 = v22;
        v32 = 2114;
        v33 = v6;
        v23 = v22;
        _os_log_debug_impl(&dword_228986000, v12, OS_LOG_TYPE_DEBUG, "[%{public}@] No disable and expiry conditions found: %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_18;
  }
}

- (void)_unitTest_refreshClientAndNotifyObservers
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HDOTAFeatureAvailabilityManager__unitTest_refreshClientAndNotifyObservers__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

- (NSString)factorPackID
{
  v2 = [(TRIClient *)self->_trialClient rolloutIdentifiersWithNamespaceName:*MEMORY[0x277CCC5B0]];
  factorPackId = [v2 factorPackId];
  v4 = objc_msgSend_copy(factorPackId);

  return v4;
}

- (id)_fileURLForFileNamed:(id)named factorPath:(id)path
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = MEMORY[0x277CCACA8];
  pathCopy = path;
  named = [v6 stringWithFormat:@"%@.plist", named];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy isDirectory:1];

  v10 = [v5 fileURLWithPath:named isDirectory:0 relativeToURL:v9];

  return v10;
}

- (id)_infoDictionaryRepresentationForFileNamed:(void *)named error:
{
  v5 = a2;
  if (self)
  {
    v6 = *(self + 72);
    if (v6)
    {
      path = v6;
    }

    else
    {
      v8 = [*(self + 16) levelForFactor:@"Feature Availability" withNamespaceName:*MEMORY[0x277CCC5B0]];
      directoryValue = [v8 directoryValue];
      if ([directoryValue hasPath])
      {
        path = [directoryValue path];
      }

      else
      {
        path = 0;
      }

      if (!path)
      {
        v13 = [MEMORY[0x277CCA9B8] hk_error:11 description:@"Asset factor not downloaded"];
        if (v13)
        {
          if (named)
          {
            v14 = v13;
            *named = v13;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        path = 0;
        v11 = 0;
        goto LABEL_23;
      }
    }

    v10 = [self _fileURLForFileNamed:v5 factorPath:path];
    os_unfair_lock_lock((self + 56));
    v11 = [*(self + 64) objectForKey:v10];
    if (v11)
    {
LABEL_22:
      os_unfair_lock_unlock((self + 56));

LABEL_23:
      goto LABEL_24;
    }

    v20 = 0;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v10 error:&v20];
    v12 = v20;
    [*(self + 64) setObject:v11 forKeyedSubscript:v10];
    if (!v11)
    {
      if (([v12 hk_isCocoaNoSuchFileError] & 1) == 0 && v12)
      {
        v12 = v12;
LABEL_17:
        if (named)
        {
          v18 = v12;
          *named = v12;
        }

        else
        {
          _HKLogDroppedError();
        }

        goto LABEL_21;
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"No plist found with name %@", v5];
      v17 = [v15 hk_error:11 description:v16 underlyingError:v12];

      v12 = v17;
      if (v12)
      {
        goto LABEL_17;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v11 = 0;
LABEL_24:

  return v11;
}

- (id)disableAndExpiryConditionsDictionaryWithError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  if (([mEMORY[0x277CCDD30] isAppleInternalInstall] & 1) == 0)
  {

    goto LABEL_7;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults BOOLForKey:@"HDFeatureAvailabilityAssetManagerTestMode"];

  if (!v7)
  {
LABEL_7:
    v12 = [(HDOTAFeatureAvailabilityManager *)self _infoDictionaryRepresentationForFileNamed:error error:?];
    goto LABEL_8;
  }

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/HXMobileAssetTester/ActiveOverride" isDirectory:1];
  v9 = [v8 URLByAppendingPathComponent:@"Conditions.plist" isDirectory:0];
  _HKInitializeLogging();
  v10 = HKLogInfrastructure();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v15 = 138543618;
    v16 = objc_opt_class();
    v17 = 2112;
    v18 = v9;
    v14 = v16;
    _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Running in HXMobileAssetTester test mode, looking for asset in %@", &v15, 0x16u);
  }

  v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v9 error:error];
  v12 = [v11 hk_dictionaryByAddingEntriesFromDictionary:&unk_283CB4680];

LABEL_8:

  return v12;
}

- (id)featureAvailabilityInfoForFeature:(id)feature error:(id *)error
{
  featureCopy = feature;
  v15 = 0;
  v7 = [(HDOTAFeatureAvailabilityManager *)self _infoDictionaryRepresentationForFileNamed:featureCopy error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    v10 = [[HDOTAFeatureAvailabilityInfo alloc] initWithDictionaryRepresentation:v7];
    if (v10)
    {
      v11 = v10;
      v12 = v11;
      goto LABEL_10;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Could not decode info %@ for feature %@", v7, featureCopy}];
    v11 = 0;
  }

  else
  {
    v11 = v8;
    if (v11)
    {
      if (error)
      {
        v13 = v11;
        v12 = 0;
        *error = v11;
        goto LABEL_10;
      }

      _HKLogDroppedError();
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

uint64_t __93__HDOTAFeatureAvailabilityManager__queue_syncDisableAndExpiryConditionsToLegacyPairedWatches__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v2 hasPrefix:@"Expire"])
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 hasPrefix:@"Disable"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDictionary)unitTest_factorFileCache
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_msgSend_copy(self->_lock_factorFileCache);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end