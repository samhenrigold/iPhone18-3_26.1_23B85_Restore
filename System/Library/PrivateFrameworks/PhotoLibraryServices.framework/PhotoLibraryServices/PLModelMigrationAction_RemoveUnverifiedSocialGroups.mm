@interface PLModelMigrationAction_RemoveUnverifiedSocialGroups
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveUnverifiedSocialGroups

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v108 = *MEMORY[0x1E69E9840];
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

  1000 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"primaryLabelCode", 1000];
  [v9 setPredicate:1000];

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__43771;
  v61 = __Block_byref_object_dispose__43772;
  v62 = 0;
  v11 = [PLEnumerateAndSaveController alloc];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __99__PLModelMigrationAction_RemoveUnverifiedSocialGroups_performActionWithManagedObjectContext_error___block_invoke;
  v55[3] = &unk_1E7575B30;
  v56 = contextCopy;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __99__PLModelMigrationAction_RemoveUnverifiedSocialGroups_performActionWithManagedObjectContext_error___block_invoke_2;
  v54[3] = &unk_1E7572E50;
  v54[4] = self;
  v54[5] = &v57;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __99__PLModelMigrationAction_RemoveUnverifiedSocialGroups_performActionWithManagedObjectContext_error___block_invoke_3;
  v49[3] = &unk_1E756C710;
  v49[4] = self;
  v51 = &v63;
  v52 = &v69;
  v14 = v56;
  v50 = v14;
  v53 = &v57;
  v15 = [(PLEnumerateAndSaveController *)v11 initWithName:v13 fetchRequest:v9 context:v14 options:4 generateContextBlock:v55 didFetchObjectIDsBlock:v54 processResultBlock:v49];

  v16 = (v64 + 5);
  obj = v64[5];
  v17 = [(PLEnumerateAndSaveController *)v15 processObjectsWithError:&obj];
  objc_storeStrong(v16, obj);
  if (v17)
  {
    v18 = PLMigrationGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (!v19)
    {
      goto LABEL_22;
    }

    logger = [(PLModelMigrationActionCore *)self logger];
    v21 = logger == 0;

    if (!v21)
    {
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      totalUnitCount = [v58[5] totalUnitCount];
      if (v23)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v73 = 134217984;
      v74 = totalUnitCount;
      v26 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_19BF1F000, v22, 0, "Removed %lld rejected member labels.", &v73);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{932, 0}];

      goto LABEL_14;
    }

    v38 = PLMigrationGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      totalUnitCount2 = [v58[5] totalUnitCount];
      *buf = 134217984;
      *&buf[4] = totalUnitCount2;
      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "Removed %lld rejected member labels.", buf, 0xCu);
    }

LABEL_21:

    goto LABEL_22;
  }

  v70[3] = 3;
  v28 = PLMigrationGetLog();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

  if (!v29)
  {
    goto LABEL_22;
  }

  logger3 = [(PLModelMigrationActionCore *)self logger];
  v31 = logger3 == 0;

  if (v31)
  {
    v38 = PLMigrationGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = v64[5];
      *buf = 138543618;
      *&buf[4] = v41;
      *&buf[12] = 2112;
      *&buf[14] = v42;
      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
    }

    goto LABEL_21;
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
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
  memset(buf, 0, sizeof(buf));
  v32 = PLMigrationGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = 3;
  }

  else
  {
    v33 = 2;
  }

  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  v36 = v64[5];
  v73 = 138543618;
  v74 = v35;
  v75 = 2112;
  v76 = v36;
  LODWORD(v47) = 22;
  v26 = _os_log_send_and_compose_impl(v33, 0, buf, 512, &dword_19BF1F000, v32, 16, "Failed to process %{public}@. Error: %@", &v73, v47);

  logger4 = [(PLModelMigrationActionCore *)self logger];
  [logger4 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{935, 16}];

LABEL_14:
  if (v26 != buf)
  {
    free(v26);
  }

LABEL_22:
  v43 = v70[3];
  v44 = v64[5];
  if (v43 != 1 && error)
  {
    v44 = v44;
    *error = v44;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v45 = v70[3];

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  _Block_object_dispose(&v69, 8);
  return v45;
}

@end