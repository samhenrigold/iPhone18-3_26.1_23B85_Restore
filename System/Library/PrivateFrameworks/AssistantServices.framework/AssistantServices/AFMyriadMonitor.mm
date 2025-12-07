@interface AFMyriadMonitor
+ (id)sharedMonitor;
- (AFMyriadMonitor)init;
- (BOOL)didWin;
- (BOOL)isMonitoring;
- (id)_fetchCurrentMyriadDecisionWithWaitTime:(double)time;
- (id)_myriadStateToString:(int64_t)string;
- (void)_cancelRepostedMyriadDecisionTimer;
- (void)_clear;
- (void)_dequeueBlocksWithSignal:(int64_t)signal;
- (void)_deregisterFromMyriadEventNotifications;
- (void)_deregisterFromRepostedDecisionResultsObservers;
- (void)_enqueueBlock:(id)block forReason:(id)reason;
- (void)_flushCompletions:(BOOL)completions;
- (void)_ignoreRepostMyriadNotification:(BOOL)notification;
- (void)_registerForMyriadEvents;
- (void)_resultSeenWithValue:(BOOL)value;
- (void)_setDecisionIsPending;
- (void)dealloc;
- (void)dequeueBlocksWaitingForMyriadDecision;
- (void)ignoreMyriadEvents:(BOOL)events;
- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to;
- (void)notifyObserver:(id)observer didReceiveNotificationWithToken:(int)token;
- (void)startMonitoringWithTimeoutInterval:(double)interval instanceContext:(id)context;
- (void)stopMonitoring;
- (void)waitForMyriadDecisionForReason:(id)reason withCompletion:(id)completion;
- (void)waitForMyriadDecisionWithCompletion:(id)completion;
@end

@implementation AFMyriadMonitor

- (void)_ignoreRepostMyriadNotification:(BOOL)notification
{
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__AFMyriadMonitor__ignoreRepostMyriadNotification___block_invoke;
  v4[3] = &unk_1E7347F98;
  v4[4] = self;
  notificationCopy = notification;
  dispatch_sync(myriadMonitorQueue, v4);
}

- (void)_resultSeenWithValue:(BOOL)value
{
  valueCopy = value;
  v13 = *MEMORY[0x1E69E9840];
  if (value)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  self->_state = v5;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [(AFMyriadMonitor *)self _myriadStateToString:v5];
    v9 = 136315394;
    v10 = "[AFMyriadMonitor _resultSeenWithValue:]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s Myriad decision seen: state is %@.", &v9, 0x16u);
  }

  [(AFMyriadMonitor *)self _flushCompletions:valueCopy];
}

- (void)_flushCompletions:(BOOL)completions
{
  if (completions)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1000;
  }

  [(AFMyriadMonitor *)self _dequeueBlocksWithSignal:v4];
  timer = self->_timer;

  [(AFWatchdogTimer *)timer cancelIfNotAlreadyCanceled];
}

- (void)_clear
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    state = self->_state;
    v5 = v3;
    v6 = [(AFMyriadMonitor *)self _myriadStateToString:state];
    v7 = 136315394;
    v8 = "[AFMyriadMonitor _clear]";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Clear pending for Myriad decision: %@.", &v7, 0x16u);
  }

  self->_state = 0;
  [(AFMyriadMonitor *)self _flushCompletions:0];
}

