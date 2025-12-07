@interface PLModelMigrationAction_MigrateSuggestedByClientTypeCameraSmartSharing
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error shouldForce:(BOOL)force;
@end

@implementation PLModelMigrationAction_MigrateSuggestedByClientTypeCameraSmartSharing

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error shouldForce:(BOOL)force
{
  v143 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 1;
  if (force || !MEMORY[0x19EAEE230]())
  {
    *&v107 = 0;
    *(&v107 + 1) = &v107;
    v108 = 0x3032000000;
    v109 = __Block_byref_object_copy__23792;
    v110 = __Block_byref_object_dispose__23793;
    v111 = 0;
    v18 = MEMORY[0x1E695D5E0];
    v19 = +[PLLibraryScope entityName];
    v20 = [v18 fetchRequestWithEntityName:v19];

    v21 = +[PLLibraryScope predicateForActiveLibraryScope];
    [v20 setPredicate:v21];

    [v20 setFetchBatchSize:1];
    v22 = (*(&v107 + 1) + 40);
    obj = *(*(&v107 + 1) + 40);
    v23 = [contextCopy executeFetchRequest:v20 error:&obj];
    objc_storeStrong(v22, obj);
    if (!objc_msgSend_count(v23))
    {
      v46 = PLMigrationGetLog();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);

      if (v47)
      {
        logger = [(PLModelMigrationActionCore *)self logger];
        v49 = logger == 0;

        if (v49)
        {
          v57 = PLMigrationGetLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = objc_opt_class();
            v59 = NSStringFromClass(v58);
            *buf = 138543362;
            *&buf[4] = v59;
            _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_DEFAULT, "Skipping migration %{public}@: No active library scope.", buf, 0xCu);
          }
        }

        else
        {
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          v133 = 0u;
          v134 = 0u;
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          memset(buf, 0, sizeof(buf));
          v50 = PLMigrationGetLog();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = 3;
          }

          else
          {
            v51 = 2;
          }

          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          LODWORD(v104) = 138543362;
          *(&v104 + 4) = v53;
          v54 = _os_log_send_and_compose_impl(v51, 0, buf, 512, &dword_19BF1F000, v50, 0, "Skipping migration %{public}@: No active library scope.", &v104, 12);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v54 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{962, 0}];

          if (v54 != buf)
          {
            free(v54);
          }
        }
      }

      v60 = v97[3];
      goto LABEL_47;
    }

    firstObject = [v23 firstObject];
    v24 = +[PLManagedAsset fetchRequest];
    v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != 0", @"libraryScopeShareState"];
    [v24 setPredicate:v25];

    [v24 setFetchBatchSize:100];
    v26 = (*(&v107 + 1) + 40);
    v94 = *(*(&v107 + 1) + 40);
    v27 = [contextCopy executeFetchRequest:v24 error:&v94];
    objc_storeStrong(v26, v94);
    if (!objc_msgSend_count(v27))
    {
      if (!v27)
      {
        v97[3] = 3;
      }

      goto LABEL_43;
    }

    v28 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v27) pendingParentUnitCount:0];
    *&v104 = 0;
    *(&v104 + 1) = &v104;
    v105 = 0x2020000000;
    v106 = 0;
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __129__PLModelMigrationAction_MigrateSuggestedByClientTypeCameraSmartSharing_performActionWithManagedObjectContext_error_shouldForce___block_invoke;
    v89[3] = &unk_1E75726E8;
    v91 = &v104;
    v89[4] = self;
    v92 = &v107;
    v93 = &v96;
    v85 = v28;
    v90 = v85;
    v29 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v27 withBlock:v89];
    v30 = v29;
    v31 = v97[3];
    if (v31 == 2)
    {
      goto LABEL_15;
    }

    if (v29)
    {
      goto LABEL_14;
    }

    if (*(*(&v104 + 1) + 24) < 1)
    {
      v30 = 0;
    }

    else
    {
      [firstObject setCountOfAssetsAddedByCameraSmartSharing:?];
      v88 = 0;
      v56 = [contextCopy save:&v88];
      v30 = v88;
      if (!v56)
      {
LABEL_14:
        v32 = *(&v107 + 1);
        v30 = v30;
        v33 = *(v32 + 40);
        *(v32 + 40) = v30;

        v97[3] = 3;
        goto LABEL_15;
      }

      v31 = v97[3];
    }

    if (v31 == 1)
    {
      v71 = PLMigrationGetLog();
      v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);

      if (!v72)
      {
        goto LABEL_42;
      }

      logger3 = [(PLModelMigrationActionCore *)self logger];
      v74 = logger3 == 0;

      if (!v74)
      {
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        memset(buf, 0, sizeof(buf));
        v75 = PLMigrationGetLog();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          v76 = 3;
        }

        else
        {
          v76 = 2;
        }

        v77 = objc_opt_class();
        v78 = NSStringFromClass(v77);
        v79 = *(*(&v104 + 1) + 24);
        v100 = 138543618;
        v101 = v78;
        v102 = 1026;
        LODWORD(v103) = v79;
        v80 = _os_log_send_and_compose_impl(v76, 0, buf, 512, &dword_19BF1F000, v75, 0, "%{public}@: Migrated %{public}d assets.", &v100, 18);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v80 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1006, 0}];

        if (v80 == buf)
        {
          goto LABEL_42;
        }

        v45 = v80;
