@interface PLModelMigrationAction_SetDefaultFaceAnalysisVersion
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_SetDefaultFaceAnalysisVersion

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v98 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ([(PLModelMigrationActionCore *)self startingSchemaVersion]>> 3 <= 0x752u)
  {
    v7 = 5;
  }

  else
  {
    v7 = 10;
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 1;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__53337;
  v57 = __Block_byref_object_dispose__53338;
  v58 = 0;
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLManagedAsset entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"faceAdjustmentVersion"];
  [v10 setPredicate:v11];
  v12 = v54 + 5;
  obj = v54[5];
  v13 = [contextCopy executeFetchRequest:v10 error:&obj];
  objc_storeStrong(v12, obj);
  v14 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v13) pendingParentUnitCount:0];
  v15 = v14;
  if (v13)
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __100__PLModelMigrationAction_SetDefaultFaceAnalysisVersion_performActionWithManagedObjectContext_error___block_invoke;
    v47[3] = &unk_1E756DC30;
    v47[4] = self;
    v49 = &v53;
    v50 = &v59;
    v51 = v7;
    v48 = v14;
    v16 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v13 withBlock:v47];
    if (v16)
    {
      if (!v54[5])
      {
        objc_storeStrong(v54 + 5, v16);
        v60[3] = 3;
        v17 = PLMigrationGetLog();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

        if (v18)
        {
          logger = [(PLModelMigrationActionCore *)self logger];
          v20 = logger == 0;

          if (v20)
          {
            v40 = PLMigrationGetLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = objc_opt_class();
              v42 = NSStringFromClass(v41);
              *buf = 138543618;
              *&buf[4] = v42;
              *&buf[12] = 2114;
              *&buf[14] = v16;
              _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
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
            memset(buf, 0, sizeof(buf));
            v45 = PLMigrationGetLog();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v21 = 3;
            }

            else
            {
              v21 = 2;
            }

            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            v63 = 138543618;
            v64 = v23;
            v65 = 2114;
            v66 = v16;
            v46 = _os_log_send_and_compose_impl(v21, 0, buf, 512, &dword_19BF1F000, v45, 16, "Failed to perform a save operation for %{public}@. Error: %{public}@", &v63, 22);

            logger2 = [(PLModelMigrationActionCore *)self logger];
            [logger2 logWithMessage:v46 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{630, 16}];

            if (v46 != buf)
            {
              free(v46);
            }
          }
        }
      }
    }
  }

  else
  {
    v60[3] = 3;
    v25 = PLMigrationGetLog();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

    if (v26)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v28 = logger3 == 0;

      if (v28)
      {
        v36 = PLMigrationGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          v39 = v54[5];
          *buf = 138543618;
          *&buf[4] = v38;
          *&buf[12] = 2114;
          *&buf[14] = v39;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = v54[5];
        v63 = 138543618;
        v64 = v32;
        v65 = 2114;
        v66 = v33;
        v34 = _os_log_send_and_compose_impl(v30, 0, buf, 512, &dword_19BF1F000, v29, 16, "Failed to execute fetch request for %{public}@. Error: %{public}@", &v63, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v34 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{634, 16}];

        if (v34 != buf)
        {
          free(v34);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    *error = v54[5];
  }

  v43 = v60[3];

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  return v43;
}

@end