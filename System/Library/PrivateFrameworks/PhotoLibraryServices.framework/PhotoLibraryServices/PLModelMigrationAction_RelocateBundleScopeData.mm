@interface PLModelMigrationAction_RelocateBundleScopeData
- (id)legacyPrefixPathWithType:(unsigned __int8)type;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (int64_t)renameWithDestinationPath:(unsigned __int8)path error:(id *)error;
- (int64_t)updateResourceFilePathWithManagedObjectContext:(id)context bundleScope:(unsigned __int16)scope progress:(id)progress error:(id *)error;
@end

@implementation PLModelMigrationAction_RelocateBundleScopeData

- (id)legacyPrefixPathWithType:(unsigned __int8)type
{
  typeCopy = type;
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v6 = [pathManager photoDirectoryWithType:typeCopy];

  pathManager2 = [(PLModelMigrationActionCore *)self pathManager];
  v8 = [pathManager2 photoDirectoryWithType:7];

  lastPathComponent = [v6 lastPathComponent];
  v10 = [v8 stringByAppendingPathComponent:lastPathComponent];

  return v10;
}

- (int64_t)updateResourceFilePathWithManagedObjectContext:(id)context bundleScope:(unsigned __int16)scope progress:(id)progress error:(id *)error
{
  scopeCopy = scope;
  v44[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  progressCopy = progress;
  if (scopeCopy > 5 || ((1 << scopeCopy) & 0x2A) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_15000.m" lineNumber:519 description:{@"Invalid parameter not satisfying: %@", @"scope == PLBundleScopeCMM || scope == PLBundleScopeSyndication || scope == PLBundleScopeCollectionShare"}];
  }

  v13 = MEMORY[0x1E695D5E0];
  v14 = +[PLInternalResource entityName];
  v15 = [v13 fetchRequestWithEntityName:v14];

  v16 = MEMORY[0x1E696AB28];
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"dataStoreKeyData"];
  v44[0] = v17;
  scopeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"asset.bundleScope", scopeCopy];
  v44[1] = scopeCopy;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v20 = [v16 andPredicateWithSubpredicates:v19];
  [v15 setPredicate:v20];

  v43 = @"asset";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  [v15 setRelationshipKeyPathsForPrefetching:v21];

  [v15 setFetchBatchSize:100];
  v38 = 0;
  v22 = [contextCopy executeFetchRequest:v15 error:&v38];
  v23 = v38;
  if (v22)
  {
    *v41 = 0;
    *&v41[8] = v41;
    *&v41[16] = 0x2020000000;
    v42 = 0;
    pathManager = [(PLModelMigrationActionCore *)self pathManager];
    v25 = [pathManager photoLibraryPathTypeForBundleScope:scopeCopy];

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __124__PLModelMigrationAction_RelocateBundleScopeData_updateResourceFilePathWithManagedObjectContext_bundleScope_progress_error___block_invoke;
    v34[3] = &unk_1E756DC08;
    v37 = v25;
    v34[4] = self;
    v36 = v41;
    v35 = progressCopy;
    v26 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v22 withBlock:v34];

    if (v26)
    {
      v27 = PLMigrationGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *v40 = "[PLModelMigrationAction_RelocateBundleScopeData updateResourceFilePathWithManagedObjectContext:bundleScope:progress:error:]";
        *&v40[8] = 2112;
        *&v40[10] = v26;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "%{public}s: enumerate with incremental save failed: %@", buf, 0x16u);
      }

      v28 = 3;
    }

    else
    {
      v27 = PLMigrationGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(*&v41[8] + 24);
        *buf = 67109376;
        *v40 = v25;
        *&v40[4] = 2048;
        *&v40[6] = v30;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Updated file key paths for type %d. %ld assets updated.", buf, 0x12u);
      }

      v28 = 1;
    }

    _Block_object_dispose(v41, 8);
    if (error)
    {
LABEL_17:
      v31 = v26;
      *error = v26;
    }
  }

  else
  {
    v29 = PLMigrationGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v41 = 136446466;
      *&v41[4] = "[PLModelMigrationAction_RelocateBundleScopeData updateResourceFilePathWithManagedObjectContext:bundleScope:progress:error:]";
      *&v41[12] = 2112;
      *&v41[14] = v23;
      _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "%{public}s: resource fetch failed: %@", v41, 0x16u);
    }

    v28 = 3;
    v26 = v23;
    if (error)
    {
      goto LABEL_17;
    }
  }

  return v28;
}

