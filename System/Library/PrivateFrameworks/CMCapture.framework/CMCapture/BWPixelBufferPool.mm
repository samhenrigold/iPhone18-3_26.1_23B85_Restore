@interface BWPixelBufferPool
+ (void)initialize;
- (BOOL)isPixelBufferAvailable;
- (BOOL)prefetch:(int)prefetch lastEmittedSurfaceID:(unsigned int)d;
- (BOOL)waitForAvailablePixelBuffer;
- (BWPixelBufferPool)initWithVideoFormat:(id)format capacity:(unint64_t)capacity name:(id)name clientProvidesPool:(BOOL)pool memoryPool:(id)memoryPool providesBackPressure:(BOOL)pressure reportSlowBackPressureAllocations:(BOOL)allocations;
- (BWPixelBufferPool)initWithVideoFormat:(id)format capacity:(unint64_t)capacity name:(id)name memoryPool:(id)pool additionalPixelBufferAttributes:(id)attributes providesBackPressure:(BOOL)pressure reportSlowBackPressureAllocations:(BOOL)allocations;
- (BWVideoFormat)videoFormat;
- (CVPixelBufferRef)_newPixelBuffer;
- (int)preallocate;
- (intptr_t)waitForAvailablePixelBuffer;
- (uint64_t)_ensurePool;
- (uint64_t)_waitForBackPressureSemaphoreIfNeededAndReportIfWaited:(uint64_t)waited;
- (void)dealloc;
- (void)flushToMinimumCapacity:(unint64_t)capacity;
- (void)preallocate;
- (void)preallocateWithCompletionHandler:(id)handler;
- (void)prefetchWithCompletionHandler:(id)handler;
- (void)setCVPixelBufferPool:(__CVPixelBufferPool *)pool attributes:(__CFDictionary *)attributes;
- (void)setCapacity:(unint64_t)capacity;
@end

@implementation BWPixelBufferPool

- (uint64_t)_ensurePool
{
  if (result)
  {
    v10 = result;
    if (*(result + 32) == 1)
    {
      if (*(result + 56))
      {
        return 0;
      }

      else
      {
        v16 = qword_1ED844568;

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFCE11, "<<<< BWPixelBufferPool >>>>", 0x1B1, v9, a7, a8, a9);
      }
    }

    else
    {
      os_unfair_lock_lock((result + 48));
      if (!*(v10 + 56))
      {
        v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v10 + 16)];
        [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6966160]];
        [v11 setObject:&unk_1F2242AC0 forKeyedSubscript:*MEMORY[0x1E6966158]];
        v13 = *(v10 + 24);
        if (v13)
        {
          [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6966170]];
        }

        pixelBufferAttributes = [*(v10 + 8) pixelBufferAttributes];
        if (*(v10 + 88) && ([*(v10 + 8) memoryPoolUseAllowed] & 1) != 0 || *(v10 + 40) || objc_msgSend(*(v10 + 8), "colorSpaceProperties"))
        {
          pixelBufferAttributes = [MEMORY[0x1E695DF90] dictionaryWithDictionary:pixelBufferAttributes];
          if (*(v10 + 40))
          {
            FigCFDictionaryAddEntriesToDictionaryWithRecursion();
          }

          if ([*(v10 + 8) colorSpaceProperties] && !FigCapturePixelFormatIsPackedBayerRaw(objc_msgSend(*(v10 + 8), "pixelFormat")))
          {
            v15 = +[BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:](BWVideoFormat, "pixelBufferAttachmentsForColorSpaceProperties:", [*(v10 + 8) colorSpaceProperties]);
            [pixelBufferAttributes setObject:v15 forKeyedSubscript:*MEMORY[0x1E6965C70]];
          }

          if ([*(v10 + 8) memoryPoolUseAllowed])
          {
            [*(v10 + 88) enableForPixelBufferAttributes:pixelBufferAttributes];
          }
        }

        *(v10 + 80) = CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], v11, pixelBufferAttributes, (v10 + 56));
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{*(v10 + 16), *MEMORY[0x1E6966150]}];
        *(v10 + 64) = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      }

      os_unfair_lock_unlock((v10 + 48));
      return *(v10 + 80);
    }
  }

  return result;
}

- (int)preallocate
{
  if (self->_clientProvidesPool)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  [(BWPixelBufferPool *)self preallocate];
  return v5;
}

