@interface PLModelMigrationAction_dedupeResourcesWithSimilarCompactUTI
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_dedupeResourcesWithSimilarCompactUTI

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v113[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 1;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__1060;
  v71 = __Block_byref_object_dispose__1061;
  v72 = 0;
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

  v13 = +[PLInternalResource fetchRequest];
  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v113[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:1];
  [v13 setSortDescriptors:v15];

  v112 = @"asset";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
  [v13 setRelationshipKeyPathsForPrefetching:v16];

  if (v12)
  {
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K BEGINSWITH %@", @"compactUTI", @"_"];
    [v13 setPredicate:v17];
  }

  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3032000000;
  v65[3] = __Block_byref_object_copy__1060;
  v65[4] = __Block_byref_object_dispose__1061;
  v66 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v18 = [PLEnumerateAndSaveController alloc];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __107__PLModelMigrationAction_dedupeResourcesWithSimilarCompactUTI_performActionWithManagedObjectContext_error___block_invoke;
  v59[3] = &unk_1E7575B30;
  v21 = v8;
  v60 = v21;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __107__PLModelMigrationAction_dedupeResourcesWithSimilarCompactUTI_performActionWithManagedObjectContext_error___block_invoke_2;
  v58[3] = &unk_1E7572E50;
  v58[4] = self;
  v58[5] = v65;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __107__PLModelMigrationAction_dedupeResourcesWithSimilarCompactUTI_performActionWithManagedObjectContext_error___block_invoke_3;
  v57[3] = &unk_1E7564A70;
  v57[4] = self;
  v57[5] = &v67;
  v57[6] = &v73;
  v57[7] = &v61;
  v57[8] = v65;
  v22 = [(PLEnumerateAndSaveController *)v18 initWithName:v20 fetchRequest:v13 context:v21 options:4 generateContextBlock:v59 didFetchObjectIDsBlock:v58 processResultBlock:v57];

  v23 = (v68 + 5);
  obj = v68[5];
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
      v110 = 0u;
      v111 = 0u;
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

      v31 = v62[3];
      v77 = 134217984;
      v78 = v31;
      v32 = _os_log_send_and_compose_impl(v30, 0, buf, 512, &dword_19BF1F000, v29, 0, "Deleted %tu resources duplicated by UTI.", &v77);

      logger2 = [(PLModelMigrationActionBackground *)self logger];
      [logger2 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{973, 0}];

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
      v47 = v62[3];
      *buf = 134217984;
      *&buf[4] = v47;
      _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "Deleted %tu resources duplicated by UTI.", buf, 0xCu);
    }

LABEL_27:

    goto LABEL_28;
  }

  v74[3] = 3;
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
      v50 = v68[5];
      *buf = 138543618;
      *&buf[4] = v49;
      *&buf[12] = 2114;
      *&buf[14] = v50;
      _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  v110 = 0u;
  v111 = 0u;
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
  v43 = v68[5];
  v77 = 138543618;
  v78 = v42;
  v79 = 2114;
  v80 = v43;
  LODWORD(v55) = 22;
  v44 = _os_log_send_and_compose_impl(v40, 0, buf, 512, &dword_19BF1F000, v39, 16, "Failed to process %{public}@. Error: %{public}@", &v77, v55);

  logger4 = [(PLModelMigrationActionBackground *)self logger];
  [logger4 logWithMessage:v44 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{976, 16}];

  if (v44 != buf)
  {
    v34 = v44;
    goto LABEL_21;
  }

LABEL_28:
  if (v74[3] == 1)
  {
    [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  }

  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v51 = v74[3];
  v52 = v68[5];
  if (v51 != 1 && error)
  {
    v52 = v52;
    *error = v52;
  }

  v53 = v74[3];
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(v65, 8);

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v73, 8);

  return v53;
}

@end