@interface PLModelMigrationAction_FixDuplicateMergeCrashRecoveryAssets
- (BOOL)_isLibraryRepairRequiredWithManagedObjectContext:(id)context;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (void)_processForRepairWithAsset:(id)asset repairCount:(int64_t *)count;
- (void)_repairAsset:(id)asset;
@end

@implementation PLModelMigrationAction_FixDuplicateMergeCrashRecoveryAssets

- (void)_repairAsset:(id)asset
{
  v93 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  duplicateAlbum = [assetCopy duplicateAlbum];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  assets = [duplicateAlbum assets];
  v7 = [assets countByEnumeratingWithState:&v50 objects:v92 count:16];
  if (!v7)
  {
    goto LABEL_40;
  }

  v8 = v7;
  v9 = *v51;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v51 != v9)
      {
        objc_enumerationMutation(assets);
      }

      v11 = *(*(&v50 + 1) + 8 * i);
      if (([v11 isEqual:assetCopy] & 1) == 0)
      {
        master = [v11 master];

        if (master)
        {
          if ([v11 cloudLocalState] == 1)
          {
            selfCopy = self;
            v13 = [[PLDuplicateAsset alloc] initWithAsset:v11];
            v14 = [[PLDuplicateAsset alloc] initWithAsset:assetCopy];
            photoLibrary = [assetCopy photoLibrary];
            v16 = photoLibrary;
            v48 = v13;
            if (v13 && v14 && photoLibrary)
            {
              v17 = [PLDuplicateMerge alloc];
              v91 = v13;
              v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
              v44 = v14;
              v45 = v16;
              v19 = [(PLDuplicateMerge *)v17 initWithSourceAssets:v18 targetAsset:v14 photolibrary:v16];

              v49 = 0;
              LOBYTE(v18) = [(PLDuplicateMerge *)v19 mergeResourcesFromSource:v48 error:&v49];
              v20 = v49;
              if ((v18 & 1) == 0)
              {
                v21 = PLMigrationGetLog();
                v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

                if (v22)
                {
                  logger = [(PLModelMigrationActionBackground *)selfCopy logger];

                  if (logger)
                  {
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
                    v65 = 0u;
                    v66 = 0u;
                    v63 = 0u;
                    v64 = 0u;
                    v61 = 0u;
                    v62 = 0u;
                    memset(buf, 0, sizeof(buf));
                    v24 = PLMigrationGetLog();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                    {
                      v25 = 3;
                    }

                    else
                    {
                      v25 = 2;
                    }

                    v43 = v25;
                    uuid = [assetCopy uuid];
                    uuid2 = [v11 uuid];
                    v54 = 138543618;
                    v55 = uuid;
                    v56 = 2114;
                    *v57 = uuid2;
                    v28 = _os_log_send_and_compose_impl(v43, 0, buf, 512, &dword_19BF1F000, v24, 16, "Failed to repair merge asset %{public}@ using source %{public}@", &v54, 22);

                    logger2 = [(PLModelMigrationActionBackground *)selfCopy logger];
                    [logger2 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{806, 16}];

                    if (v28 != buf)
                    {
                      free(v28);
                    }
                  }

                  else
                  {
                    v40 = PLMigrationGetLog();
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                    {
                      uuid3 = [assetCopy uuid];
                      uuid4 = [v11 uuid];
                      *buf = 138543618;
                      *&buf[4] = uuid3;
                      *&buf[12] = 2114;
                      *&buf[14] = uuid4;
                      _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Failed to repair merge asset %{public}@ using source %{public}@", buf, 0x16u);
                    }
                  }
                }
              }

              v14 = v44;
              v16 = v45;
            }

            else
            {
              v30 = PLMigrationGetLog();
              v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

              if (v31)
              {
                logger3 = [(PLModelMigrationActionBackground *)selfCopy logger];

                if (logger3)
                {
                  v46 = v16;
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
                  v65 = 0u;
                  v66 = 0u;
                  v63 = 0u;
                  v64 = 0u;
                  v61 = 0u;
                  v62 = 0u;
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

                  uuid5 = [assetCopy uuid];
                  v54 = 138544130;
                  v55 = uuid5;
                  v56 = 1024;
                  *v57 = v48 != 0;
                  *&v57[4] = 1024;
                  *&v57[6] = v14 != 0;
                  v58 = 1024;
                  v59 = v16 != 0;
                  v36 = _os_log_send_and_compose_impl(v34, 0, buf, 512, &dword_19BF1F000, v33, 16, "Failed to repair merge asset %{public}@. Missing merge parameters: [%d:%d:%d]", &v54, 30);

                  logger4 = [(PLModelMigrationActionBackground *)selfCopy logger];
                  [logger4 logWithMessage:v36 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{809, 16}];

                  if (v36 != buf)
                  {
                    free(v36);
                  }

                  v20 = 0;
                  v16 = v46;
                  goto LABEL_39;
                }

                v38 = PLMigrationGetLog();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  uuid6 = [assetCopy uuid];
                  *buf = 138544130;
                  *&buf[4] = uuid6;
                  *&buf[12] = 1024;
                  *&buf[14] = v48 != 0;
                  *&buf[18] = 1024;
                  *&buf[20] = v14 != 0;
                  *&buf[24] = 1024;
                  *&buf[26] = v16 != 0;
                  _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Failed to repair merge asset %{public}@. Missing merge parameters: [%d:%d:%d]", buf, 0x1Eu);
                }
              }

              v20 = 0;
            }

LABEL_39:

            goto LABEL_40;
          }
        }
      }
    }

    v8 = [assets countByEnumeratingWithState:&v50 objects:v92 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_40:
}

