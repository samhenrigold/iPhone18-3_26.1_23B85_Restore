@interface PLModelMigrationAction_FixPackedBadgeAttributesForRAWPlusJPEG
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixPackedBadgeAttributesForRAWPlusJPEG

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v108[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLInternalResource entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"utiConformanceHint", 2];
  v108[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"dataStoreClassID", 0];
  v108[1] = v12;
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"dataStoreSubtype", 17];
  v108[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:3];
  v15 = [v10 andPredicateWithSubpredicates:v14];
  [v9 setPredicate:v15];

  v107[0] = @"asset";
  v107[1] = @"asset.additionalAttributes";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:2];
  [v9 setRelationshipKeyPathsForPrefetching:v16];

  v71 = 0;
  v17 = [contextCopy executeFetchRequest:v9 error:&v71];
  v18 = v71;
  v19 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v17) pendingParentUnitCount:0];
  v20 = v19;
  if (v17)
  {
    errorCopy = error;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __109__PLModelMigrationAction_FixPackedBadgeAttributesForRAWPlusJPEG_performActionWithManagedObjectContext_error___block_invoke;
    v69[3] = &unk_1E756DBB8;
    v21 = v19;
    v70 = v21;
    v22 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v17 withBlock:v69];
    v23 = v22;
    if (!v22 || v18)
    {
      v43 = PLMigrationGetLog();
      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);

      if (v44)
      {
        logger = [(PLModelMigrationActionCore *)self logger];

        if (logger)
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
          memset(buf, 0, sizeof(buf));
          v46 = PLMigrationGetLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = 3;
          }

          else
          {
            v47 = 2;
          }

          v66 = v47;
          v48 = objc_opt_class();
          v49 = NSStringFromClass(v48);
          completedUnitCount = [v21 completedUnitCount];
          v72 = 138543618;
          v73 = v49;
          v74 = 2048;
          v75 = completedUnitCount;
          LODWORD(v65) = 22;
          v51 = _os_log_send_and_compose_impl(v66, 0, buf, 512, &dword_19BF1F000, v46, 0, "%{public}@: Added RAW packed badge attributes to %llu assets", &v72, v65);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v51 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{813, 0}];

          if (v51 != buf)
          {
            free(v51);
          }
        }

        else
        {
          v56 = PLMigrationGetLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = objc_opt_class();
            v58 = NSStringFromClass(v57);
            completedUnitCount2 = [v21 completedUnitCount];
            *buf = 138543618;
            *&buf[4] = v58;
            *&buf[12] = 2048;
            *&buf[14] = completedUnitCount2;
            _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@: Added RAW packed badge attributes to %llu assets", buf, 0x16u);
          }
        }
      }

      v42 = 1;
    }

    else
    {
      v18 = v22;
      v24 = PLMigrationGetLog();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (v25)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];

        if (logger3)
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
          memset(buf, 0, sizeof(buf));
          v27 = PLMigrationGetLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v72 = 138543618;
          v73 = v30;
          v74 = 2114;
          v75 = v18;
          LODWORD(v65) = 22;
          v31 = _os_log_send_and_compose_impl(v28, 0, buf, 512, &dword_19BF1F000, v27, 16, "Failed to perform a save operation for %{public}@. Error: %{public}@", &v72, v65);

          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{811, 16}];

          if (v31 != buf)
          {
            free(v31);
          }
        }

        else
        {
          v60 = PLMigrationGetLog();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v61 = objc_opt_class();
            v62 = NSStringFromClass(v61);
            *buf = 138543618;
            *&buf[4] = v62;
            *&buf[12] = 2114;
            *&buf[14] = v18;
            _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
          }
        }
      }

      v42 = 3;
    }

    error = errorCopy;

    goto LABEL_39;
  }

  v33 = PLMigrationGetLog();
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

  if (!v34)
  {
LABEL_29:
    v42 = 3;
    goto LABEL_39;
  }

  logger5 = [(PLModelMigrationActionCore *)self logger];

  if (!logger5)
  {
    v53 = PLMigrationGetLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      *buf = 138543618;
      *&buf[4] = v55;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
    }

    goto LABEL_29;
  }

  errorCopy2 = error;
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

  v38 = objc_opt_class();
  v39 = NSStringFromClass(v38);
  v72 = 138543618;
  v73 = v39;
  v74 = 2114;
  v75 = v18;
  LODWORD(v65) = 22;
  v40 = _os_log_send_and_compose_impl(v37, 0, buf, 512, &dword_19BF1F000, v36, 16, "Failed to execute fetch request for %{public}@. Error: %{public}@", &v72, v65);

  logger6 = [(PLModelMigrationActionCore *)self logger];
  [logger6 logWithMessage:v40 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{817, 16}];

  if (v40 != buf)
  {
    free(v40);
  }

  v42 = 3;
  error = errorCopy2;
LABEL_39:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    v63 = v18;
    *error = v18;
  }

  return v42;
}

@end