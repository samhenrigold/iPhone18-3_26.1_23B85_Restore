@interface PLModelMigration
- (BOOL)isMigrationCancelledWithError:(id *)error;
- (PLModelMigration)initWithMigrationContext:(id)context logger:(id)logger;
- (id)_managedObjectModelForLightweightMigrationStageWithURL:(id)l;
- (id)_nextRequiredStagedMigrationVersionAfterVersion:(id)version;
- (id)_stagedManagedObjectModelURLWithStageVersion:(id)version;
- (id)addStoreWithCoordinator:(id)coordinator migrationUUID:(id)d storeURL:(id)l options:(id)options description:(id)description fromVersion:(int)version toVersion:(int)toVersion progress:(id)self0 progressUnitCount:(unint64_t)self1 error:(id *)self2;
- (int64_t)migratePostProcessingWithActions:(id)actions migrationActionType:(int64_t)type progress:(id)progress progressUnitCount:(unint64_t)count error:(id *)error;
- (int64_t)migratePostProcessingWithProgressUnitCount:(unint64_t)count error:(id *)error;
- (int64_t)migratePreSchemaMigrationWithCurrentStoreVersion:(id)version error:(id *)error;
- (int64_t)migrateSchemaMigrationWithAutoMigrationOptions:(id)options currentStoreVersion:(id)version error:(id *)error;
- (int64_t)migrateStagedMigrationWithAutoMigrationOptions:(id)options currentStoreVersion:(id)version error:(id *)error;
- (int64_t)migrateWithError:(id *)error;
- (int64_t)runMigrationAction:(id)action withCoordinator:(id)coordinator error:(id *)error;
- (int64_t)setupWithError:(id *)error;
- (void)_registerActionClass:(Class)class actionsContainer:(id)container progressPortion:(unint64_t *)portion;
- (void)actionRegistration;
- (void)registerActionClass:(Class)class onCondition:(BOOL)condition;
- (void)registerPostRepairActionClass:(Class)class onCondition:(BOOL)condition;
- (void)registerPreRepairActionClass:(Class)class onCondition:(BOOL)condition;
- (void)registerPreSchemaActionClass:(Class)class onCondition:(BOOL)condition;
- (void)registerStagedActionClass:(Class)class onCondition:(BOOL)condition;
- (void)resetBackgroundActionClass:(Class)class onCondition:(BOOL)condition;
@end

@implementation PLModelMigration

- (BOOL)isMigrationCancelledWithError:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  progress = [(PLModelMigration *)self progress];
  isCancelled = [progress isCancelled];

  if (isCancelled)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E69BFF48];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"Migration was cancelled";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v6 errorWithDomain:v7 code:46008 userInfo:v8];

    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = 0;
  if (error)
  {
LABEL_5:
    v10 = v9;
    *error = v9;
  }

LABEL_6:

  return isCancelled;
}

- (int64_t)runMigrationAction:(id)action withCoordinator:(id)coordinator error:(id *)error
{
  actionCopy = action;
  coordinatorCopy = coordinator;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__56805;
  v29 = __Block_byref_object_dispose__56806;
  v30 = 0;
  v10 = objc_autoreleasePoolPush();
  pl_dispatch_once();
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  pathManager = [(PLModelMigration *)self pathManager];
  graphCache = [(PLModelMigration *)self graphCache];
  v15 = PLManagedObjectContextForMigrationActionWithCoordinator(coordinatorCopy, v12, pathManager, graphCache);

  [PLEnumerateAndSaveController disableConcurrencyLimiterForContext:v15];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__PLModelMigration_runMigrationAction_withCoordinator_error___block_invoke;
  v20[3] = &unk_1E7578898;
  v23 = &v31;
  v16 = actionCopy;
  v21 = v16;
  v17 = v15;
  v22 = v17;
  v24 = &v25;
  [v17 performBlockAndWait:v20];

  objc_autoreleasePoolPop(v10);
  if (error)
  {
    *error = v26[5];
  }

  v18 = v32[3];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  return v18;
}

uint64_t __61__PLModelMigration_runMigrationAction_withCoordinator_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 performActionWithManagedObjectContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
  return [a1[5] reset];
}

- (id)_stagedManagedObjectModelURLWithStageVersion:(id)version
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"photos-%d-STAGED", objc_msgSend(version, "intValue")];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 URLForResource:v3 withExtension:@"omo"];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v6 URLForResource:v3 withExtension:@"mom"];
  }

  return v5;
}

- (id)_managedObjectModelForLightweightMigrationStageWithURL:(id)l
{
  v15 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:lCopy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * i) setManagedObjectClassName:{0, v10}];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_nextRequiredStagedMigrationVersionAfterVersion:(id)version
{
  v18 = *MEMORY[0x1E69E9840];
  integerValue = [version integerValue];
  v4 = &unk_1F0FBFE20;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = &unk_1F0FBFE20;
  v6 = [&unk_1F0FBFE20 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(&unk_1F0FBFE20);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (integerValue < [v10 intValue])
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [&unk_1F0FBFE20 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)addStoreWithCoordinator:(id)coordinator migrationUUID:(id)d storeURL:(id)l options:(id)options description:(id)description fromVersion:(int)version toVersion:(int)toVersion progress:(id)self0 progressUnitCount:(unint64_t)self1 error:(id *)self2
{
  v42 = *&version;
  v103 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  dCopy = d;
  lCopy = l;
  optionsCopy = options;
  descriptionCopy = description;
  progressCopy = progress;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__56805;
  v64 = __Block_byref_object_dispose__56806;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__56805;
  v58 = __Block_byref_object_dispose__56806;
  v59 = 0;
  obj = 0;
  LOBYTE(description) = [(PLModelMigration *)self isMigrationCancelledWithError:&obj];
  objc_storeStrong(&v59, obj);
  if ((description & 1) == 0)
  {
    toVersion = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (version: %d -> %d)", descriptionCopy, v42, toVersion];
    v20 = [PLModelMigrationActionProcessor alloc];
    pathManager = [(PLModelMigration *)self pathManager];
    analyticsEventManager = [(PLModelMigration *)self analyticsEventManager];
    logger = [(PLModelMigration *)self logger];
    v24 = [(PLModelMigrationActionProcessor *)v20 initWithUUID:dCopy pathManager:pathManager migrationActionType:1 analyticsEventManager:analyticsEventManager logger:logger progressUnitCount:1];

    [(PLModelMigrationActionProcessor *)v24 setIgnoreProgressUpdates:1];
    progress = [(PLModelMigrationActionProcessor *)v24 progress];
    [progressCopy addChild:progress withPendingUnitCount:count];

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __142__PLModelMigration_addStoreWithCoordinator_migrationUUID_storeURL_options_description_fromVersion_toVersion_progress_progressUnitCount_error___block_invoke;
    v46[3] = &unk_1E756E3C8;
    v26 = v24;
    v47 = v26;
    v51 = &v60;
    v52 = &v54;
    v48 = coordinatorCopy;
    v49 = lCopy;
    v50 = optionsCopy;
    [(PLModelMigrationActionProcessor *)v26 performActionWithName:toVersion ifRequired:1 block:v46];
    if (![(PLModelMigrationActionProcessor *)v26 isSuccess])
    {
      v27 = PLMigrationGetLog();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (v28)
      {
        logger2 = [(PLModelMigration *)self logger];
        v30 = logger2 == 0;

        if (v30)
        {
          v36 = PLMigrationGetLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = v55[5];
            LODWORD(buf) = 67109634;
            DWORD1(buf) = v42;
            WORD4(buf) = 1024;
            *(&buf + 10) = toVersion;
            HIWORD(buf) = 2112;
            *&v72 = v37;
            _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to open store for migration from version %d to %d. Error %@", &buf, 0x18u);
          }
        }

        else
        {
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
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          buf = 0u;
          v72 = 0u;
          v31 = PLMigrationGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }

          v33 = v55[5];
          v66[0] = 67109634;
          v66[1] = v42;
          v67 = 1024;
          toVersionCopy = toVersion;
          v69 = 2112;
          v70 = v33;
          LODWORD(v40) = 24;
          v34 = _os_log_send_and_compose_impl(v32, 0, &buf, 512, &dword_19BF1F000, v31, 16, "Failed to open store for migration from version %d to %d. Error %@", v66, v40);

          logger3 = [(PLModelMigration *)self logger];
          [logger3 logWithMessage:v34 fromCodeLocation:"PLModelMigration.m" type:{686, 16}];

          if (v34 != &buf)
          {
            free(v34);
          }
        }
      }
    }
  }

  if (error)
  {
    *error = v55[5];
  }

  v38 = v61[5];
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(&v60, 8);

  return v38;
}

BOOL __142__PLModelMigration_addStoreWithCoordinator_migrationUUID_storeURL_options_description_fromVersion_toVersion_progress_progressUnitCount_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progress];
  [v2 becomeCurrentWithPendingUnitCount:1];

  v3 = *(*(a1 + 72) + 8);
  v17 = *(v3 + 40);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __142__PLModelMigration_addStoreWithCoordinator_migrationUUID_storeURL_options_description_fromVersion_toVersion_progress_progressUnitCount_error___block_invoke_2;
  v13 = &unk_1E756E3A0;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v4 = [PLManagedObjectContext loadingPersistentStoreWithReason:@"Migration" error:&v17 workBlock:&v10];
  objc_storeStrong((v3 + 40), v17);
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) progress];
  [v7 resignCurrent];

  v8 = *(*(*(a1 + 64) + 8) + 40) != 0;
  return v8;
}

id __142__PLModelMigration_addStoreWithCoordinator_migrationUUID_storeURL_options_description_fromVersion_toVersion_progress_progressUnitCount_error___block_invoke_2(void *a1, void *a2)
{
  v3 = *MEMORY[0x1E695D4A8];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v13 = 0;
  v7 = [v5 addPersistentStoreWithType:v3 configuration:0 URL:v4 options:v6 error:&v13];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = a2 == 0;
  }

  if (!v10)
  {
    v11 = v8;
    *a2 = v9;
  }

  return v7;
}

