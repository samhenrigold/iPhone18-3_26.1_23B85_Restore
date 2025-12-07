@interface PLModelMigrationAction_GreenTeaSetDefaultContactsAuthorizationState
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_GreenTeaSetDefaultContactsAuthorizationState

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v73 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = 1;
  v8 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v9 = [PLGlobalKeyValue fetchGlobalKeyValueForKey:@"GreenTeaContactsAuthorization" withManagedObjectContext:contextCopy createIfMissing:0];
  v10 = 0;
  if (!v9)
  {
    [PLGlobalKeyValue setGlobalValue:&unk_1F0FBCDD8 forKey:@"GreenTeaContactsAuthorization" managedObjectContext:contextCopy];
    v37 = 0;
    v11 = [contextCopy save:&v37];
    v10 = v37;
    if (v11)
    {
      v7 = 1;
      v36 = v8;
      [v8 setCompletedUnitCount:1];
      v12 = PLMigrationGetLog();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v13)
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
          v15 = PLMigrationGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 3;
          }

          else
          {
            v16 = 2;
          }

          integerValue = [&unk_1F0FBCDD8 integerValue];
          v38 = 138543618;
          v39 = @"GreenTeaContactsAuthorization";
          v40 = 2048;
          v41 = integerValue;
          v18 = _os_log_send_and_compose_impl(v16, 0, buf, 512, &dword_19BF1F000, v15, 0, "Updated global value %{public}@ with token %td", &v38, 22);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v18 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{774, 0}];

          v8 = v36;
          if (v18 != buf)
          {
            free(v18);
          }
        }

        else
        {
          v29 = PLMigrationGetLog();
          v8 = v36;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            integerValue2 = [&unk_1F0FBCDD8 integerValue];
            *buf = 138543618;
            *&buf[4] = @"GreenTeaContactsAuthorization";
            *&buf[12] = 2048;
            *&buf[14] = integerValue2;
            _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "Updated global value %{public}@ with token %td", buf, 0x16u);
          }
        }

        v7 = 1;
      }

      else
      {
        v8 = v36;
      }
    }

    else
    {
      v20 = PLMigrationGetLog();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (v21)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];

        if (logger3)
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
          v38 = 138543618;
          v39 = v26;
          v40 = 2112;
          v41 = v10;
          v27 = _os_log_send_and_compose_impl(v24, 0, buf, 512, &dword_19BF1F000, v23, 16, "Failed to perform a save operation for %{public}@. Error: %@", &v38, 22);

          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{771, 16}];

          if (v27 != buf)
          {
            free(v27);
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
            *&buf[12] = 2112;
            *&buf[14] = v10;
            _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
          }
        }
      }

      v7 = 3;
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    v34 = v10;
    *error = v10;
  }

  return v7;
}

@end