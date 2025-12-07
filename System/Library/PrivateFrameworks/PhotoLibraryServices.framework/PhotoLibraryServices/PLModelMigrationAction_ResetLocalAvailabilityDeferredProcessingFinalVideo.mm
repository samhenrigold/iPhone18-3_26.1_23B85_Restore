@interface PLModelMigrationAction_ResetLocalAvailabilityDeferredProcessingFinalVideo
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetLocalAvailabilityDeferredProcessingFinalVideo

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v78[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695D560];
  contextCopy = context;
  v8 = +[PLInternalResource entityName];
  v9 = [v6 batchUpdateRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  131280 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"recipeID", 131280];
  v78[0] = 131280;
  4294934528 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"localAvailability", 4294934528];
  v78[1] = 4294934528;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  [v9 setPredicate:v14];

  v76 = @"localAvailability";
  v77 = &unk_1F0FBB6C8;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
  [v9 setPropertiesToUpdate:v15];

  [v9 setResultType:2];
  v41 = 0;
  v16 = [contextCopy executeRequest:v9 error:&v41];

  v17 = v41;
  v18 = PLMigrationGetLog();
  v19 = v18;
  if (v16)
  {
    v20 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v20)
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
        v51 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        *buf = 0u;
        v22 = PLMigrationGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        result = [v16 result];
        v42 = 138412290;
        v43 = result;
        LODWORD(v40) = 12;
        v25 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 0, "Batch update to reset deferred processing video complement resources localAvailability from not possible -> none request successful with result %@", &v42, v40);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1651, 0}];

        if (v25 != buf)
        {
          free(v25);
        }
      }

      else
      {
        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          result2 = [v16 result];
          *buf = 138412290;
          *&buf[4] = result2;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Batch update to reset deferred processing video complement resources localAvailability from not possible -> none request successful with result %@", buf, 0xCu);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v35 = v17;
    v36 = 1;
  }

  else
  {
    v27 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (v27)
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
        v51 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        *buf = 0u;
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v42 = 138412290;
        v43 = v17;
        LODWORD(v40) = 12;
        v31 = _os_log_send_and_compose_impl(v30, 0, buf, 512, &dword_19BF1F000, v29, 16, "Batch update to reset deferred processing video complement resources localAvailability from not possible -> none request failed, error: %@", &v42, v40);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1649, 16}];

        if (v31 != buf)
        {
          free(v31);
        }
      }

      else
      {
        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v17;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Batch update to reset deferred processing video complement resources localAvailability from not possible -> none request failed, error: %@", buf, 0xCu);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v38 = v17;
    if (error)
    {
      *error = v38;
    }

    v36 = 3;
  }

  return v36;
}

@end