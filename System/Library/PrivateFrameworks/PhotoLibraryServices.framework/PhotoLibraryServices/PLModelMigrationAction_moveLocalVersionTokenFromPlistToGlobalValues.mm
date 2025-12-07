@interface PLModelMigrationAction_moveLocalVersionTokenFromPlistToGlobalValues
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_moveLocalVersionTokenFromPlistToGlobalValues

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v104 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];
  metadata = [firstObject metadata];
  v10 = [metadata objectForKeyedSubscript:*MEMORY[0x1E695D4B8]];

  v11 = MEMORY[0x1E69BF1C0];
  v12 = *MEMORY[0x1E69BF418];
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v14 = [v11 readCPLPlistObjectWithKey:v12 pathManager:pathManager];

  if (objc_msgSend_isEqualToString_(v10))
  {
    v15 = MEMORY[0x1E69BF1C0];
    pathManager2 = [(PLModelMigrationActionCore *)self pathManager];
    v17 = [v15 readCPLPlistObjectWithKey:@"localVersionToken" pathManager:pathManager2];

    if (v17)
    {
      v67 = MEMORY[0x1E69E9820];
      v68 = v17;
      v18 = pl_result_with_autoreleasepool();
      v19 = PLMigrationGetLog();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (v20)
      {
        logger = [(PLModelMigrationActionCore *)self logger];

        if (logger)
        {
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          memset(buf, 0, sizeof(buf));
          v22 = PLMigrationGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = 3;
          }

          else
          {
            v23 = 2;
          }

          v69 = 138412290;
          v70 = v18;
          v24 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 0, "Migrating plist based token: %@ to global values...", &v69, 12, v67, 3221225472, __115__PLModelMigrationAction_moveLocalVersionTokenFromPlistToGlobalValues_performActionWithManagedObjectContext_error___block_invoke, &unk_1E756C5F8, v68, self);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{279, 0}];

          if (v24 != buf)
          {
            free(v24);
          }
        }

        else
        {
          v33 = PLMigrationGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v18;
            _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Migrating plist based token: %@ to global values...", buf, 0xCu);
          }
        }
      }

      v34 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];
      [(PLGlobalValues *)v34 setCloudTrackerLastKnownToken:v18];
      [(PLGlobalValues *)v34 setLibraryScopeRulesTrackerLastKnownToken:v18];
      v35 = MEMORY[0x1E69BF1C0];
      pathManager3 = [(PLModelMigrationActionCore *)self pathManager];
      v37 = [v35 readCPLPlistObjectWithKey:@"cloudVersion" pathManager:pathManager3];

      v38 = PLMigrationGetLog();
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);

      if (v39)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];

        if (logger3)
        {
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          memset(buf, 0, sizeof(buf));
          v41 = PLMigrationGetLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = 3;
          }

          else
          {
            v42 = 2;
          }

          v69 = 138412290;
          v70 = v37;
          LODWORD(v66) = 12;
          v43 = _os_log_send_and_compose_impl(v42, 0, buf, 512, &dword_19BF1F000, v41, 0, "Migrating plist based cloud version: %@ to global values...", &v69, v66);

          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v43 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{290, 0}];

          if (v43 != buf)
          {
            free(v43);
          }
        }

        else
        {
          v45 = PLMigrationGetLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v37;
            _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEFAULT, "Migrating plist based cloud version: %@ to global values...", buf, 0xCu);
          }
        }
      }

      [(PLGlobalValues *)v34 setCloudTrackerLastKnownCloudVersion:v37];
    }

LABEL_33:

    goto LABEL_34;
  }

  v26 = PLMigrationGetLog();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

  if (!v27)
  {
    goto LABEL_34;
  }

  logger5 = [(PLModelMigrationActionCore *)self logger];

  if (!logger5)
  {
    v17 = PLMigrationGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Not migrating localVersionToken/lastCloudVersion into PLGlobalValues due to storeUUID mismatch (opened uuid: %{public}@, uuid from plist: %{public}@)", buf, 0x16u);
    }

    goto LABEL_33;
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  memset(buf, 0, sizeof(buf));
  v29 = PLMigrationGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = 3;
  }

  else
  {
    v30 = 2;
  }

  v69 = 138543618;
  v70 = v10;
  v71 = 2114;
  v72 = v14;
  v31 = _os_log_send_and_compose_impl(v30, 0, buf, 512, &dword_19BF1F000, v29, 16, "Not migrating localVersionToken/lastCloudVersion into PLGlobalValues due to storeUUID mismatch (opened uuid: %{public}@, uuid from plist: %{public}@)", &v69, 22);

  logger6 = [(PLModelMigrationActionCore *)self logger];
  [logger6 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{296, 16}];

  if (v31 != buf)
  {
    free(v31);
  }

LABEL_34:
  v46 = PLMigrationGetLog();
  v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);

  if (v47)
  {
    logger7 = [(PLModelMigrationActionCore *)self logger];

    if (logger7)
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      memset(buf, 0, sizeof(buf));
      v49 = PLMigrationGetLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }

      LOWORD(v69) = 0;
      LODWORD(v66) = 2;
      v51 = _os_log_send_and_compose_impl(v50, 0, buf, 512, &dword_19BF1F000, v49, 0, "Erasing existing localVersionToken from plist...", &v69, v66);

      logger8 = [(PLModelMigrationActionCore *)self logger];
      [logger8 logWithMessage:v51 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{300, 0}];

      if (v51 != buf)
      {
        free(v51);
      }
    }

    else
    {
      v53 = PLMigrationGetLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_DEFAULT, "Erasing existing localVersionToken from plist...", buf, 2u);
      }
    }
  }

  v54 = MEMORY[0x1E69BF1C0];
  pathManager4 = [(PLModelMigrationActionCore *)self pathManager];
  [v54 saveCPLPlistObject:0 forKey:@"localVersionToken" pathManager:pathManager4];

  v56 = PLMigrationGetLog();
  LODWORD(pathManager4) = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);

  if (pathManager4)
  {
    logger9 = [(PLModelMigrationActionCore *)self logger];

    if (logger9)
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      memset(buf, 0, sizeof(buf));
      v58 = PLMigrationGetLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = 3;
      }

      else
      {
        v59 = 2;
      }

      LOWORD(v69) = 0;
      LODWORD(v66) = 2;
      v60 = _os_log_send_and_compose_impl(v59, 0, buf, 512, &dword_19BF1F000, v58, 0, "Erasing existing cloudVersion from plist...", &v69, v66);

      logger10 = [(PLModelMigrationActionCore *)self logger];
      [logger10 logWithMessage:v60 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{303, 0}];

      if (v60 != buf)
      {
        free(v60);
      }
    }

    else
    {
      v62 = PLMigrationGetLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_DEFAULT, "Erasing existing cloudVersion from plist...", buf, 2u);
      }
    }
  }

  v63 = MEMORY[0x1E69BF1C0];
  pathManager5 = [(PLModelMigrationActionCore *)self pathManager];
  [v63 saveCPLPlistObject:0 forKey:@"cloudVersion" pathManager:pathManager5];

  return 1;
}

@end