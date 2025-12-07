@interface BWDeferredCaptureContainerManager
+ (id)sharedInstance;
- (BOOL)_removeContainerForCaptureRequestIdentifier:(void *)identifier array:;
- (BOOL)canDefer;
- (BWDeferredCaptureContainerManager)init;
- (__CVBuffer)newPixelBuffer:(id)buffer;
- (id)copyRemoteContainerForApplicationID:(id)d captureRequestIdentifier:(id)identifier err:(int *)err;
- (id)createCaptureContainerWithApplicationID:(id)d captureRequestIdentifier:(id)identifier err:(int *)err;
- (id)manifestsForApplicationID:(id)d err:(int *)err;
- (int)abortContainer:(id)container error:(int)error;
- (int)addBufferPool:(id)pool;
- (int)addCaptureContainer:(id)container;
- (int)commitContainer:(id)container;
- (int)containerWaitForFlush:(id)flush;
- (int)deleteContainerForApplicationID:(id)d captureRequestIdentifier:(id)identifier;
- (int)queryContainerStatusForApplicationID:(id)d captureRequestIdentifier:(id)identifier status:(int *)status;
- (int)releaseRemoteContainerForApplicationID:(id)d captureRequestIdentifier:(id)identifier;
- (int)removeBufferPool:(id)pool;
- (uint64_t)_enumerateManifestsForApplicationID:(uint64_t)d manifestArray:(int)array deleteInvalidContainers:;
- (uint64_t)_flushContainer:(void *)container container:;
- (uint64_t)_handleExpiryTimer;
- (uint64_t)_queryLowDiskThresholds:(uint64_t *)thresholds veryLowDiskThresholdBytes:;
- (void)_containerForCaptureRequestIdentifier:(void *)identifier array:(uint64_t *)array index:;
- (void)_reportCoreAnalyticsDataWithError:(void *)error container:;
- (void)_rescheduleCacheExpiryTimer;
- (void)flush:(id)flush toMinimumCapacity:(unint64_t)capacity;
@end

@implementation BWDeferredCaptureContainerManager

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[BWDeferredCaptureContainerManager sharedInstance];
  }

  return sharedInstance_sharedInstance;
}

BWDeferredCaptureContainerManager *__51__BWDeferredCaptureContainerManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(BWDeferredCaptureContainerManager);
  sharedInstance_sharedInstance = result;
  return result;
}

- (BWDeferredCaptureContainerManager)init
{
  v5.receiver = self;
  v5.super_class = BWDeferredCaptureContainerManager;
  v2 = [(BWDeferredContainerManagerBase *)&v5 initWithQueuePriority:14];
  v3 = v2;
  if (v2)
  {
    *(v2 + 56) = 0;
    *(v2 + 57) = 10;
    *(v2 + 29) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 26));
    v3->_stagedContainers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_cachedContainers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_inflightContainers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_flushQueue = FigDispatchQueueCreateWithPriority();
    v3->_flushQueueBackground = FigDispatchQueueCreateWithPriority();
    v3->_pools = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(BWDeferredCaptureContainerManager *)v3 _queryLowDiskThresholds:0 veryLowDiskThresholdBytes:?];
  }

  return v3;
}

uint64_t __87__BWDeferredCaptureContainerManager__containerForCaptureRequestIdentifier_array_index___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 captureRequestIdentifier];

  return objc_msgSend_isEqualToString_(v2);
}

