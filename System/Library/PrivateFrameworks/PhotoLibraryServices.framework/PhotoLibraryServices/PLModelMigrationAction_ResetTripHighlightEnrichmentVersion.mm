@interface PLModelMigrationAction_ResetTripHighlightEnrichmentVersion
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetTripHighlightEnrichmentVersion

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v69[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = +[PLPhotosHighlight predicateForAllTripHighlights];
  v8 = +[PLPhotosHighlight entityName];
  v68 = @"enrichmentVersion";
  v69[0] = &unk_1F0FBA8A0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
  v32 = 0;
  v10 = [PLModelMigrator executeBatchUpdateWithEntityName:v8 predicate:v7 propertiesToUpdate:v9 managedObjectContext:contextCopy error:&v32];
  v11 = v32;

  if (v10)
  {
    v31 = v11;
    v12 = [contextCopy save:&v31];
    v13 = v31;

    if (v12)
    {
      [(PLModelMigrationActionBackground *)self finalizeProgress];
      v14 = v13;
      v15 = 1;
      goto LABEL_8;
    }

    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      logger = [(PLModelMigrationActionBackground *)self logger];

      if (logger)
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
        v33 = 138543618;
        v34 = v25;
        v35 = 2112;
        v36 = v13;
        v26 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 16, "Failed to perform a save operation for %{public}@. Error: %@", &v33, 22);

        logger2 = [(PLModelMigrationActionBackground *)self logger];
        [logger2 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1397, 16}];

        if (v26 != buf)
        {
          free(v26);
        }
      }

      else
      {
        v28 = PLMigrationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138543618;
          *&buf[4] = v30;
          *&buf[12] = 2112;
          *&buf[14] = v13;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v13 = v11;
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v16 = v13;
  v14 = v16;
  if (error)
  {
    v17 = v16;
    *error = v14;
  }

  v15 = 3;
LABEL_8:

  return v15;
}

@end