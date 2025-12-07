@interface PLModelMigrationAction_FixupDefaultVideoStickerSuggestionScoreValues
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixupDefaultVideoStickerSuggestionScoreValues

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v76[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"%K = 0", @"mediaAnalysisVersion"];
  v75 = @"videoStickerSuggestionScore";
  LODWORD(v9) = -1.0;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v76[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:&v75 count:1];

  v12 = +[PLMediaAnalysisAssetAttributes entityName];
  v39 = 0;
  LODWORD(v10) = [PLModelMigrator executeBatchUpdateWithEntityName:v12 predicate:v8 propertiesToUpdate:v11 managedObjectContext:contextCopy error:&v39];

  v13 = v39;
  if (v10)
  {
    v14 = PLMigrationGetLog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        memset(buf, 0, sizeof(buf));
        v17 = PLMigrationGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        LOWORD(v40) = 0;
        v19 = _os_log_send_and_compose_impl(v18, 0, buf, 512, &dword_19BF1F000, v17, 0, "Reset default video sticker suggestion score on assets with mediaAnalysisAttributes.mediaAnalysisVersion = 0", &v40, 2);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v19 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{120, 0}];

        if (v19 != buf)
        {
          free(v19);
        }
      }

      else
      {
        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Reset default video sticker suggestion score on assets with mediaAnalysisAttributes.mediaAnalysisVersion = 0", buf, 2u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v32 = v13;
    v33 = 1;
  }

  else
  {
    if (error)
    {
      v21 = v13;
      *error = v13;
    }

    v22 = PLMigrationGetLog();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

    if (v23)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        memset(buf, 0, sizeof(buf));
        v25 = PLMigrationGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }

        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v40 = 138543618;
        v41 = v28;
        v42 = 2114;
        v43 = v13;
        v29 = _os_log_send_and_compose_impl(v26, 0, buf, 512, &dword_19BF1F000, v25, 16, "Failed to reset default video sticker suggestion score on assets with mediaAnalysisAttributes.mediaAnalysisVersion = 0 %{public}@. Error: %{public}@", &v40, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v29 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{124, 16}];

        if (v29 != buf)
        {
          free(v29);
        }
      }

      else
      {
        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          *buf = 138543618;
          *&buf[4] = v36;
          *&buf[12] = 2114;
          *&buf[14] = v13;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to reset default video sticker suggestion score on assets with mediaAnalysisAttributes.mediaAnalysisVersion = 0 %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v37 = v13;
    if (error)
    {
      *error = v37;
    }

    v33 = 3;
  }

  return v33;
}

@end