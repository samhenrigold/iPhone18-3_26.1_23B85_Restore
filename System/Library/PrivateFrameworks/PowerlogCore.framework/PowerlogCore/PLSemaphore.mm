@interface PLSemaphore
+ (id)sharedSemaphoreForKey:(id)key;
- (BOOL)isActive;
- (PLSemaphore)initWithKey:(id)key;
- (void)signalDoneByObject:(id)object;
- (void)signalInterestByObject:(id)object;
- (void)signalNonInterestByObject:(id)object;
- (void)signalStartListening;
- (void)waitWithBlock:(id)block;
- (void)waitWithBlockSync:(id)sync;
@end

@implementation PLSemaphore

+ (id)sharedSemaphoreForKey:(id)key
{
  keyCopy = key;
  if (sharedSemaphoreForKey__onceToken != -1)
  {
    +[PLSemaphore sharedSemaphoreForKey:];
  }

  v4 = sharedSemaphoreForKey___sharedSemaphores;
  objc_sync_enter(v4);
  v5 = [sharedSemaphoreForKey___sharedSemaphores objectForKeyedSubscript:keyCopy];

  if (!v5)
  {
    v6 = [[PLSemaphore alloc] initWithKey:keyCopy];
    [sharedSemaphoreForKey___sharedSemaphores setObject:v6 forKeyedSubscript:keyCopy];
  }

  v7 = [sharedSemaphoreForKey___sharedSemaphores objectForKeyedSubscript:keyCopy];
  objc_sync_exit(v4);

  return v7;
}

