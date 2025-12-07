@interface DefaultGKViceroyNATObserver
+ (id)syncQueue;
- (BOOL)isValidSettings:(id)settings;
- (DefaultGKViceroyNATObserver)init;
- (void)NATTypeDidChange:(int)change;
- (void)_getNATTypeWithNATSettings:(id)settings completionHandler:(id)handler;
- (void)dealloc;
- (void)getNATTypeWithNATSettings:(id)settings completionHandler:(id)handler;
- (void)performAsync:(id)async;
- (void)teardown;
@end

@implementation DefaultGKViceroyNATObserver

- (DefaultGKViceroyNATObserver)init
{
  v8.receiver = self;
  v8.super_class = DefaultGKViceroyNATObserver;
  v2 = [(DefaultGKViceroyNATObserver *)&v8 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    natSemaphore = v2->_natSemaphore;
    v2->_natSemaphore = v3;

    v2->_natType = 0;
    v5 = objc_alloc_init(MEMORY[0x277CE5770]);
    natObserver = v2->_natObserver;
    v2->_natObserver = v5;
  }

  return v2;
}

- (void)dealloc
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    [DefaultGKViceroyNATObserver dealloc];
  }

  [(DefaultGKViceroyNATObserver *)self teardown];
  v4.receiver = self;
  v4.super_class = DefaultGKViceroyNATObserver;
  [(DefaultGKViceroyNATObserver *)&v4 dealloc];
}

+ (id)syncQueue
{
  if (syncQueue_onceToken != -1)
  {
    +[DefaultGKViceroyNATObserver syncQueue];
  }

  v3 = syncQueue_sSyncQueue;

  return v3;
}

uint64_t __40__DefaultGKViceroyNATObserver_syncQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.GameKit.GKViceroyNATObserver.sync", 0);
  v1 = syncQueue_sSyncQueue;
  syncQueue_sSyncQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)performAsync:(id)async
{
  asyncCopy = async;
  syncQueue = [objc_opt_class() syncQueue];
  dispatch_async(syncQueue, asyncCopy);
}

- (void)getNATTypeWithNATSettings:(id)settings completionHandler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__DefaultGKViceroyNATObserver_getNATTypeWithNATSettings_completionHandler___block_invoke;
  v10[3] = &unk_2785DE948;
  v10[4] = self;
  v11 = settingsCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = settingsCopy;
  [(DefaultGKViceroyNATObserver *)self performAsync:v10];
}

- (BOOL)isValidSettings:(id)settings
{
  v20 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = +[GKViceroyNATConfiguration settingsKeys];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [settingsCopy objectForKey:v9];

        if (!v10)
        {
          if (!os_log_GKGeneral)
          {
            v12 = GKOSLoggers();
          }

          v13 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
          {
            [(DefaultGKViceroyNATObserver *)v9 isValidSettings:v13];
          }

          v11 = 0;
          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_15:

  return v11;
}

- (void)_getNATTypeWithNATSettings:(id)settings completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  handlerCopy = handler;
  if ([(DefaultGKViceroyNATObserver *)self natType])
  {
LABEL_2:
    handlerCopy[2](handlerCopy, [(DefaultGKViceroyNATObserver *)self natType]);
    goto LABEL_20;
  }

  if (settingsCopy && [(DefaultGKViceroyNATObserver *)self isValidSettings:settingsCopy])
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [DefaultGKViceroyNATObserver _getNATTypeWithNATSettings:completionHandler:];
    }

    [GKViceroyNATConfiguration applySettings:settingsCopy];
    natObserver = [(DefaultGKViceroyNATObserver *)self natObserver];
    [natObserver setDelegate:self];

    natSemaphore = self->_natSemaphore;
    v11 = dispatch_time(0, 3000000000);
    if (!dispatch_semaphore_wait(natSemaphore, v11))
    {
      if (!os_log_GKGeneral)
      {
        v14 = GKOSLoggers();
      }

      v15 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v16 = MEMORY[0x277CCABB0];
        v17 = v15;
        v18 = [v16 numberWithUnsignedInt:{-[DefaultGKViceroyNATObserver natType](self, "natType")}];
        v19 = 138412290;
        v20 = v18;
        _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "[GKViceroyNATObserver] Done waiting for valid NAT type: %@", &v19, 0xCu);
      }

      goto LABEL_2;
    }

    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [DefaultGKViceroyNATObserver _getNATTypeWithNATSettings:completionHandler:];
    }

    handlerCopy[2](handlerCopy, 0);
    [(DefaultGKViceroyNATObserver *)self teardown];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [DefaultGKViceroyNATObserver _getNATTypeWithNATSettings:completionHandler:];
    }

    handlerCopy[2](handlerCopy, 0);
  }

LABEL_20:
}

- (void)teardown
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    [DefaultGKViceroyNATObserver teardown];
  }

  self->_natType = 0;
  natObserver = [(DefaultGKViceroyNATObserver *)self natObserver];

  if (natObserver)
  {
    natObserver2 = [(DefaultGKViceroyNATObserver *)self natObserver];
    [natObserver2 setDelegate:0];

    natObserver = self->_natObserver;
    self->_natObserver = 0;
  }
}

- (void)NATTypeDidChange:(int)change
{
  v3 = *&change;
  v14 = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109120;
    v13[1] = v3;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "[GKViceroyNATObserver] Received NAT type %d", v13, 8u);
  }

  natSemaphore = [(DefaultGKViceroyNATObserver *)self natSemaphore];
  v8 = dispatch_semaphore_wait(natSemaphore, 0);

  if (v8)
  {
    if (v3)
    {
      [(DefaultGKViceroyNATObserver *)self setNatType:v3];
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults setInteger:v3 forKey:@"natType"];

      natSemaphore2 = [(DefaultGKViceroyNATObserver *)self natSemaphore];
      dispatch_semaphore_signal(natSemaphore2);
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
      {
        [DefaultGKViceroyNATObserver NATTypeDidChange:];
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [DefaultGKViceroyNATObserver NATTypeDidChange:];
    }

    [(DefaultGKViceroyNATObserver *)self teardown];
  }
}

- (void)isValidSettings:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "[GKViceroyNATObserver] Missing required setting: %@", &v2, 0xCu);
}

@end