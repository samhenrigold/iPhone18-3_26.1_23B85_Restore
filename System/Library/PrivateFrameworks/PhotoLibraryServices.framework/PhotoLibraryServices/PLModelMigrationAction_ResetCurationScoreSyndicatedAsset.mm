@interface PLModelMigrationAction_ResetCurationScoreSyndicatedAsset
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetCurationScoreSyndicatedAsset

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v71[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695D560];
  contextCopy = context;
  v8 = [v6 alloc];
  v9 = objc_msgSend_entity(PLManagedAsset);
  v10 = [v8 initWithEntity:v9];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > 0.0", @"curationScore"];
  [v10 setPredicate:v11];
  [v10 setResultType:2];
  v70 = @"curationScore";
  v71[0] = &unk_1F0FC0498;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
  [v10 setPropertiesToUpdate:v12];

  v34 = 0;
  v13 = [contextCopy executeRequest:v10 error:&v34];

  v14 = v34;
  if (v13)
  {
    v15 = PLSyndicationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      result = [v13 result];
      *buf = 138543618;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = result;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "%{public}@.: Successfully batch reset curationScore for %@ assets", buf, 0x16u);
    }

    v19 = 1;
    if (error)
    {
LABEL_5:
      v20 = v14;
      *error = v14;
    }
  }

  else
  {
    v22 = PLMigrationGetLog();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

    if (v23)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v40 = 0u;
        v41 = 0u;
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
        v35 = 138543618;
        v36 = v28;
        v37 = 2112;
        v38 = v14;
        v29 = _os_log_send_and_compose_impl(v26, 0, buf, 512, &dword_19BF1F000, v25, 16, "Failed to perform a save operation for %{public}@. Failed to batch reset savedAssetType for assets: %@", &v35, 22);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v29 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{678, 16}];

        if (v29 != buf)
        {
          free(v29);
        }
      }

      else
      {
        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          *buf = 138543618;
          *&buf[4] = v33;
          *&buf[12] = 2112;
          *&buf[14] = v14;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Failed to batch reset savedAssetType for assets: %@", buf, 0x16u);
        }
      }
    }

    v19 = 3;
    if (error)
    {
      goto LABEL_5;
    }
  }

  return v19;
}

@end