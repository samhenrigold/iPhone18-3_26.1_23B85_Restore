@interface PLModelMigrationAction_PopulateKeyAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_PopulateKeyAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v107 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 1;
  v7 = +[PLGenericAlbum predicateForAlbumsSupportingCachedKeyAssets];
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLGenericAlbum entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  [v10 setPredicate:v7];
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__43771;
  v66 = __Block_byref_object_dispose__43772;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__43771;
  v60 = __Block_byref_object_dispose__43772;
  v61 = 0;
  v11 = [PLEnumerateAndSaveController alloc];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __88__PLModelMigrationAction_PopulateKeyAssets_performActionWithManagedObjectContext_error___block_invoke;
  v54[3] = &unk_1E7575B30;
  v55 = contextCopy;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __88__PLModelMigrationAction_PopulateKeyAssets_performActionWithManagedObjectContext_error___block_invoke_2;
  v53[3] = &unk_1E7572E50;
  v53[4] = self;
  v53[5] = &v56;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __88__PLModelMigrationAction_PopulateKeyAssets_performActionWithManagedObjectContext_error___block_invoke_3;
  v48[3] = &unk_1E756C760;
  v48[4] = self;
  v50 = &v62;
  v51 = &v68;
  v14 = v55;
  v49 = v14;
  v52 = &v56;
  v15 = [(PLEnumerateAndSaveController *)v11 initWithName:v13 fetchRequest:v10 context:v14 options:4 generateContextBlock:v54 didFetchObjectIDsBlock:v53 processResultBlock:v48];

  v16 = (v63 + 5);
  obj = v63[5];
  v17 = [(PLEnumerateAndSaveController *)v15 processObjectsWithError:&obj];
  objc_storeStrong(v16, obj);
  if (v17)
  {
    v18 = PLMigrationGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (!v19)
    {
      goto LABEL_22;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v21 = logger == 0;

    if (!v21)
    {
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
      v77 = 0u;
      v78 = 0u;
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      totalUnitCount = [v57[5] totalUnitCount];
      if (v23)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v72 = 134217984;
      v73 = totalUnitCount;
      v26 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_19BF1F000, v22, 0, "Populated keyAssets for %lld albums", &v72);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1111, 0}];

      goto LABEL_14;
    }

    v38 = PLMigrationGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      totalUnitCount2 = [v57[5] totalUnitCount];
      *buf = 134217984;
      *&buf[4] = totalUnitCount2;
      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "Populated keyAssets for %lld albums", buf, 0xCu);
    }

LABEL_21:

    goto LABEL_22;
  }

  v69[3] = 3;
  v28 = PLMigrationGetLog();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

  if (!v29)
  {
    goto LABEL_22;
  }

  logger3 = [(PLModelMigrationActionCore *)self logger];
  v31 = logger3 == 0;

  if (v31)
  {
    v38 = PLMigrationGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = v63[5];
      *buf = 138543618;
      *&buf[4] = v41;
      *&buf[12] = 2112;
      *&buf[14] = v42;
      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }

    goto LABEL_21;
  }

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
  v77 = 0u;
  v78 = 0u;
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
  v36 = v63[5];
  v72 = 138543618;
  v73 = v35;
  v74 = 2112;
  v75 = v36;
  v26 = _os_log_send_and_compose_impl(v33, 0, buf, 512, &dword_19BF1F000, v32, 16, "Failed to process %{public}@. Error: %@", &v72, 22);

  logger4 = [(PLModelMigrationActionCore *)self logger];
  [logger4 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1109, 16}];

LABEL_14:
  if (v26 != buf)
  {
    free(v26);
  }

LABEL_22:
  v43 = v69[3];
  v44 = v63[5];
  if (v43 != 1 && error)
  {
    v44 = v44;
    *error = v44;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v45 = v69[3];

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(&v68, 8);
  return v45;
}

@end