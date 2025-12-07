@interface PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues
+ (void)_encloseActor:(id)actor fromEdge:(id)edge isSource:(BOOL)source actorLabel:(id)label cache:(id)cache;
- (BOOL)_migrateEdgesToNativelyModeledObjectsWithError:(id *)error context:(id)context;
- (BOOL)_migrateGraphEdgeValuesWithError:(id *)error context:(id)context;
- (BOOL)_migrateGraphNodeValuesWithError:(id *)error context:(id)context;
- (BOOL)_migrateNodePropertiesWithError:(id *)error context:(id)context;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (void)setup;
@end

@implementation PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v22 = 0;
  v7 = [(PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues *)self _migrateGraphNodeValuesWithError:&v22 context:contextCopy];
  v8 = v22;
  v9 = v8;
  if (v7)
  {
    v21 = v8;
    v10 = [(PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues *)self _migrateGraphEdgeValuesWithError:&v21 context:contextCopy];
    v11 = v21;

    if (!v10)
    {
      v14 = 3;
LABEL_9:
      v9 = v11;
      goto LABEL_10;
    }

    v20 = v11;
    v12 = [(PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues *)self _migrateNodePropertiesWithError:&v20 context:contextCopy];
    v9 = v20;

    if (v12)
    {
      v19 = v9;
      v13 = [(PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues *)self _migrateEdgesToNativelyModeledObjectsWithError:&v19 context:contextCopy];
      v11 = v19;

      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = 3;
      }

      goto LABEL_9;
    }
  }

  v14 = 3;
LABEL_10:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v15 = v9;
  v16 = v15;
  if (v14 != 1 && error)
  {
    v17 = v15;
    *error = v16;
  }

  return v14;
}

