@interface PLModelMigrationAction_DeleteCarouselCruft
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_DeleteCarouselCruft

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v112 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v7 = [pathManager internalDirectoryWithSubType:5 additionalPathComponents:0 createIfNeeded:0 error:0];

  v68 = v7;
  selfCopy = self;
  if ([v7 length])
  {
    v66 = contextCopy;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v9 = [&unk_1F0FBFAF0 countByEnumeratingWithState:&v72 objects:v111 count:16];
    if (!v9)
    {
      goto LABEL_32;
    }

    v10 = v9;
    v11 = *v73;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v73 != v11)
        {
          objc_enumerationMutation(&unk_1F0FBFAF0);
        }

        v13 = [v7 stringByAppendingPathComponent:*(*(&v72 + 1) + 8 * i)];
        if ([defaultManager fileExistsAtPath:v13])
        {
          v71 = 0;
          v14 = [defaultManager removeItemAtPath:v13 error:&v71];
          v15 = v71;
          v16 = PLMigrationGetLog();
          v17 = v16;
          if (v14)
          {
            v18 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

            if (!v18)
            {
              goto LABEL_29;
            }

            logger = [(PLModelMigrationActionCore *)selfCopy logger];

            if (logger)
            {
              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v103 = 0u;
              v104 = 0u;
              v101 = 0u;
              v102 = 0u;
              v99 = 0u;
              v100 = 0u;
              v97 = 0u;
              v98 = 0u;
              v95 = 0u;
              v96 = 0u;
              v93 = 0u;
              v94 = 0u;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              memset(buf, 0, sizeof(buf));
              v20 = PLMigrationGetLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = 3;
              }

              else
              {
                v21 = 2;
              }

              lastPathComponent = [v13 lastPathComponent];
              v76 = 138543362;
              v77 = lastPathComponent;
              LODWORD(v64) = 12;
              v23 = _os_log_send_and_compose_impl(v21, 0, buf, 512, &dword_19BF1F000, v20, 1, "Successfully deleted file at %{public}@", &v76, v64);

              logger2 = [(PLModelMigrationActionCore *)selfCopy logger];
              v25 = logger2;
              v26 = v23;
              v27 = 1719;
              v28 = 1;
LABEL_21:
              [logger2 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{v27, v28}];

              if (v23 != buf)
              {
                free(v23);
              }

LABEL_28:
              v7 = v68;
LABEL_29:

              goto LABEL_30;
            }

            v34 = PLMigrationGetLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              lastPathComponent2 = [v13 lastPathComponent];
              *buf = 138543362;
              *&buf[4] = lastPathComponent2;
              _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_INFO, "Successfully deleted file at %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v29 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

            if (!v29)
            {
              goto LABEL_29;
            }

            logger3 = [(PLModelMigrationActionCore *)selfCopy logger];

            if (logger3)
            {
              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v103 = 0u;
              v104 = 0u;
              v101 = 0u;
              v102 = 0u;
              v99 = 0u;
              v100 = 0u;
              v97 = 0u;
              v98 = 0u;
              v95 = 0u;
              v96 = 0u;
              v93 = 0u;
              v94 = 0u;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              memset(buf, 0, sizeof(buf));
              v31 = PLMigrationGetLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v32 = 3;
              }

              else
              {
                v32 = 2;
              }

              lastPathComponent3 = [v13 lastPathComponent];
              v76 = 138543618;
              v77 = lastPathComponent3;
              v78 = 2112;
              v79 = v15;
              LODWORD(v64) = 22;
              v23 = _os_log_send_and_compose_impl(v32, 0, buf, 512, &dword_19BF1F000, v31, 16, "Failed to delete file at %{public}@. Error: %@", &v76, v64);

              logger2 = [(PLModelMigrationActionCore *)selfCopy logger];
              v25 = logger2;
              v26 = v23;
              v27 = 1721;
              v28 = 16;
              goto LABEL_21;
            }

            v34 = PLMigrationGetLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              lastPathComponent4 = [v13 lastPathComponent];
              *buf = 138543618;
              *&buf[4] = lastPathComponent4;
              *&buf[12] = 2112;
              *&buf[14] = v15;
              _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to delete file at %{public}@. Error: %@", buf, 0x16u);
            }
          }

          goto LABEL_28;
        }

LABEL_30:
      }

      v10 = [&unk_1F0FBFAF0 countByEnumeratingWithState:&v72 objects:v111 count:16];
      if (!v10)
      {
LABEL_32:

        contextCopy = v66;
        self = selfCopy;
        break;
      }
    }
  }

  v37 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"type", 9];
  v38 = +[PLSuggestion entityName];
  v70 = 0;
  v39 = [PLModelMigrator executeBatchDeleteWithEntityName:v38 predicate:v37 managedObjectContext:contextCopy error:&v70];
  v40 = v70;

  if (!v39)
  {
    if (error)
    {
      v49 = v40;
      *error = v40;
    }

    v50 = PLMigrationGetLog();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);

    if (v51)
    {
      logger4 = [(PLModelMigrationActionCore *)self logger];

      if (logger4)
      {
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        memset(buf, 0, sizeof(buf));
        v53 = PLMigrationGetLog();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = 3;
        }

        else
        {
          v54 = 2;
        }

        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        v76 = 138543618;
        v77 = v56;
        v78 = 2114;
        v79 = v40;
        LODWORD(v65) = 22;
        v57 = _os_log_send_and_compose_impl(v54, 0, buf, 512, &dword_19BF1F000, v53, 16, "Failed to batch delete managed object context for %{public}@. Error: %{public}@", &v76, v65);

        logger5 = [(PLModelMigrationActionCore *)self logger];
        [logger5 logWithMessage:v57 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1736, 16}];

        if (v57 != buf)
        {
          free(v57);
        }

        v48 = 3;
        goto LABEL_52;
      }

      v60 = PLMigrationGetLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        *buf = 138543618;
        *&buf[4] = v62;
        *&buf[12] = 2114;
        *&buf[14] = v40;
        _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_ERROR, "Failed to batch delete managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
      }
    }

    v48 = 3;
    goto LABEL_61;
  }

  v41 = PLMigrationGetLog();
  v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);

  if (!v42)
  {
LABEL_56:
    v48 = 1;
    goto LABEL_61;
  }

  logger6 = [(PLModelMigrationActionCore *)self logger];

  if (!logger6)
  {
    v59 = PLMigrationGetLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_DEFAULT, "Deleted all carousel suggestions", buf, 2u);
    }

    goto LABEL_56;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  memset(buf, 0, sizeof(buf));
  v44 = PLMigrationGetLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = 3;
  }

  else
  {
    v45 = 2;
  }

  LOWORD(v76) = 0;
  LODWORD(v65) = 2;
  v46 = _os_log_send_and_compose_impl(v45, 0, buf, 512, &dword_19BF1F000, v44, 0, "Deleted all carousel suggestions", &v76, v65);

  logger7 = [(PLModelMigrationActionCore *)self logger];
  [logger7 logWithMessage:v46 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1732, 0}];

  if (v46 != buf)
  {
    free(v46);
  }

  v48 = 1;
LABEL_52:
  v7 = v68;
  self = selfCopy;
LABEL_61:
  [(PLModelMigrationActionCore *)self finalizeProgress];

  return v48;
}

@end