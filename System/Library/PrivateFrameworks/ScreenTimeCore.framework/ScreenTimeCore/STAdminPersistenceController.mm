@interface STAdminPersistenceController
+ (STAdminPersistenceController)sharedController;
- (BOOL)saveContext:(id)context error:(id *)error;
- (STAdminPersistenceController)init;
- (id)newBackgroundContext;
- (id)viewContext;
- (void)performBackgroundTask:(id)task;
- (void)performBackgroundTaskAndWait:(id)wait;
@end

@implementation STAdminPersistenceController

+ (STAdminPersistenceController)sharedController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__STAdminPersistenceController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v2 = sharedController_sharedController;

  return v2;
}

void __48__STAdminPersistenceController_sharedController__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = +[STLog persistence];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v2 = v6;
    _os_log_impl(&dword_1B831F000, v1, OS_LOG_TYPE_DEFAULT, "Created shared instance of “%{public}@”", &v5, 0xCu);
  }

  v3 = objc_opt_new();
  v4 = sharedController_sharedController;
  sharedController_sharedController = v3;
}

- (STAdminPersistenceController)init
{
  v20[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = STAdminPersistenceController;
  v2 = [(STPersistenceController *)&v14 init];
  v3 = v2;
  if (v2)
  {
    persistentContainer = [(STPersistenceController *)v2 persistentContainer];
    if (+[STAdminPersistenceController isUnitTestRunning])
    {
      v5 = +[STLog persistence];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_INFO, "Device is running in unit test mode. Configuring a test screen time database.", buf, 2u);
      }

      v6 = [STPersistenceConfiguration persistentStoreDescriptionForConfigurationName:@"Local" type:*MEMORY[0x1E695D4A8]];
      v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/dev/null"];
      [v6 setURL:v7];

      [v6 setConfiguration:@"Local"];
      [v6 setOption:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695D3C0]];
      v20[0] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [persistentContainer setPersistentStoreDescriptions:v8];

      v9 = +[STLog persistence];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = +[STPersistenceConfiguration localPersistentXPCStoreDescription];
      v15 = v6;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      [persistentContainer setPersistentStoreDescriptions:v10];

      v9 = +[STLog persistence];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_9:

        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __36__STAdminPersistenceController_init__block_invoke;
        v12[3] = &unk_1E7CE6920;
        v13 = v3;
        [persistentContainer loadPersistentStoresWithCompletionHandler:v12];

        return v3;
      }
    }

    *buf = 138543618;
    v17 = v3;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_1B831F000, v9, OS_LOG_TYPE_INFO, "%{public}@ loading persistent store: %{public}@", buf, 0x16u);
    goto LABEL_9;
  }

  return v3;
}

void __36__STAdminPersistenceController_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[STLog persistence];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138543874;
      v12 = v9;
      v13 = 2114;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      _os_log_fault_impl(&dword_1B831F000, v8, OS_LOG_TYPE_FAULT, "%{public}@ unable to load persistent store %{public}@: %{public}@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = 138543618;
    v12 = v10;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_1B831F000, v8, OS_LOG_TYPE_INFO, "%{public}@ loaded persistent store %{public}@", &v11, 0x16u);
  }
}

- (BOOL)saveContext:(id)context error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  localStore = [(STPersistenceController *)self localStore];

  if ([contextCopy hasChanges])
  {
    if (localStore)
    {
      persistentContainer = [(STPersistenceController *)self persistentContainer];
      persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];
      localStore2 = [(STPersistenceController *)self localStore];
      v17[0] = localStore2;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v12 = [persistentStoreCoordinator currentPersistentHistoryTokenFromStores:v11];
    }

    v13 = [_TtC14ScreenTimeCore20STConsistencyChecker validateWithManagedObjectContext:contextCopy error:error];
    if (!error || v13)
    {
      v15 = [contextCopy save:error];
    }

    else
    {
      v14 = +[STLog persistence];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [STAdminPersistenceController saveContext:error error:v14];
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)performBackgroundTask:(id)task
{
  taskCopy = task;
  viewContext = [(STAdminPersistenceController *)self viewContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__STAdminPersistenceController_performBackgroundTask___block_invoke;
  v7[3] = &unk_1E7CE6948;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  [viewContext performBlock:v7];
}

void __54__STAdminPersistenceController_performBackgroundTask___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) viewContext];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)performBackgroundTaskAndWait:(id)wait
{
  waitCopy = wait;
  viewContext = [(STAdminPersistenceController *)self viewContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__STAdminPersistenceController_performBackgroundTaskAndWait___block_invoke;
  v7[3] = &unk_1E7CE6948;
  v7[4] = self;
  v8 = waitCopy;
  v6 = waitCopy;
  [viewContext performBlockAndWait:v7];
}

void __61__STAdminPersistenceController_performBackgroundTaskAndWait___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) viewContext];
    (*(v1 + 16))(v1, v2);
  }
}

- (id)newBackgroundContext
{
  persistentContainer = [(STPersistenceController *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  [newBackgroundContext setMergePolicy:*MEMORY[0x1E695D370]];
  return newBackgroundContext;
}

- (id)viewContext
{
  persistentContainer = [(STPersistenceController *)self persistentContainer];
  viewContext = [persistentContainer viewContext];

  [viewContext setAutomaticallyMergesChangesFromParent:1];
  [viewContext setMergePolicy:*MEMORY[0x1E695D370]];

  return viewContext;
}

- (void)saveContext:(uint64_t *)a1 error:(NSObject *)a2 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "ManagedObjectContext save failed. Error reported when running ConsistencyChecker: %{public}@", &v3, 0xCu);
}

@end