@interface PLModelMigrationAction_UpdateTripHighlightDateTitles
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateTripHighlightDateTitles

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v100[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLPhotosHighlight entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = +[PLPhotosHighlight predicateForAllTripHighlights];
  [v8 setPredicate:v9];

  v100[0] = @"dayGroupAssets";
  v100[1] = @"dayGroupExtendedAssets";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
  [v8 setRelationshipKeyPathsForPrefetching:v10];

  v11 = objc_alloc_init(PLDateRangeTitleGenerator);
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__43771;
  v63 = __Block_byref_object_dispose__43772;
  v64 = 0;
  v12 = [PLEnumerateAndSaveController alloc];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __100__PLModelMigrationAction_UpdateTripHighlightDateTitles_performActionWithManagedObjectContext_error___block_invoke;
  v57[3] = &unk_1E7575B30;
  v15 = contextCopy;
  v58 = v15;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __100__PLModelMigrationAction_UpdateTripHighlightDateTitles_performActionWithManagedObjectContext_error___block_invoke_2;
  v56[3] = &unk_1E7572E50;
  v56[4] = self;
  v56[5] = &v59;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __100__PLModelMigrationAction_UpdateTripHighlightDateTitles_performActionWithManagedObjectContext_error___block_invoke_3;
  v53[3] = &unk_1E756C7B0;
  v16 = v11;
  v54 = v16;
  v55 = &v59;
  v17 = [(PLEnumerateAndSaveController *)v12 initWithName:v14 fetchRequest:v8 context:v15 options:0 generateContextBlock:v57 didFetchObjectIDsBlock:v56 processResultBlock:v53];

  v52 = 0;
  v18 = [(PLEnumerateAndSaveController *)v17 processObjectsWithError:&v52];
  v19 = v52;
  if (v18)
  {
    v20 = PLMigrationGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);

    if (v21)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v23 = logger == 0;

      if (v23)
      {
        v40 = PLMigrationGetLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          completedUnitCount = [v60[5] completedUnitCount];
          *buf = 134217984;
          *&buf[4] = completedUnitCount;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_INFO, "Updated titles for %lu highlights", buf, 0xCu);
        }
      }

      else
      {
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
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        memset(buf, 0, sizeof(buf));
        v24 = PLMigrationGetLog();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
        completedUnitCount2 = [v60[5] completedUnitCount];
        if (v25)
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        v65 = 134217984;
        v66 = completedUnitCount2;
        v28 = _os_log_send_and_compose_impl(v27, 0, buf, 512, &dword_19BF1F000, v24, 1, "Updated titles for %lu highlights", &v65);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1285, 1}];

        if (v28 != buf)
        {
          free(v28);
        }
      }
    }

    v42 = 1;
  }

  else
  {
    v30 = PLMigrationGetLog();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

    if (v31)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v33 = logger3 == 0;

      if (v33)
      {
        v43 = PLMigrationGetLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          *buf = 138543618;
          *&buf[4] = v45;
          *&buf[12] = 2112;
          *&buf[14] = v19;
          _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }

      else
      {
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
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        memset(buf, 0, sizeof(buf));
        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v65 = 138543618;
        v66 = v37;
        v67 = 2112;
        v68 = v19;
        v38 = _os_log_send_and_compose_impl(v35, 0, buf, 512, &dword_19BF1F000, v34, 16, "Failed to process %{public}@. Error: %@", &v65, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1288, 16}];

        if (v38 != buf)
        {
          free(v38);
        }
      }
    }

    v42 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v46 = v19;
  v47 = v46;
  if (error)
  {
    v48 = v18;
  }

  else
  {
    v48 = 1;
  }

  if ((v48 & 1) == 0)
  {
    v49 = v46;
    *error = v47;
  }

  _Block_object_dispose(&v59, 8);
  return v42;
}

@end