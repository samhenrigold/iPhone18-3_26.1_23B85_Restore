@interface HDCloudSyncPushDeviceContextOperation
- (void)_updateRecordsAdd:(void *)add recordIDsToDelete:(void *)delete completion:;
- (void)main;
@end

@implementation HDCloudSyncPushDeviceContextOperation

- (void)main
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBC5F8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  syncCircleIdentifier = [repository syncCircleIdentifier];
  v35 = [v3 hd_contextSyncZoneIDForSyncCircleIdentifier:syncCircleIdentifier];

  profile = [(HDCloudSyncOperation *)self profile];
  syncIdentityManager = [profile syncIdentityManager];
  currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
  identity = [currentSyncIdentity identity];

  configuration2 = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration2 cachedCloudState];
  configuration3 = [(HDCloudSyncOperation *)self configuration];
  repository2 = [configuration3 repository];
  primaryCKContainer = [repository2 primaryCKContainer];
  containerIdentifier = [primaryCKContainer containerIdentifier];
  v46 = 0;
  v17 = [cachedCloudState contextSyncZoneForContainerID:containerIdentifier error:&v46];
  v18 = v46;

  if (v17)
  {
    v34 = identity;
    v45 = 0;
    v19 = [v17 recordsForClass:objc_opt_class() error:&v45];
    v20 = v45;
    if (v19)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __45__HDCloudSyncPushDeviceContextOperation_main__block_invoke;
      v43[3] = &unk_278614348;
      v43[4] = self;
      v21 = identity;
      v44 = v21;
      v22 = [v19 hk_filter:v43];
      if ([v22 count] < 2)
      {
        firstObject = [v22 firstObject];
        configuration4 = [(HDCloudSyncOperation *)self configuration];
        repository3 = [configuration4 repository];
        [repository3 cloudSyncShimProvider];
        v31 = v33 = v20;
        contextSyncShim = [v31 contextSyncShim];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __45__HDCloudSyncPushDeviceContextOperation_main__block_invoke_2;
        v36[3] = &unk_278614398;
        v36[4] = self;
        v37 = firstObject;
        v38 = v35;
        v39 = v19;
        v24 = firstObject;
        [contextSyncShim lookupOrCreateLocalDeviceContextWithCompletion:v36];

        v20 = v33;
        v27 = v37;
      }

      else
      {
        v23 = [HDCloudSyncDeviceContextRecord recordIDWithZoneID:v35 syncIdentity:v21];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __45__HDCloudSyncPushDeviceContextOperation_main__block_invoke_298;
        v41[3] = &unk_278614370;
        v24 = v23;
        v42 = v24;
        v25 = [v22 hk_map:v41];
        _HKInitializeLogging();
        v26 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          selfCopy = self;
          _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@: Multiple device contexts for same identity", buf, 0xCu);
        }

        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __45__HDCloudSyncPushDeviceContextOperation_main__block_invoke_300;
        v40[3] = &unk_2786138D0;
        v40[4] = self;
        [(HDCloudSyncPushDeviceContextOperation *)self _updateRecordsAdd:v25 recordIDsToDelete:v40 completion:?];

        v27 = v42;
      }

      identity = v34;
    }

    else
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v20];
    }
  }

  else
  {
    if (!v18)
    {
      v18 = [MEMORY[0x277CCA9B8] hk_error:724 format:@"Context zone not present."];
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v18];
  }
}

uint64_t __45__HDCloudSyncPushDeviceContextOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v3 = [a2 deviceContextWithError:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = [v3 syncIdentity];
    v6 = [v5 isEqual:*(a1 + 40)];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v4;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch context record: %{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

id __45__HDCloudSyncPushDeviceContextOperation_main__block_invoke_298(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordID];
  LOBYTE(a1) = [v4 isEqual:*(a1 + 32)];

  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 recordID];
  }

  return v5;
}

void __45__HDCloudSyncPushDeviceContextOperation_main__block_invoke_300(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithSuccess:0 error:a2];
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Multiple device contexts for same identity"];
    [v2 finishWithSuccess:0 error:v4];
  }
}

