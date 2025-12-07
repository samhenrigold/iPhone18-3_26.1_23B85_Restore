@interface HDIngestDeviceKeyValueEntriesOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDIngestDeviceKeyValueEntriesOperation)initWithAccessibilityAssertion:(id)assertion containerIdentifier:(id)identifier;
- (HDIngestDeviceKeyValueEntriesOperation)initWithCoder:(id)coder;
- (id)transactionContext;
@end

@implementation HDIngestDeviceKeyValueEntriesOperation

- (HDIngestDeviceKeyValueEntriesOperation)initWithAccessibilityAssertion:(id)assertion containerIdentifier:(id)identifier
{
  assertionCopy = assertion;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HDIngestDeviceKeyValueEntriesOperation;
  v9 = [(HDIngestDeviceKeyValueEntriesOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assertion, assertion);
    objc_storeStrong(&v10->_containerIdentifier, identifier);
  }

  return v10;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v96 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  v8 = profileCopy;
  v9 = v8;
  selfCopy = self;
  v60 = v8;
  if (!self)
  {

LABEL_47:
    v54 = 0;
    v53 = 0;
    goto LABEL_48;
  }

  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__35;
  v83 = __Block_byref_object_dispose__35;
  v84 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__35;
  v76 = __Block_byref_object_dispose__35;
  v77 = 0;
  v10 = dispatch_semaphore_create(0);
  cloudSyncManager = [v9 cloudSyncManager];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __67__HDIngestDeviceKeyValueEntriesOperation__fetchRepositories_error___block_invoke;
  v88 = &unk_2786186B0;
  v90 = &v72;
  v91 = &v79;
  v12 = v10;
  v89 = v12;
  [cloudSyncManager cloudSyncRepositoriesForClient:0 completion:buf];

  v13 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v12, v13))
  {
    v14 = [MEMORY[0x277CCA9B8] hk_error:103 format:@"Timed out waiting to fetch cloud sync repositories"];
    v15 = v80[5];
    v80[5] = v14;
  }

  v16 = v80[5];
  if (v16)
  {
    v17 = v16;
    v18 = v17;
    if (error)
    {
      v19 = v17;
      *error = v18;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  obj = *(v73 + 40);

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v79, 8);

  if (!obj)
  {
    goto LABEL_47;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v61 = [obj countByEnumeratingWithState:&v67 objects:v86 count:16];
  if (v61)
  {
    v20 = 0;
    v58 = *v68;
    do
    {
      v21 = 0;
      v65 = v20;
      do
      {
        if (*v68 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v67 + 1) + 8 * v21);
        v66 = v65;
        v62 = v60;
        v23 = v22;
        v63 = transactionCopy;
        v79 = 0;
        v80 = &v79;
        v81 = 0x3032000000;
        v82 = __Block_byref_object_copy__35;
        v83 = __Block_byref_object_dispose__35;
        v84 = 0;
        v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v25 = [[HDCloudSyncCachedCloudState alloc] initWithRepository:v23 accessibilityAssertion:selfCopy->_assertion];
        containerIdentifier = selfCopy->_containerIdentifier;
        v27 = (v80 + 5);
        v78 = v80[5];
        v28 = [(HDCloudSyncCachedCloudState *)v25 contextSyncZoneForContainerID:containerIdentifier error:&v78];
        objc_storeStrong(v27, v78);
        if (v28)
        {
          v29 = objc_opt_class();
          v72 = MEMORY[0x277D85DD0];
          v73 = 3221225472;
          v74 = __108__HDIngestDeviceKeyValueEntriesOperation__pullDeviceKeyValueEntriesForProfile_repository_transaction_error___block_invoke;
          v75 = &unk_2786186D8;
          v76 = selfCopy;
          v30 = v24;
          v77 = v30;
          [v28 recordsForClass:v29 epoch:0 error:&v66 enumerationHandler:&v72];
          if ([v30 count])
          {
            v31 = MEMORY[0x277CBEB58];
            v32 = v28;
            v33 = objc_alloc_init(v31);
            v34 = objc_opt_class();
            v85 = 0;
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __81__HDIngestDeviceKeyValueEntriesOperation__fetchRemoteCloudEntriesFromZone_error___block_invoke;
            v88 = &unk_2786186D8;
            v89 = selfCopy;
            v35 = v33;
            v90 = v35;
            v36 = [v32 recordsForClass:v34 epoch:0 error:&v85 enumerationHandler:buf];

            v37 = v85;
            v38 = v37;
            if (v36)
            {
              v39 = v35;
            }

            else
            {
              v42 = v37;
              v43 = v42;
              if (v42)
              {
                v44 = v42;
                v66 = v43;
              }

              _HKInitializeLogging();
              v45 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *v92 = 138543618;
                v93 = selfCopy;
                v94 = 2114;
                v95 = v43;
                _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "%{public}@: Error enumerating over remote key value entries %{public}@", v92, 0x16u);
              }

              v39 = 0;
            }

            v41 = v39 != 0;
            if (v39)
            {
              cloudSyncShimProvider = [v23 cloudSyncShimProvider];
              contextSyncShim = [cloudSyncShimProvider contextSyncShim];
              v71[0] = MEMORY[0x277D85DD0];
              v71[1] = 3221225472;
              v71[2] = __108__HDIngestDeviceKeyValueEntriesOperation__pullDeviceKeyValueEntriesForProfile_repository_transaction_error___block_invoke_300;
              v71[3] = &unk_278618700;
              v71[5] = &v79;
              v71[4] = selfCopy;
              [contextSyncShim updateKeyValuePairsForRemoteEntries:v39 deviceContexts:v30 completion:v71];
            }
          }

          else
          {
            v41 = 1;
          }
        }

        else
        {
          v40 = v80[5];
          if (v40)
          {
            v66 = v40;

            v41 = 0;
          }

          else
          {
            _HKInitializeLogging();
            v48 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v49 = selfCopy->_containerIdentifier;
              *buf = 138543618;
              *&buf[4] = selfCopy;
              *&buf[12] = 2114;
              *&buf[14] = v49;
              _os_log_impl(&dword_228986000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@: Context sync zone not present for container identifier: %{public}@", buf, 0x16u);
            }

            v41 = 1;
          }
        }

        _Block_object_dispose(&v79, 8);
        v20 = v66;

        ++v21;
        v65 = v20;
      }

      while (v61 != v21);
      v50 = [obj countByEnumeratingWithState:&v67 objects:v86 count:16];
      v61 = v50;
    }

    while (v50);
    if (!v41)
    {
      v51 = v20;
      v20 = v51;
      if (v51)
      {
        if (error)
        {
          v52 = v51;
          *error = v20;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v53 = 0;
      goto LABEL_45;
    }
  }

  else
  {
    v20 = 0;
  }

  v53 = 1;
LABEL_45:

  v54 = obj;
LABEL_48:

  return v53;
}

