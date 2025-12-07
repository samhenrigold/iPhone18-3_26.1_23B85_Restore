@interface PLModelMigrationAction_PopulatePersonCloudDetectionType
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_PopulatePersonCloudDetectionType

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v104 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 1;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__53822;
  v63 = __Block_byref_object_dispose__53823;
  v64 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLPerson entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"cloudDetectionType", 0];
  [v9 setPredicate:v10];

  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__53822;
  v57 = __Block_byref_object_dispose__53823;
  v58 = 0;
  v11 = [PLEnumerateAndSaveController alloc];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __103__PLModelMigrationAction_PopulatePersonCloudDetectionType_performActionWithManagedObjectContext_error___block_invoke;
  v51[3] = &unk_1E7575B30;
  v14 = contextCopy;
  v52 = v14;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __103__PLModelMigrationAction_PopulatePersonCloudDetectionType_performActionWithManagedObjectContext_error___block_invoke_2;
  v50[3] = &unk_1E7572E50;
  v50[4] = self;
  v50[5] = &v53;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __103__PLModelMigrationAction_PopulatePersonCloudDetectionType_performActionWithManagedObjectContext_error___block_invoke_3;
  v49[3] = &unk_1E756DD68;
  v49[4] = self;
  v49[5] = &v59;
  v49[6] = &v65;
  v49[7] = &v53;
  v15 = [(PLEnumerateAndSaveController *)v11 initWithName:v13 fetchRequest:v9 context:v14 options:4 generateContextBlock:v51 didFetchObjectIDsBlock:v50 processResultBlock:v49];

  v16 = (v60 + 5);
  obj = v60[5];
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
      memset(buf, 0, sizeof(buf));
      v22 = PLMigrationGetLog();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      totalUnitCount = [v54[5] totalUnitCount];
      if (v23)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v69 = 134217984;
      v70 = totalUnitCount;
      v26 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_19BF1F000, v22, 0, "Populated cloudDetectionType for %lld persons", &v69);

      logger2 = [(PLModelMigrationActionCore *)self logger];
      [logger2 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{524, 0}];

      goto LABEL_14;
    }

    v38 = PLMigrationGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      totalUnitCount2 = [v54[5] totalUnitCount];
      *buf = 134217984;
      *&buf[4] = totalUnitCount2;
      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "Populated cloudDetectionType for %lld persons", buf, 0xCu);
    }

LABEL_21:

    goto LABEL_22;
  }

  v66[3] = 3;
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
      v42 = v60[5];
      *buf = 138543618;
      *&buf[4] = v41;
      *&buf[12] = 2114;
      *&buf[14] = v42;
      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
    }

    goto LABEL_21;
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
  v36 = v60[5];
  v69 = 138543618;
  v70 = v35;
  v71 = 2114;
  v72 = v36;
  LODWORD(v47) = 22;
  v26 = _os_log_send_and_compose_impl(v33, 0, buf, 512, &dword_19BF1F000, v32, 16, "Failed to process %{public}@. Error: %{public}@", &v69, v47);

  logger4 = [(PLModelMigrationActionCore *)self logger];
  [logger4 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{522, 16}];

LABEL_14:
  if (v26 != buf)
  {
    free(v26);
  }

LABEL_22:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v43 = v66[3];
  v44 = v60[5];
  if (v43 != 1 && error)
  {
    v44 = v44;
    *error = v44;
  }

  v45 = v66[3];
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v65, 8);

  return v45;
}

@end