@interface PLModelMigrationAction_GenerateMemoryStartAndEndDates
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_GenerateMemoryStartAndEndDates

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v102[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 1;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__43771;
  v61 = __Block_byref_object_dispose__43772;
  v62 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLMemory entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v102[0] = @"representativeAssets";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v10];

  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__43771;
  v55[4] = __Block_byref_object_dispose__43772;
  v56 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v11 = [PLEnumerateAndSaveController alloc];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __101__PLModelMigrationAction_GenerateMemoryStartAndEndDates_performActionWithManagedObjectContext_error___block_invoke;
  v49[3] = &unk_1E7575B30;
  v14 = contextCopy;
  v50 = v14;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __101__PLModelMigrationAction_GenerateMemoryStartAndEndDates_performActionWithManagedObjectContext_error___block_invoke_2;
  v48[3] = &unk_1E7572E50;
  v48[4] = self;
  v48[5] = v55;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __101__PLModelMigrationAction_GenerateMemoryStartAndEndDates_performActionWithManagedObjectContext_error___block_invoke_3;
  v47[3] = &unk_1E756C5D0;
  v47[4] = self;
  v47[5] = &v57;
  v47[6] = &v63;
  v47[7] = &v51;
  v47[8] = v55;
  v15 = [(PLEnumerateAndSaveController *)v11 initWithName:v13 fetchRequest:v9 context:v14 options:4 generateContextBlock:v49 didFetchObjectIDsBlock:v48 processResultBlock:v47];

  v16 = (v58 + 5);
  obj = v58[5];
  v17 = [(PLEnumerateAndSaveController *)v15 processObjectsWithError:&obj];
  objc_storeStrong(v16, obj);
  if (v17)
  {
    v18 = PLMigrationGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (!v19)
    {
      goto LABEL_23;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v21 = logger == 0;

    if (!v21)
    {
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
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v24 = v52[3];
      v67 = 134217984;
      v68 = v24;
      v25 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 0, "Generated start/end dates for %tu memories.", &v67);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{207, 0}];

      if (v25 == buf)
      {
        goto LABEL_23;
      }

      v27 = v25;
      goto LABEL_16;
    }

    v39 = PLMigrationGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v52[3];
      *buf = 134217984;
      *&buf[4] = v40;
      _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "Generated start/end dates for %tu memories.", buf, 0xCu);
    }
  }

  else
  {
    v64[3] = 3;
    v28 = PLMigrationGetLog();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

    if (!v29)
    {
      goto LABEL_23;
    }

    logger3 = [(PLModelMigrationActionCore *)self logger];
    v31 = logger3 == 0;

    if (!v31)
    {
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
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
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
      v36 = v58[5];
      v67 = 138543618;
      v68 = v35;
      v69 = 2112;
      v70 = v36;
      v37 = _os_log_send_and_compose_impl(v33, 0, buf, 512, &dword_19BF1F000, v32, 16, "Failed to process %{public}@. Error: %@", &v67, 22);

      logger4 = [(PLModelMigrationActionCore *)self logger];
      [logger4 logWithMessage:v37 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{210, 16}];

      if (v37 == buf)
      {
        goto LABEL_23;
      }

      v27 = v37;
LABEL_16:
      free(v27);
      goto LABEL_23;
    }

    v39 = PLMigrationGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = v58[5];
      *buf = 138543618;
      *&buf[4] = v42;
      *&buf[12] = 2112;
      *&buf[14] = v43;
      _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }
  }

LABEL_23:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    *error = v58[5];
  }

  v44 = v64[3];

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(v55, 8);

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  return v44;
}

@end