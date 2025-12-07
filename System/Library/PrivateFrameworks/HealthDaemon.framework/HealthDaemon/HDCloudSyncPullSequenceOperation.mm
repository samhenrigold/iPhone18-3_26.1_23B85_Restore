@interface HDCloudSyncPullSequenceOperation
- (HDCloudSyncPullSequenceOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncPullSequenceOperation)initWithConfiguration:(id)configuration cloudState:(id)state target:(id)target sequence:(id)sequence changes:(id)changes;
- (void)main;
@end

@implementation HDCloudSyncPullSequenceOperation

- (HDCloudSyncPullSequenceOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPullSequenceOperation)initWithConfiguration:(id)configuration cloudState:(id)state target:(id)target sequence:(id)sequence changes:(id)changes
{
  targetCopy = target;
  sequenceCopy = sequence;
  changesCopy = changes;
  v21.receiver = self;
  v21.super_class = HDCloudSyncPullSequenceOperation;
  v16 = [(HDCloudSyncOperation *)&v21 initWithConfiguration:configuration cloudState:state];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_target, target);
    objc_storeStrong(&v17->_sequenceRecord, sequence);
    v18 = objc_msgSend_copy(changesCopy);
    changeRecords = v17->_changeRecords;
    v17->_changeRecords = v18;
  }

  return v17;
}

- (void)main
{
  v44 = *MEMORY[0x277D85DE8];
  progress = [(HDCloudSyncOperation *)self progress];
  [progress setTotalUnitCount:0];

  _HKInitializeLogging();
  v4 = MEMORY[0x277CCC328];
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    changeRecords = self->_changeRecords;
    v7 = v5;
    *buf = 138543618;
    *v42 = self;
    *&v42[8] = 2048;
    *&v42[10] = [(NSArray *)changeRecords count];
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning pull for sequence with %ld required record(s).", buf, 0x16u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->_changeRecords;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        _HKInitializeLogging();
        v14 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          [v13 recordID];
          v17 = v16 = v4;
          decodedSyncAnchorRangeMap = [v13 decodedSyncAnchorRangeMap];
          *buf = 67109634;
          *v42 = v10;
          *&v42[4] = 2114;
          *&v42[6] = v17;
          *&v42[14] = 2114;
          *&v42[16] = decodedSyncAnchorRangeMap;
          _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "\t%02d: %{public}@: %{public}@", buf, 0x1Cu);

          v4 = v16;
          ++v10;
        }
      }

      v9 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v9);
  }

  v19 = [HDCloudSyncCompoundOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  v21 = [(HDCloudSyncCompoundOperation *)v19 initWithConfiguration:configuration cloudState:0 name:@"Pull Changes" continueOnSubOperationError:0];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obja = self->_changeRecords;
  v22 = [(NSArray *)obja countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obja);
        }

        v26 = *(*(&v32 + 1) + 8 * j);
        v27 = [HDCloudSyncPullChangeRecordOperation alloc];
        configuration2 = [(HDCloudSyncOperation *)self configuration];
        v29 = [(HDCloudSyncPullChangeRecordOperation *)v27 initWithConfiguration:configuration2 cloudState:0 target:self->_target sequenceRecord:self->_sequenceRecord changeRecord:v26];

        [(HDCloudSyncCompoundOperation *)v21 addOperation:v29 transitionHandler:0];
      }

      v23 = [(NSArray *)obja countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v23);
  }

  [(HDCloudSyncOperation *)self delegateToOperation:v21];
}

@end