- (BOOL)_migrateEdgesToNativelyModeledObjectsWithError:(id *)error context:(id)context
{
  v116 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v8 = contextCopy;
  if (error)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:941 description:{@"Invalid parameter not satisfying: %@", @"localError"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:942 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

LABEL_3:
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 1;
  v9 = PLMigrationGetLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    logger = [(PLModelMigrationActionCore *)self logger];
    v12 = logger == 0;

    if (v12)
    {
      v17 = PLMigrationGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "RelocateEdgesAndNormalizeNodeValues: migrating edges for modeled objects...", buf, 2u);
      }
    }

    else
    {
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v13 = PLMigrationGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      LOWORD(v82) = 0;
      v15 = _os_log_send_and_compose_impl(v14, 0, buf, 512, &dword_19BF1F000, v13, 0, "RelocateEdgesAndNormalizeNodeValues: migrating edges for modeled objects...", &v82, 2);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v15 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{946, 0}];

      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v18 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(@"GraphLabel", v8, 0);
  [v18 willChangeValueForKey:@"code"];
  [v18 setPrimitiveValue:&unk_1F0FBB530 forKey:@"code"];
  [v18 didChangeValueForKey:@"code"];
  v73 = 0;
  v19 = [v8 save:&v73];
  v20 = v73;
  v21 = v20;
  if (v19)
  {

    *&v82 = 0;
    *(&v82 + 1) = &v82;
    v83 = 0x2020000000;
    v84 = 0;
    v22 = +[PLGraphEdge fetchRequest];
    v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil OR %K == nil", @"sourceNode", @"targetNode"];
    [v22 setPredicate:v23];

    v24 = [PLEnumerateAndSaveController alloc];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __117__PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues__migrateEdgesToNativelyModeledObjectsWithError_context___block_invoke;
    v71[3] = &unk_1E7575B30;
    v72 = v8;
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __117__PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues__migrateEdgesToNativelyModeledObjectsWithError_context___block_invoke_2;
    v70[3] = &unk_1E7568010;
    v70[4] = self;
    v70[5] = &v74;
    v70[6] = &v82;
    v70[7] = error;
    v27 = [(PLEnumerateAndSaveController *)v24 initWithName:v26 fetchRequest:v22 context:v72 options:4 generateContextBlock:v71 didFetchObjectIDsBlock:0 processResultsBlock:v70];

    [(PLEnumerateAndSaveController *)v27 setItemsPerBatch:4000];
    if ([(PLEnumerateAndSaveController *)v27 processObjectsWithError:error])
    {
      v28 = PLMigrationGetLog();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

      if (v29)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];
        v31 = logger3 == 0;

        if (v31)
        {
          v59 = PLMigrationGetLog();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v60 = *(*(&v82 + 1) + 24);
            *buf = 134217984;
            *&buf[4] = v60;
            _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_DEFAULT, "RelocateEdgesAndNormalizeNodeValues: migrating edges, total items processed: %ld", buf, 0xCu);
          }
        }

        else
        {
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v32 = PLMigrationGetLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = 3;
          }

          else
          {
            v33 = 2;
          }

          v34 = *(*(&v82 + 1) + 24);
          v78 = 134217984;
          v79 = v34;
          v35 = _os_log_send_and_compose_impl(v33, 0, buf, 512, &dword_19BF1F000, v32, 0, "RelocateEdgesAndNormalizeNodeValues: migrating edges, total items processed: %ld", &v78);

          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1069, 0}];

          if (v35 != buf)
          {
            free(v35);
          }
        }
      }
    }

    else
    {
      v45 = PLMigrationGetLog();
      v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);

      if (v46)
      {
        logger5 = [(PLModelMigrationActionCore *)self logger];
        v48 = logger5 == 0;

        if (v48)
        {
          v61 = PLMigrationGetLog();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = objc_opt_class();
            v63 = NSStringFromClass(v62);
            v64 = *error;
            *buf = 138543618;
            *&buf[4] = v63;
            *&buf[12] = 2114;
            *&buf[14] = v64;
            _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v49 = PLMigrationGetLog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v50 = 3;
          }

          else
          {
            v50 = 2;
          }

          v51 = objc_opt_class();
          v52 = NSStringFromClass(v51);
          v53 = *error;
          v78 = 138543618;
          v79 = v52;
          v80 = 2114;
          v81 = v53;
          LODWORD(v69) = 22;
          v54 = _os_log_send_and_compose_impl(v50, 0, buf, 512, &dword_19BF1F000, v49, 16, "Failed to perform a save operation for %{public}@. Error: %{public}@", &v78, v69);

          logger6 = [(PLModelMigrationActionCore *)self logger];
          [logger6 logWithMessage:v54 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1071, 16}];

          if (v54 != buf)
          {
            free(v54);
          }
        }
      }

      *(v75 + 24) = 0;
    }

    v58 = *(v75 + 24);

    _Block_object_dispose(&v82, 8);
  }

  else
  {
    v37 = PLMigrationGetLog();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);

    if (v38)
    {
      logger7 = [(PLModelMigrationActionCore *)self logger];
      v40 = logger7 == 0;

      if (v40)
      {
        v56 = PLMigrationGetLog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v21;
          _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_ERROR, "Failed to insert actor label. Error: %@", buf, 0xCu);
        }
      }

      else
      {
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v41 = PLMigrationGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = 3;
        }

        else
        {
          v42 = 2;
        }

        LODWORD(v82) = 138412290;
        *(&v82 + 4) = v21;
        LODWORD(v68) = 12;
        v43 = _os_log_send_and_compose_impl(v42, 0, buf, 512, &dword_19BF1F000, v41, 16, "Failed to insert actor label. Error: %@", &v82, v68);

        logger8 = [(PLModelMigrationActionCore *)self logger];
        [logger8 logWithMessage:v43 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{961, 16}];

        if (v43 != buf)
        {
          free(v43);
        }
      }
    }

    v57 = v21;
    *error = v21;

    v58 = 0;
  }

  _Block_object_dispose(&v74, 8);

  return v58 & 1;
}

