@interface PLModelMigrationAction_RunSocialGroupAssetContainment
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RunSocialGroupAssetContainment

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v79 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:1];
  [PLGraphLabel ensureLabelsAreUpdatedInContext:contextCopy];
  [v7 becomeCurrentWithPendingUnitCount:1];
  v43 = 0;
  v8 = [PLSocialGroup runAssetContainmentOnAllSocialGroupsInContext:contextCopy error:&v43];
  v9 = v43;
  v10 = v9;
  if (!v8)
  {
    v13 = PLMigrationGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        memset(buf, 0, sizeof(buf));
        v16 = PLMigrationGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v44 = 138543618;
        v45 = v19;
        v46 = 2112;
        v47 = v10;
        v20 = _os_log_send_and_compose_impl(v17, 0, buf, 512, &dword_19BF1F000, v16, 16, "Failed to run asset containment on all social groups for %{public}@. Error: %@", &v44, 22);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{992, 16}];

        if (v20 != buf)
        {
          free(v20);
        }
      }

      else
      {
        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          *buf = 138543618;
          *&buf[4] = v33;
          *&buf[12] = 2112;
          *&buf[14] = v10;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Failed to run asset containment on all social groups for %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }

    goto LABEL_21;
  }

  v42 = v9;
  v11 = [contextCopy save:&v42];
  v12 = v42;

  if (v11)
  {
    v10 = v12;
LABEL_21:
    [v7 resignCurrent];
    v34 = v10;
    v35 = 1;
    goto LABEL_28;
  }

  v22 = PLMigrationGetLog();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

  if (v23)
  {
    logger3 = [(PLModelMigrationActionCore *)self logger];

    if (logger3)
    {
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
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      memset(buf, 0, sizeof(buf));
      v25 = PLMigrationGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v44 = 138543618;
      v45 = v28;
      v46 = 2112;
      v47 = v12;
      v29 = _os_log_send_and_compose_impl(v26, 0, buf, 512, &dword_19BF1F000, v25, 16, "Failed to perform a save operation for %{public}@. Error: %@", &v44, 22);

      logger4 = [(PLModelMigrationActionCore *)self logger];
      [logger4 logWithMessage:v29 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{994, 16}];

      if (v29 != buf)
      {
        free(v29);
      }
    }

    else
    {
      v36 = PLMigrationGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *buf = 138543618;
        *&buf[4] = v38;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
      }
    }
  }

  [v7 resignCurrent];
  v39 = v12;
  v34 = v39;
  if (error)
  {
    v40 = v39;
    *error = v34;
  }

  v35 = 3;
LABEL_28:

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v35;
}

@end