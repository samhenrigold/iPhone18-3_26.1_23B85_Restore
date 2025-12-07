@interface PLModelMigrationAction_UnTrashSharedDuplicates
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UnTrashSharedDuplicates

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v134 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 1;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__23792;
  v88 = __Block_byref_object_dispose__23793;
  v89 = 0;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLLibraryScope entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = +[PLLibraryScope predicateForActiveLibraryScope];
  [v8 setPredicate:v9];

  [v8 setFetchBatchSize:1];
  v10 = v85 + 5;
  obj = v85[5];
  v76 = [contextCopy executeFetchRequest:v8 error:&obj];
  objc_storeStrong(v10, obj);
  if (objc_msgSend_count(v76))
  {
    v75 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"trashedState", 0];
    v74 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"master"];
    v11 = MEMORY[0x1E695D5E0];
    v12 = +[PLManagedAsset entityName];
    v13 = [v11 fetchRequestWithEntityName:v12];

    v14 = MEMORY[0x1E696AB28];
    v102[0] = v75;
    v102[1] = v74;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
    v16 = [v14 andPredicateWithSubpredicates:v15];
    [v13 setPredicate:v16];

    v101 = @"master";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
    [v13 setRelationshipKeyPathsForPrefetching:v17];

    [v13 setFetchBatchSize:100];
    v18 = v85 + 5;
    v82 = v85[5];
    v19 = [contextCopy executeFetchRequest:v13 error:&v82];
    objc_storeStrong(v18, v82);
    *&v98 = 0;
    *(&v98 + 1) = &v98;
    v99 = 0x2020000000;
    v100 = 0;
    if (!objc_msgSend_count(v19))
    {
      if (!v19)
      {
        v91[3] = 3;
      }

      goto LABEL_42;
    }

    v20 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v19) pendingParentUnitCount:0];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __94__PLModelMigrationAction_UnTrashSharedDuplicates_performActionWithManagedObjectContext_error___block_invoke;
    v77[3] = &unk_1E75726E8;
    v79 = &v98;
    v77[4] = self;
    v80 = &v84;
    v81 = &v90;
    v72 = v20;
    v78 = v72;
    v21 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v19 withBlock:v77];
    v22 = v21;
    v23 = v91[3];
    if (v23 == 2 || !v21)
    {
      if (v23 == 1)
      {
        v34 = PLMigrationGetLog();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

        if (v35)
        {
          logger = [(PLModelMigrationActionCore *)self logger];
          v37 = logger == 0;

          if (!v37)
          {
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v128 = 0u;
            v129 = 0u;
            v126 = 0u;
            v127 = 0u;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v120 = 0u;
            v121 = 0u;
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
            memset(buf, 0, sizeof(buf));
            v38 = PLMigrationGetLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            v40 = objc_opt_class();
            v41 = NSStringFromClass(v40);
            v42 = *(*(&v98 + 1) + 24);
            v94 = 138543618;
            v95 = v41;
            v96 = 1026;
            LODWORD(v97) = v42;
            LODWORD(v71) = 18;
            v43 = _os_log_send_and_compose_impl(v39, 0, buf, 512, &dword_19BF1F000, v38, 0, "%{public}@: Un-trashed %{public}d assets.", &v94, v71);

            logger2 = [(PLModelMigrationActionCore *)self logger];
            [logger2 logWithMessage:v43 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1169, 0}];

            if (v43 == buf)
            {
              goto LABEL_41;
            }

            v45 = v43;
LABEL_30:
            free(v45);
            goto LABEL_41;
          }

          v61 = PLMigrationGetLog();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v65 = objc_opt_class();
            v66 = NSStringFromClass(v65);
            v67 = *(*(&v98 + 1) + 24);
            *buf = 138543618;
            *&buf[4] = v66;
            *&buf[12] = 1026;
            *&buf[14] = v67;
            _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@: Un-trashed %{public}d assets.", buf, 0x12u);
          }

LABEL_40:
        }

LABEL_41:

LABEL_42:
        [(PLModelMigrationActionCore *)self finalizeProgress];
        v68 = v91[3];
        v69 = v85[5];
        if (v68 != 1 && error)
        {
          v69 = v69;
          *error = v69;
        }

        v60 = v91[3];
        _Block_object_dispose(&v98, 8);

        goto LABEL_46;
      }
    }

    else
    {
      objc_storeStrong(v85 + 5, v21);
      v91[3] = 3;
    }

    v46 = PLMigrationGetLog();
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);

    if (v47)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v49 = logger3 == 0;

      if (!v49)
      {
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v50 = PLMigrationGetLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }

        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        v54 = v85[5];
        v94 = 138543618;
        v95 = v53;
        v96 = 2114;
        v97 = v54;
        LODWORD(v71) = 22;
        v55 = _os_log_send_and_compose_impl(v51, 0, buf, 512, &dword_19BF1F000, v50, 16, "Failed to save managed object context for %{public}@. Error: %{public}@", &v94, v71);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v55 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1171, 16}];

        if (v55 == buf)
        {
          goto LABEL_41;
        }

        v45 = v55;
        goto LABEL_30;
      }

      v61 = PLMigrationGetLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = objc_opt_class();
        v63 = NSStringFromClass(v62);
        v64 = v85[5];
        *buf = 138543618;
        *&buf[4] = v63;
        *&buf[12] = 2114;
        *&buf[14] = v64;
        _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
      }

      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v24 = PLMigrationGetLog();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

  if (v25)
  {
    logger5 = [(PLModelMigrationActionCore *)self logger];
    v27 = logger5 == 0;

    if (v27)
    {
      v57 = PLMigrationGetLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        *buf = 138543362;
        *&buf[4] = v59;
        _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_DEFAULT, "Skipping migration step %{public}@: No active library scope.", buf, 0xCu);
      }
    }

    else
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v28 = PLMigrationGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      LODWORD(v98) = 138543362;
      *(&v98 + 4) = v31;
      v32 = _os_log_send_and_compose_impl(v29, 0, buf, 512, &dword_19BF1F000, v28, 0, "Skipping migration step %{public}@: No active library scope.", &v98, 12);

      logger6 = [(PLModelMigrationActionCore *)self logger];
      [logger6 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1127, 0}];

      if (v32 != buf)
      {
        free(v32);
      }
    }
  }

  v60 = v91[3];
LABEL_46:

  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v90, 8);

  return v60;
}

@end