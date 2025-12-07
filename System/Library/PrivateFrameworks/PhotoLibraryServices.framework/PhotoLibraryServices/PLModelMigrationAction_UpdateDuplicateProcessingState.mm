@interface PLModelMigrationAction_UpdateDuplicateProcessingState
- (PLModelMigrationAction_UpdateDuplicateProcessingState)updateDuplicateProcessingStateWithProcessingState:(unsigned __int16)state pendingParentUnitCount:(int64_t)count assetProcessingStateMap:(id)map context:(id)context request:(id)request error:(id *)error;
- (id)fetchRequestForAnimated;
- (id)fetchRequestForAudioVideo;
- (id)fetchRequestForDocument;
- (id)fetchRequestForExposureScore;
- (id)fetchRequestForScreenshot;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (int64_t)processAssetStateMap:(id)map pendingParentUnitCount:(int64_t)count context:(id)context error:(id *)error;
- (int64_t)updateSceneClassificationDuplicateProcessingStateWithProcessingState:(unsigned __int16)state pendingParentUnitCount:(int64_t)count assetProcessingStateMap:(id)map context:(id)context request:(id)request error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateDuplicateProcessingState

- (PLModelMigrationAction_UpdateDuplicateProcessingState)updateDuplicateProcessingStateWithProcessingState:(unsigned __int16)state pendingParentUnitCount:(int64_t)count assetProcessingStateMap:(id)map context:(id)context request:(id)request error:(id *)error
{
  stateCopy = state;
  v78 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  contextCopy = context;
  requestCopy = request;
  v40 = 0;
  v17 = [contextCopy executeFetchRequest:requestCopy error:&v40];
  v18 = v40;
  if (objc_msgSend_count(v17))
  {
    context = objc_autoreleasePoolPush();
    v19 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v17) pendingParentUnitCount:count];
    v20 = [MEMORY[0x1E695DFD8] setWithArray:v17];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:stateCopy];
    [mapCopy setObject:v20 forKeyedSubscript:v21];

    v22 = PLMigrationGetLog();
    LODWORD(v20) = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
        v38 = v18;
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
        memset(buf, 0, sizeof(buf));
        v24 = PLMigrationGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = objc_msgSend_count(v17);
        v41 = 138543874;
        v42 = v27;
        v43 = 2050;
        v44 = v28;
        v45 = 1024;
        v46 = stateCopy;
        v29 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_19BF1F000, v24, 0, "%{public}@: Found %{public}td assets for duplicate processing state: %u", &v41, 28);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v29 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1371, 0}];

        if (v29 != buf)
        {
          free(v29);
        }

        v18 = v38;
      }

      else
      {
        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = objc_msgSend_count(v17);
          *buf = 138543874;
          *&buf[4] = v35;
          *&buf[12] = 2050;
          *&buf[14] = v36;
          *&buf[22] = 1024;
          *&buf[24] = stateCopy;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Found %{public}td assets for duplicate processing state: %u", buf, 0x1Cu);
        }
      }
    }

    [v19 setCompletedUnitCount:{objc_msgSend(v19, "totalUnitCount")}];

    objc_autoreleasePoolPop(context);
    goto LABEL_18;
  }

  if (v17)
  {
LABEL_18:
    v32 = 1;
    goto LABEL_19;
  }

  if (error)
  {
    v31 = v18;
    *error = v18;
  }

  v32 = 3;
LABEL_19:

  return v32;
}

