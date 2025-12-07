@interface PLModelMigrationAction_CopyStickerConfidenceScoreToAssetTable
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_CopyStickerConfidenceScoreToAssetTable

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v109[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 1;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__53822;
  v68 = __Block_byref_object_dispose__53823;
  v69 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AE18];
  v11 = +[PLVisualSearchAttributes algorithmVersionKey];
  v12 = +[PLVisualSearchAttributes stickerConfidenceScoreKey];
  v13 = [v10 predicateWithFormat:@"(%K < 0) AND (%K.%K > 0) AND (%K.%K >= 0)", @"stickerConfidenceScore", @"mediaAnalysisAttributes.visualSearchAttributes", v11, @"mediaAnalysisAttributes.visualSearchAttributes", v12];
  [v9 setPredicate:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = +[PLVisualSearchAttributes stickerConfidenceScoreKey];
  v16 = [v14 stringWithFormat:@"%@.%@", @"mediaAnalysisAttributes.visualSearchAttributes", v15];
  v109[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v17];

  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__53822;
  v62[4] = __Block_byref_object_dispose__53823;
  v63 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v18 = [PLEnumerateAndSaveController alloc];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __109__PLModelMigrationAction_CopyStickerConfidenceScoreToAssetTable_performActionWithManagedObjectContext_error___block_invoke;
  v56[3] = &unk_1E7575B30;
  v21 = contextCopy;
  v57 = v21;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __109__PLModelMigrationAction_CopyStickerConfidenceScoreToAssetTable_performActionWithManagedObjectContext_error___block_invoke_2;
  v55[3] = &unk_1E7572E50;
  v55[4] = self;
  v55[5] = v62;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __109__PLModelMigrationAction_CopyStickerConfidenceScoreToAssetTable_performActionWithManagedObjectContext_error___block_invoke_3;
  v54[3] = &unk_1E756DD18;
  v54[4] = self;
  v54[5] = &v58;
  v54[6] = &v64;
  v54[7] = &v70;
  v54[8] = v62;
  v22 = [(PLEnumerateAndSaveController *)v18 initWithName:v20 fetchRequest:v9 context:v21 options:4 generateContextBlock:v56 didFetchObjectIDsBlock:v55 processResultBlock:v54];

  v23 = (v65 + 5);
  obj = v65[5];
  LOBYTE(v17) = [(PLEnumerateAndSaveController *)v22 processObjectsWithError:&obj];
  objc_storeStrong(v23, obj);
  if (v17)
  {
    v24 = PLMigrationGetLog();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (!v25)
    {
      goto LABEL_23;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v27 = logger == 0;

    if (!v27)
    {
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
      memset(buf, 0, sizeof(buf));
      v28 = PLMigrationGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v30 = v59[3];
      v74 = 134217984;
      v75 = v30;
      v31 = _os_log_send_and_compose_impl(v29, 0, buf, 512, &dword_19BF1F000, v28, 0, "Copied %tu sticker confidence scores", &v74);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{445, 0}];

      if (v31 == buf)
      {
        goto LABEL_23;
      }

      v33 = v31;
      goto LABEL_16;
    }

    v45 = PLMigrationGetLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v59[3];
      *buf = 134217984;
      *&buf[4] = v46;
      _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEFAULT, "Copied %tu sticker confidence scores", buf, 0xCu);
    }
  }

  else
  {
    v71[3] = 3;
    v34 = PLMigrationGetLog();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

    if (!v35)
    {
      goto LABEL_23;
    }

    logger3 = [(PLModelMigrationActionCore *)self logger];
    v37 = logger3 == 0;

    if (!v37)
    {
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
      v42 = v65[5];
      v74 = 138543618;
      v75 = v41;
      v76 = 2114;
      v77 = v42;
      LODWORD(v52) = 22;
      v43 = _os_log_send_and_compose_impl(v39, 0, buf, 512, &dword_19BF1F000, v38, 16, "Failed to process %{public}@. Error: %{public}@", &v74, v52);

      logger4 = [(PLModelMigrationActionCore *)self logger];
      [logger4 logWithMessage:v43 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{443, 16}];

      if (v43 == buf)
      {
        goto LABEL_23;
      }

      v33 = v43;
LABEL_16:
      free(v33);
      goto LABEL_23;
    }

    v45 = PLMigrationGetLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      v49 = v65[5];
      *buf = 138543618;
      *&buf[4] = v48;
      *&buf[12] = 2114;
      *&buf[14] = v49;
      _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
    }
  }

LABEL_23:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    *error = v65[5];
  }

  v50 = v71[3];

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(v62, 8);

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v70, 8);

  return v50;
}

@end