@interface PLModelMigrationAction_DeleteOrphanedFaces
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_DeleteOrphanedFaces

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v118[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = +[PLDetectedFace fetchRequest];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"assetForFace"];
  v118[0] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"faceCrop"];
  v118[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];
  [v7 addObjectsFromArray:v10];

  if ([(PLModelMigrationActionCore *)self startingSchemaVersion]>= 0x427D)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"assetForTemporalDetectedFaces"];
    [v7 addObject:v11];
  }

  v12 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v7];
  [v6 setPredicate:v12];

  [v6 setFetchBatchSize:100];
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 1;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__23792;
  v77 = __Block_byref_object_dispose__23793;
  v78 = 0;
  v72 = 0;
  v13 = [contextCopy executeFetchRequest:v6 error:&v72];
  v65 = v72;
  if (objc_msgSend_count(v13))
  {
    v14 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v13) pendingParentUnitCount:0];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __90__PLModelMigrationAction_DeleteOrphanedFaces_performActionWithManagedObjectContext_error___block_invoke;
    v67[3] = &unk_1E7569CA8;
    v67[4] = self;
    v70 = &v73;
    v71 = &v79;
    v68 = contextCopy;
    v15 = v14;
    v69 = v15;
    v16 = [v68 enumerateWithIncrementalSaveUsingObjects:v13 withBlock:v67];
    if (v16)
    {
      v80[3] = 3;
      v17 = PLMigrationGetLog();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (v18)
      {
        logger = [(PLModelMigrationActionCore *)self logger];
        v20 = logger == 0;

        if (v20)
        {
          v47 = PLMigrationGetLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = objc_opt_class();
            v49 = NSStringFromClass(v48);
            *buf = 138543618;
            *&buf[4] = v49;
            *&buf[12] = 2114;
            *&buf[14] = v16;
            _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
          }
        }

        else
        {
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
          v88 = 0u;
          v89 = 0u;
          memset(buf, 0, sizeof(buf));
          v21 = PLMigrationGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = 3;
          }

          else
          {
            v22 = 2;
          }

          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v83 = 138543618;
          v84 = v24;
          v85 = 2114;
          v86 = v16;
          v25 = _os_log_send_and_compose_impl(v22, 0, buf, 512, &dword_19BF1F000, v21, 16, "Failed to save managed object context for %{public}@. Error: %{public}@", &v83, 22);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{782, 16}];

          if (v25 != buf)
          {
            free(v25);
          }
        }
      }

      if (v74[5])
      {
        v50 = v74[5];
      }

      else
      {
        v50 = v16;
      }

      objc_storeStrong(v74 + 5, v50);
    }

    else
    {
      v37 = PLMigrationGetLog();
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

      if (v38)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];
        v40 = logger3 == 0;

        if (v40)
        {
          v57 = PLMigrationGetLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = objc_msgSend_count(v13);
            *buf = 134217984;
            *&buf[4] = v58;
            _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_DEFAULT, "Deleted orphaned faces: %tu", buf, 0xCu);
          }
        }

        else
        {
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
          v88 = 0u;
          v89 = 0u;
          memset(buf, 0, sizeof(buf));
          v41 = PLMigrationGetLog();
          v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
          v43 = objc_msgSend_count(v13);
          if (v42)
          {
            v44 = 3;
          }

          else
          {
            v44 = 2;
          }

          v83 = 134217984;
          v84 = v43;
          v45 = _os_log_send_and_compose_impl(v44, 0, buf, 512, &dword_19BF1F000, v41, 0, "Deleted orphaned faces: %tu", &v83);

          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v45 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{779, 0}];

          if (v45 != buf)
          {
            free(v45);
          }
        }
      }
    }

LABEL_35:
    goto LABEL_36;
  }

  if (!v13)
  {
    v80[3] = 3;
    v27 = PLMigrationGetLog();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

    if (v28)
    {
      logger5 = [(PLModelMigrationActionCore *)self logger];
      v30 = logger5 == 0;

      if (v30)
      {
        v59 = PLMigrationGetLog();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v60 = objc_opt_class();
          v61 = NSStringFromClass(v60);
          *buf = 138543618;
          *&buf[4] = v61;
          *&buf[12] = 2114;
          *&buf[14] = v65;
          _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v88 = 0u;
        v89 = 0u;
        memset(buf, 0, sizeof(buf));
        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v83 = 138543618;
        v84 = v34;
        v85 = 2114;
        v86 = v65;
        v35 = _os_log_send_and_compose_impl(v32, 0, buf, 512, &dword_19BF1F000, v31, 16, "Failed to execute fetch request for %{public}@. Error: %{public}@", &v83, 22);

        logger6 = [(PLModelMigrationActionCore *)self logger];
        [logger6 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{787, 16}];

        if (v35 != buf)
        {
          free(v35);
        }
      }
    }

    v62 = v74;
    v63 = v74[5];
    if (!v63)
    {
      v63 = v65;
    }

    v64 = v63;
    v15 = v62[5];
    v62[5] = v64;
    goto LABEL_35;
  }

LABEL_36:
  v51 = +[PLManagedLegacyFace entityName];
  v52 = [MEMORY[0x1E696AE18] predicateWithFormat:@"asset == nil"];
  [PLModelMigrator executeBatchDeleteWithEntityName:v51 predicate:v52 managedObjectContext:contextCopy error:0];

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v53 = v80[3];
  v54 = v74[5];
  if (v53 != 1 && error)
  {
    v54 = v54;
    *error = v54;
  }

  v55 = v80[3];
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(&v79, 8);
  return v55;
}

@end