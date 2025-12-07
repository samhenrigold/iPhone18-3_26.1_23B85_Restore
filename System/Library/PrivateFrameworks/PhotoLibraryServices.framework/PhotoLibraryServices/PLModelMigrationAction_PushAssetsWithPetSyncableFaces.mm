@interface PLModelMigrationAction_PushAssetsWithPetSyncableFaces
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_PushAssetsWithPetSyncableFaces

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v103[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 1;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__53822;
  v61 = __Block_byref_object_dispose__53823;
  v62 = 0;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLDetectedFace entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"detectionType", &unk_1F0FBFD00];
  v10 = MEMORY[0x1E696AB28];
  v103[0] = v9;
  v11 = +[PLDetectedFace syncableFacesPredicate];
  v103[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:2];
  v13 = [v10 andPredicateWithSubpredicates:v12];
  [v8 setPredicate:v13];

  v102 = @"assetForFace";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
  [v8 setRelationshipKeyPathsForPrefetching:v14];

  v15 = v58 + 5;
  obj = v58[5];
  v16 = [contextCopy executeFetchRequest:v8 error:&obj];
  objc_storeStrong(v15, obj);
  v17 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v16) pendingParentUnitCount:0];
  v18 = v17;
  if (v16)
  {
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __101__PLModelMigrationAction_PushAssetsWithPetSyncableFaces_performActionWithManagedObjectContext_error___block_invoke;
    v52[3] = &unk_1E756DCC8;
    v52[4] = self;
    v54 = &v57;
    v55 = &v63;
    v53 = v17;
    v19 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v16 withBlock:v52];
    if (v19)
    {
      if (!v58[5])
      {
        objc_storeStrong(v58 + 5, v19);
        v64[3] = 3;
        v20 = PLMigrationGetLog();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

        if (v21)
        {
          logger = [(PLModelMigrationActionCore *)self logger];
          v23 = logger == 0;

          if (v23)
          {
            v44 = PLMigrationGetLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = objc_opt_class();
              v46 = NSStringFromClass(v45);
              *buf = 138543618;
              *&buf[4] = v46;
              *&buf[12] = 2114;
              *&buf[14] = v19;
              _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "[PushAssetsWithPetSyncableFaces] Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
            }
          }

          else
          {
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
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            memset(buf, 0, sizeof(buf));
            v50 = PLMigrationGetLog();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v24 = 3;
            }

            else
            {
              v24 = 2;
            }

            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            v67 = 138543618;
            v68 = v26;
            v69 = 2114;
            v70 = v19;
            LODWORD(v49) = 22;
            v27 = _os_log_send_and_compose_impl(v24, 0, buf, 512, &dword_19BF1F000, v50, 16, "[PushAssetsWithPetSyncableFaces] Failed to perform a save operation for %{public}@. Error: %{public}@", &v67, v49);

            logger2 = [(PLModelMigrationActionCore *)self logger];
            [logger2 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{347, 16}];

            if (v27 != buf)
            {
              free(v27);
            }
          }
        }
      }
    }
  }

  else
  {
    v64[3] = 3;
    v29 = PLMigrationGetLog();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

    if (v30)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v32 = logger3 == 0;

      if (v32)
      {
        v40 = PLMigrationGetLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          v43 = v58[5];
          *buf = 138543618;
          *&buf[4] = v42;
          *&buf[12] = 2114;
          *&buf[14] = v43;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "[PushAssetsWithPetSyncableFaces] Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        memset(buf, 0, sizeof(buf));
        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = v58[5];
        v67 = 138543618;
        v68 = v36;
        v69 = 2114;
        v70 = v37;
        LODWORD(v49) = 22;
        v38 = _os_log_send_and_compose_impl(v34, 0, buf, 512, &dword_19BF1F000, v33, 16, "[PushAssetsWithPetSyncableFaces] Failed to execute fetch request for %{public}@. Error: %{public}@", &v67, v49);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{351, 16}];

        if (v38 != buf)
        {
          free(v38);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    *error = v58[5];
  }

  v47 = v64[3];

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  return v47;
}

@end