@interface HDCloudSyncRepairRegistryRecordsOperation
- (HDCloudSyncRepairRegistryRecordsOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (void)main;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncRepairRegistryRecordsOperation

- (HDCloudSyncRepairRegistryRecordsOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v8.receiver = self;
  v8.super_class = HDCloudSyncRepairRegistryRecordsOperation;
  v4 = [(HDCloudSyncOperation *)&v8 initWithConfiguration:configuration cloudState:state];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v4->_taskGroup;
    v4->_taskGroup = v5;

    [(HDSynchronousTaskGroup *)v4->_taskGroup setDelegate:v4];
  }

  return v4;
}

- (void)main
{
  v58 = *MEMORY[0x277D85DE8];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  allCKContainers = [repository allCKContainers];

  obj = allCKContainers;
  v46 = [allCKContainers countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v46)
  {
    v45 = *v48;
    *&v6 = 138543618;
    v43 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v48 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v47 + 1) + 8 * v7);
        [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
        v9 = v8;
        configuration2 = [(HDCloudSyncOperation *)self configuration];
        cachedCloudState = [configuration2 cachedCloudState];
        containerIdentifier = [v9 containerIdentifier];

        v52[0] = 0;
        v13 = [cachedCloudState unifiedSyncZoneForContainerID:containerIdentifier error:v52];
        v14 = v52[0];

        if (v13)
        {
          v15 = objc_opt_class();
          v51 = v14;
          v16 = [v13 recordsForClass:v15 error:&v51];
          v17 = v51;

          if (v16)
          {
            if ([v16 count] >= 2)
            {
              _HKInitializeLogging();
              v18 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
              {
                v39 = v18;
                zoneIdentifier = [v13 zoneIdentifier];
                *buf = 138543874;
                *&buf[4] = self;
                *&buf[12] = 2114;
                *&buf[14] = zoneIdentifier;
                *&buf[22] = 2114;
                v56 = v17;
                _os_log_fault_impl(&dword_228986000, v39, OS_LOG_TYPE_FAULT, "%{public}@ Retrieved multiple registry records for %{public}@, %{public}@", buf, 0x20u);
              }
            }

            if ([v16 count] == 1)
            {
              firstObject = [v16 firstObject];
              v14 = 0;
LABEL_22:

              goto LABEL_27;
            }
          }

          else if (v17)
          {
            _HKInitializeLogging();
            v23 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v41 = v23;
              zoneIdentifier2 = [v13 zoneIdentifier];
              *buf = 138543874;
              *&buf[4] = self;
              *&buf[12] = 2114;
              *&buf[14] = zoneIdentifier2;
              *&buf[22] = 2114;
              v56 = v17;
              _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get registry records for %{public}@, %{public}@", buf, 0x20u);
            }

            v24 = v17;
            firstObject = 0;
            v14 = v17;
            goto LABEL_22;
          }

          v14 = 0;
          firstObject = 0;
          goto LABEL_22;
        }

        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC328];
        v21 = *MEMORY[0x277CCC328];
        if (v14)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = v43;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v14;
            _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get unified zone %{public}@", buf, 0x16u);
          }

          v22 = v14;
        }

        else
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = self;
            _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Unified zone does not exist.", buf, 0xCu);
          }

          v14 = 0;
        }

        firstObject = 0;
LABEL_27:

        v25 = v14;
        if (!firstObject)
        {
          taskGroup = self->_taskGroup;
          if (v25)
          {
            [(HDSynchronousTaskGroup *)taskGroup failTaskWithError:v25];
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        sharedProfileIdentifier = [firstObject sharedProfileIdentifier];
        type = [sharedProfileIdentifier type];

        if (type == 3)
        {
          taskGroup = self->_taskGroup;
LABEL_32:
          [(HDSynchronousTaskGroup *)taskGroup finishTask];
          goto LABEL_34;
        }

        v29 = MEMORY[0x277CCD7C8];
        uUID = [MEMORY[0x277CCAD78] UUID];
        v31 = [v29 _profileWithUUID:uUID type:3];
        [firstObject setSharedProfileIdentifier:v31];

        record = [firstObject record];
        v53 = record;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
        v34 = v9;
        v35 = v33;
        v36 = [HDCloudSyncModifyRecordsOperation alloc];
        configuration3 = [(HDCloudSyncOperation *)self configuration];
        v38 = [(HDCloudSyncModifyRecordsOperation *)v36 initWithConfiguration:configuration3 container:v34 recordsToSave:v35 recordIDsToDelete:0];

        [(HDCloudSyncModifyRecordsOperation *)v38 setTreatAnyErrorAsFatal:1];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __79__HDCloudSyncRepairRegistryRecordsOperation__modifyRecordsAndFinish_container___block_invoke;
        v56 = &unk_278613088;
        selfCopy = self;
        [(HDCloudSyncOperation *)v38 setOnError:buf];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __79__HDCloudSyncRepairRegistryRecordsOperation__modifyRecordsAndFinish_container___block_invoke_298;
        v52[3] = &unk_278613060;
        v52[4] = self;
        [(HDCloudSyncOperation *)v38 setOnSuccess:v52];
        [(HDCloudSyncOperation *)v38 start];

LABEL_34:
        ++v7;
      }

      while (v46 != v7);
      v46 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v46);
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
}

void __79__HDCloudSyncRepairRegistryRecordsOperation__modifyRecordsAndFinish_container___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update registry records: %{public}@", &v7, 0x16u);
  }

  [*(*(a1 + 32) + 104) failTaskWithError:v4];
}

uint64_t __79__HDCloudSyncRepairRegistryRecordsOperation__modifyRecordsAndFinish_container___block_invoke_298(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully updated registry records", &v5, 0xCu);
  }

  return [*(*(a1 + 32) + 104) finishTask];
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end