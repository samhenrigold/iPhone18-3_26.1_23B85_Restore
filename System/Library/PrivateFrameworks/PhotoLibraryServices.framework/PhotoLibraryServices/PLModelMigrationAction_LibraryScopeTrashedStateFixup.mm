@interface PLModelMigrationAction_LibraryScopeTrashedStateFixup
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_LibraryScopeTrashedStateFixup

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v108[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 1;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__53822;
  v67 = __Block_byref_object_dispose__53823;
  v68 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLLibraryScope entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = +[PLLibraryScope predicateForActiveLibraryScope];
  v108[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"trashedState", 1];
  v108[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  [v9 setPredicate:v14];

  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3032000000;
  v61[3] = __Block_byref_object_copy__53822;
  v61[4] = __Block_byref_object_dispose__53823;
  v62 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v15 = [PLEnumerateAndSaveController alloc];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __100__PLModelMigrationAction_LibraryScopeTrashedStateFixup_performActionWithManagedObjectContext_error___block_invoke;
  v55[3] = &unk_1E7575B30;
  v18 = contextCopy;
  v56 = v18;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __100__PLModelMigrationAction_LibraryScopeTrashedStateFixup_performActionWithManagedObjectContext_error___block_invoke_2;
  v54[3] = &unk_1E7572E50;
  v54[4] = self;
  v54[5] = v61;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __100__PLModelMigrationAction_LibraryScopeTrashedStateFixup_performActionWithManagedObjectContext_error___block_invoke_3;
  v53[3] = &unk_1E756DD40;
  v53[4] = self;
  v53[5] = &v57;
  v53[6] = &v63;
  v53[7] = &v69;
  v53[8] = v61;
  v19 = [(PLEnumerateAndSaveController *)v15 initWithName:v17 fetchRequest:v9 context:v18 options:4 generateContextBlock:v55 didFetchObjectIDsBlock:v54 processResultBlock:v53];

  v20 = (v64 + 5);
  obj = v64[5];
  LOBYTE(v14) = [(PLEnumerateAndSaveController *)v19 processObjectsWithError:&obj];
  objc_storeStrong(v20, obj);
  if (v14)
  {
    v21 = PLMigrationGetLog();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v24 = logger == 0;

      if (!v24)
      {
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v25 = PLMigrationGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }

        v27 = v58[3];
        v73 = 134217984;
        v74 = v27;
        v28 = _os_log_send_and_compose_impl(v26, 0, buf, 512, &dword_19BF1F000, v25, 0, "Fixed trashedState in %tu active LibraryScopes", &v73);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{486, 0}];

        if (v28 == buf)
        {
          goto LABEL_23;
        }

        v30 = v28;
        goto LABEL_16;
      }

      v42 = PLMigrationGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v58[3];
        *buf = 134217984;
        *&buf[4] = v43;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "Fixed trashedState in %tu active LibraryScopes", buf, 0xCu);
      }

      goto LABEL_22;
    }
  }

  else
  {
    v70[3] = 3;
    v31 = PLMigrationGetLog();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

    if (v32)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v34 = logger3 == 0;

      if (!v34)
      {
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v35 = PLMigrationGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = v64[5];
        v73 = 138543618;
        v74 = v38;
        v75 = 2114;
        v76 = v39;
        LODWORD(v51) = 22;
        v40 = _os_log_send_and_compose_impl(v36, 0, buf, 512, &dword_19BF1F000, v35, 16, "Failed to process %{public}@. Error: %{public}@", &v73, v51);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v40 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{484, 16}];

        if (v40 == buf)
        {
          goto LABEL_23;
        }

        v30 = v40;
LABEL_16:
        free(v30);
        goto LABEL_23;
      }

      v42 = PLMigrationGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = v64[5];
        *buf = 138543618;
        *&buf[4] = v45;
        *&buf[12] = 2114;
        *&buf[14] = v46;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
      }

LABEL_22:
    }
  }

LABEL_23:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v47 = v70[3];
  v48 = v64[5];
  if (v47 != 1 && error)
  {
    v48 = v48;
    *error = v48;
  }

  v49 = v70[3];
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(v61, 8);

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v69, 8);

  return v49;
}

@end