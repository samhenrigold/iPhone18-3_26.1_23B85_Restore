@interface SiriAnalyticsWhiteRose
- (SiriAnalyticsWhiteRose)initWithQueue:(id)queue delegate:(id)delegate metastore:(id)metastore logicalClocks:(id)clocks;
- (id)markTimeForAnnotatedMessage:(id)message withRootClock:(id)clock;
- (void)_cancelInactivityTimer;
- (void)_cancelMaximumClockLifeTimer;
- (void)_destroyActiveClockWithReason:(unint64_t)reason completion:(id)completion;
- (void)_ensureActiveClockStartingAt:(unint64_t)at completion:(id)completion;
- (void)_inactivityTimerElapsed;
- (void)_maximumClockLifeExpired;
- (void)_pulseActiveClock;
- (void)_startInactivityTimer;
- (void)_startMaximumClockLifeTimer;
- (void)bootstrapWithCompletion:(id)completion;
- (void)createTag:(id)tag completion:(id)completion;
- (void)debounceFired:(id)fired maximumReached:(BOOL)reached;
- (void)destroyActiveClockWithReason:(unint64_t)reason completion:(id)completion;
- (void)markTimeForAnnotatedMessages:(id)messages completion:(id)completion;
- (void)sensitiveCondition:(int)condition endedAt:(unint64_t)at ensureClockExists:(BOOL)exists completion:(id)completion;
- (void)sensitiveCondition:(int)condition startedAt:(unint64_t)at ensureClockExists:(BOOL)exists completion:(id)completion;
@end

@implementation SiriAnalyticsWhiteRose

- (void)_cancelInactivityTimer
{
  inactivityTimer = self->_inactivityTimer;
  if (inactivityTimer)
  {
    dispatch_source_cancel(inactivityTimer);
    v4 = self->_inactivityTimer;
    self->_inactivityTimer = 0;
  }
}

- (void)_pulseActiveClock
{
  activeClock = self->_activeClock;
  if (activeClock)
  {
    clockStatistics = [(SiriAnalyticsLogicalClock *)activeClock clockStatistics];
    if ([clockStatistics messagesEmitted])
    {
      clockStatistics2 = [(SiriAnalyticsLogicalClock *)self->_activeClock clockStatistics];
      bookkeepingDirtied = [clockStatistics2 bookkeepingDirtied];

      if (!bookkeepingDirtied)
      {
        return;
      }

      logicalClocks = self->_logicalClocks;
      clockIdentifier = [(SiriAnalyticsLogicalClock *)self->_activeClock clockIdentifier];
      clockStatistics3 = [(SiriAnalyticsLogicalClock *)self->_activeClock clockStatistics];
      -[SiriAnalyticsLogicalClocksProvider pulseClock:lastEventOn:](logicalClocks, "pulseClock:lastEventOn:", clockIdentifier, [clockStatistics3 lastMessageEmittedOn]);

      clockStatistics = [(SiriAnalyticsLogicalClock *)self->_activeClock clockStatistics];
      [clockStatistics setBookkeepingDirtied:0];
    }
  }
}

- (void)_startInactivityTimer
{
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  inactivityTimer = self->_inactivityTimer;
  self->_inactivityTimer = v3;

  v5 = self->_inactivityTimer;
  v6 = dispatch_time(0, (self->_maximumInactivityInterval * 1000000000.0));
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(&location, self);
  v7 = self->_inactivityTimer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SiriAnalyticsWhiteRose__startInactivityTimer__block_invoke;
  v8[3] = &unk_1E8587940;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(self->_inactivityTimer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)debounceFired:(id)fired maximumReached:(BOOL)reached
{
  if (self->_clockPulse == fired)
  {
    [(SiriAnalyticsWhiteRose *)self _pulseActiveClock];
  }
}

- (void)createTag:(id)tag completion:(id)completion
{
  tagCopy = tag;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__SiriAnalyticsWhiteRose_createTag_completion___block_invoke;
  aBlock[3] = &unk_1E8587148;
  v17 = completionCopy;
  v8 = completionCopy;
  v9 = _Block_copy(aBlock);
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SiriAnalyticsWhiteRose_createTag_completion___block_invoke_2;
  v13[3] = &unk_1E8587CE0;
  v13[4] = self;
  v14 = tagCopy;
  v15 = v9;
  v11 = v9;
  v12 = tagCopy;
  dispatch_async(queue, v13);
}

uint64_t __47__SiriAnalyticsWhiteRose_createTag_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void __47__SiriAnalyticsWhiteRose_createTag_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SiriAnalyticsWhiteRose_createTag_completion___block_invoke_3;
  v6[3] = &unk_1E8587170;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v2 _ensureActiveClockStartingAt:v3 completion:v6];
}

