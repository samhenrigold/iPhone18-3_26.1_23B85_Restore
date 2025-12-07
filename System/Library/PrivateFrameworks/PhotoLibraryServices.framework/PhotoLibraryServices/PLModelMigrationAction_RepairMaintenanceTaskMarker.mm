@interface PLModelMigrationAction_RepairMaintenanceTaskMarker
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RepairMaintenanceTaskMarker

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69BF188];
  v6 = [(PLModelMigrationActionCore *)self pathManager:context];
  libraryURL = [v6 libraryURL];
  v8 = [v5 appPrivateDataForLibraryURL:libraryURL];

  v9 = [v8 valueForKey:@"PLDeferredMaintenanceTask"];
  objc_opt_class();
  LOBYTE(libraryURL) = objc_opt_isKindOfClass();

  if ((libraryURL & 1) == 0)
  {
    v40 = 0;
    v10 = [v8 setValue:0 forKey:@"PLDeferredMaintenanceTask" error:&v40];
    v11 = v40;
    v12 = PLMigrationGetLog();
    v13 = v12;
    if (v10)
    {
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v14)
      {
        logger = [(PLModelMigrationActionCore *)self logger];

        if (logger)
        {
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
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
          v41 = 138543874;
          v42 = @"PLDeferredMaintenanceTask";
          v43 = 2114;
          v44 = v19;
          v45 = 2112;
          v46 = v11;
          v20 = _os_log_send_and_compose_impl(v17, 0, buf, 512, &dword_19BF1F000, v16, 0, "Repaired the %{public}@ marker for %{public}@. Error: %@", &v41, 32);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          v22 = logger2;
          v23 = v20;
          v24 = 266;
          v25 = 0;
LABEL_15:
          [logger2 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{v24, v25}];

          if (v20 != buf)
          {
            free(v20);
          }

          goto LABEL_23;
        }

        v32 = PLMigrationGetLog();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138543874;
        *&buf[4] = @"PLDeferredMaintenanceTask";
        *&buf[12] = 2114;
        *&buf[14] = v34;
        *&buf[22] = 2112;
        *&buf[24] = v11;
        v35 = "Repaired the %{public}@ marker for %{public}@. Error: %@";
        v36 = v32;
        v37 = OS_LOG_TYPE_DEFAULT;
LABEL_21:
        _os_log_impl(&dword_19BF1F000, v36, v37, v35, buf, 0x20u);

LABEL_22:
      }
    }

    else
    {
      v26 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (v26)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];

        if (logger3)
        {
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v28 = PLMigrationGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = 3;
          }

          else
          {
            v29 = 2;
          }

          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v41 = 138543874;
          v42 = @"PLDeferredMaintenanceTask";
          v43 = 2114;
          v44 = v31;
          v45 = 2112;
          v46 = v11;
          v20 = _os_log_send_and_compose_impl(v29, 0, buf, 512, &dword_19BF1F000, v28, 16, "Failed to remove the %{public}@ marker for %{public}@. Error: %@", &v41, 32);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          v22 = logger2;
          v23 = v20;
          v24 = 268;
          v25 = 16;
          goto LABEL_15;
        }

        v32 = PLMigrationGetLog();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        v38 = objc_opt_class();
        v34 = NSStringFromClass(v38);
        *buf = 138543874;
        *&buf[4] = @"PLDeferredMaintenanceTask";
        *&buf[12] = 2114;
        *&buf[14] = v34;
        *&buf[22] = 2112;
        *&buf[24] = v11;
        v35 = "Failed to remove the %{public}@ marker for %{public}@. Error: %@";
        v36 = v32;
        v37 = OS_LOG_TYPE_ERROR;
        goto LABEL_21;
      }
    }

LABEL_23:
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return 1;
}

@end