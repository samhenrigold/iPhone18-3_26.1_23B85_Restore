@interface PLModelMigrationAction_PopulateInitialSharedAssetCollectionStats
- (int64_t)_recalculateSharedAssetContainerValuesForEntityNamed:(id)named propertiesToFetch:(id)fetch inContext:(id)context error:(id *)error;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_PopulateInitialSharedAssetCollectionStats

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v88[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:3 pendingParentUnitCount:0];
  v7 = objc_autoreleasePoolPush();
  v8 = +[PLMoment entityName];
  v88[0] = @"sharingComposition";
  v88[1] = @"cachedCount";
  v88[2] = @"cachedCountShared";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:3];
  v51 = 0;
  v10 = [(PLModelMigrationAction_PopulateInitialSharedAssetCollectionStats *)self _recalculateSharedAssetContainerValuesForEntityNamed:v8 propertiesToFetch:v9 inContext:contextCopy error:&v51];
  v11 = v51;

  objc_autoreleasePoolPop(v7);
  [v6 setCompletedUnitCount:{objc_msgSend(v6, "completedUnitCount") + 1}];
  if (!v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = +[PLPhotosHighlight entityName];
    v87[0] = @"sharingComposition";
    v87[1] = @"assetsCount";
    v87[2] = @"assetsCountShared";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:3];
    v50 = 0;
    v10 = [(PLModelMigrationAction_PopulateInitialSharedAssetCollectionStats *)self _recalculateSharedAssetContainerValuesForEntityNamed:v13 propertiesToFetch:v14 inContext:contextCopy error:&v50];
    v11 = v50;

    objc_autoreleasePoolPop(v12);
  }

  [v6 setCompletedUnitCount:{objc_msgSend(v6, "completedUnitCount") + 1}];
  if (!v11)
  {
    v15 = objc_autoreleasePoolPush();
    v49 = 0;
    v16 = [PLBackgroundJobSharedAssetContainerUpdateWorker performWorkOnAllItemsInContext:contextCopy withError:&v49];
    v17 = v49;
    if (v16)
    {
      if ([contextCopy hasChanges])
      {
        v48 = v17;
        v18 = [contextCopy save:&v48];
        v11 = v48;

        if ((v18 & 1) == 0)
        {
          v19 = PLMigrationGetLog();
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

          if (v20)
          {
            logger = [(PLModelMigrationActionCore *)self logger];

            if (logger)
            {
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
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              memset(buf, 0, sizeof(buf));
              v22 = PLMigrationGetLog();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v23 = 3;
              }

              else
              {
                v23 = 2;
              }

              v24 = objc_opt_class();
              v25 = NSStringFromClass(v24);
              v52 = 138543618;
              v53 = v25;
              v54 = 2112;
              v55 = v11;
              v26 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 16, "%{public}@: Failed to save shared asset container updates with error: %@", &v52, 22);

              logger2 = [(PLModelMigrationActionCore *)self logger];
              [logger2 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{227, 16}];

              if (v26 != buf)
              {
                free(v26);
              }
            }

            else
            {
              v44 = PLMigrationGetLog();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                v45 = objc_opt_class();
                v46 = NSStringFromClass(v45);
                *buf = 138543618;
                *&buf[4] = v46;
                *&buf[12] = 2112;
                *&buf[14] = v11;
                _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save shared asset container updates with error: %@", buf, 0x16u);
              }
            }
          }

          v10 = 3;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v28 = PLMigrationGetLog();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

      if (v29)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];

        if (logger3)
        {
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
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
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
          v52 = 138543618;
          v53 = v34;
          v54 = 2112;
          v55 = v17;
          v35 = _os_log_send_and_compose_impl(v32, 0, buf, 512, &dword_19BF1F000, v31, 16, "%{public}@: Failed to save shared asset container updates with error: %@", &v52, 22);

          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{232, 16}];

          if (v35 != buf)
          {
            free(v35);
          }
        }

        else
        {
          v37 = PLMigrationGetLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = objc_opt_class();
            v39 = NSStringFromClass(v38);
            *buf = 138543618;
            *&buf[4] = v39;
            *&buf[12] = 2112;
            *&buf[14] = v17;
            _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save shared asset container updates with error: %@", buf, 0x16u);
          }
        }
      }

      v10 = 3;
    }

    v11 = v17;
LABEL_26:
    objc_autoreleasePoolPop(v15);
  }

  [v6 setCompletedUnitCount:{objc_msgSend(v6, "completedUnitCount") + 1}];
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v40 = v11;
  v41 = v40;
  if (v10 != 1 && error)
  {
    v42 = v40;
    *error = v41;
  }

  return v10;
}