void __47__SiriAnalyticsWhiteRose_createTag_completion___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  if (v3)
  {
    v4 = *(a1[5] + 64);
    v5 = [a2 clockIdentifier];
    v7 = [v4 createTagWithShim:v3 onClock:v5];

    (*(a1[6] + 16))(a1[6], v7 != 0);
  }

  else
  {
    v6 = *(a1[6] + 16);

    v6();
  }
}

- (void)sensitiveCondition:(int)condition endedAt:(unint64_t)at ensureClockExists:(BOOL)exists completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__SiriAnalyticsWhiteRose_sensitiveCondition_endedAt_ensureClockExists_completion___block_invoke;
  aBlock[3] = &unk_1E8587350;
  v21 = completionCopy;
  v11 = completionCopy;
  v12 = _Block_copy(aBlock);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__SiriAnalyticsWhiteRose_sensitiveCondition_endedAt_ensureClockExists_completion___block_invoke_2;
  block[3] = &unk_1E8587120;
  existsCopy = exists;
  block[4] = self;
  v16 = v12;
  atCopy = at;
  conditionCopy = condition;
  v14 = v12;
  dispatch_async(queue, block);
}

uint64_t __82__SiriAnalyticsWhiteRose_sensitiveCondition_endedAt_ensureClockExists_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __82__SiriAnalyticsWhiteRose_sensitiveCondition_endedAt_ensureClockExists_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(a1 + 60) & 1) != 0 || v2[3])
  {
    v3 = *(a1 + 48);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __82__SiriAnalyticsWhiteRose_sensitiveCondition_endedAt_ensureClockExists_completion___block_invoke_9;
    v5[3] = &unk_1E85870F8;
    v8 = *(a1 + 56);
    v7 = v3;
    v6 = *(a1 + 40);
    [v2 _ensureActiveClockStartingAt:v3 completion:v5];
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v4 = SiriAnalyticsLogContextTime;
    if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[SiriAnalyticsWhiteRose sensitiveCondition:endedAt:ensureClockExists:completion:]_block_invoke_2";
      _os_log_impl(&dword_1D9863000, v4, OS_LOG_TYPE_INFO, "%s No active clock exists, ignoring sensitiveCondition", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __82__SiriAnalyticsWhiteRose_sensitiveCondition_endedAt_ensureClockExists_completion___block_invoke_9(uint64_t a1, void *a2)
{
  [a2 sensitiveCondition:*(a1 + 48) endedAt:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)sensitiveCondition:(int)condition startedAt:(unint64_t)at ensureClockExists:(BOOL)exists completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__SiriAnalyticsWhiteRose_sensitiveCondition_startedAt_ensureClockExists_completion___block_invoke;
  aBlock[3] = &unk_1E8587350;
  v21 = completionCopy;
  v11 = completionCopy;
  v12 = _Block_copy(aBlock);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__SiriAnalyticsWhiteRose_sensitiveCondition_startedAt_ensureClockExists_completion___block_invoke_2;
  block[3] = &unk_1E8587120;
  existsCopy = exists;
  block[4] = self;
  v16 = v12;
  atCopy = at;
  conditionCopy = condition;
  v14 = v12;
  dispatch_async(queue, block);
}

uint64_t __84__SiriAnalyticsWhiteRose_sensitiveCondition_startedAt_ensureClockExists_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __84__SiriAnalyticsWhiteRose_sensitiveCondition_startedAt_ensureClockExists_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(a1 + 60) & 1) != 0 || v2[3])
  {
    v3 = *(a1 + 48);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __84__SiriAnalyticsWhiteRose_sensitiveCondition_startedAt_ensureClockExists_completion___block_invoke_8;
    v5[3] = &unk_1E85870F8;
    v8 = *(a1 + 56);
    v7 = v3;
    v6 = *(a1 + 40);
    [v2 _ensureActiveClockStartingAt:v3 completion:v5];
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v4 = SiriAnalyticsLogContextTime;
    if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[SiriAnalyticsWhiteRose sensitiveCondition:startedAt:ensureClockExists:completion:]_block_invoke_2";
      _os_log_impl(&dword_1D9863000, v4, OS_LOG_TYPE_INFO, "%s No active clock exists, ignoring sensitiveCondition", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __84__SiriAnalyticsWhiteRose_sensitiveCondition_startedAt_ensureClockExists_completion___block_invoke_8(uint64_t a1, void *a2)
{
  [a2 sensitiveCondition:*(a1 + 48) startedAt:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)_maximumClockLifeExpired
{
  v11 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
  {
    activeClock = self->_activeClock;
    v5 = v3;
    clockIdentifier = [(SiriAnalyticsLogicalClock *)activeClock clockIdentifier];
    v7 = 136315394;
    v8 = "[SiriAnalyticsWhiteRose _maximumClockLifeExpired]";
    v9 = 2112;
    v10 = clockIdentifier;
    _os_log_impl(&dword_1D9863000, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  [(SiriAnalyticsWhiteRose *)self _destroyActiveClockWithReason:2 completion:0];
}

- (void)_cancelMaximumClockLifeTimer
{
  v13 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_DEBUG))
  {
    activeClock = self->_activeClock;
    v7 = v3;
    clockIdentifier = [(SiriAnalyticsLogicalClock *)activeClock clockIdentifier];
    v9 = 136315394;
    v10 = "[SiriAnalyticsWhiteRose _cancelMaximumClockLifeTimer]";
    v11 = 2112;
    v12 = clockIdentifier;
    _os_log_debug_impl(&dword_1D9863000, v7, OS_LOG_TYPE_DEBUG, "%s %@", &v9, 0x16u);
  }

  maximumClockLifeTimer = self->_maximumClockLifeTimer;
  if (maximumClockLifeTimer)
  {
    dispatch_source_cancel(maximumClockLifeTimer);
    v5 = self->_maximumClockLifeTimer;
    self->_maximumClockLifeTimer = 0;
  }
}

- (void)_startMaximumClockLifeTimer
{
  v18 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
  {
    activeClock = self->_activeClock;
    v5 = v3;
    clockIdentifier = [(SiriAnalyticsLogicalClock *)activeClock clockIdentifier];
    *buf = 136315394;
    v15 = "[SiriAnalyticsWhiteRose _startMaximumClockLifeTimer]";
    v16 = 2112;
    v17 = clockIdentifier;
    _os_log_impl(&dword_1D9863000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  maximumClockLifeTimer = self->_maximumClockLifeTimer;
  self->_maximumClockLifeTimer = v7;

  v9 = self->_maximumClockLifeTimer;
  v10 = dispatch_time(0, (self->_maximumClockLifeInterval * 1000000000.0));
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(buf, self);
  v11 = self->_maximumClockLifeTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __53__SiriAnalyticsWhiteRose__startMaximumClockLifeTimer__block_invoke;
  handler[3] = &unk_1E8587940;
  objc_copyWeak(&v13, buf);
  dispatch_source_set_event_handler(v11, handler);
  dispatch_resume(self->_maximumClockLifeTimer);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __53__SiriAnalyticsWhiteRose__startMaximumClockLifeTimer__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _maximumClockLifeExpired];

  objc_autoreleasePoolPop(v2);
}

- (void)_inactivityTimerElapsed
{
  v11 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
  {
    activeClock = self->_activeClock;
    v5 = v3;
    clockIdentifier = [(SiriAnalyticsLogicalClock *)activeClock clockIdentifier];
    v7 = 136315394;
    v8 = "[SiriAnalyticsWhiteRose _inactivityTimerElapsed]";
    v9 = 2112;
    v10 = clockIdentifier;
    _os_log_impl(&dword_1D9863000, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  [(SiriAnalyticsWhiteRose *)self _destroyActiveClockWithReason:1 completion:0];
}

void __47__SiriAnalyticsWhiteRose__startInactivityTimer__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _inactivityTimerElapsed];

  objc_autoreleasePoolPop(v2);
}

- (void)_destroyActiveClockWithReason:(unint64_t)reason completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  clockIdentifier = [(SiriAnalyticsLogicalClock *)self->_activeClock clockIdentifier];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v8 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[SiriAnalyticsWhiteRose _destroyActiveClockWithReason:completion:]";
    v18 = 2112;
    v19 = clockIdentifier;
    _os_log_impl(&dword_1D9863000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  activeClock = self->_activeClock;
  if (activeClock)
  {
    [(SiriAnalyticsLogicalClock *)activeClock stopClock];
    v10 = self->_activeClock;
    v11 = self->_activeClock;
    self->_activeClock = 0;
  }

  else
  {
    v10 = 0;
  }

  [(SiriAnalyticsWhiteRose *)self _cancelInactivityTimer];
  [(SiriAnalyticsWhiteRose *)self _cancelMaximumClockLifeTimer];
  [(SiriAnalyticsWhiteRose *)self _pulseActiveClock];
  [(SiriAnalyticsDebounce *)self->_clockPulse cancel];
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__SiriAnalyticsWhiteRose__destroyActiveClockWithReason_completion___block_invoke;
    v13[3] = &unk_1E8587C90;
    v15 = completionCopy;
    v14 = clockIdentifier;
    [WeakRetained whiteRose:self rootClockDestroyed:v10 reason:reason completion:v13];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, clockIdentifier);
  }
}

uint64_t __67__SiriAnalyticsWhiteRose__destroyActiveClockWithReason_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)destroyActiveClockWithReason:(unint64_t)reason completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SiriAnalyticsWhiteRose_destroyActiveClockWithReason_completion___block_invoke;
  block[3] = &unk_1E85870D0;
  v10 = completionCopy;
  reasonCopy = reason;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)_ensureActiveClockStartingAt:(unint64_t)at completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  p_activeClock = &self->_activeClock;
  activeClock = self->_activeClock;
  if (activeClock)
  {
    clockStatistics = [(SiriAnalyticsLogicalClock *)activeClock clockStatistics];
    startedOn = [clockStatistics startedOn];

    if (startedOn > at)
    {
      if (SiriAnalyticsLoggingInit_once != -1)
      {
        dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
      }

      v11 = SiriAnalyticsLogContextTime;
      if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_DEBUG))
      {
        v22 = *p_activeClock;
        v23 = v11;
        clockIdentifier = [v22 clockIdentifier];
        clockStatistics2 = [*p_activeClock clockStatistics];
        *buf = 136315906;
        v30 = "[SiriAnalyticsWhiteRose _ensureActiveClockStartingAt:completion:]";
        v31 = 2112;
        v32 = clockIdentifier;
        v33 = 2048;
        atCopy2 = [clockStatistics2 startedOn];
        v35 = 2048;
        atCopy = at;
        _os_log_debug_impl(&dword_1D9863000, v23, OS_LOG_TYPE_DEBUG, "%s Backdating root clock: %@ start from: %lu to: %lu", buf, 0x2Au);
      }

      clockStatistics3 = [*p_activeClock clockStatistics];
      [clockStatistics3 setStartedOn:at];
    }

    (completionCopy)[2](completionCopy, *p_activeClock);
  }

  else
  {
    v13 = [SiriAnalyticsRootClock alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v15 = [(SiriAnalyticsRootClock *)v13 initWithClockIdentifier:uUID timestampOffset:0 startedOn:at metastore:self->_metastore];

    objc_storeStrong(&self->_activeClock, v15);
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v16 = SiriAnalyticsLogContextTime;
    if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
    {
      v17 = *p_activeClock;
      v18 = v16;
      clockIdentifier2 = [v17 clockIdentifier];
      *buf = 136315650;
      v30 = "[SiriAnalyticsWhiteRose _ensureActiveClockStartingAt:completion:]";
      v31 = 2112;
      v32 = clockIdentifier2;
      v33 = 2048;
      atCopy2 = at;
      _os_log_impl(&dword_1D9863000, v18, OS_LOG_TYPE_INFO, "%s Created primary clock: %@, starting on: %lu", buf, 0x20u);
    }

    [(SiriAnalyticsWhiteRose *)self _startMaximumClockLifeTimer];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __66__SiriAnalyticsWhiteRose__ensureActiveClockStartingAt_completion___block_invoke;
    v26[3] = &unk_1E8587CE0;
    v26[4] = self;
    v27 = v15;
    v28 = completionCopy;
    v21 = v15;
    [WeakRetained whiteRose:self willCreateRootClock:v21 completion:v26];
  }
}

