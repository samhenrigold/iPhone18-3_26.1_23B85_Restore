@interface PLModelMigrationAction_FixComputeSyncResourceFileExtension
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixComputeSyncResourceFileExtension

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v109[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLInternalResource entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  327689 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"recipeID", 327689];
  v109[0] = 327689;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"localAvailability", 1];
  v109[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  [v9 setPredicate:v14];

  v108 = @"asset";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v15];

  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__43771;
  v67 = __Block_byref_object_dispose__43772;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__43771;
  v61 = __Block_byref_object_dispose__43772;
  v62 = 0;
  v16 = [PLEnumerateAndSaveController alloc];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __106__PLModelMigrationAction_FixComputeSyncResourceFileExtension_performActionWithManagedObjectContext_error___block_invoke;
  v55[3] = &unk_1E7575B30;
  v19 = contextCopy;
  v56 = v19;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __106__PLModelMigrationAction_FixComputeSyncResourceFileExtension_performActionWithManagedObjectContext_error___block_invoke_2;
  v54[3] = &unk_1E7572E50;
  v54[4] = self;
  v54[5] = &v57;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __106__PLModelMigrationAction_FixComputeSyncResourceFileExtension_performActionWithManagedObjectContext_error___block_invoke_3;
  v53[3] = &unk_1E756C670;
  v53[4] = self;
  v53[5] = &v63;
  v53[6] = &v69;
  v53[7] = &v57;
  v20 = [(PLEnumerateAndSaveController *)v16 initWithName:v18 fetchRequest:v9 context:v19 options:4 generateContextBlock:v55 didFetchObjectIDsBlock:v54 processResultBlock:v53];

  v21 = (v64 + 5);
  obj = v64[5];
  LOBYTE(v12) = [(PLEnumerateAndSaveController *)v20 processObjectsWithError:&obj];
  objc_storeStrong(v21, obj);
  if (v12)
  {
    v22 = PLMigrationGetLog();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (!v23)
    {
      goto LABEL_22;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v25 = logger == 0;

    if (!v25)
    {
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
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      memset(buf, 0, sizeof(buf));
      v26 = PLMigrationGetLog();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      totalUnitCount = [v58[5] totalUnitCount];
      if (v27)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v73 = 134217984;
      v74 = totalUnitCount;
      v30 = _os_log_send_and_compose_impl(v29, 0, buf, 512, &dword_19BF1F000, v26, 0, "[CCSS] Fixed ComputeSync resource file extension for %lld assets", &v73);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1253, 0}];

      goto LABEL_14;
    }

    v42 = PLMigrationGetLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      totalUnitCount2 = [v58[5] totalUnitCount];
      *buf = 134217984;
      *&buf[4] = totalUnitCount2;
      _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "[CCSS] Fixed ComputeSync resource file extension for %lld assets", buf, 0xCu);
    }

LABEL_21:

    goto LABEL_22;
  }

  v70[3] = 3;
  v32 = PLMigrationGetLog();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

  if (!v33)
  {
    goto LABEL_22;
  }

  logger3 = [(PLModelMigrationActionCore *)self logger];
  v35 = logger3 == 0;

  if (v35)
  {
    v42 = PLMigrationGetLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = v64[5];
      *buf = 138543618;
      *&buf[4] = v45;
      *&buf[12] = 2112;
      *&buf[14] = v46;
      _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }

    goto LABEL_21;
  }

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
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  memset(buf, 0, sizeof(buf));
  v36 = PLMigrationGetLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = 3;
  }

  else
  {
    v37 = 2;
  }

  v38 = objc_opt_class();
  v39 = NSStringFromClass(v38);
  v40 = v64[5];
  v73 = 138543618;
  v74 = v39;
  v75 = 2112;
  v76 = v40;
  LODWORD(v51) = 22;
  v30 = _os_log_send_and_compose_impl(v37, 0, buf, 512, &dword_19BF1F000, v36, 16, "Failed to process %{public}@. Error: %@", &v73, v51);

  logger4 = [(PLModelMigrationActionCore *)self logger];
  [logger4 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1251, 16}];

LABEL_14:
  if (v30 != buf)
  {
    free(v30);
  }

LABEL_22:
  v47 = v70[3];
  v48 = v64[5];
  if (v47 != 1 && error)
  {
    v48 = v48;
    *error = v48;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v49 = v70[3];

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  _Block_object_dispose(&v69, 8);
  return v49;
}

@end