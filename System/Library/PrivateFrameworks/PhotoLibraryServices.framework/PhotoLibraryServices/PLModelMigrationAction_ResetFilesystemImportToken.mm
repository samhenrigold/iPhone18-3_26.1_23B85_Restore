@interface PLModelMigrationAction_ResetFilesystemImportToken
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetFilesystemImportToken

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v71 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v8 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];
  [(PLGlobalValues *)v8 setImportFilesystemAssetsState:-1];
  v35 = 0;
  v9 = [contextCopy save:&v35];

  v10 = v35;
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
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
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

        LOWORD(v36) = 0;
        v16 = _os_log_send_and_compose_impl(v15, 0, buf, 512, &dword_19BF1F000, v14, 0, "Reset the filesystem import token", &v36, 2);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v16 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{572, 0}];

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
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Reset the filesystem import token", buf, 2u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v28 = v10;
    v29 = 1;
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
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
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
        v36 = 138543618;
        v37 = v24;
        v38 = 2112;
        v39 = v10;
        v25 = _os_log_send_and_compose_impl(v22, 0, buf, 512, &dword_19BF1F000, v21, 16, "Failed to perform a save operation for %{public}@. Error: %@", &v36, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{569, 16}];

        if (v25 != buf)
        {
          free(v25);
        }
      }

      else
      {
        v30 = PLMigrationGetLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          *buf = 138543618;
          *&buf[4] = v32;
          *&buf[12] = 2112;
          *&buf[14] = v10;
          _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v33 = v10;
    if (error)
    {
      *error = v33;
    }

    v29 = 3;
  }

  return v29;
}

@end