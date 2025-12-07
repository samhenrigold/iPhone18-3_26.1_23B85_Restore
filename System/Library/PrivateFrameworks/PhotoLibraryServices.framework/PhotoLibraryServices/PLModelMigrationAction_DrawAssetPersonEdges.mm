@interface PLModelMigrationAction_DrawAssetPersonEdges
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_DrawAssetPersonEdges

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v121[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 1;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__1060;
  v80 = __Block_byref_object_dispose__1061;
  v81 = 0;
  resumeMarker = [(PLModelMigrationActionBackground *)self resumeMarker];
  v8 = contextCopy;
  v9 = resumeMarker;
  if (v9)
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  persistentStoreCoordinator = [v8 persistentStoreCoordinator];
  v12 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v10];

  v13 = +[PLManagedAsset fetchRequest];
  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v121[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:1];
  [v13 setSortDescriptors:v15];

  if (v12)
  {
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v12];
    [v13 setPredicate:v16];
  }

  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__1060;
  v74 = __Block_byref_object_dispose__1061;
  v75 = 0;
  v17 = [PLEnumerateAndSaveController alloc];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __91__PLModelMigrationAction_DrawAssetPersonEdges_performActionWithManagedObjectContext_error___block_invoke;
  v68[3] = &unk_1E7575B30;
  v69 = v8;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __91__PLModelMigrationAction_DrawAssetPersonEdges_performActionWithManagedObjectContext_error___block_invoke_2;
  v67[3] = &unk_1E7572E50;
  v67[4] = self;
  v67[5] = &v70;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __91__PLModelMigrationAction_DrawAssetPersonEdges_performActionWithManagedObjectContext_error___block_invoke_3;
  v62[3] = &unk_1E7564A98;
  v62[4] = self;
  v64 = &v76;
  v65 = &v82;
  v20 = v69;
  v63 = v20;
  v66 = &v70;
  v21 = [(PLEnumerateAndSaveController *)v17 initWithName:v19 fetchRequest:v13 context:v20 options:4 generateContextBlock:v68 didFetchObjectIDsBlock:v67 processResultsBlock:v62];

  v22 = (v77 + 5);
  obj = v77[5];
  v23 = [(PLEnumerateAndSaveController *)v21 processObjectsWithError:&obj];
  objc_storeStrong(v22, obj);
  if (v23)
  {
    v24 = PLMigrationGetLog();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      logger = [(PLModelMigrationActionBackground *)self logger];
      v27 = logger == 0;

      if (v27)
      {
        v45 = PLMigrationGetLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          totalUnitCount = [v71[5] totalUnitCount];
          *buf = 134217984;
          *&buf[4] = totalUnitCount;
          _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEFAULT, "Drew asset person edges for %lld assets.", buf, 0xCu);
        }
      }

      else
      {
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
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        memset(buf, 0, sizeof(buf));
        v28 = PLMigrationGetLog();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        totalUnitCount2 = [v71[5] totalUnitCount];
        if (v29)
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        v86 = 134217984;
        v87 = totalUnitCount2;
        v32 = _os_log_send_and_compose_impl(v31, 0, buf, 512, &dword_19BF1F000, v28, 0, "Drew asset person edges for %lld assets.", &v86);

        logger2 = [(PLModelMigrationActionBackground *)self logger];
        [logger2 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1031, 0}];

        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    databaseContext = [(PLModelMigrationActionBackground *)self databaseContext];
    v48 = [databaseContext newShortLivedLibraryWithName:"-[PLModelMigrationAction_DrawAssetPersonEdges performActionWithManagedObjectContext:error:]"];

    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __91__PLModelMigrationAction_DrawAssetPersonEdges_performActionWithManagedObjectContext_error___block_invoke_376;
    v58[3] = &unk_1E7578848;
    v49 = v48;
    v59 = v49;
    selfCopy = self;
    [v49 performTransactionAndWait:v58];
  }

  else
  {
    v83[3] = 3;
    v34 = PLMigrationGetLog();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

    if (v35)
    {
      logger3 = [(PLModelMigrationActionBackground *)self logger];
      v37 = logger3 == 0;

      if (v37)
      {
        v54 = PLMigrationGetLog();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = objc_opt_class();
          v56 = NSStringFromClass(v55);
          v57 = v77[5];
          *buf = 138543618;
          *&buf[4] = v56;
          *&buf[12] = 2114;
          *&buf[14] = v57;
          _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
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
        v42 = v77[5];
        v86 = 138543618;
        v87 = v41;
        v88 = 2114;
        v89 = v42;
        v43 = _os_log_send_and_compose_impl(v39, 0, buf, 512, &dword_19BF1F000, v38, 16, "Failed to process %{public}@. Error: %{public}@", &v86, 22);

        logger4 = [(PLModelMigrationActionBackground *)self logger];
        [logger4 logWithMessage:v43 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1043, 16}];

        if (v43 != buf)
        {
          free(v43);
        }
      }
    }
  }

  if (v83[3] == 1)
  {
    [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v50 = v83[3];
  v51 = v77[5];
  if (v50 != 1 && error)
  {
    v51 = v51;
    *error = v51;
  }

  v52 = v83[3];
  _Block_object_dispose(&v70, 8);

  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v82, 8);

  return v52;
}

@end