- (void)_updateRecordsAdd:(void *)add recordIDsToDelete:(void *)delete completion:
{
  deleteCopy = delete;
  if (self)
  {
    addCopy = add;
    v9 = a2;
    v10 = [HDCloudSyncModifyRecordsOperation alloc];
    configuration = [self configuration];
    configuration2 = [self configuration];
    repository = [configuration2 repository];
    primaryCKContainer = [repository primaryCKContainer];
    v15 = [(HDCloudSyncModifyRecordsOperation *)v10 initWithConfiguration:configuration container:primaryCKContainer recordsToSave:v9 recordIDsToDelete:addCopy];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __88__HDCloudSyncPushDeviceContextOperation__updateRecordsAdd_recordIDsToDelete_completion___block_invoke;
    v19[3] = &unk_2786143E8;
    v19[4] = self;
    v16 = deleteCopy;
    v20 = v16;
    [(HDCloudSyncOperation *)v15 setOnError:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__HDCloudSyncPushDeviceContextOperation__updateRecordsAdd_recordIDsToDelete_completion___block_invoke_313;
    v17[3] = &unk_278614410;
    v18 = v16;
    [(HDCloudSyncOperation *)v15 setOnSuccess:v17];
    [(HDCloudSyncOperation *)v15 start];
  }
}

void __45__HDCloudSyncPushDeviceContextOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v7)
    {
      v9 = v7;
      v10 = v5;
      if (v8)
      {
        v49 = 0;
        v11 = [v9 deviceContextWithError:&v49];
        v12 = v49;
        if (v11)
        {
          v13 = [v9 record];
          v14 = [v13 modificationDate];

          v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-*MEMORY[0x277CCB760]];
          if ([v11 isEqual:v10] && !objc_msgSend(v14, "hk_isBeforeDate:", v15))
          {
            v16 = 0;
          }

          else
          {
            [v9 updateDeviceContextWithContext:v10];
            v16 = [v9 record];
          }

          v25 = v16;

          v8 = 0;
          v20 = v25;
        }

        else
        {
          _HKInitializeLogging();
          v22 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            *&buf[4] = v8;
            *&buf[12] = 2114;
            *&buf[14] = v9;
            *&buf[22] = 2114;
            v52 = v12;
            _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch device context from record: %{public}@, error: %{public}@", buf, 0x20u);
          }

          v23 = v12;
          v8 = v23;
          if (v23)
          {
            v24 = v23;
            v20 = 0;
            v25 = v8;
          }

          else
          {
            v25 = 0;
            v20 = 0;
          }
        }
      }

      else
      {
        v20 = 0;
      }

      v26 = v8;
      v21 = *(a1 + 32);
      if (v26)
      {
        v27 = v26;
        [*(a1 + 32) finishWithSuccess:0 error:v26];
LABEL_37:

        goto LABEL_38;
      }
    }

    else if (v8)
    {
      v17 = *(a1 + 48);
      v18 = v5;
      v19 = [[HDCloudSyncDeviceContextRecord alloc] initInZone:v17 deviceContext:v18];

      v20 = [v19 record];

      v21 = *(a1 + 32);
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    if (v21)
    {
      v28 = MEMORY[0x277CBEAA8];
      v29 = -*MEMORY[0x277CCB758];
      v30 = *(a1 + 56);
      v31 = [v28 dateWithTimeIntervalSinceNow:v29];
      v32 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v33 = [v32 objectForKey:*MEMORY[0x277CCE478]];

      v34 = [MEMORY[0x277CCDD30] sharedBehavior];
      v35 = [v34 isAppleInternalInstall];

      if (v35 && v33)
      {
        v36 = v33;

        v31 = v36;
      }

      _HKInitializeLogging();
      v37 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
        v39 = [v31 description];
        *buf = 138412290;
        *&buf[4] = v39;
        _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "Attempting to prune device context data based on pruning date: %@", buf, 0xCu);
      }

      *buf = MEMORY[0x277D85DD0];
      v40 = &unk_229165000;
      *&buf[8] = 3221225472;
      *&buf[16] = __90__HDCloudSyncPushDeviceContextOperation__recordIDsToPruneFromCurrentDeviceContextRecords___block_invoke;
      v52 = &unk_2786143C0;
      v53 = v21;
      v54 = v31;
      v41 = v31;
      v27 = [v30 hk_mapToSet:buf];
    }

    else
    {
      v27 = 0;
      v40 = &unk_229165000;
    }

    _HKInitializeLogging();
    v42 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v43 = v42;
      v44 = [v27 count];
      *buf = 67109376;
      *&buf[4] = v20 != 0;
      *&buf[8] = 2048;
      *&buf[10] = v44;
      _os_log_impl(&dword_228986000, v43, OS_LOG_TYPE_DEFAULT, "Attempting to save %d context records, delete %lu context records", buf, 0x12u);
    }

    v45 = *(a1 + 32);
    if (v20)
    {
      v50 = v20;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    }

    else
    {
      v46 = 0;
    }

    v47 = [v27 allObjects];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = v40[323];
    v48[2] = __45__HDCloudSyncPushDeviceContextOperation_main__block_invoke_306;
    v48[3] = &unk_2786138D0;
    v48[4] = *(a1 + 32);
    [(HDCloudSyncPushDeviceContextOperation *)v45 _updateRecordsAdd:v46 recordIDsToDelete:v47 completion:v48];

    if (v20)
    {
    }

    goto LABEL_37;
  }

  [*(a1 + 32) finishWithSuccess:0 error:v6];
LABEL_38:
}

id __90__HDCloudSyncPushDeviceContextOperation__recordIDsToPruneFromCurrentDeviceContextRecords___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0;
  v4 = [v3 deviceContextWithError:&v18];
  v5 = v18;
  if (v4)
  {
    v6 = [v4 syncIdentity];
    v7 = [*(a1 + 32) profile];
    v8 = [v7 syncIdentityManager];
    v9 = [v8 currentSyncIdentity];
    v10 = [v9 identity];
    v11 = [v6 isEqual:v10];

    if ((v11 & 1) == 0)
    {
      v12 = [v3 record];
      v13 = [v12 modificationDate];

      if ([v13 hk_isBeforeDate:*(a1 + 40)])
      {
        v14 = [v3 recordID];

        goto LABEL_9;
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch context record: %{public}@", buf, 0x16u);
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

void __88__HDCloudSyncPushDeviceContextOperation__updateRecordsAdd_recordIDsToDelete_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to modify records: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

@end