- (int64_t)migratePostProcessingWithActions:(id)actions migrationActionType:(int64_t)type progress:(id)progress progressUnitCount:(unint64_t)count error:(id *)error
{
  v121 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  progressCopy = progress;
  if (type == 6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:612 description:{@"Invalid parameter not satisfying: %@", @"type != PLMigrationActionTypeBackground"}];
  }

  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__56805;
  v83 = __Block_byref_object_dispose__56806;
  v84 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  obj = 0;
  selfCopy = self;
  v12 = [(PLModelMigration *)self isMigrationCancelledWithError:&obj];
  objc_storeStrong(&v84, obj);
  v13 = 1;
  if (v12)
  {
    v13 = 2;
  }

  v78 = v13;
  if (objc_msgSend_count(actionsCopy) && v76[3] == 1)
  {
    v14 = [PLModelMigrationActionProcessor alloc];
    migrationUUID = [(PLModelMigration *)self migrationUUID];
    pathManager = [(PLModelMigration *)self pathManager];
    analyticsEventManager = [(PLModelMigration *)self analyticsEventManager];
    logger = [(PLModelMigration *)self logger];
    if (type == 5)
    {
      countCopy = 0;
    }

    else
    {
      countCopy = count;
    }

    v20 = [(PLModelMigrationActionProcessor *)v14 initWithUUID:migrationUUID pathManager:pathManager migrationActionType:type analyticsEventManager:analyticsEventManager logger:logger progressUnitCount:countCopy];

    [(PLModelMigrationActionProcessor *)v20 setIgnoreProgressUpdates:1];
    progress = [(PLModelMigrationActionProcessor *)v20 progress];

    if (progress)
    {
      progress2 = [(PLModelMigrationActionProcessor *)v20 progress];
      [progressCopy addChild:progress2 withPendingUnitCount:count];
    }

    migrationContext = [(PLModelMigration *)self migrationContext];
    store = [migrationContext store];
    persistentStoreCoordinator = [store persistentStoreCoordinator];

    v73 = 0u;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    v60 = actionsCopy;
    v25 = [v60 countByEnumeratingWithState:&v70 objects:v120 count:16];
    if (v25)
    {
      v61 = *v71;
LABEL_14:
      v26 = 0;
      while (1)
      {
        if (*v71 != v61)
        {
          objc_enumerationMutation(v60);
        }

        v27 = *(*(&v70 + 1) + 8 * v26);
        v28 = objc_autoreleasePoolPush();
        progress3 = [v27 progress];
        progress4 = [(PLModelMigrationActionProcessor *)v20 progress];
        [progress4 addChild:progress3 withPendingUnitCount:{objc_msgSend(objc_opt_class(), "actionProgressWeight")}];

        v31 = MEMORY[0x1E696AEC0];
        actionDescription = [objc_opt_class() actionDescription];
        v33 = [v31 stringWithFormat:@"%@", actionDescription];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __106__PLModelMigration_migratePostProcessingWithActions_migrationActionType_progress_progressUnitCount_error___block_invoke;
        v65[3] = &unk_1E756E3C8;
        v68 = &v75;
        v65[4] = selfCopy;
        v65[5] = v27;
        v66 = persistentStoreCoordinator;
        v69 = &v79;
        v34 = progress3;
        v67 = v34;
        [(PLModelMigrationActionProcessor *)v20 performActionWithName:v33 ifRequired:1 block:v65];

        if ([(PLModelMigrationActionProcessor *)v20 isSuccess])
        {
          v35 = (v80 + 5);
          v64 = v80[5];
          v36 = [(PLModelMigration *)selfCopy isMigrationCancelledWithError:&v64];
          objc_storeStrong(v35, v64);
          if (v36)
          {
            v37 = 0;
            v76[3] = 2;
          }

          else
          {
            v37 = 1;
          }
        }

        else
        {
          v38 = PLMigrationGetLog();
          v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);

          if (v39)
          {
            logger2 = [(PLModelMigration *)selfCopy logger];
            v41 = logger2 == 0;

            if (v41)
            {
              v49 = PLMigrationGetLog();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v50 = objc_opt_class();
                v51 = NSStringFromClass(v50);
                v52 = v80[5];
                *buf = 138543618;
                *&buf[4] = v51;
                *&buf[12] = 2114;
                *&buf[14] = v52;
                _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_ERROR, "%{public}@ failed. Error: %{public}@", buf, 0x16u);
              }
            }

            else
            {
              v118 = 0u;
              v119 = 0u;
              v116 = 0u;
              v117 = 0u;
              v114 = 0u;
              v115 = 0u;
              v112 = 0u;
              v113 = 0u;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
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
              memset(buf, 0, sizeof(buf));
              v42 = PLMigrationGetLog();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v43 = 3;
              }

              else
              {
                v43 = 2;
              }

              v44 = objc_opt_class();
              v45 = NSStringFromClass(v44);
              v46 = v80[5];
              v85 = 138543618;
              v86 = v45;
              v87 = 2114;
              v88 = v46;
              LODWORD(v56) = 22;
              v47 = _os_log_send_and_compose_impl(v43, 0, buf, 512, &dword_19BF1F000, v42, 16, "%{public}@ failed. Error: %{public}@", &v85, v56);

              logger3 = [(PLModelMigration *)selfCopy logger];
              [logger3 logWithMessage:v47 fromCodeLocation:"PLModelMigration.m" type:{649, 16}];

              if (v47 != buf)
              {
                free(v47);
              }
            }
          }

          v37 = 0;
        }

        objc_autoreleasePoolPop(v28);
        if (!v37)
        {
          break;
        }

        if (v25 == ++v26)
        {
          v25 = [v60 countByEnumeratingWithState:&v70 objects:v120 count:16];
          if (v25)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }
  }

  if (error)
  {
    *error = v80[5];
  }

  v53 = v76[3];
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);

  return v53;
}

