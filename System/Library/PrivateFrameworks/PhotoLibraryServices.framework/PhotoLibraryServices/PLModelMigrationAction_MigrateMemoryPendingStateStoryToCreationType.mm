@interface PLModelMigrationAction_MigrateMemoryPendingStateStoryToCreationType
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_MigrateMemoryPendingStateStoryToCreationType

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v105 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 1;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__43771;
  v64 = __Block_byref_object_dispose__43772;
  v65 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLMemory entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"pendingState", 4];
  [v9 setPredicate:v10];

  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = __Block_byref_object_copy__43771;
  v58[4] = __Block_byref_object_dispose__43772;
  v59 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v11 = [PLEnumerateAndSaveController alloc];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __115__PLModelMigrationAction_MigrateMemoryPendingStateStoryToCreationType_performActionWithManagedObjectContext_error___block_invoke;
  v52[3] = &unk_1E7575B30;
  v14 = contextCopy;
  v53 = v14;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __115__PLModelMigrationAction_MigrateMemoryPendingStateStoryToCreationType_performActionWithManagedObjectContext_error___block_invoke_2;
  v51[3] = &unk_1E7572E50;
  v51[4] = self;
  v51[5] = v58;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __115__PLModelMigrationAction_MigrateMemoryPendingStateStoryToCreationType_performActionWithManagedObjectContext_error___block_invoke_3;
  v50[3] = &unk_1E756C5D0;
  v50[4] = self;
  v50[5] = &v60;
  v50[6] = &v66;
  v50[7] = &v54;
  v50[8] = v58;
  v15 = [(PLEnumerateAndSaveController *)v11 initWithName:v13 fetchRequest:v9 context:v14 options:4 generateContextBlock:v52 didFetchObjectIDsBlock:v51 processResultBlock:v50];

  v16 = (v61 + 5);
  obj = v61[5];
  v17 = [(PLEnumerateAndSaveController *)v15 processObjectsWithError:&obj];
  objc_storeStrong(v16, obj);
  if (v17)
  {
    v18 = PLMigrationGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v21 = logger == 0;

      if (!v21)
      {
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
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
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

        v24 = v55[3];
        v70 = 134217984;
        v71 = v24;
        v25 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 0, "Migrated %tu generative memories from pendingStateStory to creationTypeGenerative.", &v70);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{427, 0}];

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
        v40 = v55[3];
        *buf = 134217984;
        *&buf[4] = v40;
        _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "Migrated %tu generative memories from pendingStateStory to creationTypeGenerative.", buf, 0xCu);
      }

      goto LABEL_22;
    }
  }

  else
  {
    v67[3] = 3;
    v28 = PLMigrationGetLog();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

    if (v29)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v31 = logger3 == 0;

      if (!v31)
      {
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
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
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
        v36 = v61[5];
        v70 = 138543618;
        v71 = v35;
        v72 = 2112;
        v73 = v36;
        LODWORD(v48) = 22;
        v37 = _os_log_send_and_compose_impl(v33, 0, buf, 512, &dword_19BF1F000, v32, 16, "Failed to process %{public}@. Error: %@", &v70, v48);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v37 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{430, 16}];

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
        v43 = v61[5];
        *buf = 138543618;
        *&buf[4] = v42;
        *&buf[12] = 2112;
        *&buf[14] = v43;
        _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
      }

LABEL_22:
    }
  }

LABEL_23:
  v44 = v67[3];
  v45 = v61[5];
  if (v44 != 1 && error)
  {
    v45 = v45;
    *error = v45;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v46 = v67[3];

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(v58, 8);

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v66, 8);

  return v46;
}

@end