@interface BRCBuddyFlowObserver
+ (id)sharedBuddyFlowObserver;
- (BOOL)observeBuddyIfNecessaryWithKey:(id)key block:(id)block description:(id)description;
- (id)_init;
- (void)_registerForBYSetupAssistantFinishedNotification;
- (void)_stopObservingBuddyAndExecuteCallbacks;
- (void)_unregisterForBYSetupAssistantFinishedNotification;
- (void)logStatus;
- (void)stopObservingBuddyWithKey:(id)key;
@end

@implementation BRCBuddyFlowObserver

+ (id)sharedBuddyFlowObserver
{
  if (sharedBuddyFlowObserver_onceToken != -1)
  {
    +[BRCBuddyFlowObserver sharedBuddyFlowObserver];
  }

  v3 = sharedBuddyFlowObserver_obj;

  return v3;
}

uint64_t __47__BRCBuddyFlowObserver_sharedBuddyFlowObserver__block_invoke()
{
  sharedBuddyFlowObserver_obj = [[BRCBuddyFlowObserver alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = BRCBuddyFlowObserver;
  v2 = [(BRCBuddyFlowObserver *)&v7 init];
  p_isa = &v2->super.isa;
  if (v2)
  {
    v2->_waitingForBuddy = 0;
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = p_isa[3];
    p_isa[3] = v4;

    [p_isa[3] setMaxConcurrentOperationCount:1];
  }

  return p_isa;
}

- (void)_registerForBYSetupAssistantFinishedNotification
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] Register for BYSetupAssistantFinishedDarwinNotification%@", buf, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _buddyHasFinished, *MEMORY[0x277D4D9E8], 0, CFNotificationSuspensionBehaviorDrop);
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("com.apple.bird.buddy-flow-observer-refresh-queue", v7);

  objc_initWeak(buf, self);
  v9 = objc_alloc(MEMORY[0x277CFAEF8]);
  v10 = [BRCUserDefaults defaultsForMangledID:0];
  [v10 buddyFlowObserverRefreshTimerInterval];
  v12 = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__BRCBuddyFlowObserver__registerForBYSetupAssistantFinishedNotification__block_invoke;
  v16[3] = &unk_278500FD8;
  objc_copyWeak(&v17, buf);
  v13 = [v9 initWithName:@"buddy-flow-observer" interval:v8 callbackQueue:v16 block:v12];
  timer = self->_timer;
  p_timer = &self->_timer;
  *p_timer = v13;

  [*p_timer start];
  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

uint64_t __72__BRCBuddyFlowObserver__registerForBYSetupAssistantFinishedNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_5;
  }

  if (([WeakRetained doesBuddyFlowNeedsToRun] & 1) == 0)
  {
    [v2 _stopObservingBuddyAndExecuteCallbacks];
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = 1;
LABEL_6:

  return v3;
}

- (void)_unregisterForBYSetupAssistantFinishedNotification
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] Unregister for BYSetupAssistantFinishedDarwinNotification%@", &v6, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D4D9E8], 0);
}