BOOL __106__PLModelMigration_migratePostProcessingWithActions_migrationActionType_progress_progressUnitCount_error___block_invoke(uint64_t a1)
{
  v16[72] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = 0;
  v5 = [v2 runMigrationAction:v3 withCoordinator:v4 error:&v14];
  v6 = v14;
  v7 = v6;
  *(*(*(a1 + 64) + 8) + 24) = v5;
  if (*(*(*(a1 + 64) + 8) + 24) != 1 && !*(*(*(a1 + 72) + 8) + 40))
  {
    if (v6)
    {
      v15 = *MEMORY[0x1E696AA08];
      v16[0] = v6;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    }

    else
    {
      v8 = 0;
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46008 userInfo:v8];
    v10 = *(*(a1 + 72) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  [*(a1 + 56) setCompletedUnitCount:{objc_msgSend(*(a1 + 56), "totalUnitCount")}];
  v12 = *(*(*(a1 + 64) + 8) + 24) == 1;

  return v12;
}

- (int64_t)migratePostProcessingWithProgressUnitCount:(unint64_t)count error:(id *)error
{
  v52[1] = *MEMORY[0x1E69E9840];
  [(PLModelMigration *)self actionRegistration];
  v7 = self->_actionProgressPortionPreRepair + self->_actionProgressPortion + self->_actionProgressPortionPostRepair;
  v8 = vcvtd_n_f64_u64(v7, 1uLL);
  v9 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:v7 + v8];
  progress = [(PLModelMigration *)self progress];
  [progress addChild:v9 withPendingUnitCount:count];

  actionsPreRepair = self->_actionsPreRepair;
  actionProgressPortionPreRepair = self->_actionProgressPortionPreRepair;
  v50 = 0;
  v13 = [(PLModelMigration *)self migratePostProcessingWithActions:actionsPreRepair migrationActionType:3 progress:v9 progressUnitCount:actionProgressPortionPreRepair error:&v50];
  v14 = v50;
  analyticsEventManager = [(PLModelMigration *)self analyticsEventManager];
  [analyticsEventManager startRecordingTimedEventToken];
  v17 = v16;

  errorCopy = error;
  if (v13 == 1)
  {
    legacyMigrationDelegate = [(PLModelMigration *)self legacyMigrationDelegate];
    migrationContext = [(PLModelMigration *)self migrationContext];
    store = [migrationContext store];
    migrationUUID = [(PLModelMigration *)self migrationUUID];
    migrationContext2 = [(PLModelMigration *)self migrationContext];
    v23 = [legacyMigrationDelegate postProcessMigratedStore:store migrationUUID:migrationUUID fromVersion:objc_msgSend(migrationContext2 progress:"previousStoreVersion") progressUnitCount:{v9, v8}];

    if (v23)
    {
      actions = self->_actions;
      actionProgressPortion = self->_actionProgressPortion;
      v49 = v14;
      v13 = [(PLModelMigration *)self migratePostProcessingWithActions:actions migrationActionType:2 progress:v9 progressUnitCount:actionProgressPortion error:&v49];
      v26 = v49;
    }

    else
    {
      v27 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E69BFF48];
      v51 = *MEMORY[0x1E696A588];
      v52[0] = @"Legacy post migration failed";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      v26 = [v27 errorWithDomain:v28 code:46008 userInfo:v29];

      v13 = 3;
      v14 = v29;
    }

    v14 = v26;
  }

  analyticsEventManager2 = [(PLModelMigration *)self analyticsEventManager];
  v31 = *MEMORY[0x1E69BF6D0];
  [analyticsEventManager2 stopRecordingTimedEventWithToken:*MEMORY[0x1E69BF700] forKey:*MEMORY[0x1E69BF6D0] onEventWithName:v17];

  analyticsEventManager3 = [(PLModelMigration *)self analyticsEventManager];
  v33 = MEMORY[0x1E696AD98];
  legacyMigrationDelegate2 = [(PLModelMigration *)self legacyMigrationDelegate];
  migrationContext3 = [(PLModelMigration *)self migrationContext];
  store2 = [migrationContext3 store];
  v37 = [v33 numberWithUnsignedInteger:{objc_msgSend(legacyMigrationDelegate2, "assetCountForStore:", store2)}];
  stringValue = [v37 stringValue];
  [analyticsEventManager3 setPayloadValue:stringValue forKey:*MEMORY[0x1E69BF738] onEventWithName:v31];

  if (v13 == 1)
  {
    actionsPostRepair = self->_actionsPostRepair;
    actionProgressPortionPostRepair = self->_actionProgressPortionPostRepair;
    v48 = v14;
    v41 = v46;
    v13 = [(PLModelMigration *)self migratePostProcessingWithActions:actionsPostRepair migrationActionType:4 progress:v46 progressUnitCount:actionProgressPortionPostRepair error:&v48];
    v42 = v48;

    v14 = v42;
    v43 = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v41 = v46;
  v43 = errorCopy;
  if (errorCopy)
  {
LABEL_10:
    v44 = v14;
    *v43 = v14;
  }

LABEL_11:

  return v13;
}

- (int64_t)migrateSchemaMigrationWithAutoMigrationOptions:(id)options currentStoreVersion:(id)version error:(id *)error
{
  v123 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v8 = MEMORY[0x1E696AD98];
  optionsCopy = options;
  migrationContext = [(PLModelMigration *)self migrationContext];
  v11 = [v8 numberWithUnsignedShort:{objc_msgSend(migrationContext, "previousStoreVersion")}];
  v12 = [v11 isEqual:versionCopy];

  v82 = versionCopy;
  if ((v12 & 1) == 0)
  {
    v13 = PLMigrationGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

    if (v14)
    {
      logger = [(PLModelMigration *)self logger];

      if (logger)
      {
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v16 = PLMigrationGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v18 = MEMORY[0x1E696AD98];
        migrationContext2 = [(PLModelMigration *)self migrationContext];
        v20 = [v18 numberWithUnsignedShort:{objc_msgSend(migrationContext2, "previousStoreVersion")}];
        v88 = 138543618;
        v89 = v20;
        v90 = 1024;
        LODWORD(v91[0]) = +[PLModelMigration currentModelVersion];
        v21 = _os_log_send_and_compose_impl(v17, 0, buf, 512, &dword_19BF1F000, v16, 1, "Staged lightweight migration completed, post processing from version %{public}@ to %d.", &v88, 18);

        logger2 = [(PLModelMigration *)self logger];
        [logger2 logWithMessage:v21 fromCodeLocation:"PLModelMigration.m" type:{536, 1}];

        if (v21 != buf)
        {
          free(v21);
        }

        versionCopy = v82;
      }

      else
      {
        v23 = PLMigrationGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = MEMORY[0x1E696AD98];
          migrationContext3 = [(PLModelMigration *)self migrationContext];
          v26 = [v24 numberWithUnsignedShort:{objc_msgSend(migrationContext3, "previousStoreVersion")}];
          *buf = 138543618;
          *&buf[4] = v26;
          *&buf[12] = 1024;
          *&buf[14] = +[PLModelMigration currentModelVersion];
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_INFO, "Staged lightweight migration completed, post processing from version %{public}@ to %d.", buf, 0x12u);
        }
      }
    }
  }

  analyticsEventManager = [(PLModelMigration *)self analyticsEventManager];
  [analyticsEventManager startRecordingTimedEventToken];
  v29 = v28;

  migrationContext4 = [(PLModelMigration *)self migrationContext];
  coordinator = [migrationContext4 coordinator];
  migrationUUID = [(PLModelMigration *)self migrationUUID];
  migrationContext5 = [(PLModelMigration *)self migrationContext];
  storeURL = [migrationContext5 storeURL];
  intValue = [versionCopy intValue];
  v36 = +[PLModelMigration currentModelVersion];
  progress = [(PLModelMigration *)self progress];
  v85 = 0;
  LODWORD(v78) = v36;
  v38 = [(PLModelMigration *)self addStoreWithCoordinator:coordinator migrationUUID:migrationUUID storeURL:storeURL options:optionsCopy description:@"Adding lightweight migration store" fromVersion:intValue toVersion:v78 progress:progress progressUnitCount:10 error:&v85];

  v39 = v85;
  migrationContext6 = [(PLModelMigration *)self migrationContext];
  [migrationContext6 setStore:v38];

  analyticsEventManager2 = [(PLModelMigration *)self analyticsEventManager];
  [analyticsEventManager2 addRecordingTimedEventSnippetWithToken:*MEMORY[0x1E69BF718] forKey:*MEMORY[0x1E69BF6D0] onEventWithName:v29];

  migrationContext7 = [(PLModelMigration *)self migrationContext];
  store = [migrationContext7 store];

  if (store)
  {
    v44 = flt_19C60AD80[(self->_performedActionKinds & 1) == 0];
    if ((self->_performedActionKinds & 2) != 0)
    {
      v45 = v44 + -0.1;
      v44 = v45;
    }

    v84 = v39;
    v46 = [(PLModelMigration *)self migratePostProcessingWithProgressUnitCount:(v44 * 100.0) error:&v84];
    v47 = v84;

    if (v46 == 1)
    {
      errorCopy3 = error;
      v49 = v82;
      if (!error)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    migrationContext8 = [(PLModelMigration *)self migrationContext];
    coordinator2 = [migrationContext8 coordinator];
    migrationContext9 = [(PLModelMigration *)self migrationContext];
    store2 = [migrationContext9 store];
    v83 = 0;
    v64 = [coordinator2 removePersistentStore:store2 error:&v83];
    v50 = v83;

    if (v64)
    {
      goto LABEL_30;
    }

    v65 = PLMigrationGetLog();
    v66 = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);

    v49 = v82;
    if (v66)
    {
      logger3 = [(PLModelMigration *)self logger];

      if (logger3)
      {
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v68 = PLMigrationGetLog();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v69 = 3;
        }

        else
        {
          v69 = 2;
        }

        v70 = +[PLModelMigration currentModelVersion];
        v88 = 138543874;
        v89 = v82;
        v90 = 1024;
        LODWORD(v91[0]) = v70;
        WORD2(v91[0]) = 2114;
        *(v91 + 6) = v50;
        LODWORD(v79) = 28;
        v71 = _os_log_send_and_compose_impl(v69, 0, buf, 512, &dword_19BF1F000, v68, 16, "Failed to remove store after lightweight migration failure %{public}@ to %d.  Error %{public}@", &v88, v79);

        logger4 = [(PLModelMigration *)self logger];
        [logger4 logWithMessage:v71 fromCodeLocation:"PLModelMigration.m" type:{546, 16}];

        if (v71 != buf)
        {
          free(v71);
        }

LABEL_30:
        errorCopy3 = error;
        v49 = v82;
        goto LABEL_43;
      }

      v76 = PLMigrationGetLog();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        v77 = +[PLModelMigration currentModelVersion];
        *buf = 138543874;
        *&buf[4] = v82;
        *&buf[12] = 1024;
        *&buf[14] = v77;
        *&buf[18] = 2114;
        *&buf[20] = v50;
        _os_log_impl(&dword_19BF1F000, v76, OS_LOG_TYPE_ERROR, "Failed to remove store after lightweight migration failure %{public}@ to %d.  Error %{public}@", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to open and lightweight migrate store from schema version based on %@ to %d", v82, +[PLModelMigration currentModelVersion](PLModelMigration, "currentModelVersion")];
    v86 = *MEMORY[0x1E696A588];
    v87 = v50;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v52 = [v51 mutableCopy];

    if (v39)
    {
      [v52 setObject:v39 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    v47 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46008 userInfo:v52];

    v53 = PLMigrationGetLog();
    v54 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);

    v49 = v82;
    if (v54)
    {
      logger5 = [(PLModelMigration *)self logger];

      if (logger5)
      {
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v56 = PLMigrationGetLog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = 3;
        }

        else
        {
          v57 = 2;
        }

        v88 = 138543618;
        v89 = v50;
        v90 = 2114;
        v91[0] = v47;
        LODWORD(v80) = 22;
        v58 = _os_log_send_and_compose_impl(v57, 0, buf, 512, &dword_19BF1F000, v56, 16, "%{public}@. Error: %{public}@", &v88, v80);

        logger6 = [(PLModelMigration *)self logger];
        [logger6 logWithMessage:v58 fromCodeLocation:"PLModelMigration.m" type:{557, 16}];

        if (v58 != buf)
        {
          free(v58);
        }

        v49 = v82;
      }

      else
      {
        v73 = PLMigrationGetLog();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v50;
          *&buf[12] = 2114;
          *&buf[14] = v47;
          _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_ERROR, "%{public}@. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v46 = 3;
  }

  errorCopy3 = error;
LABEL_43:

  if (errorCopy3)
  {
LABEL_44:
    v74 = v47;
    *errorCopy3 = v47;
  }

LABEL_45:

  return v46;
}

- (int64_t)migrateStagedMigrationWithAutoMigrationOptions:(id)options currentStoreVersion:(id)version error:(id *)error
{
  v151 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  versionCopy = version;
  v9 = MEMORY[0x1E696AD98];
  migrationContext = [(PLModelMigration *)self migrationContext];
  v11 = [v9 numberWithUnsignedShort:{objc_msgSend(migrationContext, "previousStoreVersion")}];
  v12 = [(PLModelMigration *)self _nextRequiredStagedMigrationVersionAfterVersion:v11];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = MEMORY[0x1E696AE38];
  v14 = &unk_1F0FBFE20;
  v15 = [v13 discreteProgressWithTotalUnitCount:5 * objc_msgSend_count(&unk_1F0FBFE20)];

  if (!v12)
  {
    v19 = 0;
    v56 = 1;
    goto LABEL_55;
  }

  errorCopy = error;
  self->_performedActionKinds |= 2uLL;
  progress = [(PLModelMigration *)self progress];
  v96 = v15;
  [progress addChild:v15 withPendingUnitCount:10];

  v17 = 0;
  v94 = *MEMORY[0x1E69BF718];
  v97 = *MEMORY[0x1E69BF6D0];
  v98 = *MEMORY[0x1E696A588];
  v99 = *MEMORY[0x1E69BFF48];
  v93 = *MEMORY[0x1E69BF720];
  v91 = *MEMORY[0x1E696AA08];
  while (1)
  {
    v107 = v17;
    v18 = [(PLModelMigration *)self isMigrationCancelledWithError:&v107];
    v19 = v107;

    if (v18)
    {
      v56 = 2;
      goto LABEL_54;
    }

    v20 = objc_autoreleasePoolPush();
    v21 = [(PLModelMigration *)self _stagedManagedObjectModelURLWithStageVersion:v12];
    v22 = PLMigrationGetLog();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v23)
    {
      logger = [(PLModelMigration *)self logger];

      if (logger)
      {
        v25 = v20;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        memset(buf, 0, sizeof(buf));
        v26 = PLMigrationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        path = [v21 path];
        v114 = 138543874;
        v115 = versionCopy;
        v116 = 2114;
        v117 = v12;
        v118 = 2112;
        v119 = path;
        LODWORD(v89) = 32;
        v29 = _os_log_send_and_compose_impl(v27, 0, buf, 512, &dword_19BF1F000, v26, 0, "Starting migration stage from version %{public}@ to %{public}@, with model %@.", &v114, v89);

        logger2 = [(PLModelMigration *)self logger];
        [logger2 logWithMessage:v29 fromCodeLocation:"PLModelMigration.m" type:{469, 0}];

        if (v29 != buf)
        {
          free(v29);
        }

        v20 = v25;
      }

      else
      {
        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          path2 = [v21 path];
          *buf = 138543874;
          *&buf[4] = versionCopy;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          *&buf[22] = 2112;
          *&buf[24] = path2;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Starting migration stage from version %{public}@ to %{public}@, with model %@.", buf, 0x20u);
        }
      }
    }

    v33 = [(PLModelMigration *)self _managedObjectModelForLightweightMigrationStageWithURL:v21];
    v104 = v21;
    if (v33)
    {
      v101 = v20;
      v102 = v33;
      v34 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v33];
      analyticsEventManager = [(PLModelMigration *)self analyticsEventManager];
      [analyticsEventManager startRecordingTimedEventToken];
      v37 = v36;

      migrationUUID = [(PLModelMigration *)self migrationUUID];
      migrationContext2 = [(PLModelMigration *)self migrationContext];
      storeURL = [migrationContext2 storeURL];
      intValue = [versionCopy intValue];
      intValue2 = [v12 intValue];
      v106 = v19;
      LODWORD(v88) = intValue2;
      v103 = v34;
      v43 = [(PLModelMigration *)self addStoreWithCoordinator:v34 migrationUUID:migrationUUID storeURL:storeURL options:optionsCopy description:@"Adding staged migration store" fromVersion:intValue toVersion:v88 progress:v96 progressUnitCount:1 error:&v106];
      v44 = v106;

      if (v43)
      {
        analyticsEventManager2 = [(PLModelMigration *)self analyticsEventManager];
        [analyticsEventManager2 addRecordingTimedEventSnippetWithToken:v94 forKey:v97 onEventWithName:v37];

        analyticsEventManager3 = [(PLModelMigration *)self analyticsEventManager];
        [analyticsEventManager3 startRecordingTimedEventToken];
        v48 = v47;

        legacyMigrationDelegate = [(PLModelMigration *)self legacyMigrationDelegate];
        migrationUUID2 = [(PLModelMigration *)self migrationUUID];
        v51 = [legacyMigrationDelegate processWelterweightMigrationStageOnStore:v43 migrationUUID:migrationUUID2 fromVersion:objc_msgSend(versionCopy toVersion:"intValue") migrationContext:objc_msgSend(v12 progress:"intValue") progressUnitCount:{dictionary, v96, 2}];

        if (v51)
        {
          v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
          actionsStaged = self->_actionsStaged;
          self->_actionsStaged = v52;

          PLModelMigrationActionRegistration_Staged(self, [versionCopy intValue], objc_msgSend(v12, "intValue"));
          migrationContext3 = [(PLModelMigration *)self migrationContext];
          [migrationContext3 setStore:v43];

          v55 = self->_actionsStaged;
          v105 = v44;
          v56 = [(PLModelMigration *)self migratePostProcessingWithActions:v55 migrationActionType:5 progress:v96 progressUnitCount:2 error:&v105];
          v17 = v105;
        }

        else
        {
          v81 = MEMORY[0x1E696ABC0];
          v112 = v98;
          v113 = @"Legacy Staged migration failed";
          v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
          v17 = [v81 errorWithDomain:v99 code:46013 userInfo:v82];

          v44 = v82;
          v56 = 3;
        }

        analyticsEventManager4 = [(PLModelMigration *)self analyticsEventManager];
        [analyticsEventManager4 addRecordingTimedEventSnippetWithToken:v93 forKey:v97 onEventWithName:v48];
        v20 = v101;
      }

      else
      {
        v68 = MEMORY[0x1E696AEC0];
        path3 = [v104 path];
        analyticsEventManager4 = [v68 stringWithFormat:@"Failed to open store for staged migration from version %@ to %@, with model %@", versionCopy, v12, path3];

        v110 = v98;
        v111 = analyticsEventManager4;
        v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
        v72 = [v71 mutableCopy];

        if (v44)
        {
          [v72 setObject:v44 forKeyedSubscript:v91];
        }

        v92 = v72;
        v17 = [MEMORY[0x1E696ABC0] errorWithDomain:v99 code:46013 userInfo:v72];

        v73 = PLMigrationGetLog();
        v74 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);

        v20 = v101;
        v33 = v102;
        v43 = 0;
        if (v74)
        {
          logger3 = [(PLModelMigration *)self logger];

          if (logger3)
          {
            v149 = 0u;
            v150 = 0u;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            v143 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v121 = 0u;
            v122 = 0u;
            memset(buf, 0, sizeof(buf));
            v76 = PLMigrationGetLog();
            v77 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
            v114 = 138543618;
            if (v77)
            {
              v78 = 3;
            }

            else
            {
              v78 = 2;
            }

            v115 = analyticsEventManager4;
            v116 = 2114;
            v117 = v17;
            LODWORD(v89) = 22;
            v79 = _os_log_send_and_compose_impl(v78, 0, buf, 512, &dword_19BF1F000, v76, 16, "%{public}@. Error: %{public}@", &v114, v89);

            logger4 = [(PLModelMigration *)self logger];
            [logger4 logWithMessage:v79 fromCodeLocation:"PLModelMigration.m" type:{508, 16}];

            if (v79 != buf)
            {
              free(v79);
            }

            v43 = 0;
          }

          else
          {
            v84 = PLMigrationGetLog();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = analyticsEventManager4;
              *&buf[12] = 2114;
              *&buf[14] = v17;
              _os_log_impl(&dword_19BF1F000, v84, OS_LOG_TYPE_ERROR, "%{public}@. Error: %{public}@", buf, 0x16u);
            }
          }
        }

        v56 = 3;
      }
    }

    else
    {
      v57 = MEMORY[0x1E696AEC0];
      path4 = [v21 path];
      v59 = [v57 stringWithFormat:@"Failed to open model for staged migration from version %@ to %@, with model path %@", versionCopy, v12, path4];

      v60 = MEMORY[0x1E696ABC0];
      v108 = v98;
      v109 = v59;
      v103 = v59;
      v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
      v17 = [v60 errorWithDomain:v99 code:46013 userInfo:v61];

      v62 = PLMigrationGetLog();
      LODWORD(v61) = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);

      if (!v61)
      {
        goto LABEL_42;
      }

      logger5 = [(PLModelMigration *)self logger];

      if (!logger5)
      {
        v83 = PLMigrationGetLog();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v103;
          _os_log_impl(&dword_19BF1F000, v83, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

LABEL_42:
        v56 = 3;
        goto LABEL_48;
      }

      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      memset(buf, 0, sizeof(buf));
      v64 = PLMigrationGetLog();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = 3;
      }

      else
      {
        v65 = 2;
      }

      v114 = 138543362;
      v115 = v103;
      LODWORD(v89) = 12;
      v66 = _os_log_send_and_compose_impl(v65, 0, buf, 512, &dword_19BF1F000, v64, 16, "%{public}@", &v114, v89);

      logger6 = [(PLModelMigration *)self logger];
      [logger6 logWithMessage:v66 fromCodeLocation:"PLModelMigration.m" type:{514, 16}];

      if (v66 != buf)
      {
        free(v66);
      }

      v56 = 3;
    }

