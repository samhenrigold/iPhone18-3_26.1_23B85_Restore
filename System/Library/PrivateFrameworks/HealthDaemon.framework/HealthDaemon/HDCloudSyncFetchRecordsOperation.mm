@interface HDCloudSyncFetchRecordsOperation
- (HDCloudSyncFetchRecordsOperation)initWithConfiguration:(id)configuration container:(id)container recordIDs:(id)ds;
- (void)_fetchRecordsWithIDs:(void *)ds container:(void *)container database:(void *)database completion:;
- (void)main;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncFetchRecordsOperation

- (HDCloudSyncFetchRecordsOperation)initWithConfiguration:(id)configuration container:(id)container recordIDs:(id)ds
{
  containerCopy = container;
  dsCopy = ds;
  v16.receiver = self;
  v16.super_class = HDCloudSyncFetchRecordsOperation;
  v11 = [(HDCloudSyncOperation *)&v16 initWithConfiguration:configuration cloudState:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_container, container);
    objc_storeStrong(&v12->_recordIDs, ds);
    v12->_lock._os_unfair_lock_opaque = 0;
    v13 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v12->_taskGroup;
    v12->_taskGroup = v13;

    [(HDSynchronousTaskGroup *)v12->_taskGroup setDelegate:v12];
  }

  return v12;
}

- (void)main
{
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  recordIDs = self->_recordIDs;
  container = self->_container;
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  profileIdentifier = [repository profileIdentifier];
  v8 = HDDatabaseForContainer(container, profileIdentifier);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__HDCloudSyncFetchRecordsOperation_main__block_invoke;
  v9[3] = &unk_278613968;
  v9[4] = self;
  [(HDCloudSyncFetchRecordsOperation *)&self->super.super.isa _fetchRecordsWithIDs:container container:v8 database:v9 completion:?];
}

- (void)_fetchRecordsWithIDs:(void *)ds container:(void *)container database:(void *)database completion:
{
  v9 = a2;
  dsCopy = ds;
  containerCopy = container;
  databaseCopy = database;
  if (self)
  {
    if ([v9 count])
    {
      v13 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:v9];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __87__HDCloudSyncFetchRecordsOperation__fetchRecordsWithIDs_container_database_completion___block_invoke;
      v25[3] = &unk_2786240B8;
      v25[4] = self;
      v14 = dsCopy;
      v26 = v14;
      v15 = containerCopy;
      v27 = v15;
      [v13 setPerRecordCompletionBlock:v25];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __87__HDCloudSyncFetchRecordsOperation__fetchRecordsWithIDs_container_database_completion___block_invoke_298;
      v21[3] = &unk_2786240E0;
      v21[4] = self;
      v22 = v14;
      v16 = v15;
      v23 = v16;
      v24 = databaseCopy;
      [v13 setFetchRecordsCompletionBlock:v21];
      [self[15] beginTask];
      configuration = [self configuration];
      cachedCloudState = [configuration cachedCloudState];
      [cachedCloudState setOperationCountForAnalytics:{objc_msgSend(cachedCloudState, "operationCountForAnalytics") + 1}];

      configuration2 = [self configuration];
      operationGroup = [configuration2 operationGroup];
      [v13 setGroup:operationGroup];

      [v16 hd_addOperation:v13];
    }

    else
    {
      databaseCopy[2](databaseCopy);
    }
  }
}