LABEL_22:
        free(v45);
        goto LABEL_42;
      }

      v61 = PLMigrationGetLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v82 = objc_opt_class();
        v83 = NSStringFromClass(v82);
        v84 = *(*(&v104 + 1) + 24);
        *buf = 138543618;
        *&buf[4] = v83;
        *&buf[12] = 1026;
        *&buf[14] = v84;
        _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@: Migrated %{public}d assets.", buf, 0x12u);
      }

LABEL_41:

      goto LABEL_42;
    }

LABEL_15:
    v34 = PLMigrationGetLog();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

    if (!v35)
    {
LABEL_42:

      _Block_object_dispose(&v104, 8);
LABEL_43:
      [(PLModelMigrationActionCore *)self finalizeProgress];
      v65 = v97[3];
      v66 = *(*(&v107 + 1) + 40);
      if (v65 != 1 && error)
      {
        v66 = v66;
        *error = v66;
      }

      v60 = v97[3];
LABEL_47:

      _Block_object_dispose(&v107, 8);
      goto LABEL_52;
    }

    logger5 = [(PLModelMigrationActionCore *)self logger];
    v37 = logger5 == 0;

    if (!v37)
    {
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      memset(buf, 0, sizeof(buf));
      v38 = PLMigrationGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = *(*(&v107 + 1) + 40);
      v100 = 138543618;
      v101 = v41;
      v102 = 2114;
      v103 = v42;
      v43 = _os_log_send_and_compose_impl(v39, 0, buf, 512, &dword_19BF1F000, v38, 16, "Failed to save managed object context for %{public}@. Error: %{public}@", &v100, 22);

      logger6 = [(PLModelMigrationActionCore *)self logger];
      [logger6 logWithMessage:v43 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1008, 16}];

      if (v43 == buf)
      {
        goto LABEL_42;
      }

      v45 = v43;
      goto LABEL_22;
    }

    v61 = PLMigrationGetLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      v64 = *(*(&v107 + 1) + 40);
      *buf = 138543618;
      *&buf[4] = v63;
      *&buf[12] = 2114;
      *&buf[14] = v64;
      _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
    }

    goto LABEL_41;
  }

  v8 = PLMigrationGetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    logger7 = [(PLModelMigrationActionCore *)self logger];
    v11 = logger7 == 0;

    if (v11)
    {
      v67 = PLMigrationGetLog();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = objc_opt_class();
        v69 = NSStringFromClass(v68);
        *buf = 138543362;
        *&buf[4] = v69;
        _os_log_impl(&dword_19BF1F000, v67, OS_LOG_TYPE_DEFAULT, "Skipping migration %{public}@ on internal builds.", buf, 0xCu);
      }
    }

    else
    {
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      memset(buf, 0, sizeof(buf));
      v12 = PLMigrationGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      LODWORD(v107) = 138543362;
      *(&v107 + 4) = v15;
      v16 = _os_log_send_and_compose_impl(v13, 0, buf, 512, &dword_19BF1F000, v12, 0, "Skipping migration %{public}@ on internal builds.", &v107, 12);

      logger8 = [(PLModelMigrationActionCore *)self logger];
      [logger8 logWithMessage:v16 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{947, 0}];

      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v60 = v97[3];
LABEL_52:
  _Block_object_dispose(&v96, 8);

  return v60;
}

@end