LABEL_48:

    objc_autoreleasePoolPop(v20);
    if (v56 != 1)
    {
      break;
    }

    v85 = v12;

    v12 = [(PLModelMigration *)self _nextRequiredStagedMigrationVersionAfterVersion:v85];

    versionCopy = v85;
    if (!v12)
    {
      versionCopy = v85;
      v19 = v17;
      v56 = 1;
      goto LABEL_54;
    }
  }

  v19 = v17;
LABEL_54:
  error = errorCopy;
  v15 = v96;
LABEL_55:
  [v15 setCompletedUnitCount:{objc_msgSend(v15, "totalUnitCount")}];
  if (error)
  {
    v86 = v19;
    *error = v19;
  }

  return v56;
}

- (int64_t)migratePreSchemaMigrationWithCurrentStoreVersion:(id)version error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v46 = 0;
  v47 = 0;
  pathManager = [(PLModelMigration *)self pathManager];
  photosDatabasePath = [pathManager photosDatabasePath];
  [PLManagedObjectContext getPersistentStoreURL:&v47 options:&v46 forDatabasePath:photosDatabasePath];
  v8 = v47;
  v9 = v46;

  v36 = v9;
  v10 = [v9 mutableCopy];
  v11 = MEMORY[0x1E695E110];
  [v10 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E695D380]];
  [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x1E695D318]];
  v45 = 0;
  v38 = v8;
  v12 = [MEMORY[0x1E695D6B8] cachedModelForPersistentStoreWithURL:v8 options:v10 error:&v45];
  v13 = v45;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    do
    {
      v18 = 0;
      do
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v41 + 1) + 8 * v18++) setManagedObjectClassName:0];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v16);
  }

  v19 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v14];
  migrationUUID = [(PLModelMigration *)self migrationUUID];
  intValue = [versionCopy intValue];
  v37 = versionCopy;
  intValue2 = [versionCopy intValue];
  progress = [(PLModelMigration *)self progress];
  v40 = v13;
  v24 = 1;
  LODWORD(v35) = intValue2;
  v25 = [(PLModelMigration *)self addStoreWithCoordinator:v19 migrationUUID:migrationUUID storeURL:v38 options:v10 description:@"Adding pre schema store" fromVersion:intValue toVersion:v35 progress:progress progressUnitCount:1 error:&v40];
  v26 = v40;

  if (v25)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actionsPreSchema = self->_actionsPreSchema;
    self->_actionsPreSchema = v27;

    PLModelMigrationActionRegistration_PreSchema(self);
    v29 = objc_msgSend_count(self->_actionsPreSchema);
    migrationContext = [(PLModelMigration *)self migrationContext];
    [migrationContext setStore:v25];

    v31 = self->_actionsPreSchema;
    progress2 = [(PLModelMigration *)self progress];
    v39 = v26;
    v24 = [(PLModelMigration *)self migratePostProcessingWithActions:v31 migrationActionType:0 progress:progress2 progressUnitCount:10 error:&v39];
    v33 = v39;

    if (v29)
    {
      self->_performedActionKinds |= 1uLL;
    }
  }

  else
  {
    v33 = v26;
  }

  return v24;
}

