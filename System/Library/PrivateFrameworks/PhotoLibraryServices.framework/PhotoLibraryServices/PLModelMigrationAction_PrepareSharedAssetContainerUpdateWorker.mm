@interface PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker
- (BOOL)_insertWorkItemsForAssetObjectIDs:(id)ds inManagedObjectContext:(id)context error:(id *)error;
- (int64_t)_markEntireLibraryNeedingProcessingWithManagedObjectContext:(id)context error:(id *)error;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker

- (int64_t)_markEntireLibraryNeedingProcessingWithManagedObjectContext:(id)context error:(id *)error
{
  v148 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = PLMigrationGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    logger = [(PLModelMigrationActionBackground *)self logger];

    if (logger)
    {
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
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
      buf = 0u;
      v117 = 0u;
      v10 = PLMigrationGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      LOWORD(v113) = 0;
      v12 = _os_log_send_and_compose_impl(v11, 0, &buf, 512, &dword_19BF1F000, v10, 0, "Marking the entire library as needing processing", &v113, 2);

      logger2 = [(PLModelMigrationActionBackground *)self logger];
      [logger2 logWithMessage:v12 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2121, 0}];

      if (v12 != &buf)
      {
        free(v12);
      }
    }

    else
    {
      v14 = PLMigrationGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Marking the entire library as needing processing", &buf, 2u);
      }
    }
  }

  v15 = objc_alloc(MEMORY[0x1E695D5E0]);
  v16 = +[PLMemory entityName];
  v17 = [v15 initWithEntityName:v16];

  [v17 setResultType:2];
  v115[0] = @"objectID";
  v115[1] = @"uuid";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];
  [v17 setPropertiesToFetch:v18];

  [v17 setFetchBatchSize:100];
  v109 = 0;
  v19 = [contextCopy executeFetchRequest:v17 error:&v109];
  v20 = v109;
  v21 = PLMigrationGetLog();
  v22 = v21;
  if (!v19)
  {
    v30 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v30)
    {
      logger3 = [(PLModelMigrationActionBackground *)self logger];

      if (!logger3)
      {
        v88 = PLMigrationGetLog();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v20;
          _os_log_impl(&dword_19BF1F000, v88, OS_LOG_TYPE_ERROR, "Failed to fetch memories for entire library: %@", &buf, 0xCu);
        }

        if (!error)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
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
      buf = 0u;
      v117 = 0u;
      v32 = PLMigrationGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v113 = 138412290;
      v114 = v20;
      LODWORD(v94) = 12;
      v34 = _os_log_send_and_compose_impl(v33, 0, &buf, 512, &dword_19BF1F000, v32, 16, "Failed to fetch memories for entire library: %@", &v113, v94);

      logger4 = [(PLModelMigrationActionBackground *)self logger];
      [logger4 logWithMessage:v34 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2132, 16}];

      if (v34 != &buf)
      {
        free(v34);
      }
    }

    if (!error)
    {
LABEL_28:

LABEL_88:
      v80 = 3;
      goto LABEL_89;
    }

