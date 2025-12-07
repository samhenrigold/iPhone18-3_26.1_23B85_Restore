@interface PLModelMigrationAction_ResetClusterSequenceNumberForRejectedFaces
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetClusterSequenceNumberForRejectedFaces

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v67[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"%K == %d", @"trainingType", 2];
  v66 = @"clusterSequenceNumber";
  v67[0] = &unk_1F0FBC028;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v66 count:1];
  v10 = +[PLDetectedFace entityName];
  v30 = 0;
  v11 = [PLModelMigrator executeBatchUpdateWithEntityName:v10 predicate:v8 propertiesToUpdate:v9 managedObjectContext:contextCopy error:&v30];

  v12 = v30;
  if (v11)
  {
    [(PLModelMigrationActionCore *)self finalizeProgress];
    v13 = v12;
    v14 = 1;
  }

  else
  {
    v15 = PLMigrationGetLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (v16)
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
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        memset(buf, 0, sizeof(buf));
        v18 = PLMigrationGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v31 = 138543618;
        v32 = v21;
        v33 = 2114;
        v34 = v12;
        LODWORD(v29) = 22;
        v22 = _os_log_send_and_compose_impl(v19, 0, buf, 512, &dword_19BF1F000, v18, 16, "Failed to execute batch update request for %{public}@. Error: %{public}@", &v31, v29);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{841, 16}];

        if (v22 != buf)
        {
          free(v22);
        }
      }

      else
      {
        v24 = PLMigrationGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          *buf = 138543618;
          *&buf[4] = v26;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Failed to execute batch update request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v27 = v12;
    if (error)
    {
      *error = v27;
    }

    v14 = 3;
  }

  return v14;
}

@end