- (int64_t)renameWithDestinationPath:(unsigned __int8)path error:(id *)error
{
  pathCopy = path;
  v101 = *MEMORY[0x1E69E9840];
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v8 = [pathManager photoDirectoryWithType:pathCopy];

  v9 = [(PLModelMigrationAction_RelocateBundleScopeData *)self legacyPrefixPathWithType:pathCopy];
  fileSystemRepresentation = [v9 fileSystemRepresentation];
  fileSystemRepresentation2 = [v8 fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v12);
  if (v13)
  {
    if (*__error() != 2)
    {
      errorCopy = error;
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A798];
      v24 = *__error();
      v69 = *MEMORY[0x1E696A578];
      v25 = v69;
      v26 = MEMORY[0x1E696AEC0];
      v27 = __error();
      v28 = [v26 stringWithUTF8String:strerror(*v27)];
      v70 = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v30 = [v22 errorWithDomain:v23 code:v24 userInfo:v29];

      v31 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E69BFF48];
      v33 = *MEMORY[0x1E696AA08];
      v67[0] = v25;
      v67[1] = v33;
      v68[0] = @"Failed to relocate bundle directory";
      v68[1] = v30;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
      v35 = [v31 errorWithDomain:v32 code:46003 userInfo:v34];

      v36 = PLMigrationGetLog();
      LODWORD(v34) = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

      if (v34)
      {
        logger = [(PLModelMigrationActionCore *)self logger];

        if (logger)
        {
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
          v72 = 0u;
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

          lastPathComponent = [v9 lastPathComponent];
          lastPathComponent2 = [v8 lastPathComponent];
          v42 = *__error();
          v43 = __error();
          v44 = strerror(*v43);
          v59 = 138544130;
          v60 = lastPathComponent;
          v61 = 2114;
          v62 = lastPathComponent2;
          v63 = 1024;
          v64 = v42;
          v65 = 2082;
          v66 = v44;
          v45 = _os_log_send_and_compose_impl(v39, 0, buf, 512, &dword_19BF1F000, v38, 16, "rename failed: From filename %{public}@ to %{public}@. Error: (%d) %{public}s", &v59, 38);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v45 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{509, 16}];

          if (v45 != buf)
          {
            free(v45);
          }
        }

        else
        {
          v52 = PLMigrationGetLog();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            lastPathComponent3 = [v9 lastPathComponent];
            lastPathComponent4 = [v8 lastPathComponent];
            v55 = *__error();
            v56 = __error();
            v57 = strerror(*v56);
            *buf = 138544130;
            *&buf[4] = lastPathComponent3;
            *&buf[12] = 2114;
            *&buf[14] = lastPathComponent4;
            *&buf[22] = 1024;
            *&buf[24] = v55;
            *&buf[28] = 2082;
            *&buf[30] = v57;
            _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_ERROR, "rename failed: From filename %{public}@ to %{public}@. Error: (%d) %{public}s", buf, 0x26u);
          }
        }
      }

      v49 = 3;
      error = errorCopy;
      if (errorCopy)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    v14 = PLMigrationGetLog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        v72 = 0u;
        memset(buf, 0, sizeof(buf));
        v17 = PLMigrationGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        lastPathComponent5 = [v9 lastPathComponent];
        v59 = 138543362;
        v60 = lastPathComponent5;
        v20 = _os_log_send_and_compose_impl(v18, 0, buf, 512, &dword_19BF1F000, v17, 0, "skipping rename of filename %{public}@", &v59, 12);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{502, 0}];

        if (v20 != buf)
        {
          free(v20);
        }
      }

      else
      {
        v47 = PLMigrationGetLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent6 = [v9 lastPathComponent];
          *buf = 138543362;
          *&buf[4] = lastPathComponent6;
          _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_DEFAULT, "skipping rename of filename %{public}@", buf, 0xCu);
        }
      }
    }
  }

  v35 = 0;
  v49 = 1;
  if (error)
  {
LABEL_21:
    v50 = v35;
    *error = v35;
  }

