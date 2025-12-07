@interface PLModelMigrationAction_CPLSettings
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_CPLSettings

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = [(PLModelMigrationActionCore *)self pathManager:context];
  v6 = [PLCPLSettings settingsWithPathManager:v5];

  v22 = 0;
  v7 = [v6 migrateSettings:&v22];
  v8 = v22;
  if ((v7 & 1) == 0)
  {
    v9 = PLMigrationGetLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        memset(buf, 0, sizeof(buf));
        v12 = PLMigrationGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v23 = 138543618;
        v24 = v15;
        v25 = 2112;
        v26 = v8;
        v16 = _os_log_send_and_compose_impl(v13, 0, buf, 512, &dword_19BF1F000, v12, 16, "Failed to process %{public}@. Error: %@", &v23, 22);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v16 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{248, 16}];

        if (v16 != buf)
        {
          free(v16);
        }
      }

      else
      {
        v18 = PLMigrationGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          *buf = 138543618;
          *&buf[4] = v20;
          *&buf[12] = 2112;
          *&buf[14] = v8;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }
  }

  return 1;
}

@end