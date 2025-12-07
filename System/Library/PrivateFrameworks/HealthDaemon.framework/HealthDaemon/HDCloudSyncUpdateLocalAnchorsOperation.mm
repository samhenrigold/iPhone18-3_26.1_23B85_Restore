@interface HDCloudSyncUpdateLocalAnchorsOperation
+ (id)finishedOperationTags;
+ (id)operationTagDependencies;
- (BOOL)performWithError:(id *)error;
@end

@implementation HDCloudSyncUpdateLocalAnchorsOperation

+ (id)finishedOperationTags
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"update-anchors";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)operationTagDependencies
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"compute-push-targets";
  v4[1] = @"compute-pull-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (BOOL)performWithError:(id *)error
{
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  profile = [repository profile];
  legacyRepositoryProfile = [profile legacyRepositoryProfile];

  database = [legacyRepositoryProfile database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HDCloudSyncUpdateLocalAnchorsOperation_performWithError___block_invoke;
  v11[3] = &unk_278616048;
  v11[4] = self;
  LOBYTE(error) = [(HDHealthEntity *)HDSyncAnchorEntity performWriteTransactionWithHealthDatabase:database error:error block:v11];

  return error;
}

uint64_t __59__HDCloudSyncUpdateLocalAnchorsOperation_performWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v78 = *MEMORY[0x277D85DE8];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v5 = [*(a1 + 32) configuration];
  v6 = [v5 computedState];
  v7 = [v6 targets];

  v8 = [v7 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (!v8)
  {
    v49 = 1;
    goto LABEL_43;
  }

  v9 = v8;
  v10 = *v66;
  v59 = v4;
  v60 = v7;
  v55 = *v66;
  while (2)
  {
    v11 = 0;
    v56 = v9;
    do
    {
      if (*v66 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v65 + 1) + 8 * v11);
      v13 = [v12 purpose];
      if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_32;
        }

        v14 = *(v4 + 32);
        v15 = v12;
        v16 = v15;
        v63 = v14;
        if (!v14)
        {
LABEL_41:

          _HKInitializeLogging();
          v50 = *MEMORY[0x277CCC328];
          v7 = v60;
          if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_42;
          }

          v54 = *(v59 + 32);
          *buf = 138543618;
          v75 = v54;
          v76 = 2114;
          v77 = v16;
          v52 = "%{public}@: Failed to update expected sync anchors for %{public}@";
          goto LABEL_45;
        }

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v17 = [v15 storeRecord];
        v18 = [v17 orderedSequenceRecords];

        obj = v18;
        v19 = [v18 countByEnumeratingWithState:&v69 objects:buf count:16];
        if (v19)
        {
          v20 = v19;
          v62 = *v70;
          v57 = v11;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              v22 = a3;
              if (*v70 != v62)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v69 + 1) + 8 * i);
              v24 = v16;
              v25 = [v16 store];
              v26 = [v25 syncStoreForEpoch:{objc_msgSend(v23, "baselineEpoch")}];

              v27 = [v63 configuration];
              v28 = [v27 repository];
              v29 = [v28 profile];
              v30 = [v29 legacyRepositoryProfile];

              a3 = v22;
              if (![HDSyncAnchorEntity resetSyncAnchorsOfType:4 store:v26 profile:v30 error:v22])
              {

LABEL_40:
                v16 = v24;
                goto LABEL_41;
              }

              v31 = [v23 syncAnchorMap];
              v32 = [HDSyncAnchorEntity updateSyncAnchorsWithMap:v31 type:4 store:v26 updatePolicy:2 resetInvalid:0 profile:v30 error:v22];

              if (!v32)
              {
                goto LABEL_40;
              }

              v16 = v24;
            }

            v20 = [obj countByEnumeratingWithState:&v69 objects:buf count:16];
            v11 = v57;
            v4 = v59;
            v10 = v55;
            v9 = v56;
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v7 = v60;
      }

      else
      {
        v58 = v11;
        v64 = a3;
        v33 = *(v4 + 32);
        v34 = v12;
        v35 = v34;
        if (!v33)
        {
LABEL_37:

          _HKInitializeLogging();
          v50 = *MEMORY[0x277CCC328];
          v7 = v60;
          if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
LABEL_42:
            v49 = 0;
            goto LABEL_43;
          }

          v51 = *(v59 + 32);
          *buf = 138543618;
          v75 = v51;
          v76 = 2114;
          v77 = v35;
          v52 = "%{public}@: Failed to update frozen sync anchors for %{public}@";
LABEL_45:
          _os_log_error_impl(&dword_228986000, v50, OS_LOG_TYPE_ERROR, v52, buf, 0x16u);
          goto LABEL_42;
        }

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v36 = [v34 storeRecord];
        v37 = [v36 orderedSequenceRecords];

        v38 = [v37 countByEnumeratingWithState:&v69 objects:buf count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v70;
          while (2)
          {
            for (j = 0; j != v39; ++j)
            {
              if (*v70 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v69 + 1) + 8 * j);
              v43 = [v35 store];
              v44 = [v43 syncStoreForEpoch:{objc_msgSend(v42, "baselineEpoch")}];

              if (v44)
              {
                v45 = [v42 frozenSyncAnchorMap];
                if (v45)
                {
                  v46 = [v42 record];
                  v47 = [v46 modificationDate];
                  v48 = [v44 replaceFrozenAnchorMap:v45 updateDate:v47 error:v64];

                  if (!v48)
                  {

                    goto LABEL_37;
                  }
                }
              }
            }

            v39 = [v37 countByEnumeratingWithState:&v69 objects:buf count:16];
            if (v39)
            {
              continue;
            }

            break;
          }
        }

        v4 = v59;
        v7 = v60;
        a3 = v64;
        v10 = v55;
        v9 = v56;
        v11 = v58;
      }

LABEL_32:
      ++v11;
    }

    while (v11 != v9);
    v9 = [v7 countByEnumeratingWithState:&v65 objects:v73 count:16];
    v49 = 1;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_43:

  return v49;
}

@end