@interface AutoBugCaptureCacheDelete
- (AutoBugCaptureCacheDelete)initWithStorageManager:(id)manager;
- (id)cacheDeletePeriodicWithInfo:(__CFDictionary *)info;
- (id)replyCacheDeleteDictionaryWithCDInfo:(id)info amount:(unint64_t)amount;
- (void)initCacheDeletePurgeMonitor;
- (void)processPurgedFilesForCDEvents:(id)events;
- (void)registerCallbacks:(const char *)callbacks;
@end

@implementation AutoBugCaptureCacheDelete

- (AutoBugCaptureCacheDelete)initWithStorageManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = AutoBugCaptureCacheDelete;
  v6 = [(AutoBugCaptureCacheDelete *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storageManager, manager);
    v8 = +[ABCAdministrator sharedInstance];
    configurationManager = [v8 configurationManager];
    logArchivePath = [configurationManager logArchivePath];
    logArchivePath = v7->logArchivePath;
    v7->logArchivePath = logArchivePath;

    if ([(NSString *)v7->logArchivePath hasPrefix:@"/var/"])
    {
      v12 = [@"/private" stringByAppendingPathComponent:v7->logArchivePath];
      v13 = v7->logArchivePath;
      v7->logArchivePath = v12;
    }

    [(AutoBugCaptureCacheDelete *)v7 registerCallbacks:"com.apple.symptomsd-diag.CacheDelete"];
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    purgedFilePaths = v7->purgedFilePaths;
    v7->purgedFilePaths = v14;
  }

  return v7;
}

- (id)replyCacheDeleteDictionaryWithCDInfo:(id)info amount:(unint64_t)amount
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB38];
  infoCopy = info;
  v8 = objc_alloc_init(v6);
  v9 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"/private/var";
  }

  v11 = [(NSString *)self->logArchivePath hasPrefix:v10];
  if (v11)
  {
    [(__CFString *)v8 setObject:v10 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:amount];
    [(__CFString *)v8 setObject:v12 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

    v14 = storageLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "CacheDelete given back: %@", &v19, 0xCu);
    }

    v15 = v8;
  }

  else
  {
    v16 = storageLogHandle(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      logArchivePath = self->logArchivePath;
      v19 = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = logArchivePath;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_INFO, "CacheDelete volume %@ and target path incompatible: %@", &v19, 0x16u);
    }

    v15 = 0;
  }

  return v15;
}

- (id)cacheDeletePeriodicWithInfo:(__CFDictionary *)info
{
  v5 = storageLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "CacheDelete cacheDeletePERIODICWithInfo", buf, 2u);
  }

  storageManager = self->_storageManager;
  if (storageManager)
  {
    performPeriodicPurge = [(DiagnosticStorageManager *)storageManager performPeriodicPurge];
  }

  else
  {
    v8 = +[ABCAdministrator sharedInstance];
    configurationManager = [v8 configurationManager];
    autoBugCaptureEnabled = [configurationManager autoBugCaptureEnabled];

    if (autoBugCaptureEnabled)
    {
      v12 = storageLogHandle(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "CacheDelete cacheDeletePERIODICWithInfo. ABC is enabled but storageManager is nil", v15, 2u);
      }
    }

    performPeriodicPurge = 0;
  }

  v13 = [(AutoBugCaptureCacheDelete *)self replyCacheDeleteDictionaryWithCDInfo:info amount:performPeriodicPurge];

  return v13;
}

- (void)registerCallbacks:(const char *)callbacks
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:callbacks];
  v5 = CacheDeleteRegisterInfoCallbacks();
  if ((v5 & 0x80000000) != 0)
  {
    v6 = v5;
    v7 = storageLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      selfCopy = self;
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "Failed to register with CacheDelete: %p, %d", buf, 0x12u);
    }
  }
}

- (void)initCacheDeletePurgeMonitor
{
  v10[1] = *MEMORY[0x277D85DE8];
  CacheDeleteInitPurgeMarker();
  CFStringCreateWithCString(*MEMORY[0x277CBECE8], [(NSString *)self->logArchivePath fileSystemRepresentation], 0x8000100u);
  v10[0] = self->logArchivePath;
  [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v3 = CacheDeleteRegisterPurgeNotification();
  if (v3)
  {
    v4 = v3;
    v5 = storageLogHandle(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      selfCopy = self;
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_ERROR, "Failed to register Purge Notification CacheDelete: %p, %d", buf, 0x12u);
    }
  }

  else
  {
    CacheDeleteEnumerateRemovedFiles();
  }
}

- (void)processPurgedFilesForCDEvents:(id)events
{
  v25 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if (![eventsCopy count])
  {
    goto LABEL_20;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  v8 = *v21;
  v19 = eventsCopy;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v20 + 1) + 8 * i);
      v11 = [v10 objectForKeyedSubscript:@"rescan"];

      if (v11)
      {
        [(DiagnosticStorageManager *)self->_storageManager cleanupCasesAfterACentralizedCacheDeletePurgeEvent:0];
LABEL_18:
        eventsCopy = v19;
        goto LABEL_19;
      }

      v12 = [v10 objectForKeyedSubscript:@"historyDone"];

      if (v12)
      {
        [(DiagnosticStorageManager *)self->_storageManager cleanupCasesAfterACentralizedCacheDeletePurgeEvent:self->purgedFilePaths];
        [(NSMutableArray *)self->purgedFilePaths removeAllObjects];
        goto LABEL_18;
      }

      v13 = [v10 objectForKeyedSubscript:@"path"];
      if (v13)
      {
        v14 = v13;
        v15 = objc_alloc(MEMORY[0x277CBEB18]);
        pathComponents = [v14 pathComponents];
        v17 = [v15 initWithArray:pathComponents];

        if ([v17 containsObject:@"private"])
        {
          [v17 removeObject:@"private"];
          v18 = [MEMORY[0x277CCACA8] pathWithComponents:v17];

          v14 = v18;
        }

        [(NSMutableArray *)self->purgedFilePaths addObject:v14];
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    eventsCopy = v19;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_19:

LABEL_20:
}

@end