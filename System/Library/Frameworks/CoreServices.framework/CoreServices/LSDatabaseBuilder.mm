@interface LSDatabaseBuilder
- (LSDatabaseBuilder)initWithIOQueue:(id)queue;
- (void)createAndSeedLocalDatabase:(BOOL *)database;
- (void)seedCryptexContentIfNeeded:(BOOL *)needed;
- (void)setSeedingComplete:(BOOL)complete;
- (void)syncWithMI:(void *)i;
@end

@implementation LSDatabaseBuilder

- (LSDatabaseBuilder)initWithIOQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = LSDatabaseBuilder;
  v6 = [(LSDatabaseBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ioQueue, queue);
  }

  return v7;
}

- (void)seedCryptexContentIfNeeded:(BOOL *)needed
{
  MEMORY[0x1865D7C40](self, a2);
  v5 = objc_autoreleasePoolPush();
  v9 = 0;
  if (!_LSContextInit(&v9))
  {
    cryptexContentChanged = [(_LSDatabase *)v9 cryptexContentChanged];
    if (cryptexContentChanged)
    {
      *needed = 1;
      v8 = _LSDatabaseGetSeedingGroup(cryptexContentChanged, v7);
      dispatch_group_enter(v8);

      dispatch_async(self->_ioQueue, &__block_literal_global_24);
    }

    else
    {
      MEMORY[0x1865D7C50]();
    }
  }

  objc_autoreleasePoolPop(v5);
}

void __48__LSDatabaseBuilder_seedCryptexContentIfNeeded___block_invoke()
{
  v0 = _LSServer_LSEnumerateAndRegisterAllCryptexContent();
  v2 = _LSDatabaseGetSeedingGroup(v0, v1);
  dispatch_group_leave(v2);

  JUMPOUT(0x1865D7C50);
}

- (void)createAndSeedLocalDatabase:(BOOL *)database
{
  v31 = *MEMORY[0x1E69E9840];
  MEMORY[0x1865D7C40](self, a2);
  v5 = objc_autoreleasePoolPush();
  v26 = 0;
  v25 = 0;
  v6 = _LSDatabaseCreateFromPersistentStore(7, &v26, &v25);
  v7 = v25;
  v8 = v7;
  if (v6)
  {
    v9 = +[LSDBExecutionContext sharedServerInstance];
    [(LSDBExecutionContext *)v9 setServerDatabase:v6];

    isSeeded = [(_LSDatabase *)v6 isSeeded];
    if (isSeeded && (isSeeded = [(_LSDatabase *)v6 isSeedingComplete], (isSeeded & 1) != 0))
    {
      _LSDatabaseCommit(v6, v11);
      *database = 0;
    }

    else
    {
      v12 = _LSInstallLog(isSeeded);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = getuid();
        v14 = _CFGetEUID();
        *buf = 67109376;
        v28 = v13;
        v29 = 1024;
        v30 = v14;
        _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "#LSDatabaseBuilder Seeding database with UID: %d, EUID %d", buf, 0xEu);
      }

      DistributedCenter = CFNotificationCenterGetDistributedCenter();
      CFNotificationCenterPostNotificationWithOptions(DistributedCenter, @"com.apple.LaunchServices.DatabaseSeedingStart", 0, 0, 0);
      if ((v26 & 1) == 0)
      {

        _LSResetServer(v16, v17);
        v6 = _LSServer_CopyLocalDatabase(0);
      }

      _LSDatabaseSessionSetSeedingInProgress(1);
      [(_LSDatabase *)v6 setSeeded:?];
      *database = 1;
      v18 = MEMORY[0x1865D7C40]();
      v20 = _LSDatabaseGetSeedingGroup(v18, v19);
      dispatch_group_enter(v20);

      ioQueue = self->_ioQueue;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __48__LSDatabaseBuilder_createAndSeedLocalDatabase___block_invoke;
      v23[3] = &unk_1E6A1B9D0;
      v24 = v26;
      v23[4] = self;
      dispatch_async(ioQueue, v23);
      if ([(_LSDatabase *)v6 cryptexContentChanged])
      {
        _LSServer_LSEnumerateAndRegisterAllCryptexContent();
      }
    }

    v22 = +[LSApplicationRestrictionsManager sharedInstance];
    [(LSApplicationRestrictionsManager *)v22 beginListeningForChanges];
  }

  else
  {
    v6 = _LSInstallLog(v7);
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      [(LSDatabaseBuilder *)v8 createAndSeedLocalDatabase:?];
    }
  }

  objc_autoreleasePoolPop(v5);
  MEMORY[0x1865D7C50]();
}

