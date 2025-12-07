@interface HDCloudSyncPreparePushZoneForStoreOperation
+ (id)operationTagDependencies;
- (HDCloudSyncPreparePushZoneForStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncPreparePushZoneForStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state store:(id)store;
- (void)_finishWithZone:(uint64_t)zone;
- (void)main;
@end

@implementation HDCloudSyncPreparePushZoneForStoreOperation

+ (id)operationTagDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"compute-push-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (HDCloudSyncPreparePushZoneForStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPreparePushZoneForStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state store:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = HDCloudSyncPreparePushZoneForStoreOperation;
  v10 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:configuration cloudState:state];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_store, store);
  }

  return v11;
}

- (void)main
{
  v82[1] = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  primaryCKContainer = [repository primaryCKContainer];
  containerIdentifier = [primaryCKContainer containerIdentifier];

  containerIdentifier2 = [(HDCloudSyncStore *)self->_store containerIdentifier];
  LOBYTE(repository) = [containerIdentifier2 isEqualToString:containerIdentifier];

  if (repository)
  {
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration2 repository];
    shouldPushToUnifiedZone = [repository2 shouldPushToUnifiedZone];

    v11 = MEMORY[0x277CBC5F8];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    syncContainerPrefix = [configuration3 syncContainerPrefix];
    v61 = shouldPushToUnifiedZone;
    v64 = containerIdentifier;
    if (shouldPushToUnifiedZone)
    {
      v63 = [v11 hd_unifiedSyncZoneIDForSyncCircleIdentifier:syncContainerPrefix];
    }

    else
    {
      storeIdentifier = [(HDCloudSyncStore *)self->_store storeIdentifier];
      v63 = [v11 hd_individualSyncZoneIDWithSyncCircleIdentifier:syncContainerPrefix storeIdentifier:storeIdentifier];
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    configuration4 = [(HDCloudSyncOperation *)self configuration];
    computedState = [configuration4 computedState];
    targets = [computedState targets];

    v19 = [targets countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v70;
      obj = targets;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v70 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v69 + 1) + 8 * i);
          store = [v23 store];
          storeIdentifier2 = [store storeIdentifier];
          storeIdentifier3 = [(HDCloudSyncStore *)self->_store storeIdentifier];
          v27 = [storeIdentifier2 isEqual:storeIdentifier3];

          if (v27)
          {
            objc_storeStrong(&self->_pushTarget, v23);
            [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
            v33 = v63;
            containerIdentifier = v64;
            goto LABEL_33;
          }
        }

        targets = obj;
        v20 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    configuration5 = [(HDCloudSyncOperation *)self configuration];
    cachedCloudState = [configuration5 cachedCloudState];
    v68 = 0;
    v30 = [cachedCloudState zonesByIdentifierWithError:&v68];
    v31 = v68;

    obj = v31;
    if (v30 || !v31)
    {
      v33 = v63;
      containerIdentifier = v64;
      if (!v30)
      {
        _HKInitializeLogging();
        v34 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_debug_impl(&dword_228986000, v34, OS_LOG_TYPE_DEBUG, "%{public}@ No cached zones found.", buf, 0xCu);
        }
      }

      allValues = [v30 allValues];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __51__HDCloudSyncPreparePushZoneForStoreOperation_main__block_invoke;
      v66[3] = &unk_278615DB8;
      v67 = v61;
      v66[4] = v64;
      v66[5] = v63;
      v36 = [allValues hk_firstObjectPassingTest:v66];

      if (v36)
      {
        [(HDCloudSyncPreparePushZoneForStoreOperation *)self _finishWithZone:v36];
      }

      else
      {
        storeIdentifier4 = [(HDCloudSyncStore *)self->_store storeIdentifier];
        v62 = v63;
        v60 = storeIdentifier4;
        configuration6 = [(HDCloudSyncOperation *)self configuration];
        repository3 = [configuration6 repository];
        primaryCKContainer2 = [repository3 primaryCKContainer];

        configuration7 = [(HDCloudSyncOperation *)self configuration];
        repository4 = [configuration7 repository];
        profileIdentifier = [repository4 profileIdentifier];
        v59 = primaryCKContainer2;
        v44 = HDDatabaseForContainer(primaryCKContainer2, profileIdentifier);

        if ([v44 databaseScope] == 2)
        {
          v58 = v44;
          _HKInitializeLogging();
          v45 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            store = self->_store;
            v47 = v45;
            storeIdentifier5 = [(HDCloudSyncStore *)store storeIdentifier];
            *buf = 138543874;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = storeIdentifier5;
            *&buf[22] = 2114;
            v76 = v62;
            _os_log_impl(&dword_228986000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@: No zone found for store %{public}@; creating zone %{public}@", buf, 0x20u);
          }

          v49 = v62;
          v50 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v62];
          v51 = [HDCloudSyncModifyRecordZonesOperation alloc];
          configuration8 = [(HDCloudSyncOperation *)self configuration];
          v82[0] = v50;
          v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:1];
          v54 = v51;
          v55 = v59;
          v56 = [(HDCloudSyncModifyRecordZonesOperation *)v54 initWithConfiguration:configuration8 container:v59 recordZonesToSave:v53 recordZoneIDsToDelete:0];

          v73[0] = MEMORY[0x277D85DD0];
          v73[1] = 3221225472;
          v73[2] = __84__HDCloudSyncPreparePushZoneForStoreOperation__createZoneWithIdentifier_forStoreId___block_invoke;
          v73[3] = &unk_278613088;
          v73[4] = self;
          [(HDCloudSyncOperation *)v56 setOnError:v73];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __84__HDCloudSyncPreparePushZoneForStoreOperation__createZoneWithIdentifier_forStoreId___block_invoke_308;
          v76 = &unk_278615DE0;
          selfCopy = self;
          v57 = v60;
          v78 = v60;
          v79 = v62;
          v80 = v59;
          v44 = v58;
          v81 = v58;
          [(HDCloudSyncOperation *)v56 setOnSuccess:buf];
          [(HDCloudSyncOperation *)v56 start];

          v36 = 0;
        }

        else
        {
          v50 = [MEMORY[0x277CCA9B8] hk_error:712 format:@"Unable to create zones in a non-private database."];
          [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v50];
          v57 = v60;
          v49 = v62;
          v55 = v59;
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v32 = *MEMORY[0x277CCC328];
      v33 = v63;
      containerIdentifier = v64;
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = obj;
        _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached zone identifiers, %{public}@", buf, 0x16u);
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:obj];
    }