- (BOOL)_migrateNodePropertiesWithError:(id *)error context:(id)context
{
  v99 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v8 = contextCopy;
  if (error)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:897 description:{@"Invalid parameter not satisfying: %@", @"localError"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:898 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

LABEL_3:
  pl_graphCache = [v8 pl_graphCache];
  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    logger = [(PLModelMigrationActionCore *)self logger];

    if (logger)
    {
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
      v70 = 0u;
      v69 = 0u;
      memset(buf, 0, sizeof(buf));
      v13 = PLMigrationGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      LOWORD(v64) = 0;
      v15 = _os_log_send_and_compose_impl(v14, 0, buf, 512, &dword_19BF1F000, v13, 0, "RelocateEdgesAndNormalizeNodeValues: setting required node properties...", &v64, 2);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v15 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{902, 0}];

      if (v15 != buf)
      {
        free(v15);
      }
    }

    else
    {
      v17 = PLMigrationGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "RelocateEdgesAndNormalizeNodeValues: setting required node properties...", buf, 2u);
      }
    }
  }

  v18 = +[PLGraphNode fetchRequest];
  [v18 setFetchBatchSize:100];
  v63 = 0;
  v19 = [v8 executeFetchRequest:v18 error:&v63];
  v20 = v63;
  v21 = v20;
  if (v19)
  {
    selfCopy = self;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __102__PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues__migrateNodePropertiesWithError_context___block_invoke;
    v60[3] = &unk_1E7567FE8;
    v59 = pl_graphCache;
    v61 = pl_graphCache;
    v62 = v8;
    v23 = [v62 enumerateWithIncrementalSaveUsingObjects:v19 withBlock:v60];
    v24 = v23;
    v25 = v23 == 0;
    if (v23)
    {
      v26 = v23;
      *error = v24;
      v27 = PLMigrationGetLog();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (v28)
      {
        logger3 = [(PLModelMigrationActionCore *)selfCopy logger];

        if (logger3)
        {
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
          v70 = 0u;
          v69 = 0u;
          memset(buf, 0, sizeof(buf));
          v30 = PLMigrationGetLog();
          v31 = selfCopy;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }

          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v64 = 138543618;
          v65 = v34;
          v66 = 2114;
          v67 = v24;
          LODWORD(v58) = 22;
          v35 = _os_log_send_and_compose_impl(v32, 0, buf, 512, &dword_19BF1F000, v30, 16, "Failed to perform a save operation for %{public}@. Error: %{public}@", &v64, v58);

          logger4 = [(PLModelMigrationActionCore *)v31 logger];
          [logger4 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{928, 16}];

          if (v35 != buf)
          {
            free(v35);
          }
        }

        else
        {
          v49 = PLMigrationGetLog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v50 = objc_opt_class();
            v51 = NSStringFromClass(v50);
            *buf = 138543618;
            *&buf[4] = v51;
            *&buf[12] = 2114;
            *&buf[14] = v24;
            _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
          }
        }
      }
    }

    pl_graphCache = v59;
  }

  else
  {
    v37 = v20;
    *error = v21;
    v38 = PLMigrationGetLog();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);

    if (v39)
    {
      logger5 = [(PLModelMigrationActionCore *)self logger];

      if (logger5)
      {
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
        v70 = 0u;
        v69 = 0u;
        memset(buf, 0, sizeof(buf));
        v41 = PLMigrationGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = 3;
        }

        else
        {
          v42 = 2;
        }

        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v64 = 138543618;
        v65 = v44;
        v66 = 2114;
        v67 = v21;
        LODWORD(v58) = 22;
        v45 = _os_log_send_and_compose_impl(v42, 0, buf, 512, &dword_19BF1F000, v41, 16, "Failed to perform a fetch operation for %{public}@. Error: %{public}@", &v64, v58);
        selfCopy2 = self;
        v47 = v45;

        logger6 = [(PLModelMigrationActionCore *)selfCopy2 logger];
        [logger6 logWithMessage:v47 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{933, 16}];

        if (v47 != buf)
        {
          free(v47);
        }
      }

      else
      {
        v52 = PLMigrationGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = objc_opt_class();
          v54 = NSStringFromClass(v53);
          *buf = 138543618;
          *&buf[4] = v54;
          *&buf[12] = 2114;
          *&buf[14] = v21;
          _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_ERROR, "Failed to perform a fetch operation for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v25 = 0;
  }

  return v25;
}

