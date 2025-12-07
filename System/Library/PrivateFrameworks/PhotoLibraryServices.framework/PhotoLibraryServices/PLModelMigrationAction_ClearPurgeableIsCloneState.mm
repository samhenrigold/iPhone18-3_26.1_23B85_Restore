@interface PLModelMigrationAction_ClearPurgeableIsCloneState
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ClearPurgeableIsCloneState

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = PLMigrationGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    logger = [(PLModelMigrationActionCore *)self logger];

    if (logger)
    {
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
      v39 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *buf = 0u;
      v9 = PLMigrationGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      LOWORD(v30) = 0;
      v11 = _os_log_send_and_compose_impl(v10, 0, buf, 512, &dword_19BF1F000, v9, 0, "Setting clearPurgeableIsCloneStateOnPurgeableResourcesOnce flag to clear purgeable is-clone state once on library maintenance", &v30, 2);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v11 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{744, 0}];

      if (v11 != buf)
      {
        free(v11);
      }
    }

    else
    {
      v13 = PLMigrationGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Setting clearPurgeableIsCloneStateOnPurgeableResourcesOnce flag to clear purgeable is-clone state once on library maintenance", buf, 2u);
      }
    }
  }

  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v29 = 0;
  v15 = [PLCacheDeleteSupport setClearPurgeableIsCloneStateOnPurgeableResourcesOnceWithPathManager:pathManager error:&v29];
  v16 = v29;

  if (v15)
  {
    v17 = 1;
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
        v39 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        *buf = 0u;
        v21 = PLMigrationGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v30 = 138412290;
        v31 = v16;
        LODWORD(v28) = 12;
        v23 = _os_log_send_and_compose_impl(v22, 0, buf, 512, &dword_19BF1F000, v21, 16, "Failed to set clearPurgeableIsCloneStateOnPurgeableResourcesOnce flag: %@", &v30, v28);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{747, 16}];

        if (v23 != buf)
        {
          free(v23);
        }
      }

      else
      {
        v25 = PLMigrationGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v16;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed to set clearPurgeableIsCloneStateOnPurgeableResourcesOnce flag: %@", buf, 0xCu);
        }
      }
    }

    v17 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    v26 = v16;
    *error = v16;
  }

  return v17;
}

@end