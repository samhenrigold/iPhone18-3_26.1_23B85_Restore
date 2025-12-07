@interface PLModelMigrationActionStaged_MoveLibraryScopeShareState
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationActionStaged_MoveLibraryScopeShareState

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v99[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__67058;
  v62 = __Block_byref_object_dispose__67059;
  v63 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLAdditionalAssetAttributes entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"libraryScopeShareState != %d", 0];
  [v9 setPredicate:v10];

  [v9 setFetchBatchSize:100];
  v99[0] = @"asset";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v11];

  v12 = v59 + 5;
  obj = v59[5];
  v13 = [contextCopy executeFetchRequest:v9 error:&obj];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v14 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v13) pendingParentUnitCount:0];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __103__PLModelMigrationActionStaged_MoveLibraryScopeShareState_performActionWithManagedObjectContext_error___block_invoke;
    v49[3] = &unk_1E756FFE0;
    v49[4] = self;
    v51 = &v58;
    v52 = &v54;
    v15 = v14;
    v50 = v15;
    v16 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v13 withBlock:v49];
    if (v16)
    {
      if (!v59[5])
      {
        objc_storeStrong(v59 + 5, v16);
        v55[3] = 3;
        v17 = PLMigrationGetLog();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

        if (v18)
        {
          logger = [(PLModelMigrationActionCore *)self logger];
          v20 = logger == 0;

          if (v20)
          {
            v41 = PLMigrationGetLog();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = objc_opt_class();
              v43 = NSStringFromClass(v42);
              *buf = 138543618;
              *&buf[4] = v43;
              *&buf[12] = 2114;
              *&buf[14] = v16;
              _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
            }
          }

          else
          {
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
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            memset(buf, 0, sizeof(buf));
            v48 = PLMigrationGetLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v21 = 3;
            }

            else
            {
              v21 = 2;
            }

            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            v64 = 138543618;
            v65 = v23;
            v66 = 2114;
            v67 = v16;
            v24 = _os_log_send_and_compose_impl(v21, 0, buf, 512, &dword_19BF1F000, v48, 16, "Failed to perform a save operation for %{public}@. Error: %{public}@", &v64, 22);

            logger2 = [(PLModelMigrationActionCore *)self logger];
            [logger2 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActionStaged.m" type:{179, 16}];

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
    v55[3] = 3;
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
          v40 = v59[5];
          *buf = 138543618;
          *&buf[4] = v39;
          *&buf[12] = 2114;
          *&buf[14] = v40;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
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
        v34 = v59[5];
        v64 = 138543618;
        v65 = v33;
        v66 = 2114;
        v67 = v34;
        v35 = _os_log_send_and_compose_impl(v31, 0, buf, 512, &dword_19BF1F000, v30, 16, "Failed to execute fetch request for %{public}@. Error: %{public}@", &v64, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActionStaged.m" type:{183, 16}];

        if (v35 != buf)
        {
          free(v35);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v44 = v55[3];
  v45 = v59[5];
  if (v44 != 1 && error)
  {
    v45 = v45;
    *error = v45;
  }

  v46 = v55[3];
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);

  return v46;
}

@end