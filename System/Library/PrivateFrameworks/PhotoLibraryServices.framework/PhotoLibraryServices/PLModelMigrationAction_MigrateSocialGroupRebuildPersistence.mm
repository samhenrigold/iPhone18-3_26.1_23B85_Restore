@interface PLModelMigrationAction_MigrateSocialGroupRebuildPersistence
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (int64_t)persistSocialGroupDirectoryJournalInContext:(id)context progress:(id)progress;
- (void)deleteGraphNodeSocialGroupDirectoryJournal;
- (void)deleteGraphNodeSocialGroupJournal;
@end

@implementation PLModelMigrationAction_MigrateSocialGroupRebuildPersistence

- (int64_t)persistSocialGroupDirectoryJournalInContext:(id)context progress:(id)progress
{
  v96 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  progressCopy = progress;
  [(PLModelMigrationAction_MigrateSocialGroupRebuildPersistence *)self deleteGraphNodeSocialGroupDirectoryJournal];
  [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
  v8 = [PLDirectoryJournal alloc];
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v51 = [(PLDirectoryJournal *)v8 initWithPathManager:pathManager payloadClass:objc_opt_class()];

  v10 = MEMORY[0x1E695D5E0];
  v11 = +[PLGraphNode entityName];
  v12 = [v10 fetchRequestWithEntityName:v11];

  v13 = [PLSocialGroup predicateForAllSocialGroupsInContext:contextCopy];
  [v12 setPredicate:v13];

  [v12 setFetchBatchSize:100];
  v59 = 0;
  v14 = [contextCopy executeFetchRequest:v12 error:&v59];
  v15 = v59;
  if (!v14)
  {
    v37 = PLMigrationGetLog();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);

    if (v38)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        memset(buf, 0, sizeof(buf));
        v40 = PLMigrationGetLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        v60 = 138412290;
        v61 = v15;
        v42 = _os_log_send_and_compose_impl(v41, 0, buf, 512, &dword_19BF1F000, v40, 16, "persistSocialGroupDirectoryJournalInContext fetch request failed: %@", &v60, 12);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v42 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{895, 16}];

        if (v42 != buf)
        {
          free(v42);
        }

        v17 = 1;
        goto LABEL_39;
      }

      v44 = PLMigrationGetLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v15;
        _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "persistSocialGroupDirectoryJournalInContext fetch request failed: %@", buf, 0xCu);
      }
    }

    v17 = 1;
    goto LABEL_39;
  }

  v16 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:objc_msgSend_count(v14)];
  v17 = 1;
  [progressCopy addChild:v16 withPendingUnitCount:1];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v14;
  v18 = [obj countByEnumeratingWithState:&v55 objects:v95 count:16];
  if (v18)
  {
    v19 = v18;
    v47 = v14;
    v48 = v12;
    v49 = progressCopy;
    v50 = contextCopy;
    v20 = *v56;
    v21 = v51;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v56 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v55 + 1) + 8 * i);
        v54 = v15;
        v24 = [(PLModelMigrationActionCore *)self isCancelledWithError:&v54];
        v25 = v54;

        if (v24)
        {
          progressCopy = v49;
          contextCopy = v50;
          v14 = v47;
          v12 = v48;
          v17 = 2;
          goto LABEL_34;
        }

        v53 = v25;
        v26 = [(PLDirectoryJournal *)v21 persistManagedObject:v23 error:&v53];
        v15 = v53;

        if (v26)
        {
          [v16 setCompletedUnitCount:{objc_msgSend(v16, "completedUnitCount") + 1}];
        }

        else
        {
          v27 = PLMigrationGetLog();
          v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

          if (v28)
          {
            logger3 = [(PLModelMigrationActionCore *)self logger];

            if (logger3)
            {
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
              v79 = 0u;
              v80 = 0u;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              v65 = 0u;
              v66 = 0u;
              memset(buf, 0, sizeof(buf));
              v30 = PLMigrationGetLog();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v31 = 3;
              }

              else
              {
                v31 = 2;
              }

              uuid = [v23 uuid];
              v60 = 138543618;
              v61 = uuid;
              v62 = 2112;
              v63 = v15;
              LODWORD(v46) = 22;
              v33 = _os_log_send_and_compose_impl(v31, 0, buf, 512, &dword_19BF1F000, v30, 16, "PLDirectoryJournal: persistManagedObject of node %{public}@ failed: %@", &v60, v46);

              logger4 = [(PLModelMigrationActionCore *)self logger];
              [logger4 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{889, 16}];

              if (v33 != buf)
              {
                free(v33);
              }

              v21 = v51;
            }

            else
            {
              v35 = PLMigrationGetLog();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                uuid2 = [v23 uuid];
                *buf = 138543618;
                *&buf[4] = uuid2;
                *&buf[12] = 2112;
                *&buf[14] = v15;
                _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "PLDirectoryJournal: persistManagedObject of node %{public}@ failed: %@", buf, 0x16u);
              }
            }
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v55 objects:v95 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    v25 = v15;
    v17 = 1;
    progressCopy = v49;
    contextCopy = v50;
    v14 = v47;
    v12 = v48;
  }

  else
  {
    v25 = v15;
  }

