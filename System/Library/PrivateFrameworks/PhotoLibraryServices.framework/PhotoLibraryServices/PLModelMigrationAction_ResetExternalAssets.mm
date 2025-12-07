@interface PLModelMigrationAction_ResetExternalAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetExternalAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v103 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = objc_autoreleasePoolPush();
  predicateForFetchingAssetsToReset = [objc_opt_class() predicateForFetchingAssetsToReset];
  v8 = +[PLManagedAsset fetchRequest];
  [v8 setPredicate:predicateForFetchingAssetsToReset];
  v9 = 1;
  [v8 setResultType:1];
  v65 = 0;
  v10 = [contextCopy executeFetchRequest:v8 error:&v65];
  v11 = v65;
  if (!v10)
  {
    v12 = PLMigrationGetLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v73 = 0u;
        v74 = 0u;
        memset(buf, 0, sizeof(buf));
        v15 = PLMigrationGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        v66 = 138543362;
        v67 = v11;
        v17 = _os_log_send_and_compose_impl(v16, 0, buf, 512, &dword_19BF1F000, v15, 16, "[ResetExternalAssets] Failed to fetch external assets. Error: %{public}@", &v66, 12);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v17 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{265, 16}];

        if (v17 != buf)
        {
          free(v17);
        }
      }

      else
      {
        v19 = PLMigrationGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v11;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "[ResetExternalAssets] Failed to fetch external assets. Error: %{public}@", buf, 0xCu);
        }
      }
    }

    v9 = 3;
  }

  objc_autoreleasePoolPop(v6);
  if (!objc_msgSend_count(v10))
  {
    v34 = PLMigrationGetLog();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

    if (v35)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        v73 = 0u;
        v74 = 0u;
        memset(buf, 0, sizeof(buf));
        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        LOWORD(v66) = 0;
        LODWORD(v60) = 2;
        v39 = _os_log_send_and_compose_impl(v38, 0, buf, 512, &dword_19BF1F000, v37, 0, "[ResetExternalAssets] No external assets available.", &v66, v60);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v39 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{270, 0}];

        if (v39 != buf)
        {
          free(v39);
        }
      }

      else
      {
        v48 = PLMigrationGetLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_DEFAULT, "[ResetExternalAssets] No external assets available.", buf, 2u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v24 = v11;
    errorCopy2 = error;
    if (v10)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  context = objc_autoreleasePoolPush();
  v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"asset", v10];
  v70[0] = @"syndicationProcessingValue";
  v70[1] = @"syndicationProcessingVersion";
  v71[0] = &unk_1F0FBCE38;
  v71[1] = &unk_1F0FBCE50;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
  v22 = +[PLMediaAnalysisAssetAttributes entityName];
  v64 = v11;
  v23 = [PLModelMigrator executeBatchUpdateWithEntityName:v22 predicate:v20 propertiesToUpdate:v21 managedObjectContext:contextCopy error:&v64];
  v24 = v64;

  v25 = PLMigrationGetLog();
  v26 = v25;
  if (v23)
  {
    v27 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v27)
    {
      logger5 = [(PLModelMigrationActionCore *)self logger];

      if (logger5)
      {
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
        v73 = 0u;
        v74 = 0u;
        memset(buf, 0, sizeof(buf));
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v31 = objc_msgSend_count(v10);
        v66 = 134217984;
        v67 = v31;
        v32 = _os_log_send_and_compose_impl(v30, 0, buf, 512, &dword_19BF1F000, v29, 0, "[ResetExternalAssets] Successfully reset external assets processing value and version on %tu assets", &v66);

        logger6 = [(PLModelMigrationActionCore *)self logger];
        [logger6 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{287, 0}];

        if (v32 != buf)
        {
          free(v32);
        }
      }

      else
      {
        v50 = PLMigrationGetLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = objc_msgSend_count(v10);
          *buf = 134217984;
          *&buf[4] = v51;
          _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_DEFAULT, "[ResetExternalAssets] Successfully reset external assets processing value and version on %tu assets", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v41 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

    if (v41)
    {
      logger7 = [(PLModelMigrationActionCore *)self logger];

      if (logger7)
      {
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
        v73 = 0u;
        v74 = 0u;
        memset(buf, 0, sizeof(buf));
        v43 = PLMigrationGetLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        v45 = objc_msgSend_count(v10);
        v66 = 134218242;
        v67 = v45;
        v68 = 2114;
        v69 = v24;
        LODWORD(v61) = 22;
        v46 = _os_log_send_and_compose_impl(v44, 0, buf, 512, &dword_19BF1F000, v43, 16, "[ResetExternalAssets] Failed to reset external assets processing value and version on %tu assets. Error: %{public}@", &v66, v61);

        logger8 = [(PLModelMigrationActionCore *)self logger];
        [logger8 logWithMessage:v46 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{290, 16}];

        if (v46 != buf)
        {
          free(v46);
        }
      }

      else
      {
        v52 = PLMigrationGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = objc_msgSend_count(v10);
          *buf = 134218242;
          *&buf[4] = v53;
          *&buf[12] = 2114;
          *&buf[14] = v24;
          _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_ERROR, "[ResetExternalAssets] Failed to reset external assets processing value and version on %tu assets. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v9 = 3;
  }

  objc_autoreleasePoolPop(context);
  if (v9 != 3)
  {
    v55 = objc_autoreleasePoolPush();
    pathManager = [(PLModelMigrationActionCore *)self pathManager];
    v57 = [PLModelMigrator rebuildMomentsInContext:contextCopy pathManager:pathManager deleteExistingMoments:0 targetedAssetOIDs:v10];

    if (v57)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }

    objc_autoreleasePoolPop(v55);
    [(PLModelMigrationActionCore *)self finalizeProgress];
    v24 = v24;
    errorCopy2 = error;
    if (v57)
    {
LABEL_58:

      goto LABEL_59;
    }

LABEL_56:
    if (errorCopy2)
    {
      v58 = v24;
      *errorCopy2 = v24;
    }

    goto LABEL_58;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    v54 = v24;
    *error = v24;
  }

  v9 = 3;
LABEL_59:

  return v9;
}

@end