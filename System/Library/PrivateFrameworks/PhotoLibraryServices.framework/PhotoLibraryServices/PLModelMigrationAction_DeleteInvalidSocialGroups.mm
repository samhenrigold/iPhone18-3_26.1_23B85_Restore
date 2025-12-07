@interface PLModelMigrationAction_DeleteInvalidSocialGroups
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_DeleteInvalidSocialGroups

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v92 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  [PLGraphLabel ensureLabelsAreUpdatedInContext:contextCopy];
  v7 = +[PLGraphNode fetchRequest];
  1000 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"primaryLabelCode", 1000];
  [v7 setPredicate:1000];

  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__43771;
  v51[4] = __Block_byref_object_dispose__43772;
  v52 = 0;
  v9 = [PLEnumerateAndSaveController alloc];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __96__PLModelMigrationAction_DeleteInvalidSocialGroups_performActionWithManagedObjectContext_error___block_invoke;
  v49[3] = &unk_1E7575B30;
  v50 = contextCopy;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __96__PLModelMigrationAction_DeleteInvalidSocialGroups_performActionWithManagedObjectContext_error___block_invoke_2;
  v48[3] = &unk_1E7572E50;
  v48[4] = self;
  v48[5] = v51;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __96__PLModelMigrationAction_DeleteInvalidSocialGroups_performActionWithManagedObjectContext_error___block_invoke_3;
  v44[3] = &unk_1E756C7D8;
  v12 = v50;
  v45 = v12;
  v46 = &v53;
  v47 = v51;
  v13 = [(PLEnumerateAndSaveController *)v9 initWithName:v11 fetchRequest:v7 context:v12 options:0 generateContextBlock:v49 didFetchObjectIDsBlock:v48 processResultBlock:v44];

  v43 = 0;
  LOBYTE(v11) = [(PLEnumerateAndSaveController *)v13 processObjectsWithError:&v43];
  v14 = v43;
  if (v11)
  {
    v15 = PLMigrationGetLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v18 = logger == 0;

      if (v18)
      {
        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v54[3];
          *buf = 134217984;
          *&buf[4] = v35;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Deleted %ld social groups with fewer than two members", buf, 0xCu);
        }
      }

      else
      {
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
        memset(buf, 0, sizeof(buf));
        v19 = PLMigrationGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 3;
        }

        else
        {
          v20 = 2;
        }

        v21 = v54[3];
        v57 = 134217984;
        v58 = v21;
        v22 = _os_log_send_and_compose_impl(v20, 0, buf, 512, &dword_19BF1F000, v19, 0, "Deleted %ld social groups with fewer than two members", &v57);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1327, 0}];

        if (v22 != buf)
        {
          free(v22);
        }
      }
    }

    v36 = 1;
  }

  else
  {
    v24 = PLMigrationGetLog();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v27 = logger3 == 0;

      if (v27)
      {
        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          *buf = 138543618;
          *&buf[4] = v39;
          *&buf[12] = 2114;
          *&buf[14] = v14;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v57 = 138543618;
        v58 = v31;
        v59 = 2114;
        v60 = v14;
        LODWORD(v42) = 22;
        v32 = _os_log_send_and_compose_impl(v29, 0, buf, 512, &dword_19BF1F000, v28, 16, "Failed to process %{public}@. Error: %{public}@", &v57, v42);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1325, 16}];

        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    if (error)
    {
      v40 = v14;
      *error = v14;
    }

    v36 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(&v53, 8);

  return v36;
}

@end