- (void)_dequeueBlocksWithSignal:(int64_t)signal
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    completions = self->_completions;
    v7 = v5;
    *buf = 136315394;
    v20 = "[AFMyriadMonitor _dequeueBlocksWithSignal:]";
    v21 = 1024;
    v22 = [(AFQueue *)completions count];
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s Myriad decision had %d block(s) waiting", buf, 0x12u);
  }

  if ([(AFQueue *)self->_completions count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_completions;
    v9 = [(AFQueue *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12++) invokeWithSignal:{signal, v14}];
        }

        while (v10 != v12);
        v10 = [(AFQueue *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    dequeueAllObjects = [(AFQueue *)self->_completions dequeueAllObjects];
  }
}

- (void)_setDecisionIsPending
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (self->_state == 1)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[AFMyriadMonitor _setDecisionIsPending]";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Myriad decision is already in pending state.", buf, 0xCu);
      v3 = AFSiriLogContextConnection;
    }

    timer = self->_timer;
    if (timer)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v14 = "[AFMyriadMonitor _setDecisionIsPending]";
        _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Myriad monitor cancelling existing watch dog timer.", buf, 0xCu);
        timer = self->_timer;
      }

      [(AFWatchdogTimer *)timer cancel];
      v5 = self->_timer;
      self->_timer = 0;

      v3 = AFSiriLogContextConnection;
    }
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[AFMyriadMonitor _setDecisionIsPending]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Myriad decision is pending.", buf, 0xCu);
    v3 = AFSiriLogContextConnection;
  }

  self->_state = 1;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    myriadEventMonitorTimeout = self->_myriadEventMonitorTimeout;
    *buf = 136315394;
    v14 = "[AFMyriadMonitor _setDecisionIsPending]";
    v15 = 2048;
    v16 = myriadEventMonitorTimeout;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Myriad monitor initializing safety timer with timeout: %f seconds", buf, 0x16u);
  }

  v7 = [AFWatchdogTimer alloc];
  v8 = self->_myriadEventMonitorTimeout;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__AFMyriadMonitor__setDecisionIsPending__block_invoke;
  v12[3] = &unk_1E73497C8;
  v12[4] = self;
  v10 = [(AFWatchdogTimer *)v7 initWithTimeoutInterval:myriadMonitorQueue onQueue:v12 timeoutHandler:v8];
  v11 = self->_timer;
  self->_timer = v10;

  [(AFWatchdogTimer *)self->_timer start];
}

void *__40__AFMyriadMonitor__setDecisionIsPending__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[AFMyriadMonitor _setDecisionIsPending]_block_invoke";
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s Myriad monitor times out, Myriad is probably unable to finish, clear pending blocks", &v4, 0xCu);
  }

  result = *(a1 + 32);
  if (result[1] == 1)
  {
    [result _deregisterFromRepostedDecisionResultsObservers];
    return [*(a1 + 32) _clear];
  }

  return result;
}

- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to
{
  v19 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = 136315906;
    v12 = "[AFMyriadMonitor notifyObserver:didChangeStateFrom:to:]";
    v13 = 2048;
    v14 = observerCopy;
    v15 = 2048;
    fromCopy = from;
    v17 = 2048;
    toCopy = to;
    _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s notifyObserver %p didChangeStateFrom %ld -> %ld", &v11, 0x2Au);
  }

  if (!from && self->_repostedWonObserver == observerCopy)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.get.decision", 0, 0, 1u);
  }
}

- (void)notifyObserver:(id)observer didReceiveNotificationWithToken:(int)token
{
  v14 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  name = [(AFNotifyObserver *)observerCopy name];
  if (self->_wonObserver == observerCopy)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v13 = 136315394;
      *&v13[4] = "[AFMyriadMonitor notifyObserver:didReceiveNotificationWithToken:]";
      *&v13[12] = 2112;
      *&v13[14] = name;
      v8 = "%s Myriad Delay Monitor result: YES (%@)";
      goto LABEL_9;
    }

LABEL_10:
    selfCopy2 = self;
    v10 = 1;
LABEL_14:
    [(AFMyriadMonitor *)selfCopy2 _resultSeenWithValue:v10, *v13, *&v13[8], v14];
LABEL_15:
    [(AFMyriadMonitor *)self _deregisterFromRepostedDecisionResultsObservers];
    goto LABEL_16;
  }

  if (self->_lostObserver == observerCopy)
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v13 = 136315394;
      *&v13[4] = "[AFMyriadMonitor notifyObserver:didReceiveNotificationWithToken:]";
      *&v13[12] = 2112;
      *&v13[14] = name;
      _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor result: NO (%@)", v13, 0x16u);
    }

    selfCopy2 = self;
    v10 = 0;
    goto LABEL_14;
  }

  if (self->_beginObserver == observerCopy)
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v13 = 136315394;
      *&v13[4] = "[AFMyriadMonitor notifyObserver:didReceiveNotificationWithToken:]";
      *&v13[12] = 2112;
      *&v13[14] = name;
      _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor Begin (%@)", v13, 0x16u);
    }

    [(AFMyriadMonitor *)self _setDecisionIsPending];
    goto LABEL_15;
  }

  if (self->_repostedWonObserver == observerCopy)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v13 = 136315394;
      *&v13[4] = "[AFMyriadMonitor notifyObserver:didReceiveNotificationWithToken:]";
      *&v13[12] = 2112;
      *&v13[14] = name;
      v8 = "%s Myriad Delay Monitor received reposted result: YES (%@)";
LABEL_9:
      _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, v8, v13, 0x16u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_16:
}

