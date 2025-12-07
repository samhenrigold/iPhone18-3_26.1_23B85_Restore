@interface PLModelMigrationAction_SetStartEndDatesOnCollectionShares
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_SetStartEndDatesOnCollectionShares

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v93 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 1;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLCollectionShare entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__16168;
  v52 = __Block_byref_object_dispose__16169;
  v53 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__16168;
  v46[4] = __Block_byref_object_dispose__16169;
  v47 = 0;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [PLEnumerateAndSaveController alloc];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __105__PLModelMigrationAction_SetStartEndDatesOnCollectionShares_performActionWithManagedObjectContext_error___block_invoke;
  v44[3] = &unk_1E7575B30;
  v13 = contextCopy;
  v45 = v13;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __105__PLModelMigrationAction_SetStartEndDatesOnCollectionShares_performActionWithManagedObjectContext_error___block_invoke_2;
  v43[3] = &unk_1E7572E50;
  v43[4] = self;
  v43[5] = v46;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __105__PLModelMigrationAction_SetStartEndDatesOnCollectionShares_performActionWithManagedObjectContext_error___block_invoke_3;
  v42[3] = &unk_1E7568088;
  v42[4] = self;
  v42[5] = &v48;
  v42[6] = &v54;
  v42[7] = v46;
  v14 = [(PLEnumerateAndSaveController *)v12 initWithName:v11 fetchRequest:v9 context:v13 options:4 generateContextBlock:v44 didFetchObjectIDsBlock:v43 processResultBlock:v42];
  v15 = (v49 + 5);
  obj = v49[5];
  v16 = [(PLEnumerateAndSaveController *)v14 processObjectsWithError:&obj];
  objc_storeStrong(v15, obj);
  if (v16)
  {
    v17 = PLMigrationGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v20 = logger == 0;

      if (!v20)
      {
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
        v63 = 0u;
        v64 = 0u;
        memset(buf, 0, sizeof(buf));
        v21 = PLMigrationGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v58 = 134217984;
        v59 = 0;
        v23 = _os_log_send_and_compose_impl(v22, 0, buf, 512, &dword_19BF1F000, v21, 0, "Fixed start/end dates on %tu CollectionShare", &v58);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1228, 0}];

        if (v23 == buf)
        {
          goto LABEL_23;
        }

        v25 = v23;
        goto LABEL_16;
      }

      v35 = PLMigrationGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = 0;
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Fixed start/end dates on %tu CollectionShare", buf, 0xCu);
      }

      goto LABEL_22;
    }
  }

  else
  {
    v55[3] = 3;
    v26 = PLMigrationGetLog();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

    if (v27)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v29 = logger3 == 0;

      if (!v29)
      {
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
        v63 = 0u;
        v64 = 0u;
        memset(buf, 0, sizeof(buf));
        v30 = PLMigrationGetLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        v32 = v49[5];
        v58 = 138543618;
        v59 = v11;
        v60 = 2112;
        v61 = v32;
        v33 = _os_log_send_and_compose_impl(v31, 0, buf, 512, &dword_19BF1F000, v30, 16, "Failed to process %{public}@. Error: %@", &v58, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1226, 16}];

        if (v33 == buf)
        {
          goto LABEL_23;
        }

        v25 = v33;
LABEL_16:
        free(v25);
        goto LABEL_23;
      }

      v35 = PLMigrationGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = v49[5];
        *buf = 138543618;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = v36;
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
      }

LABEL_22:
    }
  }

LABEL_23:
  v37 = v55[3];
  v38 = v49[5];
  if (v37 != 1 && error)
  {
    v38 = v38;
    *error = v38;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v39 = v55[3];

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v54, 8);
  return v39;
}

@end