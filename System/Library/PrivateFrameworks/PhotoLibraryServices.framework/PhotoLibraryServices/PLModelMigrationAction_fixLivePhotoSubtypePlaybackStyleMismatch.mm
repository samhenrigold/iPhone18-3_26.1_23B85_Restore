@interface PLModelMigrationAction_fixLivePhotoSubtypePlaybackStyleMismatch
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_fixLivePhotoSubtypePlaybackStyleMismatch

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v73[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AB28];
  v7 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v9 = [v7 predicateWithFormat:@"%K = %d", @"kind", 0];
  v73[0] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kindSubtype", 0];
  v73[1] = v10;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"playbackStyle", 3];
  v73[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:3];
  v13 = [v6 andPredicateWithSubpredicates:v12];

  v71 = @"playbackStyle";
  v14 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v72 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];

  v16 = +[PLManagedAsset entityName];
  v35 = 0;
  LOBYTE(v14) = [PLModelMigrator executeBatchUpdateWithEntityName:v16 predicate:v13 propertiesToUpdate:v15 managedObjectContext:contextCopy error:&v35];

  v17 = v35;
  if (v14)
  {
    [(PLModelMigrationActionCore *)self finalizeProgress];
    v18 = v17;
    if (error)
    {
      *error = v18;
    }

    v19 = 1;
  }

  else
  {
    v20 = PLMigrationGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v41 = 0u;
        v42 = 0u;
        memset(buf, 0, sizeof(buf));
        v23 = PLMigrationGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v36 = 138543618;
        v37 = v26;
        v38 = 2114;
        v39 = v17;
        LODWORD(v34) = 22;
        v27 = _os_log_send_and_compose_impl(v24, 0, buf, 512, &dword_19BF1F000, v23, 16, "Failed to execute batch update request for %{public}@. Error: %{public}@", &v36, v34);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1400, 16}];

        if (v27 != buf)
        {
          free(v27);
        }
      }

      else
      {
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          *buf = 138543618;
          *&buf[4] = v31;
          *&buf[12] = 2114;
          *&buf[14] = v17;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to execute batch update request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v32 = v17;
    v19 = 3;
  }

  return v19;
}

@end