@interface PLModelMigrationAction_RemoveOrphanGeneratedAssetDescriptionNodes
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveOrphanGeneratedAssetDescriptionNodes

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v115 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v6 = objc_opt_class();
  v67 = NSStringFromClass(v6);
  pl_graphCache = [contextCopy pl_graphCache];
  v68 = [pl_graphCache objectIDForLabelWithCode:1300 inContext:contextCopy];

  if (v68)
  {
    resumeMarker = [(PLModelMigrationActionBackground *)self resumeMarker];
    v9 = contextCopy;
    v10 = resumeMarker;
    if (v10)
    {
      v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];
    }

    else
    {
      v11 = 0;
    }

    persistentStoreCoordinator = [v9 persistentStoreCoordinator];
    v21 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v11];

    v22 = MEMORY[0x1E695D5E0];
    v23 = +[PLGraphNode entityName];
    v66 = [v22 fetchRequestWithEntityName:v23];

    v24 = MEMORY[0x1E696AB28];
    if (v21)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v21];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithValue:1];
    }
    v25 = ;
    v83[0] = v25;
    v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"primaryLabel", v68];
    v83[1] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
    v28 = [v24 andPredicateWithSubpredicates:v27];
    [v66 setPredicate:v28];

    v74 = 0;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __113__PLModelMigrationAction_RemoveOrphanGeneratedAssetDescriptionNodes_performActionWithManagedObjectContext_error___block_invoke;
    v69[3] = &unk_1E7564B38;
    v70 = v9;
    selfCopy = self;
    v29 = v67;
    v72 = v29;
    v73 = &v75;
    v30 = [PLModelMigrationActionUtility processManagedObjectBatchesWithAction:self managedObjectContext:v70 fetchRequest:v66 pendingParentUnitCount:0 useObjectIDResumeMarker:1 error:&v74 processingBlock:v69];
    v31 = v74;
    if (v30 == 2)
    {
      v41 = PLMigrationGetLog();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);

      if (!v42)
      {
        goto LABEL_50;
      }

      logger = [(PLModelMigrationActionBackground *)self logger];
      v44 = logger == 0;

      if (!v44)
      {
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v45 = PLMigrationGetLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 3;
        }

        else
        {
          v46 = 2;
        }

        v47 = v76[3];
        v79 = 134218242;
        v80 = v47;
        v81 = 2114;
        v82 = v29;
        LODWORD(v64) = 22;
        v39 = _os_log_send_and_compose_impl(v46, 0, buf, 512, &dword_19BF1F000, v45, 0, "Cancelled background migration action after removing %tu orphaned GeneratedAssetDescription nodes for %{public}@", &v79, v64);

        logger2 = [(PLModelMigrationActionBackground *)self logger];
        [logger2 logWithMessage:v39 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1458, 0}];

LABEL_35:
        if (v39 != buf)
        {
          free(v39);
        }

        goto LABEL_50;
      }

      v58 = PLMigrationGetLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v60 = v76[3];
        *buf = 134218242;
        *&buf[4] = v60;
        *&buf[12] = 2114;
        *&buf[14] = v29;
        _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEFAULT, "Cancelled background migration action after removing %tu orphaned GeneratedAssetDescription nodes for %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (v30 == 1)
      {
        v32 = PLMigrationGetLog();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

        if (!v33)
        {
          goto LABEL_50;
        }

        logger3 = [(PLModelMigrationActionBackground *)self logger];
        v35 = logger3 == 0;

        if (!v35)
        {
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v36 = PLMigrationGetLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = 3;
          }

          else
          {
            v37 = 2;
          }

          v38 = v76[3];
          v79 = 134218242;
          v80 = v38;
          v81 = 2114;
          v82 = v29;
          LODWORD(v64) = 22;
          v39 = _os_log_send_and_compose_impl(v37, 0, buf, 512, &dword_19BF1F000, v36, 0, "Removed %tu orphaned GeneratedAssetDescription nodes for %{public}@", &v79, v64);

          logger4 = [(PLModelMigrationActionBackground *)self logger];
          [logger4 logWithMessage:v39 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1456, 0}];

          goto LABEL_35;
        }

        v58 = PLMigrationGetLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = v76[3];
          *buf = 134218242;
          *&buf[4] = v59;
          *&buf[12] = 2114;
          *&buf[14] = v29;
          _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEFAULT, "Removed %tu orphaned GeneratedAssetDescription nodes for %{public}@", buf, 0x16u);
        }

        goto LABEL_49;
      }

      v49 = PLMigrationGetLog();
      v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);

      if (!v50)
      {
        goto LABEL_50;
      }

      logger5 = [(PLModelMigrationActionBackground *)self logger];
      v52 = logger5 == 0;

      if (!v52)
      {
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v53 = PLMigrationGetLog();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = 3;
        }

        else
        {
          v54 = 2;
        }

        v79 = 138543618;
        v80 = v29;
        v81 = 2112;
        v82 = v31;
        LODWORD(v64) = 22;
        v39 = _os_log_send_and_compose_impl(v54, 0, buf, 512, &dword_19BF1F000, v53, 16, "Failed to process background migration action %{public}@. Error: %@", &v79, v64);

        logger6 = [(PLModelMigrationActionBackground *)self logger];
        [logger6 logWithMessage:v39 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1460, 16}];

        goto LABEL_35;
      }

      v58 = PLMigrationGetLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v31;
        _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_ERROR, "Failed to process background migration action %{public}@. Error: %@", buf, 0x16u);
      }
    }

LABEL_49:

LABEL_50:
    [(PLModelMigrationActionBackground *)self finalizeProgress];
    v61 = v31;
    v57 = v61;
    if (v30 != 1 && error)
    {
      v62 = v61;
      *error = v57;
    }

    goto LABEL_54;
  }

  v12 = PLMigrationGetLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    logger7 = [(PLModelMigrationActionBackground *)self logger];
    v15 = logger7 == 0;

    if (v15)
    {
      v56 = PLMigrationGetLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v67;
        _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_DEFAULT, "No generated asset description label found for %{public}@. No need to remove orphan nodes because there aren't any to remove", buf, 0xCu);
      }
    }

    else
    {
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v16 = PLMigrationGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v79 = 138543362;
      v80 = v67;
      v18 = _os_log_send_and_compose_impl(v17, 0, buf, 512, &dword_19BF1F000, v16, 0, "No generated asset description label found for %{public}@. No need to remove orphan nodes because there aren't any to remove", &v79, 12);

      logger8 = [(PLModelMigrationActionBackground *)self logger];
      [logger8 logWithMessage:v18 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1418, 0}];

      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  [(PLModelMigrationActionBackground *)self setResumeMarkerValue:0];
  v57 = 0;
  v30 = 1;
LABEL_54:

  _Block_object_dispose(&v75, 8);
  return v30;
}

@end