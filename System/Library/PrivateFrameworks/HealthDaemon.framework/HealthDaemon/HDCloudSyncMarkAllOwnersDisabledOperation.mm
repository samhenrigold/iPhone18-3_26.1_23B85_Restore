@interface HDCloudSyncMarkAllOwnersDisabledOperation
- (void)main;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncMarkAllOwnersDisabledOperation

- (void)main
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D10BB0]);
  taskGroup = self->_taskGroup;
  self->_taskGroup = v3;

  [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  v79 = 0;
  v7 = [cachedCloudState zonesByIdentifierWithError:&v79];
  v8 = v79;

  if (!v7 && v8)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached zone identifiers, %{public}@", buf, 0x16u);
    }

    selfCopy2 = self;
    v11 = 0;
    v12 = v8;
LABEL_47:
    [(HDCloudSyncOperation *)selfCopy2 finishWithSuccess:v11 error:v12];
    goto LABEL_48;
  }

  if (!v7)
  {
    _HKInitializeLogging();
    v55 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_debug_impl(&dword_228986000, v55, OS_LOG_TYPE_DEBUG, "%{public}@ No cached zones found.", buf, 0xCu);
    }

    selfCopy2 = self;
    v11 = 1;
    v12 = 0;
    goto LABEL_47;
  }

  v58 = v8;
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [v7 allValues];
  v14 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
  v59 = v7;
  if (v14)
  {
    v15 = v14;
    v62 = *v76;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v76 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v75 + 1) + 8 * i);
        v18 = objc_opt_class();
        v74 = 0;
        v19 = [v17 recordsForClass:v18 error:&v74];
        v20 = v74;
        v21 = v20;
        if (v19)
        {
          v22 = 1;
        }

        else
        {
          v22 = v20 == 0;
        }

        if (!v22)
        {
          _HKInitializeLogging();
          v53 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v56 = v53;
            zoneIdentifier = [v17 zoneIdentifier];
            *buf = 138543874;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = zoneIdentifier;
            *&buf[22] = 2114;
            v84 = v21;
            _os_log_error_impl(&dword_228986000, v56, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);
          }

          [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v21];

          goto LABEL_43;
        }

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v23 = v19;
        v24 = [v23 countByEnumeratingWithState:&v70 objects:v81 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v71;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v71 != v26)
              {
                objc_enumerationMutation(v23);
              }

              ownerIdentifier = [*(*(&v70 + 1) + 8 * j) ownerIdentifier];
              [v13 addObject:ownerIdentifier];
            }

            v25 = [v23 countByEnumeratingWithState:&v70 objects:v81 count:16];
          }

          while (v25);
        }

        v7 = v59;
      }

      v15 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  allCKContainers = [repository allCKContainers];

  obja = allCKContainers;
  v32 = [allCKContainers countByEnumeratingWithState:&v66 objects:v80 count:16];
  if (v32)
  {
    v33 = v32;
    v63 = *v67;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v67 != v63)
        {
          objc_enumerationMutation(obja);
        }

        v35 = *(*(&v66 + 1) + 8 * k);
        configuration3 = [(HDCloudSyncOperation *)self configuration];
        repository2 = [configuration3 repository];
        profileIdentifier = [repository2 profileIdentifier];
        v39 = HDDatabaseForContainer(v35, profileIdentifier);

        if ([v39 databaseScope] == 2)
        {
          allValues = [v7 allValues];
          v41 = v35;
          v42 = v13;
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __104__HDCloudSyncMarkAllOwnersDisabledOperation__updatedRecordsForContainer_zones_disabledOwnerIdentifiers___block_invoke;
          v84 = &unk_27862ED60;
          v43 = v41;
          *&v85 = v43;
          *(&v85 + 1) = self;
          v44 = v42;
          v86 = v44;
          v45 = [allValues hk_map:buf];

          if ([v45 count])
          {
            [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
            _HKInitializeLogging();
            v46 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v47 = v46;
              v48 = [v45 count];
              containerIdentifier = [v43 containerIdentifier];
              *buf = 138544130;
              *&buf[4] = self;
              *&buf[12] = 2048;
              *&buf[14] = v48;
              *&buf[22] = 2114;
              v84 = containerIdentifier;
              LOWORD(v85) = 2114;
              *(&v85 + 2) = v45;
              _os_log_impl(&dword_228986000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@: Saving %ld records in %{public}@: %{public}@", buf, 0x2Au);
            }

            v50 = [HDCloudSyncModifyRecordsOperation alloc];
            configuration4 = [(HDCloudSyncOperation *)self configuration];
            v52 = [(HDCloudSyncModifyRecordsOperation *)v50 initWithConfiguration:configuration4 container:v43 recordsToSave:v45 recordIDsToDelete:0];

            v65[0] = MEMORY[0x277D85DD0];
            v65[1] = 3221225472;
            v65[2] = __49__HDCloudSyncMarkAllOwnersDisabledOperation_main__block_invoke;
            v65[3] = &unk_278616348;
            v65[4] = self;
            v65[5] = v43;
            [(HDCloudSyncOperation *)v52 setOnError:v65];
            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = __49__HDCloudSyncMarkAllOwnersDisabledOperation_main__block_invoke_296;
            v64[3] = &unk_278614BA8;
            v64[4] = self;
            v64[5] = v43;
            [(HDCloudSyncOperation *)v52 setOnSuccess:v64];
            [(HDCloudSyncOperation *)v52 start];

            v7 = v59;
          }
        }
      }

      v33 = [obja countByEnumeratingWithState:&v66 objects:v80 count:16];
    }

    while (v33);
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
LABEL_43:
  v8 = v58;