- (void)_processForRepairWithAsset:(id)asset repairCount:(int64_t *)count
{
  v63 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v7 = [assetCopy masterResourceForCPLType:1];
  cplFileURL = [v7 cplFileURL];
  v25 = 0;
  v9 = [cplFileURL checkResourceIsReachableAndReturnError:&v25];
  v10 = v25;
  if (!cplFileURL)
  {
    goto LABEL_4;
  }

  if (v9)
  {
    goto LABEL_6;
  }

  if (!PLIsErrorFileNotFound())
  {
    v11 = PLMigrationGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      logger = [(PLModelMigrationActionBackground *)self logger];

      if (logger)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        memset(buf, 0, sizeof(buf));
        v14 = PLMigrationGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        uuid = [assetCopy uuid];
        v26 = 138543874;
        v27 = v17;
        v28 = 2114;
        v29 = uuid;
        v30 = 2112;
        v31 = v10;
        v19 = _os_log_send_and_compose_impl(v15, 0, buf, 512, &dword_19BF1F000, v14, 16, "Resource check failed in %{public}@ for %{public}@. Error: %@", &v26, 32);

        logger2 = [(PLModelMigrationActionBackground *)self logger];
        [logger2 logWithMessage:v19 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{780, 16}];

        if (v19 != buf)
        {
          free(v19);
        }
      }

      else
      {
        v21 = PLMigrationGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          uuid2 = [assetCopy uuid];
          *buf = 138543874;
          *&buf[4] = v23;
          *&buf[12] = 2114;
          *&buf[14] = uuid2;
          *&buf[22] = 2112;
          *&buf[24] = v10;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Resource check failed in %{public}@ for %{public}@. Error: %@", buf, 0x20u);
        }
      }
    }
  }

  else
  {
LABEL_4:
    [(PLModelMigrationAction_FixDuplicateMergeCrashRecoveryAssets *)self _repairAsset:assetCopy];
    if (count)
    {
      ++*count;
    }
  }

LABEL_6:
}

