@interface PLModelMigrationAction_UpdatePlaybackControlBadgeAttribute
- (id)buildFetchRequest;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdatePlaybackControlBadgeAttribute

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v93 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  buildFetchRequest = [(PLModelMigrationAction_UpdatePlaybackControlBadgeAttribute *)self buildFetchRequest];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__43771;
  v56 = __Block_byref_object_dispose__43772;
  v57 = 0;
  v8 = [PLEnumerateAndSaveController alloc];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __106__PLModelMigrationAction_UpdatePlaybackControlBadgeAttribute_performActionWithManagedObjectContext_error___block_invoke;
  v50[3] = &unk_1E7575B30;
  v11 = contextCopy;
  v51 = v11;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __106__PLModelMigrationAction_UpdatePlaybackControlBadgeAttribute_performActionWithManagedObjectContext_error___block_invoke_2;
  v49[3] = &unk_1E7572E50;
  v49[4] = self;
  v49[5] = &v52;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __106__PLModelMigrationAction_UpdatePlaybackControlBadgeAttribute_performActionWithManagedObjectContext_error___block_invoke_3;
  v48[3] = &unk_1E756C620;
  v48[4] = &v52;
  v12 = [(PLEnumerateAndSaveController *)v8 initWithName:v10 fetchRequest:buildFetchRequest context:v11 options:4 generateContextBlock:v50 didFetchObjectIDsBlock:v49 processResultBlock:v48];

  v47 = 0;
  v13 = [(PLEnumerateAndSaveController *)v12 processObjectsWithError:&v47];
  v14 = v47;
  if (v13)
  {
    v15 = PLMigrationGetLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

    if (v16)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v18 = logger == 0;

      if (v18)
      {
        v35 = PLMigrationGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          completedUnitCount = [v53[5] completedUnitCount];
          *buf = 134217984;
          *&buf[4] = completedUnitCount;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_INFO, "Completed playback bit update on %lu assets", buf, 0xCu);
        }
      }

      else
      {
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
        v63 = 0u;
        v64 = 0u;
        memset(buf, 0, sizeof(buf));
        v19 = PLMigrationGetLog();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
        completedUnitCount2 = [v53[5] completedUnitCount];
        if (v20)
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v58 = 134217984;
        v59 = completedUnitCount2;
        v23 = _os_log_send_and_compose_impl(v22, 0, buf, 512, &dword_19BF1F000, v19, 1, "Completed playback bit update on %lu assets", &v58);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{560, 1}];

        if (v23 != buf)
        {
          free(v23);
        }
      }
    }

    v37 = 1;
  }

  else
  {
    v25 = PLMigrationGetLog();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

    if (v26)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v28 = logger3 == 0;

      if (v28)
      {
        v38 = PLMigrationGetLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          *buf = 138543618;
          *&buf[4] = v40;
          *&buf[12] = 2112;
          *&buf[14] = v14;
          _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }

      else
      {
        errorCopy = error;
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
        v63 = 0u;
        v64 = 0u;
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

        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v58 = 138543618;
        v59 = v32;
        v60 = 2112;
        v61 = v14;
        v33 = _os_log_send_and_compose_impl(v30, 0, buf, 512, &dword_19BF1F000, v29, 16, "Failed to process %{public}@. Error: %@", &v58, 22);

        error = errorCopy;
        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{563, 16}];

        if (v33 != buf)
        {
          free(v33);
        }
      }
    }

    v37 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v41 = v14;
  v42 = v41;
  if (error)
  {
    v43 = v13;
  }

  else
  {
    v43 = 1;
  }

  if ((v43 & 1) == 0)
  {
    v44 = v41;
    *error = v42;
  }

  _Block_object_dispose(&v52, 8);
  return v37;
}

- (id)buildFetchRequest
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = MEMORY[0x1E696AB28];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kind", 1];
  v11[0] = v6;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %d", @"extendedAttributes.fps", 45];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v5 andPredicateWithSubpredicates:v8];
  [v4 setPredicate:v9];

  [v4 setFetchBatchSize:100];

  return v4;
}

@end