- (int64_t)setupWithError:(id *)error
{
  v145 = *MEMORY[0x1E69E9840];
  v5 = PLMigrationGetLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    logger = [(PLModelMigration *)self logger];

    if (logger)
    {
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      *buf = 0u;
      v114 = 0u;
      v8 = PLMigrationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      migrationContext = [(PLModelMigration *)self migrationContext];
      v109 = 67109376;
      previousStoreVersion = [migrationContext previousStoreVersion];
      v111 = 1024;
      v112 = +[PLModelMigration currentModelVersion];
      v11 = _os_log_send_and_compose_impl(v9, 0, buf, 512, &dword_19BF1F000, v8, 1, "Store has incompatible model version %d, will attempt migration to current version %d.", &v109, 14);

      logger2 = [(PLModelMigration *)self logger];
      [logger2 logWithMessage:v11 fromCodeLocation:"PLModelMigration.m" type:{359, 1}];

      if (v11 != buf)
      {
        free(v11);
      }
    }

    else
    {
      v13 = PLMigrationGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        migrationContext2 = [(PLModelMigration *)self migrationContext];
        *buf = 67109376;
        *&buf[4] = [migrationContext2 previousStoreVersion];
        *&buf[8] = 1024;
        *&buf[10] = +[PLModelMigration currentModelVersion];
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "Store has incompatible model version %d, will attempt migration to current version %d.", buf, 0xEu);
      }
    }
  }

  v15 = +[PLModelMigration currentModelVersion];
  migrationContext3 = [(PLModelMigration *)self migrationContext];
  previousStoreVersion2 = [migrationContext3 previousStoreVersion];

  if (v15 < previousStoreVersion2)
  {
    allowRebuild = self->_allowRebuild;
    v19 = PLMigrationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (allowRebuild)
    {
      if (!v20)
      {
        goto LABEL_37;
      }

      logger3 = [(PLModelMigration *)self logger];

      if (logger3)
      {
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        *buf = 0u;
        v114 = 0u;
        v22 = PLMigrationGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        migrationContext4 = [(PLModelMigration *)self migrationContext];
        previousStoreVersion3 = [migrationContext4 previousStoreVersion];
        v26 = +[PLModelMigration currentModelVersion];
        v109 = 67109376;
        previousStoreVersion = previousStoreVersion3;
        v111 = 1024;
        v112 = v26;
        v27 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 16, "*** MIGRATION INVERSION ***\n***\n***\n***\n*** Photos database has a model version [%d] that is newer than the Photos frameworks model version [%d].\n***\n*** Frameworks and database are out of sync.\n*** This will trigger a rebuild from file system.\n***\n***\n", &v109, 14);

        logger4 = [(PLModelMigration *)self logger];
        v29 = logger4;
        v30 = v27;
        v31 = 366;
LABEL_35:
        [logger4 logWithMessage:v30 fromCodeLocation:"PLModelMigration.m" type:{v31, 16}];

        if (v27 != buf)
        {
          free(v27);
        }

LABEL_37:
        if (error)
        {
LABEL_38:
          v100 = *MEMORY[0x1E69BFF48];
          v102 = MEMORY[0x1E696ABC0];
          v107[0] = *MEMORY[0x1E696A368];
          migrationContext5 = [(PLModelMigration *)self migrationContext];
          storeURL = [migrationContext5 storeURL];
          [storeURL path];
          v44 = v104 = error;
          v108[0] = v44;
          v107[1] = *MEMORY[0x1E696A998];
          migrationContext6 = [(PLModelMigration *)self migrationContext];
          storeURL2 = [migrationContext6 storeURL];
          uRLByDeletingLastPathComponent = [storeURL2 URLByDeletingLastPathComponent];
          v47URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
          v108[1] = v47URLByDeletingLastPathComponent;
          v107[2] = *MEMORY[0x1E696A278];
          v63 = MEMORY[0x1E696AEC0];
          migrationContext7 = [(PLModelMigration *)self migrationContext];
          6006 = [v63 stringWithFormat:@"Database schema version %d is newer than the current schema version %d. A newer version of Photos needs to be installed.", objc_msgSend(migrationContext7, "previousStoreVersion"), +[PLModelMigration currentModelVersion](PLModelMigration, "currentModelVersion")];
          v108[2] = 6006;
          v52 = 3;
          v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:3];
          v55 = v100;
          v54 = v102;
          v56 = 46006;
          goto LABEL_39;
        }

        return 3;
      }

      v75 = PLMigrationGetLog();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        migrationContext8 = [(PLModelMigration *)self migrationContext];
        previousStoreVersion4 = [migrationContext8 previousStoreVersion];
        v78 = +[PLModelMigration currentModelVersion];
        *buf = 67109376;
        *&buf[4] = previousStoreVersion4;
        *&buf[8] = 1024;
        *&buf[10] = v78;
        v79 = "*** MIGRATION INVERSION ***\n***\n***\n***\n*** Photos database has a model version [%d] that is newer than the Photos frameworks model version [%d].\n***\n*** Frameworks and database are out of sync.\n*** This will trigger a rebuild from file system.\n***\n***\n";
LABEL_61:
        _os_log_impl(&dword_19BF1F000, v75, OS_LOG_TYPE_ERROR, v79, buf, 0xEu);
      }
    }

    else
    {
      if (!v20)
      {
        goto LABEL_37;
      }

      logger5 = [(PLModelMigration *)self logger];

      if (logger5)
      {
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        *buf = 0u;
        v114 = 0u;
        v58 = PLMigrationGetLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = 3;
        }

        else
        {
          v59 = 2;
        }

        migrationContext9 = [(PLModelMigration *)self migrationContext];
        previousStoreVersion5 = [migrationContext9 previousStoreVersion];
        v62 = +[PLModelMigration currentModelVersion];
        v109 = 67109376;
        previousStoreVersion = previousStoreVersion5;
        v111 = 1024;
        v112 = v62;
        v27 = _os_log_send_and_compose_impl(v59, 0, buf, 512, &dword_19BF1F000, v58, 16, "*** MIGRATION INVERSION ***\n***\n***\n***\n*** Photos database has a model version [%d] that is newer than the Photos frameworks model version [%d].\n***\n***\n", &v109, 14);

        logger4 = [(PLModelMigration *)self logger];
        v29 = logger4;
        v30 = v27;
        v31 = 368;
        goto LABEL_35;
      }

      v75 = PLMigrationGetLog();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        migrationContext8 = [(PLModelMigration *)self migrationContext];
        previousStoreVersion6 = [migrationContext8 previousStoreVersion];
        v84 = +[PLModelMigration currentModelVersion];
        *buf = 67109376;
        *&buf[4] = previousStoreVersion6;
        *&buf[8] = 1024;
        *&buf[10] = v84;
        v79 = "*** MIGRATION INVERSION ***\n***\n***\n***\n*** Photos database has a model version [%d] that is newer than the Photos frameworks model version [%d].\n***\n***\n";
        goto LABEL_61;
      }
    }

    if (error)
    {
      goto LABEL_38;
    }

    return 3;
  }

  migrationContext10 = [(PLModelMigration *)self migrationContext];
  v33 = [migrationContext10 previousStoreVersion] >> 1;

  if (v33 <= 0xBBA)
  {
    v34 = PLMigrationGetLog();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

    if (v35)
    {
      logger6 = [(PLModelMigration *)self logger];

      if (!logger6)
      {
        v80 = PLMigrationGetLog();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          migrationContext11 = [(PLModelMigration *)self migrationContext];
          previousStoreVersion7 = [migrationContext11 previousStoreVersion];
          *buf = 67109376;
          *&buf[4] = previousStoreVersion7;
          *&buf[8] = 1024;
          *&buf[10] = 6006;
          _os_log_impl(&dword_19BF1F000, v80, OS_LOG_TYPE_ERROR, "Cannot perform lightweight migration, store model version %d is older than oldest supported version %d", buf, 0xEu);
        }

        if (!error)
        {
          return 3;
        }

        goto LABEL_28;
      }

      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      *buf = 0u;
      v114 = 0u;
      v37 = PLMigrationGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = 3;
      }

      else
      {
        v38 = 2;
      }

      migrationContext12 = [(PLModelMigration *)self migrationContext];
      previousStoreVersion8 = [migrationContext12 previousStoreVersion];
      v109 = 67109376;
      previousStoreVersion = previousStoreVersion8;
      v111 = 1024;
      v112 = 6006;
      v41 = _os_log_send_and_compose_impl(v38, 0, buf, 512, &dword_19BF1F000, v37, 16, "Cannot perform lightweight migration, store model version %d is older than oldest supported version %d", &v109, 14);

      logger7 = [(PLModelMigration *)self logger];
      [logger7 logWithMessage:v41 fromCodeLocation:"PLModelMigration.m" type:{375, 16}];

      if (v41 != buf)
      {
        free(v41);
      }
    }

    if (!error)
    {
      return 3;
    }

