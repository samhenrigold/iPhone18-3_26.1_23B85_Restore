@interface PLBackgroundModelMigration
+ (BOOL)hasCompletedBackgroundActionClass:(Class)class pathManager:(id)manager;
+ (BOOL)isBackgroundMigrationRegistrationAfterRebuildRequiredWithLibrary:(id)library;
+ (BOOL)isCompletedBackgroundActionClass:(Class)class appPrivateData:(id)data;
+ (BOOL)resetBackgroundActionClass:(Class)class pathManager:(id)manager error:(id *)error;
+ (int64_t)migrateBackgroundActionsWithPhotoLibraryBundle:(id)bundle logger:(id)logger error:(id *)error reportProgressUsingBlock:(id)block continuationHandler:(id)handler;
+ (void)validateBackgroundActionClass:(Class)class;
- (BOOL)isMigrationCancelledWithError:(id *)error;
- (id)initBackgroundMigrationWithPhotoLibraryBundle:(id)bundle logger:(id)logger continuationHandler:(id)handler;
- (int64_t)migrateBackgroundPostProcessingWithError:(id *)error reportProgressUsingBlock:(id)block;
- (int64_t)runBackgroundMigrationAction:(id)action error:(id *)error;
- (void)registerBackgroundActionClass:(Class)class onCondition:(BOOL)condition;
- (void)setMarkerForBackgroundAction:(id)action marker:(int64_t)marker;
@end

@implementation PLBackgroundModelMigration

- (BOOL)isMigrationCancelledWithError:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  continuationHandler = [(PLBackgroundModelMigration *)self continuationHandler];

  if (continuationHandler)
  {
    continuationHandler2 = [(PLBackgroundModelMigration *)self continuationHandler];
    v7 = continuationHandler2[2]();

    if ((v7 & 1) == 0)
    {
      progress = [(PLBackgroundModelMigration *)self progress];
      [progress cancel];
    }
  }

  progress2 = [(PLBackgroundModelMigration *)self progress];
  isCancelled = [progress2 isCancelled];

  if (isCancelled)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69BFF48];
    v17 = *MEMORY[0x1E696A588];
    v18[0] = @"Background Migration was cancelled";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v11 errorWithDomain:v12 code:46014 userInfo:v13];

    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = 0;
  if (error)
  {
LABEL_8:
    v15 = v14;
    *error = v14;
  }

LABEL_9:

  return isCancelled;
}

