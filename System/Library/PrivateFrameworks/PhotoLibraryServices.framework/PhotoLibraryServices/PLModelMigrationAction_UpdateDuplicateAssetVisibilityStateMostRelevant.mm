@interface PLModelMigrationAction_UpdateDuplicateAssetVisibilityStateMostRelevant
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (int64_t)updateKeyAssetVisibilityStateWithManagedObjectContext:(id)context error:(id *)error;
- (int64_t)updateLegacyHiddenValueWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateDuplicateAssetVisibilityStateMostRelevant

- (int64_t)updateKeyAssetVisibilityStateWithManagedObjectContext:(id)context error:(id *)error
{
  v96[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 1;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__23792;
  v55 = __Block_byref_object_dispose__23793;
  v56 = 0;
  [contextCopy refreshAllObjects];
  v7 = +[PLDuplicateAlbum fetchRequest];
  v96[0] = @"assets";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:1];
  [v7 setRelationshipKeyPathsForPrefetching:v8];

  [v7 setIncludesPendingChanges:1];
  [v7 setFetchBatchSize:100];
  v9 = v52 + 5;
  obj = v52[5];
  v10 = [contextCopy executeFetchRequest:v7 error:&obj];
  objc_storeStrong(v9, obj);
  if (objc_msgSend_count(v10))
  {
    v11 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v10) pendingParentUnitCount:0];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __134__PLModelMigrationAction_UpdateDuplicateAssetVisibilityStateMostRelevant_updateKeyAssetVisibilityStateWithManagedObjectContext_error___block_invoke;
    v46[3] = &unk_1E7569C58;
    v46[4] = self;
    v48 = &v51;
    v49 = &v57;
    v12 = v11;
    v47 = v12;
    v13 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v10 withBlock:v46];
    if (v13 && !v52[5])
    {
      objc_storeStrong(v52 + 5, v13);
      v58[3] = 3;
    }

    if (v58[3] == 1)
    {
      v14 = PLMigrationGetLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

      if (v15)
      {
        logger = [(PLModelMigrationActionCore *)self logger];
        v17 = logger == 0;

        if (v17)
        {
          v35 = PLMigrationGetLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = objc_msgSend_count(v10);
            *buf = 67109120;
            *&buf[4] = v36;
            _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Updated duplicate visibility state on key asset for %d duplicate albums", buf, 8u);
          }

          goto LABEL_28;
        }

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
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        memset(buf, 0, sizeof(buf));
        v18 = PLMigrationGetLog();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        v20 = objc_msgSend_count(v10);
        if (v19)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v61 = 67109120;
        LODWORD(v62) = v20;
        v22 = _os_log_send_and_compose_impl(v21, 0, buf, 512, &dword_19BF1F000, v18, 0, "Updated duplicate visibility state on key asset for %d duplicate albums", &v61);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{578, 0}];

        goto LABEL_20;
      }
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
          v37 = PLMigrationGetLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = objc_opt_class();
            v39 = NSStringFromClass(v38);
            v40 = v52[5];
            *buf = 138543618;
            *&buf[4] = v39;
            *&buf[12] = 2114;
            *&buf[14] = v40;
            _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
          }

          goto LABEL_28;
        }

        errorCopy = error;
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
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
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
        v33 = v52[5];
        v61 = 138543618;
        v62 = v32;
        v63 = 2114;
        v64 = v33;
        v22 = _os_log_send_and_compose_impl(v30, 0, buf, 512, &dword_19BF1F000, v29, 16, "Failed to save managed object context for %{public}@. Error: %{public}@", &v61, 22);

        error = errorCopy;
        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{580, 16}];

LABEL_20:
        if (v22 != buf)
        {
          free(v22);
        }
      }
    }

LABEL_28:

    v24 = v58;
    goto LABEL_29;
  }

  v24 = v58;
  if (!v10)
  {
    v58[3] = 3;
  }

LABEL_29:
  v41 = v24[3];
  v42 = v52[5];
  if (v41 != 1 && error)
  {
    v42 = v42;
    *error = v42;
  }

  v43 = v58[3];
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
  return v43;
}

- (int64_t)updateLegacyHiddenValueWithManagedObjectContext:(id)context error:(id *)error
{
  v70[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AB28];
  v7 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v9 = [v7 predicateWithFormat:@"%K == %d", @"duplicateAssetVisibilityState", 2];
  v70[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
  v11 = [v6 andPredicateWithSubpredicates:v10];

  v68 = @"duplicateAssetVisibilityState";
  v69 = &unk_1F0FBC058;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  v13 = +[PLManagedAsset entityName];
  v32 = 0;
  LOBYTE(v10) = [PLModelMigrator executeBatchUpdateWithEntityName:v13 predicate:v11 propertiesToUpdate:v12 managedObjectContext:contextCopy error:&v32];

  v14 = v32;
  if (v10)
  {
    v15 = v14;
    v16 = 1;
  }

  else
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

    if (v18)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        memset(buf, 0, sizeof(buf));
        v20 = PLMigrationGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v33 = 138543618;
        v34 = v23;
        v35 = 2114;
        v36 = v14;
        LODWORD(v31) = 22;
        v24 = _os_log_send_and_compose_impl(v21, 0, buf, 512, &dword_19BF1F000, v20, 16, "Failed to execute batch update request for %{public}@. Error: %{public}@", &v33, v31);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{540, 16}];

        if (v24 != buf)
        {
          free(v24);
        }
      }

      else
      {
        v26 = PLMigrationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          *buf = 138543618;
          *&buf[4] = v28;
          *&buf[12] = 2114;
          *&buf[14] = v14;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Failed to execute batch update request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v29 = v14;
    if (error)
    {
      *error = v29;
    }

    v16 = 3;
  }

  return v16;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = [(PLModelMigrationAction_UpdateDuplicateAssetVisibilityStateMostRelevant *)self updateLegacyHiddenValueWithManagedObjectContext:contextCopy error:error];
  if (v7 == 1)
  {
    v7 = [(PLModelMigrationAction_UpdateDuplicateAssetVisibilityStateMostRelevant *)self updateKeyAssetVisibilityStateWithManagedObjectContext:contextCopy error:error];
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return v7;
}

@end