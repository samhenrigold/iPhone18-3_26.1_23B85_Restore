@interface PLModelMigrationAction_ReevaluateAllowedForAnalysisForMontageAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ReevaluateAllowedForAnalysisForMontageAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v75[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"%K != nil", @"montage"];
  v74 = @"allowedForAnalysis";
  v75[0] = MEMORY[0x1E695E110];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
  v10 = +[PLAdditionalAssetAttributes entityName];
  v38 = 0;
  v11 = [PLModelMigrator executeBatchUpdateWithEntityName:v10 predicate:v8 propertiesToUpdate:v9 managedObjectContext:contextCopy error:&v38];

  v12 = v38;
  if (v11)
  {
    v13 = PLMigrationGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        memset(buf, 0, sizeof(buf));
        v16 = PLMigrationGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        LOWORD(v39) = 0;
        v18 = _os_log_send_and_compose_impl(v17, 0, buf, 512, &dword_19BF1F000, v16, 0, "Successfully set allowedForAnalysis to NO for montageAssets", &v39, 2);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v18 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{545, 0}];

        if (v18 != buf)
        {
          free(v18);
        }
      }

      else
      {
        v30 = PLMigrationGetLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Successfully set allowedForAnalysis to NO for montageAssets", buf, 2u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v31 = v12;
    v32 = 1;
  }

  else
  {
    if (error)
    {
      v20 = v12;
      *error = v12;
    }

    v21 = PLMigrationGetLog();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        memset(buf, 0, sizeof(buf));
        v24 = PLMigrationGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v39 = 138543618;
        v40 = v27;
        v41 = 2114;
        v42 = v12;
        v28 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_19BF1F000, v24, 16, "Failed to set allowedForAnalysis to NO for montageAssets %{public}@. Error: %{public}@", &v39, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{549, 16}];

        if (v28 != buf)
        {
          free(v28);
        }
      }

      else
      {
        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          *buf = 138543618;
          *&buf[4] = v35;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Failed to set allowedForAnalysis to NO for montageAssets %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v36 = v12;
    if (error)
    {
      *error = v36;
    }

    v32 = 3;
  }

  return v32;
}

@end