- (void)setMarkerForBackgroundAction:(id)action marker:(int64_t)marker
{
  v77 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if (actionCopy)
  {
    if (marker)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundModelMigration.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (marker)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLBackgroundModelMigration.m" lineNumber:355 description:{@"Invalid parameter not satisfying: %@", @"marker != PLModelMigrationActionBackgroundStatusNotStarted"}];

LABEL_3:
  appPrivateData = [(PLBackgroundModelMigration *)self appPrivateData];
  v9 = [appPrivateData valueForKeyPath:@"MigrationAction.Background"];
  v10 = [v9 mutableCopy];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v11 = objc_opt_class();
  v12 = [MEMORY[0x1E695DF00] now];
  v13 = NSStringFromClass(v11);
  v14 = [v10 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = NSStringFromClass(v11);
    [v10 setObject:v14 forKeyedSubscript:v15];

    [v14 setObject:v12 forKeyedSubscript:@"PLBackgroundMigrationStartDate"];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:marker];
  [v14 setObject:v16 forKeyedSubscript:@"PLBackgroundMigrationStatus"];

  [v14 setObject:v12 forKeyedSubscript:@"PLBackgroundMigrationStatusDate"];
  if (marker == 1)
  {
    v20 = [v14 objectForKeyedSubscript:@"PLBackgroundMigrationStatusAttempts"];
    integerValue = [v20 integerValue];

    v22 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
    [v14 setObject:v22 forKeyedSubscript:@"PLBackgroundMigrationStatusAttempts"];

    analyticsEventManager = [(PLBackgroundModelMigration *)self analyticsEventManager];
    analyticsEventManager2 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
    v24 = *MEMORY[0x1E69BF620];
    [analyticsEventManager setPayloadValue:analyticsEventManager2 forKey:*MEMORY[0x1E69BF628] onEventWithName:*MEMORY[0x1E69BF620]];
LABEL_15:

    goto LABEL_16;
  }

  if (marker == 2)
  {
    analyticsEventManager = [v14 objectForKeyedSubscript:@"PLBackgroundMigrationStartDate"];
    if (analyticsEventManager)
    {
      [v12 timeIntervalSinceDate:analyticsEventManager];
      v19 = v18;
    }

    else
    {
      v19 = -1.0;
    }

    analyticsEventManager2 = [(PLBackgroundModelMigration *)self analyticsEventManager];
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
    v24 = *MEMORY[0x1E69BF620];
    [analyticsEventManager2 setPayloadValue:v25 forKey:*MEMORY[0x1E69BF638] onEventWithName:*MEMORY[0x1E69BF620]];

    goto LABEL_15;
  }

  v24 = *MEMORY[0x1E69BF620];
LABEL_16:
  analyticsEventManager3 = [(PLBackgroundModelMigration *)self analyticsEventManager];
  shortenedMigrationActionClassName = [objc_opt_class() shortenedMigrationActionClassName];
  [analyticsEventManager3 setPayloadValue:shortenedMigrationActionClassName forKey:*MEMORY[0x1E69BF630] onEventWithName:v24];

  analyticsEventManager4 = [(PLBackgroundModelMigration *)self analyticsEventManager];
  v29 = PLStringFromModelMigrationActionBackgroundStatusShort(marker);
  [analyticsEventManager4 setPayloadValue:v29 forKey:*MEMORY[0x1E69BF648] onEventWithName:v24];

  appPrivateData2 = [(PLBackgroundModelMigration *)self appPrivateData];
  v42 = 0;
  LOBYTE(analyticsEventManager4) = [appPrivateData2 setValue:v10 forKeyPath:@"MigrationAction.Background" error:&v42];
  v31 = v42;

  if ((analyticsEventManager4 & 1) == 0)
  {
    v32 = PLMigrationGetLog();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

    if (v33)
    {
      logger = [(PLBackgroundModelMigration *)self logger];

      if (logger)
      {
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
        v52 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        *buf = 0u;
        v35 = PLMigrationGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        v43 = 138412290;
        v44 = v31;
        v37 = _os_log_send_and_compose_impl(v36, 0, buf, 512, &dword_19BF1F000, v35, 16, "Failed to record marker in private app data. Error: %@", &v43, 12);

        logger2 = [(PLBackgroundModelMigration *)self logger];
        [logger2 logWithMessage:v37 fromCodeLocation:"PLBackgroundModelMigration.m" type:{395, 16}];

        if (v37 != buf)
        {
          free(v37);
        }
      }

      else
      {
        v39 = PLMigrationGetLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v31;
          _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Failed to record marker in private app data. Error: %@", buf, 0xCu);
        }
      }
    }
  }
}