void __67__HDIngestDeviceKeyValueEntriesOperation__fetchRepositories_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t __108__HDIngestDeviceKeyValueEntriesOperation__pullDeviceKeyValueEntriesForProfile_repository_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0;
  v4 = [v3 deviceContextWithError:&v11];
  v5 = v11;
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v10 = [v3 recordID];
      *buf = 138543874;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error creating device context from record(%{public}@) %{public}@", buf, 0x20u);
    }
  }

  return 1;
}

void __108__HDIngestDeviceKeyValueEntriesOperation__pullDeviceKeyValueEntriesForProfile_repository_transaction_error___block_invoke_300(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = v5;
    objc_storeStrong((v7 + 40), a3);
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = *(*(*(a1 + 40) + 8) + 40);
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v11;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update device key value pairs: %{public}@", &v12, 0x16u);
    }
  }
}

uint64_t __81__HDIngestDeviceKeyValueEntriesOperation__fetchRemoteCloudEntriesFromZone_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v17 = 0;
  v7 = [v6 deviceKeyValueEntry:&v17];
  v8 = v17;
  v9 = v8;
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
  }

  else
  {
    v10 = v8;
    if (v10)
    {
      if (a4)
      {
        v11 = v10;
        *a4 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = v12;
      v16 = [v6 recordID];
      *buf = 138543874;
      v19 = v14;
      v20 = 2114;
      v21 = v16;
      v22 = 2114;
      v23 = v10;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching key value entry for remote record(%{public}@) during deleting local entries %{public}@", buf, 0x20u);
    }
  }

  return 1;
}

- (id)transactionContext
{
  v3 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v4 = [v3 contextWithAccessibilityAssertion:self->_assertion];

  return v4;
}

- (HDIngestDeviceKeyValueEntriesOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContainerIdentifier"];

  v6 = [(HDIngestDeviceKeyValueEntriesOperation *)self initWithAccessibilityAssertion:0 containerIdentifier:v5];
  return v6;
}

@end