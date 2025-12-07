@interface PLModelMigrationAction_ProcessAlbumAssociation
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ProcessAlbumAssociation

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v68[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v68[0] = @"albums";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v10];

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v28[4] = &v30;
  v29 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __94__PLModelMigrationAction_ProcessAlbumAssociation_performActionWithManagedObjectContext_error___block_invoke;
  v28[3] = &unk_1E756C8F0;
  v11 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:contextCopy fetchRequest:v9 pendingParentUnitCount:0 error:&v29 processingBlock:v28];
  v12 = v29;
  if (v11 == 1)
  {
    v13 = PLMigrationGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v16 = logger == 0;

      if (v16)
      {
        v22 = PLMigrationGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v31[3];
          *buf = 134217984;
          *&buf[4] = v23;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Updated %td assets", buf, 0xCu);
        }
      }

      else
      {
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
        v38 = 0u;
        v39 = 0u;
        *buf = 0u;
        v37 = 0u;
        v17 = PLMigrationGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        v19 = v31[3];
        v34 = 134217984;
        v35 = v19;
        v20 = _os_log_send_and_compose_impl(v18, 0, buf, 512, &dword_19BF1F000, v17, 0, "Updated %td assets", &v34);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1888, 0}];

        if (v20 != buf)
        {
          free(v20);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v24 = v12;
  v25 = v24;
  if (v11 != 1 && error)
  {
    v26 = v24;
    *error = v25;
  }

  _Block_object_dispose(&v30, 8);
  return v11;
}

@end