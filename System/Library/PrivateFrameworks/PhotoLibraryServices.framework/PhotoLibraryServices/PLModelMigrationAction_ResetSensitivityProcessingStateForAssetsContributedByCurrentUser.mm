@interface PLModelMigrationAction_ResetSensitivityProcessingStateForAssetsContributedByCurrentUser
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetSensitivityProcessingStateForAssetsContributedByCurrentUser

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v73[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = +[PLManagedAsset fetchRequest];
  [v7 setFetchBatchSize:100];
  v73[0] = @"collectionShareAssetContributor";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
  [v7 setRelationshipKeyPathsForPrefetching:v8];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.%K != nil", @"collectionShareAssetContributor", @"participant"];
  [v7 setPredicate:v9];

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v32[4] = &v34;
  v33 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __135__PLModelMigrationAction_ResetSensitivityProcessingStateForAssetsContributedByCurrentUser_performActionWithManagedObjectContext_error___block_invoke;
  v32[3] = &unk_1E756C8F0;
  v10 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:contextCopy fetchRequest:v7 pendingParentUnitCount:0 error:&v33 processingBlock:v32];
  v11 = v33;
  v12 = PLMigrationGetLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    logger = [(PLModelMigrationActionCore *)self logger];
    v15 = logger == 0;

    if (v15)
    {
      v23 = PLMigrationGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = v35[3];
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2048;
        *&buf[14] = v26;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: summary - countOfMigratedAssetsContributedByCurrentUser: %ld", buf, 0x16u);
      }
    }

    else
    {
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
      v43 = 0u;
      v44 = 0u;
      memset(buf, 0, sizeof(buf));
      v16 = PLMigrationGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = v35[3];
      v38 = 138543618;
      v39 = v19;
      v40 = 2048;
      v41 = v20;
      LODWORD(v31) = 22;
      v21 = _os_log_send_and_compose_impl(v17, 0, buf, 512, &dword_19BF1F000, v16, 0, "%{public}@: summary - countOfMigratedAssetsContributedByCurrentUser: %ld", &v38, v31);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1624, 0}];

      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v27 = v11;
  v28 = v27;
  if (v10 != 1 && error)
  {
    v29 = v27;
    *error = v28;
  }

  _Block_object_dispose(&v34, 8);
  return v10;
}

@end