- (void)_deregisterFromRepostedDecisionResultsObservers
{
  v8 = *MEMORY[0x1E69E9840];
  [(AFMyriadMonitor *)self _cancelRepostedMyriadDecisionTimer];
  repostedWonObserver = self->_repostedWonObserver;
  if (repostedWonObserver)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[AFMyriadMonitor _deregisterFromRepostedDecisionResultsObservers]";
      _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Deregistering from reposted Myriad event notification.", &v6, 0xCu);
      repostedWonObserver = self->_repostedWonObserver;
    }

    [(AFNotifyObserver *)repostedWonObserver invalidate];
    v5 = self->_repostedWonObserver;
    self->_repostedWonObserver = 0;
  }
}

- (void)_deregisterFromMyriadEventNotifications
{
  v10 = *MEMORY[0x1E69E9840];
  beginObserver = self->_beginObserver;
  if (*&self->_beginObserver != 0 || self->_lostObserver)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[AFMyriadMonitor _deregisterFromMyriadEventNotifications]";
      _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Deregistering from Myriad event notifications.", &v8, 0xCu);
      beginObserver = self->_beginObserver;
    }

    [(AFNotifyObserver *)beginObserver invalidate];
    v5 = self->_beginObserver;
    self->_beginObserver = 0;

    [(AFNotifyObserver *)self->_wonObserver invalidate];
    wonObserver = self->_wonObserver;
    self->_wonObserver = 0;

    [(AFNotifyObserver *)self->_lostObserver invalidate];
    lostObserver = self->_lostObserver;
    self->_lostObserver = 0;

    self->_isRegisteredForMyriadEventNotification = 0;
    [(AFMyriadMonitor *)self _deregisterFromRepostedDecisionResultsObservers];
  }
}

- (id)_fetchCurrentMyriadDecisionWithWaitTime:(double)time
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_ignoreRepostMyriadNotification)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[AFMyriadMonitor _fetchCurrentMyriadDecisionWithWaitTime:]";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Ignoring Myriad repost notifications.", buf, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    v7 = [AFWatchdogTimer alloc];
    myriadMonitorQueue = self->_myriadMonitorQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__AFMyriadMonitor__fetchCurrentMyriadDecisionWithWaitTime___block_invoke;
    v10[3] = &unk_1E73497C8;
    v10[4] = self;
    v4 = [(AFWatchdogTimer *)v7 initWithTimeoutInterval:myriadMonitorQueue onQueue:v10 timeoutHandler:time];
  }

  return v4;
}

void __59__AFMyriadMonitor__fetchCurrentMyriadDecisionWithWaitTime___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1 && (*(v1 + 97) & 1) == 0 && *(v1 + 56))
  {
    v2 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[AFMyriadMonitor _fetchCurrentMyriadDecisionWithWaitTime:]_block_invoke";
      _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Fetching reposted Myriad event notification.", &v4, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.get.decision", 0, 0, 1u);
  }
}

- (void)_cancelRepostedMyriadDecisionTimer
{
  fetchRepostedMyriadDecisionTimer = self->_fetchRepostedMyriadDecisionTimer;
  if (fetchRepostedMyriadDecisionTimer)
  {
    [(AFWatchdogTimer *)fetchRepostedMyriadDecisionTimer cancelIfNotAlreadyCanceled];
    v4 = self->_fetchRepostedMyriadDecisionTimer;
    self->_fetchRepostedMyriadDecisionTimer = 0;
  }
}

- (void)_registerForMyriadEvents
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = observerWithNotificationName("com.apple.siri.myriad.decision.begin", self->_instanceContext, 1, self, self->_myriadMonitorQueue);
  beginObserver = self->_beginObserver;
  self->_beginObserver = v3;

  v5 = observerWithNotificationName("com.apple.siri.myriad.decision.won", self->_instanceContext, 1, self, self->_myriadMonitorQueue);
  wonObserver = self->_wonObserver;
  self->_wonObserver = v5;

  v7 = observerWithNotificationName("com.apple.siri.myriad.decision.lost", self->_instanceContext, 1, self, self->_myriadMonitorQueue);
  lostObserver = self->_lostObserver;
  self->_lostObserver = v7;

  v9 = observerWithNotificationName("com.apple.siri.myriad.repost.decision.won", self->_instanceContext, 1, self, self->_myriadMonitorQueue);
  repostedWonObserver = self->_repostedWonObserver;
  self->_repostedWonObserver = v9;

  self->_isRegisteredForMyriadEventNotification = 1;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v12 = self->_beginObserver;
    v13 = self->_wonObserver;
    v14 = self->_lostObserver;
    v15 = self->_repostedWonObserver;
    v16 = 136316162;
    v17 = "[AFMyriadMonitor _registerForMyriadEvents]";
    v18 = 2048;
    v19 = v12;
    v20 = 2048;
    v21 = v13;
    v22 = 2048;
    v23 = v14;
    v24 = 2048;
    v25 = v15;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Registering for Myriad event notifications (beginObserver: %p, wonObserver: %p, lostObserver: %p, decisionRepostObserver: %p).", &v16, 0x34u);
  }
}

