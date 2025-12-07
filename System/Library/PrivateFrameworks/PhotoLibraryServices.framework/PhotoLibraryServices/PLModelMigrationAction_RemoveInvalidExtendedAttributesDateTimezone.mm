@interface PLModelMigrationAction_RemoveInvalidExtendedAttributesDateTimezone
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveInvalidExtendedAttributesDateTimezone

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v77[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AB28];
  v5 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v7 = [v5 predicateWithFormat:@"%K = nil", @"dateCreated"];
  v77[0] = v7;
  v8 = MEMORY[0x1E696AB28];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"timezoneName"];
  v76[0] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"timezoneOffset"];
  v76[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
  v12 = [v8 orPredicateWithSubpredicates:v11];
  v77[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
  v14 = [v4 andPredicateWithSubpredicates:v13];

  v74[0] = @"timezoneName";
  null = [MEMORY[0x1E695DFB0] null];
  v74[1] = @"timezoneOffset";
  v75[0] = null;
  null2 = [MEMORY[0x1E695DFB0] null];
  v75[1] = null2;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];

  v18 = +[PLExtendedAttributes entityName];
  v38 = 0;
  LOBYTE(null) = [PLModelMigrator executeBatchUpdateWithEntityName:v18 predicate:v14 propertiesToUpdate:v17 managedObjectContext:contextCopy error:&v38];

  v19 = v38;
  if (null)
  {
    [(PLModelMigrationActionCore *)self finalizeProgress];
    v20 = v19;
    if (error)
    {
      *error = v20;
    }

    v21 = 1;
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
        v39 = 138543618;
        v40 = v28;
        v41 = 2114;
        v42 = v19;
        v29 = _os_log_send_and_compose_impl(v26, 0, buf, 512, &dword_19BF1F000, v25, 16, "Failed to execute batch update request for %{public}@. Error: %{public}@", &v39, 22);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v29 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{294, 16}];

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
          *&buf[12] = 2114;
          *&buf[14] = v19;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Failed to execute batch update request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v34 = v19;
    v21 = 3;
  }

  return v21;
}

@end