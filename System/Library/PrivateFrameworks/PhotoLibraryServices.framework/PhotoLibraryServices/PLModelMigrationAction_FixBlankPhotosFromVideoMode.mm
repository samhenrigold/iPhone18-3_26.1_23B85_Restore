@interface PLModelMigrationAction_FixBlankPhotosFromVideoMode
- (id)buildFetchRequest;
- (id)startDate;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixBlankPhotosFromVideoMode

- (id)startDate
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v2 setDay:3];
  [v2 setMonth:5];
  [v2 setYear:2024];
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v5 = [v4 dateFromComponents:v2];

  return v5;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v92 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  buildFetchRequest = [(PLModelMigrationAction_FixBlankPhotosFromVideoMode *)self buildFetchRequest];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__43771;
  v55 = __Block_byref_object_dispose__43772;
  v56 = 0;
  v9 = [PLEnumerateAndSaveController alloc];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __98__PLModelMigrationAction_FixBlankPhotosFromVideoMode_performActionWithManagedObjectContext_error___block_invoke;
  v49[3] = &unk_1E7575B30;
  v10 = contextCopy;
  v50 = v10;
  v47[4] = &v51;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __98__PLModelMigrationAction_FixBlankPhotosFromVideoMode_performActionWithManagedObjectContext_error___block_invoke_2;
  v48[3] = &unk_1E7572E50;
  v48[4] = self;
  v48[5] = &v51;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __98__PLModelMigrationAction_FixBlankPhotosFromVideoMode_performActionWithManagedObjectContext_error___block_invoke_3;
  v47[3] = &unk_1E756C620;
  v11 = [(PLEnumerateAndSaveController *)v9 initWithName:v8 fetchRequest:buildFetchRequest context:v10 options:4 generateContextBlock:v49 didFetchObjectIDsBlock:v48 processResultBlock:v47];
  v46 = 0;
  v12 = [(PLEnumerateAndSaveController *)v11 processObjectsWithError:&v46];
  v44 = v46;
  if (v12)
  {
    v13 = PLMigrationGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

    if (v14)
    {
      logger = [(PLModelMigrationActionCore *)self logger];
      v16 = logger == 0;

      if (v16)
      {
        v33 = PLMigrationGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          completedUnitCount = [v52[5] completedUnitCount];
          *buf = 134217984;
          *&buf[4] = completedUnitCount;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_INFO, "Completed photo recovery on %lu assets", buf, 0xCu);
        }
      }

      else
      {
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
        memset(buf, 0, sizeof(buf));
        v17 = PLMigrationGetLog();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
        completedUnitCount2 = [v52[5] completedUnitCount];
        if (v18)
        {
          v20 = 3;
        }

        else
        {
          v20 = 2;
        }

        v57 = 134217984;
        v58 = completedUnitCount2;
        v21 = _os_log_send_and_compose_impl(v20, 0, buf, 512, &dword_19BF1F000, v17, 1, "Completed photo recovery on %lu assets", &v57);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v21 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1421, 1}];

        if (v21 != buf)
        {
          free(v21);
        }
      }
    }

    v35 = 1;
  }

  else
  {
    v23 = PLMigrationGetLog();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

    if (v24)
    {
      logger3 = [(PLModelMigrationActionCore *)self logger];
      v26 = logger3 == 0;

      if (v26)
      {
        v36 = PLMigrationGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          *buf = 138543618;
          *&buf[4] = v38;
          *&buf[12] = 2114;
          *&buf[14] = v44;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
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
        v57 = 138543618;
        v58 = v30;
        v59 = 2114;
        v60 = v44;
        v31 = _os_log_send_and_compose_impl(v28, 0, buf, 512, &dword_19BF1F000, v27, 16, "Failed to process %{public}@. Error: %{public}@", &v57, 22);

        logger4 = [(PLModelMigrationActionCore *)self logger];
        [logger4 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1424, 16}];

        if (v31 != buf)
        {
          free(v31);
        }
      }
    }

    v35 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v39 = v44;
  v40 = v39;
  if (error)
  {
    v41 = v12;
  }

  else
  {
    v41 = 1;
  }

  if ((v41 & 1) == 0)
  {
    v42 = v39;
    *error = v40;
  }

  _Block_object_dispose(&v51, 8);
  return v35;
}

- (id)buildFetchRequest
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = MEMORY[0x1E696AB28];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kind", 0];
  v16[0] = v7;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uniformTypeIdentifier", *MEMORY[0x1E6982E58]];
  v16[1] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"adjustmentsState", 3];
  v16[2] = v9;
  v10 = MEMORY[0x1E696AE18];
  startDate = [(PLModelMigrationAction_FixBlankPhotosFromVideoMode *)self startDate];
  v12 = [v10 predicateWithFormat:@"%K >= %@", @"dateCreated", startDate];
  v16[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  v14 = [v6 andPredicateWithSubpredicates:v13];
  [v5 setPredicate:v14];

  [v5 setFetchBatchSize:100];

  return v5;
}

@end