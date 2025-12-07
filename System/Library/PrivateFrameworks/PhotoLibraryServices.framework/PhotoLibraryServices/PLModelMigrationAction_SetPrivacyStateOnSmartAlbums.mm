@interface PLModelMigrationAction_SetPrivacyStateOnSmartAlbums
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_SetPrivacyStateOnSmartAlbums

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v113 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__23792;
  v76 = __Block_byref_object_dispose__23793;
  v77 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 1;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLGenericAlbum entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  1507 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 1507];
  [v8 setPredicate:1507];

  [v8 setFetchBatchSize:100];
  v67 = 0;
  v10 = [contextCopy executeFetchRequest:v8 error:&v67];
  v62 = v67;
  if (v10)
  {
    v11 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v10) pendingParentUnitCount:0];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __99__PLModelMigrationAction_SetPrivacyStateOnSmartAlbums_performActionWithManagedObjectContext_error___block_invoke;
    v63[3] = &unk_1E7569C08;
    v63[4] = self;
    v65 = &v72;
    v66 = &v68;
    v12 = v11;
    v64 = v12;
    v13 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v10 withBlock:v63];
    if (v13)
    {
      v69[3] = 3;
      v14 = PLMigrationGetLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (v15)
      {
        logger = [(PLModelMigrationActionCore *)self logger];
        v17 = logger == 0;

        if (v17)
        {
          v44 = PLMigrationGetLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v45 = objc_opt_class();
            v46 = NSStringFromClass(v45);
            *buf = 138543618;
            *&buf[4] = v46;
            *&buf[12] = 2114;
            *&buf[14] = v13;
            _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
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
          v78 = 138543618;
          v79 = v21;
          v80 = 2114;
          v81 = v13;
          LODWORD(v60) = 22;
          v22 = _os_log_send_and_compose_impl(v19, 0, buf, 512, &dword_19BF1F000, v18, 16, "Failed to save managed object context for %{public}@. Error: %{public}@", &v78, v60);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{330, 16}];

          if (v22 != buf)
          {
            free(v22);
          }
        }
      }

      if (v73[5])
      {
        v47 = v73[5];
      }

      else
      {
        v47 = v13;
      }

      objc_storeStrong(v73 + 5, v47);
    }

    else
    {
      v34 = PLMigrationGetLog();
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

      if (v35)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];
        v37 = logger3 == 0;

        if (v37)
        {
          v58 = PLMigrationGetLog();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = objc_msgSend_count(v10);
            *buf = 134217984;
            *&buf[4] = v59;
            _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEFAULT, "Updated privacy sensitive state for %lu smart albums", buf, 0xCu);
          }
        }

        else
        {
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v38 = PLMigrationGetLog();
          v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
          v40 = objc_msgSend_count(v10);
          if (v39)
          {
            v41 = 3;
          }

          else
          {
            v41 = 2;
          }

          v78 = 134217984;
          v79 = v40;
          v42 = _os_log_send_and_compose_impl(v41, 0, buf, 512, &dword_19BF1F000, v38, 0, "Updated privacy sensitive state for %lu smart albums", &v78);

          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v42 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{327, 0}];

          if (v42 != buf)
          {
            free(v42);
          }
        }
      }
    }
  }

  else
  {
    v69[3] = 3;
    v24 = PLMigrationGetLog();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      logger5 = [(PLModelMigrationActionCore *)self logger];
      v27 = logger5 == 0;

      if (v27)
      {
        v48 = PLMigrationGetLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          *buf = 138543618;
          *&buf[4] = v50;
          *&buf[12] = 2114;
          *&buf[14] = v62;
          _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v28 = PLMigrationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = 3;
        }

        else
        {
          v29 = 2;
        }

        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v78 = 138543618;
        v79 = v31;
        v80 = 2114;
        v81 = v62;
        LODWORD(v60) = 22;
        v32 = _os_log_send_and_compose_impl(v29, 0, buf, 512, &dword_19BF1F000, v28, 16, "Failed to execute fetch request for %{public}@. Error: %{public}@", &v78, v60);

        logger6 = [(PLModelMigrationActionCore *)self logger];
        [logger6 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{335, 16}];

        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    v51 = v73;
    v52 = v73[5];
    if (!v52)
    {
      v52 = v62;
    }

    v53 = v52;
    v12 = v51[5];
    v51[5] = v53;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v54 = v69[3];
  v55 = v73[5];
  if (v54 != 1 && error)
  {
    v55 = v55;
    *error = v55;
  }

  v56 = v69[3];
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);

  return v56;
}

@end