LABEL_28:
    v99 = *MEMORY[0x1E69BFF48];
    v101 = MEMORY[0x1E696ABC0];
    v105[0] = *MEMORY[0x1E696A368];
    migrationContext5 = [(PLModelMigration *)self migrationContext];
    storeURL = [migrationContext5 storeURL];
    [storeURL path];
    v44 = v104 = error;
    v106[0] = v44;
    v105[1] = *MEMORY[0x1E696A998];
    migrationContext6 = [(PLModelMigration *)self migrationContext];
    storeURL2 = [migrationContext6 storeURL];
    uRLByDeletingLastPathComponent = [storeURL2 URLByDeletingLastPathComponent];
    v47URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
    v106[1] = v47URLByDeletingLastPathComponent;
    v105[2] = *MEMORY[0x1E696A578];
    v49 = MEMORY[0x1E696AEC0];
    migrationContext7 = [(PLModelMigration *)self migrationContext];
    6006 = [v49 stringWithFormat:@"Store version %d is unsupported for migration (older than %d).", objc_msgSend(migrationContext7, "previousStoreVersion"), 6006];
    v106[2] = 6006;
    v52 = 3;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:3];
    v55 = v99;
    v54 = v101;
    v56 = 46011;
LABEL_39:
    *v104 = [v54 errorWithDomain:v55 code:v56 userInfo:v53];

    return v52;
  }

  if (!self->_allowRebuild)
  {
    migrationContext13 = [(PLModelMigration *)self migrationContext];
    if (([migrationContext13 policy] & 4) == 0)
    {

      return 1;
    }

    v72 = MEMORY[0x1E69BF2A0];
    pathManager = [(PLModelMigration *)self pathManager];
    libraryURL = [pathManager libraryURL];
    LODWORD(v72) = [v72 isSystemPhotoLibraryURL:libraryURL];

    if (!v72)
    {
      return 1;
    }
  }

  if (self->_didCreateSqliteErrorIndicator)
  {
    return 1;
  }

  v64 = PLMigrationGetLog();
  v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);

  if (v65)
  {
    logger8 = [(PLModelMigration *)self logger];

    if (logger8)
    {
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      *buf = 0u;
      v114 = 0u;
      v67 = PLMigrationGetLog();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = 3;
      }

      else
      {
        v68 = 2;
      }

      LOWORD(v109) = 0;
      LODWORD(v98) = 2;
      v69 = _os_log_send_and_compose_impl(v68, 0, buf, 512, &dword_19BF1F000, v67, 0, "Creating sqlite error indicator file", &v109, v98);

      logger9 = [(PLModelMigration *)self logger];
      [logger9 logWithMessage:v69 fromCodeLocation:"PLModelMigration.m" type:{383, 0}];

      if (v69 != buf)
      {
        free(v69);
      }
    }

    else
    {
      v85 = PLMigrationGetLog();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v85, OS_LOG_TYPE_DEFAULT, "Creating sqlite error indicator file", buf, 2u);
      }
    }
  }

  v52 = 1;
  self->_didCreateSqliteErrorIndicator = 1;
  pathManager2 = [(PLModelMigration *)self pathManager];
  [pathManager2 setSqliteErrorForRebuildReason:4 allowsExit:0];

  pathManager3 = [(PLModelMigration *)self pathManager];
  sqliteErrorIndicatorFileExists = [pathManager3 sqliteErrorIndicatorFileExists];

  if ((sqliteErrorIndicatorFileExists & 1) == 0)
  {
    v89 = PLMigrationGetLog();
    v90 = os_log_type_enabled(v89, OS_LOG_TYPE_ERROR);

    if (v90)
    {
      logger10 = [(PLModelMigration *)self logger];

      if (logger10)
      {
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        *buf = 0u;
        v114 = 0u;
        v92 = PLMigrationGetLog();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          v93 = 3;
        }

        else
        {
          v93 = 2;
        }

        LOWORD(v109) = 0;
        LODWORD(v98) = 2;
        v94 = _os_log_send_and_compose_impl(v93, 0, buf, 512, &dword_19BF1F000, v92, 16, "Failed to create sqlite error indicator file to guard against lightweight migration crash loop", &v109, v98);

        logger11 = [(PLModelMigration *)self logger];
        [logger11 logWithMessage:v94 fromCodeLocation:"PLModelMigration.m" type:{388, 16}];

        if (v94 != buf)
        {
          free(v94);
        }
      }

      else
      {
        v96 = PLMigrationGetLog();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v96, OS_LOG_TYPE_ERROR, "Failed to create sqlite error indicator file to guard against lightweight migration crash loop", buf, 2u);
        }
      }
    }

    return 3;
  }

  return v52;
}

- (int64_t)migrateWithError:(id *)error
{
  v129[1] = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  start = [MEMORY[0x1E69BF318] start];
  v89 = 0;
  v7 = [(PLModelMigration *)self setupWithError:&v89];
  v8 = v89;
  migrationContext = [(PLModelMigration *)self migrationContext];
  store = [migrationContext store];
  if (store)
  {

    if (v7 != 1)
    {
      goto LABEL_13;
    }

    v83 = start;
    analyticsEventManager = [(PLModelMigration *)self analyticsEventManager];
    v12 = MEMORY[0x1E696AD98];
    migrationContext2 = [(PLModelMigration *)self migrationContext];
    v14 = [v12 numberWithUnsignedShort:{objc_msgSend(migrationContext2, "previousStoreVersion")}];
    v15 = [v14 description];
    v16 = *MEMORY[0x1E69BF6D0];
    [analyticsEventManager setPayloadValue:v15 forKey:*MEMORY[0x1E69BF6E0] onEventWithName:*MEMORY[0x1E69BF6D0]];

    analyticsEventManager2 = [(PLModelMigration *)self analyticsEventManager];
    v18 = [MEMORY[0x1E696AD98] numberWithInt:{+[PLModelMigration currentModelVersion](PLModelMigration, "currentModelVersion")}];
    stringValue = [v18 stringValue];
    [analyticsEventManager2 setPayloadValue:stringValue forKey:*MEMORY[0x1E69BF730] onEventWithName:v16];

    v85 = v8;
    v7 = [(PLModelMigration *)self migratePostProcessingWithProgressUnitCount:100 error:&v85];
    v20 = v8;
    v8 = v85;
  }

  else
  {

    if (v7 != 1)
    {
      goto LABEL_13;
    }

    v83 = start;
    migrationContext3 = [(PLModelMigration *)self migrationContext];
    options = [migrationContext3 options];
    v20 = [options mutableCopy];

    v23 = MEMORY[0x1E695E118];
    [v20 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695D380]];
    [v20 setObject:v23 forKeyedSubscript:*MEMORY[0x1E695D318]];
    v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v129[0] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:1];
    [v20 setObject:v25 forKeyedSubscript:*MEMORY[0x1E695D3D8]];

    v26 = MEMORY[0x1E696AD98];
    migrationContext4 = [(PLModelMigration *)self migrationContext];
    v28 = [v26 numberWithUnsignedShort:{objc_msgSend(migrationContext4, "previousStoreVersion")}];

    analyticsEventManager3 = [(PLModelMigration *)self analyticsEventManager];
    stringValue2 = [v28 stringValue];
    v16 = *MEMORY[0x1E69BF6D0];
    [analyticsEventManager3 setPayloadValue:stringValue2 forKey:*MEMORY[0x1E69BF6E0] onEventWithName:*MEMORY[0x1E69BF6D0]];

    analyticsEventManager4 = [(PLModelMigration *)self analyticsEventManager];
    v32 = [MEMORY[0x1E696AD98] numberWithInt:{+[PLModelMigration currentModelVersion](PLModelMigration, "currentModelVersion")}];
    v33 = [v32 description];
    [analyticsEventManager4 setPayloadValue:v33 forKey:*MEMORY[0x1E69BF730] onEventWithName:v16];

    analyticsEventManager5 = [(PLModelMigration *)self analyticsEventManager];
    [analyticsEventManager5 startRecordingTimedEventToken];
    v36 = v35;

    v88 = v8;
    v7 = [(PLModelMigration *)self migratePreSchemaMigrationWithCurrentStoreVersion:v28 error:&v88];
    v37 = v88;

    analyticsEventManager6 = [(PLModelMigration *)self analyticsEventManager];
    [analyticsEventManager6 addRecordingTimedEventSnippetWithToken:*MEMORY[0x1E69BF708] forKey:v16 onEventWithName:v36];

    if (v7 == 1)
    {
      v87 = v37;
      v7 = [(PLModelMigration *)self migrateStagedMigrationWithAutoMigrationOptions:v20 currentStoreVersion:v28 error:&v87];
      v39 = v87;

      if (v7 == 1)
      {
        v86 = v39;
        v7 = [(PLModelMigration *)self migrateSchemaMigrationWithAutoMigrationOptions:v20 currentStoreVersion:v28 error:&v86];
        v37 = v86;
      }

      else
      {
        v37 = v39;
      }
    }

    v8 = v37;
  }

  if (v7 == 1)
  {
    analyticsEventManager7 = [(PLModelMigration *)self analyticsEventManager];
    v41 = MEMORY[0x1E696AD98];
    pathManager = [(PLModelMigration *)self pathManager];
    v43 = [v41 numberWithLongLong:{+[PLPersistentHistoryUtilities fetchApproximateChangeCountWithPathManager:error:](PLPersistentHistoryUtilities, "fetchApproximateChangeCountWithPathManager:error:", pathManager, 0)}];
    [analyticsEventManager7 setPayloadValue:v43 forKey:*MEMORY[0x1E69BF6F0] onEventWithName:v16];

    analyticsEventManager8 = [(PLModelMigration *)self analyticsEventManager];
    v45 = MEMORY[0x1E696AD98];
    pathManager2 = [(PLModelMigration *)self pathManager];
    v47 = [v45 numberWithLongLong:{+[PLPersistentHistoryUtilities fetchApproximateTransactionCountWithPathManager:error:](PLPersistentHistoryUtilities, "fetchApproximateTransactionCountWithPathManager:error:", pathManager2, 0)}];
    [analyticsEventManager8 setPayloadValue:v47 forKey:*MEMORY[0x1E69BF6F8] onEventWithName:v16];

    v7 = 1;
    start = v83;
    goto LABEL_22;
  }

  start = v83;
