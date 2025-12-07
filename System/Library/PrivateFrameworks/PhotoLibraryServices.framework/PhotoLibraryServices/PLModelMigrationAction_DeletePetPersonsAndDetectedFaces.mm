@interface PLModelMigrationAction_DeletePetPersonsAndDetectedFaces
- (int64_t)deleteManagedObjectsWithManagedObjectContext:(id)context entity:(Class)entity predicate:(id)predicate pendingParentUnitCount:(int64_t)count deletedIdentifiers:(id *)identifiers entityIdentifierKeyPath:(id)path error:(id *)error;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_DeletePetPersonsAndDetectedFaces

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v63[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  progress = [(PLModelMigrationActionCore *)self progress];
  v8 = [progress totalUnitCount] / 2;

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"detectionType", &unk_1F0FBFCD0];
  v27 = 0;
  v10 = [(PLModelMigrationAction_DeletePetPersonsAndDetectedFaces *)self deleteManagedObjectsWithManagedObjectContext:contextCopy entity:objc_opt_class() predicate:v9 pendingParentUnitCount:v8 deletedIdentifiers:&v27 entityIdentifierKeyPath:@"personUUID" error:error];
  v11 = v27;
  if (v10 == 1)
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"detectionType", &unk_1F0FBFCE8];
    v10 = [(PLModelMigrationAction_DeletePetPersonsAndDetectedFaces *)self deleteManagedObjectsWithManagedObjectContext:contextCopy entity:objc_opt_class() predicate:v12 pendingParentUnitCount:v8 deletedIdentifiers:0 entityIdentifierKeyPath:0 error:error];
  }

  if (objc_msgSend_count(v11))
  {
    v62 = @"RKPerson";
    v63[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    pathManager = [(PLModelMigrationActionCore *)self pathManager];
    v15 = [pathManager photoDirectoryWithType:14 leafType:3 createIfNeeded:1 error:0];

    v16 = [v15 stringByAppendingPathComponent:@"recordstodelete.plist"];
    if (([v13 writeToFile:v16 atomically:1] & 1) == 0)
    {
      v17 = PLMigrationGetLog();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (v18)
      {
        logger = [(PLModelMigrationActionCore *)self logger];

        if (logger)
        {
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
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          *buf = 0u;
          v20 = PLMigrationGetLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          v28 = 138412290;
          v29 = v13;
          LODWORD(v26) = 12;
          v22 = _os_log_send_and_compose_impl(v21, 0, buf, 512, &dword_19BF1F000, v20, 16, "Failed to persist Person delete records to recordstodelete.plist: %@", &v28, v26);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{233, 16}];

          if (v22 != buf)
          {
            free(v22);
          }
        }

        else
        {
          v24 = PLMigrationGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v13;
            _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Failed to persist Person delete records to recordstodelete.plist: %@", buf, 0xCu);
          }
        }
      }
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];

  return v10;
}

- (int64_t)deleteManagedObjectsWithManagedObjectContext:(id)context entity:(Class)entity predicate:(id)predicate pendingParentUnitCount:(int64_t)count deletedIdentifiers:(id *)identifiers entityIdentifierKeyPath:(id)path error:(id *)error
{
  v107 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  pathCopy = path;
  v16 = MEMORY[0x1E695D5E0];
  predicateCopy = predicate;
  entityName = [(objc_class *)entity entityName];
  v19 = [v16 fetchRequestWithEntityName:entityName];

  [v19 setPredicate:predicateCopy];
  v20 = contextCopy;
  [v19 setFetchBatchSize:100];
  v71 = 0;
  v21 = [contextCopy executeFetchRequest:v19 error:&v71];
  v22 = v71;
  v23 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v21) pendingParentUnitCount:count];
  v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:objc_msgSend_count(v21)];
  v64 = v24;
  if (!v21)
  {
    v31 = v20;
    v32 = PLMigrationGetLog();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

    if (v33)
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
        v35 = PLMigrationGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v72 = 138543618;
        v73 = v38;
        v74 = 2114;
        v75 = v22;
        v39 = _os_log_send_and_compose_impl(v36, 0, buf, 512, &dword_19BF1F000, v35, 16, "Failed to execute fetch request for %{public}@. Error: %{public}@", &v72, 22);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v39 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{200, 16}];

        if (v39 != buf)
        {
          free(v39);
        }
      }

      else
      {
        v50 = PLMigrationGetLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = objc_opt_class();
          v52 = NSStringFromClass(v51);
          *buf = 138543618;
          *&buf[4] = v52;
          *&buf[12] = 2114;
          *&buf[14] = v22;
          _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v53 = v22;
    v30 = 3;
    v20 = v31;
    goto LABEL_36;
  }

  v25 = v24;
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __193__PLModelMigrationAction_DeletePetPersonsAndDetectedFaces_deleteManagedObjectsWithManagedObjectContext_entity_predicate_pendingParentUnitCount_deletedIdentifiers_entityIdentifierKeyPath_error___block_invoke;
  v65[3] = &unk_1E756DCA0;
  v66 = pathCopy;
  entityCopy = entity;
  v67 = v25;
  v68 = v20;
  v69 = v23;
  v26 = [v68 enumerateWithIncrementalSaveUsingObjects:v21 withBlock:v65];
  v27 = v26;
  if (v26)
  {
    v28 = v22 == 0;
  }

  else
  {
    v28 = 0;
  }

  v29 = !v28;
  v62 = v29;
  if (!v28)
  {
    v30 = 1;
    goto LABEL_34;
  }

  v61 = v20;
  v22 = v26;
  v41 = PLMigrationGetLog();
  v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);

  if (!v42)
  {
    goto LABEL_33;
  }

  logger3 = [(PLModelMigrationActionCore *)self logger];

  if (!logger3)
  {
    v54 = PLMigrationGetLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      *buf = 138543618;
      *&buf[4] = v56;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %{public}@", buf, 0x16u);
    }

LABEL_33:
    v30 = 3;
    v20 = v61;
    goto LABEL_34;
  }

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
  v44 = PLMigrationGetLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = 3;
  }

  else
  {
    v45 = 2;
  }

  v46 = objc_opt_class();
  v47 = NSStringFromClass(v46);
  v72 = 138543618;
  v73 = v47;
  v74 = 2114;
  v75 = v22;
  v48 = _os_log_send_and_compose_impl(v45, 0, buf, 512, &dword_19BF1F000, v44, 16, "Failed to perform a save operation for %{public}@. Error: %{public}@", &v72, 22);

  logger4 = [(PLModelMigrationActionCore *)self logger];
  [logger4 logWithMessage:v48 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{196, 16}];

  if (v48 != buf)
  {
    free(v48);
  }

  v30 = 3;
  v20 = v61;
LABEL_34:
  v57 = v64;

  v53 = v22;
  if (v62)
  {
    v30 = 1;
    identifiersCopy2 = identifiers;
    goto LABEL_39;
  }

LABEL_36:
  identifiersCopy2 = identifiers;
  if (error)
  {
    v59 = v53;
    *error = v53;
  }

  v57 = v64;
LABEL_39:

  if (identifiersCopy2)
  {
    *identifiersCopy2 = [v57 copy];
  }

  return v30;
}

@end