@interface QLCacheCleanUpDatabaseThread
- (BOOL)_updateHitCount;
- (QLCacheCleanUpDatabaseThread)initWithCacheThread:(id)thread;
- (unint64_t)hitToSaveCount;
- (void)_stopWriteAndCleanUpThreadRunLoop;
- (void)_threadMain;
- (void)_writeAndCleanUp;
- (void)addHitWithThumbnailData:(id)data;
- (void)cleanUpForReset;
- (void)dealloc;
- (void)pause;
- (void)startCleanUp;
- (void)stop;
@end

@implementation QLCacheCleanUpDatabaseThread

- (void)pause
{
  v3 = _dbLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheCleanUpDatabaseThread pause];
  }

  v4 = _dbLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheCleanUpDatabaseThread stop];
  }

  [(NSConditionLock *)self->_threadLock lock];
  self->_currentMode = 3;
  v5 = _dbLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheCleanUpDatabaseThread stop];
  }

  [(NSConditionLock *)self->_threadLock unlock];
}

- (void)_stopWriteAndCleanUpThreadRunLoop
{
  v3 = _dbLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheCleanUpDatabaseThread _stopWriteAndCleanUpThreadRunLoop];
  }

  CFRunLoopStop(self->_threadRunLoop);
}

- (void)_threadMain
{
  memset(&context, 0, sizeof(context));
  v3 = _dbLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheCleanUpDatabaseThread stop];
  }

  [(NSConditionLock *)self->_threadLock lock];
  v4 = CFRunLoopSourceCreate(0, 0, &context);
  Current = CFRunLoopGetCurrent();
  self->_threadRunLoop = Current;
  v6 = *MEMORY[0x277CBF058];
  CFRunLoopAddSource(Current, v4, *MEMORY[0x277CBF058]);
  CFRelease(v4);
  v7 = _dbLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheCleanUpDatabaseThread _threadMain];
  }

  while (self->_currentMode)
  {
    v8 = objc_autoreleasePoolPush();
    if (self->_diskCacheCleanupDone || self->_currentMode != 1)
    {
      v11 = _dbLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(QLCacheCleanUpDatabaseThread *)&v17 _threadMain];
      }

      [(NSConditionLock *)self->_threadLock unlockWithCondition:0];
      CFRunLoopRunInMode(v6, 100000.0, 0);
      v10 = _dbLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(QLCacheCleanUpDatabaseThread *)&v15 _threadMain];
      }
    }

    else
    {
      v9 = _dbLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(QLCacheCleanUpDatabaseThread *)&v21 _threadMain];
      }

      [(NSConditionLock *)self->_threadLock unlockWithCondition:1];
      [(QLCacheCleanUpDatabaseThread *)self _writeAndCleanUp];
      v10 = _dbLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(QLCacheCleanUpDatabaseThread *)&v19 _threadMain];
      }
    }

    [(NSConditionLock *)self->_threadLock lock];
    objc_autoreleasePoolPop(v8);
  }

  thread = self->_thread;
  self->_thread = 0;

  self->_threadRunLoop = 0;
  v13 = _dbLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheCleanUpDatabaseThread stop];
  }

  [(NSConditionLock *)self->_threadLock unlockWithCondition:0];
  v14 = _dbLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheCleanUpDatabaseThread _threadMain];
  }
}

- (void)_writeAndCleanUp
{
  diskCache = [(_QLCacheThread *)self->_cacheThread diskCache];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__QLCacheCleanUpDatabaseThread__writeAndCleanUp__block_invoke;
  v7[3] = &unk_279ADDB60;
  v7[4] = self;
  v4 = [diskCache doWriting:v7];

  if ((v4 & 1) == 0)
  {
    v5 = _dbLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [QLCacheCleanUpDatabaseThread _writeAndCleanUp];
    }

    memoryCache = [(_QLCacheThread *)self->_cacheThread memoryCache];
    [memoryCache reset];

    self->_diskCacheCleanupDone = 1;
    [(_QLCacheThread *)self->_cacheThread _cleanUpDatabaseDone];
  }
}

- (BOOL)_updateHitCount
{
  v3 = self->_thumbnailsHit;
  objc_sync_enter(v3);
  allKeys = [(NSMutableDictionary *)self->_thumbnailsHit allKeys];
  v5 = [allKeys count];
  if (v5)
  {
    v6 = [allKeys objectAtIndex:0];
    diskCache = [(_QLCacheThread *)self->_cacheThread diskCache];
    v8 = [(NSMutableDictionary *)self->_thumbnailsHit objectForKey:v6];
    [diskCache updateHitCount:v8 forFileIdentifier:v6];

    [(NSMutableDictionary *)self->_thumbnailsHit removeObjectForKey:v6];
  }

  objc_sync_exit(v3);
  return v5 != 0;
}

