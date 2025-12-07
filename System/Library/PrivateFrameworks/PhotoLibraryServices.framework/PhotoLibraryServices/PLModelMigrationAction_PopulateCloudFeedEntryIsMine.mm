@interface PLModelMigrationAction_PopulateCloudFeedEntryIsMine
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (void)_migrateEntriesWithFetchRequest:(id)request moc:(id)moc progress:(id)progress result:(int64_t *)result;
@end

@implementation PLModelMigrationAction_PopulateCloudFeedEntryIsMine

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v78 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v40 = 1;
  v7 = +[PLCloudFeedEntry fetchRequest];
  [v7 setIncludesSubentities:1];
  v39 = 0;
  v8 = [contextCopy countForFetchRequest:v7 error:&v39];
  v9 = v39;
  v10 = PLMigrationGetLog();
  v11 = v10;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v12)
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
        v14 = PLMigrationGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v43 = 138543362;
        v44 = 0;
        v16 = _os_log_send_and_compose_impl(v15, 0, buf, 512, &dword_19BF1F000, v14, 16, "Failed to fetch count of CloudFeedEntry with error: %{public}@", &v43, 12);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v16 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1039, 16}];

        if (v16 != buf)
        {
          free(v16);
        }
      }

      else
      {
        v26 = PLMigrationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = 0;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Failed to fetch count of CloudFeedEntry with error: %{public}@", buf, 0xCu);
        }
      }
    }

    v27 = 3;
  }

  else
  {
    v18 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v18)
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
        v20 = PLMigrationGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v43 = 138543618;
        v44 = v23;
        v45 = 2048;
        v46 = v8;
        v24 = _os_log_send_and_compose_impl(v21, 0, buf, 512, &dword_19BF1F000, v20, 0, "%{public}@ starting to migrate %lu feed entries...", &v43, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1043, 0}];

        if (v24 != buf)
        {
          free(v24);
        }
      }

      else
      {
        v28 = PLMigrationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138543618;
          *&buf[4] = v30;
          *&buf[12] = 2048;
          *&buf[14] = v8;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ starting to migrate %lu feed entries...", buf, 0x16u);
        }
      }
    }

    v31 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:v8 pendingParentUnitCount:0];
    v32 = +[PLCloudFeedAssetsEntry fetchRequest];
    v42 = @"entryAssets";
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    [v32 setRelationshipKeyPathsForPrefetching:v33];

    [(PLModelMigrationAction_PopulateCloudFeedEntryIsMine *)self _migrateEntriesWithFetchRequest:v32 moc:contextCopy progress:v31 result:&v40];
    if (v40 != 1 || (+[PLCloudFeedCommentsEntry fetchRequest](PLCloudFeedCommentsEntry, "fetchRequest"), v34 = objc_claimAutoreleasedReturnValue(), v41[0] = @"entryComments", v41[1] = @"entryLikeComments", [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "setRelationshipKeyPathsForPrefetching:", v35), v35, -[PLModelMigrationAction_PopulateCloudFeedEntryIsMine _migrateEntriesWithFetchRequest:moc:progress:result:](self, "_migrateEntriesWithFetchRequest:moc:progress:result:", v34, contextCopy, v31, &v40), v34, v40 != 1) || (+[PLCloudFeedEntry fetchRequest](PLCloudFeedEntry, "fetchRequest"), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "setIncludesSubentities:", 0), objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"entryType!= %d AND entryType!= %d", 1, 2), v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "setPredicate:", v37), v37, -[PLModelMigrationAction_PopulateCloudFeedEntryIsMine _migrateEntriesWithFetchRequest:moc:progress:result:](self, "_migrateEntriesWithFetchRequest:moc:progress:result:", v36, contextCopy, v31, &v40), v36, v40 != 1))
    {
      if (error)
      {
        *error = 0;
      }
    }

    [(PLModelMigrationActionCore *)self finalizeProgress];
    v27 = v40;
  }

  return v27;
}

- (void)_migrateEntriesWithFetchRequest:(id)request moc:(id)moc progress:(id)progress result:(int64_t *)result
{
  v42 = *MEMORY[0x1E69E9840];
  mocCopy = moc;
  progressCopy = progress;
  requestCopy = request;
  v13 = [PLEnumerateAndSaveController alloc];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __107__PLModelMigrationAction_PopulateCloudFeedEntryIsMine__migrateEntriesWithFetchRequest_moc_progress_result___block_invoke;
  v35[3] = &unk_1E7575B30;
  v16 = mocCopy;
  v36 = v16;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __107__PLModelMigrationAction_PopulateCloudFeedEntryIsMine__migrateEntriesWithFetchRequest_moc_progress_result___block_invoke_2;
  v33[3] = &unk_1E756C738;
  v17 = progressCopy;
  v34 = v17;
  v18 = [(PLEnumerateAndSaveController *)v13 initWithName:v15 fetchRequest:requestCopy context:v16 options:0 generateContextBlock:v35 didFetchObjectIDsBlock:0 processResultBlock:v33];

  v32 = 0;
  LOBYTE(v15) = [(PLEnumerateAndSaveController *)v18 processObjectsWithError:&v32];
  v19 = v32;
  if ((v15 & 1) == 0)
  {
    *result = 3;
    v20 = PLMigrationGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v39 = 2112;
        v40 = v19;
        v27 = _os_log_send_and_compose_impl(v24, 0, buf, 512, &dword_19BF1F000, v23, 16, "Failed to process %{public}@. Error: %@", &v37, 22);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1022, 16}];

        if (v27 != buf)
        {
          free(v27);
        }
      }

      else
      {
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          LODWORD(buf[0]) = 138543618;
          *(buf + 4) = v31;
          WORD6(buf[0]) = 2112;
          *(buf + 14) = v19;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }
  }
}

@end