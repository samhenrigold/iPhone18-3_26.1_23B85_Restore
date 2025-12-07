@interface PLModelMigrationAction_PromoteLeftoverDeferredAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_PromoteLeftoverDeferredAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v97 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 1;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__53337;
  v56 = __Block_byref_object_dispose__53338;
  v57 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLInternalResource entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  65944 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"recipeID", 65944];
  [v9 setPredicate:65944];

  [v9 setFetchBatchSize:100];
  v11 = v53 + 5;
  obj = v53[5];
  v12 = [contextCopy executeFetchRequest:v9 error:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v12) pendingParentUnitCount:0];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __100__PLModelMigrationAction_PromoteLeftoverDeferredAssets_performActionWithManagedObjectContext_error___block_invoke;
    v47[3] = &unk_1E756DB90;
    v47[4] = self;
    v49 = &v52;
    v50 = &v58;
    v14 = v13;
    v48 = v14;
    v15 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v12 withBlock:v47];
    if (v15)
    {
      if (!v53[5])
      {
        objc_storeStrong(v53 + 5, v15);
        v59[3] = 3;
        v16 = PLMigrationGetLog();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

        if (v17)
        {
          logger = [(PLModelMigrationActionCore *)self logger];
          v19 = logger == 0;

          if (v19)
          {
            v40 = PLMigrationGetLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = objc_opt_class();
              v42 = NSStringFromClass(v41);
              *buf = 138543618;
              *&buf[4] = v42;
              *&buf[12] = 2114;
              *&buf[14] = v15;
              _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
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
            memset(buf, 0, sizeof(buf));
            v46 = PLMigrationGetLog();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v20 = 3;
            }

            else
            {
              v20 = 2;
            }

            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v62 = 138543618;
            v63 = v22;
            v64 = 2114;
            v65 = v15;
            LODWORD(v45) = 22;
            v23 = _os_log_send_and_compose_impl(v20, 0, buf, 512, &dword_19BF1F000, v46, 16, "Failed to perform a save operation for %{public}@. Error: %{public}@", &v62, v45);

            logger2 = [(PLModelMigrationActionCore *)self logger];
            [logger2 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{182, 16}];

            if (v23 != buf)
            {
              free(v23);
            }
          }
        }
      }
    }
  }

  else
  {
    v59[3] = 3;
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
          v39 = v53[5];
          *buf = 138543618;
          *&buf[4] = v38;
          *&buf[12] = 2114;
          *&buf[14] = v39;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
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
        v33 = v53[5];
        v62 = 138543618;
        v63 = v32;
        v64 = 2114;
        v65 = v33;
        LODWORD(v45) = 22;
        v34 = _os_log_send_and_compose_impl(v30, 0, buf, 512, &dword_19BF1F000, v29, 16, "Failed to execute fetch request for %{public}@. Error: %{public}@", &v62, v45);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v34 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{186, 16}];

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
    *error = v53[5];
  }

  v43 = v59[3];

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  return v43;
}

@end