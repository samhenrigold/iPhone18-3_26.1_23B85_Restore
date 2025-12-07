@interface PLModelMigrationAction_DeleteDanglingPLGraphEdges
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_DeleteDanglingPLGraphEdges

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v106[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = MEMORY[0x1E696AB28];
  v56 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"sourceNode"];
  v105[0] = v56;
  v55 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"sourceAsset"];
  v105[1] = v55;
  v54 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"sourceMoment"];
  v105[2] = v54;
  v53 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"sourcePerson"];
  v105[3] = v53;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:4];
  v6 = [v4 andPredicateWithSubpredicates:v5];
  v106[0] = v6;
  v7 = MEMORY[0x1E696AB28];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"targetNode"];
  v104[0] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"targetAsset"];
  v104[1] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"targetMoment"];
  v104[2] = v10;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"targetPerson"];
  v104[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:4];
  v13 = [v7 andPredicateWithSubpredicates:v12];
  v106[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:2];
  v15 = [v4 orPredicateWithSubpredicates:v14];

  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__43771;
  v67 = __Block_byref_object_dispose__43772;
  v68 = 0;
  v16 = MEMORY[0x1E695D5E0];
  v17 = +[PLGraphEdge entityName];
  v18 = [v16 fetchRequestWithEntityName:v17];

  [v18 setPredicate:v15];
  v19 = [PLEnumerateAndSaveController alloc];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __97__PLModelMigrationAction_DeleteDanglingPLGraphEdges_performActionWithManagedObjectContext_error___block_invoke;
  v61[3] = &unk_1E7575B30;
  v22 = contextCopy;
  v62 = v22;
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __97__PLModelMigrationAction_DeleteDanglingPLGraphEdges_performActionWithManagedObjectContext_error___block_invoke_2;
  v60[3] = &unk_1E7572E50;
  v60[4] = self;
  v60[5] = &v63;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __97__PLModelMigrationAction_DeleteDanglingPLGraphEdges_performActionWithManagedObjectContext_error___block_invoke_3;
  v59[3] = &unk_1E756C6E8;
  v59[4] = &v63;
  v23 = [(PLEnumerateAndSaveController *)v19 initWithName:v21 fetchRequest:v18 context:v22 options:0 generateContextBlock:v61 didFetchObjectIDsBlock:v60 processResultBlock:v59];

  v58 = 0;
  LODWORD(v19) = [(PLEnumerateAndSaveController *)v23 processObjectsWithError:&v58];
  v24 = v58;
  if (v19)
  {
    v25 = PLMigrationGetLog();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);

    if (v26)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v28 = logger == 0;

      if (v28)
      {
        v45 = PLMigrationGetLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          completedUnitCount = [v64[5] completedUnitCount];
          *buf = 134217984;
          *&buf[4] = completedUnitCount;
          _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_INFO, "Completed playback bit update on %lu assets", buf, 0xCu);
        }
      }

      else
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
        v29 = PLMigrationGetLog();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
        completedUnitCount2 = [v64[5] completedUnitCount];
        if (v30)
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        v69 = 134217984;
        v70 = completedUnitCount2;
        v33 = _os_log_send_and_compose_impl(v32, 0, buf, 512, &dword_19BF1F000, v29, 1, "Completed playback bit update on %lu assets", &v69);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{809, 1}];

        if (v33 != buf)
        {
          free(v33);
        }
      }
    }

    v47 = 1;
  }

  else
  {
    v35 = PLMigrationGetLog();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

    if (v36)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v38 = logger3 == 0;

      if (v38)
      {
        v48 = PLMigrationGetLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          *buf = 138543618;
          *&buf[4] = v50;
          *&buf[12] = 2112;
          *&buf[14] = v24;
          _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", buf, 0x16u);
        }
      }

      else
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
        v39 = PLMigrationGetLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = 3;
        }

        else
        {
          v40 = 2;
        }

        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v69 = 138543618;
        v70 = v42;
        v71 = 2112;
        v72 = v24;
        v43 = _os_log_send_and_compose_impl(v40, 0, buf, 512, &dword_19BF1F000, v39, 16, "Failed to process %{public}@. Error: %@", &v69, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v43 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{812, 16}];

        if (v43 != buf)
        {
          free(v43);
        }
      }
    }

    v47 = 3;
  }

  _Block_object_dispose(&v63, 8);
  return v47;
}

@end