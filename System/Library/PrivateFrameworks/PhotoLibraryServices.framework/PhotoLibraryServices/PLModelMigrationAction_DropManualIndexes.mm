@interface PLModelMigrationAction_DropManualIndexes
- (BOOL)_dropManualIndexes;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_DropManualIndexes

- (BOOL)_dropManualIndexes
{
  v63 = *MEMORY[0x1E69E9840];
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  photosDatabasePath = [pathManager photosDatabasePath];
  v5 = PLOpenSQLTransactionWithDBPath([photosDatabasePath fileSystemRepresentation]);

  if (v5)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __62__PLModelMigrationAction_DropManualIndexes__dropManualIndexes__block_invoke;
    v26[3] = &unk_1E7567ED0;
    v26[4] = self;
    v26[5] = &v27;
    v26[6] = v5;
    [&unk_1F0FBF580 enumerateObjectsUsingBlock:v26];
    if (*(v28 + 6))
    {
      PLRollbackSQLTransactionAndCloseDB(v5);
    }

    else
    {
      if (PLCommitSQLTransactionAndCloseDB(v5))
      {
        v6 = 1;
        goto LABEL_5;
      }

      v14 = PLMigrationGetLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (v15)
      {
        logger = [(PLModelMigrationActionCore *)self logger];
        v17 = logger == 0;

        if (v17)
        {
          v24 = PLMigrationGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Unable to commit transaction involving creation of manual indexes.", buf, 2u);
          }
        }

        else
        {
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
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          *buf = 0u;
          v32 = 0u;
          v18 = PLMigrationGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = 3;
          }

          else
          {
            v19 = 2;
          }

          v25 = 0;
          v20 = _os_log_send_and_compose_impl(v19, 0, buf, 512, &dword_19BF1F000, v18, 16, "Unable to commit transaction involving creation of manual indexes.", &v25, 2);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{534, 16}];

          if (v20 != buf)
          {
            free(v20);
          }
        }
      }
    }

    v6 = 0;
LABEL_5:
    _Block_object_dispose(&v27, 8);
    return v6;
  }

  v7 = PLMigrationGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    logger3 = [(PLModelMigrationActionCore *)self logger];

    if (logger3)
    {
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
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *buf = 0u;
      v32 = 0u;
      v10 = PLMigrationGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      LOWORD(v27) = 0;
      v12 = _os_log_send_and_compose_impl(v11, 0, buf, 512, &dword_19BF1F000, v10, 16, "Unable to open db in order to drop manual indexes.", &v27, 2);

      logger4 = [(PLModelMigrationActionCore *)self logger];
      [logger4 logWithMessage:v12 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{543, 16}];

      if (v12 != buf)
      {
        free(v12);
      }
    }

    else
    {
      v22 = PLMigrationGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Unable to open db in order to drop manual indexes.", buf, 2u);
      }
    }
  }

  return 0;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  if (![(PLModelMigrationAction_DropManualIndexes *)self _dropManualIndexes:context])
  {
    v5 = PLMigrationGetLog();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        *buf = 0u;
        v17 = 0u;
        v8 = PLMigrationGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = 3;
        }

        else
        {
          v9 = 2;
        }

        v15[0] = 0;
        v14 = 2;
        v10 = _os_log_send_and_compose_impl(v9, 0, buf, 512, &dword_19BF1F000, v8, 16, "Failed to drop manual indexes.", v15, v14);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v10 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{508, 16}];

        if (v10 != buf)
        {
          free(v10);
        }
      }

      else
      {
        v12 = PLMigrationGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to drop manual indexes.", buf, 2u);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return 1;
}

@end