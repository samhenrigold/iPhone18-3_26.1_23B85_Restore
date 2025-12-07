@interface HDCloudSyncDeleteStoresOperation
- (HDCloudSyncDeleteStoresOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncDeleteStoresOperation)initWithConfiguration:(id)configuration cloudState:(id)state storeRecordsToDelete:(id)delete;
- (void)main;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncDeleteStoresOperation

- (HDCloudSyncDeleteStoresOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncDeleteStoresOperation)initWithConfiguration:(id)configuration cloudState:(id)state storeRecordsToDelete:(id)delete
{
  deleteCopy = delete;
  v13.receiver = self;
  v13.super_class = HDCloudSyncDeleteStoresOperation;
  v9 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:configuration cloudState:state];
  if (v9)
  {
    v10 = objc_msgSend_copy(deleteCopy);
    storeRecordsToDelete = v9->_storeRecordsToDelete;
    v9->_storeRecordsToDelete = v10;
  }

  return v9;
}

- (void)main
{
  selfCopy = self;
  v124 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_storeRecordsToDelete count])
  {
    v3 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = selfCopy->_taskGroup;
    selfCopy->_taskGroup = v3;

    [(HDSynchronousTaskGroup *)selfCopy->_taskGroup setDelegate:selfCopy];
    [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
    v5 = [(NSArray *)selfCopy->_storeRecordsToDelete hk_mapToSet:&__block_literal_global_42];
    configuration = [(HDCloudSyncOperation *)selfCopy configuration];
    cachedCloudState = [configuration cachedCloudState];
    v118[0] = 0;
    v8 = [cachedCloudState zonesByIdentifierWithError:v118];
    v9 = v118[0];

    if (v8 || !v9)
    {
      if (!v8)
      {
        _HKInitializeLogging();
        v12 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = selfCopy;
          _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ No cached zones found.", buf, 0xCu);
        }
      }

      allValues = [v8 allValues];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __60__HDCloudSyncDeleteStoresOperation__individualZonesToDelete__block_invoke_297;
      v121 = &unk_278618B00;
      v122 = selfCopy;
      v123 = v5;
      v11 = [allValues hk_map:buf];
    }

    else
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = selfCopy;
        *&buf[12] = 2114;
        *&buf[14] = v9;
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached zones, %{public}@", buf, 0x16u);
      }

      [(HDCloudSyncOperation *)selfCopy finishWithSuccess:0 error:v9];
      v11 = 0;
    }

    if ([v11 count])
    {
      [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
      v14 = [HDCloudSyncDeleteZonesOperation alloc];
      configuration2 = [(HDCloudSyncOperation *)selfCopy configuration];
      cloudState = [(HDCloudSyncOperation *)selfCopy cloudState];
      v17 = [(HDCloudSyncDeleteZonesOperation *)v14 initWithConfiguration:configuration2 cloudState:cloudState];

      [(HDCloudSyncDeleteZonesOperation *)v17 setZonesToDelete:v11];
      _HKInitializeLogging();
      v18 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = [v11 count];
        v21 = [v11 componentsJoinedByString:{@", "}];
        *buf = 138543874;
        *&buf[4] = selfCopy;
        *&buf[12] = 2048;
        *&buf[14] = v20;
        *&buf[22] = 2112;
        v121 = v21;
        _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting %ld individual sync zones: %@", buf, 0x20u);
      }

      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __63__HDCloudSyncDeleteStoresOperation__deleteIndividualZoneStores__block_invoke;
      v121 = &unk_278613088;
      v122 = selfCopy;
      [(HDCloudSyncOperation *)v17 setOnError:buf];
      v118[0] = MEMORY[0x277D85DD0];
      v118[1] = 3221225472;
      v118[2] = __63__HDCloudSyncDeleteStoresOperation__deleteIndividualZoneStores__block_invoke_2;
      v118[3] = &unk_278613060;
      v118[4] = selfCopy;
      [(HDCloudSyncOperation *)v17 setOnSuccess:v118];
      [(HDCloudSyncOperation *)v17 start];
    }

    [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    configuration3 = [(HDCloudSyncOperation *)selfCopy configuration];
    repository = [configuration3 repository];
    allCKContainers = [repository allCKContainers];

    v25 = [allCKContainers countByEnumeratingWithState:&v103 objects:v118 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v104;
      v86 = allCKContainers;
      v85 = *v104;
      v97 = selfCopy;
      do
      {
        for (i = 0; i != v26; i = v41 + 1)
        {
          if (*v104 != v27)
          {
            objc_enumerationMutation(allCKContainers);
          }

          v96 = i;
          v29 = *(*(&v103 + 1) + 8 * i);
          configuration4 = [(HDCloudSyncOperation *)selfCopy configuration];
          repository2 = [configuration4 repository];
          v32 = [repository2 cachedOwnerIdentifierForContainer:v29];
          string = [v32 string];

          v102 = string;
          if (string)
          {
            v95 = [(NSArray *)selfCopy->_storeRecordsToDelete hk_mapToSet:&__block_literal_global_313_0];
            configuration5 = [(HDCloudSyncOperation *)selfCopy configuration];
            cachedCloudState2 = [configuration5 cachedCloudState];
            v94 = v29;
            containerIdentifier = [v29 containerIdentifier];
            v117 = 0;
            v37 = [cachedCloudState2 unifiedSyncZoneForContainerID:containerIdentifier error:&v117];
            v38 = v117;

            v39 = v37;
            v93 = v38;
            if (v37 || !v38)
            {
              v42 = v95;
              v41 = v96;
              if (v39)
              {
                v44 = objc_opt_class();
                v116 = 0;
                v91 = v39;
                v45 = [v39 recordsForClass:v44 error:&v116];
                v46 = v116;
                v92 = v45;
                if (v45 || !v46)
                {
                  v89 = v46;
                  if ([v45 count] >= 2)
                  {
                    _HKInitializeLogging();
                    v50 = *MEMORY[0x277CCC328];
                    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
                    {
                      v80 = v50;
                      zoneIdentifier = [v39 zoneIdentifier];
                      *buf = 138543618;
                      *&buf[4] = selfCopy;
                      *&buf[12] = 2114;
                      *&buf[14] = zoneIdentifier;
                      _os_log_fault_impl(&dword_228986000, v80, OS_LOG_TYPE_FAULT, "%{public}@ Retrieved multiple registry records for %{public}@. This is unexpected.", buf, 0x16u);
                    }
                  }

                  firstObject = [v92 firstObject];
                  v51 = objc_opt_class();
                  v115 = 0;
                  v52 = [v91 recordsForClass:v51 error:&v115];
                  v53 = v115;
                  v90 = v52;
                  if (v52 || !v53)
                  {
                    v88 = v53;
                    v56 = [v52 hk_mapToSet:&__block_literal_global_318];
                    if ([v56 intersectsSet:v95])
                    {
                      v87 = v26;
                      v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      v111 = 0u;
                      v112 = 0u;
                      v113 = 0u;
                      v114 = 0u;
                      obj = selfCopy->_storeRecordsToDelete;
                      v58 = [(NSArray *)obj countByEnumeratingWithState:&v111 objects:buf count:16];
                      if (v58)
                      {
                        v59 = v58;
                        v60 = *v112;
                        v98 = *v112;
                        v99 = v56;
                        do
                        {
                          for (j = 0; j != v59; ++j)
                          {
                            if (*v112 != v60)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v62 = *(*(&v111 + 1) + 8 * j);
                            storeIdentifier = [v62 storeIdentifier];
                            if ([v56 containsObject:storeIdentifier])
                            {
                              configuration6 = [(HDCloudSyncOperation *)selfCopy configuration];
                              repository3 = [configuration6 repository];
                              syncIdentityManager = [repository3 syncIdentityManager];
                              [syncIdentityManager currentSyncIdentity];
                              v68 = v67 = v57;
                              identity = [v68 identity];
                              [firstObject removeStoreIdentifier:storeIdentifier ownerIdentifier:v102 syncIdentity:identity];

                              v57 = v67;
                              selfCopy = v97;

                              v56 = v99;
                              recordID = [v62 recordID];
                              [v67 addObject:recordID];

                              v60 = v98;
                            }
                          }

                          v59 = [(NSArray *)obj countByEnumeratingWithState:&v111 objects:buf count:16];
                        }

                        while (v59);
                      }

                      [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
                      v71 = [HDCloudSyncModifyRecordsOperation alloc];
                      configuration7 = [(HDCloudSyncOperation *)selfCopy configuration];
                      if (firstObject)
                      {
                        record = [firstObject record];
                        v119 = record;
                        [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
                        v75 = v74 = v57;
                        v76 = v94;
                        v77 = [(HDCloudSyncModifyRecordsOperation *)v71 initWithConfiguration:configuration7 container:v94 recordsToSave:v75 recordIDsToDelete:v74];

                        v57 = v74;
                      }

                      else
                      {
                        v76 = v94;
                        v77 = [(HDCloudSyncModifyRecordsOperation *)v71 initWithConfiguration:configuration7 container:v94 recordsToSave:MEMORY[0x277CBEBF8] recordIDsToDelete:v57];
                      }

                      v26 = v87;
                      v27 = v85;

                      v108[0] = MEMORY[0x277D85DD0];
                      v108[1] = 3221225472;
                      v108[2] = __72__HDCloudSyncDeleteStoresOperation__deleteUnifiedZoneStoresInContainer___block_invoke_2;
                      v108[3] = &unk_278616348;
                      v109 = v76;
                      v110 = selfCopy;
                      [(HDCloudSyncOperation *)v77 setOnError:v108];
                      v107[0] = MEMORY[0x277D85DD0];
                      v107[1] = 3221225472;
                      v107[2] = __72__HDCloudSyncDeleteStoresOperation__deleteUnifiedZoneStoresInContainer___block_invoke_322;
                      v107[3] = &unk_278613060;
                      v107[4] = selfCopy;
                      [(HDCloudSyncOperation *)v77 setOnSuccess:v107];
                      [(HDCloudSyncOperation *)v77 start];

                      allCKContainers = v86;
                      v42 = v95;
                      v41 = v96;
                    }

                    v54 = v88;
                  }

                  else
                  {
                    v54 = v53;
                    _HKInitializeLogging();
                    v55 = *MEMORY[0x277CCC328];
                    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                    {
                      v82 = v55;
                      zoneIdentifier2 = [v91 zoneIdentifier];
                      *buf = 138543874;
                      *&buf[4] = selfCopy;
                      *&buf[12] = 2114;
                      *&buf[14] = zoneIdentifier2;
                      *&buf[22] = 2114;
                      v121 = v54;
                      _os_log_error_impl(&dword_228986000, v82, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);

                      v42 = v95;
                      v41 = v96;
                    }

                    [(HDCloudSyncOperation *)selfCopy finishWithSuccess:0 error:v54];
                  }

                  v49 = v89;
                }

                else
                {
                  v47 = v46;
                  _HKInitializeLogging();
                  v48 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    v78 = v48;
                    zoneIdentifier3 = [v39 zoneIdentifier];
                    *buf = 138543874;
                    *&buf[4] = selfCopy;
                    *&buf[12] = 2114;
                    *&buf[14] = zoneIdentifier3;
                    *&buf[22] = 2114;
                    v121 = v47;
                    _os_log_error_impl(&dword_228986000, v78, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get registry records for %{public}@, %{public}@", buf, 0x20u);
                  }

                  v49 = v47;
                  [(HDCloudSyncOperation *)selfCopy finishWithSuccess:0 error:v47];
                }

                v39 = v91;
              }
            }

            else
            {
              _HKInitializeLogging();
              v40 = *MEMORY[0x277CCC328];
              v41 = v96;
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                *&buf[4] = selfCopy;
                *&buf[12] = 2114;
                *&buf[14] = v38;
                _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached unified zone, %{public}@", buf, 0x16u);
              }

              [(HDCloudSyncOperation *)selfCopy finishWithSuccess:0 error:v38];
              v42 = v95;
            }

            v43 = v94;
          }

          else
          {
            v42 = [MEMORY[0x277CCA9B8] hk_error:3 class:objc_opt_class() selector:sel__deleteUnifiedZoneStoresInContainer_ format:{@"No cached owner identifier for %@", v29}];
            [(HDCloudSyncOperation *)selfCopy finishWithSuccess:0 error:v42];
            v43 = v29;
            v41 = v96;
          }
        }

        v26 = [allCKContainers countByEnumeratingWithState:&v103 objects:v118 count:16];
      }

      while (v26);
    }

    [(HDSynchronousTaskGroup *)selfCopy->_taskGroup finishTask];
    v84 = selfCopy->_taskGroup;

    [(HDSynchronousTaskGroup *)v84 finishTask];
  }

  else
  {

    [(HDCloudSyncOperation *)selfCopy finishWithSuccess:1 error:0];
  }
}