- (CVPixelBufferRef)_newPixelBuffer
{
  if (result)
  {
    v8 = result;
    pixelBufferOut = 0;
    if ([(BWPixelBufferPool *)result _ensurePool:a2])
    {
      OUTLINED_FUNCTION_1_8();
      LODWORD(v13) = v11;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v13);
    }

    else
    {
      [(BWPixelBufferPool *)v8 _waitForBackPressureSemaphoreIfNeededAndReportIfWaited:?];
      v9 = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(*MEMORY[0x1E695E480], *(v8 + 7), *(v8 + 8), &pixelBufferOut);
      if (*(v8 + 96) == 1)
      {
        v10 = *(v8 + 13);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __36__BWPixelBufferPool__newPixelBuffer__block_invoke;
        v14[3] = &unk_1E798F870;
        v14[4] = v10;
        [BWIOSurfaceTracking trackPixelBuffer:pixelBufferOut surfaceUseCountIsZeroHandler:v14];
      }

      if (v9)
      {
        OUTLINED_FUNCTION_1_8();
        LODWORD(v13) = v9;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v13);
      }
    }

    return pixelBufferOut;
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    kBWPixelBufferPoolBackPressureWaitTimeoutInMilliSeconds = 1;
  }
}

- (BWPixelBufferPool)initWithVideoFormat:(id)format capacity:(unint64_t)capacity name:(id)name clientProvidesPool:(BOOL)pool memoryPool:(id)memoryPool providesBackPressure:(BOOL)pressure reportSlowBackPressureAllocations:(BOOL)allocations
{
  if (!format)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"no format provided" userInfo:0]);
  }

  pressureCopy = pressure;
  v16.receiver = self;
  v16.super_class = BWPixelBufferPool;
  v14 = [(BWPixelBufferPool *)&v16 init:format];
  if (v14)
  {
    v14->_videoFormat = format;
    v14->_capacity = capacity;
    v14->_name = 0;
    v14->_pixelBufferPoolConfigurationLock._os_unfair_lock_opaque = 0;
    v14->_clientProvidesPool = pool;
    v14->_memoryPool = memoryPool;
    v14->_providesBackPressure = pressureCopy;
    v14->_reportSlowBackPressureAllocations = allocations;
    if (pressureCopy)
    {
      v14->_backPressureSemaphore = dispatch_semaphore_create(capacity);
    }
  }

  return v14;
}

- (BWPixelBufferPool)initWithVideoFormat:(id)format capacity:(unint64_t)capacity name:(id)name memoryPool:(id)pool additionalPixelBufferAttributes:(id)attributes providesBackPressure:(BOOL)pressure reportSlowBackPressureAllocations:(BOOL)allocations
{
  LOBYTE(v12) = allocations;
  v10 = [(BWPixelBufferPool *)self initWithVideoFormat:format capacity:capacity name:name clientProvidesPool:0 memoryPool:pool providesBackPressure:pressure reportSlowBackPressureAllocations:v12];
  if (v10)
  {
    v10->_additionalPixelBufferAttributes = [attributes copy];
  }

  return v10;
}

- (void)dealloc
{
  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CFRelease(pixelBufferPool);
  }

  v4.receiver = self;
  v4.super_class = BWPixelBufferPool;
  [(BWPixelBufferPool *)&v4 dealloc];
}

- (void)setCVPixelBufferPool:(__CVPixelBufferPool *)pool attributes:(__CFDictionary *)attributes
{
  if (!pool)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"Can't have NULL pool";
    goto LABEL_22;
  }

  if (!attributes)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"Can't have NULL attributes";
    goto LABEL_22;
  }

  if (!self->_clientProvidesPool)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"Can't call when clientProvidesPool = NO";
LABEL_22:
    objc_exception_throw([v15 exceptionWithName:v16 reason:v17 userInfo:0]);
  }

  os_unfair_lock_lock(&self->_pixelBufferPoolConfigurationLock);
  if (!self->_pixelBufferPool)
  {
    self->_pixelBufferPool = CFRetain(pool);
    v7 = CFRetain(attributes);
    self->_pixelBufferPoolAuxAttributes = v7;
    v8 = [(NSDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E6966150]];
    if (v8)
    {
      [v8 intValue];
    }

    if ([(BWVideoFormat *)self->_videoFormat colorSpaceProperties])
    {
      v9 = [(__CFDictionary *)CVPixelBufferPoolGetPixelBufferAttributes(pool) objectForKeyedSubscript:*MEMORY[0x1E6965C70]];
      if (v9)
      {
        v10 = v9;
        v11 = *MEMORY[0x1E6965D88];
        v18[0] = *MEMORY[0x1E6965F98];
        v18[1] = v11;
        v18[2] = *MEMORY[0x1E6965F30];
        v12 = [BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:[(BWVideoFormat *)self->_videoFormat colorSpaceProperties]];
        v13 = 0;
        do
        {
          if ([objc_msgSend(v10 objectForKeyedSubscript:{v18[v13]), "isEqual:", objc_msgSend(v12, "objectForKeyedSubscript:", v18[v13])}])
          {
            v14 = v13 == 2;
          }

          else
          {
            v14 = 1;
          }

          ++v13;
        }

        while (!v14);
      }
    }
  }

  os_unfair_lock_unlock(&self->_pixelBufferPoolConfigurationLock);
}