LABEL_27:
    v36 = v20;
    *error = v20;
    goto LABEL_28;
  }

  v97 = v20;
  errorCopy = error;
  v23 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

  if (v23)
  {
    logger5 = [(PLModelMigrationActionBackground *)self logger];

    if (logger5)
    {
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
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
      buf = 0u;
      v117 = 0u;
      v25 = PLMigrationGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v27 = objc_msgSend_count(v19);
      v113 = 134217984;
      v114 = v27;
      v28 = _os_log_send_and_compose_impl(v26, 0, &buf, 512, &dword_19BF1F000, v25, 0, "Inserting work items for %tu memories", &v113);

      logger6 = [(PLModelMigrationActionBackground *)self logger];
      [logger6 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2136, 0}];

      if (v28 != &buf)
      {
        free(v28);
      }
    }

    else
    {
      v37 = PLMigrationGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = objc_msgSend_count(v19);
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v38;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Inserting work items for %tu memories", &buf, 0xCu);
      }
    }
  }

  selfCopy = self;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v39 = v19;
  v40 = [v39 countByEnumeratingWithState:&v105 objects:v112 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v106;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v106 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v105 + 1) + 8 * i);
        photoLibrary = [contextCopy photoLibrary];
        v46 = [v44 objectForKeyedSubscript:@"uuid"];
        v47 = [photoLibrary addBackgroundJobWorkItemWithIdentifier:v46 jobType:9 jobFlags:2];
      }

      v41 = [v39 countByEnumeratingWithState:&v105 objects:v112 count:16];
    }

    while (v41);
  }

  v48 = objc_alloc(MEMORY[0x1E695D5E0]);
  v49 = +[PLSuggestion entityName];
  v17 = [v48 initWithEntityName:v49];

  [v17 setResultType:2];
  v111[0] = @"objectID";
  v111[1] = @"uuid";
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:2];
  [v17 setPropertiesToFetch:v50];

  [v17 setFetchBatchSize:100];
  v104 = 0;
  v51 = [contextCopy executeFetchRequest:v17 error:&v104];
  v52 = v104;
  v53 = PLMigrationGetLog();
  v54 = v53;
  if (!v51)
  {
    v62 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);

    if (v62)
    {
      logger7 = [(PLModelMigrationActionBackground *)selfCopy logger];

      if (logger7)
      {
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
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
        buf = 0u;
        v117 = 0u;
        v64 = PLMigrationGetLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        v113 = 138412290;
        v114 = v52;
        LODWORD(v94) = 12;
        v66 = _os_log_send_and_compose_impl(v65, 0, &buf, 512, &dword_19BF1F000, v64, 16, "Failed to fetch suggestions for entire library: %@", &v113, v94);

        logger8 = [(PLModelMigrationActionBackground *)selfCopy logger];
        [logger8 logWithMessage:v66 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2151, 16}];

        if (v66 != &buf)
        {
          free(v66);
        }
      }

      else
      {
        v89 = PLMigrationGetLog();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v52;
          _os_log_impl(&dword_19BF1F000, v89, OS_LOG_TYPE_ERROR, "Failed to fetch suggestions for entire library: %@", &buf, 0xCu);
        }
      }
    }

    if (errorCopy)
    {
      v90 = v52;
      *errorCopy = v52;
    }

    goto LABEL_88;
  }

  v98 = v52;
  v55 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);

  if (v55)
  {
    logger9 = [(PLModelMigrationActionBackground *)selfCopy logger];

    if (logger9)
    {
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
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
      buf = 0u;
      v117 = 0u;
      v57 = PLMigrationGetLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = 3;
      }

      else
      {
        v58 = 2;
      }

      v59 = objc_msgSend_count(v51);
      v113 = 134217984;
      v114 = v59;
      v60 = _os_log_send_and_compose_impl(v58, 0, &buf, 512, &dword_19BF1F000, v57, 0, "Inserting work items for %tu suggestions", &v113);

      logger10 = [(PLModelMigrationActionBackground *)selfCopy logger];
      [logger10 logWithMessage:v60 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2155, 0}];

      if (v60 != &buf)
      {
        free(v60);
      }
    }

    else
    {
      v68 = PLMigrationGetLog();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = objc_msgSend_count(v51);
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v69;
        _os_log_impl(&dword_19BF1F000, v68, OS_LOG_TYPE_DEFAULT, "Inserting work items for %tu suggestions", &buf, 0xCu);
      }
    }
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v70 = v51;
  v71 = [v70 countByEnumeratingWithState:&v100 objects:v110 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v101;
    do
    {
      for (j = 0; j != v72; ++j)
      {
        if (*v101 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = *(*(&v100 + 1) + 8 * j);
        photoLibrary2 = [contextCopy photoLibrary];
        v77 = [v75 objectForKeyedSubscript:@"uuid"];
        v78 = [photoLibrary2 addBackgroundJobWorkItemWithIdentifier:v77 jobType:9 jobFlags:4];
      }

      v72 = [v70 countByEnumeratingWithState:&v100 objects:v110 count:16];
    }

    while (v72);
  }

  v99 = 0;
  v79 = [contextCopy save:&v99];
  v17 = v99;
  if ((v79 & 1) == 0)
  {
    v81 = PLMigrationGetLog();
    v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);

    if (v82)
    {
      logger11 = [(PLModelMigrationActionBackground *)selfCopy logger];

      if (logger11)
      {
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
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
        buf = 0u;
        v117 = 0u;
        v84 = PLMigrationGetLog();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v85 = 3;
        }

        else
        {
          v85 = 2;
        }

        v113 = 138412290;
        v114 = v17;
        LODWORD(v94) = 12;
        v86 = _os_log_send_and_compose_impl(v85, 0, &buf, 512, &dword_19BF1F000, v84, 0, "Saving work items failed. Error: %@", &v113, v94);

        logger12 = [(PLModelMigrationActionBackground *)selfCopy logger];
        [logger12 logWithMessage:v86 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2163, 0}];

        if (v86 != &buf)
        {
          free(v86);
        }
      }

      else
      {
        v91 = PLMigrationGetLog();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v17;
          _os_log_impl(&dword_19BF1F000, v91, OS_LOG_TYPE_DEFAULT, "Saving work items failed. Error: %@", &buf, 0xCu);
        }
      }
    }

    if (errorCopy)
    {
      v92 = v17;
      *errorCopy = v17;
    }

    goto LABEL_88;
  }

  v80 = 1;
