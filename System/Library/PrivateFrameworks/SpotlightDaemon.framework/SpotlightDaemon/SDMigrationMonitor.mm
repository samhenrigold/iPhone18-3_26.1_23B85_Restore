@interface SDMigrationMonitor
+ (id)sharedInstance;
- (SDMigrationMonitor)init;
- (void)_didFindExtensions:(id)extensions;
- (void)_finishMigration;
- (void)dealloc;
- (void)monitorDataMigrationWithCompletionBlock:(id)block;
- (void)unlock;
@end

@implementation SDMigrationMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[SDMigrationMonitor sharedInstance];
  }

  v3 = sharedInstance_sSDMigrationMonitor;

  return v3;
}

uint64_t __36__SDMigrationMonitor_sharedInstance__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = sharedInstance_sSDMigrationMonitor;
  sharedInstance_sSDMigrationMonitor = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (SDMigrationMonitor)init
{
  v7.receiver = self;
  v7.super_class = SDMigrationMonitor;
  v2 = [(SDMigrationMonitor *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.searchd.migrationMonitor", v3);
    [(SDMigrationMonitor *)v2 setQueue:v4];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__didFindExtensions_ name:*MEMORY[0x277CC3540] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CC3540] object:0];

  v4.receiver = self;
  v4.super_class = SDMigrationMonitor;
  [(SDMigrationMonitor *)&v4 dealloc];
}

- (void)_didFindExtensions:(id)extensions
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SDMigrationMonitor__didFindExtensions___block_invoke;
  block[3] = &unk_278934050;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__41__SDMigrationMonitor__didFindExtensions___block_invoke(void *result)
{
  if ((*(result[4] + 9) & 1) == 0)
  {
    v1 = result;
    v2 = logForCSLogCategoryDefault(result);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "SDMigrationMonitor found index extensions", v4, 2u);
    }

    *(v1[4] + 9) = 1;
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:v1[4] name:*MEMORY[0x277CC3540] object:0];

    return [v1[4] _finishMigration];
  }

  return result;
}

- (void)_finishMigration
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (__PAIR64__(self->_foundExtensions, self->_unlocked) == 0x100000001 && self->_finishedDataMigration && self->_completionBlock)
  {
    v4 = logForCSLogCategoryDefault(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "### SDMigrationMonitor _finishMigration", v11, 2u);
    }

    (*(self->_completionBlock + 2))();
    completionBlock = self->_completionBlock;
    self->_completionBlock = 0;
  }

  else
  {
    v6 = logForCSLogCategoryDefault(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      unlocked = self->_unlocked;
      foundExtensions = self->_foundExtensions;
      finishedDataMigration = self->_finishedDataMigration;
      v10 = self->_completionBlock;
      v11[0] = 67109888;
      v11[1] = unlocked;
      v12 = 1024;
      v13 = foundExtensions;
      v14 = 1024;
      v15 = finishedDataMigration;
      v16 = 1024;
      v17 = v10;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "### SDMigrationMonitor unlocked: %d, foundExtensions: %d, migrationFinished: %d, completion: %d", v11, 0x1Au);
    }

    completionBlock = +[SDLockHandler sharedLockHandler];
    [completionBlock checkMigrationComplete];
  }
}

- (void)unlock
{
  v3 = logForCSLogCategoryDefault(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "### SDMigrationMonitor unlock", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__SDMigrationMonitor_unlock__block_invoke;
  block[3] = &unk_278934050;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__28__SDMigrationMonitor_unlock__block_invoke(void *result)
{
  if ((*(result[4] + 8) & 1) == 0)
  {
    v1 = result;
    v2 = logForCSLogCategoryDefault(result);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "SDMigrationMonitor unlocked", v3, 2u);
    }

    *(v1[4] + 8) = 1;
    return [v1[4] _finishMigration];
  }

  return result;
}

- (void)monitorDataMigrationWithCompletionBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SDMigrationMonitor_monitorDataMigrationWithCompletionBlock___block_invoke;
  v7[3] = &unk_278934F30;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(queue, v7);
}

void __62__SDMigrationMonitor_monitorDataMigrationWithCompletionBlock___block_invoke(uint64_t a1)
{
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __62__SDMigrationMonitor_monitorDataMigrationWithCompletionBlock___block_invoke_2;
  v10 = &unk_2789374B0;
  v2 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v2;
  v3 = MEMORY[0x2383760E0](&v7);
  v4 = [SDEventMonitor sharedInstance:v7];
  v5 = [*(a1 + 32) eventHandler];

  if (v5)
  {
    v6 = [*(a1 + 32) eventHandler];
    [v4 unregisterHandler:v6 forEventName:@"com.apple.datamigrator.migrationDidFinish"];
  }

  [*(a1 + 32) setEventHandler:v3];
  [v4 registerHandler:v3 forEventName:@"com.apple.datamigrator.migrationDidFinish"];
}

void __62__SDMigrationMonitor_monitorDataMigrationWithCompletionBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = logForCSLogCategoryDefault(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v11;
      _os_log_error_impl(&dword_231A35000, v12, OS_LOG_TYPE_ERROR, "SDMigrationMonitor received an error for %@, userInfo:%@, error:%@", buf, 0x20u);
    }
  }

  else
  {
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(v14 + 16);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__SDMigrationMonitor_monitorDataMigrationWithCompletionBlock___block_invoke_9;
    v16[3] = &unk_278934F30;
    v16[4] = v14;
    v17 = v13;
    dispatch_async(v15, v16);
  }
}

void *__62__SDMigrationMonitor_monitorDataMigrationWithCompletionBlock___block_invoke_9(void *result)
{
  if ((*(result[4] + 10) & 1) == 0)
  {
    v1 = result;
    v2 = logForCSLogCategoryDefault(result);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "SDMigrationMonitor was notified of data migration completion", v9, 2u);
    }

    *(v1[4] + 10) = 1;
    v3 = MEMORY[0x2383760E0](v1[5]);
    v4 = v1[4];
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v6 = +[SDEventMonitor sharedInstance];
    v7 = [v1[4] eventHandler];
    [v6 unregisterHandler:v7 forEventName:@"com.apple.datamigrator.migrationDidFinish"];

    [v1[4] setEventHandler:0];
    v8 = +[SDLockHandler sharedLockHandler];
    [v8 forceMigrationComplete];

    return [v1[4] _finishMigration];
  }

  return result;
}

@end