LABEL_33:
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hk_error:712 format:@"Unable to create push zones in a non-primary container."];
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v14];
  }
}

uint64_t __51__HDCloudSyncPreparePushZoneForStoreOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 zoneIdentifier];
  v5 = [v4 containerIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    if (*(a1 + 48) == 1 && [v3 zoneType] == 2)
    {
      v7 = 1;
    }

    else
    {
      v8 = [v3 zoneIdentifier];
      v7 = [v8 isEquivalentToZone:*(a1 + 40) container:*(a1 + 32)];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_finishWithZone:(uint64_t)zone
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (zone)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__20;
    v54 = __Block_byref_object_dispose__20;
    v55 = 0;
    v4 = objc_opt_class();
    v48[5] = &v50;
    v49 = 0;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __63__HDCloudSyncPreparePushZoneForStoreOperation__finishWithZone___block_invoke;
    v48[3] = &unk_278615E08;
    v48[4] = zone;
    v5 = [v3 recordsForClass:v4 epoch:0 error:&v49 enumerationHandler:v48];
    v46 = v49;
    if (v5)
    {
      if (!v51[5])
      {
        configuration = [zone configuration];
        repository = [configuration repository];
        configuration2 = [zone configuration];
        repository2 = [configuration2 repository];
        primaryCKContainer = [repository2 primaryCKContainer];
        v11 = [repository cachedOwnerIdentifierForContainer:primaryCKContainer];
        string = [v11 string];

        configuration3 = [zone configuration];
        repository3 = [configuration3 repository];
        profile = [repository3 profile];
        cloudSyncManager = [profile cloudSyncManager];
        isChild = [cloudSyncManager isChild];

        v40 = [HDCloudSyncStoreRecord alloc];
        configuration4 = [zone configuration];
        syncContainerPrefix = [configuration4 syncContainerPrefix];
        storeIdentifier = [*(zone + 104) storeIdentifier];
        configuration5 = [zone configuration];
        repository4 = [configuration5 repository];
        syncIdentityManager = [repository4 syncIdentityManager];
        currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
        identity = [currentSyncIdentity identity];
        zoneIdentifier = [v3 zoneIdentifier];
        v21ZoneIdentifier = [zoneIdentifier zoneIdentifier];
        v23 = [(HDCloudSyncStoreRecord *)v40 initInSyncCircle:syncContainerPrefix ownerIdentifier:string storeIdentifier:storeIdentifier syncIdentity:identity isChild:isChild zoneID:v21ZoneIdentifier];
        v24 = v51[5];
        v51[5] = v23;

        v25 = v51[5];
        v47 = 0;
        LOBYTE(v21ZoneIdentifier) = [v25 validateWithError:&v47];
        v26 = v47;
        if ((v21ZoneIdentifier & 1) == 0)
        {
          _HKInitializeLogging();
          v27 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            zoneCopy = v26;
            _os_log_fault_impl(&dword_228986000, v27, OS_LOG_TYPE_FAULT, "Failed to validate store record after creation: %{public}@", buf, 0xCu);
          }

          [zone finishWithSuccess:0 error:v26];
        }
      }

      v28 = [HDCloudSyncTarget alloc];
      configuration6 = [zone configuration];
      repository5 = [configuration6 repository];
      primaryCKContainer2 = [repository5 primaryCKContainer];
      zoneIdentifier2 = [v3 zoneIdentifier];
      v33 = [(HDCloudSyncTarget *)v28 initWithPurpose:0 container:primaryCKContainer2 zoneIdentifier:zoneIdentifier2 storeRecord:v51[5] store:*(zone + 104) options:0];
      v34 = *(zone + 112);
      *(zone + 112) = v33;

      configuration7 = [zone configuration];
      computedState = [configuration7 computedState];
      v56 = *(zone + 112);
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
      [computedState replaceTargets:v37];

      v38 = 0;
    }

    else
    {
      _HKInitializeLogging();
      configuration7 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(configuration7, OS_LOG_TYPE_ERROR))
      {
        zoneIdentifier3 = [v3 zoneIdentifier];
        *buf = 138543874;
        zoneCopy = zone;
        v59 = 2114;
        v60 = zoneIdentifier3;
        v61 = 2114;
        v62 = v46;
        _os_log_error_impl(&dword_228986000, configuration7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);
      }

      v38 = v46;
    }

    [zone finishWithSuccess:v5 error:v38];
    _Block_object_dispose(&v50, 8);
  }
}

