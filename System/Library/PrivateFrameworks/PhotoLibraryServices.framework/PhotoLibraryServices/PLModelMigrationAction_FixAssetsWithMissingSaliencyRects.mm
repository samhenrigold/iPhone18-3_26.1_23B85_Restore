@interface PLModelMigrationAction_FixAssetsWithMissingSaliencyRects
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixAssetsWithMissingSaliencyRects

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v101 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == 0 && %K == 0", @"packedPreferredCropRect", @"packedAcceptableCropRect"];
  [v9 setPredicate:v10];

  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__43771;
  v60 = __Block_byref_object_dispose__43772;
  v61 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy__43771;
  v54[4] = __Block_byref_object_dispose__43772;
  v55 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [PLEnumerateAndSaveController alloc];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __104__PLModelMigrationAction_FixAssetsWithMissingSaliencyRects_performActionWithManagedObjectContext_error___block_invoke;
  v48[3] = &unk_1E7575B30;
  v14 = contextCopy;
  v49 = v14;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __104__PLModelMigrationAction_FixAssetsWithMissingSaliencyRects_performActionWithManagedObjectContext_error___block_invoke_2;
  v47[3] = &unk_1E7572E50;
  v47[4] = self;
  v47[5] = v54;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __104__PLModelMigrationAction_FixAssetsWithMissingSaliencyRects_performActionWithManagedObjectContext_error___block_invoke_3;
  v46[3] = &unk_1E756DD18;
  v46[4] = self;
  v46[5] = &v56;
  v46[6] = &v62;
  v46[7] = &v50;
  v46[8] = v54;
  v15 = [(PLEnumerateAndSaveController *)v13 initWithName:v12 fetchRequest:v9 context:v14 options:4 generateContextBlock:v48 didFetchObjectIDsBlock:v47 processResultBlock:v46];
  v16 = (v57 + 5);
  obj = v57[5];
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
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
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

        v24 = v51[3];
        v66 = 134217984;
        v67 = v24;
        v25 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 0, "[CCSS] Reset sceneAnalysisVersions on %tu assets to fix missing saliency rects", &v66);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1773, 0}];

        if (v25 == buf)
        {
          goto LABEL_23;
        }

        v27 = v25;
        goto LABEL_16;
      }

      v37 = PLMigrationGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v51[3];
        *buf = 134217984;
        *&buf[4] = v38;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "[CCSS] Reset sceneAnalysisVersions on %tu assets to fix missing saliency rects", buf, 0xCu);
      }

      goto LABEL_22;
    }
  }

  else
  {
    v63[3] = 3;
    v28 = PLMigrationGetLog();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

    if (v29)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v31 = logger3 == 0;

      if (!v31)
      {
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
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
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

        v34 = v57[5];
        v66 = 138543618;
        v67 = v12;
        v68 = 2112;
        v69 = v34;
        LODWORD(v44) = 22;
        v35 = _os_log_send_and_compose_impl(v33, 0, buf, 512, &dword_19BF1F000, v32, 16, "Failed to process %{public}@. Error: %@", &v66, v44);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1771, 16}];

        if (v35 == buf)
        {
          goto LABEL_23;
        }

        v27 = v35;
LABEL_16:
        free(v27);
        goto LABEL_23;
      }

      v37 = PLMigrationGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v39 = v57[5];
        *buf = 138543618;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = v39;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
      }

LABEL_22:
    }
  }

LABEL_23:
  v40 = v63[3];
  v41 = v57[5];
  if (v40 != 1 && error)
  {
    v41 = v41;
    *error = v41;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v42 = v63[3];

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(v54, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);

  return v42;
}

@end