LABEL_89:

  return v80;
}

- (BOOL)_insertWorkItemsForAssetObjectIDs:(id)ds inManagedObjectContext:(id)context error:(id *)error
{
  v119[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  if (objc_msgSend_count(dsCopy))
  {
    v10 = MEMORY[0x1E695D5E0];
    v11 = +[PLManagedAsset entityName];
    v12 = [v10 fetchRequestWithEntityName:v11];

    [v12 setResultType:2];
    v119[0] = @"uuid";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:1];
    [v12 setPropertiesToFetch:v13];

    dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", dsCopy];
    [v12 setPredicate:dsCopy];

    v83 = 0;
    v15 = [contextCopy executeFetchRequest:v12 error:&v83];
    v16 = v83;
    if (v15)
    {
      v77 = contextCopy;
      if (objc_msgSend_count(v15))
      {
        v73 = dsCopy;
        v74 = v16;
        v71 = v15;
        selfCopy = self;
        v72 = v12;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v79 objects:v84 count:16];
        v75 = v17;
        if (v18)
        {
          v19 = v18;
          v20 = *v80;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v80 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [*(*(&v79 + 1) + 8 * i) objectForKeyedSubscript:@"uuid"];
              if (v22)
              {
                v23 = [PLBackgroundJobWorkItem insertBackgroundJobWorkItemWithIdentifier:v22 jobType:9 jobFlags:1 inManagedObjectContext:contextCopy];
              }

              else
              {
                v24 = PLMigrationGetLog();
                v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);

                contextCopy = v77;
                if (v25)
                {
                  logger = [(PLModelMigrationActionBackground *)self logger];

                  if (logger)
                  {
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
                    v95 = 0u;
                    v96 = 0u;
                    v93 = 0u;
                    v94 = 0u;
                    v91 = 0u;
                    v92 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    buf = 0u;
                    v88 = 0u;
                    v27 = PLMigrationGetLog();
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                    {
                      v28 = 3;
                    }

                    else
                    {
                      v28 = 2;
                    }

                    LOWORD(v85) = 0;
                    LODWORD(v70) = 2;
                    v29 = _os_log_send_and_compose_impl(v28, 0, &buf, 512, &dword_19BF1F000, v27, 1, "Failed to get uuid for asset", &v85, v70);

                    logger2 = [(PLModelMigrationActionBackground *)self logger];
                    [logger2 logWithMessage:v29 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2104, 1}];

                    if (v29 != &buf)
                    {
                      free(v29);
                    }
                  }

                  else
                  {
                    v31 = PLMigrationGetLog();
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                    {
                      LOWORD(buf) = 0;
                      _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_INFO, "Failed to get uuid for asset", &buf, 2u);
                    }
                  }

                  contextCopy = v77;
                  v17 = v75;
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v79 objects:v84 count:16];
          }

          while (v19);
        }

        v78 = v74;
        v32 = [contextCopy save:&v78];
        v33 = v78;

        v34 = PLMigrationGetLog();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

        if ((v32 & 1) == 0)
        {
          v12 = v72;
          dsCopy = v73;
          contextCopy = v77;
          v15 = v71;
          if (v35)
          {
            logger3 = [(PLModelMigrationActionBackground *)selfCopy logger];

            if (logger3)
            {
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
              v95 = 0u;
              v96 = 0u;
              v93 = 0u;
              v94 = 0u;
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              buf = 0u;
              v88 = 0u;
              v59 = PLMigrationGetLog();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                v60 = 3;
              }

              else
              {
                v60 = 2;
              }

              v85 = 138412290;
              v86 = v33;
              LODWORD(v70) = 12;
              v61 = _os_log_send_and_compose_impl(v60, 0, &buf, 512, &dword_19BF1F000, v59, 0, "Saving work items failed. Error: %@", &v85, v70);

              logger4 = [(PLModelMigrationActionBackground *)selfCopy logger];
              [logger4 logWithMessage:v61 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2111, 0}];

              if (v61 != &buf)
              {
                free(v61);
              }
            }

            else
            {
              v67 = PLMigrationGetLog();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v33;
                _os_log_impl(&dword_19BF1F000, v67, OS_LOG_TYPE_DEFAULT, "Saving work items failed. Error: %@", &buf, 0xCu);
              }
            }
          }

          if (error)
          {
            v68 = v33;
            v42 = 0;
            *error = v33;
          }

          else
          {
            v42 = 0;
          }

          goto LABEL_76;
        }

        v12 = v72;
        dsCopy = v73;
        v15 = v71;
        if (v35)
        {
          logger5 = [(PLModelMigrationActionBackground *)selfCopy logger];

          if (logger5)
          {
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
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            buf = 0u;
            v88 = 0u;
            v37 = PLMigrationGetLog();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = 3;
            }

            else
            {
              v38 = 2;
            }

            v39 = objc_msgSend_count(v75);
            v85 = 134217984;
            v86 = v39;
            v40 = _os_log_send_and_compose_impl(v38, 0, &buf, 512, &dword_19BF1F000, v37, 0, "Inserted work items for %tu assets", &v85);

            logger6 = [(PLModelMigrationActionBackground *)selfCopy logger];
            [logger6 logWithMessage:v40 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2115, 0}];

            contextCopy = v77;
            if (v40 != &buf)
            {
              free(v40);
            }
          }

          else
          {
            v65 = PLMigrationGetLog();
            contextCopy = v77;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              v66 = objc_msgSend_count(v75);
              LODWORD(buf) = 134217984;
              *(&buf + 4) = v66;
              _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_DEFAULT, "Inserted work items for %tu assets", &buf, 0xCu);
            }
          }

          v42 = 1;
