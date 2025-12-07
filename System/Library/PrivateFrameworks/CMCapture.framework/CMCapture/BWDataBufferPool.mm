@interface BWDataBufferPool
- (BWDataBufferBackedFormat)format;
- (BWDataBufferPool)initWithFormat:(id)format capacity:(unint64_t)capacity name:(id)name clientProvidesPool:(BOOL)pool;
- (uint64_t)_ensurePool;
- (uint64_t)_newDataBuffer;
- (void)dealloc;
- (void)flushToMinimumCapacity:(unint64_t)capacity;
- (void)prefetchWithCompletionHandler:(id)handler;
- (void)setCVDataBufferPool:(__CVDataBufferPool *)pool attributes:(__CFDictionary *)attributes;
- (void)setCapacity:(unint64_t)capacity;
@end

@implementation BWDataBufferPool

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
        emitter = fig_log_get_emitter();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE11, "<<<< BWDataBufferPool >>>>", 0xC0, v9, v16, v17, a9);
      }
    }

    else
    {
      os_unfair_lock_lock((result + 48));
      if (!*(v10 + 56))
      {
        v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v10 + 16)];
        [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6965CA8]];
        [v11 setObject:&unk_1F22439C0 forKeyedSubscript:*MEMORY[0x1E6965CA0]];
        v13 = *(v10 + 24);
        if (v13)
        {
          [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6965CB0]];
        }

        dataBufferAttributes = [*(v10 + 8) dataBufferAttributes];
        if (*(v10 + 40))
        {
          [MEMORY[0x1E695DF90] dictionaryWithDictionary:dataBufferAttributes];
          FigCFDictionaryAddEntriesToDictionaryWithRecursion();
        }

        [*(v10 + 8) dataFormat];
        [*(v10 + 8) dataBufferSize];
        *(v10 + 72) = CVDataBufferPoolCreate();
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{*(v10 + 16), *MEMORY[0x1E6965C98]}];
        *(v10 + 64) = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      }

      os_unfair_lock_unlock((v10 + 48));
      return *(v10 + 72);
    }
  }

  return result;
}

- (BWDataBufferPool)initWithFormat:(id)format capacity:(unint64_t)capacity name:(id)name clientProvidesPool:(BOOL)pool
{
  if (!format)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"no format provided" userInfo:0]);
  }

  v11.receiver = self;
  v11.super_class = BWDataBufferPool;
  v9 = [(BWDataBufferPool *)&v11 init:format];
  if (v9)
  {
    v9->_format = format;
    v9->_capacity = capacity;
    v9->_name = 0;
    v9->_dataBufferPoolConfigurationLock._os_unfair_lock_opaque = 0;
    v9->_clientProvidesPool = pool;
  }

  return v9;
}

- (void)dealloc
{
  dataBufferPool = self->_dataBufferPool;
  if (dataBufferPool)
  {
    CFRelease(dataBufferPool);
  }

  v4.receiver = self;
  v4.super_class = BWDataBufferPool;
  [(BWDataBufferPool *)&v4 dealloc];
}

- (void)setCVDataBufferPool:(__CVDataBufferPool *)pool attributes:(__CFDictionary *)attributes
{
  if (!pool)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Can't have NULL pool";
    goto LABEL_13;
  }

  if (!attributes)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Can't have NULL attributes";
    goto LABEL_13;
  }

  if (!self->_clientProvidesPool)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Can't call when clientProvidesPool = NO";
LABEL_13:
    objc_exception_throw([v9 exceptionWithName:v10 reason:v11 userInfo:0]);
  }

  os_unfair_lock_lock(&self->_dataBufferPoolConfigurationLock);
  if (!self->_dataBufferPool)
  {
    self->_dataBufferPool = CFRetain(pool);
    v7 = CFRetain(attributes);
    self->_dataBufferPoolAuxAttributes = v7;
    v8 = [(NSDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E6965C98]];
    if (v8)
    {
      [v8 intValue];
    }
  }

  os_unfair_lock_unlock(&self->_dataBufferPoolConfigurationLock);
}

- (void)prefetchWithCompletionHandler:(id)handler
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__BWDataBufferPool_prefetchWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7990390;
  v6[4] = self;
  v6[5] = handler;
  dispatch_async(global_queue, v6);
}

void __50__BWDataBufferPool_prefetchWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v10 = [(BWDataBufferPool *)*(a1 + 32) _ensurePool:v3];
  if (!v10)
  {
    v10 = CVDataBufferPoolPrefetchPages();
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v10);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)flushToMinimumCapacity:(unint64_t)capacity
{
  if (self->_dataBufferPool && self->_capacity > capacity)
  {
    CVDataBufferPoolSetMinBufferCount();

    CVDataBufferPoolSetMinBufferCount();
  }
}

- (void)setCapacity:(unint64_t)capacity
{
  if (self->_clientProvidesPool || [(BWDataBufferPool *)self setCapacity:capacity, capacity, v3, v4, v5, v6, v7])
  {
    self->_capacity = capacity;
  }
}

- (BWDataBufferBackedFormat)format
{
  v2 = self->_format;

  return v2;
}

- (uint64_t)_newDataBuffer
{
  if (result)
  {
    if ([(BWDataBufferPool *)result _ensurePool:a2])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_1();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else if (CVDataBufferPoolCreateDataBuffer())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_1();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    return 0;
  }

  return result;
}

@end