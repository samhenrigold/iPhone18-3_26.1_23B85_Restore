@interface PLModelMigrationAction_ResetSyndicationAssetSyncToken
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetSyndicationAssetSyncToken

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v8 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];
  [(PLGlobalValues *)v8 setLastAttachmentSyndicationSyncDate:0];
  [(PLGlobalValues *)v8 setInProgressFullIndexSyndicationSyncDate:0];
  [(PLGlobalValues *)v8 setSyndicationStartDate:0];
  v34 = 0;
  v9 = [contextCopy save:&v34];

  v10 = v34;
  if (v9)
  {
    [v7 setCompletedUnitCount:1];
    v11 = PLMigrationGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        memset(buf, 0, sizeof(buf));
        v14 = PLMigrationGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        LOWORD(v35) = 0;
        v16 = _os_log_send_and_compose_impl(v15, 0, buf, 512, &dword_19BF1F000, v14, 0, "Cleared syndication sync tokens for asset sync, full index sync, syndication start date", &v35, 2);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v16 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{121, 0}];

        if (v16 != buf)
        {
          free(v16);
        }
      }

      else
      {
        v27 = PLMigrationGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Cleared syndication sync tokens for asset sync, full index sync, syndication start date", buf, 2u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v28 = 1;
  }

  else
  {
    v18 = PLMigrationGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        memset(buf, 0, sizeof(buf));
        v21 = PLMigrationGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v35 = 138543618;
        v36 = v24;
        v37 = 2112;
        v38 = v10;
        v25 = _os_log_send_and_compose_impl(v22, 0, buf, 512, &dword_19BF1F000, v21, 16, "Failed to perform a save operation for %{public}@. Error: %@", &v35, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{118, 16}];

        if (v25 != buf)
        {
          free(v25);
        }
      }

      else
      {
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          *buf = 138543618;
          *&buf[4] = v31;
          *&buf[12] = 2112;
          *&buf[14] = v10;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    if (error)
    {
      v32 = v10;
      *error = v10;
    }

    v28 = 3;
  }

  return v28;
}

@end