uint64_t __48__QLCacheCleanUpDatabaseThread__writeAndCleanUp__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = _dbLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __48__QLCacheCleanUpDatabaseThread__writeAndCleanUp__block_invoke_cold_1();
  }

  if ([*(a1 + 32) currentMode] == 1 && (objc_msgSend(*(a1 + 32), "diskCacheCleanupDone") & 1) == 0)
  {
    *&v3 = 134218242;
    v25 = v3;
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [*(a1 + 32) cacheThread];
      v9 = [v8 memoryCache];
      v10 = [v9 thumbnailDataToSaveWithBatch:20];

      v11 = _dbLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v10 count];
        v13 = [*(a1 + 32) cacheThread];
        v14 = [v13 memoryCache];
        *buf = v25;
        v27 = v12;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_2615D3000, v11, OS_LOG_TYPE_INFO, "Writing %lu thumbnails from %@", buf, 0x16u);
      }

      v15 = *(a1 + 32);
      if (v10)
      {
        v16 = [v15 cacheThread];
        v17 = [v16 diskCache];
        [v17 writeThumbnailDataBatch:v10];

        v18 = [*(a1 + 32) cacheThread];
        v19 = [v18 memoryCache];
        [v19 thumbnailDataBatchSaved:v10];

        v4 = 1;
      }

      else
      {
        LODWORD(v4) = [v15 _updateHitCount];
        v20 = [*(a1 + 32) cacheThread];
        v21 = [v20 diskCache];
        v22 = [v21 cleanup];

        if (v22)
        {
          v4 = 1;
        }

        else
        {
          v4 = v4;
        }

        if ([*(a1 + 32) shouldRemoveThumbnailsForDeletedFiles])
        {
          v23 = [*(a1 + 32) cacheThread];
          v24 = [v23 diskCache];
          if ([v24 cleanupDeletedFiles])
          {
            v4 = 1;
          }

          else
          {
            v4 = v4;
          }
        }

        [*(a1 + 32) setDiskCacheCleanupDone:1];
        v18 = [*(a1 + 32) cacheThread];
        [v18 _cleanUpDatabaseDone];
      }

      objc_autoreleasePoolPop(v7);
    }

    while ([*(a1 + 32) currentMode] == 1 && (objc_msgSend(*(a1 + 32), "diskCacheCleanupDone") & 1) == 0);
  }

  else
  {
    v4 = 0;
  }

  v5 = _dbLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __48__QLCacheCleanUpDatabaseThread__writeAndCleanUp__block_invoke_cold_2();
  }

  return v4;
}

- (unint64_t)hitToSaveCount
{
  v3 = self->_thumbnailsHit;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_thumbnailsHit count];
  objc_sync_exit(v3);

  return v4;
}

- (void)startCleanUp
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_2615D3000, a2, OS_LOG_TYPE_DEBUG, "start thread %@", &v3, 0xCu);
}

- (QLCacheCleanUpDatabaseThread)initWithCacheThread:(id)thread
{
  threadCopy = thread;
  v6 = [(QLCacheCleanUpDatabaseThread *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cacheThread, thread);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    thumbnailsHit = v7->_thumbnailsHit;
    v7->_thumbnailsHit = v8;

    v7->_currentMode = 0;
    v10 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    threadLock = v7->_threadLock;
    v7->_threadLock = v10;
  }

  return v7;
}

- (void)dealloc
{
  v3 = _dbLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheCleanUpDatabaseThread dealloc];
  }

  v4.receiver = self;
  v4.super_class = QLCacheCleanUpDatabaseThread;
  [(QLCacheCleanUpDatabaseThread *)&v4 dealloc];
}

- (void)stop
{
  v3 = _dbLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheCleanUpDatabaseThread stop];
  }

  v4 = _dbLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheCleanUpDatabaseThread stop];
  }

  [(NSConditionLock *)self->_threadLock lock];
  self->_currentMode = 0;
  v5 = _dbLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheCleanUpDatabaseThread stop];
  }

  [(NSConditionLock *)self->_threadLock unlock];
  v6 = _dbLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheCleanUpDatabaseThread stop];
  }

  [(NSConditionLock *)self->_threadLock lockWhenCondition:0];
  while (self->_thread)
  {
    v7 = _dbLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(QLCacheCleanUpDatabaseThread *)&v15 stop];
    }

    [(QLCacheCleanUpDatabaseThread *)self performSelector:sel__stopWriteAndCleanUpThreadRunLoop onThread:self->_thread withObject:0 waitUntilDone:0];
    v8 = _dbLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(QLCacheCleanUpDatabaseThread *)&v13 stop];
    }

    [(NSConditionLock *)self->_threadLock unlockWithCondition:1];
    v9 = _dbLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(QLCacheCleanUpDatabaseThread *)&v11 stop];
    }

    [(NSConditionLock *)self->_threadLock lockWhenCondition:0];
  }

  v10 = _dbLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheCleanUpDatabaseThread stop];
  }

  [(NSConditionLock *)self->_threadLock unlockWithCondition:0];
}

