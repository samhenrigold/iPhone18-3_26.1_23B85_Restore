@interface PLModelMigrationAction_SetShareParticipantOnOrphanedCollectionShareAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_SetShareParticipantOnOrphanedCollectionShareAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v49[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  [v9 setFetchBatchSize:100];
  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"collectionShareAssetContributor"];
  v49[0] = v11;
  v12 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCloudSharedAsset"), 0}];
  v49[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v14 = [v10 orPredicateWithSubpredicates:v13];
  [v9 setPredicate:v14];

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v38[5] = &v40;
  v39 = 0;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __121__PLModelMigrationAction_SetShareParticipantOnOrphanedCollectionShareAssets_performActionWithManagedObjectContext_error___block_invoke;
  v38[3] = &unk_1E7568150;
  v38[4] = self;
  v15 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:contextCopy fetchRequest:v9 pendingParentUnitCount:0 error:&v39 processingBlock:v38];
  v16 = v39;
  if (v41[3])
  {
    analyticsEventManager = [(PLModelMigrationActionCore *)self analyticsEventManager];
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46701 userInfo:0];
    [analyticsEventManager setPayloadValue:v18 forKey:*MEMORY[0x1E69BF6D8] onEventWithName:*MEMORY[0x1E69BF6D0]];
  }

  v19 = PLMigrationGetLog();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

  if (v20)
  {
    logger = [(PLModelMigrationActionCore *)self logger];
    v22 = logger == 0;

    if (v22)
    {
      v30 = PLMigrationGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = v41[3];
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v32;
        WORD6(buf[0]) = 2048;
        *(buf + 14) = v33;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: summary - countOfAssetsWithoutParticipant: %ld", buf, 0x16u);
      }
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      v23 = PLMigrationGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = v41[3];
      v44 = 138543618;
      v45 = v26;
      v46 = 2048;
      v47 = v27;
      v28 = _os_log_send_and_compose_impl(v24, 0, buf, 512, &dword_19BF1F000, v23, 0, "%{public}@: summary - countOfAssetsWithoutParticipant: %ld", &v44, 22);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1488, 0}];

      if (v28 != buf)
      {
        free(v28);
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v34 = v16;
  v35 = v34;
  if (v15 != 1 && error)
  {
    v36 = v34;
    *error = v35;
  }

  _Block_object_dispose(&v40, 8);
  return v15;
}

@end