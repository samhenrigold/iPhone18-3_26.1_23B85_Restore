@interface PLModelMigrationAction_RemoveRejectedMemberLabel
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveRejectedMemberLabel

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v106 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:1];
  [v7 becomeCurrentWithPendingUnitCount:1];
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLGraphLabel entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  1002 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"code", 1002];
  [v10 setPredicate:1002];

  v70 = 0;
  v12 = [contextCopy executeFetchRequest:v10 error:&v70];
  v13 = v70;
  firstObject = [v12 firstObject];

  if (v13)
  {
    v15 = PLMigrationGetLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (!v16)
    {
LABEL_24:
      v24 = 0;
      v25 = 3;
      goto LABEL_25;
    }

    logger = [(PLModelMigrationActionCore *)self logger];

    if (logger)
    {
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
      v79 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
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
      v71 = 138543618;
      v72 = v21;
      v73 = 2112;
      v74 = v13;
      LODWORD(v67) = 22;
      v22 = _os_log_send_and_compose_impl(v19, 0, buf, 512, &dword_19BF1F000, v18, 16, "Failed to process %{public}@. Failed to fetch label with error: %@", &v71, v67);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{505, 16}];

      if (v22 != buf)
      {
        free(v22);
      }

      v24 = 0;
      v25 = 3;
      goto LABEL_25;
    }

    v36 = PLMigrationGetLog();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
LABEL_23:

      goto LABEL_24;
    }

    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    *buf = 138543618;
    *&buf[4] = v38;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    v39 = "Failed to process %{public}@. Failed to fetch label with error: %@";
LABEL_22:
    _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, v39, buf, 0x16u);

    goto LABEL_23;
  }

  if (!firstObject)
  {
    v13 = 0;
    v24 = 1;
    v25 = 1;
    goto LABEL_25;
  }

  v69 = 0;
  v26 = [firstObject removeFromAdditionalLabelsOnAllEdgesWithError:&v69];
  v27 = v69;
  v28 = PLMigrationGetLog();
  v29 = v28;
  if (v26)
  {
    v30 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

    if (v30)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        v79 = 0u;
        v77 = 0u;
        v78 = 0u;
        v76 = 0u;
        memset(buf, 0, sizeof(buf));
        v32 = PLMigrationGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        LOWORD(v71) = 0;
        LODWORD(v67) = 2;
        v34 = _os_log_send_and_compose_impl(v33, 0, buf, 512, &dword_19BF1F000, v32, 0, "Removed rejected member label from any edges.", &v71, v67);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v34 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{489, 0}];

        if (v34 != buf)
        {
          free(v34);
        }
      }

      else
      {
        v52 = PLMigrationGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_DEFAULT, "Removed rejected member label from any edges.", buf, 2u);
        }
      }
    }

    [contextCopy deleteObject:firstObject];
    v68 = v27;
    v53 = [contextCopy save:&v68];
    v13 = v68;

    if (v53)
    {
      v25 = 1;
      v24 = 1;
      goto LABEL_25;
    }

    v54 = PLMigrationGetLog();
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);

    if (!v55)
    {
      goto LABEL_24;
    }

    logger5 = [(PLModelMigrationActionCore *)self logger];

    if (logger5)
    {
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
      v79 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      memset(buf, 0, sizeof(buf));
      v57 = PLMigrationGetLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = 3;
      }

      else
      {
        v58 = 2;
      }

      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      v71 = 138543618;
      v72 = v60;
      v73 = 2112;
      v74 = v13;
      LODWORD(v67) = 22;
      v61 = _os_log_send_and_compose_impl(v58, 0, buf, 512, &dword_19BF1F000, v57, 16, "Failed to process %{public}@. Failed to save label delete with error: %@", &v71, v67);

      logger6 = [(PLModelMigrationActionCore *)self logger];
      [logger6 logWithMessage:v61 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{494, 16}];

      if (v61 != buf)
      {
        free(v61);
      }

      goto LABEL_24;
    }

    v36 = PLMigrationGetLog();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v66 = objc_opt_class();
    v38 = NSStringFromClass(v66);
    *buf = 138543618;
    *&buf[4] = v38;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    v39 = "Failed to process %{public}@. Failed to save label delete with error: %@";
    goto LABEL_22;
  }

  v44 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

  if (v44)
  {
    logger7 = [(PLModelMigrationActionCore *)self logger];

    if (logger7)
    {
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
      v79 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      memset(buf, 0, sizeof(buf));
      v46 = PLMigrationGetLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = 3;
      }

      else
      {
        v47 = 2;
      }

      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v71 = 138543618;
      v72 = v49;
      v73 = 2112;
      v74 = v27;
      LODWORD(v67) = 22;
      v50 = _os_log_send_and_compose_impl(v47, 0, buf, 512, &dword_19BF1F000, v46, 16, "Failed to process %{public}@. Failed to remove label assignments with error: %@", &v71, v67);

      logger8 = [(PLModelMigrationActionCore *)self logger];
      [logger8 logWithMessage:v50 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{499, 16}];

      if (v50 != buf)
      {
        free(v50);
      }
    }

    else
    {
      v63 = PLMigrationGetLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = objc_opt_class();
        v65 = NSStringFromClass(v64);
        *buf = 138543618;
        *&buf[4] = v65;
        *&buf[12] = 2112;
        *&buf[14] = v27;
        _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Failed to remove label assignments with error: %@", buf, 0x16u);
      }
    }
  }

  v24 = 0;
  v25 = 3;
  v13 = v27;
LABEL_25:
  [v7 setCompletedUnitCount:{objc_msgSend(v7, "completedUnitCount") + 1}];
  v40 = v13;
  v41 = v40;
  if ((v24 & 1) == 0 && error)
  {
    v42 = v40;
    *error = v41;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v25;
}

@end