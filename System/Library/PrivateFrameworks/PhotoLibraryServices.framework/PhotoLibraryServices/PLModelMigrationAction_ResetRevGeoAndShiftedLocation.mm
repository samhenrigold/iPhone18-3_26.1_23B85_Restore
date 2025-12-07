@interface PLModelMigrationAction_ResetRevGeoAndShiftedLocation
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetRevGeoAndShiftedLocation

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v73[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"%K != nil", @"shiftedLocationData"];
  v72[0] = @"reverseLocationDataIsValid";
  v72[1] = @"shiftedLocationIsValid";
  v73[0] = MEMORY[0x1E695E110];
  v73[1] = MEMORY[0x1E695E110];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
  v10 = +[PLAdditionalAssetAttributes entityName];
  v36 = 0;
  v11 = [PLModelMigrator executeBatchUpdateWithEntityName:v10 predicate:v8 propertiesToUpdate:v9 managedObjectContext:contextCopy error:&v36];

  v12 = v36;
  if (v11)
  {
    v13 = PLMigrationGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        memset(buf, 0, sizeof(buf));
        v16 = PLMigrationGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        LOWORD(v37) = 0;
        v18 = _os_log_send_and_compose_impl(v17, 0, buf, 512, &dword_19BF1F000, v16, 0, "Reset rev geo and shifted location state on assets with non-nil shifted locations", &v37, 2);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v18 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1105, 0}];

        if (v18 != buf)
        {
          free(v18);
        }
      }

      else
      {
        v30 = PLMigrationGetLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Reset rev geo and shifted location state on assets with non-nil shifted locations", buf, 2u);
        }
      }
    }

    v31 = 1;
  }

  else
  {
    if (error)
    {
      v20 = v12;
      *error = v12;
    }

    v21 = PLMigrationGetLog();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];

      if (logger3)
      {
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
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        memset(buf, 0, sizeof(buf));
        v24 = PLMigrationGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v37 = 138543618;
        v38 = v27;
        v39 = 2114;
        v40 = v12;
        v28 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_19BF1F000, v24, 16, "Failed to reset geo and shifted location state on assets with non-nil shifted locations for %{public}@. Error: %{public}@", &v37, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{1109, 16}];

        if (v28 != buf)
        {
          free(v28);
        }
      }

      else
      {
        v32 = PLMigrationGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          *buf = 138543618;
          *&buf[4] = v34;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Failed to reset geo and shifted location state on assets with non-nil shifted locations for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v31 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return v31;
}

@end