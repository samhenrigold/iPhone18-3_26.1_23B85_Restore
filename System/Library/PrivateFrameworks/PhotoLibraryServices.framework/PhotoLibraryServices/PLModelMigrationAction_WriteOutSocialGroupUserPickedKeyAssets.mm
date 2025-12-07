@interface PLModelMigrationAction_WriteOutSocialGroupUserPickedKeyAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_WriteOutSocialGroupUserPickedKeyAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v104 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLGraphLabel entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  1003 = [MEMORY[0x1E696AE18] predicateWithFormat:@"code == %d", 1003];
  [v10 setPredicate:1003];

  v69 = 0;
  v12 = [contextCopy executeFetchRequest:v10 error:&v69];
  v13 = v69;
  if (v12)
  {
    firstObject = [v12 firstObject];
    if (!firstObject)
    {
      v28 = PLMigrationGetLog();
      v29 = 1;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v29 = 1;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_INFO, "Did not find label with code PLBuiltInGraphLabelCodeSocialGroupKeyAssetUserPicked.", buf, 2u);
      }

      goto LABEL_50;
    }

    v63 = a2;
    v66 = v13;
    selfCopy = self;
    v65 = v12;
    v15 = contextCopy;
    v16 = [(PLManagedObject *)PLGraphEdge entityInManagedObjectContext:contextCopy];
    relationshipsByName = [v16 relationshipsByName];
    v18 = @"labels";
    v19 = [relationshipsByName objectForKey:@"labels"];

    v64 = v16;
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      relationshipsByName2 = [v16 relationshipsByName];
      v31 = [relationshipsByName2 objectForKey:@"additionalLabels"];

      v20 = v31 == 0;
      if (v31)
      {
        v18 = @"additionalLabels";
      }

      else
      {
        v18 = 0;
      }
    }

    v32 = MEMORY[0x1E695D5E0];
    v33 = +[PLGraphEdge entityName];
    v34 = [v32 fetchRequestWithEntityName:v33];

    [v34 setResultType:1];
    v35 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K = %@", v18, firstObject];
    [v34 setPredicate:v35];

    if (v20)
    {
      v36 = PLMigrationGetLog();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

      contextCopy = v15;
      if (v37)
      {
        self = selfCopy;
        logger = [(PLModelMigrationActionCore *)selfCopy logger];

        if (logger)
        {
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
          *buf = 0u;
          v73 = 0u;
          v39 = PLMigrationGetLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          LOWORD(v70) = 0;
          LODWORD(v61) = 2;
          v41 = _os_log_send_and_compose_impl(v40, 0, buf, 512, &dword_19BF1F000, v39, 16, "Failed to identify the relationship name for Edge.additionalLabels during pre schema migration.", &v70, v61);

          logger2 = [(PLModelMigrationActionCore *)selfCopy logger];
          [logger2 logWithMessage:v41 fromCodeLocation:"PLModelMigrationActionPreSchema.m" type:{99, 16}];

          v12 = v65;
          if (v41 != buf)
          {
            free(v41);
          }
        }

        else
        {
          v54 = PLMigrationGetLog();
          v12 = v65;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_ERROR, "Failed to identify the relationship name for Edge.additionalLabels during pre schema migration.", buf, 2u);
          }
        }

        v29 = 1;
      }

      else
      {
        v29 = 1;
        v12 = v65;
        self = selfCopy;
      }

      v28 = v64;
      goto LABEL_49;
    }

    v68 = 0;
    contextCopy = v15;
    v43 = [v15 executeFetchRequest:v34 error:&v68];
    v62 = v68;
    if (v43)
    {
      migrationContextUserInfo = [(PLModelMigrationActionCore *)selfCopy migrationContextUserInfo];

      v12 = v65;
      if (!migrationContextUserInfo)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:v63 object:selfCopy file:@"PLModelMigrationActionPreSchema.m" lineNumber:90 description:@"migrationContextUserInfo should not be nil."];
      }

      migrationContextUserInfo2 = [(PLModelMigrationActionCore *)selfCopy migrationContextUserInfo];
      [migrationContextUserInfo2 setObject:v43 forKeyedSubscript:@"socialGroupUserPickAssetEdgeIDs"];

      v29 = 1;
    }

    else
    {
      v46 = PLMigrationGetLog();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);

      if (v47)
      {
        logger3 = [(PLModelMigrationActionCore *)selfCopy logger];

        if (!logger3)
        {
          v59 = PLMigrationGetLog();
          v28 = v64;
          v12 = v65;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v66;
            _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_ERROR, "Failed to fetch edges with user picked label with error: %@", buf, 0xCu);
          }

          v29 = 3;
          goto LABEL_39;
        }

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
        *buf = 0u;
        v73 = 0u;
        v49 = PLMigrationGetLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = 3;
        }

        else
        {
          v50 = 2;
        }

        v70 = 138412290;
        v71 = v66;
        LODWORD(v61) = 12;
        v51 = _os_log_send_and_compose_impl(v50, 0, buf, 512, &dword_19BF1F000, v49, 16, "Failed to fetch edges with user picked label with error: %@", &v70, v61);

        logger4 = [(PLModelMigrationActionCore *)selfCopy logger];
        [logger4 logWithMessage:v51 fromCodeLocation:"PLModelMigrationActionPreSchema.m" type:{94, 16}];

        if (v51 != buf)
        {
          free(v51);
        }
      }

      v29 = 3;
      v12 = v65;
    }

    v28 = v64;
LABEL_39:

    self = selfCopy;
LABEL_49:

    v13 = v66;
LABEL_50:

    goto LABEL_51;
  }

  v21 = PLMigrationGetLog();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

  if (v22)
  {
    logger5 = [(PLModelMigrationActionCore *)self logger];

    if (logger5)
    {
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
      *buf = 0u;
      v73 = 0u;
      v24 = PLMigrationGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v70 = 138412290;
      v71 = v13;
      v26 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_19BF1F000, v24, 16, "Failed to fetch labels with error: %@", &v70, 12);

      logger6 = [(PLModelMigrationActionCore *)self logger];
      [logger6 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActionPreSchema.m" type:{107, 16}];

      if (v26 != buf)
      {
        free(v26);
      }
    }

    else
    {
      v53 = PLMigrationGetLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "Failed to fetch labels with error: %@", buf, 0xCu);
      }
    }
  }

  v29 = 3;
LABEL_51:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v55 = v13;
  v56 = v55;
  if (v29 != 1 && error)
  {
    v57 = v55;
    *error = v56;
  }

  return v29;
}

@end