uint64_t __75__BWDeferredCaptureContainerManager__updateCacheEntryForContainer_release___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 cacheExpiryTime];
  if (v5 > [a3 cacheExpiryTime])
  {
    return 1;
  }

  v7 = [a2 cacheExpiryTime];
  if (v7 >= [a3 cacheExpiryTime])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (id)createCaptureContainerWithApplicationID:(id)d captureRequestIdentifier:(id)identifier err:(int *)err
{
  selfCopy = self;
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    self = kdebug_trace();
  }

  if (d && identifier)
  {
    v17 = 0;
    v16 = 0;
    v10 = [(BWDeferredContainerManagerBase *)selfCopy _containerURLForApplicationID:d captureRequestIdentifier:identifier processingContainer:0 exists:&v17 isDirectory:0 resolvedApplicationID:&v16];
    if ((v17 & 1) == 0)
    {
      v11 = v10;
      v12 = selfCopy->_cacheSize == 0;
      v13 = [BWDeferredCaptureContainer alloc];
      v14 = [(BWDeferredCaptureContainer *)v13 initWithApplicationID:v16 captureRequestIdentifier:identifier baseFolderURL:v11 flushBuffersUponCommit:v12 err:err];
      LODWORD(identifier) = 0;
      if (!err)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    identifier = 4294951161;
  }

  else
  {
    [BWDeferredCaptureContainerManager createCaptureContainerWithApplicationID:? captureRequestIdentifier:? err:?];
    identifier = 4294954516;
  }

  [(BWDeferredCaptureContainerManager *)selfCopy _reportCoreAnalyticsDataWithError:identifier container:0];
  v14 = 0;
  if (err)
  {
LABEL_7:
    *err = identifier;
  }

LABEL_8:
  if (*v9 == 1)
  {
    kdebug_trace();
  }

  return v14;
}

- (int)addCaptureContainer:(id)container
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v6 = pthread_rwlock_wrlock(&self->super._lock);
  if (container)
  {
    [(NSMutableArray *)self->_stagedContainers addObject:container];
    v7 = 0;
  }

  else
  {
    [BWDeferredCaptureContainerManager addCaptureContainer:v6];
    v7 = -12780;
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return v7;
}

- (int)commitContainer:(id)container
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (container)
  {
    if (self)
    {
      v6 = [(BWDeferredCaptureContainerManager *)self _containerForCaptureRequestIdentifier:container array:self->_stagedContainers index:0];
      if (v6)
      {
        v7 = v6;
        v8 = v6;
        [(BWDeferredCaptureContainerManager *)self _removeContainerForCaptureRequestIdentifier:container array:self->_stagedContainers];
        commit = [v7 commit];
        v11 = commit;
        if (commit || ([v7 valid:&v11], (commit = v11) != 0))
        {
          [(BWDeferredCaptureContainerManager *)self _reportCoreAnalyticsDataWithError:commit container:v7];
        }

        else if ([(NSMutableArray *)self->_cachedContainers count]>= self->_cacheSize)
        {
          [(BWDeferredCaptureContainerManager *)self commitContainer:v7];
        }

        else
        {
          [(BWDeferredCaptureContainerManager *)self _updateCacheEntryForContainer:v7 release:0];
        }

        goto LABEL_11;
      }
    }

    [BWDeferredCaptureContainerManager commitContainer:?];
  }

  else
  {
    [BWDeferredCaptureContainerManager commitContainer:?];
  }

  v7 = 0;
LABEL_11:
  pthread_rwlock_unlock(&self->super._lock);

  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return v11;
}

