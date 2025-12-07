@interface FigPurgeAndRenewPurgeOperator
+ (id)operatorForClientPID:(int)d notificationQueue:(id)queue withPurgeBlock:(id)block;
- (BOOL)setPurgeSuspended:(BOOL)suspended;
- (id)_initWithClientPID:(int)d withPurgeBlock:(id)block notificationQueue:(id)queue;
- (void)checkAppStateAndPurgeObjectsBasedOnSuspensionTime:(int64_t)time;
- (void)dealloc;
- (void)handleProcessIsNoLongerSuspendedOnQueue;
- (void)handleprocessDidSuspendOnQueue;
- (void)hintProcessMayNeedPurgeTimerRestart;
- (void)processDidSuspend;
- (void)processDidTerminate;
- (void)processIsNoLongerSuspended;
- (void)restartPurgeTimerIfNecessary;
@end

@implementation FigPurgeAndRenewPurgeOperator

+ (id)operatorForClientPID:(int)d notificationQueue:(id)queue withPurgeBlock:(id)block
{
  v5 = [[self alloc] _initWithClientPID:*&d withPurgeBlock:block notificationQueue:queue];

  return v5;
}

- (id)_initWithClientPID:(int)d withPurgeBlock:(id)block notificationQueue:(id)queue
{
  v9 = FigNote_AllowInternalDefaultLogs(self, a2) != 0;
  fig_note_initialize_category_with_default_work_cf(&unk_1EAF1CC58, @"processtatetracker_trace", @"com.apple.coremedia", ", "com.apple.coremedia"", v9, 0, &gFigPurgeAndRenewProcessStateTracker);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CC68, @"processtatetracker_trace", @"com.apple.coremedia", ", "com.apple.coremedia"", 1u, 0, &qword_1EAF1CC60);
  v13.receiver = self;
  v13.super_class = FigPurgeAndRenewPurgeOperator;
  v10 = [(FigPurgeAndRenewPurgeOperator *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_clientPID = d;
    v10->_queue = queue;
    dispatch_retain(queue);
    v11->_purgeBlock = [block copy];
    v11->_isSuspended = 0;
    v11->_lastSuspensionTimeNs = 0;
    v11->_purgeTimeoutSeconds = FigGetCFPreferenceNumberWithDefault(@"purge_timeout_seconds", @"com.apple.coremedia", 600);
    *&v11->_purgeSuspended = 0;
  }

  return v11;
}

- (void)dealloc
{
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = FigPurgeAndRenewPurgeOperator;
  [(FigPurgeAndRenewPurgeOperator *)&v3 dealloc];
}

- (void)restartPurgeTimerIfNecessary
{
  location[16] = *MEMORY[0x1E69E9840];
  if (dword_1EAF1CC68)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC60, 1, &v22, &type);
    v4 = v22;
    v5 = type;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFE;
    }

    if (v6)
    {
      clientPID = self->_clientPID;
      v23 = 136315650;
      v24 = "[FigPurgeAndRenewPurgeOperator restartPurgeTimerIfNecessary]";
      v25 = 1024;
      v26 = clientPID;
      v27 = 2048;
      selfCopy2 = self;
      v8 = _os_log_send_and_compose_impl(v6, 0, location, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v5, "<<< FigPurgeAndRenewProcessStateTracker >>> %s: app with pid=%d suspended apptracker=%p, check and start timer before purge", &v23, 28, v18);
      LOBYTE(v4) = v22;
    }

    else
    {
      v8 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC60, 1, 1, v8, v8 != location, v4);
  }

  if (self->_purgeSuspended)
  {
    if (dword_1EAF1CC68)
    {
      v22 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC60, 1, &v22, &type);
      v10 = v22;
      v11 = type;
      if (os_log_type_enabled(v9, type))
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = self->_clientPID;
        v23 = 136315650;
        v24 = "[FigPurgeAndRenewPurgeOperator restartPurgeTimerIfNecessary]";
        v25 = 1024;
        v26 = v13;
        v27 = 2048;
        selfCopy2 = self;
        v14 = _os_log_send_and_compose_impl(v12, 0, location, 128, &dword_196FA7000, v9, v11, "<<< FigPurgeAndRenewProcessStateTracker >>> %s: pid=%d apptracker=%p don't start the timer if purge is suspended", &v23, 28, v18);
        LOBYTE(v10) = v22;
      }

      else
      {
        v14 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC60, 1, 1, v14, v14 != location, v10);
    }
  }

  else
  {
    objc_initWeak(location, self);
    lastSuspensionTimeNs = self->_lastSuspensionTimeNs;
    v16 = dispatch_time(0x8000000000000000, 1000000000 * self->_purgeTimeoutSeconds);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__FigPurgeAndRenewPurgeOperator_restartPurgeTimerIfNecessary__block_invoke;
    block[3] = &unk_1E749CDF0;
    objc_copyWeak(v20, location);
    v20[1] = lastSuspensionTimeNs;
    dispatch_after(v16, queue, block);
    objc_destroyWeak(v20);
    objc_destroyWeak(location);
  }
}

id __61__FigPurgeAndRenewPurgeOperator_restartPurgeTimerIfNecessary__block_invoke(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v3 = *(a1 + 40);

    return [result checkAppStateAndPurgeObjectsBasedOnSuspensionTime:v3];
  }

  return result;
}