- (id)_myriadStateToString:(int64_t)string
{
  if (string > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E73439E0[string];
  }
}

- (void)dealloc
{
  [(AFNotifyObserver *)self->_wonObserver invalidate];
  [(AFNotifyObserver *)self->_lostObserver invalidate];
  v3.receiver = self;
  v3.super_class = AFMyriadMonitor;
  [(AFMyriadMonitor *)&v3 dealloc];
}

- (BOOL)didWin
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__AFMyriadMonitor_didWin__block_invoke;
  v5[3] = &unk_1E7349810;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(myriadMonitorQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __25__AFMyriadMonitor_didWin__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = v2 == 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v1 + 97);
  }

  *(*(*(result + 40) + 8) + 24) = v4 & 1;
  return result;
}

- (BOOL)isMonitoring
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__AFMyriadMonitor_isMonitoring__block_invoke;
  v5[3] = &unk_1E7349810;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(myriadMonitorQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)stopMonitoring
{
  myriadMonitorQueue = self->_myriadMonitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__AFMyriadMonitor_stopMonitoring__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(myriadMonitorQueue, block);
}

_BYTE *__33__AFMyriadMonitor_stopMonitoring__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 98) = 0;
  result = *(a1 + 32);
  if (result[96] == 1)
  {
    [result _deregisterFromMyriadEventNotifications];
    v3 = *(a1 + 32);

    return [v3 _clear];
  }

  return result;
}

- (void)dequeueBlocksWaitingForMyriadDecision
{
  myriadMonitorQueue = self->_myriadMonitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AFMyriadMonitor_dequeueBlocksWaitingForMyriadDecision__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(myriadMonitorQueue, block);
}

uint64_t __56__AFMyriadMonitor_dequeueBlocksWaitingForMyriadDecision__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AFMyriadMonitor dequeueBlocksWaitingForMyriadDecision]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  return [*(a1 + 32) _dequeueBlocksWithSignal:-1000];
}

- (void)ignoreMyriadEvents:(BOOL)events
{
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__AFMyriadMonitor_ignoreMyriadEvents___block_invoke;
  v4[3] = &unk_1E7347F98;
  eventsCopy = events;
  v4[4] = self;
  dispatch_async(myriadMonitorQueue, v4);
}

void __38__AFMyriadMonitor_ignoreMyriadEvents___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[AFMyriadMonitor ignoreMyriadEvents:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Should ignoring Myriad events -> %d.", &v5, 0x12u);
  }

  v4 = *(a1 + 40);
  *(*(a1 + 32) + 97) = v4;
  if (v4 == 1)
  {
    [*(a1 + 32) _deregisterFromRepostedDecisionResultsObservers];
  }
}

- (void)startMonitoringWithTimeoutInterval:(double)interval instanceContext:(id)context
{
  contextCopy = context;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AFMyriadMonitor_startMonitoringWithTimeoutInterval_instanceContext___block_invoke;
  block[3] = &unk_1E73484C0;
  intervalCopy = interval;
  v10 = contextCopy;
  selfCopy = self;
  v8 = contextCopy;
  dispatch_async(myriadMonitorQueue, block);
}

void __70__AFMyriadMonitor_startMonitoringWithTimeoutInterval_instanceContext___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[AFMyriadMonitor startMonitoringWithTimeoutInterval:instanceContext:]_block_invoke";
    v11 = 2048;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE delay monitor watchdog timeout %f context %@", &v9, 0x20u);
  }

  *(*(a1 + 40) + 98) = 1;
  v5 = *(a1 + 40);
  if ((*(v5 + 96) & 1) == 0)
  {
    objc_storeStrong((v5 + 16), *(a1 + 32));
    *(*(a1 + 40) + 88) = *(a1 + 48);
    [*(a1 + 40) _registerForMyriadEvents];
    [*(a1 + 40) _setDecisionIsPending];
    [*(a1 + 40) _cancelRepostedMyriadDecisionTimer];
    v6 = [*(a1 + 40) _fetchCurrentMyriadDecisionWithWaitTime:1.75];
    v7 = *(a1 + 40);
    v8 = *(v7 + 72);
    *(v7 + 72) = v6;

    [*(*(a1 + 40) + 72) start];
  }
}