- (void)addHitWithThumbnailData:(id)data
{
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = self->_thumbnailsHit;
  objc_sync_enter(v5);
  v6 = [QLCachedThumbnailDescriptor alloc];
  [dataCopy size];
  v8 = v7;
  iconMode = [dataCopy iconMode];
  badgeType = [dataCopy badgeType];
  externalGeneratorDataHash = [dataCopy externalGeneratorDataHash];
  LODWORD(v12) = v8;
  v13 = [(QLCachedThumbnailDescriptor *)v6 initWithSize:iconMode iconMode:badgeType badgeType:externalGeneratorDataHash externalGeneratorDataHash:v12];
  v14 = _dbLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    fileIdentifier = [dataCopy fileIdentifier];
    [(QLCacheCleanUpDatabaseThread *)fileIdentifier addHitWithThumbnailData:v25, v14];
  }

  thumbnailsHit = self->_thumbnailsHit;
  fileIdentifier2 = [dataCopy fileIdentifier];
  v18 = [(NSMutableDictionary *)thumbnailsHit objectForKey:fileIdentifier2];

  if (!v18)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v19 = self->_thumbnailsHit;
    fileIdentifier3 = [dataCopy fileIdentifier];
    [(NSMutableDictionary *)v19 setObject:v18 forKey:fileIdentifier3];
  }

  v21 = [v18 objectForKey:v13];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 unsignedIntValue] + 1;
  }

  else
  {
    v23 = 1;
  }

  v24 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v23];

  [v18 setObject:v24 forKey:v13];
  objc_sync_exit(v5);
}

- (void)cleanUpForReset
{
  [(NSConditionLock *)self->_threadLock lockWhenCondition:0];
  diskCache = [(_QLCacheThread *)self->_cacheThread diskCache];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__QLCacheCleanUpDatabaseThread_cleanUpForReset__block_invoke;
  v8[3] = &unk_279ADDB60;
  v8[4] = self;
  v4 = [diskCache doWriting:v8];

  if ((v4 & 1) == 0)
  {
    memoryCache = [(_QLCacheThread *)self->_cacheThread memoryCache];
    [memoryCache reset];

    thumbnailsHit = [(QLCacheCleanUpDatabaseThread *)self thumbnailsHit];
    objc_sync_enter(thumbnailsHit);
    thumbnailsHit2 = [(QLCacheCleanUpDatabaseThread *)self thumbnailsHit];
    [thumbnailsHit2 removeAllObjects];

    objc_sync_exit(thumbnailsHit);
  }

  [(NSConditionLock *)self->_threadLock unlock];
}

BOOL __47__QLCacheCleanUpDatabaseThread_cleanUpForReset__block_invoke(uint64_t a1)
{
  v2 = _dbLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __47__QLCacheCleanUpDatabaseThread_cleanUpForReset__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) cacheThread];
  v4 = [v3 memoryCache];
  v5 = [v4 thumbnailDataToSaveWithBatch:0];

  v6 = _dbLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __47__QLCacheCleanUpDatabaseThread_cleanUpForReset__block_invoke_cold_2(v5, v6);
  }

  if (v5)
  {
    v7 = [*(a1 + 32) cacheThread];
    v8 = [v7 diskCache];
    [v8 discardThumbnailDataBatchForReset:v5];

    v9 = [*(a1 + 32) cacheThread];
    v10 = [v9 memoryCache];
    [v10 thumbnailDataBatchSaved:v5];
  }

  v11 = [*(a1 + 32) thumbnailsHit];
  objc_sync_enter(v11);
  v12 = [*(a1 + 32) thumbnailsHit];
  [v12 removeAllObjects];

  objc_sync_exit(v11);
  v13 = _dbLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __47__QLCacheCleanUpDatabaseThread_cleanUpForReset__block_invoke_cold_3();
  }

  return v5 != 0;
}

- (void)addHitWithThumbnailData:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_2615D3000, log, OS_LOG_TYPE_DEBUG, "add hit for %@", buf, 0xCu);
}

void __47__QLCacheCleanUpDatabaseThread_cleanUpForReset__block_invoke_cold_2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&dword_2615D3000, a2, OS_LOG_TYPE_DEBUG, "Discarding %lu thumbnails", &v3, 0xCu);
}

@end