- (int64_t)runBackgroundMigrationAction:(id)action error:(id *)error
{
  actionCopy = action;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__45089;
  v24 = __Block_byref_object_dispose__45090;
  v25 = 0;
  databaseContext = [(PLBackgroundModelMigration *)self databaseContext];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [databaseContext newShortLivedLibraryWithName:{objc_msgSend(v9, "UTF8String")}];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__PLBackgroundModelMigration_runBackgroundMigrationAction_error___block_invoke;
  v15[3] = &unk_1E75787D0;
  v15[4] = self;
  v11 = actionCopy;
  v16 = v11;
  v18 = &v26;
  v12 = v10;
  v17 = v12;
  v19 = &v20;
  [v12 performBlockAndWait:v15];
  if (error)
  {
    *error = v21[5];
  }

  v13 = v27[3];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

void __65__PLBackgroundModelMigration_runBackgroundMigrationAction_error___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setMarkerForBackgroundAction:*(a1 + 40) marker:1];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) managedObjectContext];
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  v5 = [v2 performActionWithManagedObjectContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v5;

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 32) setMarkerForBackgroundAction:*(a1 + 40) marker:2];
  }

  else
  {
    v6 = PLMigrationGetLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = [*(a1 + 32) logger];

      if (v8)
      {
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
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        *buf = 0u;
        v9 = PLMigrationGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 3;
        }

        else
        {
          v10 = 2;
        }

        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v26 = 138543362;
        v27 = v12;
        v24 = 12;
        v13 = _os_log_send_and_compose_impl(v10, 0, buf, 512, &dword_19BF1F000, v9, 0, "%{public}@ skipped setting background completed marker due to failed action", &v26, v24);

        v14 = [*(a1 + 32) logger];
        [v14 logWithMessage:v13 fromCodeLocation:"PLBackgroundModelMigration.m" type:{332, 0}];

        if (v13 != buf)
        {
          free(v13);
        }
      }

      else
      {
        v15 = PLMigrationGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          *buf = 138543362;
          *&buf[4] = v17;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ skipped setting background completed marker due to failed action", buf, 0xCu);
        }
      }
    }
  }

  v18 = [*(a1 + 32) analyticsEventManager];
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "libraryIdentifier")}];
  [v18 setPayloadValue:v19 forKey:*MEMORY[0x1E69BF6C8] onEventWithName:*MEMORY[0x1E69BF6D0]];

  v20 = [*(a1 + 32) analyticsEventManager];
  v21 = PLStringFromModelMigrationActionResultShort(*(*(*(a1 + 56) + 8) + 24));
  v22 = *MEMORY[0x1E69BF620];
  [v20 setPayloadValue:v21 forKey:*MEMORY[0x1E69BF640] onEventWithName:*MEMORY[0x1E69BF620]];

  v23 = [*(a1 + 32) analyticsEventManager];
  [v23 publishEventWithName:v22];
}

