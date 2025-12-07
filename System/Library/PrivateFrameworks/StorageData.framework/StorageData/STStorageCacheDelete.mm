@interface STStorageCacheDelete
+ (id)sharedMonitor;
- (STStorageCacheDelete)init;
- (id)cacheDeleteDict;
- (int64_t)totalPurgeable;
- (void)dealloc;
- (void)refreshPurgeableSpace;
- (void)startMonitor;
@end

@implementation STStorageCacheDelete

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken_0 != -1)
  {
    +[STStorageCacheDelete sharedMonitor];
  }

  v3 = sharedMonitor__monitor;

  return v3;
}

uint64_t __37__STStorageCacheDelete_sharedMonitor__block_invoke()
{
  sharedMonitor__monitor = objc_alloc_init(STStorageCacheDelete);

  return MEMORY[0x2821F96F8]();
}

- (STStorageCacheDelete)init
{
  v11.receiver = self;
  v11.super_class = STStorageCacheDelete;
  v2 = [(STStorageCacheDelete *)&v11 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__STStorageCacheDelete_init__block_invoke;
    block[3] = &unk_279D1CE88;
    v4 = v2;
    v10 = v4;
    dispatch_async(v3, block);

    v5 = dispatch_get_global_queue(9, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__STStorageCacheDelete_init__block_invoke_2;
    v7[3] = &unk_279D1D388;
    v8 = v4;
    notify_register_dispatch("CACHE_DELETE_PURGEABLE_UPDATED", v4 + 2, v5, v7);

    notify_suspend(v4[2]);
  }

  return v2;
}

void __28__STStorageCacheDelete_init__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) refreshPurgeableSpace];
  v1 = MEMORY[0x277D85CD0];

  dispatch_async(v1, &__block_literal_global_4);
}

void __28__STStorageCacheDelete_init__block_invoke_3()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"STStoragePurgeableChangedNotification" object:0];
}

- (void)dealloc
{
  cdNotifyToken = self->_cdNotifyToken;
  if (cdNotifyToken)
  {
    notify_cancel(cdNotifyToken);
  }

  v4.receiver = self;
  v4.super_class = STStorageCacheDelete;
  [(STStorageCacheDelete *)&v4 dealloc];
}

- (void)startMonitor
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__STStorageCacheDelete_startMonitor__block_invoke;
  block[3] = &unk_279D1CE88;
  block[4] = self;
  dispatch_async(v3, block);

  notify_resume(self->_cdNotifyToken);
}

- (void)refreshPurgeableSpace
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  +[STStorageMediaMonitor sharedMonitor];
}

- (id)cacheDeleteDict
{
  while (!self->_inited)
  {
    usleep(0x186A0u);
  }

  os_unfair_lock_lock(&self->_updateLock);
  v3 = self->_itemsDict;
  os_unfair_lock_unlock(&self->_updateLock);

  return v3;
}

- (int64_t)totalPurgeable
{
  while (!self->_inited)
  {
    usleep(0x186A0u);
  }

  os_unfair_lock_lock(&self->_updateLock);
  totalPurgeable = self->_totalPurgeable;
  os_unfair_lock_unlock(&self->_updateLock);
  return totalPurgeable;
}

@end