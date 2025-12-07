@interface PLModelMigrationAction_RepairTrashHiddenDuplicateAssetVisibilityState
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RepairTrashHiddenDuplicateAssetVisibilityState

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v76[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AB28];
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"%K != %d", @"duplicateAssetVisibilityState", 0];
  v76[0] = v8;
  v9 = MEMORY[0x1E696AB28];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"trashedState", 0];
  v75[0] = v10;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = YES", @"hidden"];
  v75[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
  v13 = [v9 orPredicateWithSubpredicates:v12];
  v76[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
  v15 = [v5 andPredicateWithSubpredicates:v14];

  v73 = @"duplicateAssetVisibilityState";
  v74 = &unk_1F0FBC040;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
  v17 = +[PLManagedAsset entityName];
  v37 = 0;
  LOBYTE(v10) = [PLModelMigrator executeBatchUpdateWithEntityName:v17 predicate:v15 propertiesToUpdate:v16 managedObjectContext:contextCopy error:&v37];

  v18 = v37;
  if (v10)
  {
    [(PLModelMigrationActionCore *)self finalizeProgress];
    v19 = v18;
    v20 = 1;
  }

  else
  {
    v21 = PLMigrationGetLog();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
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
        v24 = PLMigrationGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v38 = 138543618;
        v39 = v27;
        v40 = 2114;
        v41 = v18;
        LODWORD(v35) = 22;
        v28 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_19BF1F000, v24, 16, "Failed to execute batch update request for %{public}@. Error: %{public}@", &v38, v35);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{482, 16}];

        if (v28 != buf)
        {
          free(v28);
        }
      }

      else
      {
        v30 = PLMigrationGetLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          *buf = 138543618;
          *&buf[4] = v32;
          *&buf[12] = 2114;
          *&buf[14] = v18;
          _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Failed to execute batch update request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v33 = v18;
    if (error)
    {
      *error = v33;
    }

    v20 = 3;
  }

  return v20;
}

@end