@interface PLModelMigrationAction_updateACVideos
- (id)buildFetchRequest;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_updateACVideos

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v109 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 1;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__1060;
  v68 = __Block_byref_object_dispose__1061;
  v69 = 0;
  buildFetchRequest = [(PLModelMigrationAction_updateACVideos *)self buildFetchRequest];
  v8 = (v65 + 5);
  obj = v65[5];
  v9 = [contextCopy executeFetchRequest:buildFetchRequest error:&obj];
  objc_storeStrong(v8, obj);
  if (v9)
  {
    v10 = [(PLModelMigrationActionBackground *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v9) pendingParentUnitCount:0];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __85__PLModelMigrationAction_updateACVideos_performActionWithManagedObjectContext_error___block_invoke;
    v59[3] = &unk_1E756DBE0;
    v61 = &v70;
    v59[4] = self;
    v62 = &v64;
    v11 = v10;
    v60 = v11;
    v12 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v9 withBlock:v59];
    if (v12 && (v13 = (v65 + 5), !v65[5]))
    {
      v71[3] = 3;
      objc_storeStrong(v13, v12);
      v35 = PLMigrationGetLog();
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

      if (v36)
      {
        logger = [(PLModelMigrationActionBackground *)self logger];
        v38 = logger == 0;

        if (!v38)
        {
          errorCopy = error;
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
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          memset(buf, 0, sizeof(buf));
          v39 = PLMigrationGetLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          v43 = v65[5];
          v74 = 138543618;
          v75 = v42;
          v76 = 2112;
          v77 = v43;
          v22 = _os_log_send_and_compose_impl(v40, 0, buf, 512, &dword_19BF1F000, v39, 16, "Asset could not be saved for %{public}@. Error: %@", &v74, 22);

          error = errorCopy;
          logger2 = [(PLModelMigrationActionBackground *)self logger];
          [logger2 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{443, 16}];

LABEL_23:
          if (v22 != buf)
          {
            free(v22);
          }

          goto LABEL_34;
        }

        v45 = PLMigrationGetLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v51 = objc_opt_class();
          v52 = NSStringFromClass(v51);
          v53 = v65[5];
          *buf = 138543618;
          *&buf[4] = v52;
          *&buf[12] = 2112;
          *&buf[14] = v53;
          _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "Asset could not be saved for %{public}@. Error: %@", buf, 0x16u);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v14 = PLMigrationGetLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

      if (v15)
      {
        logger3 = [(PLModelMigrationActionBackground *)self logger];
        v17 = logger3 == 0;

        if (!v17)
        {
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
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          memset(buf, 0, sizeof(buf));
          v18 = PLMigrationGetLog();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
          completedUnitCount = [v11 completedUnitCount];
          if (v19)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          v74 = 134217984;
          v75 = completedUnitCount;
          v22 = _os_log_send_and_compose_impl(v21, 0, buf, 512, &dword_19BF1F000, v18, 1, "Completed update on %lu assets", &v74);

          logger4 = [(PLModelMigrationActionBackground *)self logger];
          [logger4 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{445, 1}];

          goto LABEL_23;
        }

        v45 = PLMigrationGetLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          completedUnitCount2 = [v11 completedUnitCount];
          *buf = 134217984;
          *&buf[4] = completedUnitCount2;
          _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_INFO, "Completed update on %lu assets", buf, 0xCu);
        }

LABEL_33:
      }
    }

LABEL_34:

    goto LABEL_35;
  }

  v71[3] = 3;
  v24 = PLMigrationGetLog();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

  if (v25)
  {
    logger5 = [(PLModelMigrationActionBackground *)self logger];
    v27 = logger5 == 0;

    if (v27)
    {
      v47 = PLMigrationGetLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        v50 = v65[5];
        *buf = 138543618;
        *&buf[4] = v49;
        *&buf[12] = 2112;
        *&buf[14] = v50;
        _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %@", buf, 0x16u);
      }
    }

    else
    {
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
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
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
      v32 = v65[5];
      v74 = 138543618;
      v75 = v31;
      v76 = 2112;
      v77 = v32;
      v33 = _os_log_send_and_compose_impl(v29, 0, buf, 512, &dword_19BF1F000, v28, 16, "Failed to execute fetch request for %{public}@. Error: %@", &v74, 22);

      logger6 = [(PLModelMigrationActionBackground *)self logger];
      [logger6 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{449, 16}];

      if (v33 != buf)
      {
        free(v33);
      }
    }
  }

LABEL_35:
  if (v71[3] == 1)
  {
    [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v54 = v71[3];
  v55 = v65[5];
  if (v54 != 1 && error)
  {
    v55 = v55;
    *error = v55;
  }

  v56 = v71[3];
  _Block_object_dispose(&v64, 8);

  _Block_object_dispose(&v70, 8);
  return v56;
}

- (id)buildFetchRequest
{
  v23[3] = *MEMORY[0x1E69E9840];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setYear:2022];
  [v4 setMonth:8];
  [v4 setDay:1];
  v20 = currentCalendar;
  v5 = [currentCalendar dateFromComponents:v4];
  resumeMarker = [(PLModelMigrationActionBackground *)self resumeMarker];
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kind", 1];
  v23[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kindSubtype", 0];
  v23[1] = v12;
  if (resumeMarker)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"addedDate", resumeMarker];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"addedDate", v5];
  }
  v13 = ;
  v23[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v15 = [v10 andPredicateWithSubpredicates:v14];
  [v9 setPredicate:v15];

  v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
  v22 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  [v9 setSortDescriptors:v17];

  [v9 setFetchBatchSize:100];
  v21[0] = @"master.mediaMetadata";
  v21[1] = @"modernResources";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v9 setRelationshipKeyPathsForPrefetching:v18];

  return v9;
}

@end