void __87__HDCloudSyncFetchRecordsOperation__fetchRecordsWithIDs_container_database_completion___block_invoke(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (!a2 && [v6 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:26])
  {
    v8 = [a1[4] configuration];
    v9 = [v8 cachedCloudState];
    v10 = [a1[5] containerIdentifier];
    v11 = [a1[6] databaseScope];
    v26 = 0;
    v12 = [v9 resetServerChangeTokenForContainerIdentifier:v10 databaseScope:v11 error:&v26];
    v13 = v26;

    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    v15 = *MEMORY[0x277CCC328];
    if (v12)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = a1[4];
        *buf = 138543618;
        v28 = v16;
        v29 = 2114;
        v30 = v7;
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Reset cache server change token after encountering unexpected zone-not-found error during record fetch (%{public}@)", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v25 = a1[4];
      *buf = 138543874;
      v28 = v25;
      v29 = 2114;
      v30 = v7;
      v31 = 2114;
      v32 = v13;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: FAILED attempting reset of cache server change token after encountering unexpected zone-not-found error during record fetch (%{public}@): %{public}@", buf, 0x20u);
    }

    v17 = [a1[4] configuration];
    v18 = [v17 repository];
    v19 = [v18 profile];
    v20 = [v19 daemon];
    v21 = [v20 analyticsSubmissionCoordinator];
    v22 = a1[4];
    v23 = [a1[5] containerIdentifier];
    v24 = HDCKDatabaseScopeToString([a1[6] databaseScope]);
    [v21 cloudCache_reportCacheDiscrepancyForOperation:v22 reason:@"Zone Not Found" containerIdentifier:v23 databaseScope:v24 error:v7];
  }
}