void __66__SiriAnalyticsWhiteRose__ensureActiveClockStartingAt_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SiriAnalyticsWhiteRose__ensureActiveClockStartingAt_completion___block_invoke_2;
  block[3] = &unk_1E8587CE0;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t __66__SiriAnalyticsWhiteRose__ensureActiveClockStartingAt_completion___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  [WeakRetained whiteRose:a1[4] rootClockCreated:a1[5]];

  v3 = *(a1[6] + 16);

  return v3();
}

- (void)markTimeForAnnotatedMessages:(id)messages completion:(id)completion
{
  messagesCopy = messages;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SiriAnalyticsWhiteRose_markTimeForAnnotatedMessages_completion___block_invoke;
  block[3] = &unk_1E8587CE0;
  block[4] = self;
  v12 = messagesCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = messagesCopy;
  dispatch_async(queue, block);
}

void __66__SiriAnalyticsWhiteRose_markTimeForAnnotatedMessages_completion___block_invoke(id *a1)
{
  [a1[4] _cancelInactivityTimer];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1[5], "count")}];
  v3 = a1[4];
  v4 = mach_absolute_time();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__SiriAnalyticsWhiteRose_markTimeForAnnotatedMessages_completion___block_invoke_2;
  v8[3] = &unk_1E85870A8;
  v5 = a1[5];
  v6 = a1[4];
  v9 = v5;
  v10 = v6;
  v11 = v2;
  v12 = a1[6];
  v7 = v2;
  [v3 _ensureActiveClockStartingAt:v4 completion:v8];
}

