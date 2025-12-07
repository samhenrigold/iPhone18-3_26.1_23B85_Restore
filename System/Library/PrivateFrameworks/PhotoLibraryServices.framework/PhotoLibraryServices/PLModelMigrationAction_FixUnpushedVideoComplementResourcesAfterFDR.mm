@interface PLModelMigrationAction_FixUnpushedVideoComplementResourcesAfterFDR
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixUnpushedVideoComplementResourcesAfterFDR

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v120[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = +[PLManagedAsset fetchRequest];
  v7 = MEMORY[0x1E696AB28];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
  v120[0] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kindSubtype", 2];
  v120[1] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"master"];
  v120[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:3];
  v12 = [v7 andPredicateWithSubpredicates:v11];
  [v6 setPredicate:v12];

  [v6 setFetchBatchSize:100];
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 1;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__23792;
  v79 = __Block_byref_object_dispose__23793;
  v80 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v70 = 0;
  v13 = [contextCopy executeFetchRequest:v6 error:&v70];
  v14 = v70;
  if (objc_msgSend_count(v13))
  {
    v15 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v13) pendingParentUnitCount:0];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __114__PLModelMigrationAction_FixUnpushedVideoComplementResourcesAfterFDR_performActionWithManagedObjectContext_error___block_invoke;
    v65[3] = &unk_1E75726E8;
    v67 = &v71;
    v65[4] = self;
    v68 = &v75;
    v69 = &v81;
    v16 = v15;
    v66 = v16;
    v17 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v13 withBlock:v65];
    if (v17)
    {
      v82[3] = 3;
      v18 = PLMigrationGetLog();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

      if (v19)
      {
        logger = [(PLModelMigrationActionCore *)self logger];
        v21 = logger == 0;

        if (v21)
        {
          v47 = PLMigrationGetLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = objc_opt_class();
            v49 = NSStringFromClass(v48);
            *buf = 138543618;
            *&buf[4] = v49;
            *&buf[12] = 2114;
            *&buf[14] = v17;
            _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v22 = PLMigrationGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = 3;
          }

          else
          {
            v23 = 2;
          }

          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          v85 = 138543618;
          v86 = v25;
          v87 = 2114;
          v88 = v17;
          LODWORD(v63) = 22;
          v26 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 16, "Failed to save managed object context for %{public}@. Error: %{public}@", &v85, v63);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{898, 16}];

          if (v26 != buf)
          {
            free(v26);
          }
        }
      }

      if (v76[5])
      {
        v50 = v76[5];
      }

      else
      {
        v50 = v17;
      }

      objc_storeStrong(v76 + 5, v50);
    }

    else
    {
      v38 = PLMigrationGetLog();
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);

      if (v39)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];
        v41 = logger3 == 0;

        if (v41)
        {
          v55 = PLMigrationGetLog();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = v72[3];
            *buf = 134217984;
            *&buf[4] = v56;
            _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_DEFAULT, "Fixed unpushed video complement resources: %tu", buf, 0xCu);
          }
        }

        else
        {
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v42 = PLMigrationGetLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = 3;
          }

          else
          {
            v43 = 2;
          }

          v44 = v72[3];
          v85 = 134217984;
          v86 = v44;
          v45 = _os_log_send_and_compose_impl(v43, 0, buf, 512, &dword_19BF1F000, v42, 0, "Fixed unpushed video complement resources: %tu", &v85);

          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v45 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{895, 0}];

          if (v45 != buf)
          {
            free(v45);
          }
        }
      }
    }

LABEL_33:
    goto LABEL_34;
  }

  if (!v13)
  {
    v82[3] = 3;
    v28 = PLMigrationGetLog();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

    if (v29)
    {
      logger5 = [(PLModelMigrationActionCore *)self logger];
      v31 = logger5 == 0;

      if (v31)
      {
        v57 = PLMigrationGetLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = objc_opt_class();
          v59 = NSStringFromClass(v58);
          *buf = 138543618;
          *&buf[4] = v59;
          *&buf[12] = 2114;
          *&buf[14] = v14;
          _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v32 = PLMigrationGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v85 = 138543618;
        v86 = v35;
        v87 = 2114;
        v88 = v14;
        LODWORD(v63) = 22;
        v36 = _os_log_send_and_compose_impl(v33, 0, buf, 512, &dword_19BF1F000, v32, 16, "Failed to execute fetch request for %{public}@. Error: %{public}@", &v85, v63);

        logger6 = [(PLModelMigrationActionCore *)self logger];
        [logger6 logWithMessage:v36 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{903, 16}];

        if (v36 != buf)
        {
          free(v36);
        }
      }
    }

    v60 = v76;
    v61 = v76[5];
    if (!v61)
    {
      v61 = v14;
    }

    v62 = v61;
    v16 = v60[5];
    v60[5] = v62;
    goto LABEL_33;
  }

LABEL_34:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v51 = v82[3];
  v52 = v76[5];
  if (v51 != 1 && error)
  {
    v52 = v52;
    *error = v52;
  }

  v53 = v82[3];
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);

  _Block_object_dispose(&v81, 8);
  return v53;
}

@end