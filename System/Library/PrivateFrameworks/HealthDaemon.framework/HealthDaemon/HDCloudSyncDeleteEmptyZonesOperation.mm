@interface HDCloudSyncDeleteEmptyZonesOperation
- (HDCloudSyncDeleteEmptyZonesOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (void)main;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncDeleteEmptyZonesOperation

- (HDCloudSyncDeleteEmptyZonesOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v9.receiver = self;
  v9.super_class = HDCloudSyncDeleteEmptyZonesOperation;
  v4 = [(HDCloudSyncOperation *)&v9 initWithConfiguration:configuration cloudState:state];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v5->_taskGroup;
    v5->_taskGroup = v6;

    [(HDSynchronousTaskGroup *)v5->_taskGroup setDelegate:v5];
  }

  return v5;
}

- (void)main
{
  selfCopy = self;
  v101 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  allCKContainers = [repository allCKContainers];

  v6 = [allCKContainers count];
  progress = [(HDCloudSyncOperation *)selfCopy progress];
  [progress setTotalUnitCount:v6];

  [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v8 = allCKContainers;
  v67 = [v8 countByEnumeratingWithState:&v72 objects:v93 count:16];
  if (v67)
  {
    v66 = *v73;
    *&v9 = 138543874;
    v57 = v9;
    v58 = v8;
    v59 = selfCopy;
    do
    {
      v10 = 0;
      do
      {
        if (*v73 != v66)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v72 + 1) + 8 * v10);
        configuration2 = [(HDCloudSyncOperation *)selfCopy configuration];
        cachedCloudState = [configuration2 cachedCloudState];
        containerIdentifier = [v11 containerIdentifier];
        v81 = 0;
        v15 = [cachedCloudState zonesForContainerID:containerIdentifier error:&v81];
        v16 = v81;

        if (v15)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16 == 0;
        }

        if (v17)
        {
          goto LABEL_13;
        }

        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v96 = selfCopy;
          v97 = 2114;
          v98 = v16;
          _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones, %{public}@", buf, 0x16u);
        }

        configuration3 = [(HDCloudSyncOperation *)selfCopy configuration];
        repository2 = [configuration3 repository];
        primaryCKContainer = [repository2 primaryCKContainer];

        if (primaryCKContainer == v11)
        {
          [(HDCloudSyncOperation *)selfCopy finishWithSuccess:0 error:v16];
        }

        else
        {
LABEL_13:
          v68 = v16;
          v70 = v10;
          v71 = v11;
          v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v69 = v15;
          configuration4 = v15;
          v24 = [configuration4 countByEnumeratingWithState:&v77 objects:v94 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v78;
            while (2)
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v78 != v26)
                {
                  objc_enumerationMutation(configuration4);
                }

                v28 = *(*(&v77 + 1) + 8 * i);
                if ([v28 zoneType] == 1)
                {
                  v76 = 0;
                  v29 = [v28 containsRecordsWithError:&v76];
                  repository3 = v76;
                  if (v29 == 2)
                  {
                    zoneIdentifier = [v28 zoneIdentifier];
                    [v22 addObject:zoneIdentifier];
                  }

                  else if (!v29)
                  {
                    _HKInitializeLogging();
                    v52 = *MEMORY[0x277CCC328];
                    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                    {
                      v54 = v52;
                      zoneIdentifier2 = [v28 zoneIdentifier];
                      *buf = v57;
                      v96 = selfCopy;
                      v97 = 2114;
                      v98 = zoneIdentifier2;
                      v99 = 2114;
                      v100 = repository3;
                      _os_log_error_impl(&dword_228986000, v54, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch status of containsRecords for %{public}@, %{public}@", buf, 0x20u);
                    }

                    goto LABEL_37;
                  }
                }
              }

              v25 = [configuration4 countByEnumeratingWithState:&v77 objects:v94 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          v11 = v71;
          if ([v22 count])
          {
            configuration4 = [(HDCloudSyncOperation *)selfCopy configuration];
            repository3 = [configuration4 repository];
            profileIdentifier = [repository3 profileIdentifier];
            v32 = HDDatabaseForContainer(v71, profileIdentifier);
            v33 = v22;
            v61 = v71;
            v63 = v32;
            [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
            v34 = objc_alloc_init(MEMORY[0x277CBC3A0]);
            [v34 setDesiredKeys:MEMORY[0x277CBEBF8]];
            [v34 setResultsLimit:1];
            [v34 setPreviousServerChangeToken:0];
            v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            v92 = 0u;
            v36 = v33;
            v37 = [v36 countByEnumeratingWithState:&v89 objects:buf count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v90;
              do
              {
                for (j = 0; j != v38; ++j)
                {
                  if (*v90 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  zoneIdentifier3 = [*(*(&v89 + 1) + 8 * j) zoneIdentifier];
                  [v35 setObject:v34 forKeyedSubscript:zoneIdentifier3];
                }

                v38 = [v36 countByEnumeratingWithState:&v89 objects:buf count:16];
              }

              while (v38);
            }

            v42 = objc_alloc(MEMORY[0x277CBC3B8]);
            allKeys = [v35 allKeys];
            v44 = [v42 initWithRecordZoneIDs:allKeys configurationsByRecordZoneID:v35];

            v45 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v87[0] = MEMORY[0x277D85DD0];
            v87[1] = 3221225472;
            v87[2] = __104__HDCloudSyncDeleteEmptyZonesOperation__validateZonesAreEmptyWithDeletionCandidates_container_database___block_invoke;
            v87[3] = &unk_278627F38;
            selfCopy = v59;
            v87[4] = v59;
            v46 = v45;
            v88 = v46;
            [v44 setRecordWasChangedBlock:v87];
            [v44 setRecordZoneFetchCompletionBlock:&__block_literal_global_305_2];
            v82[0] = MEMORY[0x277D85DD0];
            v82[1] = 3221225472;
            v82[2] = __104__HDCloudSyncDeleteEmptyZonesOperation__validateZonesAreEmptyWithDeletionCandidates_container_database___block_invoke_2;
            v82[3] = &unk_278627FA8;
            v82[4] = v59;
            v62 = v61;
            v83 = v62;
            v47 = v63;
            v84 = v47;
            v85 = v46;
            v64 = v36;
            v86 = v64;
            v60 = v46;
            [v44 setFetchRecordZoneChangesCompletionBlock:v82];
            configuration5 = [(HDCloudSyncOperation *)v59 configuration];
            cachedCloudState2 = [configuration5 cachedCloudState];
            [cachedCloudState2 setOperationCountForAnalytics:{objc_msgSend(cachedCloudState2, "operationCountForAnalytics") + 1}];

            configuration6 = [(HDCloudSyncOperation *)v59 configuration];
            operationGroup = [configuration6 operationGroup];
            [v44 setGroup:operationGroup];

            [v47 addOperation:v44];
            v8 = v58;
LABEL_37:
            v11 = v71;
          }

          v15 = v69;
          v10 = v70;
          v16 = v68;
        }

        ++v10;
      }

      while (v10 != v67);
      v56 = [v8 countByEnumeratingWithState:&v72 objects:v93 count:16];
      v67 = v56;
    }

    while (v56);
  }

  [(HDSynchronousTaskGroup *)selfCopy->_taskGroup finishTask];
}