- (int64_t)migrateBackgroundPostProcessingWithError:(id *)error reportProgressUsingBlock:(id)block
{
  v114 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__45089;
  v76 = __Block_byref_object_dispose__45090;
  v77 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  obj = 0;
  selfCopy = self;
  LODWORD(self) = [(PLBackgroundModelMigration *)self isMigrationCancelledWithError:&obj];
  objc_storeStrong(&v77, obj);
  v5 = 1;
  if (self)
  {
    v5 = 2;
  }

  v71 = v5;
  if (objc_msgSend_count(selfCopy->_actionsBackground) && v69[3] == 1)
  {
    v6 = [PLModelMigrationActionProcessor alloc];
    migrationUUID = [(PLBackgroundModelMigration *)selfCopy migrationUUID];
    pathManager = [(PLBackgroundModelMigration *)selfCopy pathManager];
    analyticsEventManager = [(PLBackgroundModelMigration *)selfCopy analyticsEventManager];
    logger = [(PLBackgroundModelMigration *)selfCopy logger];
    v11 = [(PLModelMigrationActionProcessor *)v6 initWithUUID:migrationUUID pathManager:pathManager migrationActionType:6 analyticsEventManager:analyticsEventManager logger:logger progressUnitCount:selfCopy->_actionProgressPortionBackground];

    [(PLModelMigrationActionProcessor *)v11 setIgnoreProgressUpdates:1];
    progress = [(PLModelMigrationActionProcessor *)v11 progress];

    if (progress)
    {
      progress2 = [(PLBackgroundModelMigration *)selfCopy progress];
      progress3 = [(PLModelMigrationActionProcessor *)v11 progress];
      [progress2 addChild:progress3 withPendingUnitCount:selfCopy->_actionProgressPortionBackground];
    }

    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    v63 = 0u;
    v48 = selfCopy->_actionsBackground;
    v15 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v63 objects:v113 count:16];
    if (v15)
    {
      v49 = *v64;
LABEL_9:
      v16 = 0;
      v50 = v15;
      while (1)
      {
        if (*v64 != v49)
        {
          objc_enumerationMutation(v48);
        }

        v17 = *(*(&v63 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        progress4 = [v17 progress];
        v59 = 0;
        v60 = &v59;
        v61 = 0x2020000000;
        v62 = 0;
        progress5 = [(PLModelMigrationActionProcessor *)v11 progress];
        [progress5 addChild:progress4 withPendingUnitCount:{objc_msgSend(objc_opt_class(), "actionProgressWeight")}];

        v21 = MEMORY[0x1E696AEC0];
        actionDescription = [objc_opt_class() actionDescription];
        v23 = [v21 stringWithFormat:@"%@", actionDescription];

        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __96__PLBackgroundModelMigration_migrateBackgroundPostProcessingWithError_reportProgressUsingBlock___block_invoke;
        v54[3] = &unk_1E756CB18;
        v54[4] = selfCopy;
        v54[5] = v17;
        v56 = &v68;
        v57 = &v72;
        v58 = &v59;
        v24 = progress4;
        v55 = v24;
        [(PLModelMigrationActionProcessor *)v11 performActionWithName:v23 ifRequired:1 block:v54];
        if (blockCopy)
        {
          completedUnitCount = v60[3];
          if (!completedUnitCount)
          {
            completedUnitCount = [v24 completedUnitCount];
          }

          blockCopy[2](blockCopy, completedUnitCount, [v24 totalUnitCount], v23);
        }

        if ([(PLModelMigrationActionProcessor *)v11 isSuccess])
        {
          v26 = (v73 + 5);
          v53 = v73[5];
          v27 = [(PLBackgroundModelMigration *)selfCopy isMigrationCancelledWithError:&v53];
          objc_storeStrong(v26, v53);
          if (v27)
          {
            v28 = 0;
            v69[3] = 2;
          }

          else
          {
            v28 = 1;
          }
        }

        else
        {
          v29 = PLMigrationGetLog();
          v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

          if (v30)
          {
            logger2 = [(PLBackgroundModelMigration *)selfCopy logger];
            v32 = logger2 == 0;

            if (v32)
            {
              v40 = PLMigrationGetLog();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v41 = objc_opt_class();
                v42 = NSStringFromClass(v41);
                v43 = v73[5];
                *buf = 138543618;
                *&buf[4] = v42;
                *&buf[12] = 2114;
                *&buf[14] = v43;
                _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "%{public}@ failed. Error: %{public}@", buf, 0x16u);
              }
            }

            else
            {
              v111 = 0u;
              v112 = 0u;
              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
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
              memset(buf, 0, sizeof(buf));
              v33 = PLMigrationGetLog();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v34 = 3;
              }

              else
              {
                v34 = 2;
              }

              v35 = objc_opt_class();
              v36 = NSStringFromClass(v35);
              v37 = v73[5];
              v78 = 138543618;
              v79 = v36;
              v80 = 2114;
              v81 = v37;
              LODWORD(v46) = 22;
              v38 = _os_log_send_and_compose_impl(v34, 0, buf, 512, &dword_19BF1F000, v33, 16, "%{public}@ failed. Error: %{public}@", &v78, v46);

              logger3 = [(PLBackgroundModelMigration *)selfCopy logger];
              [logger3 logWithMessage:v38 fromCodeLocation:"PLBackgroundModelMigration.m" type:{303, 16}];

              if (v38 != buf)
              {
                free(v38);
              }
            }
          }

          v28 = 0;
        }

        _Block_object_dispose(&v59, 8);
        objc_autoreleasePoolPop(v18);
        if (!v28)
        {
          break;
        }

        if (v50 == ++v16)
        {
          v15 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v63 objects:v113 count:16];
          if (v15)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }
  }

  if (error)
  {
    *error = v73[5];
  }

  v44 = v69[3];
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);

  return v44;
}

BOOL __96__PLBackgroundModelMigration_migrateBackgroundPostProcessingWithError_reportProgressUsingBlock___block_invoke(uint64_t a1)
{
  v8[72] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8[0] = 0;
  v4 = [v2 runBackgroundMigrationAction:v3 error:v8];
  v5 = v8[0];
  *(*(*(a1 + 56) + 8) + 24) = v4;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v5);
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 48) completedUnitCount];
  [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "totalUnitCount")}];
  v6 = *(*(*(a1 + 56) + 8) + 24) == 1;

  return v6;
}

