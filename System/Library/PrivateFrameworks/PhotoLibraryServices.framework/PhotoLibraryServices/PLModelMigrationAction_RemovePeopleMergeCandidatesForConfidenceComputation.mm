@interface PLModelMigrationAction_RemovePeopleMergeCandidatesForConfidenceComputation
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemovePeopleMergeCandidatesForConfidenceComputation

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v98 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 1;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__23792;
  v57 = __Block_byref_object_dispose__23793;
  v58 = 0;
  v7 = +[PLPerson fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d || %K == %d", @"verifiedType", 1, @"verifiedType", 2];
  [v7 setPredicate:v8];

  v9 = v54 + 5;
  obj = v54[5];
  v10 = [contextCopy executeFetchRequest:v7 error:&obj];
  objc_storeStrong(v9, obj);
  if (objc_msgSend_count(v10))
  {
    v11 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v10) pendingParentUnitCount:0];
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __122__PLModelMigrationAction_RemovePeopleMergeCandidatesForConfidenceComputation_performActionWithManagedObjectContext_error___block_invoke;
    v43[3] = &unk_1E7569C30;
    v45 = &v48;
    v43[4] = self;
    v46 = &v53;
    v47 = &v59;
    v12 = v11;
    v44 = v12;
    v13 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v10 withBlock:v43];
    if (v13 && !v54[5])
    {
      objc_storeStrong(v54 + 5, v13);
      v60[3] = 3;
    }

    if (v60[3] == 1)
    {
      v14 = PLMigrationGetLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

      if (v15)
      {
        logger = [(PLModelMigrationActionCore *)self logger];
        v17 = logger == 0;

        if (!v17)
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
          v18 = PLMigrationGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 3;
          }

          else
          {
            v19 = 2;
          }

          v20 = v49[3];
          v63 = 67109120;
          LODWORD(v64) = v20;
          v21 = _os_log_send_and_compose_impl(v19, 0, buf, 512, &dword_19BF1F000, v18, 0, "Updated merge candidates for %d verified persons", &v63);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{395, 0}];

          goto LABEL_20;
        }

        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v49[3];
          *buf = 67109120;
          *&buf[4] = v34;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Updated merge candidates for %d verified persons", buf, 8u);
        }

LABEL_27:
      }
    }

    else
    {
      v23 = PLMigrationGetLog();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

      if (v24)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];
        v26 = logger3 == 0;

        if (!v26)
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
          v27 = PLMigrationGetLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v31 = v54[5];
          v63 = 138543618;
          v64 = v30;
          v65 = 2114;
          v66 = v31;
          LODWORD(v42) = 22;
          v21 = _os_log_send_and_compose_impl(v28, 0, buf, 512, &dword_19BF1F000, v27, 16, "Failed to save managed object context for %{public}@. Error: %{public}@", &v63, v42);

          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{397, 16}];

LABEL_20:
          if (v21 != buf)
          {
            free(v21);
          }

          goto LABEL_28;
        }

        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v37 = v54[5];
          *buf = 138543618;
          *&buf[4] = v36;
          *&buf[12] = 2114;
          *&buf[14] = v37;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
        }

        goto LABEL_27;
      }
    }

LABEL_28:

    _Block_object_dispose(&v48, 8);
    goto LABEL_29;
  }

  if (v54[5])
  {
    v60[3] = 3;
  }

LABEL_29:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v38 = v60[3];
  v39 = v54[5];
  if (v38 != 1 && error)
  {
    v39 = v39;
    *error = v39;
  }

  v40 = v60[3];
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  return v40;
}

@end