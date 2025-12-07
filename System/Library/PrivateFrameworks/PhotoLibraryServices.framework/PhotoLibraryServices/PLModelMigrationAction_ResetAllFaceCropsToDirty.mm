@interface PLModelMigrationAction_ResetAllFaceCropsToDirty
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetAllFaceCropsToDirty

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v67[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D560];
  contextCopy = context;
  v7 = +[PLFaceCrop entityName];
  v8 = [v5 batchUpdateRequestWithEntityName:v7];

  v66 = @"state";
  v67[0] = &unk_1F0FBB6B0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v66 count:1];
  [v8 setPropertiesToUpdate:v9];

  [v8 setResultType:2];
  v10 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  [v8 setPredicate:v10];

  v31 = 0;
  v11 = [contextCopy executeRequest:v8 error:&v31];

  v12 = v31;
  v13 = PLMigrationGetLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    if (v14)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v41 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        *buf = 0u;
        v16 = PLMigrationGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        result = [v11 result];
        v32 = 138412290;
        v33 = result;
        v19 = _os_log_send_and_compose_impl(v17, 0, buf, 512, &dword_19BF1F000, v16, 0, "Updated %@ face crops", &v32, 12);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v19 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1344, 0}];

        if (v19 != buf)
        {
          free(v19);
        }
      }

      else
      {
        v26 = PLMigrationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          result2 = [v11 result];
          *buf = 138412290;
          *&buf[4] = result2;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Updated %@ face crops", buf, 0xCu);
        }
      }
    }

    v28 = 1;
  }

  else
  {
    if (v14)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        v41 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
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

        v32 = 138412290;
        v33 = v12;
        v24 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 0, "Failed to batch update face crops: %@", &v32, 12);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1346, 0}];

        if (v24 != buf)
        {
          free(v24);
        }
      }

      else
      {
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v12;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "Failed to batch update face crops: %@", buf, 0xCu);
        }
      }
    }

    v28 = 3;
  }

  return v28;
}

@end