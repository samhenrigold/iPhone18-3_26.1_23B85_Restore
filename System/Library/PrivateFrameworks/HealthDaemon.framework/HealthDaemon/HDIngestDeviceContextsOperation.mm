@interface HDIngestDeviceContextsOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDIngestDeviceContextsOperation)initWithAccessibilityAssertion:(id)assertion containerIdentifier:(id)identifier;
- (HDIngestDeviceContextsOperation)initWithCoder:(id)coder;
- (id)transactionContext;
@end

@implementation HDIngestDeviceContextsOperation

- (HDIngestDeviceContextsOperation)initWithAccessibilityAssertion:(id)assertion containerIdentifier:(id)identifier
{
  assertionCopy = assertion;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HDIngestDeviceContextsOperation;
  v9 = [(HDIngestDeviceContextsOperation *)&v12 init];
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
  v82 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  v8 = profileCopy;
  v9 = v8;
  selfCopy = self;
  v52 = v8;
  if (!self)
  {

LABEL_44:
    v48 = 0;
    v47 = 0;
    goto LABEL_45;
  }

  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__166;
  v73 = __Block_byref_object_dispose__166;
  v74 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v79 = __Block_byref_object_copy__166;
  v80 = __Block_byref_object_dispose__166;
  v81 = 0;
  v10 = dispatch_semaphore_create(0);
  cloudSyncManager = [v9 cloudSyncManager];
  v62 = MEMORY[0x277D85DD0];
  v63 = 3221225472;
  v64 = __60__HDIngestDeviceContextsOperation__fetchRepositories_error___block_invoke;
  v65 = &unk_2786186B0;
  v67 = buf;
  v68 = &v69;
  v12 = v10;
  v66 = v12;
  [cloudSyncManager cloudSyncRepositoriesForClient:0 completion:&v62];

  v13 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v12, v13))
  {
    v14 = [MEMORY[0x277CCA9B8] hk_error:103 format:@"Timed out waiting to fetch cloud sync repositories"];
    v15 = *(v70 + 40);
    *(v70 + 40) = v14;
  }

  v16 = *(v70 + 40);
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

  obj = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v69, 8);

  if (!obj)
  {
    goto LABEL_44;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = [obj countByEnumeratingWithState:&v58 objects:v77 count:16];
  if (v56)
  {
    v20 = 0;
    v55 = *v59;
    do
    {
      v21 = 0;
      v22 = v20;
      do
      {
        if (*v59 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v58 + 1) + 8 * v21);
        v24 = [[HDCloudSyncCachedCloudState alloc] initWithRepository:v23 accessibilityAssertion:selfCopy->_assertion];
        containerIdentifier = selfCopy->_containerIdentifier;
        v76 = 0;
        v26 = [(HDCloudSyncCachedCloudState *)v24 contextSyncZoneForContainerID:containerIdentifier error:&v76];
        v27 = v76;
        v28 = v27;
        if (v26)
        {
          v29 = 1;
        }

        else
        {
          v29 = v27 == 0;
        }

        if (v29)
        {
          if (v26)
          {
            v30 = objc_opt_class();
            v75 = v28;
            v31 = [v26 recordsForClass:v30 error:&v75];
            v32 = v75;

            v54 = v31 != 0;
            if (v31)
            {
              _HKInitializeLogging();
              v33 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
              {
                v34 = v33;
                v35 = [v31 count];
                v36 = selfCopy->_containerIdentifier;
                *buf = 134218242;
                *&buf[4] = v35;
                *&buf[12] = 2114;
                *&buf[14] = v36;
                _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_DEFAULT, "Fetched %lu context records from the cache from %{public}@", buf, 0x16u);
              }

              v62 = MEMORY[0x277D85DD0];
              v63 = 3221225472;
              v64 = __94__HDIngestDeviceContextsOperation__pullDeviceContextsForProfile_repository_transaction_error___block_invoke;
              v65 = &unk_27862A188;
              v66 = selfCopy;
              v37 = [v31 hk_map:&v62];
              cloudSyncShimProvider = [v23 cloudSyncShimProvider];
              contextSyncShim = [cloudSyncShimProvider contextSyncShim];
              v69 = MEMORY[0x277D85DD0];
              v70 = 3221225472;
              v71 = __94__HDIngestDeviceContextsOperation__pullDeviceContextsForProfile_repository_transaction_error___block_invoke_299;
              v72 = &unk_2786130B0;
              v73 = selfCopy;
              [contextSyncShim ingestRemoteDeviceContexts:v37 completion:&v69];

              v41 = v22;
            }

            else
            {
              v44 = v32;
              v41 = v22;
              if (v44)
              {
                v44 = v44;
                v41 = v44;
              }
            }

            v28 = v32;
          }

          else
          {
            _HKInitializeLogging();
            v42 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v43 = selfCopy->_containerIdentifier;
              *buf = 138543618;
              *&buf[4] = selfCopy;
              *&buf[12] = 2114;
              *&buf[14] = v43;
              _os_log_impl(&dword_228986000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: Context sync zone not present for container identifier: %{public}@", buf, 0x16u);
            }

            v54 = 1;
            v41 = v22;
          }
        }

        else
        {
          v40 = v27;
          v54 = 0;
          v41 = v28;
        }

        v20 = v41;
        ++v21;
        v22 = v20;
      }

      while (v56 != v21);
      v56 = [obj countByEnumeratingWithState:&v58 objects:v77 count:16];
    }

    while (v56);
    if (!v54)
    {
      v45 = v20;
      v20 = v45;
      if (v45)
      {
        if (error)
        {
          v46 = v45;
          *error = v20;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v47 = 0;
      goto LABEL_42;
    }
  }

  else
  {
    v20 = 0;
  }

  v47 = 1;
LABEL_42:

  v48 = obj;
LABEL_45:

  return v47;
}

void __60__HDIngestDeviceContextsOperation__fetchRepositories_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

id __94__HDIngestDeviceContextsOperation__pullDeviceContextsForProfile_repository_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0;
  v4 = [v3 deviceContextWithError:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543874;
      v12 = v9;
      v13 = 2114;
      v14 = v3;
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch context from record %{public}@, error: %{public}@", buf, 0x20u);
    }
  }

  return v4;
}

void __94__HDIngestDeviceContextsOperation__pullDeviceContextsForProfile_repository_transaction_error___block_invoke_299(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to ingest remote device context records, error: %{public}@", &v8, 0x16u);
    }
  }
}

- (id)transactionContext
{
  v3 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v4 = [v3 contextWithAccessibilityAssertion:self->_assertion];

  return v4;
}

- (HDIngestDeviceContextsOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContainerIdentifier"];

  v6 = [(HDIngestDeviceContextsOperation *)self initWithAccessibilityAssertion:0 containerIdentifier:v5];
  return v6;
}

@end