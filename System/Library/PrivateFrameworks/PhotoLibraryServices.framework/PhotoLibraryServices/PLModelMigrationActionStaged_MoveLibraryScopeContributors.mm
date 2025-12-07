@interface PLModelMigrationActionStaged_MoveLibraryScopeContributors
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationActionStaged_MoveLibraryScopeContributors

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v103 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__67058;
  v66 = __Block_byref_object_dispose__67059;
  v67 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"libraryScopeOriginators.@count != 0"];
  [v9 setPredicate:v10];

  [v9 setFetchBatchSize:100];
  v11 = v63 + 5;
  obj = v63[5];
  v12 = [contextCopy executeFetchRequest:v9 error:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v12) pendingParentUnitCount:0];
    v48 = MEMORY[0x1E69E9820];
    v49 = 3221225472;
    v50 = __105__PLModelMigrationActionStaged_MoveLibraryScopeContributors_performActionWithManagedObjectContext_error___block_invoke;
    v51 = &unk_1E7570008;
    v52 = contextCopy;
    selfCopy = self;
    v55 = &v62;
    v56 = &v58;
    v14 = v13;
    v54 = v14;
    v15 = [v52 enumerateWithIncrementalSaveUsingObjects:v12 withBlock:&v48];
    if (v15)
    {
      if (!v63[5])
      {
        objc_storeStrong(v63 + 5, v15);
        v59[3] = 3;
        v16 = PLMigrationGetLog();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

        if (v17)
        {
          logger = [(PLModelMigrationActionCore *)self logger];
          v19 = logger == 0;

          if (v19)
          {
            v41 = PLMigrationGetLog();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = objc_opt_class();
              v43 = NSStringFromClass(v42);
              *buf = 138543618;
              *&buf[4] = v43;
              *&buf[12] = 2114;
              *&buf[14] = v15;
              _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
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
            memset(buf, 0, sizeof(buf));
            v20 = PLMigrationGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = 3;
            }

            else
            {
              v21 = 2;
            }

            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            v68 = 138543618;
            v69 = v23;
            v70 = 2114;
            v71 = v15;
            v24 = _os_log_send_and_compose_impl(v21, 0, buf, 512, &dword_19BF1F000, v20, 16, "Failed to perform a save operation for %{public}@. Error: %{public}@", &v68, 22, v48, v49, v50, v51, v52, selfCopy);

            logger2 = [(PLModelMigrationActionCore *)self logger];
            [logger2 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActionStaged.m" type:{230, 16}];

            if (v24 != buf)
            {
              free(v24);
            }
          }
        }
      }
    }
  }

  else
  {
    v59[3] = 3;
    v26 = PLMigrationGetLog();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

    if (v27)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v29 = logger3 == 0;

      if (v29)
      {
        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          v40 = v63[5];
          *buf = 138543618;
          *&buf[4] = v39;
          *&buf[12] = 2114;
          *&buf[14] = v40;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v30 = PLMigrationGetLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = v63[5];
        v68 = 138543618;
        v69 = v33;
        v70 = 2114;
        v71 = v34;
        v35 = _os_log_send_and_compose_impl(v31, 0, buf, 512, &dword_19BF1F000, v30, 16, "Failed to execute fetch request for %{public}@. Error: %{public}@", &v68, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActionStaged.m" type:{234, 16}];

        if (v35 != buf)
        {
          free(v35);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v44 = v59[3];
  v45 = v63[5];
  if (v44 != 1 && error)
  {
    v45 = v45;
    *error = v45;
  }

  v46 = v59[3];
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);

  return v46;
}

@end