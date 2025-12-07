@interface PLModelMigrationAction_RemoveLabelsFromSyndication
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveLabelsFromSyndication

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v106 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 1;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__43771;
  v65 = __Block_byref_object_dispose__43772;
  v66 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLGraphLabel entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__43771;
  v59 = __Block_byref_object_dispose__43772;
  v60 = 0;
  v10 = [PLEnumerateAndSaveController alloc];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __98__PLModelMigrationAction_RemoveLabelsFromSyndication_performActionWithManagedObjectContext_error___block_invoke;
  v53[3] = &unk_1E7575B30;
  v54 = contextCopy;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __98__PLModelMigrationAction_RemoveLabelsFromSyndication_performActionWithManagedObjectContext_error___block_invoke_2;
  v52[3] = &unk_1E7572E50;
  v52[4] = self;
  v52[5] = &v55;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __98__PLModelMigrationAction_RemoveLabelsFromSyndication_performActionWithManagedObjectContext_error___block_invoke_3;
  v47[3] = &unk_1E756C648;
  v47[4] = self;
  v49 = &v61;
  v50 = &v67;
  v13 = v54;
  v48 = v13;
  v51 = &v55;
  v14 = [(PLEnumerateAndSaveController *)v10 initWithName:v12 fetchRequest:v9 context:v13 options:4 generateContextBlock:v53 didFetchObjectIDsBlock:v52 processResultBlock:v47];

  v15 = (v62 + 5);
  obj = v62[5];
  v16 = [(PLEnumerateAndSaveController *)v14 processObjectsWithError:&obj];
  objc_storeStrong(v15, obj);
  if (v16)
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (!v18)
    {
      goto LABEL_22;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v20 = logger == 0;

    if (!v20)
    {
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
      memset(buf, 0, sizeof(buf));
      v21 = PLMigrationGetLog();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      totalUnitCount = [v56[5] totalUnitCount];
      if (v22)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v71 = 134217984;
      v72 = totalUnitCount;
      v25 = _os_log_send_and_compose_impl(v24, 0, buf, 512, &dword_19BF1F000, v21, 0, "Removed %lld member labels from Syndication library.", &v71);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{605, 0}];

      goto LABEL_14;
    }

    v37 = PLMigrationGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      totalUnitCount2 = [v56[5] totalUnitCount];
      *buf = 134217984;
      *&buf[4] = totalUnitCount2;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Removed %lld member labels from Syndication library.", buf, 0xCu);
    }

LABEL_21:

    goto LABEL_22;
  }

  v68[3] = 3;
  v27 = PLMigrationGetLog();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

  if (!v28)
  {
    goto LABEL_22;
  }

  logger3 = [(PLModelMigrationActionCore *)self logger];
  v30 = logger3 == 0;

  if (v30)
  {
    v37 = PLMigrationGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = v62[5];
      *buf = 138543618;
      *&buf[4] = v40;
      *&buf[12] = 2112;
      *&buf[14] = v41;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }

    goto LABEL_21;
  }

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
  v35 = v62[5];
  v71 = 138543618;
  v72 = v34;
  v73 = 2112;
  v74 = v35;
  v25 = _os_log_send_and_compose_impl(v32, 0, buf, 512, &dword_19BF1F000, v31, 16, "Failed to process %{public}@. Error: %@", &v71, 22);

  logger4 = [(PLModelMigrationActionCore *)self logger];
  [logger4 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{608, 16}];

LABEL_14:
  if (v25 != buf)
  {
    free(v25);
  }

LABEL_22:
  v42 = v68[3];
  v43 = v62[5];
  if (v42 != 1 && error)
  {
    v43 = v43;
    *error = v43;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v44 = v68[3];

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(&v67, 8);
  return v44;
}

@end