- (int64_t)updateSceneClassificationDuplicateProcessingStateWithProcessingState:(unsigned __int16)state pendingParentUnitCount:(int64_t)count assetProcessingStateMap:(id)map context:(id)context request:(id)request error:(id *)error
{
  stateCopy = state;
  v96 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  contextCopy = context;
  requestCopy = request;
  v57 = 0;
  v17 = [contextCopy executeFetchRequest:requestCopy error:&v57];
  v18 = v57;
  if (objc_msgSend_count(v17))
  {
    v50 = v18;
    v51 = requestCopy;
    v52 = contextCopy;
    v47 = mapCopy;
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v48 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v17) pendingParentUnitCount:count];
    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v53 objects:v95 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v54;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v54 != v23)
          {
            objc_enumerationMutation(v20);
          }

          assetAttributes = [*(*(&v53 + 1) + 8 * i) assetAttributes];
          asset = [assetAttributes asset];
          objectID = [asset objectID];

          if (objectID)
          {
            [v19 addObject:objectID];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v53 objects:v95 count:16];
      }

      while (v22);
    }

    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:stateCopy];
    mapCopy = v47;
    [v47 setObject:v19 forKeyedSubscript:v28];

    v29 = PLMigrationGetLog();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

    if (v30)
    {
      logger = [(PLModelMigrationActionCore *)selfCopy logger];

      if (logger)
      {
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
        v65 = 0u;
        v66 = 0u;
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

        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = objc_msgSend_count(v20);
        v58 = 138543874;
        v59 = v35;
        v60 = 2050;
        v61 = v36;
        v62 = 1024;
        v63 = stateCopy;
        v37 = _os_log_send_and_compose_impl(v33, 0, buf, 512, &dword_19BF1F000, v32, 0, "%{public}@: Found %{public}td assets for duplicate processing state: %u", &v58, 28);

        logger2 = [(PLModelMigrationActionCore *)selfCopy logger];
        [logger2 logWithMessage:v37 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1351, 0}];

        if (v37 != buf)
        {
          free(v37);
        }
      }

      else
      {
        v41 = PLMigrationGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          v44 = objc_msgSend_count(v20);
          *buf = 138543874;
          *&buf[4] = v43;
          *&buf[12] = 2050;
          *&buf[14] = v44;
          *&buf[22] = 1024;
          *&buf[24] = stateCopy;
          _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: Found %{public}td assets for duplicate processing state: %u", buf, 0x1Cu);
        }
      }
    }

    [v48 setCompletedUnitCount:{objc_msgSend(v48, "totalUnitCount")}];

    objc_autoreleasePoolPop(context);
    v39 = 1;
    requestCopy = v51;
    contextCopy = v52;
    v18 = v50;
  }

  else if (v17)
  {
    v39 = 1;
  }

  else
  {
    if (error)
    {
      v40 = v18;
      *error = v18;
    }

    v39 = 3;
  }

  return v39;
}