- (void)registerBackgroundActionClass:(Class)class onCondition:(BOOL)condition
{
  conditionCopy = condition;
  v86 = *MEMORY[0x1E69E9840];
  [PLBackgroundModelMigration validateBackgroundActionClass:?];
  v7 = objc_opt_class();
  appPrivateData = [(PLBackgroundModelMigration *)self appPrivateData];
  v9 = [v7 isCompletedBackgroundActionClass:class appPrivateData:appPrivateData];

  if (!conditionCopy)
  {
    if (v9)
    {
      v21 = PLMigrationGetLog();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

      if (!v22)
      {
        return;
      }

      logger = [(PLBackgroundModelMigration *)self logger];

      if (logger)
      {
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
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        *buf = 0u;
        v55 = 0u;
        v24 = PLMigrationGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v26 = NSStringFromClass(class);
        v52 = 138543362;
        v53 = v26;
        v16 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_19BF1F000, v24, 0, "Skipping registering skipped background action class: %{public}@", &v52, 12);

        logger2 = [(PLBackgroundModelMigration *)self logger];
        v18 = logger2;
        v19 = v16;
        v20 = 196;
        goto LABEL_16;
      }

      v48 = PLMigrationGetLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = NSStringFromClass(class);
        *buf = 138543362;
        *&buf[4] = v49;
        v50 = "Skipping registering skipped background action class: %{public}@";
        goto LABEL_34;
      }

LABEL_35:

      return;
    }

    v36 = [class alloc];
    internalMigrationContext = self->_internalMigrationContext;
    logger3 = [(PLBackgroundModelMigration *)self logger];
    v39 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{-[objc_class actionProgressWeight](class, "actionProgressWeight")}];
    continuationHandler = [(PLBackgroundModelMigration *)self continuationHandler];
    v32 = [v36 initWithMigrationContext:internalMigrationContext logger:logger3 progress:v39 continuationHandler:continuationHandler];

    [(PLBackgroundModelMigration *)self setMarkerForBackgroundAction:v32 marker:3];
    v41 = PLMigrationGetLog();
    LODWORD(logger3) = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);

    if (!logger3)
    {
LABEL_28:

      return;
    }

    logger4 = [(PLBackgroundModelMigration *)self logger];

    if (logger4)
    {
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
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      *buf = 0u;
      v55 = 0u;
      v43 = PLMigrationGetLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      v45 = NSStringFromClass(class);
      v52 = 138543362;
      v53 = v45;
      v46 = _os_log_send_and_compose_impl(v44, 0, buf, 512, &dword_19BF1F000, v43, 0, "Skipping registering background action class: %{public}@", &v52, 12);

      logger5 = [(PLBackgroundModelMigration *)self logger];
      [logger5 logWithMessage:v46 fromCodeLocation:"PLBackgroundModelMigration.m" type:{194, 0}];

      if (v46 != buf)
      {
        free(v46);
      }

      goto LABEL_28;
    }

    v35 = PLMigrationGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v51 = NSStringFromClass(class);
      *buf = 138543362;
      *&buf[4] = v51;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Skipping registering background action class: %{public}@", buf, 0xCu);
    }

LABEL_20:

    goto LABEL_28;
  }

  if ((v9 & 1) == 0)
  {
    v27 = [class alloc];
    v28 = self->_internalMigrationContext;
    logger6 = [(PLBackgroundModelMigration *)self logger];
    v30 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{-[objc_class actionProgressWeight](class, "actionProgressWeight")}];
    continuationHandler2 = [(PLBackgroundModelMigration *)self continuationHandler];
    v32 = [v27 initWithMigrationContext:v28 logger:logger6 progress:v30 continuationHandler:continuationHandler2];

    actionProgressWeight = [(objc_class *)class actionProgressWeight];
    actionsBackground = self->_actionsBackground;
    self->_actionProgressPortionBackground += actionProgressWeight;
    [(NSMutableArray *)actionsBackground addObject:v32];
    v35 = PLMigrationGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v32;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEBUG, "Registering background action: %{public}@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (!v11)
  {
    return;
  }

  logger7 = [(PLBackgroundModelMigration *)self logger];

  if (!logger7)
  {
    v48 = PLMigrationGetLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = NSStringFromClass(class);
      *buf = 138543362;
      *&buf[4] = v49;
      v50 = "Skipping registering completed background action class: %{public}@";
LABEL_34:
      _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_DEFAULT, v50, buf, 0xCu);

      goto LABEL_35;
    }

    goto LABEL_35;
  }

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
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  *buf = 0u;
  v55 = 0u;
  v13 = PLMigrationGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v15 = NSStringFromClass(class);
  v52 = 138543362;
  v53 = v15;
  v16 = _os_log_send_and_compose_impl(v14, 0, buf, 512, &dword_19BF1F000, v13, 0, "Skipping registering completed background action class: %{public}@", &v52, 12);

  logger2 = [(PLBackgroundModelMigration *)self logger];
  v18 = logger2;
  v19 = v16;
  v20 = 186;