LABEL_22:

  return v49;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v112[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  isUBF = [pathManager isUBF];

  if (isUBF)
  {
    v9 = MEMORY[0x1E695D5E0];
    v10 = +[PLInternalResource entityName];
    v11 = [v9 fetchRequestWithEntityName:v10];

    v12 = MEMORY[0x1E696AB28];
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"dataStoreKeyData"];
    v112[0] = v13;
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"asset.bundleScope", &unk_1F0FBFC88];
    v112[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:2];
    v16 = [v12 andPredicateWithSubpredicates:v15];
    [v11 setPredicate:v16];

    v74 = 0;
    v65 = v11;
    v17 = [contextCopy countForFetchRequest:v11 error:&v74];
    v18 = v74;
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = PLMigrationGetLog();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (v20)
      {
        logger = [(PLModelMigrationActionCore *)self logger];

        if (logger)
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
          *buf = 0u;
          v80 = 0u;
          v22 = PLMigrationGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = 3;
          }

          else
          {
            v23 = 2;
          }

          v77 = 138412290;
          v78 = v18;
          LODWORD(v63) = 12;
          v24 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 16, "Failed to obtain count of bundle scoped items. Error: %@", &v77, v63);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{479, 16}];

          if (v24 != buf)
          {
            free(v24);
          }
        }

        else
        {
          v59 = PLMigrationGetLog();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v18;
            _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_ERROR, "Failed to obtain count of bundle scoped items. Error: %@", buf, 0xCu);
          }
        }
      }

      v43 = 3;
    }

    else
    {
      v35 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(&unk_1F0FBFCA0) + v17 pendingParentUnitCount:0];
      pathManager2 = [(PLModelMigrationActionCore *)self pathManager];
      v37 = *MEMORY[0x1E69BFF80];
      v73 = v18;
      v38 = [pathManager2 photoDirectoryWithType:1 leafType:1 additionalPathComponents:v37 createIfNeeded:1 error:&v73];
      v39 = v73;

      v66 = contextCopy;
      if (v38)
      {
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v40 = [&unk_1F0FBFCA0 countByEnumeratingWithState:&v69 objects:v111 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v70;
          v43 = 1;
          errorCopy = error;
          while (2)
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v70 != v42)
              {
                objc_enumerationMutation(&unk_1F0FBFCA0);
              }

              unsignedIntValue = [*(*(&v69 + 1) + 8 * i) unsignedIntValue];
              pathManager3 = [(PLModelMigrationActionCore *)self pathManager];
              v47 = [pathManager3 photoLibraryPathTypeForBundleScope:unsignedIntValue];

              v68 = v39;
              v48 = [(PLModelMigrationAction_RelocateBundleScopeData *)self renameWithDestinationPath:v47 error:&v68];
              v49 = v68;

              if (v48 != 1 || unsignedIntValue == 2)
              {
                v39 = v49;
              }

              else
              {
                v67 = v49;
                v48 = [(PLModelMigrationAction_RelocateBundleScopeData *)self updateResourceFilePathWithManagedObjectContext:v66 bundleScope:unsignedIntValue progress:v35 error:&v67];
                v39 = v67;
              }

              [v35 setCompletedUnitCount:{objc_msgSend(v35, "completedUnitCount") + 1}];
              if (v48 != 1)
              {
                v43 = v48;
                error = errorCopy;
                goto LABEL_54;
              }
            }

            v41 = [&unk_1F0FBFCA0 countByEnumeratingWithState:&v69 objects:v111 count:16];
            error = errorCopy;
            if (v41)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v43 = 1;
        }
      }

      else
      {
        v52 = PLMigrationGetLog();
        v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);

        if (v53)
        {
          logger3 = [(PLModelMigrationActionCore *)self logger];

          if (logger3)
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
            *buf = 0u;
            v80 = 0u;
            v55 = PLMigrationGetLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v56 = 3;
            }

            else
            {
              v56 = 2;
            }

            v77 = 138412290;
            v78 = v39;
            LODWORD(v63) = 12;
            v57 = _os_log_send_and_compose_impl(v56, 0, buf, 512, &dword_19BF1F000, v55, 16, "Failed to create scoped directory. Error: %@", &v77, v63);

            logger4 = [(PLModelMigrationActionCore *)self logger];
            [logger4 logWithMessage:v57 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{475, 16}];

            if (v57 != buf)
            {
              free(v57);
            }
          }

          else
          {
            v60 = PLMigrationGetLog();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v39;
              _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_ERROR, "Failed to create scoped directory. Error: %@", buf, 0xCu);
            }
          }
        }

        v43 = 3;
      }

LABEL_54:

      v18 = v39;
      contextCopy = v66;
    }
  }

  else
  {
    v26 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E69BFF48];
    v75 = *MEMORY[0x1E696A578];
    v76 = @"Unexpected attempt to relocate scoped paths for DCIM";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v18 = [v26 errorWithDomain:v27 code:46003 userInfo:v28];

    v29 = PLMigrationGetLog();
    LODWORD(v27) = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

    if (v27)
    {
      logger5 = [(PLModelMigrationActionCore *)self logger];

      if (logger5)
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
        *buf = 0u;
        v80 = 0u;
        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        LOWORD(v77) = 0;
        v33 = _os_log_send_and_compose_impl(v32, 0, buf, 512, &dword_19BF1F000, v31, 16, "Unexpected attempt to relocate scoped paths for DCIM", &v77, 2);

        logger6 = [(PLModelMigrationActionCore *)self logger];
        [logger6 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{485, 16}];

        if (v33 != buf)
        {
          free(v33);
        }
      }

      else
      {
        v51 = PLMigrationGetLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_ERROR, "Unexpected attempt to relocate scoped paths for DCIM", buf, 2u);
        }
      }
    }

    v43 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    v61 = v18;
    *error = v18;
  }

  return v43;
}

@end