@interface HDCloudSyncDeleteRecordsOperation
- (HDCloudSyncDeleteRecordsOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (NSArray)recordIDsToDelete;
- (void)main;
- (void)setRecordIDsToDelete:(id)delete;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncDeleteRecordsOperation

- (HDCloudSyncDeleteRecordsOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v10.receiver = self;
  v10.super_class = HDCloudSyncDeleteRecordsOperation;
  v4 = [(HDCloudSyncOperation *)&v10 initWithConfiguration:configuration cloudState:state];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v5->_taskGroup;
    v5->_taskGroup = v6;

    [(HDSynchronousTaskGroup *)v5->_taskGroup setDelegate:v5];
    recordIDsToDelete = v5->_recordIDsToDelete;
    v5->_recordIDsToDelete = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (NSArray)recordIDsToDelete
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_recordIDsToDelete;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRecordIDsToDelete:(id)delete
{
  deleteCopy = delete;
  if ([(HDCloudSyncOperation *)self status])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncDeleteRecordsOperation.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = objc_msgSend_copy(deleteCopy);

  recordIDsToDelete = self->_recordIDsToDelete;
  self->_recordIDsToDelete = v6;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)main
{
  selfCopy = self;
  v58 = *MEMORY[0x277D85DE8];
  recordIDsToDelete = [(HDCloudSyncDeleteRecordsOperation *)self recordIDsToDelete];
  if ([recordIDsToDelete count])
  {
    [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    configuration = [(HDCloudSyncOperation *)selfCopy configuration];
    [configuration repository];
    v5 = v35 = recordIDsToDelete;
    allCKContainers = [v5 allCKContainers];

    recordIDsToDelete = v35;
    obj = allCKContainers;
    v38 = [allCKContainers countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v38)
    {
      v37 = *v44;
      *&v7 = 138543618;
      v34 = v7;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v44 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v43 + 1) + 8 * v8);
          configuration2 = [(HDCloudSyncOperation *)selfCopy configuration];
          cachedCloudState = [configuration2 cachedCloudState];
          containerIdentifier = [v9 containerIdentifier];
          v42 = 0;
          v13 = [cachedCloudState zonesForContainerID:containerIdentifier error:&v42];
          v14 = v42;

          if (v13)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14 == 0;
          }

          if (!v15)
          {
            _HKInitializeLogging();
            v16 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *buf = v34;
              v51 = selfCopy;
              v52 = 2114;
              v53 = v14;
              _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones, %{public}@", buf, 0x16u);
            }

            configuration3 = [(HDCloudSyncOperation *)selfCopy configuration];
            repository = [configuration3 repository];
            primaryCKContainer = [repository primaryCKContainer];

            if (v9 == primaryCKContainer)
            {
              [(HDCloudSyncOperation *)selfCopy finishWithSuccess:0 error:v14];

              goto LABEL_25;
            }
          }

          v20 = [v13 hk_mapToSet:&__block_literal_global_45];
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __41__HDCloudSyncDeleteRecordsOperation_main__block_invoke_2;
          v40[3] = &unk_2786167F8;
          v21 = v20;
          v41 = v21;
          v22 = [recordIDsToDelete hk_filter:v40];
          if ([v22 count])
          {
            v39 = v14;
            v23 = v22;
            v24 = v9;
            [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
            _HKInitializeLogging();
            v25 = *MEMORY[0x277CCC328];
            v26 = selfCopy;
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v27 = v25;
              v28 = [v23 count];
              containerIdentifier2 = [v24 containerIdentifier];
              *buf = 138544130;
              v51 = v26;
              v52 = 2048;
              v53 = v28;
              v54 = 2114;
              v55 = containerIdentifier2;
              v56 = 2114;
              v57 = v23;
              _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting %ld records in %{public}@: %{public}@", buf, 0x2Au);

              recordIDsToDelete = v35;
            }

            v30 = [HDCloudSyncModifyRecordsOperation alloc];
            configuration4 = [(HDCloudSyncOperation *)v26 configuration];
            v32 = [(HDCloudSyncModifyRecordsOperation *)v30 initWithConfiguration:configuration4 container:v24 recordsToSave:0 recordIDsToDelete:v23];

            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __62__HDCloudSyncDeleteRecordsOperation__deleteRecords_container___block_invoke;
            v48[3] = &unk_278613088;
            v48[4] = v26;
            [(HDCloudSyncOperation *)v32 setOnError:v48];
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = __62__HDCloudSyncDeleteRecordsOperation__deleteRecords_container___block_invoke_2;
            v47[3] = &unk_278613060;
            v47[4] = v26;
            [(HDCloudSyncOperation *)v32 setOnSuccess:v47];
            [(HDCloudSyncOperation *)v32 start];

            selfCopy = v26;
            v14 = v39;
          }

          ++v8;
        }

        while (v38 != v8);
        v38 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
        if (v38)
        {
          continue;
        }

        break;
      }
    }

    [(HDSynchronousTaskGroup *)selfCopy->_taskGroup finishTask];
  }

  else
  {
    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v51 = selfCopy;
      _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_INFO, "%{public}@: Nothing to delete.", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)selfCopy finishWithSuccess:1 error:0];
  }

LABEL_25:
}

id __41__HDCloudSyncDeleteRecordsOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 zoneIdentifier];
  v3 = [v2 zoneIdentifier];

  return v3;
}

uint64_t __41__HDCloudSyncDeleteRecordsOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 zoneID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end