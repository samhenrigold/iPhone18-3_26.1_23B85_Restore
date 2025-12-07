@interface PLModelMigrationAction_ResetGraphPersons
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetGraphPersons

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v85 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLPerson entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  [v9 setFetchBatchSize:100];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"verifiedType", 2];
  [v9 setPredicate:v10];

  v50 = 0;
  v11 = [contextCopy executeFetchRequest:v9 error:&v50];
  v12 = v50;
  if (v11)
  {
    v13 = objc_msgSend_count(v11);
    v14 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:v13 pendingParentUnitCount:0];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __88__PLModelMigrationAction_ResetGraphPersons_performActionWithManagedObjectContext_error___block_invoke;
    v48[3] = &unk_1E756DC58;
    v48[4] = self;
    v15 = v14;
    v49 = v15;
    v16 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v11 withBlock:v48];

    v17 = PLMigrationGetLog();
    v18 = v17;
    if (v16)
    {
      v19 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (v19)
      {
        logger = [(PLModelMigrationActionCore *)self logger];

        if (logger)
        {
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
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
          *buf = 0u;
          v54 = 0u;
          v21 = PLMigrationGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = 3;
          }

          else
          {
            v22 = 2;
          }

          v51 = 138412290;
          v52 = v16;
          LODWORD(v46) = 12;
          v23 = _os_log_send_and_compose_impl(v22, 0, buf, 512, &dword_19BF1F000, v21, 16, "Failed to reset graph-verified persons with error: %@", &v51, v46);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{853, 16}];

          if (v23 != buf)
          {
            free(v23);
          }
        }

        else
        {
          v39 = PLMigrationGetLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v16;
            _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Failed to reset graph-verified persons with error: %@", buf, 0xCu);
          }
        }
      }

      v38 = 3;
    }

    else
    {
      errorCopy = error;
      v32 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (v32)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];

        if (!logger3)
        {
          v45 = PLMigrationGetLog();
          error = errorCopy;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v13;
            _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEFAULT, "Deleted %lu graph-verified persons", buf, 0xCu);
          }

          v38 = 1;
          goto LABEL_29;
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
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
        *buf = 0u;
        v54 = 0u;
        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        v51 = 134217984;
        v52 = v13;
        v36 = _os_log_send_and_compose_impl(v35, 0, buf, 512, &dword_19BF1F000, v34, 0, "Deleted %lu graph-verified persons", &v51);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v36 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{856, 0}];

        if (v36 != buf)
        {
          free(v36);
        }
      }

      v38 = 1;
      error = errorCopy;
    }

LABEL_29:

    goto LABEL_34;
  }

  v25 = PLMigrationGetLog();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

  if (v26)
  {
    logger5 = [(PLModelMigrationActionCore *)self logger];

    if (logger5)
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
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
      *buf = 0u;
      v54 = 0u;
      v28 = PLMigrationGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v51 = 138412290;
      v52 = v12;
      LODWORD(v46) = 12;
      v30 = _os_log_send_and_compose_impl(v29, 0, buf, 512, &dword_19BF1F000, v28, 16, "Failed to fetch graph-verified persons with error: %@", &v51, v46);

      logger6 = [(PLModelMigrationActionCore *)self logger];
      [logger6 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{859, 16}];

      if (v30 != buf)
      {
        free(v30);
      }
    }

    else
    {
      v40 = PLMigrationGetLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Failed to fetch graph-verified persons with error: %@", buf, 0xCu);
      }
    }
  }

  v38 = 3;
  v16 = v12;
LABEL_34:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v41 = v16;
  v42 = v41;
  if (v38 != 1 && error)
  {
    v43 = v41;
    *error = v42;
  }

  return v38;
}

@end