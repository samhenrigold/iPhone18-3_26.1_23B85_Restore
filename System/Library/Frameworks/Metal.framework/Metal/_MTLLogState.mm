@interface _MTLLogState
+ (int64_t)convertToLogLevel:(const char *)level;
- (BOOL)checkAndGetMessage:(MessageHeader *)message logBuffer:(LogBuffer *)buffer message:(void *)a5;
- (_MTLLogState)initWithDevice:(id)device descriptor:(id)descriptor error:(id *)error;
- (void)addLogHandler:(id)handler;
- (void)dealloc;
- (void)decodeLog;
- (void)defaultLogHandler:(id)handler category:(id)category level:(int64_t)level message:(id)message;
- (void)defaultOSLogger:(id)logger level:(int64_t)level message:(id)message;
- (void)invokeLogHandlers:(id)handlers category:(id)category level:(int64_t)level message:(id)message;
- (void)populateDefaultLoggerCache:(id)cache logger:(id)logger;
- (void)populateDefaultLoggerCache:(id)cache subsystem:(id)subsystem category:(id)category;
@end

@implementation _MTLLogState

- (_MTLLogState)initWithDevice:(id)device descriptor:(id)descriptor error:(id *)error
{
  v43[1] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = _MTLLogState;
  v8 = [(_MTLLogState *)&v31 init];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  v30 = 0;
  v8->defaultLoggerCache = 0;
  v8->droppedMessages = 0;
  if (!descriptor)
  {
    v14 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v33 = @"MTLLogStateDescriptor is nil, MTLLogState is not created";
    v15 = MEMORY[0x1E695DF20];
    v16 = &v33;
    v17 = &v32;
LABEL_6:
    v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    v19 = v14;
    v20 = 2;
LABEL_11:
    v30 = [v19 errorWithDomain:@"MTLLogStateErrorDomain" code:v20 userInfo:v18];
    goto LABEL_12;
  }

  if ([descriptor bufferSize] <= 1023)
  {
    v10 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A578];
    v43[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"MTLLogState is not created: minimum size is %d bytes.", 1024];
    v11 = MEMORY[0x1E695DF20];
    v12 = v43;
    v13 = &v42;
LABEL_10:
    v18 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
    v19 = v10;
    v20 = 1;
    goto LABEL_11;
  }

  if ([descriptor bufferSize] > 0x40000000 || objc_msgSend(descriptor, "bufferSize") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    0x40000000 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MTLLogState is not created: Maximum size is %ld bytes.", 0x40000000];
    v11 = MEMORY[0x1E695DF20];
    v12 = &0x40000000;
    v13 = &v40;
    goto LABEL_10;
  }

  v9->_logBufferSize = [descriptor bufferSize];
  v9->_logLevel = [descriptor level];
  *&v9->_logHandlerLock._os_unfair_lock_opaque = 0;
  v23 = [device newBufferWithLength:v9->_logBufferSize options:0];
  v9->_logBuffer = v23;
  if (!v23)
  {
    v10 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A578];
    v39 = @"Cannot create MTLLogState";
    v11 = MEMORY[0x1E695DF20];
    v12 = &v39;
    v13 = &v38;
    goto LABEL_10;
  }

  [(MTLBuffer *)v23 setLabel:@"MTLLogBuffer"];
  contents = [(MTLBuffer *)v9->_logBuffer contents];
  logLevel = v9->_logLevel;
  *contents = v9->_logBufferSize;
  if ((logLevel - 1) > 4)
  {
    v26 = 0;
  }

  else
  {
    v26 = dword_185DC4DB8[logLevel - 1];
  }

  contents[1] = v26;
  v27 = objc_opt_new();
  [v27 setInitialCapacity:1];
  [v27 setLabel:@"MTLLogBufferResidencySet"];
  logBufferResidencySet = [device newResidencySetWithDescriptor:v27 error:&v30];
  v9->_logBufferResidencySet = logBufferResidencySet;
  if (!logBufferResidencySet)
  {
    v29 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot create residency set for MTLLogState: %@", objc_msgSend(v30, "localizedDescription")];
    v30 = [v29 errorWithDomain:@"MTLLogStateErrorDomain" code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v37, &v36, 1)}];
    logBufferResidencySet = v9->_logBufferResidencySet;
  }

  [(MTLResidencySet *)logBufferResidencySet addAllocation:v9->_logBuffer];
  [(MTLResidencySet *)v9->_logBufferResidencySet commit];

  v9->_handlers = 0;
  v9->_device = device;
  [device initLogBufferResidencySet];
  if (![device internalLogBufferResidencySet])
  {
    v14 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot create residency set for MTLLogState: %@", objc_msgSend(v30, "localizedDescription")];
    v15 = MEMORY[0x1E695DF20];
    v16 = &v35;
    v17 = &v34;
    goto LABEL_6;
  }

  [(MTLDevice *)v9->_device addToLogBufferResidencySet:v9->_logBuffer];