uint64_t __37__PLSemaphore_sharedSemaphoreForKey___block_invoke()
{
  v0 = objc_opt_new();
  sharedSemaphoreForKey___sharedSemaphores = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (PLSemaphore)initWithKey:(id)key
{
  keyCopy = key;
  v15.receiver = self;
  v15.super_class = PLSemaphore;
  v6 = [(PLSemaphore *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, key);
    v7->_timeout = 3.0;
    v8 = objc_opt_new();
    interestedObjects = v7->_interestedObjects;
    v7->_interestedObjects = v8;

    v10 = objc_opt_new();
    pendingDoneObjects = v7->_pendingDoneObjects;
    v7->_pendingDoneObjects = v10;

    v12 = objc_alloc_init(MEMORY[0x1E696AB30]);
    pendingObjectsLock = v7->_pendingObjectsLock;
    v7->_pendingObjectsLock = v12;
  }

  return v7;
}

- (BOOL)isActive
{
  [(NSCondition *)self->_pendingObjectsLock lock];
  pendingDoneObjects = [(PLSemaphore *)self pendingDoneObjects];
  v4 = [pendingDoneObjects count] != 0;

  [(NSCondition *)self->_pendingObjectsLock unlock];
  return v4;
}

- (void)signalInterestByObject:(id)object
{
  objectCopy = object;
  interestedObjects = [(PLSemaphore *)self interestedObjects];
  objc_sync_enter(interestedObjects);
  interestedObjects2 = [(PLSemaphore *)self interestedObjects];
  [interestedObjects2 addObject:objectCopy];

  objc_sync_exit(interestedObjects);
  [(NSCondition *)self->_pendingObjectsLock lock];
  pendingDoneObjects = [(PLSemaphore *)self pendingDoneObjects];
  [pendingDoneObjects addObject:objectCopy];

  [(NSCondition *)self->_pendingObjectsLock unlock];
}

- (void)signalNonInterestByObject:(id)object
{
  objectCopy = object;
  interestedObjects = [(PLSemaphore *)self interestedObjects];
  objc_sync_enter(interestedObjects);
  interestedObjects2 = [(PLSemaphore *)self interestedObjects];
  [interestedObjects2 removeObject:objectCopy];

  objc_sync_exit(interestedObjects);
}

- (void)signalDoneByObject:(id)object
{
  objectCopy = object;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__PLSemaphore_signalDoneByObject___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (signalDoneByObject__defaultOnce != -1)
    {
      dispatch_once(&signalDoneByObject__defaultOnce, block);
    }

    if (signalDoneByObject__classDebugEnabled == 1)
    {
      objectCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"done signaled by %@", objectCopy];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSemaphore.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSemaphore signalDoneByObject:]"];
      [PLCoreStorage logMessage:objectCopy fromFile:lastPathComponent fromFunction:v9 fromLineNumber:80];

      v11 = PLLogCommon(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [(NSCondition *)self->_pendingObjectsLock lock];
  pendingDoneObjects = [(PLSemaphore *)self pendingDoneObjects];
  v13 = [pendingDoneObjects count];

  if (v13)
  {
    if (+[PLDefaults debugEnabled])
    {
      v14 = objc_opt_class();
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __34__PLSemaphore_signalDoneByObject___block_invoke_26;
      v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v38[4] = v14;
      if (signalDoneByObject__defaultOnce_24 != -1)
      {
        dispatch_once(&signalDoneByObject__defaultOnce_24, v38);
      }

      if (signalDoneByObject__classDebugEnabled_25 == 1)
      {
        objectCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removed %@ from pendingDoneObjects", objectCopy];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSemaphore.m"];
        lastPathComponent2 = [v16 lastPathComponent];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSemaphore signalDoneByObject:]"];
        [PLCoreStorage logMessage:objectCopy2 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:83];

        v20 = PLLogCommon(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    pendingDoneObjects2 = [(PLSemaphore *)self pendingDoneObjects];
    [pendingDoneObjects2 removeObject:objectCopy];

    pendingDoneObjects3 = [(PLSemaphore *)self pendingDoneObjects];
    v23 = [pendingDoneObjects3 count];

    if (!v23)
    {
      if (+[PLDefaults debugEnabled])
      {
        v24 = objc_opt_class();
        v33 = MEMORY[0x1E69E9820];
        v34 = 3221225472;
        v35 = __34__PLSemaphore_signalDoneByObject___block_invoke_32;
        v36 = &__block_descriptor_40_e5_v8__0lu32l8;
        v37 = v24;
        if (signalDoneByObject__defaultOnce_30 != -1)
        {
          dispatch_once(&signalDoneByObject__defaultOnce_30, &v33);
        }

        if (signalDoneByObject__classDebugEnabled_31 == 1)
        {
          v25 = MEMORY[0x1E696AEC0];
          v26 = [(PLSemaphore *)self key];
          v27 = [v25 stringWithFormat:@"PLSemaphore %@ signalDone!", v26, v33, v34, v35, v36, v37];

          v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSemaphore.m"];
          lastPathComponent3 = [v28 lastPathComponent];
          v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSemaphore signalDoneByObject:]"];
          [PLCoreStorage logMessage:v27 fromFile:lastPathComponent3 fromFunction:v30 fromLineNumber:87];

          v32 = PLLogCommon(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      [(NSCondition *)self->_pendingObjectsLock signal];
    }
  }

  [(NSCondition *)self->_pendingObjectsLock unlock];
}

BOOL __34__PLSemaphore_signalDoneByObject___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  signalDoneByObject__classDebugEnabled = result;
  return result;
}

BOOL __34__PLSemaphore_signalDoneByObject___block_invoke_26(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  signalDoneByObject__classDebugEnabled_25 = result;
  return result;
}

BOOL __34__PLSemaphore_signalDoneByObject___block_invoke_32(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  signalDoneByObject__classDebugEnabled_31 = result;
  return result;
}

- (void)signalStartListening
{
  [(NSCondition *)self->_pendingObjectsLock lock];
  pendingDoneObjects = [(PLSemaphore *)self pendingDoneObjects];
  interestedObjects = [(PLSemaphore *)self interestedObjects];
  [pendingDoneObjects unionSet:interestedObjects];

  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __35__PLSemaphore_signalStartListening__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v5;
    if (signalStartListening_defaultOnce != -1)
    {
      dispatch_once(&signalStartListening_defaultOnce, &block);
    }

    if (signalStartListening_classDebugEnabled == 1)
    {
      v6 = MEMORY[0x1E696AEC0];
      pendingDoneObjects2 = [(PLSemaphore *)self pendingDoneObjects];
      v8 = [v6 stringWithFormat:@"Start Listening for %@", pendingDoneObjects2, block, v15, v16, v17, v18];

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSemaphore.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSemaphore signalStartListening]"];
      [PLCoreStorage logMessage:v8 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:97];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [(NSCondition *)self->_pendingObjectsLock unlock];
}

BOOL __35__PLSemaphore_signalStartListening__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  signalStartListening_classDebugEnabled = result;
  return result;
}

- (void)waitWithBlock:(id)block
{
  blockCopy = block;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__PLSemaphore_waitWithBlock___block_invoke;
  v7[3] = &unk_1E8519400;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(v5, v7);
}

- (void)waitWithBlockSync:(id)sync
{
  v46 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  [(NSCondition *)self->_pendingObjectsLock lock];
  pendingDoneObjects = [(PLSemaphore *)self pendingDoneObjects];
  v6 = [pendingDoneObjects count];

  v7 = 0x1E8518000uLL;
  v8 = &off_1D86FA000;
  v9 = &__block_descriptor_40_e5_v8__0lu32l8;
  if (v6)
  {
    v40 = syncCopy;
    v10 = v43;
    p_name = &OBJC_PROTOCOL___UMUserSwitchStakeholder.name;
    v12 = &OBJC_PROTOCOL___UMUserSwitchStakeholder.name;
    do
    {
      if ([*(v7 + 2224) debugEnabled])
      {
        v13 = objc_opt_class();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        v43[0] = __33__PLSemaphore_waitWithBlockSync___block_invoke;
        v43[1] = v9;
        v43[2] = v13;
        if (p_name[270] != -1)
        {
          dispatch_once(&waitWithBlockSync__defaultOnce, block);
        }

        if (*(v12 + 2168) == 1)
        {
          v14 = v10;
          v15 = v7;
          v16 = p_name;
          v17 = v9;
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"waiting for signal to be done"];
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSemaphore.m"];
          lastPathComponent = [v19 lastPathComponent];
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSemaphore waitWithBlockSync:]"];
          [PLCoreStorage logMessage:v18 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:111];

          v23 = PLLogCommon(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v45 = v18;
            _os_log_debug_impl(&dword_1D8611000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v9 = v17;
          p_name = v16;
          v7 = v15;
          v10 = v14;
          v12 = (&OBJC_PROTOCOL___UMUserSwitchStakeholder + 8);
        }
      }

      v24 = MEMORY[0x1E695DF00];
      [(PLSemaphore *)self timeout];
      v25 = [v24 dateWithTimeIntervalSinceNow:?];
      v26 = [(NSCondition *)self->_pendingObjectsLock waitUntilDate:v25];

      pendingDoneObjects2 = [(PLSemaphore *)self pendingDoneObjects];
      v28 = [pendingDoneObjects2 count];
    }

    while (v28 && v26);
    v29 = !v26;
    syncCopy = v40;
    v8 = &off_1D86FA000;
  }

  else
  {
    v29 = 0;
  }

  if ([*(v7 + 2224) debugEnabled])
  {
    v30 = objc_opt_class();
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = *(v8 + 230);
    v41[2] = __33__PLSemaphore_waitWithBlockSync___block_invoke_45;
    v41[3] = v9;
    v41[4] = v30;
    if (waitWithBlockSync__defaultOnce_43 != -1)
    {
      dispatch_once(&waitWithBlockSync__defaultOnce_43, v41);
    }

    if (waitWithBlockSync__classDebugEnabled_44 == 1)
    {
      v31 = MEMORY[0x1E696AEC0];
      v32 = [(PLSemaphore *)self key];
      pendingDoneObjects3 = [(PLSemaphore *)self pendingDoneObjects];
      v34 = [v31 stringWithFormat:@"PLSemaphore %@ ended! timedOut=%d pendingDoneObjects=%@", v32, v29, pendingDoneObjects3];

      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSemaphore.m"];
      lastPathComponent2 = [v35 lastPathComponent];
      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSemaphore waitWithBlockSync:]"];
      [PLCoreStorage logMessage:v34 fromFile:lastPathComponent2 fromFunction:v37 fromLineNumber:117];

      v39 = PLLogCommon(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [(NSCondition *)self->_pendingObjectsLock unlock];
  syncCopy[2](syncCopy);
}

BOOL __33__PLSemaphore_waitWithBlockSync___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  waitWithBlockSync__classDebugEnabled = result;
  return result;
}

BOOL __33__PLSemaphore_waitWithBlockSync___block_invoke_45(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  waitWithBlockSync__classDebugEnabled_44 = result;
  return result;
}

@end