LABEL_16:
  [logger2 logWithMessage:v19 fromCodeLocation:"PLBackgroundModelMigration.m" type:{v20, 0}];

  if (v16 != buf)
  {
    free(v16);
  }
}

- (id)initBackgroundMigrationWithPhotoLibraryBundle:(id)bundle logger:(id)logger continuationHandler:(id)handler
{
  bundleCopy = bundle;
  loggerCopy = logger;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (bundleCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundModelMigration.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"bundle", loggerCopy}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLBackgroundModelMigration.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"continuationHandler"}];

LABEL_3:
  v12 = [[PLDatabaseContext alloc] initWithLibraryBundle:bundleCopy];
  v13 = objc_alloc_init(MEMORY[0x1E69BF1F0]);
  v14 = [PLBackgroundMigrationContext alloc];
  pathManager = [bundleCopy pathManager];
  v16 = [(PLBackgroundMigrationContext *)v14 initWithPathManager:pathManager databaseContext:v12 analyticsEventManager:v13];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLBackgroundModelMigration.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"[ctx isKindOfClass:PLBackgroundMigrationContext.class]"}];
  }

  v43.receiver = self;
  v43.super_class = PLBackgroundModelMigration;
  v17 = [(PLBackgroundModelMigration *)&v43 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_logger, logger);
    v19 = _Block_copy(v11);
    continuationHandler = v18->_continuationHandler;
    v18->_continuationHandler = v19;

    objc_storeStrong(&v18->_internalMigrationContext, v16);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    migrationUUID = v18->_migrationUUID;
    v18->_migrationUUID = uUIDString;

    v24 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
    progress = v18->_progress;
    v18->_progress = v24;

    [(NSProgress *)v18->_progress setCancellable:1];
    objc_initWeak(&location, v18);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __103__PLBackgroundModelMigration_initBackgroundMigrationWithPhotoLibraryBundle_logger_continuationHandler___block_invoke;
    v40[3] = &unk_1E75788C0;
    objc_copyWeak(&v41, &location);
    [(NSProgress *)v18->_progress setCancellationHandler:v40];
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actionsBackground = v18->_actionsBackground;
    v18->_actionsBackground = v26;

    v18->_actionProgressPortionBackground = 0;
    v28 = objc_initWeak(&from, v18);

    v29 = objc_alloc(MEMORY[0x1E69BF270]);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __103__PLBackgroundModelMigration_initBackgroundMigrationWithPhotoLibraryBundle_logger_continuationHandler___block_invoke_69;
    v37[3] = &unk_1E7576828;
    objc_copyWeak(&v38, &from);
    v30 = [v29 initWithBlock:v37];
    objc_destroyWeak(&v38);
    objc_destroyWeak(&from);
    lazyAppPrivateData = v18->_lazyAppPrivateData;
    v18->_lazyAppPrivateData = v30;

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __103__PLBackgroundModelMigration_initBackgroundMigrationWithPhotoLibraryBundle_logger_continuationHandler___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = PLMigrationGetLog();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained logger];

    if (v5)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *buf = 0u;
      v14 = 0u;
      v6 = PLMigrationGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }

      v12[0] = 0;
      v8 = _os_log_send_and_compose_impl(v7, 0, buf, 512, &dword_19BF1F000, v6, 0, "Background Migration was cancelled", v12, 2);

      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [v9 logger];
      [v10 logWithMessage:v8 fromCodeLocation:"PLBackgroundModelMigration.m" type:{141, 0}];

      if (v8 != buf)
      {
        free(v8);
      }
    }

    else
    {
      v11 = PLMigrationGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Background Migration was cancelled", buf, 2u);
      }
    }
  }
}