- (int64_t)processAssetStateMap:(id)map pendingParentUnitCount:(int64_t)count context:(id)context error:(id *)error
{
  v131 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  contextCopy = context;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 1;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__23792;
  v88 = __Block_byref_object_dispose__23793;
  v89 = 0;
  v66 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  selfCopy = self;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = mapCopy;
  v9 = [obj countByEnumeratingWithState:&v80 objects:v130 count:16];
  if (v9)
  {
    v67 = *v81;
    do
    {
      v10 = 0;
      v68 = v9;
      do
      {
        if (*v81 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v80 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [obj objectForKeyedSubscript:v11];
        v14 = +[PLManagedAsset fetchRequest];
        v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v13];
        [v14 setPredicate:v15];

        v129 = @"additionalAttributes";
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v129 count:1];
        [v14 setRelationshipKeyPathsForPrefetching:v16];

        [v14 setFetchBatchSize:100];
        v17 = v85 + 5;
        v79 = v85[5];
        v18 = [contextCopy executeFetchRequest:v14 error:&v79];
        objc_storeStrong(v17, v79);
        if (objc_msgSend_count(v18))
        {
          v19 = [(PLModelMigrationActionCore *)selfCopy cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v18) pendingParentUnitCount:count];
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __115__PLModelMigrationAction_UpdateDuplicateProcessingState_processAssetStateMap_pendingParentUnitCount_context_error___block_invoke;
          v73[3] = &unk_1E7569CD0;
          v73[4] = v11;
          v74 = v66;
          v75 = selfCopy;
          v77 = &v84;
          v78 = &v90;
          v20 = v19;
          v76 = v20;
          v21 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v18 withBlock:v73];
          v22 = v21;
          v23 = v91[3];
          if (v23 != 2 && v21)
          {
            objc_storeStrong(v85 + 5, v21);
            v91[3] = 3;
            goto LABEL_20;
          }

          if (v23 == 1)
          {
            v24 = PLMigrationGetLog();
            v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

            if (v25)
            {
              logger = [(PLModelMigrationActionCore *)selfCopy logger];
              v27 = logger == 0;

              if (v27)
              {
                v51 = PLMigrationGetLog();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  v52 = objc_opt_class();
                  v53 = NSStringFromClass(v52);
                  v54 = objc_msgSend_count(v18);
                  *buf = 138543618;
                  *&buf[4] = v53;
                  *&buf[12] = 2050;
                  *&buf[14] = v54;
                  _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@: Updated processing state for %{public}td assets.", buf, 0x16u);
                }
              }

              else
              {
                v127 = 0u;
                v128 = 0u;
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
                memset(buf, 0, sizeof(buf));
                v28 = PLMigrationGetLog();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  v29 = 3;
                }

                else
                {
                  v29 = 2;
                }

                v30 = objc_opt_class();
                v31 = NSStringFromClass(v30);
                v32 = objc_msgSend_count(v18);
                v94 = 138543618;
                v95 = v31;
                v96 = 2050;
                v97 = v32;
                LODWORD(v63) = 22;
                v33 = _os_log_send_and_compose_impl(v29, 0, buf, 512, &dword_19BF1F000, v28, 0, "%{public}@: Updated processing state for %{public}td assets.", &v94, v63);

                logger2 = [(PLModelMigrationActionCore *)selfCopy logger];
                [logger2 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1316, 0}];

                if (v33 != buf)
                {
                  free(v33);
                }
              }
            }

            v50 = 0;
            LOBYTE(v36) = 1;
          }

          else
          {
LABEL_20:
            v35 = PLMigrationGetLog();
            v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

            if (v36)
            {
              logger3 = [(PLModelMigrationActionCore *)selfCopy logger];
              v38 = logger3 == 0;

              if (v38)
              {
                v46 = PLMigrationGetLog();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  v47 = objc_opt_class();
                  v48 = NSStringFromClass(v47);
                  v49 = v85[5];
                  *buf = 138543618;
                  *&buf[4] = v48;
                  *&buf[12] = 2114;
                  *&buf[14] = v49;
                  _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
                }
              }

              else
              {
                v127 = 0u;
                v128 = 0u;
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
                memset(buf, 0, sizeof(buf));
                v39 = PLMigrationGetLog();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  v40 = 3;
                }

                else
                {
                  v40 = 2;
                }

                v41 = objc_opt_class();
                v42 = NSStringFromClass(v41);
                v43 = v85[5];
                v94 = 138543618;
                v95 = v42;
                v96 = 2114;
                v97 = v43;
                LODWORD(v63) = 22;
                v44 = _os_log_send_and_compose_impl(v40, 0, buf, 512, &dword_19BF1F000, v39, 16, "Failed to save managed object context for %{public}@. Error: %{public}@", &v94, v63);

                logger4 = [(PLModelMigrationActionCore *)selfCopy logger];
                [logger4 logWithMessage:v44 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1318, 16}];

                if (v44 != buf)
                {
                  free(v44);
                }
              }

              LOBYTE(v36) = 0;
            }

            v50 = 2;
          }

          if (!v36)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        if (!v18)
        {
          v91[3] = 3;
        }

LABEL_37:
        v50 = 0;
LABEL_38:

        objc_autoreleasePoolPop(v12);
        if (v50)
        {
          goto LABEL_41;
        }

        ++v10;
      }

      while (v68 != v10);
      v9 = [obj countByEnumeratingWithState:&v80 objects:v130 count:16];
    }

    while (v9);
  }

LABEL_41:

  if (v91[3] == 1 && objc_msgSend_count(v66))
  {
    v55 = +[PLManagedAsset fetchRequest];
    v56 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v66];
    [v55 setPredicate:v56];

    [v55 setFetchBatchSize:100];
    v57 = v85 + 5;
    v72 = v85[5];
    v58 = [PLModelMigrationActionUtility removeFromDuplicatesWithAction:selfCopy managedObjectContext:contextCopy fetchRequest:v55 requiresLibraryReprocessing:1 error:&v72];
    objc_storeStrong(v57, v72);
    v91[3] = v58;
  }

  v59 = v91[3];
  v60 = v85[5];
  if (v59 != 1 && error)
  {
    v60 = v60;
    *error = v60;
  }

  v61 = v91[3];
  _Block_object_dispose(&v84, 8);

  _Block_object_dispose(&v90, 8);
  return v61;
}

