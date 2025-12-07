@interface PLModelMigrationAction_ReKeyResourcesIncorrectlyStoredAsM4A
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ReKeyResourcesIncorrectlyStoredAsM4A

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v102 = *MEMORY[0x1E69E9840];
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
  v7 = +[PLInternalResource fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d AND %K = %d AND %K = %d AND %K != nil", @"resourceType", 1, @"compactUTI", 24, @"dataStoreClassID", 0, @"dataStoreKeyData"];
  [v7 setPredicate:v8];

  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__43771;
  v55 = __Block_byref_object_dispose__43772;
  v56 = 0;
  v9 = [PLEnumerateAndSaveController alloc];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __107__PLModelMigrationAction_ReKeyResourcesIncorrectlyStoredAsM4A_performActionWithManagedObjectContext_error___block_invoke;
  v49[3] = &unk_1E7575B30;
  v12 = contextCopy;
  v50 = v12;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __107__PLModelMigrationAction_ReKeyResourcesIncorrectlyStoredAsM4A_performActionWithManagedObjectContext_error___block_invoke_2;
  v48[3] = &unk_1E7572E50;
  v48[4] = self;
  v48[5] = &v51;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __107__PLModelMigrationAction_ReKeyResourcesIncorrectlyStoredAsM4A_performActionWithManagedObjectContext_error___block_invoke_3;
  v47[3] = &unk_1E756C670;
  v47[4] = self;
  v47[5] = &v57;
  v47[6] = &v63;
  v47[7] = &v51;
  v13 = [(PLEnumerateAndSaveController *)v9 initWithName:v11 fetchRequest:v7 context:v12 options:4 generateContextBlock:v49 didFetchObjectIDsBlock:v48 processResultBlock:v47];

  v14 = (v58 + 5);
  obj = v58[5];
  v15 = [(PLEnumerateAndSaveController *)v13 processObjectsWithError:&obj];
  objc_storeStrong(v14, obj);
  if (v15)
  {
    v16 = PLMigrationGetLog();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (!v17)
    {
      goto LABEL_22;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v19 = logger == 0;

    if (!v19)
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
      v20 = PLMigrationGetLog();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      totalUnitCount = [v52[5] totalUnitCount];
      if (v21)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v67 = 134217984;
      v68 = totalUnitCount;
      v24 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v20, 0, "Patched %lld resources with incorrect encoding of video file path in library.", &v67);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{669, 0}];

      goto LABEL_14;
    }

    v36 = PLMigrationGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      totalUnitCount2 = [v52[5] totalUnitCount];
      *buf = 134217984;
      *&buf[4] = totalUnitCount2;
      _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "Patched %lld resources with incorrect encoding of video file path in library.", buf, 0xCu);
    }

LABEL_21:

    goto LABEL_22;
  }

  v64[3] = 3;
  v26 = PLMigrationGetLog();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

  if (!v27)
  {
    goto LABEL_22;
  }

  logger3 = [(PLModelMigrationActionCore *)self logger];
  v29 = logger3 == 0;

  if (v29)
  {
    v36 = PLMigrationGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = v58[5];
      *buf = 138543618;
      *&buf[4] = v39;
      *&buf[12] = 2112;
      *&buf[14] = v40;
      _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }

    goto LABEL_21;
  }

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
  v30 = PLMigrationGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = 3;
  }

  else
  {
    v31 = 2;
  }

  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v34 = v58[5];
  v67 = 138543618;
  v68 = v33;
  v69 = 2112;
  v70 = v34;
  LODWORD(v45) = 22;
  v24 = _os_log_send_and_compose_impl(v31, 0, buf, 512, &dword_19BF1F000, v30, 16, "Failed to process %{public}@. Error: %@", &v67, v45);

  logger4 = [(PLModelMigrationActionCore *)self logger];
  [logger4 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{672, 16}];

LABEL_14:
  if (v24 != buf)
  {
    free(v24);
  }

LABEL_22:
  v41 = v64[3];
  v42 = v58[5];
  if (v41 != 1 && error)
  {
    v42 = v42;
    *error = v42;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v43 = v64[3];

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);
  return v43;
}

@end