LABEL_13:
  v48 = PLMigrationGetLog();
  v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);

  if (!v49)
  {
    goto LABEL_20;
  }

  logger = [(PLModelMigration *)self logger];

  if (logger)
  {
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
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
    v100 = 0u;
    v99 = 0u;
    memset(buf, 0, sizeof(buf));
    v51 = PLMigrationGetLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v90 = 138412290;
    v91 = v8;
    v53 = _os_log_send_and_compose_impl(v52, 0, buf, 512, &dword_19BF1F000, v51, 16, "Failed to migrate library. Error: %@", &v90, 12);

    logger2 = [(PLModelMigration *)self logger];
    [logger2 logWithMessage:v53 fromCodeLocation:"PLModelMigration.m" type:{339, 16}];

    if (v53 != buf)
    {
      free(v53);
    }

LABEL_20:
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v81 = PLMigrationGetLog();
  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&dword_19BF1F000, v81, OS_LOG_TYPE_ERROR, "Failed to migrate library. Error: %@", buf, 0xCu);
  }

  if (error)
  {
LABEL_21:
    v55 = v8;
    *error = v8;
  }

LABEL_22:
  v56 = CFAbsoluteTimeGetCurrent() - Current;
  if (Current <= 0.0)
  {
    v57 = 0.0;
  }

  else
  {
    v57 = v56;
  }

  stop = [start stop];
  v59 = PLMigrationGetLog();
  v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);

  if (v60)
  {
    logger3 = [(PLModelMigration *)self logger];

    if (logger3)
    {
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
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
      v100 = 0u;
      v99 = 0u;
      memset(buf, 0, sizeof(buf));
      v62 = PLMigrationGetLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = 3;
      }

      else
      {
        v63 = 2;
      }

      v64 = PLStringFromModelMigrationActionResultShort(v7);
      v84 = start;
      v65 = [start perfCheckLogStringWithPerfCheckInfo:stop];
      progress = [(PLModelMigration *)self progress];
      v67 = [progress completedUnitCount] * 100.0;
      progress2 = [(PLModelMigration *)self progress];
      totalUnitCount = [progress2 totalUnitCount];
      v90 = 138544130;
      v91 = v64;
      v92 = 2048;
      v93 = v57;
      v94 = 2114;
      v95 = v65;
      v96 = 2048;
      v97 = v67 / totalUnitCount;
      LODWORD(v82) = 42;
      v70 = _os_log_send_and_compose_impl(v63, 0, buf, 512, &dword_19BF1F000, v62, 0, "Completed migration - Result: %{public}@. Metrics: %.2lfs%{public}@, action progress:(%.2lf %%)", &v90, v82);

      logger4 = [(PLModelMigration *)self logger];
      [logger4 logWithMessage:v70 fromCodeLocation:"PLModelMigration.m" type:{349, 0}];

      if (v70 != buf)
      {
        free(v70);
      }

      start = v84;
    }

    else
    {
      v72 = PLMigrationGetLog();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = PLStringFromModelMigrationActionResultShort(v7);
        v74 = [start perfCheckLogStringWithPerfCheckInfo:stop];
        [(PLModelMigration *)self progress];
        v76 = v75 = start;
        v77 = [v76 completedUnitCount] * 100.0;
        progress3 = [(PLModelMigration *)self progress];
        totalUnitCount2 = [progress3 totalUnitCount];
        *buf = 138544130;
        *&buf[4] = v73;
        *&buf[12] = 2048;
        *&buf[14] = v57;
        *&buf[22] = 2114;
        *&buf[24] = v74;
        LOWORD(v99) = 2048;
        *(&v99 + 2) = v77 / totalUnitCount2;
        _os_log_impl(&dword_19BF1F000, v72, OS_LOG_TYPE_DEFAULT, "Completed migration - Result: %{public}@. Metrics: %.2lfs%{public}@, action progress:(%.2lf %%)", buf, 0x2Au);

        start = v75;
      }
    }
  }

  return v7;
}

- (void)resetBackgroundActionClass:(Class)class onCondition:(BOOL)condition
{
  v77 = *MEMORY[0x1E69E9840];
  if (condition)
  {
    pathManager = [(PLModelMigration *)self pathManager];
    v41 = 0;
    v7 = [PLBackgroundModelMigration resetBackgroundActionClass:class pathManager:pathManager error:&v41];
    v8 = v41;

    v9 = PLMigrationGetLog();
    v10 = v9;
    if (v7)
    {
      v11 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        logger = [(PLModelMigration *)self logger];

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
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          memset(buf, 0, sizeof(buf));
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
          v42 = 138543362;
          v43 = v15;
          v16 = _os_log_send_and_compose_impl(v14, 0, buf, 512, &dword_19BF1F000, v13, 0, "[ResetBackgroundAction] Successfully reset background action class: %{public}@.", &v42, 12);

          logger2 = [(PLModelMigration *)self logger];
          v18 = logger2;
          v19 = v16;
          v20 = 286;
          v21 = 0;
LABEL_22:
          [logger2 logWithMessage:v19 fromCodeLocation:"PLModelMigration.m" type:{v20, v21}];

          if (v16 != buf)
          {
            free(v16);
          }

          goto LABEL_32;
        }

        v35 = PLMigrationGetLog();
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        v36 = NSStringFromClass(class);
        *buf = 138543362;
        *&buf[4] = v36;
        v37 = "[ResetBackgroundAction] Successfully reset background action class: %{public}@.";
        v38 = v35;
        v39 = OS_LOG_TYPE_DEFAULT;
        v40 = 12;
        goto LABEL_30;
      }
    }

    else
    {
      v30 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (v30)
      {
        logger3 = [(PLModelMigration *)self logger];

        if (logger3)
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
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          memset(buf, 0, sizeof(buf));
          v32 = PLMigrationGetLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = 3;
          }

          else
          {
            v33 = 2;
          }

          v34 = NSStringFromClass(class);
          v42 = 138543618;
          v43 = v34;
          v44 = 2114;
          v45 = v8;
          v16 = _os_log_send_and_compose_impl(v33, 0, buf, 512, &dword_19BF1F000, v32, 16, "[ResetBackgroundAction] Failed to reset background action class: %{public}@. Error: %{public}@", &v42, 22);

          logger2 = [(PLModelMigration *)self logger];
          v18 = logger2;
          v19 = v16;
          v20 = 288;
          v21 = 16;
          goto LABEL_22;
        }

        v35 = PLMigrationGetLog();
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        v36 = NSStringFromClass(class);
        *buf = 138543618;
        *&buf[4] = v36;
        *&buf[12] = 2114;
        *&buf[14] = v8;
        v37 = "[ResetBackgroundAction] Failed to reset background action class: %{public}@. Error: %{public}@";
        v38 = v35;
        v39 = OS_LOG_TYPE_ERROR;
        v40 = 22;
LABEL_30:
        _os_log_impl(&dword_19BF1F000, v38, v39, v37, buf, v40);

        goto LABEL_31;
      }
    }

LABEL_32:

    return;
  }

  v22 = PLMigrationGetLog();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

  if (!v23)
  {
    return;
  }

  logger4 = [(PLModelMigration *)self logger];

  if (!logger4)
  {
    v8 = PLMigrationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v35 = NSStringFromClass(class);
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "[ResetBackgroundAction] Skipping reset background action class: %{public}@", buf, 0xCu);
LABEL_31:

      goto LABEL_32;
    }

    goto LABEL_32;
  }

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
  v47 = 0u;
  v48 = 0u;
  memset(buf, 0, sizeof(buf));
  v25 = PLMigrationGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 3;
  }

  else
  {
    v26 = 2;
  }

  v27 = NSStringFromClass(class);
  v42 = 138543362;
  v43 = v27;
  v28 = _os_log_send_and_compose_impl(v26, 0, buf, 512, &dword_19BF1F000, v25, 0, "[ResetBackgroundAction] Skipping reset background action class: %{public}@", &v42, 12);

  logger5 = [(PLModelMigration *)self logger];
  [logger5 logWithMessage:v28 fromCodeLocation:"PLModelMigration.m" type:{291, 0}];

  if (v28 != buf)
  {
    free(v28);
  }
}