- (BOOL)_isLibraryRepairRequiredWithManagedObjectContext:(id)context
{
  contextCopy = context;
  pathManager = [(PLModelMigrationActionBackground *)self pathManager];
  libraryURL = [pathManager libraryURL];
  v7 = PLIsCloudPhotoLibraryEnabledForPhotoLibraryURL(libraryURL);

  if (v7)
  {
    objc_opt_class();
    v8 = contextCopy;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    pl_libraryBundle = [v10 pl_libraryBundle];
    indicatorFileCoordinator = [pl_libraryBundle indicatorFileCoordinator];

    v13 = [indicatorFileCoordinator isDisableICloudPhotos] ^ 1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v132 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if ([(PLModelMigrationAction_FixDuplicateMergeCrashRecoveryAssets *)self _isLibraryRepairRequiredWithManagedObjectContext:contextCopy])
  {
    v8 = MEMORY[0x1E695D5E0];
    v9 = +[PLManagedAsset entityName];
    v10 = [v8 fetchRequestWithEntityName:v9];

    v11 = MEMORY[0x1E696AB28];
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"duplicateAssetVisibilityState", 0];
    v100[0] = v12;
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"activeLibraryScopeParticipationState", 1];
    v100[1] = v13;
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"master"];
    v100[2] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:3];
    v16 = [v11 andPredicateWithSubpredicates:v15];
    [v10 setPredicate:v16];

    [v10 setFetchBatchSize:100];
    v99[0] = @"modernResources";
    v99[1] = @"albums";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:2];
    [v10 setRelationshipKeyPathsForPrefetching:v17];

    *&v94 = 0;
    *(&v94 + 1) = &v94;
    v95 = 0x3032000000;
    v96 = __Block_byref_object_copy__1060;
    v97 = __Block_byref_object_dispose__1061;
    v98 = 0;
    v84 = 0;
    v85 = &v84;
    v86 = 0x2020000000;
    v87 = 1;
    obj = 0;
    v18 = [contextCopy executeFetchRequest:v10 error:&obj];
    objc_storeStrong(&v98, obj);
    if (!v18)
    {
      v85[3] = 3;
      v40 = PLMigrationGetLog();
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

      if (v41)
      {
        logger = [(PLModelMigrationActionBackground *)self logger];
        v43 = logger == 0;

        if (v43)
        {
          v66 = PLMigrationGetLog();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v67 = objc_opt_class();
            v68 = NSStringFromClass(v67);
            v69 = *(*(&v94 + 1) + 40);
            *buf = 138543618;
            *&buf[4] = v68;
            *&buf[12] = 2112;
            *&buf[14] = v69;
            _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %@", buf, 0x16u);
          }
        }

        else
        {
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v44 = PLMigrationGetLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v45 = 3;
          }

          else
          {
            v45 = 2;
          }

          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v48 = *(*(&v94 + 1) + 40);
          *v92 = 138543618;
          *&v92[4] = v47;
          *&v92[12] = 2112;
          *&v92[14] = v48;
          LODWORD(v76) = 22;
          v49 = _os_log_send_and_compose_impl(v45, 0, buf, 512, &dword_19BF1F000, v44, 16, "Failed to execute fetch request for %{public}@. Error: %@", v92, v76);

          logger2 = [(PLModelMigrationActionBackground *)self logger];
          [logger2 logWithMessage:v49 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{740, 16}];

          if (v49 != buf)
          {
            free(v49);
          }
        }
      }

      goto LABEL_48;
    }

    v19 = [(PLModelMigrationActionBackground *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v18) pendingParentUnitCount:0];
    *v92 = 0;
    *&v92[8] = v92;
    *&v92[16] = 0x2020000000;
    v93 = 0;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __107__PLModelMigrationAction_FixDuplicateMergeCrashRecoveryAssets_performActionWithManagedObjectContext_error___block_invoke;
    v78[3] = &unk_1E75726E8;
    v78[4] = self;
    v80 = v92;
    v81 = &v84;
    v82 = &v94;
    v20 = v19;
    v79 = v20;
    v21 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v18 withBlock:v78];
    if (v21 && (v22 = (*(&v94 + 1) + 40), !*(*(&v94 + 1) + 40)))
    {
      v85[3] = 3;
      objc_storeStrong(v22, v21);
      v53 = PLMigrationGetLog();
      v54 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);

      if (v54)
      {
        logger3 = [(PLModelMigrationActionBackground *)self logger];
        v56 = logger3 == 0;

        if (!v56)
        {
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v57 = PLMigrationGetLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v58 = 3;
          }

          else
          {
            v58 = 2;
          }

          v59 = objc_opt_class();
          v60 = NSStringFromClass(v59);
          v61 = *(*(&v94 + 1) + 40);
          v88 = 138543618;
          v89 = v60;
          v90 = 2112;
          v91 = v61;
          LODWORD(v76) = 22;
          v62 = _os_log_send_and_compose_impl(v58, 0, buf, 512, &dword_19BF1F000, v57, 16, "Asset could not be saved for %{public}@. Error: %@", &v88, v76);

          logger4 = [(PLModelMigrationActionBackground *)self logger];
          [logger4 logWithMessage:v62 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{734, 16}];

          if (v62 == buf)
          {
            goto LABEL_47;
          }

          v32 = v62;
LABEL_37:
          free(v32);
          goto LABEL_47;
        }

        v64 = PLMigrationGetLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v70 = objc_opt_class();
          v71 = NSStringFromClass(v70);
          v72 = *(*(&v94 + 1) + 40);
          *buf = 138543618;
          *&buf[4] = v71;
          *&buf[12] = 2112;
          *&buf[14] = v72;
          _os_log_impl(&dword_19BF1F000, v64, OS_LOG_TYPE_ERROR, "Asset could not be saved for %{public}@. Error: %@", buf, 0x16u);
        }

