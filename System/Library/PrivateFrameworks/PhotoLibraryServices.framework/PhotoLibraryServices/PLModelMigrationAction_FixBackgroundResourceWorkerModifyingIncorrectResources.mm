@interface PLModelMigrationAction_FixBackgroundResourceWorkerModifyingIncorrectResources
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixBackgroundResourceWorkerModifyingIncorrectResources

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v102[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 1;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__53337;
  v61 = __Block_byref_object_dispose__53338;
  v62 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLInternalResource entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"dataStoreClassID", 0];
  v102[0] = v11;
  4294934528 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"localAvailability", 4294934528];
  v102[1] = 4294934528;
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (%K IN %@)", @"recipeID", &unk_1F0FBFCB8];
  v102[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:3];
  v15 = [v10 andPredicateWithSubpredicates:v14];
  [v9 setPredicate:v15];

  v16 = v58 + 5;
  obj = v58[5];
  v17 = [contextCopy executeFetchRequest:v9 error:&obj];
  objc_storeStrong(v16, obj);
  v18 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v17) pendingParentUnitCount:0];
  v19 = v18;
  if (v17)
  {
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __125__PLModelMigrationAction_FixBackgroundResourceWorkerModifyingIncorrectResources_performActionWithManagedObjectContext_error___block_invoke;
    v52[3] = &unk_1E756DB90;
    v52[4] = self;
    v54 = &v57;
    v55 = &v63;
    v53 = v18;
    v20 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v17 withBlock:v52];
    if (v20)
    {
      if (!v58[5])
      {
        objc_storeStrong(v58 + 5, v20);
        v64[3] = 3;
        v21 = PLMigrationGetLog();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

        if (v22)
        {
          logger = [(PLModelMigrationActionCore *)self logger];
          v24 = logger == 0;

          if (v24)
          {
            v45 = PLMigrationGetLog();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v46 = objc_opt_class();
              v47 = NSStringFromClass(v46);
              *buf = 138543618;
              *&buf[4] = v47;
              *&buf[12] = 2114;
              *&buf[14] = v20;
              _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
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
            memset(buf, 0, sizeof(buf));
            v51 = PLMigrationGetLog();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v25 = 3;
            }

            else
            {
              v25 = 2;
            }

            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            v67 = 138543618;
            v68 = v27;
            v69 = 2114;
            v70 = v20;
            LODWORD(v50) = 22;
            v28 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_19BF1F000, v51, 16, "Failed to perform a save operation for %{public}@. Error: %{public}@", &v67, v50);

            logger2 = [(PLModelMigrationActionCore *)self logger];
            [logger2 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{726, 16}];

            if (v28 != buf)
            {
              free(v28);
            }
          }
        }
      }
    }
  }

  else
  {
    v64[3] = 3;
    v30 = PLMigrationGetLog();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

    if (v31)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v33 = logger3 == 0;

      if (v33)
      {
        v41 = PLMigrationGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          v44 = v58[5];
          *buf = 138543618;
          *&buf[4] = v43;
          *&buf[12] = 2114;
          *&buf[14] = v44;
          _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = v58[5];
        v67 = 138543618;
        v68 = v37;
        v69 = 2114;
        v70 = v38;
        LODWORD(v50) = 22;
        v39 = _os_log_send_and_compose_impl(v35, 0, buf, 512, &dword_19BF1F000, v34, 16, "Failed to execute fetch request for %{public}@. Error: %{public}@", &v67, v50);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v39 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{730, 16}];

        if (v39 != buf)
        {
          free(v39);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    *error = v58[5];
  }

  v48 = v64[3];

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  return v48;
}

@end