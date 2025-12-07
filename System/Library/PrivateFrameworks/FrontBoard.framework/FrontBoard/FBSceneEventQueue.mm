@interface FBSceneEventQueue
+ (BOOL)isIdleWorkSuspended;
+ (id)suspendIdleWorkForReason:(id)reason;
+ (void)executeWhenIdle:(id)idle;
- (void)_noteQueueDidLock;
- (void)_noteWillPendEvents:(id)events atPosition:(int)position;
- (void)_relinquishIdleLockIfAppropriate;
- (void)executeOrAppend:(id)append;
@end

@implementation FBSceneEventQueue

- (void)_noteQueueDidLock
{
  if (!self->_idleEventLock)
  {
    v5 = FBSceneIdleEventQueue(self);
    v3 = [v5 acquireLockForReason:@"FBSceneEventQueue"];
    idleEventLock = self->_idleEventLock;
    self->_idleEventLock = v3;
  }
}

- (void)_relinquishIdleLockIfAppropriate
{
  if (self)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "[FBSceneEventQueue _relinquishIdleLockIfAppropriate]");
    }

    if (self[7] && [self isEmpty])
    {
      executingEvent = [self executingEvent];
      if (!executingEvent)
      {
        if ([self isLocked])
        {
          return;
        }

        v3 = self[7];
        self[7] = 0;
        v4 = v3;

        [v4 relinquish];
        executingEvent = v4;
      }
    }
  }
}

- (void)executeOrAppend:(id)append
{
  v4 = [MEMORY[0x1E698E6B0] eventWithName:@"event" handler:append];
  v5.receiver = self;
  v5.super_class = FBSceneEventQueue;
  [(BSEventQueue *)&v5 executeOrInsertEvent:v4 atPosition:1];
}

+ (void)executeWhenIdle:(id)idle
{
  idleCopy = idle;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "+[FBSceneEventQueue executeWhenIdle:]");
  }

  if (!idleCopy)
  {
    [(FBSceneEventQueue *)a2 executeWhenIdle:self];
  }

  v5 = [MEMORY[0x1E698E6B0] eventWithName:@"idleEvent" handler:idleCopy];
  v6 = FBSceneIdleEventQueue(v5);
  [v6 executeOrInsertEvent:v5 atPosition:1];
}

+ (BOOL)isIdleWorkSuspended
{
  v2 = FBSceneIdleEventQueue(self);
  isLocked = [v2 isLocked];

  return isLocked;
}

+ (id)suspendIdleWorkForReason:(id)reason
{
  v3 = MEMORY[0x1E696AF00];
  reasonCopy = reason;
  isMainThread = [v3 isMainThread];
  if ((isMainThread & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION__(0, "+[FBSceneEventQueue suspendIdleWorkForReason:]");
  }

  v6 = FBSceneIdleEventQueue(isMainThread);
  v7 = [v6 acquireLockForReason:reasonCopy];

  v8 = objc_alloc(MEMORY[0x1E698E778]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__FBSceneEventQueue_suspendIdleWorkForReason___block_invoke;
  v12[3] = &unk_1E783C088;
  v13 = v7;
  v9 = v7;
  v10 = [v8 initWithIdentifier:@"SuspendIdleWork" forReason:reasonCopy queue:MEMORY[0x1E69E96A0] invalidationBlock:v12];

  return v10;
}

- (void)_noteWillPendEvents:(id)events atPosition:(int)position
{
  if (!self->_idleEventLock)
  {
    v7 = FBSceneIdleEventQueue(self);
    v5 = [v7 acquireLockForReason:@"FBSceneEventQueue"];
    idleEventLock = self->_idleEventLock;
    self->_idleEventLock = v5;
  }
}

+ (void)executeWhenIdle:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBSceneEventQueue.m";
    v16 = 1024;
    v17 = 34;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end