@interface PLModelMigrationAction_RemoveMessageProfileGraphCache
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveMessageProfileGraphCache

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v7 = [pathManager privateCacheDirectoryWithSubType:4];
  v8 = [v7 stringByAppendingPathComponent:@"PGMessageProfile.plist"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (![defaultManager fileExistsAtPath:v8])
  {
    v11 = 0;
LABEL_11:
    [(PLModelMigrationActionCore *)self finalizeProgress];
    v20 = v11;
    v21 = 1;
    goto LABEL_28;
  }

  v33 = 0;
  v10 = [defaultManager removeItemAtPath:v8 error:&v33];
  v11 = v33;
  v12 = PLMigrationGetLog();
  v13 = v12;
  if (v10)
  {
    v14 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

    if (v14)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v39 = 0u;
        v40 = 0u;
        memset(buf, 0, sizeof(buf));
        v16 = PLMigrationGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v34 = 138543362;
        v35 = v8;
        v18 = _os_log_send_and_compose_impl(v17, 0, buf, 512, &dword_19BF1F000, v16, 1, "Successfully removed cache file %{public}@", &v34, 12);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v18 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1455, 1}];

        if (v18 != buf)
        {
          free(v18);
        }
      }

      else
      {
        v28 = PLMigrationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = v8;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_INFO, "Successfully removed cache file %{public}@", buf, 0xCu);
        }
      }
    }

    goto LABEL_11;
  }

  v22 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

  if (v22)
  {
    logger3 = [(PLModelMigrationActionCore *)self logger];

    if (logger3)
    {
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
      v39 = 0u;
      v40 = 0u;
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

      v34 = 138543618;
      v35 = v8;
      v36 = 2112;
      v37 = v11;
      v26 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_19BF1F000, v24, 16, "Failed to delete cache file %{public}@. Error: %@", &v34, 22);

      logger4 = [(PLModelMigrationActionCore *)self logger];
      [logger4 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1458, 16}];

      if (v26 != buf)
      {
        free(v26);
      }
    }

    else
    {
      v29 = PLMigrationGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = v8;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to delete cache file %{public}@. Error: %@", buf, 0x16u);
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v30 = v11;
  v20 = v30;
  if (error)
  {
    v31 = v30;
    *error = v20;
  }

  v21 = 3;
LABEL_28:

  return v21;
}

@end