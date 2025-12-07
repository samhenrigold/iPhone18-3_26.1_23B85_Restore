@interface HDCloudSyncDeleteStoreOnChildOperation
- (void)main;
@end

@implementation HDCloudSyncDeleteStoreOnChildOperation

- (void)main
{
  v24 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  computedState = [configuration computedState];
  pushTargets = [computedState pushTargets];

  if (pushTargets && (-[HDCloudSyncOperation profile](self, "profile"), v6 = objc_claimAutoreleasedReturnValue(), [v6 cloudSyncManager], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isChild"), v7, v6, (v8 & 1) != 0))
  {
    if ([pushTargets count] >= 2)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Watch has more than 1 push target", buf, 0xCu);
      }
    }

    configuration2 = [(HDCloudSyncOperation *)self configuration];
    computedState2 = [configuration2 computedState];
    pushTargets2 = [computedState2 pushTargets];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __46__HDCloudSyncDeleteStoreOnChildOperation_main__block_invoke;
    v21[3] = &unk_278623C68;
    v21[4] = self;
    v13 = [pushTargets2 hk_map:v21];

    if ([v13 count])
    {
      v14 = [HDCloudSyncDeleteStoresOperation alloc];
      configuration3 = [(HDCloudSyncOperation *)self configuration];
      cloudState = [(HDCloudSyncOperation *)self cloudState];
      v17 = [(HDCloudSyncDeleteStoresOperation *)v14 initWithConfiguration:configuration3 cloudState:cloudState storeRecordsToDelete:v13];

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __46__HDCloudSyncDeleteStoreOnChildOperation_main__block_invoke_2;
      v19[3] = &unk_278614BA8;
      v19[4] = self;
      v20 = v13;
      [(HDCloudSyncOperation *)v17 setOnSuccess:v19];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __46__HDCloudSyncDeleteStoreOnChildOperation_main__block_invoke_295;
      v18[3] = &unk_278613088;
      v18[4] = self;
      [(HDCloudSyncOperation *)v17 setOnError:v18];
      [(HDCloudSyncOperation *)v17 start];
    }

    else
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
    }
  }

  else
  {
    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }
}

id __46__HDCloudSyncDeleteStoreOnChildOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 storeRecord];
  if (v4 && ((Current = CFAbsoluteTimeGetCurrent(), [v5 record], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "creationDate"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "timeIntervalSinceReferenceDate"), v10 = v9, v8, v7, objc_msgSend(v5, "sequenceRecord"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "childRecordCount"), v11, v12 > 500) || Current - v10 > 1814400.0))
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v5 description];
      v17 = v16;
      v18 = @" max active duration passed";
      v20 = 138543874;
      v21 = v4;
      v22 = 2114;
      if (v12 > 500)
      {
        v18 = @"record limit crossed";
      }

      v23 = v16;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting deletion of watch store: %{public}@ due to %{public}@", &v20, 0x20u);
    }

    v13 = [v3 storeRecord];
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

uint64_t __46__HDCloudSyncDeleteStoreOnChildOperation_main__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    LODWORD(v3) = [v3 count];
    v6 = [MEMORY[0x277CBEAA8] date];
    v8 = 138543874;
    v9 = v4;
    v10 = 1024;
    v11 = v3;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully deleted %d watch stores, deletionDate: %{public}@", &v8, 0x1Cu);
  }

  return [*(a1 + 32) finishWithSuccess:1 error:0];
}

void __46__HDCloudSyncDeleteStoreOnChildOperation_main__block_invoke_295(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete watch stores: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];
}

@end