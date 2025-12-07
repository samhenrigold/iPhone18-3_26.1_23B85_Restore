@interface PLModelMigrationAction_FixupDefaultStickerConfidenceScoreValues
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixupDefaultStickerConfidenceScoreValues

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v72 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = +[PLManagedAsset fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  v9 = +[PLVisualSearchAttributes algorithmVersionKey];
  v10 = [v8 predicateWithFormat:@"%K.%K = 0", @"mediaAnalysisAttributes.visualSearchAttributes", v9];
  [v7 setPredicate:v10];

  v11 = [PLEnumerateAndSaveController alloc];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __111__PLModelMigrationAction_FixupDefaultStickerConfidenceScoreValues_performActionWithManagedObjectContext_error___block_invoke;
  v35[3] = &unk_1E7575B30;
  v14 = contextCopy;
  v36 = v14;
  v15 = [(PLEnumerateAndSaveController *)v11 initWithName:v13 fetchRequest:v7 context:v14 options:4 generateContextBlock:v35 didFetchObjectIDsBlock:0 processResultBlock:&__block_literal_global_53874];

  v34 = 0;
  v16 = [(PLEnumerateAndSaveController *)v15 processObjectsWithError:&v34];
  v17 = v34;
  if (!v16)
  {
    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (!logger)
      {
        v30 = PLMigrationGetLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          *buf = 138543618;
          *&buf[4] = v32;
          *&buf[12] = 2114;
          *&buf[14] = v17;
          _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
        }

        if (!error)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v37 = 138543618;
      v38 = v25;
      v39 = 2114;
      v40 = v17;
      LODWORD(v33) = 22;
      v26 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 16, "Failed to process %{public}@. Error: %{public}@", &v37, v33);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{100, 16}];

      if (v26 != buf)
      {
        free(v26);
      }
    }

    if (!error)
    {
LABEL_12:
      v18 = 3;
      goto LABEL_13;
    }

LABEL_11:
    v28 = v17;
    *error = v17;
    goto LABEL_12;
  }

  v18 = 1;
LABEL_13:

  return v18;
}

@end