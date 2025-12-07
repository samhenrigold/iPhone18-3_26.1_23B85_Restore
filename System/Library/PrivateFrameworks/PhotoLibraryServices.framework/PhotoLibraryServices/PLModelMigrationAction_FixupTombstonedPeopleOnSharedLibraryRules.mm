@interface PLModelMigrationAction_FixupTombstonedPeopleOnSharedLibraryRules
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixupTombstonedPeopleOnSharedLibraryRules

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLLibraryScope entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"autoSharePolicy", 2];
  [v9 setPredicate:v10];

  [v9 setFetchBatchSize:100];
  v38 = 0;
  v11 = [contextCopy executeFetchRequest:v9 error:&v38];
  v12 = v38;
  if (v11)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v74 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        v17 = 0;
        do
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v34 + 1) + 8 * v17++) updatePeopleRulesForAllTombstonedPersons];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v34 objects:v74 count:16];
      }

      while (v15);
    }

    v18 = 1;
  }

  else
  {
    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
        v72 = 0u;
        v73 = 0u;
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
        v39 = 138543618;
        v40 = v25;
        v41 = 2114;
        v42 = v12;
        LODWORD(v33) = 22;
        v26 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 16, "Failed to execute fetch request for %{public}@. Error: %{public}@", &v39, v33);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{929, 16}];

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
          *&buf[12] = 2114;
          *&buf[14] = v12;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v18 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    v31 = v12;
    *error = v12;
  }

  return v18;
}

@end