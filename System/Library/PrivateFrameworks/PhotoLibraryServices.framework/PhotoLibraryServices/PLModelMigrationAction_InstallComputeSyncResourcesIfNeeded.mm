@interface PLModelMigrationAction_InstallComputeSyncResourcesIfNeeded
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_InstallComputeSyncResourcesIfNeeded

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v106[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLComputeSyncAttributes entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"cloudComputeStateVersion", @"1.950"];
  v106[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != 950", @"localAnalysisStage"];
  v106[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  [v9 setPredicate:v14];

  v105 = @"asset";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v15];

  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__43771;
  v64 = __Block_byref_object_dispose__43772;
  v65 = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = __Block_byref_object_copy__43771;
  v58[4] = __Block_byref_object_dispose__43772;
  v59 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [PLEnumerateAndSaveController alloc];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __106__PLModelMigrationAction_InstallComputeSyncResourcesIfNeeded_performActionWithManagedObjectContext_error___block_invoke;
  v52[3] = &unk_1E7575B30;
  v19 = contextCopy;
  v53 = v19;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __106__PLModelMigrationAction_InstallComputeSyncResourcesIfNeeded_performActionWithManagedObjectContext_error___block_invoke_2;
  v51[3] = &unk_1E7572E50;
  v51[4] = self;
  v51[5] = v58;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __106__PLModelMigrationAction_InstallComputeSyncResourcesIfNeeded_performActionWithManagedObjectContext_error___block_invoke_3;
  v50[3] = &unk_1E756C828;
  v50[4] = self;
  v50[5] = &v60;
  v50[6] = &v66;
  v50[7] = &v54;
  v50[8] = v58;
  v20 = [(PLEnumerateAndSaveController *)v18 initWithName:v17 fetchRequest:v9 context:v19 options:4 generateContextBlock:v52 didFetchObjectIDsBlock:v51 processResultBlock:v50];
  v21 = (v61 + 5);
  obj = v61[5];
  LOBYTE(v13) = [(PLEnumerateAndSaveController *)v20 processObjectsWithError:&obj];
  objc_storeStrong(v21, obj);
  if (v13)
  {
    v22 = PLMigrationGetLog();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v23)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v25 = logger == 0;

      if (!v25)
      {
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
        v75 = 0u;
        v76 = 0u;
        memset(buf, 0, sizeof(buf));
        v26 = PLMigrationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        v28 = v55[3];
        v70 = 134217984;
        v71 = v28;
        v29 = _os_log_send_and_compose_impl(v27, 0, buf, 512, &dword_19BF1F000, v26, 0, "[CCSS] Installed %tu ComputeSync resources after migration from DawnburstG to CrystalGlow", &v70);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v29 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1504, 0}];

        if (v29 == buf)
        {
          goto LABEL_23;
        }

        v31 = v29;
        goto LABEL_16;
      }

      v41 = PLMigrationGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v55[3];
        *buf = 134217984;
        *&buf[4] = v42;
        _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEFAULT, "[CCSS] Installed %tu ComputeSync resources after migration from DawnburstG to CrystalGlow", buf, 0xCu);
      }

      goto LABEL_22;
    }
  }

  else
  {
    v67[3] = 3;
    v32 = PLMigrationGetLog();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

    if (v33)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v35 = logger3 == 0;

      if (!v35)
      {
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
        v75 = 0u;
        v76 = 0u;
        memset(buf, 0, sizeof(buf));
        v36 = PLMigrationGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v38 = v61[5];
        v70 = 138543618;
        v71 = v17;
        v72 = 2112;
        v73 = v38;
        LODWORD(v48) = 22;
        v39 = _os_log_send_and_compose_impl(v37, 0, buf, 512, &dword_19BF1F000, v36, 16, "Failed to process %{public}@. Error: %@", &v70, v48);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v39 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1502, 16}];

        if (v39 == buf)
        {
          goto LABEL_23;
        }

        v31 = v39;
LABEL_16:
        free(v31);
        goto LABEL_23;
      }

      v41 = PLMigrationGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v43 = v61[5];
        *buf = 138543618;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v43;
        _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
      }

LABEL_22:
    }
  }

LABEL_23:
  v44 = v67[3];
  v45 = v61[5];
  if (v44 != 1 && error)
  {
    v45 = v45;
    *error = v45;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v46 = v67[3];

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(v58, 8);

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v66, 8);

  return v46;
}

@end