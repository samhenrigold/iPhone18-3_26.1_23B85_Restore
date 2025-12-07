@interface PLModelMigrationAction_DeleteFullSizeRenderVideosForLegacyAdjustedSlomos
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_DeleteFullSizeRenderVideosForLegacyAdjustedSlomos

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v88[4] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLInternalResource entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  0xFFFFFFFFLL = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"localAvailability", 0xFFFFFFFFLL];
  v88[0] = 0xFFFFFFFFLL;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"localAvailabilityTarget", 0];
  v88[1] = v12;
  0x20000 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"recipeID", 0x20000];
  v88[2] = 0x20000;
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == %d", @"cloudLocalState", 0];
  v88[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:4];
  v16 = [v10 andPredicateWithSubpredicates:v15];
  [v9 setPredicate:v16];

  [v9 setFetchBatchSize:100];
  v53 = 0;
  v17 = [contextCopy executeFetchRequest:v9 error:&v53];
  v18 = v53;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  if (v17)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __120__PLModelMigrationAction_DeleteFullSizeRenderVideosForLegacyAdjustedSlomos_performActionWithManagedObjectContext_error___block_invoke;
    v46[3] = &unk_1E7569708;
    v47 = contextCopy;
    v48 = &v49;
    v19 = [v47 enumerateWithIncrementalSaveUsingObjects:v17 withBlock:v46];
    v20 = PLMigrationGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v23 = logger == 0;

      if (v23)
      {
        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v50[3];
          *buf = 134217984;
          *&buf[4] = v38;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Deleted %lu full size render video resources attached to legacy slomo assets", buf, 0xCu);
        }
      }

      else
      {
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
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
        *buf = 0u;
        v57 = 0u;
        v24 = PLMigrationGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v26 = v50[3];
        v54 = 134217984;
        v55 = v26;
        v27 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_19BF1F000, v24, 0, "Deleted %lu full size render video resources attached to legacy slomo assets", &v54);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1747, 0}];

        if (v27 != buf)
        {
          free(v27);
        }
      }
    }
  }

  else
  {
    v29 = PLMigrationGetLog();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

    if (v30)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v32 = logger3 == 0;

      if (v32)
      {
        v44 = PLMigrationGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v18;
          _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "Fetch request for non-local full size render video resources failed, error: %@", buf, 0xCu);
        }
      }

      else
      {
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
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
        *buf = 0u;
        v57 = 0u;
        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v54 = 138412290;
        v55 = v18;
        LODWORD(v45) = 12;
        v35 = _os_log_send_and_compose_impl(v34, 0, buf, 512, &dword_19BF1F000, v33, 16, "Fetch request for non-local full size render video resources failed, error: %@", &v54, v45);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1749, 16}];

        if (v35 != buf)
        {
          free(v35);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v39 = v18;
  v40 = v39;
  if (v17)
  {
    v41 = 1;
  }

  else
  {
    if (error)
    {
      v42 = v39;
      *error = v40;
    }

    v41 = 3;
  }

  _Block_object_dispose(&v49, 8);
  return v41;
}

@end