id __103__PLBackgroundModelMigration_initBackgroundMigrationWithPhotoLibraryBundle_logger_continuationHandler___block_invoke_69(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = MEMORY[0x1E69BF188];
    v4 = [WeakRetained pathManager];
    v5 = [v4 libraryURL];
    v6 = [v3 appPrivateDataForLibraryURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isBackgroundMigrationRegistrationAfterRebuildRequiredWithLibrary:(id)library
{
  v43 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (libraryCopy)
  {
    v4 = objc_opt_class();
    v5 = PLModelMigrationSubclassesForClass(v4);
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          if ([v12 isResetAfterRebuildRequiredWithLibrary:libraryCopy])
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v9);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v29 = 0;
      v16 = *v32;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v31 + 1) + 8 * j);
          pathManager = [libraryCopy pathManager];
          LODWORD(v18) = [PLBackgroundModelMigration hasCompletedBackgroundActionClass:v18 pathManager:pathManager];

          if (v18)
          {
            v20 = objc_opt_class();
            pathManager2 = [libraryCopy pathManager];
            v30 = 0;
            v22 = [PLBackgroundModelMigration resetBackgroundActionClass:v20 pathManager:pathManager2 error:&v30];
            v23 = v30;

            v24 = PLMigrationGetLog();
            v25 = v24;
            if (v22)
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Requesting background migration after rebuild", buf, 2u);
              }

              v29 = 1;
            }

            else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v40 = v23;
              _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed to reset: PLModelMigrationAction_UpdateAssetAdjustmentsState. Error: %@", buf, 0xCu);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v15);
    }

    else
    {
      v29 = 0;
    }

    v26 = v7;
    v27 = v29;
  }

  else
  {
    v26 = PLMigrationGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Unable to check background migration action reset after rebuild due to missing library", buf, 2u);
    }

    v27 = 0;
  }

  return v27 & 1;
}

+ (BOOL)isCompletedBackgroundActionClass:(Class)class appPrivateData:(id)data
{
  dataCopy = data;
  v8 = dataCopy;
  if (!class)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundModelMigration.m" lineNumber:344 description:{@"Invalid parameter not satisfying: %@", @"actionClass"}];

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLBackgroundModelMigration.m" lineNumber:345 description:{@"Invalid parameter not satisfying: %@", @"appPrivateData"}];

    goto LABEL_3;
  }

  if (!dataCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [v8 valueForKeyPath:@"MigrationAction.Background"];
  v10 = NSStringFromClass(class);
  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = [v11 objectForKeyedSubscript:@"PLBackgroundMigrationStatus"];
  integerValue = [v12 integerValue];

  return (integerValue & 0xFFFFFFFFFFFFFFFELL) == 2;
}

+ (int64_t)migrateBackgroundActionsWithPhotoLibraryBundle:(id)bundle logger:(id)logger error:(id *)error reportProgressUsingBlock:(id)block continuationHandler:(id)handler
{
  bundleCopy = bundle;
  loggerCopy = logger;
  blockCopy = block;
  handlerCopy = handler;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v15 = PLBackgroundMigrationActionQueue();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __135__PLBackgroundModelMigration_migrateBackgroundActionsWithPhotoLibraryBundle_logger_error_reportProgressUsingBlock_continuationHandler___block_invoke;
  v22[3] = &unk_1E7574DC0;
  v23 = bundleCopy;
  v24 = loggerCopy;
  v25 = handlerCopy;
  v26 = blockCopy;
  v27 = &v29;
  errorCopy = error;
  v16 = blockCopy;
  v17 = handlerCopy;
  v18 = loggerCopy;
  v19 = bundleCopy;
  dispatch_sync(v15, v22);

  v20 = v30[3];
  _Block_object_dispose(&v29, 8);
  return v20;
}