LABEL_76:
          v16 = v33;
          goto LABEL_77;
        }

        v42 = 1;
        v16 = v33;
      }

      else
      {
        v51 = PLMigrationGetLog();
        v42 = 1;
        v52 = os_log_type_enabled(v51, OS_LOG_TYPE_INFO);

        if (v52)
        {
          logger7 = [(PLModelMigrationActionBackground *)self logger];

          if (logger7)
          {
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
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            buf = 0u;
            v88 = 0u;
            v54 = PLMigrationGetLog();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              v55 = 3;
            }

            else
            {
              v55 = 2;
            }

            LOWORD(v85) = 0;
            v56 = _os_log_send_and_compose_impl(v55, 0, &buf, 512, &dword_19BF1F000, v54, 1, "Found no assets for object ids", &v85, 2);

            logger8 = [(PLModelMigrationActionBackground *)self logger];
            [logger8 logWithMessage:v56 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2096, 1}];

            contextCopy = v77;
            if (v56 != &buf)
            {
              free(v56);
            }

            v42 = 1;
          }

          else
          {
            v64 = PLMigrationGetLog();
            contextCopy = v77;
            if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_19BF1F000, v64, OS_LOG_TYPE_INFO, "Found no assets for object ids", &buf, 2u);
            }

            v42 = 1;
          }

          goto LABEL_77;
        }
      }

      contextCopy = v77;
