@interface PLModelMigrationAction_MigrateLastGuestAssetSyncToken
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_MigrateLastGuestAssetSyncToken

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v76 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = 1;
  v8 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v9 = [PLGlobalKeyValue fetchGlobalKeyValueForKey:@"LastGuestAssetSyncToken" withManagedObjectContext:contextCopy createIfMissing:0];
  v10 = v9;
  if (v9)
  {
    anyGlobalValue = [v9 anyGlobalValue];
    if (!anyGlobalValue)
    {
LABEL_5:
      v7 = 1;
      goto LABEL_31;
    }

    anyGlobalValue2 = [v10 anyGlobalValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      anyGlobalValue = 0;
      goto LABEL_5;
    }

    anyGlobalValue3 = [v10 anyGlobalValue];
    v15 = [PLPersistentHistoryUtilities unarchiveTokenWithData:anyGlobalValue3];

    v39 = v15;
    [PLGlobalKeyValue setGlobalValue:v15 forKey:@"LastGuestAssetSyncToken" managedObjectContext:contextCopy];
    v40 = 0;
    v16 = [contextCopy save:&v40];
    anyGlobalValue = v40;
    if (v16)
    {
      v7 = 1;
      [v8 setCompletedUnitCount:1];
      v17 = PLMigrationGetLog();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (v18)
      {
        logger = [(PLModelMigrationActionCore *)self logger];

        if (logger)
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          memset(buf, 0, sizeof(buf));
          v20 = PLMigrationGetLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          v41 = 138543618;
          v42 = @"LastGuestAssetSyncToken";
          v43 = 2114;
          v44 = v39;
          v22 = _os_log_send_and_compose_impl(v21, 0, buf, 512, &dword_19BF1F000, v20, 0, "Updated global value %{public}@ with token %{public}@", &v41, 22);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{364, 0}];

          if (v22 != buf)
          {
            free(v22);
          }
        }

        else
        {
          v33 = PLMigrationGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = @"LastGuestAssetSyncToken";
            *&buf[12] = 2114;
            *&buf[14] = v39;
            _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Updated global value %{public}@ with token %{public}@", buf, 0x16u);
          }
        }

        v7 = 1;
      }
    }

    else
    {
      v24 = PLMigrationGetLog();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (v25)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];

        if (logger3)
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          memset(buf, 0, sizeof(buf));
          v27 = PLMigrationGetLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v41 = 138543618;
          v42 = v30;
          v43 = 2112;
          v44 = anyGlobalValue;
          v31 = _os_log_send_and_compose_impl(v28, 0, buf, 512, &dword_19BF1F000, v27, 16, "Failed to perform a save operation for %{public}@. Error: %@", &v41, 22);

          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{361, 16}];

          if (v31 != buf)
          {
            free(v31);
          }
        }

        else
        {
          v34 = PLMigrationGetLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            *buf = 138543618;
            *&buf[4] = v36;
            *&buf[12] = 2112;
            *&buf[14] = anyGlobalValue;
            _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
          }
        }
      }

      v7 = 3;
    }
  }

  else
  {
    anyGlobalValue = 0;
  }

LABEL_31:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    v37 = anyGlobalValue;
    *error = anyGlobalValue;
  }

  return v7;
}

@end