LABEL_34:

  v15 = v25;
LABEL_39:

  return v17;
}

- (void)deleteGraphNodeSocialGroupDirectoryJournal
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = PLMigrationGetLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    logger = [(PLModelMigrationActionCore *)self logger];

    if (logger)
    {
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
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      *buf = 0u;
      v7 = PLMigrationGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v9 = NSStringFromClass(v3);
      v28 = 138543362;
      v29 = v9;
      v10 = _os_log_send_and_compose_impl(v8, 0, buf, 512, &dword_19BF1F000, v7, 0, "Deleting existing directory journal payloads for payload class %{public}@", &v28, 12);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v10 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{860, 0}];

      if (v10 != buf)
      {
        free(v10);
      }
    }

    else
    {
      v12 = PLMigrationGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = NSStringFromClass(v3);
        *buf = 138543362;
        *&buf[4] = v13;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Deleting existing directory journal payloads for payload class %{public}@", buf, 0xCu);
      }
    }
  }

  v14 = [PLDirectoryJournal alloc];
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v16 = [(PLDirectoryJournal *)v14 initWithPathManager:pathManager payloadClass:v3];

  v27 = 0;
  LOBYTE(pathManager) = [(PLDirectoryJournal *)v16 removeAllPersistenceFilesWithError:&v27];
  v17 = v27;
  if ((pathManager & 1) == 0)
  {
    v18 = PLMigrationGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        *buf = 0u;
        v21 = PLMigrationGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v28 = 138412290;
        v29 = v17;
        LODWORD(v26) = 12;
        v23 = _os_log_send_and_compose_impl(v22, 0, buf, 512, &dword_19BF1F000, v21, 16, "PLDirectoryJournal: removeAllPersistenceFilesWithError failed: %@", &v28, v26);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{864, 16}];

        if (v23 != buf)
        {
          free(v23);
        }
      }

      else
      {
        v25 = PLMigrationGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v17;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "PLDirectoryJournal: removeAllPersistenceFilesWithError failed: %@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)deleteGraphNodeSocialGroupJournal
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v5 = [PLRebuildJournalManager baseURLFromPathManager:pathManager];

  v6 = PLMigrationGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    logger = [(PLModelMigrationActionCore *)self logger];

    if (logger)
    {
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
      v38 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      *buf = 0u;
      v9 = PLMigrationGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v11 = NSStringFromClass(v3);
      v29 = 138543362;
      v30 = v11;
      v12 = _os_log_send_and_compose_impl(v10, 0, buf, 512, &dword_19BF1F000, v9, 0, "Deleting existing journals for payload class %{public}@", &v29, 12);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v12 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{848, 0}];

      if (v12 != buf)
      {
        free(v12);
      }
    }

    else
    {
      v14 = PLMigrationGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = NSStringFromClass(v3);
        *buf = 138543362;
        *&buf[4] = v15;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Deleting existing journals for payload class %{public}@", buf, 0xCu);
      }
    }
  }

  v16 = [[PLJournal alloc] initWithBaseURL:v5 payloadClass:v3];
  [(PLJournal *)v16 removeMetadata];
  v28 = 0;
  v17 = [(PLJournal *)v16 removeJournalFilesWithError:&v28];
  v18 = v28;
  if (!v17)
  {
    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        v38 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        *buf = 0u;
        v22 = PLMigrationGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        v29 = 138412290;
        v30 = v18;
        LODWORD(v27) = 12;
        v24 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 16, "PLJournal: removeJournalFilesWithError failed: %@", &v29, v27);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{853, 16}];

        if (v24 != buf)
        {
          free(v24);
        }
      }

      else
      {
        v26 = PLMigrationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v18;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "PLJournal: removeJournalFilesWithError failed: %@", buf, 0xCu);
        }
      }
    }
  }
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  if ([pathManager isUBF])
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:v7 pendingParentUnitCount:0];
  pathManager2 = [(PLModelMigrationActionCore *)self pathManager];
  isUBF = [pathManager2 isUBF];

  if (isUBF)
  {
    [(PLModelMigrationAction_MigrateSocialGroupRebuildPersistence *)self deleteGraphNodeSocialGroupJournal];
    if (!MEMORY[0x19EAEE520]([v8 setCompletedUnitCount:{objc_msgSend(v8, "completedUnitCount") + 1}]))
    {
      v11 = 1;
      goto LABEL_9;
    }

    [v8 setTotalUnitCount:{objc_msgSend(v8, "totalUnitCount") + 2}];
  }

  v11 = [(PLModelMigrationAction_MigrateSocialGroupRebuildPersistence *)self persistSocialGroupDirectoryJournalInContext:contextCopy progress:v8];
LABEL_9:
  [(PLModelMigrationActionCore *)self finalizeProgress];

  return v11;
}

@end