LABEL_77:

      goto LABEL_78;
    }

    v43 = PLMigrationGetLog();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);

    if (v44)
    {
      logger9 = [(PLModelMigrationActionBackground *)self logger];

      if (!logger9)
      {
        v63 = PLMigrationGetLog();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v16;
          _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_DEFAULT, "Failed to fetch assets. Error: %@", &buf, 0xCu);
        }

        if (error)
        {
          goto LABEL_41;
        }

        goto LABEL_62;
      }

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
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      buf = 0u;
      v88 = 0u;
      v46 = PLMigrationGetLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = 3;
      }

      else
      {
        v47 = 2;
      }

      v85 = 138412290;
      v86 = v16;
      v48 = _os_log_send_and_compose_impl(v47, 0, &buf, 512, &dword_19BF1F000, v46, 0, "Failed to fetch assets. Error: %@", &v85, 12);

      logger10 = [(PLModelMigrationActionBackground *)self logger];
      [logger10 logWithMessage:v48 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2090, 0}];

      if (v48 != &buf)
      {
        free(v48);
      }
    }

    if (error)
    {
LABEL_41:
      v50 = v16;
      v42 = 0;
      *error = v16;
      goto LABEL_77;
    }

LABEL_62:
    v42 = 0;
    goto LABEL_77;
  }

  v42 = 1;