void __77__HDCloudSyncDeleteEmptyZonesOperation__deleteEmptyZones_container_database___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [*(a1 + 32) containerIdentifier];
  v5 = [*(a1 + 40) configuration];
  v6 = [v5 repository];
  v7 = [v6 primaryCKContainer];
  v8 = [v7 containerIdentifier];
  v9 = [v4 isEqualToString:v8];

  v10 = *(*(a1 + 40) + 112);
  if (v9)
  {
    [v10 failTaskWithError:v11];
  }

  else
  {
    [v10 finishTask];
  }
}

void __104__HDCloudSyncDeleteEmptyZonesOperation__validateZonesAreEmptyWithDeletionCandidates_container_database___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    os_unfair_lock_lock((*(a1 + 32) + 104));
    v8 = *(a1 + 40);
    v9 = [v6 recordID];
    v10 = [v9 zoneID];
    [v8 addObject:v10];

    os_unfair_lock_unlock((*(a1 + 32) + 104));
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 138543618;
      v14 = v12;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching record change %{public}@.", &v13, 0x16u);
    }
  }
}

void __104__HDCloudSyncDeleteEmptyZonesOperation__validateZonesAreEmptyWithDeletionCandidates_container_database___block_invoke_2(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) updateCompletedProgressCount:1];
  if (v3)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = v4;
      v8 = [v6 containerIdentifier];
      *buf = 138543874;
      *&buf[4] = v5;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      *&buf[22] = 2114;
      v63 = v3;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetch record zone changes failed for container %{public}@: %{public}@", buf, 0x20u);
    }

    v9 = [*(a1 + 40) containerIdentifier];
    v10 = [*(a1 + 32) configuration];
    v11 = [v10 repository];
    v12 = [v11 primaryCKContainer];
    v13 = [v12 containerIdentifier];
    v14 = [v9 isEqualToString:v13];

    if (v14)
    {
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __104__HDCloudSyncDeleteEmptyZonesOperation__validateZonesAreEmptyWithDeletionCandidates_container_database___block_invoke_306;
      v56[3] = &unk_278627F80;
      v57 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16 = *(a1 + 32);
      v58 = v15;
      v59 = v16;
      [v3 hd_enumerateCloudKitPartialErrorsByKeyWithHandler:v56];
      [*(*(a1 + 32) + 112) failTaskWithError:v3];

      v17 = v57;
LABEL_23:

      goto LABEL_24;
    }

    [*(*(a1 + 32) + 112) finishTask];
  }

  else
  {
    if (![*(a1 + 56) count])
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __104__HDCloudSyncDeleteEmptyZonesOperation__validateZonesAreEmptyWithDeletionCandidates_container_database___block_invoke_314;
      v50[3] = &unk_278616300;
      v33 = *(a1 + 64);
      v51 = *(a1 + 56);
      v34 = [v33 hk_filter:v50];
      _HKInitializeLogging();
      v35 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(a1 + 32);
        v37 = v35;
        v38 = [v34 count];
        v39 = [*(a1 + 40) containerIdentifier];
        *buf = 138543874;
        *&buf[4] = v36;
        *&buf[12] = 2048;
        *&buf[14] = v38;
        *&buf[22] = 2114;
        v63 = v39;
        _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@: Confirmed %ld empty zones in container %{public}@", buf, 0x20u);
      }

      v40 = *(a1 + 32);
      v41 = *(a1 + 40);
      if (v40)
      {
        v42 = [v34 hk_map:&__block_literal_global_186];
        [v40[14] beginTask];
        v43 = [HDCloudSyncModifyRecordZonesOperation alloc];
        v44 = [v40 configuration];
        v45 = [(HDCloudSyncModifyRecordZonesOperation *)v43 initWithConfiguration:v44 container:v41 recordZonesToSave:0 recordZoneIDsToDelete:v42];

        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __77__HDCloudSyncDeleteEmptyZonesOperation__deleteEmptyZones_container_database___block_invoke_2;
        v63 = &unk_278616348;
        v64 = v41;
        v65 = v40;
        [(HDCloudSyncOperation *)v45 setOnError:buf];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __77__HDCloudSyncDeleteEmptyZonesOperation__deleteEmptyZones_container_database___block_invoke_3;
        v60[3] = &unk_278613060;
        v60[4] = v40;
        [(HDCloudSyncOperation *)v45 setOnSuccess:v60];
        [(HDCloudSyncOperation *)v45 start];
      }

      [*(*(a1 + 32) + 112) finishTask];
      v17 = v51;
      goto LABEL_23;
    }

    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v46 = *(a1 + 32);
      v47 = *(a1 + 56);
      *buf = 138543618;
      *&buf[4] = v46;
      *&buf[12] = 2114;
      *&buf[14] = v47;
      _os_log_fault_impl(&dword_228986000, v18, OS_LOG_TYPE_FAULT, "%{public}@ Something went wrong. Cache incorrectly claims to have empty zones %{public}@", buf, 0x16u);
    }

    v49 = [MEMORY[0x277CCA9B8] hk_error:725 format:{@"Cache incorrectly claims to have empty zones %@", *(a1 + 56)}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = *(a1 + 56);
    v19 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v53;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v53 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v52 + 1) + 8 * i);
          v24 = [HDCloudSyncZoneIdentifier alloc];
          v25 = [*(a1 + 40) containerIdentifier];
          v26 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v24, "initForZone:container:scope:", v23, v25, [*(a1 + 48) databaseScope]);

          v27 = [HDCloudSyncCachedZone alloc];
          v28 = [*(a1 + 32) configuration];
          v29 = [v28 repository];
          v30 = [*(a1 + 32) configuration];
          v31 = [v30 accessibilityAssertion];
          v32 = [(HDCloudSyncCachedZone *)v27 initForZoneIdentifier:v26 repository:v29 accessibilityAssertion:v31];

          [v32 handleCloudError:v49 operation:*(a1 + 32) container:*(a1 + 40) database:*(a1 + 48)];
        }

        v20 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v20);
    }

    [*(*(a1 + 32) + 112) failTaskWithError:v49];
    v3 = 0;
  }

LABEL_24:
}

void __104__HDCloudSyncDeleteEmptyZonesOperation__validateZonesAreEmptyWithDeletionCandidates_container_database___block_invoke_306(id *a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [HDCloudSyncZoneIdentifier alloc];
  v7 = [a1[4] containerIdentifier];
  v8 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v6, "initForZone:container:scope:", v15, v7, [a1[5] databaseScope]);

  v9 = [HDCloudSyncCachedZone alloc];
  v10 = [a1[6] configuration];
  v11 = [v10 repository];
  v12 = [a1[6] configuration];
  v13 = [v12 accessibilityAssertion];
  v14 = [(HDCloudSyncCachedZone *)v9 initForZoneIdentifier:v8 repository:v11 accessibilityAssertion:v13];

  [v14 handleCloudError:v5 operation:a1[6] container:a1[4] database:a1[5]];
}

uint64_t __104__HDCloudSyncDeleteEmptyZonesOperation__validateZonesAreEmptyWithDeletionCandidates_container_database___block_invoke_314(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 zoneIdentifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end