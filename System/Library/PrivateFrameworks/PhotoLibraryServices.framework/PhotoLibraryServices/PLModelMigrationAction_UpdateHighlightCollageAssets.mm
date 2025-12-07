@interface PLModelMigrationAction_UpdateHighlightCollageAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateHighlightCollageAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v97[6] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLPhotosHighlight entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
  [v8 setPredicate:v9];

  v97[0] = @"collageAssetsPrivate";
  v97[1] = @"collageAssetsShared";
  v97[2] = @"collageAssetsMixed";
  v97[3] = @"extendedAssets";
  v97[4] = @"keyAssetPrivate";
  v97[5] = @"keyAssetShared";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:6];
  [v8 setRelationshipKeyPathsForPrefetching:v10];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__43771;
  v60 = __Block_byref_object_dispose__43772;
  v61 = 0;
  v13 = [PLEnumerateAndSaveController alloc];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __99__PLModelMigrationAction_UpdateHighlightCollageAssets_performActionWithManagedObjectContext_error___block_invoke;
  v54[3] = &unk_1E7575B30;
  v14 = contextCopy;
  v55 = v14;
  v52[4] = &v56;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __99__PLModelMigrationAction_UpdateHighlightCollageAssets_performActionWithManagedObjectContext_error___block_invoke_2;
  v53[3] = &unk_1E7572E50;
  v53[4] = self;
  v53[5] = &v56;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __99__PLModelMigrationAction_UpdateHighlightCollageAssets_performActionWithManagedObjectContext_error___block_invoke_3;
  v52[3] = &unk_1E756C800;
  v15 = [(PLEnumerateAndSaveController *)v13 initWithName:v12 fetchRequest:v8 context:v14 options:0 generateContextBlock:v54 didFetchObjectIDsBlock:v53 processResultBlock:v52];
  v51 = 0;
  v16 = [(PLEnumerateAndSaveController *)v15 processObjectsWithError:&v51];
  v49 = v51;
  if (v16)
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

    if (v18)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v20 = logger == 0;

      if (v20)
      {
        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          completedUnitCount = [v57[5] completedUnitCount];
          *buf = 134217984;
          *&buf[4] = completedUnitCount;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_INFO, "Updated collage assets for %lu highlights", buf, 0xCu);
        }
      }

      else
      {
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
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        memset(buf, 0, sizeof(buf));
        v21 = PLMigrationGetLog();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
        completedUnitCount2 = [v57[5] completedUnitCount];
        if (v22)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v62 = 134217984;
        v63 = completedUnitCount2;
        v25 = _os_log_send_and_compose_impl(v24, 0, buf, 512, &dword_19BF1F000, v21, 1, "Updated collage assets for %lu highlights", &v62);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1363, 1}];

        if (v25 != buf)
        {
          free(v25);
        }
      }
    }

    v39 = 1;
  }

  else
  {
    v27 = PLMigrationGetLog();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

    if (v28)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v30 = logger3 == 0;

      if (v30)
      {
        v40 = PLMigrationGetLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          *buf = 138543618;
          *&buf[4] = v42;
          *&buf[12] = 2112;
          *&buf[14] = v49;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }

      else
      {
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
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
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
        v62 = 138543618;
        v63 = v34;
        v64 = 2112;
        v65 = v49;
        LODWORD(v48) = 22;
        v35 = _os_log_send_and_compose_impl(v32, 0, buf, 512, &dword_19BF1F000, v31, 16, "Failed to process %{public}@. Error: %@", &v62, v48);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1366, 16}];

        if (v35 != buf)
        {
          free(v35);
        }
      }
    }

    v39 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v43 = v49;
  v44 = v43;
  if (error)
  {
    v45 = v16;
  }

  else
  {
    v45 = 1;
  }

  if ((v45 & 1) == 0)
  {
    v46 = v43;
    *error = v44;
  }

  _Block_object_dispose(&v56, 8);
  return v39;
}

@end