- (int)abortContainer:(id)container error:(int)error
{
  v4 = *&error;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v8 = pthread_rwlock_wrlock(&self->super._lock);
  if (!container)
  {
    [BWDeferredCaptureContainerManager abortContainer:v8 error:?];
LABEL_16:
    v14 = -12780;
    goto LABEL_11;
  }

  if (!self || (v8 = [(BWDeferredCaptureContainerManager *)self _containerForCaptureRequestIdentifier:container array:self->_stagedContainers index:0]) == 0)
  {
    [BWDeferredCaptureContainerManager abortContainer:v8 error:?];
    goto LABEL_16;
  }

  v9 = v8;
  abort = [v8 abort];
  v11 = abort;
  if (abort)
  {
    [BWDeferredCaptureContainerManager abortContainer:abort error:?];
  }

  [(BWDeferredCaptureContainerManager *)self _reportCoreAnalyticsDataWithError:v4 container:v9];
  applicationID = [v9 applicationID];
  [(BWDeferredCaptureContainerManager *)self _removeContainerForCaptureRequestIdentifier:container array:self->_stagedContainers];
  v16.receiver = self;
  v16.super_class = BWDeferredCaptureContainerManager;
  v13 = [(BWDeferredContainerManagerBase *)&v16 deleteContainerForApplicationID:applicationID captureRequestIdentifier:container];
  if ((v13 & 0xFFFFFFFB) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

LABEL_11:
  pthread_rwlock_unlock(&self->super._lock);
  if (*v7 == 1)
  {
    kdebug_trace();
  }

  return v14;
}

- (id)manifestsForApplicationID:(id)d err:(int *)err
{
  selfCopy = self;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    self = kdebug_trace();
  }

  if (d)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ((objc_msgSend_isEqualToString_(d) & 1) != 0 || objc_msgSend_isEqualToString_(d))
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Media/Deferred/CaptureContainers"];
      v11 = [defaultManager enumeratorAtURL:v10 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:5 errorHandler:0];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = -[BWDeferredCaptureContainerManager _enumerateManifestsForApplicationID:manifestArray:deleteInvalidContainers:](selfCopy, [*(*(&v20 + 1) + 8 * i) lastPathComponent], v8, 1);
          }

          v17 = v16;
          v13 = [v11 countByEnumeratingWithState:&v20 objects:v19 count:16];
        }

        while (v13);
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = [(BWDeferredCaptureContainerManager *)selfCopy _enumerateManifestsForApplicationID:d manifestArray:v8 deleteInvalidContainers:1];
    }
  }

  else
  {
    [BWDeferredCaptureContainerManager manifestsForApplicationID:? err:?];
    v8 = 0;
    v17 = -16134;
  }

  if (err)
  {
    *err = v17;
  }

  if (*v7 == 1)
  {
    kdebug_trace();
  }

  return v8;
}

- (id)copyRemoteContainerForApplicationID:(id)d captureRequestIdentifier:(id)identifier err:(int *)err
{
  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v13 = 0;
  pthread_rwlock_wrlock(&self->super._lock);
  if (self && (v9 = [(BWDeferredCaptureContainerManager *)self _containerForCaptureRequestIdentifier:identifier array:self->_cachedContainers index:0]) != 0)
  {
    v10 = v9;
    [(BWDeferredCaptureContainerManager *)self _updateCacheEntryForContainer:v9 release:0];
    v11 = [v10 copyXPCEncoding:&v13];
    if (!v11)
    {
      [BWDeferredCaptureContainerManager copyRemoteContainerForApplicationID:? captureRequestIdentifier:? err:?];
    }
  }

  else
  {
    [BWDeferredCaptureContainerManager copyRemoteContainerForApplicationID:? captureRequestIdentifier:? err:?];
    v11 = 0;
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (err)
  {
    *err = v13;
  }

  if (*v8 == 1)
  {
    kdebug_trace();
  }

  return v11;
}

- (int)releaseRemoteContainerForApplicationID:(id)d captureRequestIdentifier:(id)identifier
{
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v7 = pthread_rwlock_rdlock(&self->super._lock);
  if (!self || (v7 = [BWDeferredCaptureContainerManager releaseRemoteContainerForApplicationID:identifier captureRequestIdentifier:?], (v7 & 1) != 0))
  {
    [BWDeferredCaptureContainerManager releaseRemoteContainerForApplicationID:v7 captureRequestIdentifier:?];
    v8 = -16134;
  }

  else
  {
    v8 = 0;
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (*v6 == 1)
  {
    kdebug_trace();
  }

  return v8;
}

- (int)addBufferPool:(id)pool
{
  selfCopy = self;
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    self = kdebug_trace();
  }

  if (pool)
  {
    v6 = -[BWDeferredContainerPixelBufferPoolWrapper initWithVideoFormat:capacity:name:]([BWDeferredContainerPixelBufferPoolWrapper alloc], "initWithVideoFormat:capacity:name:", [pool videoFormat], objc_msgSend(pool, "capacity") * (selfCopy->_cacheSize + 1), objc_msgSend(pool, "name"));
    pthread_rwlock_wrlock(&selfCopy->super._lock);
    -[NSMutableDictionary setObject:forKeyedSubscript:](selfCopy->_pools, "setObject:forKeyedSubscript:", v6, [MEMORY[0x1E696B098] valueWithPointer:pool]);
  }

  else
  {
    [BWDeferredCaptureContainerManager addBufferPool:?];
  }

  pthread_rwlock_unlock(&selfCopy->super._lock);
  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return 0;
}

- (int)removeBufferPool:(id)pool
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v6 = pthread_rwlock_wrlock(&self->super._lock);
  if (pool)
  {
    -[NSMutableDictionary removeObjectForKey:](self->_pools, "removeObjectForKey:", [MEMORY[0x1E696B098] valueWithPointer:pool]);
  }

  else
  {
    [BWDeferredCaptureContainerManager removeBufferPool:v6];
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return 0;
}

- (__CVBuffer)newPixelBuffer:(id)buffer
{
  bufferCopy = buffer;
  if (!buffer)
  {
    [(BWDeferredCaptureContainerManager *)self newPixelBuffer:a2];
LABEL_7:
    newPixelBuffer = 0;
    goto LABEL_4;
  }

  pthread_rwlock_rdlock(&self->super._lock);
  bufferCopy = -[NSMutableDictionary objectForKeyedSubscript:](self->_pools, "objectForKeyedSubscript:", [MEMORY[0x1E696B098] valueWithPointer:bufferCopy]);
  v5 = bufferCopy;
  v6 = pthread_rwlock_unlock(&self->super._lock);
  if (!bufferCopy)
  {
    [BWDeferredCaptureContainerManager newPixelBuffer:v6];
    goto LABEL_7;
  }

  newPixelBuffer = [(BWDeferredContainerPixelBufferPoolWrapper *)bufferCopy newPixelBuffer];
LABEL_4:

  return newPixelBuffer;
}

- (void)flush:(id)flush toMinimumCapacity:(unint64_t)capacity
{
  if (flush)
  {
    pthread_rwlock_rdlock(&self->super._lock);
    v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_pools, "objectForKeyedSubscript:", [MEMORY[0x1E696B098] valueWithPointer:flush]);
    v7 = v9;
    pthread_rwlock_unlock(&self->super._lock);
    [v9 flushToMinimumCapacity:capacity];
    v8 = v9;
  }

  else
  {
    [(BWDeferredCaptureContainerManager *)self flush:a2 toMinimumCapacity:0, capacity];
    v8 = 0;
  }
}