id __60__HDCloudSyncDeleteStoresOperation__individualZonesToDelete__block_invoke_297(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 zoneType] == 1)
  {
    v21 = 0;
    v4 = [v3 recordsForClass:objc_opt_class() error:&v21];
    v5 = v21;
    v6 = v5;
    if (v4)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (v7)
    {
      if ([v4 count] >= 2)
      {
        _HKInitializeLogging();
        v8 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
        {
          v18 = *(a1 + 32);
          v19 = v8;
          v20 = [v3 zoneIdentifier];
          *buf = 138543618;
          v23 = v18;
          v24 = 2114;
          v25 = v20;
          _os_log_fault_impl(&dword_228986000, v19, OS_LOG_TYPE_FAULT, "%{public}@ Retrieved multiple store records for %{public}@. This is unexpected.", buf, 0x16u);
        }
      }

      v9 = [v4 firstObject];
      v10 = [v9 storeIdentifier];
      if (v10 && [*(a1 + 40) containsObject:v10])
      {
        v11 = [v3 zoneIdentifier];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        v16 = v12;
        v17 = [v3 zoneIdentifier];
        *buf = 138543874;
        v23 = v15;
        v24 = 2114;
        v25 = v17;
        v26 = 2114;
        v27 = v6;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);
      }

      [*(a1 + 32) finishWithSuccess:0 error:v6];
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __72__HDCloudSyncDeleteStoresOperation__deleteUnifiedZoneStoresInContainer___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 containerIdentifier];
    v9 = 138543618;
    v10 = v8;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to delete store records and update registry in container %{public}@: %{public}@", &v9, 0x16u);
  }

  [*(*(a1 + 40) + 104) failTaskWithError:v4];
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  if (success)
  {

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0, errors];
  }

  else
  {
    firstObject = [errors firstObject];
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:firstObject];
  }
}

@end