- (void)preallocateWithCompletionHandler:(id)handler
{
  if (!self->_clientProvidesPool)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__BWPixelBufferPool_preallocateWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E7990390;
    v6[4] = self;
    v6[5] = handler;
    dispatch_async(global_queue, v6);
  }
}

void __54__BWPixelBufferPool_preallocateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v10 = [(BWPixelBufferPool *)*(a1 + 32) _ensurePool:v3];
  if (!v10)
  {
    v10 = CVPixelBufferPoolPreAllocate();
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v10);
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)prefetch:(int)prefetch lastEmittedSurfaceID:(unsigned int)d
{
  if (d)
  {
    -[NSMutableSet addObject:](self->_prefetchedSurfaceIDs, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&d]);
  }

  capacity = self->_capacity;
  if ((capacity - [(NSMutableSet *)self->_prefetchedSurfaceIDs count]) <= prefetch)
  {
    v8 = self->_capacity;
    prefetch = v8 - [(NSMutableSet *)self->_prefetchedSurfaceIDs count];
  }

  if (prefetch < 1)
  {
    return prefetch < 1;
  }

  v31 = &v30;
  v10 = 8 * prefetch;
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFF0));
  if (v10 >= 0x200)
  {
    v12 = 512;
  }

  else
  {
    v12 = 8 * prefetch;
  }

  bzero(&v30 - ((v10 + 15) & 0xFFFFFFFF0), v12);
  v20 = [(BWPixelBufferPool *)self _ensurePool:v13];
  if (v20)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v4, v30, v31, v32, v33, v34, v35);
    return 0;
  }

  else
  {
    prefetchCopy = prefetch;
    v22 = [(NSDictionary *)self->_pixelBufferPoolAuxAttributes mutableCopy];
    v23 = *MEMORY[0x1E6966178];
    v33 = v22;
    [v22 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v23];
    bzero(&v30 - ((v10 + 15) & 0xFFFFFFFF0), 8 * prefetch);
    v32 = *MEMORY[0x1E695E480];
    prefetchCopy2 = prefetch;
    v25 = (&v30 - ((v10 + 15) & 0xFFFFFFFF0));
    do
    {
      PixelBufferWithAuxAttributes = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(v32, self->_pixelBufferPool, v33, v25);
      if (PixelBufferWithAuxAttributes)
      {
        break;
      }

      if (!self->_prefetchedSurfaceIDs)
      {
        self->_prefetchedSurfaceIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
      }

      v27 = *v25++;
      IOSurface = CVPixelBufferGetIOSurface(v27);
      ID = IOSurfaceGetID(IOSurface);
      -[NSMutableSet containsObject:](self->_prefetchedSurfaceIDs, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:ID]);
      -[NSMutableSet addObject:](self->_prefetchedSurfaceIDs, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:ID]);
      --prefetchCopy2;
    }

    while (prefetchCopy2);
    do
    {
      if (*v11)
      {
        CVPixelBufferRelease(*v11);
      }

      ++v11;
      --prefetchCopy;
    }

    while (prefetchCopy);
    if (PixelBufferWithAuxAttributes != -6689 && PixelBufferWithAuxAttributes != -6662)
    {
      return prefetch < 1;
    }

    return 1;
  }
}

- (void)prefetchWithCompletionHandler:(id)handler
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__BWPixelBufferPool_prefetchWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7990390;
  v6[4] = self;
  v6[5] = handler;
  dispatch_async(global_queue, v6);
}

- (void)flushToMinimumCapacity:(unint64_t)capacity
{
  if (self->_pixelBufferPool && self->_capacity > capacity)
  {
    CVPixelBufferPoolSetMinBufferCount();

    CVPixelBufferPoolSetMinBufferCount();
  }
}

