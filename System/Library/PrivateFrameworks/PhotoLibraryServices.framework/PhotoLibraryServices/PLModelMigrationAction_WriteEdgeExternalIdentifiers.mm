@interface PLModelMigrationAction_WriteEdgeExternalIdentifiers
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_WriteEdgeExternalIdentifiers

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  progress = [(PLModelMigrationActionCore *)self progress];
  v8 = [progress totalUnitCount] / 2;

  pl_graphCache = [contextCopy pl_graphCache];
  [pl_graphCache resetNextAvailableEdgeExternalIdentifier];
  v10 = +[PLGraphEdge fetchRequest];
  v37 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __99__PLModelMigrationAction_WriteEdgeExternalIdentifiers_performActionWithManagedObjectContext_error___block_invoke;
  v34[3] = &unk_1E7567E88;
  v11 = contextCopy;
  v35 = v11;
  v36 = @"externalIdentifier";
  v12 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v11 fetchRequest:v10 pendingParentUnitCount:v8 error:&v37 processingBlock:v34];
  v13 = v37;
  if (v12 == 1)
  {
    errorCopy = error;
    v14 = MEMORY[0x1E695D5E0];
    v15 = +[PLGraphLabel entityName];
    v16 = [v14 fetchRequestWithEntityName:v15];

    v33 = v13;
    v12 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v11 fetchRequest:v16 pendingParentUnitCount:v8 error:&v33 processingBlock:&__block_literal_global_167];
    v17 = v33;

    if (v12 != 1)
    {
      v18 = PLMigrationGetLog();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

      if (v19)
      {
        logger = [(PLModelMigrationActionCore *)self logger];

        if (logger)
        {
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
          v40 = 0u;
          v41 = 0u;
          *buf = 0u;
          v39 = 0u;
          v21 = PLMigrationGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = 3;
          }

          else
          {
            v22 = 2;
          }

          v32[0] = 0;
          v30 = 2;
          v23 = _os_log_send_and_compose_impl(v22, 0, buf, 512, &dword_19BF1F000, v21, 16, "PLModelMigrationAction_WriteEdgeExternalIdentifiers failed to clear bitset data on existing labels.", v32, v30);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{491, 16}];

          if (v23 != buf)
          {
            free(v23);
          }
        }

        else
        {
          v25 = PLMigrationGetLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "PLModelMigrationAction_WriteEdgeExternalIdentifiers failed to clear bitset data on existing labels.", buf, 2u);
          }
        }
      }
    }

    v13 = v17;
    error = errorCopy;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v26 = v13;
  v27 = v26;
  if (v12 != 1 && error)
  {
    v28 = v26;
    *error = v27;
  }

  return v12;
}

@end