void __66__SiriAnalyticsWhiteRose_markTimeForAnnotatedMessages_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(a1 + 40) markTimeForAnnotatedMessage:*(*(&v10 + 1) + 8 * v8) withRootClock:{v3, v10}];
        if (v9)
        {
          [*(a1 + 48) addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) _startInactivityTimer];
  (*(*(a1 + 56) + 16))();
}

- (id)markTimeForAnnotatedMessage:(id)message withRootClock:(id)clock
{
  v37 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  clockCopy = clock;
  timestamp = [messageCopy timestamp];
  clockStatistics = [clockCopy clockStatistics];
  startedOn = [clockStatistics startedOn];

  if (timestamp < startedOn)
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v11 = SiriAnalyticsLogContextTime;
    if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_DEBUG))
    {
      v26 = v11;
      clockIdentifier = [clockCopy clockIdentifier];
      clockStatistics2 = [clockCopy clockStatistics];
      v29 = 136315906;
      v30 = "[SiriAnalyticsWhiteRose markTimeForAnnotatedMessage:withRootClock:]";
      v31 = 2112;
      v32 = clockIdentifier;
      v33 = 2048;
      startedOn2 = [clockStatistics2 startedOn];
      v35 = 2048;
      timestamp2 = [messageCopy timestamp];
      _os_log_debug_impl(&dword_1D9863000, v26, OS_LOG_TYPE_DEBUG, "%s Backdating root clock: %@ start from: %lu to: %lu", &v29, 0x2Au);
    }

    clockStatistics3 = [clockCopy clockStatistics];
    [clockStatistics3 setStartedOn:{objc_msgSend(messageCopy, "timestamp")}];
  }

  streamUUID = [messageCopy streamUUID];

  v14 = clockCopy;
  if (streamUUID)
  {
    streamUUID2 = [messageCopy streamUUID];
    v16 = [clockCopy isTrackingDerivativeClockByStreamUUID:streamUUID2];

    streamUUID3 = [messageCopy streamUUID];
    v14 = [clockCopy derivativeClockForStreamUUID:streamUUID3];

    if ((v16 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained whiteRose:self derivativeClockCreated:v14 rootClock:clockCopy];
    }
  }

  v19 = [v14 logicalTimestampForMachAbsoluteTime:{objc_msgSend(messageCopy, "timestamp")}];
  v20 = [SiriAnalyticsMessage alloc];
  messageUUID = [messageCopy messageUUID];
  message = [messageCopy message];
  v23 = [(SiriAnalyticsMessage *)v20 initWithMessageUUID:messageUUID logicalTimestamp:v19 underlying:message];

  clockStatistics4 = [v14 clockStatistics];
  [clockStatistics4 noteMessageEmitted];

  [(SiriAnalyticsDebounce *)self->_clockPulse pulse];

  return v23;
}