- (BOOL)observeBuddyIfNecessaryWithKey:(id)key block:(id)block description:(id)description
{
  v48 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  blockCopy = block;
  descriptionCopy = description;
  if ([(BRCBuddyFlowObserver *)self doesBuddyFlowNeedsToRun])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(BRCBuddyFlowObserver *)selfCopy doesBuddyFlowNeedsToRun])
    {
      if (!selfCopy->_waitingForBuddy)
      {
        selfCopy->_waitingForBuddy = 1;
        [(BRCBuddyFlowObserver *)selfCopy _registerForBYSetupAssistantFinishedNotification];
      }

      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *&buf[4] = descriptionCopy;
        *&buf[12] = 2112;
        *&buf[14] = keyCopy;
        *&buf[22] = 2112;
        v45 = v12;
        _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[NOTICE] We are in Buddy. Register block [%@] with key [%@]%@", buf, 0x20u);
      }

      if (!selfCopy->_registerdKeyToToken)
      {
        v14 = objc_opt_new();
        registerdKeyToToken = selfCopy->_registerdKeyToToken;
        selfCopy->_registerdKeyToToken = v14;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v45 = __Block_byref_object_copy__9;
      v46 = __Block_byref_object_dispose__9;
      v47 = 0;
      if (keyCopy)
      {
        v16 = [(NSMutableDictionary *)selfCopy->_registerdKeyToToken objectForKeyedSubscript:keyCopy];
        v17 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v16;

        if (*(*&buf[8] + 40))
        {
          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v40 = 138412546;
            v41 = keyCopy;
            v42 = 2112;
            v43 = v18;
            _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[NOTICE] Key %@ already registered%@", v40, 0x16u);
          }
        }

        else
        {
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          observersQueue = selfCopy->_observersQueue;
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __73__BRCBuddyFlowObserver_observeBuddyIfNecessaryWithKey_block_description___block_invoke;
          v35[3] = &unk_278501000;
          v36 = descriptionCopy;
          v37 = selfCopy;
          v27 = keyCopy;
          v38 = v27;
          v39 = blockCopy;
          v28 = [defaultCenter addObserverForName:@"com.apple.clouddocs.buddy-flow-done" object:0 queue:observersQueue usingBlock:v35];
          v29 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v28;

          [(NSMutableDictionary *)selfCopy->_registerdKeyToToken setObject:*(*&buf[8] + 40) forKeyedSubscript:v27];
          v18 = v36;
        }
      }

      else
      {
        defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
        v22 = selfCopy->_observersQueue;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __73__BRCBuddyFlowObserver_observeBuddyIfNecessaryWithKey_block_description___block_invoke_13;
        v31[3] = &unk_278501028;
        v32 = descriptionCopy;
        v34 = buf;
        v33 = blockCopy;
        v23 = [defaultCenter2 addObserverForName:@"com.apple.clouddocs.buddy-flow-done" object:0 queue:v22 usingBlock:v31];
        v24 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v23;

        v18 = v32;
      }

      if (![(BRCBuddyFlowObserver *)selfCopy doesBuddyFlowNeedsToRun])
      {
        [(BRCBuddyFlowObserver *)selfCopy _stopObservingBuddyAndExecuteCallbacks];
      }

      v20 = *(*&buf[8] + 40) != 0;
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v20 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t __73__BRCBuddyFlowObserver_observeBuddyIfNecessaryWithKey_block_description___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] Buddy has finished. Execute block [%@]%@", &v6, 0x16u);
  }

  [*(a1 + 40) stopObservingBuddyWithKey:*(a1 + 48)];
  return (*(*(a1 + 56) + 16))();
}

uint64_t __73__BRCBuddyFlowObserver_observeBuddyIfNecessaryWithKey_block_description___block_invoke_13(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] Buddy has finished. Execute block [%@]%@", &v7, 0x16u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:*(*(a1[6] + 8) + 40)];

  return (*(a1[5] + 16))();
}

- (void)logStatus
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"no";
    if (selfCopy->_waitingForBuddy)
    {
      v5 = @"yes";
    }

    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] Waiting for buddy to complete: %@%@", &v6, 0x16u);
  }

  objc_sync_exit(selfCopy);
}

- (void)_stopObservingBuddyAndExecuteCallbacks
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_waitingForBuddy)
  {
    obj = self;
    objc_sync_enter(obj);
    if (self->_waitingForBuddy)
    {
      v3 = brc_bread_crumbs();
      v4 = brc_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = v3;
        _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] Unregister for BYSetupAssistantFinishedDarwinNotification%@", buf, 0xCu);
      }

      self->_waitingForBuddy = 0;
      [(BRCBuddyFlowObserver *)obj _unregisterForBYSetupAssistantFinishedNotification];
      objc_sync_exit(obj);

      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v10 = @"com.apple.clouddocs.buddy-flow-done";
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] Trigger %@%@", buf, 0x16u);
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"com.apple.clouddocs.buddy-flow-done" object:0 userInfo:0];
    }

    else
    {
      objc_sync_exit(obj);
    }
  }
}

- (void)stopObservingBuddyWithKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_registerdKeyToToken objectForKeyedSubscript:keyCopy];
  if (v5)
  {
    [(NSMutableDictionary *)selfCopy->_registerdKeyToToken removeObjectForKey:keyCopy];
    if (![(NSMutableDictionary *)selfCopy->_registerdKeyToToken count])
    {
      registerdKeyToToken = selfCopy->_registerdKeyToToken;
      selfCopy->_registerdKeyToToken = 0;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:v5];
  }

  objc_sync_exit(selfCopy);
}

@end