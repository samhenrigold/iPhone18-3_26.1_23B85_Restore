@interface FigCaptureCMSessionMonitor
- (FigCaptureCMSessionMonitor)initWithCMSession:(opaqueCMSession *)session clientPID:(int)d observer:(id)observer;
- (id)_beginMonitoring;
- (id)_initWithFigCaptureCMSession:(id)session clientPID:(int)d observer:(id)observer;
- (id)description;
- (void)_endMonitoring;
- (void)_handleBKSApplicationStateChange:(uint64_t)change;
- (void)_handleCMSessionNotification:(void *)result;
- (void)_updateApplicationState;
- (void)dealloc;
- (void)invalidate;
@end

@implementation FigCaptureCMSessionMonitor

- (id)_initWithFigCaptureCMSession:(id)session clientPID:(int)d observer:(id)observer
{
  v6 = *&d;
  v11.receiver = self;
  v11.super_class = FigCaptureCMSessionMonitor;
  v8 = [(FigCaptureCMSessionMonitor *)&v11 init];
  if (v8)
  {
    v8->_lock = FigSimpleMutexCreate();
    sessionCopy = session;
    v8->_session = sessionCopy;
    v8->_clientPID = v6;
    if (-[FigCaptureCMSession setProperty:value:](sessionCopy, "setProperty:value:", *MEMORY[0x1E69AFD90], [MEMORY[0x1E696AEC0] stringWithFormat:@"FigCaptureClient-%d", v6]))
    {
      [FigCaptureCMSessionMonitor _initWithFigCaptureCMSession:clientPID:observer:];
    }

    else
    {
      if (!-[FigCaptureCMSession setProperty:value:](v8->_session, "setProperty:value:", *MEMORY[0x1E69AFDA8], [MEMORY[0x1E696AD98] numberWithInt:v8->_clientPID]))
      {
        v8->_observer = observer;
        [(FigCaptureCMSessionMonitor *)&v8->super.isa _beginMonitoring];
        return v8;
      }

      [FigCaptureCMSessionMonitor _initWithFigCaptureCMSession:clientPID:observer:];
    }

    return 0;
  }

  return v8;
}

- (FigCaptureCMSessionMonitor)initWithCMSession:(opaqueCMSession *)session clientPID:(int)d observer:(id)observer
{
  v6 = *&d;
  if (!session && CMSessionCreate())
  {
    [FigCaptureCMSessionMonitor initWithCMSession:clientPID:observer:];
    v10 = 0;
  }

  else
  {
    v9 = [[FigCaptureCMSession alloc] initWithCMSession:session];
    self = [(FigCaptureCMSessionMonitor *)self _initWithFigCaptureCMSession:v9 clientPID:v6 observer:observer];

    if (session)
    {
      return self;
    }

    v10 = 1;
  }

  if (session)
  {
    CFRelease(session);
  }

  if ((v10 & 1) == 0)
  {

    return 0;
  }

  return self;
}

- (void)invalidate
{
  FigSimpleMutexLock();
  if (!self->_invalidated)
  {
    [(FigCaptureCMSessionMonitor *)self _endMonitoring];
    self->_invalidated = 1;
  }

  FigSimpleMutexUnlock();
}

- (void)dealloc
{
  [(FigCaptureCMSessionMonitor *)self invalidate];

  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = FigCaptureCMSessionMonitor;
  [(FigCaptureCMSessionMonitor *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[FigCaptureCMSessionMonitor debugDescription](self, "debugDescription")];
}

void __46__FigCaptureCMSessionMonitor__beginMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) referencedObject];
  [(FigCaptureCMSessionMonitor *)v5 _handleCMSessionNotification:a2];

  objc_autoreleasePoolPop(v4);
}

- (id)_beginMonitoring
{
  if (result)
  {
    v1 = result;
    [FigWeakReference weakReferenceToObject:result];
    [MEMORY[0x1E696AD88] defaultCenter];
    cmsession = [v1[2] cmsession];
    v1[5] = OUTLINED_FUNCTION_2_17(cmsession, v3, v4);
    [(FigCaptureCMSessionMonitor *)v1 _updateApplicationState];
    [MEMORY[0x1E696AD88] defaultCenter];
    cmsession2 = [v1[2] cmsession];
    result = OUTLINED_FUNCTION_2_17(cmsession2, v6, v7);
    v1[6] = result;
  }

  return result;
}

- (void)_endMonitoring
{
  if (result)
  {
    v1 = result;
    if (result[5])
    {
      result = [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      v1[5] = 0;
    }

    if (v1[6])
    {
      result = [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      v1[6] = 0;
    }
  }

  return result;
}

- (void)_handleCMSessionNotification:(void *)result
{
  if (!result)
  {
    return;
  }

  FigSimpleMutexLock();
  v4 = *(result + 56);
  FigSimpleMutexUnlock();
  if (v4 == 1)
  {
    goto LABEL_18;
  }

  if (objc_msgSend_isEqualToString_([a2 name]))
  {
    userInfo = [a2 userInfo];
    v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69AF9E0]];
    if (v6)
    {
      intValue = [v6 intValue];
      if (intValue == 1)
      {
        v12 = result[4];

        [v12 cmsessionMonitorDidEndAudioInterruption:result];
      }

      else if (!intValue)
      {
        v8 = result[4];

        [v8 cmsessionMonitorDidBeginAudioInterruption:result];
      }

      return;
    }

LABEL_18:
    OUTLINED_FUNCTION_0_3();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return;
  }

  if (!objc_msgSend_isEqualToString_([a2 name]))
  {
    return;
  }

  userInfo2 = [a2 userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69AFA50]];
  if (!v10)
  {
    goto LABEL_18;
  }

  unsignedIntValue = [v10 unsignedIntValue];

  [(FigCaptureCMSessionMonitor *)result _handleBKSApplicationStateChange:unsignedIntValue];
}

- (void)_updateApplicationState
{
  if (self)
  {
    HIDWORD(v6) = 0;
    v3 = [*(self + 16) copyProperty:*MEMORY[0x1E69AFCA0] error:&v6 + 4];
    v4 = v3;
    if (HIDWORD(v6))
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", HIDWORD(v6), v1, v5, v6, v7, v8, v9, v10);
    }

    else
    {
      -[FigCaptureCMSessionMonitor _handleBKSApplicationStateChange:](self, [v3 unsignedIntValue]);
    }
  }
}

- (void)_handleBKSApplicationStateChange:(uint64_t)change
{
  if (change)
  {
    HIDWORD(v8) = 0;
    v5 = [*(change + 16) copyProperty:*MEMORY[0x1E69B0190] error:&v8 + 4];
    v6 = v5;
    if (HIDWORD(v8))
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", HIDWORD(v8), v2, v7, v8, v9, v10, v11, v12);
    }

    else
    {
      [*(change + 32) cmsessionMonitor:change didUpdateApplicationState:a2 pidToInheritApplicationStateFrom:{objc_msgSend(v5, "intValue")}];
    }
  }
}

@end