void __135__PLBackgroundModelMigration_migrateBackgroundActionsWithPhotoLibraryBundle_logger_error_reportProgressUsingBlock_continuationHandler___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [[PLBackgroundModelMigration alloc] initBackgroundMigrationWithPhotoLibraryBundle:*(a1 + 32) logger:*(a1 + 40) continuationHandler:*(a1 + 48)];
  PLModelMigrationActionRegistration_Background(v3);
  v23 = 0;
  v4 = [v3 migrateBackgroundPostProcessingWithError:&v23 reportProgressUsingBlock:*(a1 + 56)];
  v5 = v23;
  *(*(*(a1 + 64) + 8) + 24) = v4;
  v6 = *(*(*(a1 + 64) + 8) + 24);
  if (v6 != 3)
  {
    if (v6 != 1)
    {
      goto LABEL_13;
    }

    v7 = [*(a1 + 32) libraryURL];
    PLDeregisterBackgroundMigrationLibraryURL(v7);
    goto LABEL_4;
  }

  v8 = [*(a1 + 32) libraryURL];
  v9 = PLBumpBackgroundMigrationLibraryURL(v8);

  if (v9 < 4)
  {
    goto LABEL_13;
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = [v3 logger];

  if (!v12)
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v5;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Background migration failure hit max retry attempts. Marking it as DONE until next process restart. Error: %@", buf, 0xCu);
    }

LABEL_4:

    goto LABEL_13;
  }

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
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *buf = 0u;
  v13 = PLMigrationGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v24 = 138412290;
  v25 = v5;
  v15 = _os_log_send_and_compose_impl(v14, 0, buf, 512, &dword_19BF1F000, v13, 16, "Background migration failure hit max retry attempts. Marking it as DONE until next process restart. Error: %@", &v24, 12);

  v16 = [v3 logger];
  [v16 logWithMessage:v15 fromCodeLocation:"PLBackgroundModelMigration.m" type:{253, 16}];

  if (v15 != buf)
  {
    free(v15);
  }

LABEL_13:

  objc_autoreleasePoolPop(v2);
  v17 = *(a1 + 72);
  v18 = *(*(*(a1 + 64) + 8) + 24);
  v19 = v5;
  v20 = v19;
  if (v18 != 1 && v17 != 0)
  {
    v22 = v19;
    *v17 = v20;
  }
}

+ (void)validateBackgroundActionClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = NSStringFromClass(class);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundModelMigration.m" lineNumber:227 description:{@"Invalid background action class: %@", v6}];
  }
}

+ (BOOL)resetBackgroundActionClass:(Class)class pathManager:(id)manager error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  [self validateBackgroundActionClass:class];
  v9 = MEMORY[0x1E69BF188];
  libraryURL = [managerCopy libraryURL];
  v11 = [v9 appPrivateDataForLibraryURL:libraryURL];

  v12 = [v11 valueForKeyPath:@"MigrationAction.Background"];
  v13 = [v12 mutableCopy];

  v14 = NSStringFromClass(class);
  [v13 removeObjectForKey:v14];

  v28 = 0;
  v15 = [v11 setValue:v13 forKeyPath:@"MigrationAction.Background" error:&v28];
  v16 = v28;
  if (v15)
  {
    v27 = v16;
    v17 = [PLModelMigrationActionBackground resetResumeMarkerForActionClass:class pathManager:managerCopy error:&v27];
    v18 = v27;

    if (v17)
    {
      v19 = v18;
      v20 = 1;
      goto LABEL_10;
    }

    v21 = PLMigrationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromClass(class);
      *buf = 138543618;
      v30 = v26;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to reset the resume marker id in private app data for class: %{public}@. Error: %@", buf, 0x16u);
    }
  }

  else
  {
    v21 = PLMigrationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromClass(class);
      *buf = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to reset marker in private app data for class: %{public}@. Error: %@", buf, 0x16u);
    }

    v18 = v16;
  }

  v23 = v18;
  v19 = v23;
  if (error)
  {
    v24 = v23;
    v20 = 0;
    *error = v19;
  }

  else
  {
    v20 = 0;
  }

LABEL_10:

  return v20;
}

+ (BOOL)hasCompletedBackgroundActionClass:(Class)class pathManager:(id)manager
{
  managerCopy = manager;
  [self validateBackgroundActionClass:class];
  v7 = MEMORY[0x1E69BF188];
  libraryURL = [managerCopy libraryURL];

  v9 = [v7 appPrivateDataForLibraryURL:libraryURL];

  LOBYTE(class) = [self isCompletedBackgroundActionClass:class appPrivateData:v9];
  return class;
}

@end