LABEL_48:
}

void __49__HDCloudSyncMarkAllOwnersDisabledOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = [v6 containerIdentifier];
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = v4;
    _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed updating records in %{public}@: %{public}@", &v10, 0x20u);
  }

  [*(*(a1 + 32) + 104) failTaskWithError:v4];
}

uint64_t __49__HDCloudSyncMarkAllOwnersDisabledOperation_main__block_invoke_296(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 containerIdentifier];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished saving updated records in %{public}@", &v8, 0x16u);
  }

  return [*(*(a1 + 32) + 104) finishTask];
}

id __104__HDCloudSyncMarkAllOwnersDisabledOperation__updatedRecordsForContainer_zones_disabledOwnerIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 zoneIdentifier];
  v5 = [v4 containerIdentifier];
  v6 = [*(a1 + 32) containerIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [v3 zoneIdentifier];
  v9 = [v8 type];

  if (v9 == 2)
  {
    v20 = *(a1 + 32);
    v11 = *(a1 + 40);
    v21 = *(a1 + 48);
    v13 = v3;
    v22 = v20;
    v23 = v21;
    if (v11)
    {
      v60 = 0;
      v24 = [v13 recordsForClass:objc_opt_class() error:&v60];
      v25 = v60;
      v26 = v25;
      if (v24 || !v25)
      {
        if ([v24 count] >= 2)
        {
          _HKInitializeLogging();
          v33 = *MEMORY[0x277CCC2E0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_FAULT))
          {
            v53 = v33;
            [v13 zoneIdentifier];
            v55 = v54 = v23;
            *buf = 138543874;
            v62 = v11;
            v63 = 2114;
            v64 = v22;
            v65 = 2114;
            v66 = v55;
            _os_log_fault_impl(&dword_228986000, v53, OS_LOG_TYPE_FAULT, "%{public}@ Fetched multiple Registry records from the cached container %{public}@, zone %{public}@. This is unexpected", buf, 0x20u);

            v23 = v54;
          }
        }

        v34 = [v24 firstObject];
        if (!v34)
        {
          v57 = [HDCloudSyncRegistryRecord alloc];
          v58 = [v13 zoneIdentifier];
          [v58 zoneIdentifier];
          v56 = v59 = v22;
          v35 = [v11 configuration];
          v36 = [v35 repository];
          [v36 profile];
          v38 = v37 = v23;
          v39 = [v38 profileIdentifier];
          v34 = [(HDCloudSyncRegistryRecord *)v57 initInZone:v56 ownerProfileIdentifier:v39];

          v23 = v37;
          v22 = v59;
        }

        v40 = [v34 disabledOwnerIdentifiers];
        v41 = [v40 setByAddingObjectsFromSet:v23];
        [v34 setDisabledOwnerIdentifiers:v41];

        v11 = [v34 record];
      }

      else
      {
        _HKInitializeLogging();
        v27 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v48 = v27;
          [v13 zoneIdentifier];
          v50 = v49 = v23;
          *buf = 138543874;
          v62 = v11;
          v63 = 2114;
          v64 = v50;
          v65 = 2114;
          v66 = v26;
          _os_log_error_impl(&dword_228986000, v48, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get Registry records for %{public}@, %{public}@", buf, 0x20u);

          v23 = v49;
        }

        [v11 finishWithSuccess:0 error:v26];
        v11 = 0;
      }
    }

    goto LABEL_34;
  }

  if (v9)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_35;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = v3;
  v14 = v10;
  v15 = v12;
  if (v11)
  {
    v60 = 0;
    v16 = [v13 recordsForClass:objc_opt_class() error:&v60];
    v17 = v60;
    v18 = v17;
    if (v16 || !v17)
    {
      if ([v16 count] >= 2)
      {
        _HKInitializeLogging();
        v28 = *MEMORY[0x277CCC2E0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_FAULT))
        {
          v51 = v28;
          v52 = [v13 zoneIdentifier];
          *buf = 138543874;
          v62 = v11;
          v63 = 2114;
          v64 = v14;
          v65 = 2114;
          v66 = v52;
          _os_log_fault_impl(&dword_228986000, v51, OS_LOG_TYPE_FAULT, "%{public}@ Fetched multiple Master records from the cached container %{public}@, zone %{public}@. This is unexpected", buf, 0x20u);
        }
      }

      v29 = [v16 firstObject];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 disabledOwnerIdentifiers];
        v32 = [v31 setByAddingObjectsFromSet:v15];
        [v30 setDisabledOwnerIdentifiers:v32];
      }

      else
      {
        v42 = [HDCloudSyncMasterRecord alloc];
        v43 = [v13 zoneIdentifier];
        v44 = [v43 zoneIdentifier];
        v30 = [(HDCloudSyncMasterRecord *)v42 initInZone:v44 disabledOwnerIdentifiers:v15];
      }

      v11 = [v30 record];
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v46 = v19;
        v47 = [v13 zoneIdentifier];
        *buf = 138543874;
        v62 = v11;
        v63 = 2114;
        v64 = v47;
        v65 = 2114;
        v66 = v18;
        _os_log_error_impl(&dword_228986000, v46, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get Master records for %{public}@, %{public}@", buf, 0x20u);
      }

      [v11 finishWithSuccess:0 error:v18];
      v11 = 0;
    }
  }

LABEL_34:
LABEL_35:

  return v11;
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end