LABEL_12:
  v9->metalSubsystem = @"com.apple.Metal";
  v9->shaderLoggingCategory = @"Shader Logging";
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"com.apple.Metal", @"Shader Logging"];
  v9->metalLoggingKey = v21;
  [(_MTLLogState *)v9 populateDefaultLoggerCache:v21 subsystem:v9->metalSubsystem category:v9->shaderLoggingCategory];
  if (v30)
  {
    if (error)
    {
      *error = v30;
    }

    return 0;
  }

  return v9;
}

- (void)addLogHandler:(id)handler
{
  if (handler)
  {
    os_unfair_lock_lock(&self->_logHandlerLock);
    handlers = self->_handlers;
    if (!handlers)
    {
      handlers = objc_opt_new();
      self->_handlers = handlers;
    }

    [(NSMutableArray *)handlers addObject:_Block_copy(handler)];

    os_unfair_lock_unlock(&self->_logHandlerLock);
  }
}

- (void)invokeLogHandlers:(id)handlers category:(id)category level:(int64_t)level message:(id)message
{
  handlers = self->_handlers;
  if (handlers)
  {
    if ([(NSMutableArray *)handlers count])
    {
      v12 = 0;
      do
      {
        v13 = objc_autoreleasePoolPush();
        v14 = [(NSMutableArray *)self->_handlers objectAtIndexedSubscript:v12];
        (*(v14 + 16))(v14, handlers, category, level, message);
        objc_autoreleasePoolPop(v13);
        ++v12;
      }

      while ([(NSMutableArray *)self->_handlers count]> v12);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    [(_MTLLogState *)self defaultLogHandler:handlers category:category level:level message:message];

    objc_autoreleasePoolPop(v15);
  }
}

- (BOOL)checkAndGetMessage:(MessageHeader *)message logBuffer:(LogBuffer *)buffer message:(void *)a5
{
  result = 0;
  v6 = atomic_load(buffer->var0 + 3);
  v7 = atomic_load(buffer->var0 + 2);
  v8 = (*buffer->var0 - 20);
  v9 = (v6 + 16) % v8;
  v10 = v7 < v9;
  v11 = v7 < v9 && v6 > v9;
  v12 = v6 == v7;
  v13 = v6 < v7;
  if (!v12 && (!v13 || !v10) && !v11)
  {
    v17 = v6 % v8;
    v18 = (v8 - v17);
    var1 = buffer->var1;
    if (v18 >= 0x10)
    {
      *message = *&var1[v17];
    }

    else
    {
      memcpy(message, &var1[v17], v18);
      memcpy(message + v18, buffer->var1, 16 - v18);
    }

    if (message->var4)
    {
      v20 = message->var0 - 16;
      std::vector<unsigned char>::reserve(a5, v20);
      v21 = *a5;
      v22 = *buffer->var0 - 20;
      v23 = (v6 + 16) % v22;
      v24 = v22 - v23;
      v25 = v20;
      v26 = &buffer->var1[v23];
      v27 = v20 >= v24;
      v28 = v20 - v24;
      if (v28 != 0 && v27)
      {
        memcpy(v21, v26, v22 - v23);
        v26 = buffer->var1;
        v29 = &v21[v24];
        v25 = v28;
      }

      else
      {
        v29 = v21;
      }

      memcpy(v29, v26, v25);
      var0 = message->var0;
      v31 = *buffer->var0 - 20;
      if (message->var0 + v6 <= v31)
      {
        v33 = &buffer->var1[v6];
      }

      else
      {
        v32 = v31 - v6;
        bzero(&buffer->var1[v6], v31 - v6);
        v33 = buffer->var1;
        var0 -= v32;
      }

      bzero(v33, var0);
      __dmb(0xBu);
      atomic_store((message->var0 + v6) % (*buffer->var0 - 20), buffer->var0 + 3);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)populateDefaultLoggerCache:(id)cache logger:(id)logger
{
  defaultLoggerCache = self->defaultLoggerCache;
  if (!defaultLoggerCache)
  {
    defaultLoggerCache = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->defaultLoggerCache = defaultLoggerCache;
  }

  if (![(NSMutableDictionary *)defaultLoggerCache objectForKey:cache])
  {
    [(NSMutableDictionary *)self->defaultLoggerCache setObject:logger forKey:cache];
  }
}

- (void)populateDefaultLoggerCache:(id)cache subsystem:(id)subsystem category:(id)category
{
  defaultLoggerCache = self->defaultLoggerCache;
  if (!defaultLoggerCache)
  {
    defaultLoggerCache = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->defaultLoggerCache = defaultLoggerCache;
  }

  if (![(NSMutableDictionary *)defaultLoggerCache objectForKey:cache])
  {
    v10 = os_log_create([subsystem UTF8String], objc_msgSend(category, "UTF8String"));
    [(NSMutableDictionary *)self->defaultLoggerCache setObject:v10 forKey:cache];
  }
}

- (void)defaultOSLogger:(id)logger level:(int64_t)level message:(id)message
{
  v10 = *MEMORY[0x1E69E9840];
  if (level >= 6)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = (0x111000010200uLL >> (8 * level));
  }

  if (os_log_type_enabled(logger, v7))
  {
    v8 = 138412290;
    messageCopy = message;
    _os_log_impl(&dword_185B8E000, logger, v7, "%@", &v8, 0xCu);
  }
}

- (void)defaultLogHandler:(id)handler category:(id)category level:(int64_t)level message:(id)message
{
  v20 = *MEMORY[0x1E69E9840];
  if (handler && category)
  {
    category = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", handler, category];
    [(_MTLLogState *)self populateDefaultLoggerCache:category subsystem:handler category:category];
    v12 = [(NSMutableDictionary *)self->defaultLoggerCache objectForKeyedSubscript:category];
    v13 = v12;
    if (level >= 6)
    {
      v14 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v14 = (0x111000010200uLL >> (8 * level));
    }

    if (os_log_type_enabled(v12, v14))
    {
      *buf = 138412290;
      messageCopy2 = message;
      v15 = v14;
      v16 = v13;
LABEL_13:
      _os_log_impl(&dword_185B8E000, v16, v15, "%@", buf, 0xCu);
    }
  }

  else
  {
    if (level >= 6)
    {
      v17 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v17 = (0x111000010200uLL >> (8 * level));
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], v17))
    {
      *buf = 138412290;
      messageCopy2 = message;
      v16 = MEMORY[0x1E69E9C10];
      v15 = v17;
      goto LABEL_13;
    }
  }
}

