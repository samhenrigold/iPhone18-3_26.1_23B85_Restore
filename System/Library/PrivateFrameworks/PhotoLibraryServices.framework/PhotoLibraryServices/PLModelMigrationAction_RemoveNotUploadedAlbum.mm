@interface PLModelMigrationAction_RemoveNotUploadedAlbum
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveNotUploadedAlbum

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"%K = %@", @"kind", &unk_1F0FBC0A0];
  v9 = +[PLFetchingAlbum entityName];
  v36 = 0;
  v10 = [PLModelMigrator executeBatchDeleteWithEntityName:v9 predicate:v8 managedObjectContext:contextCopy error:&v36];

  v11 = v36;
  if (v10)
  {
    v12 = PLMigrationGetLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v42 = 0u;
        v43 = 0u;
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

        LOWORD(v37) = 0;
        LODWORD(v35) = 2;
        v17 = _os_log_send_and_compose_impl(v16, 0, buf, 512, &dword_19BF1F000, v15, 0, "Deleted all albums of type NotUploadedAlbum", &v37, v35);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v17 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1080, 0}];

        if (v17 != buf)
        {
          free(v17);
        }
      }

      else
      {
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "Deleted all albums of type NotUploadedAlbum", buf, 2u);
        }
      }
    }

    v30 = 1;
  }

  else
  {
    if (error)
    {
      v19 = v11;
      *error = v11;
    }

    v20 = PLMigrationGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        v42 = 0u;
        v43 = 0u;
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
        v37 = 138543618;
        v38 = v26;
        v39 = 2114;
        v40 = v11;
        LODWORD(v35) = 22;
        v27 = _os_log_send_and_compose_impl(v24, 0, buf, 512, &dword_19BF1F000, v23, 16, "Failed to batch delete albums of type NotUploadedAlbum for %{public}@. Error: %{public}@", &v37, v35);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1084, 16}];

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
          *&buf[12] = 2114;
          *&buf[14] = v11;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Failed to batch delete albums of type NotUploadedAlbum for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v30 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return v30;
}

@end