- (BOOL)_migrateGraphEdgeValuesWithError:(id *)error context:(id)context
{
  v90 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v8 = contextCopy;
  if (error)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:855 description:{@"Invalid parameter not satisfying: %@", @"localError"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:856 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

LABEL_3:
  v9 = PLMigrationGetLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    logger = [(PLModelMigrationActionCore *)self logger];

    if (logger)
    {
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
      v60 = 0u;
      v61 = 0u;
      memset(buf, 0, sizeof(buf));
      v12 = PLMigrationGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      LOWORD(v55) = 0;
      v14 = _os_log_send_and_compose_impl(v13, 0, buf, 512, &dword_19BF1F000, v12, 0, "RelocateEdgesAndNormalizeNodeValues: migrating GraphEdgeValues...", &v55, 2);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v14 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{859, 0}];

      if (v14 != buf)
      {
        free(v14);
      }
    }

    else
    {
      v16 = PLMigrationGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "RelocateEdgesAndNormalizeNodeValues: migrating GraphEdgeValues...", buf, 2u);
      }
    }
  }

  v17 = +[PLGraphEdgeValue fetchRequest];
  [v17 setFetchBatchSize:100];
  v54 = 0;
  v18 = [v8 executeFetchRequest:v17 error:&v54];
  v19 = v54;
  v20 = v19;
  if (v18)
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __103__PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues__migrateGraphEdgeValuesWithError_context___block_invoke;
    v53[3] = &unk_1E7567FC0;
    v53[4] = self;
    v21 = [v8 enumerateWithIncrementalSaveUsingObjects:v18 withBlock:v53];
    v22 = v21;
    LOBYTE(v23) = v21 == 0;
    if (v21)
    {
      v24 = v21;
      *error = v22;
      v25 = PLMigrationGetLog();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

      if (v26)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];

        if (logger3)
        {
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
          v60 = 0u;
          v61 = 0u;
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
          v55 = 138543618;
          v56 = v31;
          v57 = 2114;
          v58 = v22;
          LODWORD(v52) = 22;
          v32 = _os_log_send_and_compose_impl(v29, 0, buf, 512, &dword_19BF1F000, v28, 16, "Failed to perform a save operation for %{public}@. Error: %{public}@", &v55, v52);

          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{884, 16}];

          if (v32 != buf)
          {
            free(v32);
          }
        }

        else
        {
          v43 = PLMigrationGetLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = objc_opt_class();
            v45 = NSStringFromClass(v44);
            *buf = 138543618;
            *&buf[4] = v45;
            *&buf[12] = 2114;
            *&buf[14] = v22;
            _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
          }
        }
      }
    }
  }

  else
  {
    v34 = v19;
    *error = v20;
    v35 = PLMigrationGetLog();
    v23 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

    if (v23)
    {
      logger5 = [(PLModelMigrationActionCore *)self logger];

      if (logger5)
      {
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
        v60 = 0u;
        v61 = 0u;
        memset(buf, 0, sizeof(buf));
        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v55 = 138543618;
        v56 = v40;
        v57 = 2114;
        v58 = v20;
        LODWORD(v52) = 22;
        v41 = _os_log_send_and_compose_impl(v38, 0, buf, 512, &dword_19BF1F000, v37, 16, "Failed to perform a fetch operation for %{public}@. Error: %{public}@", &v55, v52);

        logger6 = [(PLModelMigrationActionCore *)self logger];
        [logger6 logWithMessage:v41 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{889, 16}];

        if (v41 != buf)
        {
          free(v41);
        }
      }

      else
      {
        v46 = PLMigrationGetLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          *buf = 138543618;
          *&buf[4] = v48;
          *&buf[12] = 2114;
          *&buf[14] = v20;
          _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_ERROR, "Failed to perform a fetch operation for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      LOBYTE(v23) = 0;
    }
  }

  return v23;
}

- (BOOL)_migrateGraphNodeValuesWithError:(id *)error context:(id)context
{
  v90 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v8 = contextCopy;
  if (error)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:813 description:{@"Invalid parameter not satisfying: %@", @"localError"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:814 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

LABEL_3:
  v9 = PLMigrationGetLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    logger = [(PLModelMigrationActionCore *)self logger];

    if (logger)
    {
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
      v60 = 0u;
      v61 = 0u;
      memset(buf, 0, sizeof(buf));
      v12 = PLMigrationGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      LOWORD(v55) = 0;
      v14 = _os_log_send_and_compose_impl(v13, 0, buf, 512, &dword_19BF1F000, v12, 0, "RelocateEdgesAndNormalizeNodeValues: migrating GraphNodeValues...", &v55, 2);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v14 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{816, 0}];

      if (v14 != buf)
      {
        free(v14);
      }
    }

    else
    {
      v16 = PLMigrationGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "RelocateEdgesAndNormalizeNodeValues: migrating GraphNodeValues...", buf, 2u);
      }
    }
  }

  v17 = +[PLGraphNodeValue fetchRequest];
  [v17 setFetchBatchSize:100];
  v54 = 0;
  v18 = [v8 executeFetchRequest:v17 error:&v54];
  v19 = v54;
  v20 = v19;
  if (v18)
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __103__PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues__migrateGraphNodeValuesWithError_context___block_invoke;
    v53[3] = &unk_1E7567F98;
    v53[4] = self;
    v21 = [v8 enumerateWithIncrementalSaveUsingObjects:v18 withBlock:v53];
    v22 = v21;
    LOBYTE(v23) = v21 == 0;
    if (v21)
    {
      v24 = v21;
      *error = v22;
      v25 = PLMigrationGetLog();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

      if (v26)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];

        if (logger3)
        {
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
          v60 = 0u;
          v61 = 0u;
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
          v55 = 138543618;
          v56 = v31;
          v57 = 2112;
          v58 = v22;
          LODWORD(v52) = 22;
          v32 = _os_log_send_and_compose_impl(v29, 0, buf, 512, &dword_19BF1F000, v28, 16, "Failed to perform a save operation for %{public}@. Error: %@", &v55, v52);

          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{842, 16}];

          if (v32 != buf)
          {
            free(v32);
          }
        }

        else
        {
          v43 = PLMigrationGetLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = objc_opt_class();
            v45 = NSStringFromClass(v44);
            *buf = 138543618;
            *&buf[4] = v45;
            *&buf[12] = 2112;
            *&buf[14] = v22;
            _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
          }
        }
      }
    }
  }

  else
  {
    v34 = v19;
    *error = v20;
    v35 = PLMigrationGetLog();
    v23 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

    if (v23)
    {
      logger5 = [(PLModelMigrationActionCore *)self logger];

      if (logger5)
      {
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
        v60 = 0u;
        v61 = 0u;
        memset(buf, 0, sizeof(buf));
        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v55 = 138543618;
        v56 = v40;
        v57 = 2112;
        v58 = v20;
        LODWORD(v52) = 22;
        v41 = _os_log_send_and_compose_impl(v38, 0, buf, 512, &dword_19BF1F000, v37, 16, "Failed to perform a fetch operation for %{public}@. Error: %@", &v55, v52);

        logger6 = [(PLModelMigrationActionCore *)self logger];
        [logger6 logWithMessage:v41 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{847, 16}];

        if (v41 != buf)
        {
          free(v41);
        }
      }

      else
      {
        v46 = PLMigrationGetLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          *buf = 138543618;
          *&buf[4] = v48;
          *&buf[12] = 2112;
          *&buf[14] = v20;
          _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_ERROR, "Failed to perform a fetch operation for %{public}@. Error: %@", buf, 0x16u);
        }
      }

      LOBYTE(v23) = 0;
    }
  }

  return v23;
}