- (uint64_t)_queryLowDiskThresholds:(uint64_t *)thresholds veryLowDiskThresholdBytes:
{
  if (!self)
  {
    return 0;
  }

  bzero(&v10, 0x200uLL);
  v9 = 0;
  fileSystemRepresentation = [(NSString *)NSHomeDirectory() fileSystemRepresentation];
  if (statfs(fileSystemRepresentation, &v10))
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  }

  else if (fsctl(v10.f_mntonname, 0x4004681CuLL, &v9 + 4, 0))
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  }

  else
  {
    if (!fsctl(v10.f_mntonname, 0x4004681BuLL, &v9, 0))
    {
      v6 = v10.f_bsize * HIDWORD(v9);
      v7 = (v9 * v10.f_bsize);
      if (!a2)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  }

  v7 = 524288000;
  v6 = 734003200;
  if (a2)
  {
LABEL_6:
    *a2 = v6;
  }

LABEL_7:
  if (thresholds)
  {
    *thresholds = v7;
  }

  return 0;
}

- (void)_containerForCaptureRequestIdentifier:(void *)identifier array:(uint64_t *)array index:
{
  if (result)
  {
    OUTLINED_FUNCTION_7_1();
    v9 = 3221225472;
    v10 = __87__BWDeferredCaptureContainerManager__containerForCaptureRequestIdentifier_array_index___block_invoke;
    v11 = &unk_1E7997330;
    v12 = v6;
    v7 = [identifier indexOfObjectPassingTest:v8];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      if (array)
      {
        *array = v7;
      }

      return [identifier objectAtIndexedSubscript:v7];
    }
  }

  return result;
}