- (BOOL)waitForAvailablePixelBuffer
{
  if (!self->_providesBackPressure)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Not callable when initialized with _providesBackPressure=NO" userInfo:0]);
  }

  [(BWPixelBufferPool *)self waitForAvailablePixelBuffer];
  return v3;
}

- (BOOL)isPixelBufferAvailable
{
  if (!self->_providesBackPressure)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Not callable when initialized with _providesBackPressure=NO" userInfo:0]);
  }

  v3 = dispatch_semaphore_wait(self->_backPressureSemaphore, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_backPressureSemaphore);
  }

  return v3 == 0;
}

- (void)setCapacity:(unint64_t)capacity
{
  if (self->_clientProvidesPool)
  {
    self->_capacity = capacity;
  }

  else
  {
    [(BWPixelBufferPool *)self setCapacity:capacity, capacity, v3, v4, v5, v6, v7];
  }
}

- (BWVideoFormat)videoFormat
{
  v2 = self->_videoFormat;

  return v2;
}

void __51__BWPixelBufferPool_prefetchWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v10 = [(BWPixelBufferPool *)*(a1 + 32) _ensurePool:v3];
  if (!v10)
  {
    v10 = CVPixelBufferPoolPrefetchPages();
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v10);
  }

  objc_autoreleasePoolPop(v2);
}

- (uint64_t)_waitForBackPressureSemaphoreIfNeededAndReportIfWaited:(uint64_t)waited
{
  if (waited && *(waited + 96) == 1)
  {
    v3 = *(waited + 104);
    if (v3)
    {
      if (a2)
      {
        atomic_fetch_add((waited + 112), 1uLL);
        if (dispatch_semaphore_wait(*(waited + 104), 0))
        {
          v4 = *(waited + 104);
          v5 = kBWPixelBufferPoolBackPressureWaitTimeoutInMilliSeconds ? 1000000000 : 0;
          v6 = dispatch_time(0, v5);
          if (dispatch_semaphore_wait(v4, v6))
          {
            v7 = 0;
            do
            {
              v8 = kBWPixelBufferPoolBackPressureWaitTimeoutInMilliSeconds;
              if (kBWPixelBufferPoolBackPressureWaitTimeoutInMilliSeconds)
              {
                v9 = 1000;
              }

              else
              {
                v9 = 0;
              }

              v7 += v9;
              if (dword_1ED844570)
              {
                v10 = OUTLINED_FUNCTION_1_28();
                if (os_log_type_enabled(v10, v25))
                {
                  v11 = v26;
                }

                else
                {
                  v11 = v26 & 0xFFFFFFFE;
                }

                if (v11)
                {
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_0_25();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v8 = kBWPixelBufferPoolBackPressureWaitTimeoutInMilliSeconds;
              }

              v12 = *(waited + 104);
              if (v8)
              {
                v13 = 1000000000;
              }

              else
              {
                v13 = 0;
              }

              v14 = dispatch_time(0, v13);
            }

            while (dispatch_semaphore_wait(v12, v14));
            if (dword_1ED844570)
            {
              v15 = OUTLINED_FUNCTION_1_28();
              if (os_log_type_enabled(v15, v25))
              {
                v16 = v26;
              }

              else
              {
                v16 = v26 & 0xFFFFFFFE;
              }

              if (v16)
              {
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_0_25();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }

      else
      {
        dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  return 0;
}

- (void)preallocate
{
  v4 = objc_autoreleasePoolPush();
  v12 = [(BWPixelBufferPool *)self _ensurePool:v5];
  if (v12)
  {
    v13 = v12;
    OUTLINED_FUNCTION_1_8();
    LODWORD(v16) = v14;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16);
  }

  else
  {
    v13 = CVPixelBufferPoolPreAllocate();
    if (v13)
    {
      OUTLINED_FUNCTION_1_8();
      LODWORD(v16) = v13;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16);
    }
  }

  *a2 = v13;

  objc_autoreleasePoolPop(v4);
}

- (intptr_t)waitForAvailablePixelBuffer
{
  *a2 = [(BWPixelBufferPool *)self _waitForBackPressureSemaphoreIfNeededAndReportIfWaited:?];
  v3 = *(self + 104);

  return dispatch_semaphore_signal(v3);
}

- (void)setCapacity:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  [(BWPixelBufferPool *)a1 _ensurePool:a2];
  result = CVPixelBufferPoolSetMinBufferCount();
  if (!result)
  {
    *(a1 + 16) = a2;
    v11 = [*(a1 + 64) mutableCopy];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6966150]];

    result = [v11 copy];
    *(a1 + 64) = result;
  }

  return result;
}

@end