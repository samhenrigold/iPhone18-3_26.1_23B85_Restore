@interface PLModelMigrationAction_setInitialhasPeopleSceneMidOrGreaterConfidenceValue
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_setInitialhasPeopleSceneMidOrGreaterConfidenceValue

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v112[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 1;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__1060;
  v70 = __Block_byref_object_dispose__1061;
  v71 = 0;
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

  v13 = +[PLAdditionalAssetAttributes fetchRequest];
  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v112[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:1];
  [v13 setSortDescriptors:v15];

  v111 = @"sceneClassifications";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
  [v13 setRelationshipKeyPathsForPrefetching:v16];

  if (v12)
  {
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v12];
    [v13 setPredicate:v17];
  }

  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy__1060;
  v64[4] = __Block_byref_object_dispose__1061;
  v65 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v18 = [PLEnumerateAndSaveController alloc];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __122__PLModelMigrationAction_setInitialhasPeopleSceneMidOrGreaterConfidenceValue_performActionWithManagedObjectContext_error___block_invoke;
  v58[3] = &unk_1E7575B30;
  v21 = v8;
  v59 = v21;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __122__PLModelMigrationAction_setInitialhasPeopleSceneMidOrGreaterConfidenceValue_performActionWithManagedObjectContext_error___block_invoke_2;
  v57[3] = &unk_1E7572E50;
  v57[4] = self;
  v57[5] = v64;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __122__PLModelMigrationAction_setInitialhasPeopleSceneMidOrGreaterConfidenceValue_performActionWithManagedObjectContext_error___block_invoke_3;
  v56[3] = &unk_1E7564AC0;
  v56[4] = self;
  v56[5] = &v66;
  v56[6] = &v72;
  v56[7] = &v60;
  v56[8] = v64;
  v22 = [(PLEnumerateAndSaveController *)v18 initWithName:v20 fetchRequest:v13 context:v21 options:4 generateContextBlock:v58 didFetchObjectIDsBlock:v57 processResultBlock:v56];

  v23 = (v67 + 5);
  obj = v67[5];
  v24 = [(PLEnumerateAndSaveController *)v22 processObjectsWithError:&obj];
  objc_storeStrong(v23, obj);
  if (v24)
  {
    v25 = PLMigrationGetLog();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (!v26)
    {
      goto LABEL_28;
    }

    logger = [(PLModelMigrationActionBackground *)self logger];
    v28 = logger == 0;

    if (!v28)
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
      v29 = PLMigrationGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v31 = v61[3];
      v76 = 134217984;
      v77 = v31;
      v32 = _os_log_send_and_compose_impl(v30, 0, buf, 512, &dword_19BF1F000, v29, 0, "Set initial hasPeopleSceneMidOrGreaterConfidence for %tu assets.", &v76);

      logger2 = [(PLModelMigrationActionBackground *)self logger];
      [logger2 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1216, 0}];

      if (v32 != buf)
      {
        v34 = v32;
LABEL_21:
        free(v34);
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    v46 = PLMigrationGetLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v61[3];
      *buf = 134217984;
      *&buf[4] = v47;
      _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "Set initial hasPeopleSceneMidOrGreaterConfidence for %tu assets.", buf, 0xCu);
    }

LABEL_27:

    goto LABEL_28;
  }

  v73[3] = 3;
  v35 = PLMigrationGetLog();
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

  if (!v36)
  {
    goto LABEL_28;
  }

  logger3 = [(PLModelMigrationActionBackground *)self logger];
  v38 = logger3 == 0;

  if (v38)
  {
    v46 = PLMigrationGetLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v50 = v67[5];
      *buf = 138543618;
      *&buf[4] = v49;
      *&buf[12] = 2114;
      *&buf[14] = v50;
      _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
    }

    goto LABEL_27;
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
  v39 = PLMigrationGetLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = 3;
  }

  else
  {
    v40 = 2;
  }

  v41 = objc_opt_class();
  v42 = NSStringFromClass(v41);
  v43 = v67[5];
  v76 = 138543618;
  v77 = v42;
  v78 = 2114;
  v79 = v43;
  v44 = _os_log_send_and_compose_impl(v40, 0, buf, 512, &dword_19BF1F000, v39, 16, "Failed to process %{public}@. Error: %{public}@", &v76, 22);

  logger4 = [(PLModelMigrationActionBackground *)self logger];
  [logger4 logWithMessage:v44 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1219, 16}];

  if (v44 != buf)
  {
    v34 = v44;
    goto LABEL_21;
  }

LABEL_28:
  if (v73[3] == 1)
  {
    [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v51 = v73[3];
  v52 = v67[5];
  if (v51 != 1 && error)
  {
    v52 = v52;
    *error = v52;
  }

  v53 = v73[3];
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(v64, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);

  return v53;
}

@end