- (BOOL)_removeContainerForCaptureRequestIdentifier:(void *)identifier array:
{
  if (!self)
  {
    return 0;
  }

  v7 = 0;
  v4 = [(BWDeferredCaptureContainerManager *)self _containerForCaptureRequestIdentifier:a2 array:identifier index:&v7];
  v5 = v4 != 0;
  if (v4)
  {
    [identifier removeObjectAtIndex:v7];
  }

  return v5;
}

- (uint64_t)_flushContainer:(void *)container container:
{
  if (self)
  {
    [container preflush];
    OUTLINED_FUNCTION_7_1();
    v9 = 3221225472;
    OUTLINED_FUNCTION_9_28();
    v10 = v6;
    v11 = &unk_1E7997358;
    containerCopy = container;
    selfCopy = self;
    v14 = 0;
    dispatch_async(a2, block);
  }

  return 0;
}

void __63__BWDeferredCaptureContainerManager__flushContainer_container___block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_13_23();
  if (v2)
  {
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v3 = [*(a1 + 32) captureRequestIdentifier];
  [*(a1 + 32) flush];
  [(BWDeferredCaptureContainerManager *)*(a1 + 40) _reportCoreAnalyticsDataWithError:*(a1 + 32) container:?];
  pthread_rwlock_wrlock((*(a1 + 40) + 8));
  [(BWDeferredCaptureContainerManager *)*(a1 + 40) _removeContainerForCaptureRequestIdentifier:v3 array:*(*(a1 + 40) + 248)];
  pthread_rwlock_unlock((*(a1 + 40) + 8));
  OUTLINED_FUNCTION_13_23();
  if (v2)
  {
    OUTLINED_FUNCTION_17_14();

    kdebug_trace();
  }
}

- (void)_reportCoreAnalyticsDataWithError:(void *)error container:
{
  if (result)
  {
    v5 = objc_alloc_init(BWDeferredCaptureAnalyticsPayload);
    [(BWDeferredCaptureAnalyticsPayload *)v5 setError:a2];
    if (error)
    {
      -[BWDeferredCaptureAnalyticsPayload setProcessingType:](v5, "setProcessingType:", [error processingType]);
      -[BWDeferredCaptureAnalyticsPayload setFileBacked:](v5, "setFileBacked:", [error cached] ^ 1);
      -[BWDeferredCaptureAnalyticsPayload setCommitDurationInMilliseconds:](v5, "setCommitDurationInMilliseconds:", [error commitDurationNS] / 0xF4240uLL);
      -[BWDeferredCaptureAnalyticsPayload setFlushDurationInMilliseconds:](v5, "setFlushDurationInMilliseconds:", [error flushDurationNS] / 0xF4240uLL);
    }

    v6 = +[BWCoreAnalyticsReporter sharedInstance];

    return [(BWCoreAnalyticsReporter *)v6 sendEvent:v5];
  }

  return result;
}

- (void)_rescheduleCacheExpiryTimer
{
  if (self)
  {
    OUTLINED_FUNCTION_13_23();
    if (v2)
    {
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_17_14();
      kdebug_trace();
    }

    if ([*(self + 256) count])
    {
      dispatch_source_set_timer(*(self + 232), [objc_msgSend(*(self + 256) "firstObject")], 0xFFFFFFFFFFFFFFFFLL, 0);
      OUTLINED_FUNCTION_8_7();
      v8 = 3221225472;
      v9 = __64__BWDeferredCaptureContainerManager__rescheduleCacheExpiryTimer__block_invoke;
      v10 = &unk_1E798F870;
      selfCopy = self;
      dispatch_source_set_event_handler(v3, &handler);
      dispatch_resume(*(self + 232));
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, handler, v8, v9, v10, selfCopy);
    }

    OUTLINED_FUNCTION_13_23();
    if (v2)
    {
      OUTLINED_FUNCTION_17_14();
      kdebug_trace();
    }
  }
}