- (void)setup
{
  nameCodesByStringName = self->_nameCodesByStringName;
  self->_nameCodesByStringName = &unk_1F0FC05F0;
}

+ (void)_encloseActor:(id)actor fromEdge:(id)edge isSource:(BOOL)source actorLabel:(id)label cache:(id)cache
{
  sourceCopy = source;
  actorCopy = actor;
  edgeCopy = edge;
  labelCopy = label;
  cacheCopy = cache;
  if (!labelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:774 description:{@"Invalid parameter not satisfying: %@", @"actorLabel"}];
  }

  v16 = actorCopy;
  if (edgeCopy)
  {
    if (cacheCopy)
    {
      goto LABEL_5;
    }

LABEL_23:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:776 description:{@"Invalid parameter not satisfying: %@", @"actorNodesByActingObjectID"}];

    v16 = actorCopy;
    if (!actorCopy)
    {
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_19000.m" lineNumber:775 description:{@"Invalid parameter not satisfying: %@", @"edge"}];

  v16 = actorCopy;
  if (!cacheCopy)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (!v16)
  {
    goto LABEL_19;
  }

LABEL_6:
  objectID = [v16 objectID];
  v18 = [cacheCopy objectForKeyedSubscript:objectID];

  if (!v18)
  {
    managedObjectContext = [actorCopy managedObjectContext];
    v18 = [PLGraphNode insertGraphNodeInContext:managedObjectContext withPrimaryLabel:labelCopy];

    v20 = objc_msgSend_entity(actorCopy);
    name = [v20 name];
    v22 = +[PLManagedAsset entityName];
    isEqualToString = objc_msgSend_isEqualToString_(name);

    if (isEqualToString)
    {
      v24 = @"actingAsset";
    }

    else
    {
      v25 = objc_msgSend_entity(actorCopy);
      name2 = [v25 name];
      v27 = +[PLMoment entityName];
      v28 = objc_msgSend_isEqualToString_(name2);

      if (v28)
      {
        v24 = @"actingMoment";
      }

      else
      {
        v29 = objc_msgSend_entity(actorCopy);
        name3 = [v29 name];
        v31 = +[PLPerson entityName];
        v32 = objc_msgSend_isEqualToString_(name3);

        if (v32)
        {
          v24 = @"actingPerson";
        }

        else
        {
          v24 = 0;
        }
      }
    }

    [v18 pl_setValue:actorCopy forKey:v24 valueDidChangeHandler:0];
    objectID2 = [actorCopy objectID];
    [cacheCopy setObject:v18 forKeyedSubscript:objectID2];
  }

  if (sourceCopy)
  {
    [edgeCopy setSourceNode:v18];
  }

  else
  {
    [edgeCopy setTargetNode:v18];
  }

LABEL_19:
}

@end