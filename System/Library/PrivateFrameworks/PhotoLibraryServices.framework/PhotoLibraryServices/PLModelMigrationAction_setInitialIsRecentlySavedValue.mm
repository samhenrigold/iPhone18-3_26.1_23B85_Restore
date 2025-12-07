@interface PLModelMigrationAction_setInitialIsRecentlySavedValue
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_setInitialIsRecentlySavedValue

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v110[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 1;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__1060;
  v69 = __Block_byref_object_dispose__1061;
  v70 = 0;
  resumeMarker = [(PLModelMigrationActionBackground *)self resumeMarker];
  v8 = contextCopy;
  v9 = resumeMarker;
  if (v9)
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  persistentStoreCoordinator = [v8 persistentStoreCoordinator];
  v12 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v10];

  v13 = +[PLManagedAsset fetchRequest];
  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v110[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:1];
  [v13 setSortDescriptors:v15];

  if (v12)
  {
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v12];
    [v13 setPredicate:v16];
  }

  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3032000000;
  v63[3] = __Block_byref_object_copy__1060;
  v63[4] = __Block_byref_object_dispose__1061;
  v64 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v17 = [PLEnumerateAndSaveController alloc];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __101__PLModelMigrationAction_setInitialIsRecentlySavedValue_performActionWithManagedObjectContext_error___block_invoke;
  v57[3] = &unk_1E7575B30;
  v20 = v8;
  v58 = v20;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __101__PLModelMigrationAction_setInitialIsRecentlySavedValue_performActionWithManagedObjectContext_error___block_invoke_2;
  v56[3] = &unk_1E7572E50;
  v56[4] = self;
  v56[5] = v63;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __101__PLModelMigrationAction_setInitialIsRecentlySavedValue_performActionWithManagedObjectContext_error___block_invoke_3;
  v55[3] = &unk_1E756DD18;
  v55[4] = self;
  v55[5] = &v65;
  v55[6] = &v71;
  v55[7] = &v59;
  v55[8] = v63;
  v21 = [(PLEnumerateAndSaveController *)v17 initWithName:v19 fetchRequest:v13 context:v20 options:4 generateContextBlock:v57 didFetchObjectIDsBlock:v56 processResultBlock:v55];

  v22 = (v66 + 5);
  obj = v66[5];
  v23 = [(PLEnumerateAndSaveController *)v21 processObjectsWithError:&obj];
  objc_storeStrong(v22, obj);
  if (v23)
  {
    v24 = PLMigrationGetLog();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (!v25)
    {
      goto LABEL_28;
    }

    logger = [(PLModelMigrationActionBackground *)self logger];
    v27 = logger == 0;

    if (!v27)
    {
      v108 = 0u;
      v109 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v28 = PLMigrationGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v30 = v60[3];
      v75 = 134217984;
      v76 = v30;
      v31 = _os_log_send_and_compose_impl(v29, 0, buf, 512, &dword_19BF1F000, v28, 0, "Set initial isRecentlySaved for %tu assets.", &v75);

      logger2 = [(PLModelMigrationActionBackground *)self logger];
      [logger2 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1162, 0}];

      if (v31 != buf)
      {
        v33 = v31;
LABEL_21:
        free(v33);
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    v45 = PLMigrationGetLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v60[3];
      *buf = 134217984;
      *&buf[4] = v46;
      _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEFAULT, "Set initial isRecentlySaved for %tu assets.", buf, 0xCu);
    }

LABEL_27:

    goto LABEL_28;
  }

  v72[3] = 3;
  v34 = PLMigrationGetLog();
  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

  if (!v35)
  {
    goto LABEL_28;
  }

  logger3 = [(PLModelMigrationActionBackground *)self logger];
  v37 = logger3 == 0;

  if (v37)
  {
    v45 = PLMigrationGetLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      v49 = v66[5];
      *buf = 138543618;
      *&buf[4] = v48;
      *&buf[12] = 2114;
      *&buf[14] = v49;
      _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  v108 = 0u;
  v109 = 0u;
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
  memset(buf, 0, sizeof(buf));
  v38 = PLMigrationGetLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = 3;
  }

  else
  {
    v39 = 2;
  }

  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  v42 = v66[5];
  v75 = 138543618;
  v76 = v41;
  v77 = 2114;
  v78 = v42;
  v43 = _os_log_send_and_compose_impl(v39, 0, buf, 512, &dword_19BF1F000, v38, 16, "Failed to process %{public}@. Error: %{public}@", &v75, 22);

  logger4 = [(PLModelMigrationActionBackground *)self logger];
  [logger4 logWithMessage:v43 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1165, 16}];

  if (v43 != buf)
  {
    v33 = v43;
    goto LABEL_21;
  }

LABEL_28:
  if (v72[3] == 1)
  {
    [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v50 = v72[3];
  v51 = v66[5];
  if (v50 != 1 && error)
  {
    v51 = v51;
    *error = v51;
  }

  v52 = v72[3];
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(v63, 8);

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v71, 8);

  return v52;
}

@end