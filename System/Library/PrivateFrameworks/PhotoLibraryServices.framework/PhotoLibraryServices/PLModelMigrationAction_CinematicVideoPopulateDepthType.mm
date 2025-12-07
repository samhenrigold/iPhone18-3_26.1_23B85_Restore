@interface PLModelMigrationAction_CinematicVideoPopulateDepthType
- (id)buildFetchRequest;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_CinematicVideoPopulateDepthType

- (id)buildFetchRequest
{
  v18[3] = *MEMORY[0x1E69E9840];
  resumeMarker = [(PLModelMigrationActionBackground *)self resumeMarker];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = MEMORY[0x1E696AB28];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kind", 1];
  v18[0] = v7;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"depthType", 0];
  v18[1] = v8;
  if (resumeMarker)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"addedDate", resumeMarker];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v9 = ;
  v18[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v11 = [v6 andPredicateWithSubpredicates:v10];
  [v5 setPredicate:v11];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
  v17 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  [v5 setSortDescriptors:v13];

  [v5 setFetchBatchSize:100];
  v16[0] = @"master.mediaMetadata";
  v16[1] = @"modernResources";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [v5 setRelationshipKeyPathsForPrefetching:v14];

  return v5;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v116 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 1;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__1060;
  v75 = __Block_byref_object_dispose__1061;
  v76 = 0;
  buildFetchRequest = [(PLModelMigrationAction_CinematicVideoPopulateDepthType *)self buildFetchRequest];
  v8 = v72 + 5;
  obj = v72[5];
  v9 = [contextCopy executeFetchRequest:buildFetchRequest error:&obj];
  objc_storeStrong(v8, obj);
  if (v9)
  {
    v10 = [(PLModelMigrationActionBackground *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v9) pendingParentUnitCount:0];
    v11 = PLMigrationGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

    if (v12)
    {
      logger = [(PLModelMigrationActionBackground *)self logger];
      v14 = logger == 0;

      if (v14)
      {
        v32 = PLMigrationGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = objc_msgSend_count(v9);
          *buf = 134217984;
          *&buf[4] = v33;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_INFO, "Populating depthType for %lu video assets", buf, 0xCu);
        }
      }

      else
      {
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
        v86 = 0u;
        v87 = 0u;
        memset(buf, 0, sizeof(buf));
        v15 = PLMigrationGetLog();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
        v17 = objc_msgSend_count(v9);
        if (v16)
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        v81 = 134217984;
        v82 = v17;
        v19 = _os_log_send_and_compose_impl(v18, 0, buf, 512, &dword_19BF1F000, v15, 1, "Populating depthType for %lu video assets", &v81);

        logger2 = [(PLModelMigrationActionBackground *)self logger];
        [logger2 logWithMessage:v19 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{312, 1}];

        if (v19 != buf)
        {
          free(v19);
        }
      }
    }

    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __102__PLModelMigrationAction_CinematicVideoPopulateDepthType_performActionWithManagedObjectContext_error___block_invoke;
    v66[3] = &unk_1E756DBE0;
    v68 = &v77;
    v66[4] = self;
    v69 = &v71;
    v34 = v10;
    v67 = v34;
    v35 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v9 withBlock:v66];
    if (v35 && !v72[5])
    {
      objc_storeStrong(v72 + 5, v35);
      v78[3] = 3;
      v46 = PLMigrationGetLog();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);

      if (v47)
      {
        logger3 = [(PLModelMigrationActionBackground *)self logger];
        v49 = logger3 == 0;

        if (!v49)
        {
          errorCopy = error;
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
          v86 = 0u;
          v87 = 0u;
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
          v81 = 138543618;
          v82 = v53;
          v83 = 2112;
          v84 = v35;
          v44 = _os_log_send_and_compose_impl(v51, 0, buf, 512, &dword_19BF1F000, v50, 16, "Failed to perform a save operation for %{public}@. Error: %@", &v81, 22);

          error = errorCopy;
          logger4 = [(PLModelMigrationActionBackground *)self logger];
          [logger4 logWithMessage:v44 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{341, 16}];

LABEL_33:
          if (v44 != buf)
          {
            free(v44);
          }

          goto LABEL_44;
        }

        v55 = PLMigrationGetLog();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v61 = objc_opt_class();
          v62 = NSStringFromClass(v61);
          *buf = 138543618;
          *&buf[4] = v62;
          *&buf[12] = 2112;
          *&buf[14] = v35;
          _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
        }

        goto LABEL_43;
      }
    }

    else
    {
      v36 = PLMigrationGetLog();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);

      if (v37)
      {
        logger5 = [(PLModelMigrationActionBackground *)self logger];
        v39 = logger5 == 0;

        if (!v39)
        {
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
          v86 = 0u;
          v87 = 0u;
          memset(buf, 0, sizeof(buf));
          v40 = PLMigrationGetLog();
          v41 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);
          completedUnitCount = [v34 completedUnitCount];
          if (v41)
          {
            v43 = 3;
          }

          else
          {
            v43 = 2;
          }

          v81 = 134217984;
          v82 = completedUnitCount;
          v44 = _os_log_send_and_compose_impl(v43, 0, buf, 512, &dword_19BF1F000, v40, 1, "Completed update of %lu assets", &v81);

          logger6 = [(PLModelMigrationActionBackground *)self logger];
          [logger6 logWithMessage:v44 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{343, 1}];

          goto LABEL_33;
        }

        v55 = PLMigrationGetLog();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          completedUnitCount2 = [v34 completedUnitCount];
          *buf = 134217984;
          *&buf[4] = completedUnitCount2;
          _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_INFO, "Completed update of %lu assets", buf, 0xCu);
        }

LABEL_43:
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  v78[3] = 3;
  v21 = PLMigrationGetLog();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

  if (v22)
  {
    logger7 = [(PLModelMigrationActionBackground *)self logger];
    v24 = logger7 == 0;

    if (v24)
    {
      v57 = PLMigrationGetLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        v60 = v72[5];
        *buf = 138543618;
        *&buf[4] = v59;
        *&buf[12] = 2112;
        *&buf[14] = v60;
        _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %@", buf, 0x16u);
      }
    }

    else
    {
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
      v86 = 0u;
      v87 = 0u;
      memset(buf, 0, sizeof(buf));
      v25 = PLMigrationGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = v72[5];
      v81 = 138543618;
      v82 = v28;
      v83 = 2112;
      v84 = v29;
      v30 = _os_log_send_and_compose_impl(v26, 0, buf, 512, &dword_19BF1F000, v25, 16, "Failed to execute fetch request for %{public}@. Error: %@", &v81, 22);

      logger8 = [(PLModelMigrationActionBackground *)self logger];
      [logger8 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{347, 16}];

      if (v30 != buf)
      {
        free(v30);
      }
    }
  }

LABEL_45:
  if (v78[3] == 1)
  {
    [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  if (error)
  {
    *error = v72[5];
  }

  v63 = v78[3];

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v77, 8);

  return v63;
}

@end