LABEL_46:
      }
    }

    else
    {
      v23 = PLMigrationGetLog();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);

      if (v24)
      {
        logger5 = [(PLModelMigrationActionBackground *)self logger];
        v26 = logger5 == 0;

        if (!v26)
        {
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v27 = PLMigrationGetLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          v29 = *(*&v92[8] + 24);
          v88 = 134217984;
          v89 = v29;
          v30 = _os_log_send_and_compose_impl(v28, 0, buf, 512, &dword_19BF1F000, v27, 1, "Completed repair on %td assets", &v88);

          logger6 = [(PLModelMigrationActionBackground *)self logger];
          [logger6 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{736, 1}];

          if (v30 == buf)
          {
            goto LABEL_47;
          }

          v32 = v30;
          goto LABEL_37;
        }

        v64 = PLMigrationGetLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = *(*&v92[8] + 24);
          *buf = 134217984;
          *&buf[4] = v65;
          _os_log_impl(&dword_19BF1F000, v64, OS_LOG_TYPE_INFO, "Completed repair on %td assets", buf, 0xCu);
        }

        goto LABEL_46;
      }
    }

LABEL_47:

    _Block_object_dispose(v92, 8);
LABEL_48:
    [(PLModelMigrationActionBackground *)self finalizeProgress];
    v73 = v85[3];
    v74 = *(*(&v94 + 1) + 40);
    if (v73 != 1 && error)
    {
      v74 = v74;
      *error = v74;
    }

    v52 = v85[3];
    _Block_object_dispose(&v84, 8);
    _Block_object_dispose(&v94, 8);

    goto LABEL_52;
  }

  v33 = PLMigrationGetLog();
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

  if (v34)
  {
    logger7 = [(PLModelMigrationActionBackground *)self logger];

    if (logger7)
    {
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
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

      LODWORD(v94) = 138543362;
      *(&v94 + 4) = v7;
      v38 = _os_log_send_and_compose_impl(v37, 0, buf, 512, &dword_19BF1F000, v36, 0, "%{public}@ was skipped. Library is not in a valid state for repair", &v94, 12);

      logger8 = [(PLModelMigrationActionBackground *)self logger];
      [logger8 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{693, 0}];

      if (v38 != buf)
      {
        free(v38);
      }
    }

    else
    {
      v51 = PLMigrationGetLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v7;
        _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ was skipped. Library is not in a valid state for repair", buf, 0xCu);
      }
    }
  }

  v52 = 1;
LABEL_52:

  return v52;
}

@end