- (void)_registerActionClass:(Class)class actionsContainer:(id)container progressPortion:(unint64_t *)portion
{
  v21 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  if (!containerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"actions"}];
  }

  v10 = [class alloc];
  migrationContext = [(PLModelMigration *)self migrationContext];
  logger = [(PLModelMigration *)self logger];
  v13 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{-[objc_class actionProgressWeight](class, "actionProgressWeight")}];
  v14 = [v10 initWithMigrationContext:migrationContext logger:logger progress:v13];

  if (portion)
  {
    *portion += [(objc_class *)class actionProgressWeight];
  }

  [containerCopy addObject:v14];
  v15 = PLMigrationGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138543362;
    v20 = v17;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "Registering action: %{public}@", buf, 0xCu);
  }
}

- (void)registerPostRepairActionClass:(Class)class onCondition:(BOOL)condition
{
  conditionCopy = condition;
  v54 = *MEMORY[0x1E69E9840];
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    if (conditionCopy)
    {
LABEL_3:
      actionsPostRepair = self->_actionsPostRepair;

      [(PLModelMigration *)self _registerActionClass:class actionsContainer:actionsPostRepair progressPortion:&self->_actionProgressPortionPostRepair];
      return;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"[(Class)actionClass isSubclassOfClass:PLModelMigrationActionPostRepair.class]"}];

    if (conditionCopy)
    {
      goto LABEL_3;
    }
  }

  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    logger = [(PLModelMigration *)self logger];

    if (logger)
    {
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
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *buf = 0u;
      v23 = 0u;
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
      v20 = 138543362;
      v21 = v15;
      v16 = _os_log_send_and_compose_impl(v14, 0, buf, 512, &dword_19BF1F000, v13, 0, "Skipping registering post repair action class: %{public}@", &v20, 12);

      logger2 = [(PLModelMigration *)self logger];
      [logger2 logWithMessage:v16 fromCodeLocation:"PLModelMigration.m" type:{263, 0}];

      if (v16 != buf)
      {
        free(v16);
      }
    }

    else
    {
      v18 = PLMigrationGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromClass(class);
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Skipping registering post repair action class: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)registerPreRepairActionClass:(Class)class onCondition:(BOOL)condition
{
  conditionCopy = condition;
  v54 = *MEMORY[0x1E69E9840];
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    if (conditionCopy)
    {
LABEL_3:
      actionsPreRepair = self->_actionsPreRepair;

      [(PLModelMigration *)self _registerActionClass:class actionsContainer:actionsPreRepair progressPortion:&self->_actionProgressPortionPreRepair];
      return;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"[(Class)actionClass isSubclassOfClass:PLModelMigrationActionPreRepair.class]"}];

    if (conditionCopy)
    {
      goto LABEL_3;
    }
  }

  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    logger = [(PLModelMigration *)self logger];

    if (logger)
    {
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
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *buf = 0u;
      v23 = 0u;
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
      v20 = 138543362;
      v21 = v15;
      v16 = _os_log_send_and_compose_impl(v14, 0, buf, 512, &dword_19BF1F000, v13, 0, "Skipping registering pre repair action class: %{public}@", &v20, 12);

      logger2 = [(PLModelMigration *)self logger];
      [logger2 logWithMessage:v16 fromCodeLocation:"PLModelMigration.m" type:{253, 0}];

      if (v16 != buf)
      {
        free(v16);
      }
    }

    else
    {
      v18 = PLMigrationGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromClass(class);
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Skipping registering pre repair action class: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)registerStagedActionClass:(Class)class onCondition:(BOOL)condition
{
  conditionCopy = condition;
  v54 = *MEMORY[0x1E69E9840];
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    if (conditionCopy)
    {
LABEL_3:
      actionsStaged = self->_actionsStaged;

      [(PLModelMigration *)self _registerActionClass:class actionsContainer:actionsStaged progressPortion:0];
      return;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"[(Class)actionClass isSubclassOfClass:PLModelMigrationActionStaged.class]"}];

    if (conditionCopy)
    {
      goto LABEL_3;
    }
  }

  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    logger = [(PLModelMigration *)self logger];

    if (logger)
    {
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
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *buf = 0u;
      v23 = 0u;
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
      v20 = 138543362;
      v21 = v15;
      v16 = _os_log_send_and_compose_impl(v14, 0, buf, 512, &dword_19BF1F000, v13, 0, "Skipping registering staged action class: %{public}@", &v20, 12);

      logger2 = [(PLModelMigration *)self logger];
      [logger2 logWithMessage:v16 fromCodeLocation:"PLModelMigration.m" type:{243, 0}];

      if (v16 != buf)
      {
        free(v16);
      }
    }

    else
    {
      v18 = PLMigrationGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromClass(class);
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Skipping registering staged action class: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)registerPreSchemaActionClass:(Class)class onCondition:(BOOL)condition
{
  conditionCopy = condition;
  v54 = *MEMORY[0x1E69E9840];
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    if (conditionCopy)
    {
LABEL_3:
      actionsPreSchema = self->_actionsPreSchema;

      [(PLModelMigration *)self _registerActionClass:class actionsContainer:actionsPreSchema progressPortion:0];
      return;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:228 description:{@"Invalid parameter not satisfying: %@", @"[(Class)actionClass isSubclassOfClass:PLModelMigrationActionPreSchema.class]"}];

    if (conditionCopy)
    {
      goto LABEL_3;
    }
  }

  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    logger = [(PLModelMigration *)self logger];

    if (logger)
    {
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
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *buf = 0u;
      v23 = 0u;
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
      v20 = 138543362;
      v21 = v15;
      v16 = _os_log_send_and_compose_impl(v14, 0, buf, 512, &dword_19BF1F000, v13, 0, "Skipping registering pre schema action class: %{public}@", &v20, 12);

      logger2 = [(PLModelMigration *)self logger];
      [logger2 logWithMessage:v16 fromCodeLocation:"PLModelMigration.m" type:{233, 0}];

      if (v16 != buf)
      {
        free(v16);
      }
    }

    else
    {
      v18 = PLMigrationGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromClass(class);
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Skipping registering pre schema action class: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)registerActionClass:(Class)class onCondition:(BOOL)condition
{
  conditionCopy = condition;
  v54 = *MEMORY[0x1E69E9840];
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    if (conditionCopy)
    {
LABEL_3:
      actions = self->_actions;

      [(PLModelMigration *)self _registerActionClass:class actionsContainer:actions progressPortion:&self->_actionProgressPortion];
      return;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:219 description:{@"Invalid parameter not satisfying: %@", @"[(Class)actionClass isSubclassOfClass:PLModelMigrationAction.class]"}];

    if (conditionCopy)
    {
      goto LABEL_3;
    }
  }

  v10 = PLMigrationGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    logger = [(PLModelMigration *)self logger];

    if (logger)
    {
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
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *buf = 0u;
      v23 = 0u;
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
      v20 = 138543362;
      v21 = v15;
      v16 = _os_log_send_and_compose_impl(v14, 0, buf, 512, &dword_19BF1F000, v13, 0, "Skipping registering action class: %{public}@", &v20, 12);

      logger2 = [(PLModelMigration *)self logger];
      [logger2 logWithMessage:v16 fromCodeLocation:"PLModelMigration.m" type:{223, 0}];

      if (v16 != buf)
      {
        free(v16);
      }
    }

    else
    {
      v18 = PLMigrationGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromClass(class);
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Skipping registering action class: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)actionRegistration
{
  PLModelMigrationActionRegistration_PreSchema(self);
  PLModelMigrationActionRegistration_Repairs(self);
  PLModelMigrationActionRegistration_15000(self);
  PLModelMigrationActionRegistration_16000(self);
  PLModelMigrationActionRegistration_17000(self);
  PLModelMigrationActionRegistration_18000(self);

  PLModelMigrationActionRegistration_19000(self);
}

- (PLModelMigration)initWithMigrationContext:(id)context logger:(id)logger
{
  contextCopy = context;
  loggerCopy = logger;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"migrationContext"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigration.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"[migrationContext isKindOfClass:PLMigrationContext.class]"}];
  }

  v31.receiver = self;
  v31.super_class = PLModelMigration;
  v10 = [(PLModelMigration *)&v31 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_logger, logger);
    objc_storeStrong(&v11->_internalMigrationContext, context);
    v11->_performedActionKinds = 0;
    v11->_didCreateSqliteErrorIndicator = 0;
    v11->_allowRebuild = ([contextCopy policy] & 2) != 0;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    migrationUUID = v11->_migrationUUID;
    v11->_migrationUUID = uUIDString;

    v15 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
    progress = v11->_progress;
    v11->_progress = v15;

    [(NSProgress *)v11->_progress setCancellable:1];
    objc_initWeak(&location, v11);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __52__PLModelMigration_initWithMigrationContext_logger___block_invoke;
    v28[3] = &unk_1E75788C0;
    objc_copyWeak(&v29, &location);
    [(NSProgress *)v11->_progress setCancellationHandler:v28];
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v11->_actions;
    v11->_actions = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actionsPreSchema = v11->_actionsPreSchema;
    v11->_actionsPreSchema = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actionsPreRepair = v11->_actionsPreRepair;
    v11->_actionsPreRepair = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actionsPostRepair = v11->_actionsPostRepair;
    v11->_actionsPostRepair = v23;

    v11->_actionProgressPortion = 0;
    v11->_actionProgressPortionPreRepair = 0;
    v11->_actionProgressPortionPostRepair = 0;
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __52__PLModelMigration_initWithMigrationContext_logger___block_invoke(uint64_t a1)
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
      v8 = _os_log_send_and_compose_impl(v7, 0, buf, 512, &dword_19BF1F000, v6, 0, "Migration was cancelled", v12, 2);

      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [v9 logger];
      [v10 logWithMessage:v8 fromCodeLocation:"PLModelMigration.m" type:{173, 0}];

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
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Migration was cancelled", buf, 2u);
      }
    }
  }
}

@end