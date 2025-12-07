@interface PLModelMigrationAction_FixSignExtended32bSceneIdentifiers
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixSignExtended32bSceneIdentifiers

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v95 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLSceneClassification entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__43771;
  v58 = __Block_byref_object_dispose__43772;
  v59 = 0;
  v10 = [PLEnumerateAndSaveController alloc];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __105__PLModelMigrationAction_FixSignExtended32bSceneIdentifiers_performActionWithManagedObjectContext_error___block_invoke;
  v52[3] = &unk_1E7575B30;
  v13 = contextCopy;
  v53 = v13;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __105__PLModelMigrationAction_FixSignExtended32bSceneIdentifiers_performActionWithManagedObjectContext_error___block_invoke_2;
  v51[3] = &unk_1E7572E50;
  v51[4] = self;
  v51[5] = &v54;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __105__PLModelMigrationAction_FixSignExtended32bSceneIdentifiers_performActionWithManagedObjectContext_error___block_invoke_3;
  v50[3] = &unk_1E756C6C0;
  v50[4] = &v54;
  v14 = [(PLEnumerateAndSaveController *)v10 initWithName:v12 fetchRequest:v9 context:v13 options:0 generateContextBlock:v52 didFetchObjectIDsBlock:v51 processResultBlock:v50];

  v49 = 0;
  v15 = [(PLEnumerateAndSaveController *)v14 processObjectsWithError:&v49];
  v16 = v49;
  if (v15)
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

    if (v18)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v20 = logger == 0;

      if (v20)
      {
        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          completedUnitCount = [v55[5] completedUnitCount];
          *buf = 134217984;
          *&buf[4] = completedUnitCount;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_INFO, "Corrected sign extension on %lu scene classifications", buf, 0xCu);
        }
      }

      else
      {
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
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        memset(buf, 0, sizeof(buf));
        v21 = PLMigrationGetLog();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
        completedUnitCount2 = [v55[5] completedUnitCount];
        if (v22)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v60 = 134217984;
        v61 = completedUnitCount2;
        v25 = _os_log_send_and_compose_impl(v24, 0, buf, 512, &dword_19BF1F000, v21, 1, "Corrected sign extension on %lu scene classifications", &v60);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{764, 1}];

        if (v25 != buf)
        {
          free(v25);
        }
      }
    }

    v39 = 1;
  }

  else
  {
    v27 = PLMigrationGetLog();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

    if (v28)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v30 = logger3 == 0;

      if (v30)
      {
        v40 = PLMigrationGetLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          *buf = 138543618;
          *&buf[4] = v42;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }

      else
      {
        errorCopy = error;
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
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
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
        v60 = 138543618;
        v61 = v34;
        v62 = 2112;
        v63 = v16;
        v35 = _os_log_send_and_compose_impl(v32, 0, buf, 512, &dword_19BF1F000, v31, 16, "Failed to process %{public}@. Error: %@", &v60, 22);

        error = errorCopy;
        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{767, 16}];

        if (v35 != buf)
        {
          free(v35);
        }
      }
    }

    v39 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v43 = v16;
  v44 = v43;
  if (error)
  {
    v45 = v15;
  }

  else
  {
    v45 = 1;
  }

  if ((v45 & 1) == 0)
  {
    v46 = v43;
    *error = v44;
  }

  _Block_object_dispose(&v54, 8);
  return v39;
}

@end