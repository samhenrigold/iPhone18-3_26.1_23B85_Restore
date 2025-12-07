@interface PLModelMigrationAction_DeletePLGeneratedAssetDescriptionNodesAndLabel
- (int64_t)_deleteLabelWithCode1300InContext:(id)context error:(id *)error;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_DeletePLGeneratedAssetDescriptionNodesAndLabel

- (int64_t)_deleteLabelWithCode1300InContext:(id)context error:(id *)error
{
  v78 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLGraphLabel entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == 1300", @"code"];
  [v9 setPredicate:v10];

  v11 = [contextCopy executeFetchRequest:v9 error:error];
  v12 = v11;
  if (v11)
  {
    firstObject = [v11 firstObject];
    if (firstObject)
    {
      [contextCopy deleteObject:firstObject];
      if (([contextCopy save:error] & 1) == 0)
      {
        v14 = PLMigrationGetLog();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

        if (v15)
        {
          logger = [(PLModelMigrationActionCore *)self logger];

          if (logger)
          {
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
            *buf = 0u;
            v47 = 0u;
            v17 = PLMigrationGetLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = 3;
            }

            else
            {
              v18 = 2;
            }

            if (error)
            {
              v19 = *error;
            }

            else
            {
              v19 = 0;
            }

            v44 = 138412290;
            v45 = v19;
            v41 = _os_log_send_and_compose_impl(v18, 0, buf, 512, &dword_19BF1F000, v17, 16, "Failed to delete PLGeneratedAssetDescription label (%@)", &v44, 12);

            logger2 = [(PLModelMigrationActionCore *)self logger];
            [logger2 logWithMessage:v41 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{733, 16}];

            if (v41 != buf)
            {
              free(v41);
            }
          }

          else
          {
            v39 = PLMigrationGetLog();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              if (error)
              {
                v40 = *error;
              }

              else
              {
                v40 = 0;
              }

              *buf = 138412290;
              *&buf[4] = v40;
              _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Failed to delete PLGeneratedAssetDescription label (%@)", buf, 0xCu);
            }
          }
        }

        v38 = 3;
        goto LABEL_49;
      }
    }

    else
    {
      v26 = PLMigrationGetLog();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

      if (v27)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];

        if (logger3)
        {
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
          *buf = 0u;
          v47 = 0u;
          v29 = PLMigrationGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = 3;
          }

          else
          {
            v30 = 2;
          }

          LOWORD(v44) = 0;
          v31 = _os_log_send_and_compose_impl(v30, 0, buf, 512, &dword_19BF1F000, v29, 0, "No label with code 1300 found", &v44, 2);

          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{736, 0}];

          if (v31 != buf)
          {
            free(v31);
          }
        }

        else
        {
          v37 = PLMigrationGetLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "No label with code 1300 found", buf, 2u);
          }
        }
      }
    }

    v38 = 1;
LABEL_49:

    goto LABEL_50;
  }

  v20 = PLMigrationGetLog();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

  if (v21)
  {
    logger5 = [(PLModelMigrationActionCore *)self logger];

    if (logger5)
    {
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
      *buf = 0u;
      v47 = 0u;
      v23 = PLMigrationGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      if (error)
      {
        v25 = *error;
      }

      else
      {
        v25 = 0;
      }

      v44 = 138412290;
      v45 = v25;
      v35 = _os_log_send_and_compose_impl(v24, 0, buf, 512, &dword_19BF1F000, v23, 16, "No label with code 1300 found (Error: %@)", &v44, 12);

      logger6 = [(PLModelMigrationActionCore *)self logger];
      [logger6 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{740, 16}];

      if (v35 != buf)
      {
        free(v35);
      }
    }

    else
    {
      v33 = PLMigrationGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        if (error)
        {
          v34 = *error;
        }

        else
        {
          v34 = 0;
        }

        *buf = 138412290;
        *&buf[4] = v34;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "No label with code 1300 found (Error: %@)", buf, 0xCu);
      }
    }
  }

  v38 = 3;
