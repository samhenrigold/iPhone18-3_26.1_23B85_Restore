@interface PLModelMigrationAction_RevalidateFaceAreaPoints
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RevalidateFaceAreaPoints

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v129[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  resumeMarker = [(PLModelMigrationActionBackground *)self resumeMarker];
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.@count > 0", @"detectedFaces"];
  v129[0] = v11;
  if (resumeMarker)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"addedDate", resumeMarker];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v12 = ;
  v129[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  [v9 setPredicate:v14];

  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
  v128 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:1];
  [v9 setSortDescriptors:v16];

  v127 = @"detectedFaces";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v127 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v17];

  [v9 setFetchBatchSize:100];
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 1;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__1060;
  v86 = __Block_byref_object_dispose__1061;
  v87 = 0;
  obj = 0;
  v18 = [contextCopy executeFetchRequest:v9 error:&obj];
  objc_storeStrong(&v87, obj);
  if (v18)
  {
    v19 = [(PLModelMigrationActionBackground *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v18) pendingParentUnitCount:0];
    v20 = PLMigrationGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);

    if (v21)
    {
      logger = [(PLModelMigrationActionBackground *)self logger];
      v23 = logger == 0;

      if (v23)
      {
        v41 = PLMigrationGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = objc_msgSend_count(v18);
          *buf = 134217984;
          *&buf[4] = v42;
          _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_INFO, "Revalidating faceAreaPoints for %lu assets", buf, 0xCu);
        }
      }

      else
      {
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
        memset(buf, 0, sizeof(buf));
        v24 = PLMigrationGetLog();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
        v26 = objc_msgSend_count(v18);
        if (v25)
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        v92 = 134217984;
        v93 = v26;
        v28 = _os_log_send_and_compose_impl(v27, 0, buf, 512, &dword_19BF1F000, v24, 1, "Revalidating faceAreaPoints for %lu assets", &v92);

        logger2 = [(PLModelMigrationActionBackground *)self logger];
        [logger2 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{225, 1}];

        if (v28 != buf)
        {
          free(v28);
        }
      }
    }

    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __95__PLModelMigrationAction_RevalidateFaceAreaPoints_performActionWithManagedObjectContext_error___block_invoke;
    v77[3] = &unk_1E756DBE0;
    v77[4] = self;
    v79 = &v88;
    v80 = &v82;
    v43 = v19;
    v78 = v43;
    v44 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v18 withBlock:v77];
    if (v44 && !v83[5])
    {
      objc_storeStrong(v83 + 5, v44);
      v89[3] = 3;
      v55 = PLMigrationGetLog();
      v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);

      if (v56)
      {
        logger3 = [(PLModelMigrationActionBackground *)self logger];
        v58 = logger3 == 0;

        if (!v58)
        {
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
          memset(buf, 0, sizeof(buf));
          v59 = PLMigrationGetLog();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v60 = 3;
          }

          else
          {
            v60 = 2;
          }

          v75 = v60;
          v61 = objc_opt_class();
          v62 = NSStringFromClass(v61);
          v92 = 138543618;
          v93 = v62;
          v94 = 2112;
          v95 = v44;
          LODWORD(v74) = 22;
          v53 = _os_log_send_and_compose_impl(v75, 0, buf, 512, &dword_19BF1F000, v59, 16, "Failed to perform a save operation for %{public}@. Error: %@", &v92, v74);

          logger4 = [(PLModelMigrationActionBackground *)self logger];
          [logger4 logWithMessage:v53 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{248, 16}];

LABEL_36:
          if (v53 != buf)
          {
            free(v53);
          }

          goto LABEL_47;
        }

        v64 = PLMigrationGetLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v70 = objc_opt_class();
          v71 = NSStringFromClass(v70);
          *buf = 138543618;
          *&buf[4] = v71;
          *&buf[12] = 2112;
          *&buf[14] = v44;
          _os_log_impl(&dword_19BF1F000, v64, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
        }

        goto LABEL_46;
      }
    }

    else
    {
      v45 = PLMigrationGetLog();
      v46 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);

      if (v46)
      {
        logger5 = [(PLModelMigrationActionBackground *)self logger];
        v48 = logger5 == 0;

        if (!v48)
        {
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
          memset(buf, 0, sizeof(buf));
          v49 = PLMigrationGetLog();
          v50 = os_log_type_enabled(v49, OS_LOG_TYPE_INFO);
          completedUnitCount = [v43 completedUnitCount];
          if (v50)
          {
            v52 = 3;
          }

          else
          {
            v52 = 2;
          }

          v92 = 134217984;
          v93 = completedUnitCount;
          v53 = _os_log_send_and_compose_impl(v52, 0, buf, 512, &dword_19BF1F000, v49, 1, "Completed update of %lu assets", &v92);

          logger6 = [(PLModelMigrationActionBackground *)self logger];
          [logger6 logWithMessage:v53 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{250, 1}];

          goto LABEL_36;
        }

        v64 = PLMigrationGetLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          completedUnitCount2 = [v43 completedUnitCount];
          *buf = 134217984;
          *&buf[4] = completedUnitCount2;
          _os_log_impl(&dword_19BF1F000, v64, OS_LOG_TYPE_INFO, "Completed update of %lu assets", buf, 0xCu);
        }

LABEL_46:
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  v89[3] = 3;
  v30 = PLMigrationGetLog();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

  if (v31)
  {
    logger7 = [(PLModelMigrationActionBackground *)self logger];
    v33 = logger7 == 0;

    if (v33)
    {
      v66 = PLMigrationGetLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        v69 = v83[5];
        *buf = 138543618;
        *&buf[4] = v68;
        *&buf[12] = 2112;
        *&buf[14] = v69;
        _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %@", buf, 0x16u);
      }
    }

    else
    {
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
      memset(buf, 0, sizeof(buf));
      v34 = PLMigrationGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }

      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = v83[5];
      v92 = 138543618;
      v93 = v37;
      v94 = 2112;
      v95 = v38;
      LODWORD(v74) = 22;
      v39 = _os_log_send_and_compose_impl(v35, 0, buf, 512, &dword_19BF1F000, v34, 16, "Failed to execute fetch request for %{public}@. Error: %@", &v92, v74);

      logger8 = [(PLModelMigrationActionBackground *)self logger];
      [logger8 logWithMessage:v39 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{254, 16}];

      if (v39 != buf)
      {
        free(v39);
      }
    }
  }

LABEL_48:
  if (v89[3] == 1)
  {
    [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  if (error)
  {
    *error = v83[5];
  }

  v72 = v89[3];

  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v88, 8);

  return v72;
}

@end