- (void)bootstrapWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SiriAnalyticsWhiteRose_bootstrapWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __50__SiriAnalyticsWhiteRose_bootstrapWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v2 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[SiriAnalyticsWhiteRose bootstrapWithCompletion:]_block_invoke";
    _os_log_debug_impl(&dword_1D9863000, v2, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v3 = [*(*(a1 + 32) + 24) clockIdentifier];
  v4 = *(*(a1 + 32) + 88);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__SiriAnalyticsWhiteRose_bootstrapWithCompletion___block_invoke_1;
  v5[3] = &unk_1E8587C18;
  v6 = *(a1 + 40);
  [v4 cleanupAbandonedClocksWithActiveClockIdentifier:v3 completionHandler:v5];
}

uint64_t __50__SiriAnalyticsWhiteRose_bootstrapWithCompletion___block_invoke_1(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (SiriAnalyticsWhiteRose)initWithQueue:(id)queue delegate:(id)delegate metastore:(id)metastore logicalClocks:(id)clocks
{
  queueCopy = queue;
  delegateCopy = delegate;
  metastoreCopy = metastore;
  clocksCopy = clocks;
  v20.receiver = self;
  v20.super_class = SiriAnalyticsWhiteRose;
  v15 = [(SiriAnalyticsWhiteRose *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    objc_storeStrong(&v16->_metastore, metastore);
    objc_storeStrong(&v16->_logicalClocks, clocks);
    v16->_maximumInactivityInterval = 300.0;
    v16->_maximumClockLifeInterval = 900.0;
    v17 = [[SiriAnalyticsDebounce alloc] initWithDebounceInterval:v16->_queue maximumInterval:v16 queue:20.0 delegate:30.0];
    clockPulse = v16->_clockPulse;
    v16->_clockPulse = v17;
  }

  return v16;
}

@end