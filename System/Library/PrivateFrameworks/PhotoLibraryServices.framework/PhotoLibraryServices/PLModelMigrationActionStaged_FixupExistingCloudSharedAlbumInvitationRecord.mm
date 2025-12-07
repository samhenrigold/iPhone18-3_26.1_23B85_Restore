@interface PLModelMigrationActionStaged_FixupExistingCloudSharedAlbumInvitationRecord
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationActionStaged_FixupExistingCloudSharedAlbumInvitationRecord

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v96 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__67058;
  v59 = __Block_byref_object_dispose__67059;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLCloudSharedAlbumInvitationRecord entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"uuid"];
  [v9 setPredicate:v10];

  [v9 setFetchBatchSize:100];
  v11 = v56 + 5;
  obj = v56[5];
  v12 = [contextCopy executeFetchRequest:v9 error:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v12) pendingParentUnitCount:0];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __122__PLModelMigrationActionStaged_FixupExistingCloudSharedAlbumInvitationRecord_performActionWithManagedObjectContext_error___block_invoke;
    v46[3] = &unk_1E756FFB8;
    v46[4] = self;
    v48 = &v55;
    v49 = &v51;
    v14 = v13;
    v47 = v14;
    v15 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v12 withBlock:v46];
    if (v15)
    {
      if (!v56[5])
      {
        objc_storeStrong(v56 + 5, v15);
        v52[3] = 3;
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
            v66 = 0u;
            v67 = 0u;
            memset(buf, 0, sizeof(buf));
            v45 = PLMigrationGetLog();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v20 = 3;
            }

            else
            {
              v20 = 2;
            }

            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v61 = 138543618;
            v62 = v22;
            v63 = 2114;
            v64 = v15;
            v23 = _os_log_send_and_compose_impl(v20, 0, buf, 512, &dword_19BF1F000, v45, 16, "Failed to perform a save operation for %{public}@. Error: %{public}@", &v61, 22);

            logger2 = [(PLModelMigrationActionCore *)self logger];
            [logger2 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActionStaged.m" type:{131, 16}];

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
    v52[3] = 3;
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
          v39 = v56[5];
          *buf = 138543618;
          *&buf[4] = v38;
          *&buf[12] = 2114;
          *&buf[14] = v39;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v66 = 0u;
        v67 = 0u;
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
        v33 = v56[5];
        v61 = 138543618;
        v62 = v32;
        v63 = 2114;
        v64 = v33;
        v34 = _os_log_send_and_compose_impl(v30, 0, buf, 512, &dword_19BF1F000, v29, 16, "Failed to execute fetch request for %{public}@. Error: %{public}@", &v61, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v34 fromCodeLocation:"PLModelMigrationActionStaged.m" type:{135, 16}];

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
    *error = v56[5];
  }

  v43 = v52[3];

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

  return v43;
}

@end