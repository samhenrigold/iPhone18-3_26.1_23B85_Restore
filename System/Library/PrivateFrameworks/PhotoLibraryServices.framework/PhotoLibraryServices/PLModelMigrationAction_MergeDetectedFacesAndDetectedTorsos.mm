@interface PLModelMigrationAction_MergeDetectedFacesAndDetectedTorsos
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_MergeDetectedFacesAndDetectedTorsos

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v89[4] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 1;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__53822;
  v48 = __Block_byref_object_dispose__53823;
  v49 = 0;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLDetectedFace entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil || %K != nil", @"assetForTorso", @"personForTorso"];
  [v9 setPredicate:v10];

  v89[0] = @"assetForTorso";
  v89[1] = @"personForTorso";
  v89[2] = @"assetForFace";
  v89[3] = @"personForFace";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:4];
  [v9 setRelationshipKeyPathsForPrefetching:v11];

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__53822;
  v42[4] = __Block_byref_object_dispose__53823;
  v43 = 0;
  v12 = [PLEnumerateAndSaveController alloc];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __106__PLModelMigrationAction_MergeDetectedFacesAndDetectedTorsos_performActionWithManagedObjectContext_error___block_invoke;
  v40[3] = &unk_1E7575B30;
  v15 = contextCopy;
  v41 = v15;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __106__PLModelMigrationAction_MergeDetectedFacesAndDetectedTorsos_performActionWithManagedObjectContext_error___block_invoke_2;
  v39[3] = &unk_1E7572E50;
  v39[4] = self;
  v39[5] = v42;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __106__PLModelMigrationAction_MergeDetectedFacesAndDetectedTorsos_performActionWithManagedObjectContext_error___block_invoke_3;
  v38[3] = &unk_1E756DCF0;
  v38[4] = self;
  v38[5] = &v44;
  v38[6] = &v50;
  v38[7] = v42;
  v16 = [(PLEnumerateAndSaveController *)v12 initWithName:v14 fetchRequest:v9 context:v15 options:4 generateContextBlock:v40 didFetchObjectIDsBlock:v39 processResultBlock:v38];

  v17 = (v45 + 5);
  obj = v45[5];
  v18 = [(PLEnumerateAndSaveController *)v16 processObjectsWithError:&obj];
  objc_storeStrong(v17, obj);
  if (!v18)
  {
    v51[3] = 3;
    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v22 = logger == 0;

      if (v22)
      {
        v30 = PLMigrationGetLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = v45[5];
          *buf = 138543618;
          *&buf[4] = v32;
          *&buf[12] = 2114;
          *&buf[14] = v33;
          _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        memset(buf, 0, sizeof(buf));
        v23 = PLMigrationGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = v45[5];
        v54 = 138543618;
        v55 = v26;
        v56 = 2114;
        v57 = v27;
        LODWORD(v36) = 22;
        v28 = _os_log_send_and_compose_impl(v24, 0, buf, 512, &dword_19BF1F000, v23, 16, "Failed to process %{public}@. Error: %{public}@", &v54, v36);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{397, 16}];

        if (v28 != buf)
        {
          free(v28);
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (error)
  {
    *error = v45[5];
  }

  v34 = v51[3];

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  return v34;
}

@end