void __87__HDCloudSyncFetchRecordsOperation__fetchRecordsWithIDs_container_database_completion___block_invoke_298(uint64_t a1, void *a2, void *a3)
{
  v79 = *MEMORY[0x277D85DE8];
  v61 = a2;
  v56 = a3;
  if (v56)
  {
    _HKInitializeLogging();
    v5 = MEMORY[0x277CCC328];
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v52 = *(a1 + 32);
      v51 = *(a1 + 40);
      v53 = *(a1 + 48);
      v54 = v6;
      [v53 databaseScope];
      v55 = CKDatabaseScopeString();
      *buf = 138544130;
      *&buf[4] = v52;
      *&buf[12] = 2114;
      *&buf[14] = v51;
      *&buf[22] = 2114;
      v76 = v55;
      LOWORD(v77) = 2114;
      *(&v77 + 2) = v56;
      _os_log_error_impl(&dword_228986000, v54, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch records in container %{public}@ database %{public}@ with error %{public}@", buf, 0x2Au);
    }

    if ([v56 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:27])
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 128);
      v9 = *(v7 + 104);
      v11 = *(a1 + 48);
      v10 = *(a1 + 56);
      v59 = v56;
      v12 = v8;
      v13 = v9;
      v14 = v11;
      v15 = v10;
      _HKInitializeLogging();
      v16 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [v12 count];
        *buf = 138543618;
        *&buf[4] = v7;
        *&buf[12] = 2048;
        *&buf[14] = v18;
        _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Limit exceeded fectching %ld records. Splitting record request in half and re-fetching.", buf, 0x16u);
      }

      if ([v12 count] < 2)
      {
        [*(v7 + 120) failTaskWithError:v59];
      }

      else
      {
        v19 = [v12 count] >> 1;
        v20 = [v12 subarrayWithRange:{0, v19}];
        v21 = [v12 subarrayWithRange:{v19, objc_msgSend(v12, "count") - v19}];
        v71[0] = 0;
        v71[1] = v71;
        v71[2] = 0x2020000000;
        v71[3] = 2;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __117__HDCloudSyncFetchRecordsOperation__receivedLimitExceededError_fetchingRecordsWithIDs_container_database_completion___block_invoke;
        v76 = &unk_278620590;
        *&v77 = v7;
        v78 = v71;
        v22 = v15;
        *(&v77 + 1) = v22;
        [(HDCloudSyncFetchRecordsOperation *)v7 _fetchRecordsWithIDs:v20 container:v13 database:v14 completion:buf];
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __117__HDCloudSyncFetchRecordsOperation__receivedLimitExceededError_fetchingRecordsWithIDs_container_database_completion___block_invoke_2;
        v68[3] = &unk_278620590;
        v68[4] = v7;
        v70 = v71;
        v69 = v22;
        [(HDCloudSyncFetchRecordsOperation *)v7 _fetchRecordsWithIDs:v21 container:v13 database:v14 completion:v68];
        [*(v7 + 120) finishTask];

        _Block_object_dispose(v71, 8);
      }

      goto LABEL_35;
    }

    v23 = [v56 hd_errorSurfacingFatalCloudKitPartialFailure];
    if (v23)
    {
      (*(*(a1 + 56) + 16))();
      [*(*(a1 + 32) + 120) failTaskWithError:v23];

      goto LABEL_35;
    }
  }

  v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = [v61 allKeys];
  v24 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v24)
  {
    v60 = *v65;
    while (2)
    {
      v25 = 0;
      do
      {
        if (*v65 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v64 + 1) + 8 * v25);
        v27 = [HDCloudSyncZoneIdentifier alloc];
        v28 = [v26 zoneID];
        v29 = [*(*(a1 + 32) + 104) containerIdentifier];
        v30 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v27, "initForZone:container:scope:", v28, v29, [*(a1 + 48) databaseScope]);

        v31 = [HDCloudSyncCachedZone alloc];
        v32 = [*(a1 + 32) configuration];
        v33 = [v32 repository];
        v34 = [*(a1 + 32) configuration];
        v35 = [v34 accessibilityAssertion];
        v36 = [(HDCloudSyncCachedZone *)v31 initForZoneIdentifier:v30 repository:v33 accessibilityAssertion:v35];

        v37 = [v61 objectForKeyedSubscript:v26];
        v63 = 0;
        LODWORD(v34) = [v36 addRecord:v37 error:&v63];
        v38 = v63;

        if (!v34)
        {
          (*(*(a1 + 56) + 16))();
          [*(*(a1 + 32) + 120) failTaskWithError:v38];

          goto LABEL_34;
        }

        os_unfair_lock_lock((*(a1 + 32) + 112));
        v39 = *(*(a1 + 32) + 136);
        if (v39)
        {
          v40 = [v61 objectForKeyedSubscript:v26];
          v62 = v38;
          v41 = (*(v39 + 16))(v39, v40, &v62);
          v42 = v62;

          if ((v41 & 1) == 0)
          {
            [v57 addObject:v42];
          }
        }

        else
        {
          v42 = v38;
        }

        os_unfair_lock_unlock((*(a1 + 32) + 112));

        ++v25;
      }

      while (v24 != v25);
      v24 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  if ([v57 count])
  {
    v43 = [v57 count];
    v44 = MEMORY[0x277CCA7E8];
    if (v43 != 1)
    {
      v44 = MEMORY[0x277CCA578];
    }

    v45 = *v44;
    if ([v57 count] == 1)
    {
      v46 = [v57 firstObject];
    }

    else
    {
      v46 = v57;
    }

    v47 = v46;
    v72[0] = *MEMORY[0x277CCA450];
    v72[1] = v45;
    v73[0] = @"Error processing fetched records";
    v73[1] = v46;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
    (*(*(a1 + 56) + 16))();
    v49 = *(*(a1 + 32) + 120);
    v50 = [MEMORY[0x277CCA9B8] hk_error:100 userInfo:v48];
    [v49 failTaskWithError:v50];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    [*(*(a1 + 32) + 120) finishTask];
  }

LABEL_34:

LABEL_35:
}

void __117__HDCloudSyncFetchRecordsOperation__receivedLimitExceededError_fetchingRecordsWithIDs_container_database_completion___block_invoke(void *a1)
{
  os_unfair_lock_lock((a1[4] + 112));
  v2 = --*(*(a1[6] + 8) + 24);
  os_unfair_lock_unlock((a1[4] + 112));
  if (!v2)
  {
    v3 = *(a1[5] + 16);

    v3();
  }
}

void __117__HDCloudSyncFetchRecordsOperation__receivedLimitExceededError_fetchingRecordsWithIDs_container_database_completion___block_invoke_2(void *a1)
{
  os_unfair_lock_lock((a1[4] + 112));
  v2 = --*(*(a1[6] + 8) + 24);
  os_unfair_lock_unlock((a1[4] + 112));
  if (!v2)
  {
    v3 = *(a1[5] + 16);

    v3();
  }
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end