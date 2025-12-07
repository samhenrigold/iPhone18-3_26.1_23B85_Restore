@interface PLModelMigrationAction_ReevaluateAllowedForAnalysisForGPAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ReevaluateAllowedForAnalysisForGPAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v105[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLExtendedAttributes entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"generativeAIType", 1];
  [v9 setPredicate:v10];

  v105[0] = @"asset.additionalAttributes";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v11];

  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__43771;
  v64 = __Block_byref_object_dispose__43772;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__43771;
  v58 = __Block_byref_object_dispose__43772;
  v59 = 0;
  v12 = [PLEnumerateAndSaveController alloc];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __110__PLModelMigrationAction_ReevaluateAllowedForAnalysisForGPAssets_performActionWithManagedObjectContext_error___block_invoke;
  v52[3] = &unk_1E7575B30;
  v15 = contextCopy;
  v53 = v15;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __110__PLModelMigrationAction_ReevaluateAllowedForAnalysisForGPAssets_performActionWithManagedObjectContext_error___block_invoke_2;
  v51[3] = &unk_1E7572E50;
  v51[4] = self;
  v51[5] = &v54;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __110__PLModelMigrationAction_ReevaluateAllowedForAnalysisForGPAssets_performActionWithManagedObjectContext_error___block_invoke_3;
  v50[3] = &unk_1E756C788;
  v50[4] = self;
  v50[5] = &v60;
  v50[6] = &v66;
  v50[7] = &v54;
  v16 = [(PLEnumerateAndSaveController *)v12 initWithName:v14 fetchRequest:v9 context:v15 options:4 generateContextBlock:v52 didFetchObjectIDsBlock:v51 processResultBlock:v50];

  v17 = (v61 + 5);
  obj = v61[5];
  v18 = [(PLEnumerateAndSaveController *)v16 processObjectsWithError:&obj];
  objc_storeStrong(v17, obj);
  if (v18)
  {
    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (!v20)
    {
      goto LABEL_22;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v22 = logger == 0;

    if (!v22)
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
      v23 = PLMigrationGetLog();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      totalUnitCount = [v55[5] totalUnitCount];
      if (v24)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v70 = 134217984;
      v71 = totalUnitCount;
      v27 = _os_log_send_and_compose_impl(v26, 0, buf, 512, &dword_19BF1F000, v23, 0, "Updated allowedForAnalysis for %lld GP assets", &v70);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1148, 0}];

      goto LABEL_14;
    }

    v39 = PLMigrationGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      totalUnitCount2 = [v55[5] totalUnitCount];
      *buf = 134217984;
      *&buf[4] = totalUnitCount2;
      _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "Updated allowedForAnalysis for %lld GP assets", buf, 0xCu);
    }

LABEL_21:

    goto LABEL_22;
  }

  v67[3] = 3;
  v29 = PLMigrationGetLog();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

  if (!v30)
  {
    goto LABEL_22;
  }

  logger3 = [(PLModelMigrationActionCore *)self logger];
  v32 = logger3 == 0;

  if (v32)
  {
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

    goto LABEL_21;
  }

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
  v33 = PLMigrationGetLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = 3;
  }

  else
  {
    v34 = 2;
  }

  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  v37 = v61[5];
  v70 = 138543618;
  v71 = v36;
  v72 = 2112;
  v73 = v37;
  LODWORD(v48) = 22;
  v27 = _os_log_send_and_compose_impl(v34, 0, buf, 512, &dword_19BF1F000, v33, 16, "Failed to process %{public}@. Error: %@", &v70, v48);

  logger4 = [(PLModelMigrationActionCore *)self logger];
  [logger4 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1146, 16}];

LABEL_14:
  if (v27 != buf)
  {
    free(v27);
  }

LABEL_22:
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
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  return v46;
}

@end