- (uint64_t)_handleExpiryTimer
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18();
  if (v2)
  {
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  dispatch_suspend(*(self + 232));
  pthread_rwlock_wrlock((self + 8));
  if (![*(self + 256) count])
  {
    goto LABEL_8;
  }

  v3 = [*(self + 256) objectAtIndexedSubscript:0];
  if (v3)
  {
    v4 = v3;
    [*(self + 248) addObject:v3];
    [*(self + 256) removeObjectAtIndex:0];
    v5 = *(self + 272);
    [v4 preflush];
    OUTLINED_FUNCTION_8_7();
    v13 = 3221225472;
    OUTLINED_FUNCTION_9_28();
    v14 = v6;
    v15 = &unk_1E7997358;
    v16 = v4;
    selfCopy = self;
    v18 = 0;
    dispatch_async(v5, &block);
    [(BWDeferredCaptureContainerManager *)self _rescheduleCacheExpiryTimer];
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9, v10, v11, block, v13, v14, v15, v16);
  v7 = 4294951160;
LABEL_9:
  pthread_rwlock_unlock((self + 8));
  OUTLINED_FUNCTION_18();
  if (v2)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v7;
}

- (BOOL)canDefer
{
  bzero(&v5, 0x200uLL);
  fileSystemRepresentation = [(NSString *)NSHomeDirectory() fileSystemRepresentation];
  if (statfs(fileSystemRepresentation, &v5))
  {
    return 0;
  }

  if (v5.f_bavail * v5.f_bsize <= self->_cachedLowDiskThresholdBytes)
  {
    [(BWDeferredCaptureContainerManager *)self _reportCoreAnalyticsDataWithError:0 container:?];
    return 0;
  }

  return 1;
}

- (int)containerWaitForFlush:(id)flush
{
  pthread_rwlock_rdlock(&self->super._lock);
  if (self && (v4 = OUTLINED_FUNCTION_3_53(), (v7 = [(BWDeferredCaptureContainerManager *)v4 _containerForCaptureRequestIdentifier:v5 array:v6 index:0]) != 0))
  {
    waitForFlush = [v7 waitForFlush];
  }

  else
  {
    waitForFlush = 0;
  }

  pthread_rwlock_unlock(&self->super._lock);
  return waitForFlush;
}