LABEL_50:

  return v38;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v107[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 1;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__43771;
  v67 = __Block_byref_object_dispose__43772;
  v68 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLGraphNode entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v107[0] = @"primaryLabel";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v10];

  1300 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"primaryLabelCode", 1300];
  [v9 setPredicate:1300];

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__43771;
  v61 = __Block_byref_object_dispose__43772;
  v62 = 0;
  v12 = [PLEnumerateAndSaveController alloc];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __117__PLModelMigrationAction_DeletePLGeneratedAssetDescriptionNodesAndLabel_performActionWithManagedObjectContext_error___block_invoke;
  v55[3] = &unk_1E7575B30;
  v56 = contextCopy;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __117__PLModelMigrationAction_DeletePLGeneratedAssetDescriptionNodesAndLabel_performActionWithManagedObjectContext_error___block_invoke_2;
  v54[3] = &unk_1E7572E50;
  v54[4] = self;
  v54[5] = &v57;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __117__PLModelMigrationAction_DeletePLGeneratedAssetDescriptionNodesAndLabel_performActionWithManagedObjectContext_error___block_invoke_3;
  v50[3] = &unk_1E756C698;
  v50[4] = self;
  v52 = &v63;
  v53 = &v69;
  v15 = v56;
  v51 = v15;
  v16 = [(PLEnumerateAndSaveController *)v12 initWithName:v14 fetchRequest:v9 context:v15 options:0 generateContextBlock:v55 didFetchObjectIDsBlock:v54 processResultBlock:v50];

  v17 = (v64 + 5);
  obj = v64[5];
  v18 = [(PLEnumerateAndSaveController *)v16 processObjectsWithError:&obj];
  objc_storeStrong(v17, obj);
  if (v18)
  {
    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (!v20)
    {
      goto LABEL_23;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v22 = logger == 0;

    if (!v22)
    {
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
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      buf = 0u;
      v76 = 0u;
      v23 = PLMigrationGetLog();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      totalUnitCount = [v58[5] totalUnitCount];
      if (v24)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v73 = 134217984;
      v74 = totalUnitCount;
      v27 = _os_log_send_and_compose_impl(v26, 0, &buf, 512, &dword_19BF1F000, v23, 0, "Removed %lld PLGeneratedAssetDescription nodes.", &v73);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{709, 0}];

      if (v27 != &buf)
      {
        v29 = v27;
LABEL_16:
        free(v29);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    v39 = PLMigrationGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      totalUnitCount2 = [v58[5] totalUnitCount];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = totalUnitCount2;
      _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "Removed %lld PLGeneratedAssetDescription nodes.", &buf, 0xCu);
    }

LABEL_22:

    goto LABEL_23;
  }

  v70[3] = 3;
  v30 = PLMigrationGetLog();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

  if (!v31)
  {
    goto LABEL_23;
  }

  logger3 = [(PLModelMigrationActionCore *)self logger];
  v33 = logger3 == 0;

  if (v33)
  {
    v39 = PLMigrationGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v41 = v64[5];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v41;
      _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Failed to remove PLGeneratedAssetDescription nodes (%@)", &buf, 0xCu);
    }

    goto LABEL_22;
  }

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
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  buf = 0u;
  v76 = 0u;
  v34 = PLMigrationGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = 3;
  }

  else
  {
    v35 = 2;
  }

  v36 = v64[5];
  v73 = 138412290;
  v74 = v36;
  LODWORD(v47) = 12;
  v37 = _os_log_send_and_compose_impl(v35, 0, &buf, 512, &dword_19BF1F000, v34, 16, "Failed to remove PLGeneratedAssetDescription nodes (%@)", &v73, v47);

  logger4 = [(PLModelMigrationActionCore *)self logger];
  [logger4 logWithMessage:v37 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{712, 16}];

  if (v37 != &buf)
  {
    v29 = v37;
    goto LABEL_16;
  }

LABEL_23:
  v42 = (v64 + 5);
  if (v70[3] != 1)
  {
    v44 = v64[5];
    if (!error)
    {
      goto LABEL_29;
    }

LABEL_28:
    v44 = v44;
    *error = v44;
    goto LABEL_29;
  }

  v48 = v64[5];
  v43 = [(PLModelMigrationAction_DeletePLGeneratedAssetDescriptionNodesAndLabel *)self _deleteLabelWithCode1300InContext:v15 error:&v48];
  objc_storeStrong(v42, v48);
  v70[3] = v43;
  v44 = v64[5];
  if (v43 != 1 && error)
  {
    goto LABEL_28;
  }

LABEL_29:

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v45 = v70[3];

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  _Block_object_dispose(&v69, 8);
  return v45;
}

@end