- (id)fetchRequestForDocument
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = +[PLSceneClassification fetchRequest];
  v3 = MEMORY[0x1E696AB28];
  v4 = MEMORY[0x1E696AE18];
  v5 = [PLSceneClassification PLJunkSceneClassificationIDForLabel:@"hier_text_document"];
  v6 = [v4 predicateWithFormat:@"%K == %@", @"sceneIdentifier", v5];
  v13[0] = v6;
  0x3FE2E147AE147AE1 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %lf", @"confidence", 0x3FE2E147AE147AE1];
  v13[1] = 0x3FE2E147AE147AE1;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v9 = [v3 andPredicateWithSubpredicates:v8];
  [v2 setPredicate:v9];

  v12 = @"assetAttributes.asset";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v2 setRelationshipKeyPathsForPrefetching:v10];

  [v2 setFetchBatchSize:100];

  return v2;
}

- (id)fetchRequestForExposureScore
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = +[PLManagedAsset fetchRequest];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
  v9[0] = v4;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %lf", @"mediaAnalysisAttributes.exposureScore", 0];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];
  [v2 setPredicate:v7];

  [v2 setResultType:1];

  return v2;
}

- (id)fetchRequestForAnimated
{
  v2 = +[PLManagedAsset fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"playbackStyle", 2];
  [v2 setPredicate:v3];

  [v2 setResultType:1];

  return v2;
}

- (id)fetchRequestForScreenshot
{
  v2 = +[PLManagedAsset fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kindSubtype", 10];
  [v2 setPredicate:v3];

  [v2 setResultType:1];

  return v2;
}

- (id)fetchRequestForAudioVideo
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = +[PLManagedAsset fetchRequest];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 1];
  v9[0] = v4;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 2];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v3 orPredicateWithSubpredicates:v6];
  [v2 setPredicate:v7];

  [v2 setResultType:1];

  return v2;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  progress = [(PLModelMigrationActionCore *)self progress];
  v8 = [progress totalUnitCount] / 7;

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  fetchRequestForAudioVideo = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self fetchRequestForAudioVideo];
  v30 = 0;
  v11 = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self updateDuplicateProcessingStateWithProcessingState:2 pendingParentUnitCount:v8 assetProcessingStateMap:v9 context:contextCopy request:fetchRequestForAudioVideo error:&v30];
  v12 = v30;

  if (v11 != 1)
  {
    goto LABEL_9;
  }

  fetchRequestForScreenshot = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self fetchRequestForScreenshot];
  v29 = v12;
  v11 = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self updateDuplicateProcessingStateWithProcessingState:4 pendingParentUnitCount:v8 assetProcessingStateMap:v9 context:contextCopy request:fetchRequestForScreenshot error:&v29];
  v14 = v29;

  if (v11 != 1)
  {
    goto LABEL_8;
  }

  fetchRequestForAnimated = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self fetchRequestForAnimated];
  v28 = v14;
  v11 = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self updateDuplicateProcessingStateWithProcessingState:8 pendingParentUnitCount:v8 assetProcessingStateMap:v9 context:contextCopy request:fetchRequestForAnimated error:&v28];
  v12 = v28;

  if (v11 != 1)
  {
    goto LABEL_9;
  }

  fetchRequestForExposureScore = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self fetchRequestForExposureScore];
  v27 = v12;
  v11 = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self updateDuplicateProcessingStateWithProcessingState:32 pendingParentUnitCount:v8 assetProcessingStateMap:v9 context:contextCopy request:fetchRequestForExposureScore error:&v27];
  v14 = v27;

  if (v11 == 1)
  {
    fetchRequestForDocument = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self fetchRequestForDocument];
    v26 = v14;
    v11 = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self updateSceneClassificationDuplicateProcessingStateWithProcessingState:16 pendingParentUnitCount:v8 assetProcessingStateMap:v9 context:contextCopy request:fetchRequestForDocument error:&v26];
    v12 = v26;

    if (v11 == 1)
    {
      if (objc_msgSend_count(v9))
      {
        v18 = objc_autoreleasePoolPush();
        v25 = v12;
        v11 = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self processAssetStateMap:v9 pendingParentUnitCount:v8 context:contextCopy error:&v25];
        v19 = v25;

        objc_autoreleasePoolPop(v18);
        v12 = v19;
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = v14;
  }

LABEL_9:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v20 = v12;
  v21 = v20;
  if (v11 != 1 && error != 0)
  {
    v23 = v20;
    *error = v21;
  }

  return v11;
}

@end