- (void)decodeLog
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = a2 - *self;
  v4[0] = 67109120;
  v4[1] = v3;
  _os_log_error_impl(&dword_185B8E000, log, OS_LOG_TYPE_ERROR, "Dropped %d messages due to insufficient log buffer size", v4, 8u);
}

- (void)dealloc
{
  [(MTLDevice *)self->_device removeLogBufferFromResidencySet:self->_logBuffer];

  self->_device = 0;
  self->defaultLoggerCache = 0;
  v3 = [(NSMutableArray *)self->_handlers count];
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = v3 & 0x7FFFFFFF;
    do
    {
      _Block_release([(NSMutableArray *)self->_handlers objectAtIndexedSubscript:v4++]);
    }

    while (v5 != v4);
  }

  v6.receiver = self;
  v6.super_class = _MTLLogState;
  [(_MTLLogState *)&v6 dealloc];
}

+ (int64_t)convertToLogLevel:(const char *)level
{
  if (!level)
  {
    return 2;
  }

  if (!strcmp(level, "MTLLogLevelInfo"))
  {
    return 2;
  }

  if (!strcmp(level, "MTLLogLevelDebug"))
  {
    return 1;
  }

  if (!strcmp(level, "MTLLogLevelNotice"))
  {
    return 3;
  }

  if (!strcmp(level, "MTLLogLevelError"))
  {
    return 4;
  }

  if (strcmp(level, "MTLLogLevelFault"))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[_MTLLogState convertToLogLevel:];
    }

    return 2;
  }

  return 5;
}

@end