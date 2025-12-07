@interface PLModelMigrationAction_ResetSocialGroup
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetSocialGroup

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:1];
  [v7 becomeCurrentWithPendingUnitCount:1];
  v34 = 0;
  v8 = [PLSocialGroup resetAllInContext:contextCopy error:&v34];

  v9 = v34;
  v10 = PLMigrationGetLog();
  v11 = v10;
  if (v8)
  {
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

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
        v16 = _os_log_send_and_compose_impl(v15, 0, buf, 512, &dword_19BF1F000, v14, 0, "Deleted all SocialGroups", &v35, 2);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v16 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{376, 0}];

        if (v16 != buf)
        {
          free(v16);
        }
      }

      else
      {
        v26 = PLMigrationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Deleted all SocialGroups", buf, 2u);
        }
      }
    }

    [v7 resignCurrent];
    v27 = v9;
    v28 = 1;
  }

  else
  {
    v18 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v18)
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
        v20 = PLMigrationGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v35 = 138543618;
        v36 = v23;
        v37 = 2112;
        v38 = v9;
        v24 = _os_log_send_and_compose_impl(v21, 0, buf, 512, &dword_19BF1F000, v20, 16, "Failed to process %{public}@. Error: %@", &v35, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{379, 16}];

        if (v24 != buf)
        {
          free(v24);
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
          *&buf[14] = v9;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }

    [v7 resignCurrent];
    v32 = v9;
    if (error)
    {
      *error = v32;
    }

    v28 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v28;
}

@end