- (uint64_t)_enumerateManifestsForApplicationID:(uint64_t)d manifestArray:(int)array deleteInvalidContainers:
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  v165[0] = 0;
  v70 = a2;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.applicationID == %@"];
  pthread_rwlock_wrlock((v7 + 8));
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v9 = [*(v7 + 256) filteredArrayUsingPredicate:v8];
  v10 = [v9 countByEnumeratingWithState:&v161 objects:v160 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v162;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v162 != v12)
        {
          objc_enumerationMutation(v9);
        }

        OUTLINED_FUNCTION_16_20([*(*(&v161 + 1) + 8 * i) manifest]);
      }

      v11 = [v9 countByEnumeratingWithState:&v161 objects:v160 count:16];
    }

    while (v11);
  }

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v14 = [*(v7 + 248) filteredArrayUsingPredicate:v8];
  v15 = [v14 countByEnumeratingWithState:&v156 objects:v155 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v157;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v157 != v17)
        {
          objc_enumerationMutation(v14);
        }

        OUTLINED_FUNCTION_16_20([*(*(&v156 + 1) + 8 * j) manifest]);
      }

      v16 = [v14 countByEnumeratingWithState:&v156 objects:v155 count:16];
    }

    while (v16);
  }

  pthread_rwlock_unlock((v7 + 8));
  v130 = @"/var/mobile/Media/Deferred/CaptureContainers";
  v131 = a2;
  v19 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v130, 2)}];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v21 = [defaultManager enumeratorAtURL:v19 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:5 errorHandler:0];
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  obj = v21;
  result = [v21 countByEnumeratingWithState:&v151 objects:v150 count:16];
  if (!result)
  {
    return result;
  }

  v23 = result;
  HIDWORD(v95) = array;
  v99 = v4;
  v24 = 0;
  HIDWORD(v103) = 0;
  v25 = *v152;
  *&v22 = 136316162;
  *v88 = v22;
  while (2)
  {
    v26 = 0;
    if (v24 <= 0x3FF)
    {
      v27 = 1023 - v24;
    }

    else
    {
      v27 = 0;
    }

    do
    {
      if (*v152 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v151 + 1) + 8 * v26);
      v29 = objc_autoreleasePoolPush();
      v30 = objc_alloc(MEMORY[0x1E696AFB0]);
      v31 = [v30 initWithUUIDString:{objc_msgSend(v28, "lastPathComponent")}];
      if (v31)
      {
        v30 = v31;
        pthread_rwlock_rdlock((v7 + 8));
        if (-[BWDeferredCaptureContainerManager _containerForCaptureRequestIdentifier:array:index:](v7, [v30 UUIDString], *(v7 + 240), 0) || -[BWDeferredCaptureContainerManager _containerForCaptureRequestIdentifier:array:index:](v7, objc_msgSend(v30, "UUIDString"), *(v7 + 248), 0))
        {
          pthread_rwlock_unlock((v7 + 8));
          goto LABEL_26;
        }

        pthread_rwlock_unlock((v7 + 8));
        v39 = [BWDeferredContainer manifestDictionaryForURL:v28 err:v165];
        if (!v165[0])
        {
          OUTLINED_FUNCTION_16_20(v39);
          goto LABEL_26;
        }

        LODWORD(v70) = v165[0];
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v70, v99, v78, v82, LODWORD(v88[0]), v88[1], v95, v99);
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v70, v74, v78, v82, LODWORD(v88[0]), v88[1], v95, v99);
        v165[0] = -16132;
      }

      if (HIDWORD(v96))
      {
        v47 = OUTLINED_FUNCTION_15_18(qword_1EB58E458, v40, v41, v42, v43, v44, v45, v46, v71, v75, v79, v83, v89, v92, v96, v100, v103, obj, v109, v112, v115, v118, v121, v124, v127, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, 0, 0);
        OUTLINED_FUNCTION_20_12(v47, v48, v49, v50, v51, v52, v53, v54, v72, v76, v80, v84, v86, v90, v93, v97, v101, v104, obja, v110, v113, v116, v119, v122, v125, v128, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, type, v149);
        OUTLINED_FUNCTION_17_17();
        if (v30)
        {
          [v28 path];
          LODWORD(v109) = v88[0];
          OUTLINED_FUNCTION_11_26();
          OUTLINED_FUNCTION_6_40();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_5_46();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v130 = 0;
        [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
        v63 = HIDWORD(v103);
        if (v130)
        {
          v63 = HIDWORD(v103) + 1;
        }

        HIDWORD(v103) = v63;
      }

      else
      {
        v55 = OUTLINED_FUNCTION_15_18(qword_1EB58E458, v40, v41, v42, v43, v44, v45, v46, v71, v75, v79, v83, v89, v92, v96, v100, v103, obj, v109, v112, v115, v118, v121, v124, v127, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, 0, 0);
        OUTLINED_FUNCTION_20_12(v55, v56, v57, v58, v59, v60, v61, v62, v73, v77, v81, v85, v87, v91, v94, v98, v102, v105, objb, v111, v114, v117, v120, v123, v126, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, type, v149);
        OUTLINED_FUNCTION_17_17();
        if (v30)
        {
          [v28 path];
          LODWORD(v109) = v88[0];
          OUTLINED_FUNCTION_11_26();
          OUTLINED_FUNCTION_6_40();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_5_46();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_26:
      if (v27 == v26)
      {
        v65 = OUTLINED_FUNCTION_15_18(qword_1EB58E458, v32, v33, v34, v35, v36, v37, v38, v70, v74, v78, v82, v88[0], v88[1], v95, v99, v103, obj, v109, v112, v115, v118, v121, v124, v127, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, 0, 0);
        v66 = v149;
        if (os_log_type_enabled(v65, type))
        {
          v69 = v66;
        }

        else
        {
          v69 = v66 & 0xFFFFFFFE;
        }

        if (v69)
        {
          OUTLINED_FUNCTION_21(v69, v67, &v130, v68, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_5_46();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        objc_autoreleasePoolPop(v29);
        goto LABEL_51;
      }

      ++v24;
      objc_autoreleasePoolPop(v29);
      ++v26;
    }

    while (v23 != v26);
    v64 = [obj countByEnumeratingWithState:&v151 objects:v150 count:16];
    v23 = v64;
    if (v64)
    {
      continue;
    }

    break;
  }

LABEL_51:
  if (HIDWORD(v103))
  {
    return 4294951157;
  }

  else
  {
    return v165[0];
  }
}

- (int)queryContainerStatusForApplicationID:(id)d captureRequestIdentifier:(id)identifier status:(int *)status
{
  OUTLINED_FUNCTION_10_27();
  if (v7)
  {
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (self)
  {
    v8 = OUTLINED_FUNCTION_23_11(256);
    if (v8)
    {
      [(BWDeferredCaptureContainerManager *)self _updateCacheEntryForContainer:v8 release:0];
      v12 = 0;
      LODWORD(v10) = 1;
      goto LABEL_11;
    }

    v9 = OUTLINED_FUNCTION_23_11(248);
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      v12 = [v10 waitForFlushWithTimeoutInSeconds:7];

      LODWORD(v10) = 0;
      goto LABEL_11;
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  v12 = 0;
LABEL_11:
  pthread_rwlock_unlock(&self->super._lock);
  if (status)
  {
    *status = v10;
  }

  OUTLINED_FUNCTION_10_27();
  if (v7)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v12;
}

- (int)deleteContainerForApplicationID:(id)d captureRequestIdentifier:(id)identifier
{
  OUTLINED_FUNCTION_19_2();
  if (v7)
  {
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (!d || !identifier)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_27;
  }

  if (!self)
  {
LABEL_27:
    LODWORD(v20) = 0;
    goto LABEL_28;
  }

  v8 = OUTLINED_FUNCTION_3_53();
  v11 = [(BWDeferredCaptureContainerManager *)v8 _containerForCaptureRequestIdentifier:v9 array:v10 index:0];
  if (v11)
  {
    v20 = v11;
    v22 = v11;
    v23 = OUTLINED_FUNCTION_3_53();
    [(BWDeferredCaptureContainerManager *)v23 _removeContainerForCaptureRequestIdentifier:v24 array:v25];
    goto LABEL_13;
  }

  v12 = OUTLINED_FUNCTION_3_53();
  v15 = [(BWDeferredCaptureContainerManager *)v12 _containerForCaptureRequestIdentifier:v13 array:v14 index:0];
  if (v15)
  {
    v20 = v15;
    v26 = v15;
    [(BWDeferredCaptureContainerManager *)self _updateCacheEntryForContainer:v20 release:1];
    goto LABEL_13;
  }

  v16 = OUTLINED_FUNCTION_3_53();
  v19 = [(BWDeferredCaptureContainerManager *)v16 _containerForCaptureRequestIdentifier:v17 array:v18 index:0];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
LABEL_13:
    waitForFlush = [v20 waitForFlush];

    LODWORD(v20) = 1;
    goto LABEL_14;
  }

LABEL_28:
  waitForFlush = 0;
LABEL_14:
  v32.receiver = self;
  v32.super_class = BWDeferredCaptureContainerManager;
  v28 = [(BWDeferredContainerManagerBase *)&v32 deleteContainerForApplicationID:d captureRequestIdentifier:identifier];
  if (v28 == 4)
  {
    v29 = v20;
  }

  else
  {
    v29 = 0;
  }

  if (!v28)
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = waitForFlush;
  }

  else
  {
    v30 = v28;
  }

  pthread_rwlock_unlock(&self->super._lock);
  OUTLINED_FUNCTION_19_2();
  if (v7)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v30;
}

- (uint64_t)releaseRemoteContainerForApplicationID:(void *)a1 captureRequestIdentifier:(uint64_t)a2 .cold.1(void **a1, uint64_t a2)
{
  v3 = [(BWDeferredCaptureContainerManager *)a1 _containerForCaptureRequestIdentifier:a2 array:a1[32] index:0];
  if (!v3)
  {
    return 1;
  }

  [(BWDeferredCaptureContainerManager *)a1 _updateCacheEntryForContainer:v3 release:0];
  return 0;
}

@end