LABEL_78:

  return v42;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v127 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v69 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];
  if (([(PLGlobalValues *)v69 libraryCreateOptions]& 0x40) == 0)
  {
    errorCopy = error;
    v66 = [PLModelMigrationActionUtility getHistoryTokenWithAction:self key:@"LastSharedAssetContainerUpdateToken" managedObjectContext:contextCopy];
    if (v66)
    {
      if ([PLModelMigrationActionUtility shouldProcessHistoryTokenWithAction:self token:v66 cutoffPercent:contextCopy managedObjectContext:0.5])
      {
        v84 = 0;
        v70 = [PLPersistentHistoryTransactionIterator iteratorSinceToken:v66 withManagedObjectObjectContext:contextCopy error:&v84];
        v7 = v84;
        if (v70)
        {
          v8 = MEMORY[0x1E695D5B8];
          v9 = +[PLManagedAsset entityName];
          v68 = [v8 entityForName:v9 inManagedObjectContext:contextCopy];

          relationshipsByName = [v68 relationshipsByName];
          v67 = [relationshipsByName objectForKeyedSubscript:@"libraryScope"];

          v11 = 0;
          *&v92 = 0;
          *(&v92 + 1) = &v92;
          v93 = 0x2020000000;
          v94 = 0;
          v12 = 1;
          do
          {
            if (![v70 hasMoreTransactions])
            {
              break;
            }

            v13 = objc_autoreleasePoolPush();
            v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            *&v89 = 0;
            *(&v89 + 1) = &v89;
            v90 = 0x2020000000;
            v91 = 0;
            v76[0] = MEMORY[0x1E69E9820];
            v76[1] = 3221225472;
            v76[2] = __110__PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker_performActionWithManagedObjectContext_error___block_invoke;
            v76[3] = &unk_1E7564C00;
            v81 = &v92;
            v82 = &v89;
            v77 = v68;
            v78 = v67;
            v15 = v14;
            v79 = v15;
            selfCopy = self;
            [v70 enumerateRemainingTransactionsWithBlock:v76];
            v75 = v7;
            v16 = [(PLModelMigrationActionBackground *)self isCancelledWithResumeMarker:0 error:&v75];
            v17 = v75;

            if (v16)
            {
              v18 = 0;
              v11 = 1;
              v12 = 2;
              v7 = v17;
            }

            else
            {
              v19 = [v15 copy];
              v74 = v17;
              v20 = [(PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker *)self _insertWorkItemsForAssetObjectIDs:v19 inManagedObjectContext:contextCopy error:&v74];
              v21 = v74;

              if (v20)
              {
                lastIteratedToken = [v70 lastIteratedToken];
                [PLModelMigrationActionUtility setHistoryTokenWithAction:self key:@"LastSharedAssetContainerUpdateToken" value:lastIteratedToken managedObjectContext:contextCopy];

                v72 = v21;
                LOBYTE(lastIteratedToken) = [contextCopy save:&v72];
                v7 = v72;

                if (lastIteratedToken)
                {
                  v18 = 1;
                }

                else
                {
                  v23 = PLMigrationGetLog();
                  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

                  if (v24)
                  {
                    logger = [(PLModelMigrationActionBackground *)self logger];
                    v26 = logger == 0;

                    if (v26)
                    {
                      v31 = PLMigrationGetLog();
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                      {
                        LODWORD(buf) = 138412290;
                        *(&buf + 4) = v7;
                        _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Failed to update history token. Error: %@", &buf, 0xCu);
                      }
                    }

                    else
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
                      buf = 0u;
                      v96 = 0u;
                      v27 = PLMigrationGetLog();
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                      {
                        v28 = 3;
                      }

                      else
                      {
                        v28 = 2;
                      }

                      v87 = 138412290;
                      v88 = v7;
                      LODWORD(v64) = 12;
                      v29 = _os_log_send_and_compose_impl(v28, 0, &buf, 512, &dword_19BF1F000, v27, 0, "Failed to update history token. Error: %@", &v87, v64);

                      logger2 = [(PLModelMigrationActionBackground *)self logger];
                      [logger2 logWithMessage:v29 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2050, 0}];

                      if (v29 != &buf)
                      {
                        free(v29);
                      }
                    }
                  }

                  v18 = 0;
                  v11 = 1;
                  v12 = 3;
                }
              }

              else
              {
                v73 = v21;
                v12 = [(PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker *)self _markEntireLibraryNeedingProcessingWithManagedObjectContext:contextCopy error:&v73];
                v7 = v73;

                v18 = 0;
                v11 = 1;
              }
            }

            _Block_object_dispose(&v89, 8);
            objc_autoreleasePoolPop(v13);
          }

          while ((v18 & 1) != 0);
          if (v11)
          {
            v32 = v7;
            v33 = v32;
            if (v12 != 1 && errorCopy)
            {
              v34 = v32;
              *errorCopy = v33;
            }
          }

          else
          {
            photoLibrary = [contextCopy photoLibrary];
            [photoLibrary signalBackgroundProcessingNeeded];

            [PLModelMigrationActionUtility setHistoryTokenWithAction:self key:@"LastSharedAssetContainerUpdateToken" value:0 managedObjectContext:contextCopy];
            v71 = v7;
            LOBYTE(photoLibrary) = [contextCopy save:&v71];
            v33 = v71;

            if (photoLibrary)
            {
              [(PLModelMigrationActionBackground *)self finalizeProgress];
              v12 = 1;
            }

            else
            {
              v53 = PLMigrationGetLog();
              v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);

              if (v54)
              {
                logger3 = [(PLModelMigrationActionBackground *)self logger];
                v56 = logger3 == 0;

                if (v56)
                {
                  v62 = PLMigrationGetLog();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf) = 138412290;
                    *(&buf + 4) = v33;
                    _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_DEFAULT, "Failed to delete history token. Error: %@", &buf, 0xCu);
                  }
                }

                else
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
                  buf = 0u;
                  v96 = 0u;
                  v57 = PLMigrationGetLog();
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                  {
                    v58 = 3;
                  }

                  else
                  {
                    v58 = 2;
                  }

                  LODWORD(v89) = 138412290;
                  *(&v89 + 4) = v33;
                  LODWORD(v64) = 12;
                  v59 = _os_log_send_and_compose_impl(v58, 0, &buf, 512, &dword_19BF1F000, v57, 0, "Failed to delete history token. Error: %@", &v89, v64);

                  logger4 = [(PLModelMigrationActionBackground *)self logger];
                  [logger4 logWithMessage:v59 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2069, 0}];

                  if (v59 != &buf)
                  {
                    free(v59);
                  }
                }
              }

              v12 = 3;
            }
          }

          _Block_object_dispose(&v92, 8);

          v7 = v68;
        }

        else
        {
          v44 = PLMigrationGetLog();
          v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);

          if (v45)
          {
            logger5 = [(PLModelMigrationActionBackground *)self logger];
            v47 = logger5 == 0;

            if (v47)
            {
              v61 = PLMigrationGetLog();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v7;
                _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_DEFAULT, "Failed to create persistent history transaction iterator. Error: %@", &buf, 0xCu);
              }
            }

            else
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
              buf = 0u;
              v96 = 0u;
              v48 = PLMigrationGetLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                v49 = 3;
              }

              else
              {
                v49 = 2;
              }

              LODWORD(v92) = 138412290;
              *(&v92 + 4) = v7;
              v50 = _os_log_send_and_compose_impl(v49, 0, &buf, 512, &dword_19BF1F000, v48, 0, "Failed to create persistent history transaction iterator. Error: %@", &v92, 12);

              logger6 = [(PLModelMigrationActionBackground *)self logger];
              [logger6 logWithMessage:v50 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1997, 0}];

              if (v50 != &buf)
              {
                free(v50);
              }
            }
          }

          v83 = v7;
          v12 = [(PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker *)self _markEntireLibraryNeedingProcessingWithManagedObjectContext:contextCopy error:&v83];
          v33 = v83;
        }

        goto LABEL_70;
      }

      v85 = 0;
      v12 = [(PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker *)self _markEntireLibraryNeedingProcessingWithManagedObjectContext:contextCopy error:&v85];
      v42 = v85;
    }

    else
    {
      v86 = 0;
      v12 = [(PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker *)self _markEntireLibraryNeedingProcessingWithManagedObjectContext:contextCopy error:&v86];
      v42 = v86;
    }

    v33 = v42;
LABEL_70:

    goto LABEL_71;
  }

  v35 = PLMigrationGetLog();
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

  if (v36)
  {
    logger7 = [(PLModelMigrationActionBackground *)self logger];

    if (logger7)
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
      buf = 0u;
      v96 = 0u;
      v38 = PLMigrationGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      LOWORD(v92) = 0;
      v40 = _os_log_send_and_compose_impl(v39, 0, &buf, 512, &dword_19BF1F000, v38, 0, "Skipping migration because background jobs are disabled for this library", &v92, 2);

      logger8 = [(PLModelMigrationActionBackground *)self logger];
      [logger8 logWithMessage:v40 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1981, 0}];

      if (v40 != &buf)
      {
        free(v40);
      }
    }

    else
    {
      v43 = PLMigrationGetLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "Skipping migration because background jobs are disabled for this library", &buf, 2u);
      }
    }
  }

  v12 = 1;
LABEL_71:

  return v12;
}

@end