uint64_t __48__LSDatabaseBuilder_createAndSeedLocalDatabase___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (dispatchEnumerateAndRegisterWithDiagnosticFrame(unsigned short)::onceToken == -1)
  {
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_19:
    v3 = __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_CREATION_FROM_STORE_FAILED__(v2);
LABEL_20:
    v4 = v3;
    if (v3)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  __48__LSDatabaseBuilder_createAndSeedLocalDatabase___block_invoke_cold_1();
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_19;
  }

LABEL_3:
  if ((v2 & 0x10) != 0)
  {
    v3 = __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_IT_WAS_CORRUPT__(v2);
    goto LABEL_20;
  }

  if ((v2 & 8) != 0)
  {
    v3 = __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_IT_DID_NOT_EXIST__(v2);
    goto LABEL_20;
  }

  if ((v2 & 4) != 0)
  {
    v3 = __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_A_RECOVERY_FILE_EXISTED__(v2);
    goto LABEL_20;
  }

  if ((v2 & 0x80) != 0)
  {
    v3 = __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_ALLOC_FAILED_DURING_STORE_CREATION__(v2);
  }

  else if ((v2 & 0x100) != 0)
  {
    v3 = __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_STORE_CREATION_FAILED_UNEXPECTEDLY__(v2);
  }

  else if ((v2 & 0x40) != 0)
  {
    v3 = __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_CREATION_FROM_FRESH_FAILED__(v2);
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      v3 = __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_UNEXPECTEDLY__(v2);
      goto LABEL_20;
    }

    v3 = __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_THE_DATABASE_WAS_CREATED_FRESH__(v2);
  }

LABEL_21:
  v5 = _LSInstallLog(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "#LSDatabaseBuilder MobileInstallation reported PartialResultsReturned = YES, setting incomplete seed flag", buf, 2u);
  }

  v4 = 0;
LABEL_24:
  v6 = _LSServer_DatabaseExecutionContext();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__LSDatabaseBuilder_createAndSeedLocalDatabase___block_invoke_1;
  v12[3] = &unk_1E6A1B9A8;
  v12[4] = *(a1 + 32);
  v13 = v4;
  [(LSDBExecutionContext *)v6 syncWrite:v12];

  v7 = +[_LSInstallProgressService sharedInstance];
  [v7 sendDatabaseRebuiltNotification];

  v10 = _LSDatabaseGetSeedingGroup(v8, v9);
  dispatch_group_leave(v10);

  return MEMORY[0x1865D7C50]();
}

- (void)syncWithMI:(void *)i
{
  v4 = _LSDefaultLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Syncing with MI", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__LSDatabaseBuilder_syncWithMI___block_invoke;
  v7[3] = &__block_descriptor_40_e15_v16__0__NSURL_8l;
  v7[4] = i;
  _LSServer_SyncWithMobileInstallation(v7);
  v6 = _LSDefaultLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "enumerated and registered MI content", buf, 2u);
  }
}

void __32__LSDatabaseBuilder_syncWithMI___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fileSystemRepresentation];
  v5 = *(a1 + 32);
  v6 = strlen(v4);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v9 = v6;
  if (v6)
  {
    memmove(&__dst, v4, v6);
  }

  *(&__dst + v7) = 0;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v5, &__dst, &__dst);
  if (v9 < 0)
  {
    operator delete(__dst);
  }
}

- (void)setSeedingComplete:(BOOL)complete
{
  completeCopy = complete;
  v16 = *MEMORY[0x1E69E9840];
  v4 = _LSServer_CopyLocalDatabase(0);
  if (v4)
  {
    _LSDatabaseSessionSetSeedingInProgress(0);
    [(_LSDatabase *)v4 setSeeded:?];
    [(_LSDatabase *)v4 setSeedingComplete:completeCopy];
    _LSDatabaseCommit(v4, v5);
    _LSSaveImmediately(1);
  }

  v7 = _LSDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109376;
    v13[1] = getpid();
    v14 = 1024;
    v15 = _CFGetEUID();
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "[%d]: LSDatabaseBuilder: posting LSNotificationDatabaseSeedingComplete for UID %u", v13, 0xEu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, @"com.apple.LaunchServices.DatabaseSeedingComplete", 0, 0, 0);
  SharedInstance = __LSDefaultsGetSharedInstance(v9, v10);
  LODWORD(SharedInstance) = [SharedInstance proxyUIDForUID:getuid()] == 0;
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotificationWithOptions(DistributedCenter, @"com.apple.LaunchServices.DatabaseSeedingComplete", 0, 0, 2 * SharedInstance);
  _LSSetKernelPackageExtensions();
  _LSArmSaveTimer(4);
}

- (void)createAndSeedLocalDatabase:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "#LSDatabaseBuilder Failed to read database from disk and couldn't create new one: %{public}@", &v2, 0xCu);
}

@end