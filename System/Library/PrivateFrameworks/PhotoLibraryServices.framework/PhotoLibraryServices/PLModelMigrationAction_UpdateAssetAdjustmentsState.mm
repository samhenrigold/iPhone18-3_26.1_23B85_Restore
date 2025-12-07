@interface PLModelMigrationAction_UpdateAssetAdjustmentsState
+ (BOOL)isResetAfterRebuildRequiredWithLibrary:(id)library;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateAssetAdjustmentsState

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v103[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 1;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__1060;
  v62 = __Block_byref_object_dispose__1061;
  v63 = 0;
  v7 = +[PLManagedAsset fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"adjustmentsState", 1];
  [v7 setPredicate:v8];

  v103[0] = @"additionalAttributes.unmanagedAdjustment";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:1];
  [v7 setRelationshipKeyPathsForPrefetching:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [contextCopy setChangeSource:1];
  }

  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__1060;
  v56[4] = __Block_byref_object_dispose__1061;
  v57 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v10 = [PLEnumerateAndSaveController alloc];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __98__PLModelMigrationAction_UpdateAssetAdjustmentsState_performActionWithManagedObjectContext_error___block_invoke;
  v50[3] = &unk_1E7575B30;
  v13 = contextCopy;
  v51 = v13;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __98__PLModelMigrationAction_UpdateAssetAdjustmentsState_performActionWithManagedObjectContext_error___block_invoke_2;
  v49[3] = &unk_1E7572E50;
  v49[4] = self;
  v49[5] = v56;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __98__PLModelMigrationAction_UpdateAssetAdjustmentsState_performActionWithManagedObjectContext_error___block_invoke_3;
  v48[3] = &unk_1E756DD18;
  v48[4] = self;
  v48[5] = &v58;
  v48[6] = &v64;
  v48[7] = &v52;
  v48[8] = v56;
  v14 = [(PLEnumerateAndSaveController *)v10 initWithName:v12 fetchRequest:v7 context:v13 options:0 generateContextBlock:v50 didFetchObjectIDsBlock:v49 processResultBlock:v48];

  v15 = (v59 + 5);
  obj = v59[5];
  v16 = [(PLEnumerateAndSaveController *)v14 processObjectsWithError:&obj];
  objc_storeStrong(v15, obj);
  if (v16)
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      logger = [(PLModelMigrationActionBackground *)self logger];
      v20 = logger == 0;

      if (!v20)
      {
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
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        memset(buf, 0, sizeof(buf));
        v21 = PLMigrationGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v23 = v53[3];
        v68 = 134217984;
        v69 = v23;
        v24 = _os_log_send_and_compose_impl(v22, 0, buf, 512, &dword_19BF1F000, v21, 0, "Updated adjustmentsState for %tu assets.", &v68);

        logger2 = [(PLModelMigrationActionBackground *)self logger];
        [logger2 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1093, 0}];

        if (v24 == buf)
        {
          goto LABEL_25;
        }

        v26 = v24;
        goto LABEL_18;
      }

      v38 = PLMigrationGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v53[3];
        *buf = 134217984;
        *&buf[4] = v39;
        _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "Updated adjustmentsState for %tu assets.", buf, 0xCu);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v65[3] = 3;
    v27 = PLMigrationGetLog();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

    if (v28)
    {
      logger3 = [(PLModelMigrationActionBackground *)self logger];
      v30 = logger3 == 0;

      if (!v30)
      {
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
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        memset(buf, 0, sizeof(buf));
        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = v59[5];
        v68 = 138543618;
        v69 = v34;
        v70 = 2114;
        v71 = v35;
        LODWORD(v46) = 22;
        v36 = _os_log_send_and_compose_impl(v32, 0, buf, 512, &dword_19BF1F000, v31, 16, "Failed to process %{public}@. Error: %{public}@", &v68, v46);

        logger4 = [(PLModelMigrationActionBackground *)self logger];
        [logger4 logWithMessage:v36 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1096, 16}];

        if (v36 == buf)
        {
          goto LABEL_25;
        }

        v26 = v36;
LABEL_18:
        free(v26);
        goto LABEL_25;
      }

      v38 = PLMigrationGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = v59[5];
        *buf = 138543618;
        *&buf[4] = v41;
        *&buf[12] = 2114;
        *&buf[14] = v42;
        _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
      }

LABEL_24:
    }
  }

LABEL_25:
  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v43 = v65[3];
  v44 = v59[5];
  if (v43 != 1 && error)
  {
    v44 = v44;
    *error = v44;
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(v56, 8);

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);

  return 1;
}

+ (BOOL)isResetAfterRebuildRequiredWithLibrary:(id)library
{
  libraryCopy = library;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__1060;
  v14[4] = __Block_byref_object_dispose__1061;
  v15 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__PLModelMigrationAction_UpdateAssetAdjustmentsState_isResetAfterRebuildRequiredWithLibrary___block_invoke;
  v10[3] = &unk_1E7578870;
  v12 = &v16;
  v4 = libraryCopy;
  v11 = v4;
  v13 = v14;
  [v4 performBlockAndWait:v10];
  v5 = 0;
  v6 = v17[3];
  if (v6 && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Requesting background migration after rebuild", v9, 2u);
    }

    v5 = 1;
  }

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v16, 8);

  return v5;
}

@end