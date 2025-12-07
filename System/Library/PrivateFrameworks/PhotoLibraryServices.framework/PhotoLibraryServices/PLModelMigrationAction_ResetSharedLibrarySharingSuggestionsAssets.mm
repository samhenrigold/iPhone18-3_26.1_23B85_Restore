@interface PLModelMigrationAction_ResetSharedLibrarySharingSuggestionsAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetSharedLibrarySharingSuggestionsAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v94 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 1;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__23792;
  v53 = __Block_byref_object_dispose__23793;
  v54 = 0;
  v7 = +[PLManagedAsset fetchRequest];
  v8 = +[PLManagedAsset predicateToIncludeSharedLibrarySharingSuggestionsAssets];
  [v7 setPredicate:v8];

  [v7 setFetchBatchSize:100];
  v9 = v50 + 5;
  obj = v50[5];
  v10 = [contextCopy executeFetchRequest:v7 error:&obj];
  objc_storeStrong(v9, obj);
  if (objc_msgSend_count(v10))
  {
    v11 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v10) pendingParentUnitCount:0];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __113__PLModelMigrationAction_ResetSharedLibrarySharingSuggestionsAssets_performActionWithManagedObjectContext_error___block_invoke;
    v44[3] = &unk_1E756DBE0;
    v44[4] = self;
    v46 = &v49;
    v47 = &v55;
    v12 = v11;
    v45 = v12;
    v13 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v10 withBlock:v44];
    if (v13 && !v50[5])
    {
      objc_storeStrong(v50 + 5, v13);
      v56[3] = 3;
    }

    if (v56[3] == 1)
    {
      v14 = PLMigrationGetLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

      if (v15)
      {
        logger = [(PLModelMigrationActionCore *)self logger];
        v17 = logger == 0;

        if (!v17)
        {
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
          v64 = 0u;
          v65 = 0u;
          memset(buf, 0, sizeof(buf));
          v18 = PLMigrationGetLog();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          v20 = objc_msgSend_count(v10);
          if (v19)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          v59 = 67109120;
          LODWORD(v60) = v20;
          v22 = _os_log_send_and_compose_impl(v21, 0, buf, 512, &dword_19BF1F000, v18, 0, "Removed %d asset suggestions by photos", &v59);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{435, 0}];

          goto LABEL_20;
        }

        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = objc_msgSend_count(v10);
          *buf = 67109120;
          *&buf[4] = v35;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Removed %d asset suggestions by photos", buf, 8u);
        }

LABEL_27:
      }
    }

    else
    {
      v24 = PLMigrationGetLog();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (v25)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];
        v27 = logger3 == 0;

        if (!v27)
        {
          errorCopy = error;
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
          v64 = 0u;
          v65 = 0u;
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
          v32 = v50[5];
          v59 = 138543618;
          v60 = v31;
          v61 = 2114;
          v62 = v32;
          v22 = _os_log_send_and_compose_impl(v29, 0, buf, 512, &dword_19BF1F000, v28, 16, "Failed to save managed object context for %{public}@. Error: %{public}@", &v59, 22);

          error = errorCopy;
          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{437, 16}];

LABEL_20:
          if (v22 != buf)
          {
            free(v22);
          }

          goto LABEL_28;
        }

        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v38 = v50[5];
          *buf = 138543618;
          *&buf[4] = v37;
          *&buf[12] = 2114;
          *&buf[14] = v38;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
        }

        goto LABEL_27;
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  if (!v10)
  {
    v56[3] = 3;
  }

LABEL_29:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v39 = v56[3];
  v40 = v50[5];
  if (v39 != 1 && error)
  {
    v40 = v40;
    *error = v40;
  }

  v41 = v56[3];
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);
  return v41;
}

@end