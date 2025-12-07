@interface HDCloudSyncLeaveAllSharesOperation
- (void)main;
@end

@implementation HDCloudSyncLeaveAllSharesOperation

- (void)main
{
  selfCopy = self;
  v89 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_32;
  }

  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  v77 = 0;
  v5 = [cachedCloudState zonesByIdentifierWithError:&v77];
  v6 = v77;

  if (v5 || !v6)
  {
    v60 = v6;
    v61 = v5;
    v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = [v5 allValues];
    v11 = [obj countByEnumeratingWithState:&v73 objects:buf count:16];
    if (!v11)
    {
LABEL_26:

      v43 = v62;
      v9 = v62;
      v10 = 0;
      v6 = v60;
      v5 = v61;
LABEL_30:

      goto LABEL_31;
    }

    v12 = v11;
    v13 = *v74;
    v63 = *v74;
    v69 = selfCopy;
LABEL_9:
    v14 = 0;
    v64 = v12;
    while (1)
    {
      v15 = v12;
      v16 = v13;
      if (*v74 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v73 + 1) + 8 * v14);
      zoneIdentifier = [v17 zoneIdentifier];
      containerIdentifier = [zoneIdentifier containerIdentifier];

      configuration2 = [(HDCloudSyncOperation *)selfCopy configuration];
      repository = [configuration2 repository];
      v22 = [repository containerForContainerIdentifier:containerIdentifier];

      configuration3 = [(HDCloudSyncOperation *)selfCopy configuration];
      repository2 = [configuration3 repository];
      profileIdentifier = [repository2 profileIdentifier];
      v26 = HDDatabaseForContainer(v22, profileIdentifier);

      v12 = v15;
      v13 = v16;
      if ([v26 databaseScope] != 3)
      {
        goto LABEL_24;
      }

      v66 = v26;
      v67 = v22;
      v68 = containerIdentifier;
      v27 = v17;
      zoneIdentifier2 = [v27 zoneIdentifier];
      v28ZoneIdentifier = [zoneIdentifier2 zoneIdentifier];
      v79 = 0;
      *v80 = 0;
      v30 = [v28ZoneIdentifier hd_isSharedSummaryZoneIDForUserIdentifier:v80 syncCircleIdentifier:&v79];
      v31 = *v80;
      v32 = v79;

      zoneIdentifier3 = [v27 zoneIdentifier];

      v33ZoneIdentifier = [zoneIdentifier3 zoneIdentifier];
      v78 = v32;
      v35 = [v33ZoneIdentifier hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v78];
      v36 = v78;

      configuration4 = [(HDCloudSyncOperation *)v69 configuration];
      repository3 = [configuration4 repository];
      profileType = [repository3 profileType];

      if (profileType == 2)
      {
        if (v30)
        {
          goto LABEL_16;
        }
      }

      else if (profileType == 3 && (v35 & 1) != 0)
      {
LABEL_16:

        v72 = 0;
        v40 = [v27 zoneShareWithError:&v72];
        v41 = v72;
        v10 = v41;
        if (!v40 && v41)
        {
          _HKInitializeLogging();
          v44 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v58 = v44;
            zoneIdentifier4 = [v27 zoneIdentifier];
            *v80 = 138543874;
            *&v80[4] = v69;
            v81 = 2114;
            v82 = zoneIdentifier4;
            v83 = 2114;
            v84 = v10;
            _os_log_error_impl(&dword_228986000, v58, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch CKShare for cached zone %{public}@, %{public}@", v80, 0x20u);
          }

          v45 = v10;

          v9 = 0;
          v6 = v60;
          v5 = v61;
          v43 = v62;
          selfCopy = v69;
          goto LABEL_30;
        }

        containerIdentifier = v68;
        v12 = v64;
        if (v40)
        {
          recordID = [v40 recordID];
          [v62 addObject:recordID];
        }

        v13 = v63;
        goto LABEL_23;
      }

      containerIdentifier = v68;
      v13 = v63;
      v12 = v64;
LABEL_23:
      v26 = v66;
      v22 = v67;
LABEL_24:

      ++v14;
      selfCopy = v69;
      if (v12 == v14)
      {
        v12 = [obj countByEnumeratingWithState:&v73 objects:buf count:16];
        if (v12)
        {
          goto LABEL_9;
        }

        goto LABEL_26;
      }
    }
  }

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v86 = selfCopy;
    v87 = 2114;
    v88 = v6;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones, %{public}@", buf, 0x16u);
  }

  v8 = v6;
  v9 = 0;
  v10 = v6;
LABEL_31:

LABEL_32:
  v46 = v10;
  v47 = v46;
  if (!v9 && v46)
  {
    v48 = selfCopy;
    v49 = 0;
    v50 = v47;
LABEL_40:
    [(HDCloudSyncOperation *)v48 finishWithSuccess:v49 error:v50];
    goto LABEL_41;
  }

  if (![v9 count])
  {
    _HKInitializeLogging();
    v57 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v86 = selfCopy;
      _os_log_impl(&dword_228986000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@: There do not appear to be any shared zones to remove ourselves from.", buf, 0xCu);
    }

    v48 = selfCopy;
    v49 = 1;
    v50 = 0;
    goto LABEL_40;
  }

  configuration5 = [(HDCloudSyncOperation *)selfCopy configuration];
  repository4 = [configuration5 repository];
  primaryCKContainer = [repository4 primaryCKContainer];

  v54 = [HDCloudSyncModifyRecordsOperation alloc];
  configuration6 = [(HDCloudSyncOperation *)selfCopy configuration];
  v56 = [(HDCloudSyncModifyRecordsOperation *)v54 initWithConfiguration:configuration6 container:primaryCKContainer recordsToSave:0 recordIDsToDelete:v9];

  [(HDCloudSyncModifyRecordsOperation *)v56 setTreatAnyErrorAsFatal:1];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __42__HDCloudSyncLeaveAllSharesOperation_main__block_invoke;
  v71[3] = &unk_278613088;
  v71[4] = selfCopy;
  [(HDCloudSyncOperation *)v56 setOnError:v71];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __42__HDCloudSyncLeaveAllSharesOperation_main__block_invoke_293;
  v70[3] = &unk_278613060;
  v70[4] = selfCopy;
  [(HDCloudSyncOperation *)v56 setOnSuccess:v70];
  [(HDCloudSyncOperation *)v56 start];

LABEL_41:
}

void __42__HDCloudSyncLeaveAllSharesOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete shares: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];
}

uint64_t __42__HDCloudSyncLeaveAllSharesOperation_main__block_invoke_293(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully deleted share records", &v5, 0xCu);
  }

  return [*(a1 + 32) finishWithSuccess:1 error:0];
}

@end