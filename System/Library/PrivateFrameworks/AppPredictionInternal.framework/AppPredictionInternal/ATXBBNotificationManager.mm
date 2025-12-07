@interface ATXBBNotificationManager
+ (id)sharedInstance;
- (ATXBBNotificationManager)initWithDebugOutput:(BOOL)output;
- (BOOL)_purgeNotificationsWithMinDate:(id)date;
- (id)recentNotifications;
- (void)addNotificationForBundleId:(id)id withPublicationDate:(id)date;
- (void)recentNotifications;
@end

@implementation ATXBBNotificationManager

- (ATXBBNotificationManager)initWithDebugOutput:(BOOL)output
{
  v14.receiver = self;
  v14.super_class = ATXBBNotificationManager;
  v4 = [(ATXBBNotificationManager *)&v14 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    uTF8String = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(uTF8String, v8);
    queue = v4->_queue;
    v4->_queue = v9;

    v4->_debugOutput = output;
    v11 = objc_opt_new();
    recentNotifications = v4->_recentNotifications;
    v4->_recentNotifications = v11;
  }

  return v4;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[ATXBBNotificationManager sharedInstance];
  }

  v3 = sharedInstance_instance_3;

  return v3;
}

uint64_t __42__ATXBBNotificationManager_sharedInstance__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = sharedInstance_instance_3;
  sharedInstance_instance_3 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)addNotificationForBundleId:(id)id withPublicationDate:(id)date
{
  idCopy = id;
  dateCopy = date;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__ATXBBNotificationManager_addNotificationForBundleId_withPublicationDate___block_invoke;
  block[3] = &unk_278597828;
  v12 = idCopy;
  v13 = dateCopy;
  selfCopy = self;
  v9 = dateCopy;
  v10 = idCopy;
  dispatch_async(queue, block);
}

void __75__ATXBBNotificationManager_addNotificationForBundleId_withPublicationDate___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) length])
  {
    return;
  }

  v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-600.0];
  v2 = [*(a1 + 40) compare:?];
  v3 = *(a1 + 48);
  if (v2 == -1)
  {
    if (v3[16] == 1)
    {
      v11 = MEMORY[0x277D85E08];
      v12 = *MEMORY[0x277D85E08];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Rejecting old notification for %@", *(a1 + 32)];
      fprintf(v12, "%s\n", [v13 UTF8String]);

      fflush(*v11);
    }

    goto LABEL_19;
  }

  if (![v3 _purgeNotificationsWithMinDate:v17] || objc_msgSend(*(*(a1 + 48) + 24), "count") <= 0x3E8)
  {
    v4 = [*(*(a1 + 48) + 24) objectForKeyedSubscript:*(a1 + 32)];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 compare:*(a1 + 40)];
      v7 = *(a1 + 48);
      if (v6 != -1)
      {
        if (*(v7 + 16))
        {
          v8 = MEMORY[0x277D85E08];
          v9 = *MEMORY[0x277D85E08];
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"not updating notification for %@", *(a1 + 32)];
          fprintf(v9, "%s\n", [v10 UTF8String]);

          fflush(*v8);
        }

        goto LABEL_18;
      }

      if (*(v7 + 16))
      {
        v14 = MEMORY[0x277D85E08];
        v15 = *MEMORY[0x277D85E08];
        [MEMORY[0x277CCACA8] stringWithFormat:@"updating notification for %@", *(a1 + 32)];
        goto LABEL_16;
      }
    }

    else
    {
      v7 = *(a1 + 48);
      if (*(v7 + 16) == 1)
      {
        v14 = MEMORY[0x277D85E08];
        v15 = *MEMORY[0x277D85E08];
        [MEMORY[0x277CCACA8] stringWithFormat:@"setting notification date for %@", *(a1 + 32)];
        v16 = LABEL_16:;
        fprintf(v15, "%s\n", [v16 UTF8String]);

        fflush(*v14);
        v7 = *(a1 + 48);
      }
    }

    [*(v7 + 24) setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 32)];
LABEL_18:
  }

LABEL_19:
}

- (BOOL)_purgeNotificationsWithMinDate:(id)date
{
  dateCopy = date;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_recentNotifications count];
  if (v5 >= 0x64)
  {
    v6 = objc_autoreleasePoolPush();
    recentNotifications = self->_recentNotifications;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __59__ATXBBNotificationManager__purgeNotificationsWithMinDate___block_invoke;
    v20 = &unk_27859F388;
    v21 = dateCopy;
    v8 = [(NSMutableDictionary *)recentNotifications keysOfEntriesPassingTest:&v17];
    v9 = MEMORY[0x277D85E08];
    if (self->_debugOutput)
    {
      v10 = *MEMORY[0x277D85E08];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleIdsToRemove: %@", v8, v17, v18, v19, v20];
      fprintf(v10, "%s\n", [v11 UTF8String]);

      fflush(*v9);
    }

    v12 = self->_recentNotifications;
    allObjects = [v8 allObjects];
    [(NSMutableDictionary *)v12 removeObjectsForKeys:allObjects];

    if (self->_debugOutput)
    {
      v14 = *v9;
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"entries remaining after purge: %lu", -[NSMutableDictionary count](self->_recentNotifications, "count")];
      fprintf(v14, "%s\n", [v15 UTF8String]);

      fflush(*v9);
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5 > 0x63;
}

- (id)recentNotifications
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-600.0];
  v13 = 0;
  v14[0] = &v13;
  v14[1] = 0x3032000000;
  v14[2] = __Block_byref_object_copy__74;
  v14[3] = __Block_byref_object_dispose__74;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ATXBBNotificationManager_recentNotifications__block_invoke;
  block[3] = &unk_2785987E0;
  block[4] = self;
  v5 = v3;
  v11 = v5;
  v12 = &v13;
  dispatch_sync(queue, block);
  v7 = __atxlog_handle_default(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ATXBBNotificationManager *)v14 recentNotifications];
  }

  v8 = *(v14[0] + 40);
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __47__ATXBBNotificationManager_recentNotifications__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _purgeNotificationsWithMinDate:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)recentNotifications
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Recent notifications: %@", &v3, 0xCu);
}

@end