- (void)waitForMyriadDecisionForReason:(id)reason withCompletion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AFMyriadMonitor_waitForMyriadDecisionForReason_withCompletion___block_invoke;
  block[3] = &unk_1E73496E8;
  v12 = reasonCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = reasonCopy;
  v10 = completionCopy;
  dispatch_async(myriadMonitorQueue, block);
}

- (void)_enqueueBlock:(id)block forReason:(id)reason
{
  v32 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  reasonCopy = reason;
  v8 = reasonCopy;
  if (blockCopy)
  {
    v9 = @"Unspecified";
    if (reasonCopy)
    {
      v9 = reasonCopy;
    }

    v10 = v9;
    state = self->_state;
    if (state == 1 && !self->_ignoreMyriadEvents)
    {
      v15 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        v17 = [(AFMyriadMonitor *)self _myriadStateToString:1];
        *buf = 136315650;
        v27 = "[AFMyriadMonitor _enqueueBlock:forReason:]";
        v28 = 2112;
        v29 = v17;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&dword_1912FE000, v16, OS_LOG_TYPE_INFO, "%s Queueing command waiting for Myriad decision: %@ (reason = %@).", buf, 0x20u);
      }

      Current = CFAbsoluteTimeGetCurrent();
      completions = self->_completions;
      v20 = [AFSafetyBlock alloc];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __43__AFMyriadMonitor__enqueueBlock_forReason___block_invoke;
      v22[3] = &unk_1E73439C0;
      v25 = Current;
      v23 = v10;
      v24 = blockCopy;
      v21 = [(AFSafetyBlock *)v20 initWithBlock:v22];
      [(AFQueue *)completions enqueueObject:v21];
    }

    else
    {
      v12 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v13 = v12;
        v14 = [(AFMyriadMonitor *)self _myriadStateToString:state];
        *buf = 136315650;
        v27 = "[AFMyriadMonitor _enqueueBlock:forReason:]";
        v28 = 2112;
        v29 = v14;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s Dequeueing command for Myriad decision: %@ (reason = %@).", buf, 0x20u);
      }

      if (self->_ignoreMyriadEvents)
      {
        (*(blockCopy + 2))(blockCopy, 1);
      }

      else
      {
        (*(blockCopy + 2))(blockCopy, self->_state != 2);
      }
    }
  }
}

uint64_t __43__AFMyriadMonitor__enqueueBlock_forReason___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    v7 = *(a1 + 32);
    v9 = 136315906;
    v10 = "[AFMyriadMonitor _enqueueBlock:forReason:]_block_invoke";
    v11 = 2048;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2048;
    v16 = a2;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Dequeuing after %f seconds for Myriad decision (reason = %@) and dequeue signal %zd.", &v9, 0x2Au);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), a2 == 0);
}

- (void)waitForMyriadDecisionWithCompletion:(id)completion
{
  completionCopy = completion;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AFMyriadMonitor_waitForMyriadDecisionWithCompletion___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(myriadMonitorQueue, v7);
}

- (AFMyriadMonitor)init
{
  v12.receiver = self;
  v12.super_class = AFMyriadMonitor;
  v2 = [(AFMyriadMonitor *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);

    v6 = dispatch_queue_create("com.apple.assistant.myriad.delay_monitor", v5);
    myriadMonitorQueue = v3->_myriadMonitorQueue;
    v3->_myriadMonitorQueue = v6;

    v8 = objc_alloc_init(AFQueue);
    completions = v3->_completions;
    v3->_completions = v8;

    *&v3->_isRegisteredForMyriadEventNotification = 0;
    v10 = v3;
  }

  return v3;
}

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    dispatch_once(&sharedMonitor_onceToken, &__block_literal_global_11529);
  }

  v3 = sharedMonitor_sharedMonitor;

  return v3;
}

void __32__AFMyriadMonitor_sharedMonitor__block_invoke()
{
  v0 = objc_alloc_init(AFMyriadMonitor);
  v1 = sharedMonitor_sharedMonitor;
  sharedMonitor_sharedMonitor = v0;
}

@end