- (int64_t)_recalculateSharedAssetContainerValuesForEntityNamed:(id)named propertiesToFetch:(id)fetch inContext:(id)context error:(id *)error
{
  v127 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  fetchCopy = fetch;
  contextCopy = context;
  if (error)
  {
    if (namedCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_16000.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"error"}];

    if (namedCopy)
    {
LABEL_3:
      if (fetchCopy)
      {
        goto LABEL_4;
      }

LABEL_65:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_16000.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"propertiesToFetch"}];

      if (contextCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_66;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_16000.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"entityName"}];

  if (!fetchCopy)
  {
    goto LABEL_65;
  }

LABEL_4:
  if (contextCopy)
  {
    goto LABEL_5;
  }

LABEL_66:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_16000.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_5:
  v14 = PLMigrationGetLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    logger = [(PLModelMigrationActionCore *)self logger];

    if (logger)
    {
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
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

      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v88 = 138543618;
      v89 = v20;
      v90 = 2114;
      v91 = namedCopy;
      v21 = _os_log_send_and_compose_impl(v18, 0, buf, 512, &dword_19BF1F000, v17, 0, "%{public}@: Zeroing out cached counts for entity: %{public}@...", &v88, 22);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{144, 0}];

      if (v21 != buf)
      {
        free(v21);
      }
    }

    else
    {
      v23 = PLMigrationGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = namedCopy;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Zeroing out cached counts for entity: %{public}@...", buf, 0x16u);
      }
    }
  }

  v26 = +[PLPhotosHighlight entityName];
  v94[0] = @"photoAssetsSuggestedByPhotosCount";
  v94[1] = @"videoAssetsSuggestedByPhotosCount";
  v95[0] = &unk_1F0FBC028;
  v95[1] = &unk_1F0FBC028;
  v94[2] = @"assetsCount";
  v94[3] = @"assetsCountShared";
  v95[2] = &unk_1F0FBC028;
  v95[3] = &unk_1F0FBC028;
  v94[4] = @"summaryCount";
  v94[5] = @"summaryCountShared";
  v95[4] = &unk_1F0FBC028;
  v95[5] = &unk_1F0FBC028;
  v94[6] = @"extendedCount";
  v94[7] = @"extendedCountShared";
  v95[6] = &unk_1F0FBC028;
  v95[7] = &unk_1F0FBC028;
  v94[8] = @"dayGroupAssetsCount";
  v94[9] = @"dayGroupAssetsCountShared";
  v95[8] = &unk_1F0FBC028;
  v95[9] = &unk_1F0FBC028;
  v94[10] = @"dayGroupSummaryAssetsCount";
  v94[11] = @"dayGroupSummaryAssetsCountShared";
  v95[10] = &unk_1F0FBC028;
  v95[11] = &unk_1F0FBC028;
  v94[12] = @"dayGroupExtendedAssetsCount";
  v94[13] = @"dayGroupExtendedAssetsCountShared";
  v95[12] = &unk_1F0FBC028;
  v95[13] = &unk_1F0FBC028;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:v94 count:14];
  v87 = 0;
  v28 = [PLModelMigrator executeBatchUpdateWithEntityName:v26 predicate:0 propertiesToUpdate:v27 managedObjectContext:contextCopy error:&v87];
  v29 = v87;

  if (v28)
  {

    v30 = PLMigrationGetLog();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

    if (v31)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v88 = 138543618;
        v89 = v36;
        v90 = 2114;
        v91 = namedCopy;
        LODWORD(v86) = 22;
        v37 = _os_log_send_and_compose_impl(v34, 0, buf, 512, &dword_19BF1F000, v33, 0, "%{public}@: Recalculating shared asset container values for entity: %{public}@...", &v88, v86);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v37 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{173, 0}];

        if (v37 != buf)
        {
          free(v37);
        }
      }

      else
      {
        v48 = PLMigrationGetLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          *buf = 138543618;
          *&buf[4] = v50;
          *&buf[12] = 2114;
          *&buf[14] = namedCopy;
          _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@: Recalculating shared asset container values for entity: %{public}@...", buf, 0x16u);
        }
      }
    }

    v29 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:namedCopy];
    [v29 setFetchBatchSize:100];
    [v29 setPropertiesToFetch:fetchCopy];
    v51 = [contextCopy executeFetchRequest:v29 error:error];
    if (v51)
    {
      v52 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v51 withBlock:&__block_literal_global_23927];
      *error = v52;
      if (!v52)
      {
        v71 = 1;
LABEL_61:

        goto LABEL_62;
      }

      v53 = PLMigrationGetLog();
      v54 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);

      if (!v54)
      {
        goto LABEL_60;
      }

      logger5 = [(PLModelMigrationActionCore *)self logger];

      if (!logger5)
      {
        v75 = PLMigrationGetLog();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v76 = objc_opt_class();
          v77 = NSStringFromClass(v76);
          v78 = *error;
          *buf = 138543874;
          *&buf[4] = v77;
          *&buf[12] = 2114;
          *&buf[14] = namedCopy;
          *&buf[22] = 2112;
          *&buf[24] = v78;
          _os_log_impl(&dword_19BF1F000, v75, OS_LOG_TYPE_ERROR, "%{public}@: Failed to enumerate and save shared container updates for entity: %{public}@ with error: %@", buf, 0x20u);
        }

        goto LABEL_60;
      }

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v56 = PLMigrationGetLog();
      v57 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR) ? 3 : 2;
      v58 = objc_opt_class();
      v59 = NSStringFromClass(v58);
      v60 = *error;
      v88 = 138543874;
      v89 = v59;
      v90 = 2114;
      v91 = namedCopy;
      v92 = 2112;
      v93 = v60;
      LODWORD(v86) = 32;
      v61 = _os_log_send_and_compose_impl(v57, 0, buf, 512, &dword_19BF1F000, v56, 16, "%{public}@: Failed to enumerate and save shared container updates for entity: %{public}@ with error: %@", &v88, v86);

      logger6 = [(PLModelMigrationActionCore *)self logger];
      [logger6 logWithMessage:v61 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{186, 16}];

      if (v61 == buf)
      {
LABEL_60:
        v71 = 3;
        goto LABEL_61;
      }
    }

    else
    {
      v63 = PLMigrationGetLog();
      v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);

      if (!v64)
      {
        goto LABEL_60;
      }

      logger7 = [(PLModelMigrationActionCore *)self logger];

      if (!logger7)
      {
        v79 = PLMigrationGetLog();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          v80 = *error;
          *buf = 138412290;
          *&buf[4] = v80;
          _os_log_impl(&dword_19BF1F000, v79, OS_LOG_TYPE_DEFAULT, "Failed to execute fetch request with Error: %@", buf, 0xCu);
        }

        goto LABEL_60;
      }

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v66 = PLMigrationGetLog();
      v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
      v68 = *error;
      v69 = v67 ? 3 : 2;
      v88 = 138412290;
      v89 = v68;
      LODWORD(v86) = 12;
      v61 = _os_log_send_and_compose_impl(v69, 0, buf, 512, &dword_19BF1F000, v66, 0, "Failed to execute fetch request with Error: %@", &v88, v86);

      logger8 = [(PLModelMigrationActionCore *)self logger];
      [logger8 logWithMessage:v61 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{190, 0}];

      if (v61 == buf)
      {
        goto LABEL_60;
      }
    }

    free(v61);
    goto LABEL_60;
  }

  v39 = PLMigrationGetLog();
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);

  if (v40)
  {
    logger9 = [(PLModelMigrationActionCore *)self logger];

    if (logger9)
    {
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v42 = PLMigrationGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = 3;
      }

      else
      {
        v43 = 2;
      }

      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v88 = 138543618;
      v89 = v45;
      v90 = 2114;
      v91 = v29;
      LODWORD(v86) = 22;
      v46 = _os_log_send_and_compose_impl(v43, 0, buf, 512, &dword_19BF1F000, v42, 16, "Failed to execute batch update request for %{public}@. Error: %{public}@", &v88, v86);

      logger10 = [(PLModelMigrationActionCore *)self logger];
      [logger10 logWithMessage:v46 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{167, 16}];

      if (v46 != buf)
      {
        free(v46);
      }
    }

    else
    {
      v72 = PLMigrationGetLog();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v73 = objc_opt_class();
        v74 = NSStringFromClass(v73);
        *buf = 138543618;
        *&buf[4] = v74;
        *&buf[12] = 2114;
        *&buf[14] = v29;
        _os_log_impl(&dword_19BF1F000, v72, OS_LOG_TYPE_ERROR, "Failed to execute batch update request for %{public}@. Error: %{public}@", buf, 0x16u);
      }
    }
  }

  v71 = 3;
LABEL_62:

  return v71;
}

@end