void __84__HDCloudSyncPreparePushZoneForStoreOperation__createZoneWithIdentifier_forStoreId___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 104);
    v8 = v5;
    v9 = [v7 storeIdentifier];
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = v4;
    _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create zone for store: %{public}@: %{public}@", &v10, 0x20u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];
}

void __84__HDCloudSyncPreparePushZoneForStoreOperation__createZoneWithIdentifier_forStoreId___block_invoke_308(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v15 = 138543618;
    v16 = v3;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully created zone for store: %{public}@", &v15, 0x16u);
  }

  v5 = [HDCloudSyncZoneIdentifier alloc];
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) containerIdentifier];
  v8 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v5, "initForZone:container:scope:", v6, v7, [*(a1 + 64) databaseScope]);

  v9 = [HDCloudSyncCachedZone alloc];
  v10 = [*(a1 + 32) configuration];
  v11 = [v10 repository];
  v12 = [*(a1 + 32) configuration];
  v13 = [v12 accessibilityAssertion];
  v14 = [(HDCloudSyncCachedZone *)v9 initForZoneIdentifier:v8 repository:v11 accessibilityAssertion:v13];

  [(HDCloudSyncPreparePushZoneForStoreOperation *)*(a1 + 32) _finishWithZone:v14];
}

uint64_t __63__HDCloudSyncPreparePushZoneForStoreOperation__finishWithZone___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 storeIdentifier];
  v6 = [*(*(a1 + 32) + 104) storeIdentifier];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  return v7 ^ 1u;
}

@end