- (void)handleprocessDidSuspendOnQueue
{
  v16 = *MEMORY[0x1E69E9840];
  if (dword_1EAF1CC68)
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC60, 1, &v10, &type);
    v4 = v10;
    v5 = type;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFE;
    }

    if (v6)
    {
      clientPID = self->_clientPID;
      v11 = 136315394;
      v12 = "[FigPurgeAndRenewPurgeOperator handleprocessDidSuspendOnQueue]";
      v13 = 1024;
      v14 = clientPID;
      v8 = _os_log_send_and_compose_impl(v6, 0, v15, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v5, "<<< FigPurgeAndRenewProcessStateTracker >>> %s: process %d is now suspended", &v11, 18);
      LOBYTE(v4) = v10;
    }

    else
    {
      v8 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC60, 1, 1, v8, v8 != v15, v4);
  }

  self->_isSuspended = 1;
  self->_lastSuspensionTimeNs = FigGetUpTimeNanoseconds();
  [(FigPurgeAndRenewPurgeOperator *)self restartPurgeTimerIfNecessary];
}

- (void)processDidSuspend
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FigPurgeAndRenewPurgeOperator_processDidSuspend__block_invoke;
  block[3] = &unk_1E749CE18;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleProcessIsNoLongerSuspendedOnQueue
{
  v16 = *MEMORY[0x1E69E9840];
  if (dword_1EAF1CC68)
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC60, 1, &v10, &type);
    v4 = v10;
    v5 = type;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFE;
    }

    if (v6)
    {
      clientPID = self->_clientPID;
      v11 = 136315394;
      v12 = "[FigPurgeAndRenewPurgeOperator handleProcessIsNoLongerSuspendedOnQueue]";
      v13 = 1024;
      v14 = clientPID;
      v8 = _os_log_send_and_compose_impl(v6, 0, v15, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v5, "<<< FigPurgeAndRenewProcessStateTracker >>> %s: process %d is no longer suspended, reset state", &v11, 18);
      LOBYTE(v4) = v10;
    }

    else
    {
      v8 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC60, 1, 1, v8, v8 != v15, v4);
  }

  self->_isSuspended = 0;
  self->_lastSuspensionTimeNs = 0;
}

- (void)processIsNoLongerSuspended
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__FigPurgeAndRenewPurgeOperator_processIsNoLongerSuspended__block_invoke;
  block[3] = &unk_1E749CE18;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)processDidTerminate
{
  v17 = *MEMORY[0x1E69E9840];
  if (dword_1EAF1CC68)
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC60, 1, &v11, &type);
    v4 = v11;
    v5 = type;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFE;
    }

    if (v6)
    {
      clientPID = self->_clientPID;
      v12 = 136315394;
      v13 = "[FigPurgeAndRenewPurgeOperator processDidTerminate]";
      v14 = 1024;
      v15 = clientPID;
      v8 = _os_log_send_and_compose_impl(v6, 0, v16, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v5, "<<< FigPurgeAndRenewProcessStateTracker >>> %s: process %d did terminate", &v12, 18);
      LOBYTE(v4) = v11;
    }

    else
    {
      v8 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC60, 1, 1, v8, v8 != v16, v4);
  }

  v9 = [MEMORY[0x1E696AD80] notificationWithName:@"FigProcessStateTrackerClientProcessIsTerminated" object:self userInfo:0];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (BOOL)setPurgeSuspended:(BOOL)suspended
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  self->_purgeSuspended = suspended;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__FigPurgeAndRenewPurgeOperator_setPurgeSuspended___block_invoke;
  block[3] = &unk_1E749CE40;
  block[4] = self;
  block[5] = &v18;
  suspendedCopy = suspended;
  queue = self->_queue;
  if (queue == dispatch_get_current_queue())
  {
    purgeOccurred = self->_purgeOccurred;
    v21 = !purgeOccurred;
    v6 = !purgeOccurred;
    if (purgeOccurred)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_sync(queue, block);
    v6 = *(v19 + 24);
    if ((v6 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!suspended)
  {
    if (dword_1EAF1CC68)
    {
      v15 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC60, 1, &v15, &type);
      v9 = v15;
      v10 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v11 = v9;
      }

      else
      {
        v11 = v9 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v22 = 136315138;
        v23 = "[FigPurgeAndRenewPurgeOperator setPurgeSuspended:]";
        v12 = _os_log_send_and_compose_impl(v11, 0, v24, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v10, "<<< FigPurgeAndRenewProcessStateTracker >>> %s: purge suspension was removed, kick off purge if required", &v22);
        LOBYTE(v9) = v15;
      }

      else
      {
        v12 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC60, 1, 1, v12, v12 != v24, v9);
    }

    [(FigPurgeAndRenewPurgeOperator *)self hintProcessMayNeedPurgeTimerRestart];
    v6 = *(v19 + 24);
  }

LABEL_15:
  _Block_object_dispose(&v18, 8);
  return v6 & 1;
}

uint64_t __51__FigPurgeAndRenewPurgeOperator_setPurgeSuspended___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = (*(v1 + 10) & 1) == 0 && *(v1 + 9) == *(result + 48);
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (void)hintProcessMayNeedPurgeTimerRestart
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__FigPurgeAndRenewPurgeOperator_hintProcessMayNeedPurgeTimerRestart__block_invoke;
  block[3] = &unk_1E749CE18;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)checkAppStateAndPurgeObjectsBasedOnSuspensionTime:(int64_t)time
{
  if (self->_isSuspended && !self->_purgeSuspended && self->_lastSuspensionTimeNs == time)
  {
    dispatch_assert_queue_V2(self->_queue);
    (*(self->_purgeBlock + 2))();
    *&self->_purgeSuspended = 256;
  }
}

_BYTE *__68__FigPurgeAndRenewPurgeOperator_hintProcessMayNeedPurgeTimerRestart__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == 1)
  {
    return [result restartPurgeTimerIfNecessary];
  }

  return result;
}

@end