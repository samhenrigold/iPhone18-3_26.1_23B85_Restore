@interface FlowRefreshScheduler
+ (void)dumpState;
+ (void)refreshDataUsageMaxStale:(double)stale maxDelay:(double)delay logAs:(id)as callback:(id)callback;
- (FlowImmediateRefreshDelegate)delegate;
- (FlowRefreshScheduler)initWithQueue:(id)queue;
- (NSString)description;
- (id)getState;
- (int64_t)periodicRefreshDataUsageWithInterval:(double)interval maxStale:(double)stale maxDelay:(double)delay logAs:(id)as;
- (void)_generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
- (void)_refreshTimer;
- (void)addDelegate:(id)delegate;
- (void)cancelRefresh:(int64_t)refresh;
- (void)cancelTimer;
- (void)didPollFlowsAt:(double)at;
- (void)dumpState;
- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
- (void)recalculateTimer;
- (void)refreshDataUsageMaxStale:(double)stale maxDelay:(double)delay logAs:(id)as callback:(id)callback;
- (void)removeDelegate:(id)delegate;
- (void)setRepeatingTimer:(double)timer initialDelay:(double)delay;
@end

@implementation FlowRefreshScheduler

- (FlowImmediateRefreshDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_refreshTimer
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    timer = self->_timer;
    currentDutyCycle = self->_currentDutyCycle;
    minimumDutyCycle = self->_minimumDutyCycle;
    v11 = 134218496;
    v12 = timer;
    v13 = 2048;
    v14 = currentDutyCycle;
    v15 = 2048;
    v16 = minimumDutyCycle;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "RefreshScheduler, _refreshTimer %p, current cycle %.3f minimum %.3f", &v11, 0x20u);
  }

  v7 = self->_minimumDutyCycle;
  if (self->_currentDutyCycle != v7)
  {
    if (self->_timer)
    {
      [(FlowRefreshScheduler *)self cancelTimer];
      v7 = self->_minimumDutyCycle;
    }

    if (v7 > 0.0)
    {
      [(FlowRefreshScheduler *)self setRepeatingTimer:v7 initialDelay:v7];
      v8 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v9 = self->_timer;
        v10 = self->_minimumDutyCycle;
        v11 = 134218240;
        v12 = v9;
        v13 = 2048;
        v14 = v10;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "RefreshScheduler, _refreshTimer has new timer %p, current cycle %.3f", &v11, 0x16u);
      }
    }
  }
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  lastRefresh = self->_lastRefresh;
  if (lastRefresh <= 0.0)
  {
    v5 = @"0";
  }

  else
  {
    v5 = dateStringMillisecondsFromReferenceInterval(self->_lastRefresh);
  }

  scheduledExpiry = self->_scheduledExpiry;
  if (scheduledExpiry <= 0.0)
  {
    v7 = @"0";
  }

  else
  {
    v7 = dateStringMillisecondsFromReferenceInterval(self->_scheduledExpiry);
  }

  v8 = [v3 initWithFormat:@"FlowRefreshScheduler lastRefresh %@ scheduled %@ duty cycles current %.3f min %.3f seqno %lld in prog rep %d ss %d reqs %@ delegates %@", v5, v7, *&self->_currentDutyCycle, *&self->_minimumDutyCycle, self->_seqno, self->_inProgressRepeatingPoll, self->_inProgressSingleShotPoll, self->_requests, self->_delegates];
  if (scheduledExpiry > 0.0)
  {
  }

  if (lastRefresh > 0.0)
  {
  }

  return v8;
}

- (id)getState
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  numDidPollFlows = self->_numDidPollFlows;
  lastRefresh = self->_lastRefresh;
  if (lastRefresh <= 0.0)
  {
    v7 = @"0";
  }

  else
  {
    v7 = dateStringMillisecondsFromReferenceInterval(self->_lastRefresh);
  }

  scheduledExpiry = self->_scheduledExpiry;
  if (scheduledExpiry <= 0.0)
  {
    v9 = @"0";
  }

  else
  {
    v9 = dateStringMillisecondsFromReferenceInterval(self->_scheduledExpiry);
  }

  v10 = [v4 initWithFormat:@"numDidPoll %lld lastRefresh %@ scheduled %@ duty cycles current %.3f min %.3f seqno %lld in prog rep %d ss %d timer %@", numDidPollFlows, v7, v9, *&self->_currentDutyCycle, *&self->_minimumDutyCycle, self->_seqno, self->_inProgressRepeatingPoll, self->_inProgressSingleShotPoll, self->_timer];
  [v3 addObject:v10];

  if (scheduledExpiry > 0.0)
  {
  }

  if (lastRefresh > 0.0)
  {
  }

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Single shot calls total %lld, immediate-callback %lld no-delay %lld wait-timer %lld new-timer %lld no-timer %lld", self->_numSingleShotCalls, self->_numSingleShotImmediateCallbacks, self->_numSingleShotNoDelay, self->_numSingleShotWaitExistingTimer, self->_numSingleShotPossNewTimer, self->_numSingleShotNoExistingTimer];
  [v3 addObject:v11];

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Periodic calls %lld, cancels %lld invalid-cancels %lld expiries %lld", self->_numPeriodicCalls, self->_numPeriodicCancels, self->_numInvalidCancels, self->_numTimerExpiries];
  [v3 addObject:v12];

  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Timer immediate-speedups %lld delayed slowdowns %lld immediate-cancels %lld delayed-cancels-scheduled %lld run %lld", self->_numImmediateTimerSpeedups, self->_numDelayedTimerSlowdowns, self->_numImmediateTimerCancellations, self->_numDelayedTimerCancellationsScheduled, self->_numDelayedTimerCancellationsRun];
  [v3 addObject:v13];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v14 = self->_recentSingleShots;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v55;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v55 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v3 addObject:*(*(&v54 + 1) + 8 * i)];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v16);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v19 = self->_requests;
  v20 = [(NSMutableDictionary *)v19 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v51;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v51 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v50 + 1) + 8 * j);
        v25 = objc_alloc(MEMORY[0x277CCACA8]);
        v26 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:v24];
        v27 = [v25 initWithFormat:@"Request %@ is %@", v24, v26];
        [v3 addObject:v27];
      }

      v21 = [(NSMutableDictionary *)v19 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v21);
  }

  allKeys = [(NSMutableDictionary *)self->_delegates allKeys];
  v29 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v29;
  v30 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v47;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v46 + 1) + 8 * k);
        v35 = [(NSMutableDictionary *)self->_delegates objectForKeyedSubscript:v34];
        v36 = objc_opt_respondsToSelector();
        v37 = @"default ";
        if (v36)
        {
          v38 = objc_msgSend_didPollFlowsCallbackOrder(v35);
          v37 = @"last    ";
          if (v38 != 3)
          {
            v39 = objc_msgSend_didPollFlowsCallbackOrder(v35);
            v37 = @"first   ";
            if (v39 != 1)
            {
              v40 = objc_msgSend_didPollFlowsCallbackOrder(v35);
              v37 = @"unknown ";
              if (v40 == 2)
              {
                v37 = @"standard";
              }
            }
          }
        }

        v41 = MEMORY[0x277CCACA8];
        v42 = v37;
        v43 = [[v41 alloc] initWithFormat:@"Delegate %@ call order %@ is %@", v34, v42, v35];

        [v3 addObject:v43];
      }

      v31 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v31);
  }

  return v3;
}

- (void)dumpState
{
  v16 = *MEMORY[0x277D85DE8];
  getState = [(FlowRefreshScheduler *)self getState];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [getState countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(getState);
        }

        v7 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(*(&v9 + 1) + 8 * i);
          *buf = 138412290;
          v14 = v8;
          _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }
      }

      v4 = [getState countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v4);
  }
}

+ (void)dumpState
{
  sharedInstance = [self sharedInstance];
  [sharedInstance dumpState];
}

- (FlowRefreshScheduler)initWithQueue:(id)queue
{
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = FlowRefreshScheduler;
  v6 = [(FlowRefreshScheduler *)&v16 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requests = v6->_requests;
    v6->_requests = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    delegates = v6->_delegates;
    v6->_delegates = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    recentSingleShots = v6->_recentSingleShots;
    v6->_recentSingleShots = v11;

    objc_storeStrong(&v6->_queue, queue);
    [ManagedEventTransport setInfoProvider:v6 forId:16];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__FlowRefreshScheduler_initWithQueue___block_invoke;
    block[3] = &unk_27898A0C8;
    v15 = v6;
    if (_sharedInstancePred != -1)
    {
      dispatch_once(&_sharedInstancePred, block);
    }
  }

  return v6;
}

- (void)cancelTimer
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;

    self->_currentDutyCycle = 0.0;
  }
}

- (void)setRepeatingTimer:(double)timer initialDelay:(double)delay
{
  if (self->_timer)
  {
    [(FlowRefreshScheduler *)self cancelTimer];
  }

  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  timer = self->_timer;
  self->_timer = v7;

  v9 = self->_timer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__FlowRefreshScheduler_setRepeatingTimer_initialDelay___block_invoke;
  handler[3] = &unk_27898A0C8;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  v10 = self->_timer;
  v11 = dispatch_time(0, (delay * 1000000000.0));
  dispatch_source_set_timer(v10, v11, (timer * 1000000000.0), 0x5F5E100uLL);
  dispatch_resume(self->_timer);
  self->_currentDutyCycle = timer;
}

void __55__FlowRefreshScheduler_setRepeatingTimer_initialDelay___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    LODWORD(v4) = *(v4 + 48);
    *buf = 134218496;
    v22 = v2;
    v23 = 2048;
    v24 = v5;
    v25 = 1024;
    v26 = v4;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "RefreshScheduler, _refreshTimer expiry with delegate %p duty cycle %.3f poll-in-progress %d", buf, 0x1Cu);
  }

  *(*(a1 + 32) + 16) = apparentTime();
  v6 = *(a1 + 32);
  if (*(v6 + 40) == 0.0)
  {
    ++*(v6 + 216);
    [*(a1 + 32) cancelTimer];
  }

  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = v2;
    *(*(a1 + 32) + 48) = 1;
    v7 = [*(*(a1 + 32) + 80) allKeys];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
          if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v13 = otherLogHandle;
            if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v22 = v12;
              _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "RefreshScheduler, _refreshTimer expiry about to call delegate willPollFlows for %@", buf, 0xCu);
            }

            [v12 willPollFlows];
          }

          else
          {
            v14 = otherLogHandle;
            if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v22 = v12;
              _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "RefreshScheduler, _refreshTimer expiry, skip willPollFlows for unsupported %@", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v2 = v15;
    [v15 pollFlows];
  }
}

- (void)recalculateTimer
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = self->_requests;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v34;
    v8 = 0.0;
    *&v5 = 134218496;
    v32 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:*(*(&v33 + 1) + 8 * i), v32, v33];
        v11 = v10;
        if (v8 == 0.0 || ([v10 interval], v18 > 0.0) && (objc_msgSend(v11, "interval"), v19 < v8))
        {
          v12 = otherLogHandle;
          if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v13 = v12;
            [v11 interval];
            v15 = v14;
            [v11 logAs];
            v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = v32;
            v38 = v8;
            v39 = 2048;
            v40 = v15;
            v41 = 2048;
            v42 = v16;
            _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "RefreshScheduler, recalculateTimer provisionally setting minInterval from %.3f to %.3f for request %p", buf, 0x20u);
          }

          [v11 interval];
          v8 = v17;
        }
      }

      v6 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  minimumDutyCycle = self->_minimumDutyCycle;
  if (minimumDutyCycle != v8)
  {
    v21 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v22 = self->_minimumDutyCycle;
      *buf = 134218240;
      v38 = v22;
      v39 = 2048;
      v40 = v8;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "RefreshScheduler, recalculateTimer changing minimumDutyCycle from %.3f to %.3f", buf, 0x16u);
    }

    self->_minimumDutyCycle = v8;
    minimumDutyCycle = v8;
  }

  currentDutyCycle = self->_currentDutyCycle;
  if (currentDutyCycle > 0.0 && currentDutyCycle < minimumDutyCycle)
  {
    v25 = 200;
  }

  else if (minimumDutyCycle == 0.0)
  {
    v25 = 208;
  }

  else
  {
    if (minimumDutyCycle > 0.0 && self->_timer)
    {
      [(FlowRefreshScheduler *)self cancelTimer];
      ++self->_numImmediateTimerCancellations;
    }

    if (self->_lastScheduledExpiry <= 0.0)
    {
      v27 = self->_minimumDutyCycle;
      v28 = 0.0;
    }

    else
    {
      v26 = apparentTime() - self->_lastScheduledExpiry;
      v27 = self->_minimumDutyCycle;
      if (v26 >= v27)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v27 - v26;
      }
    }

    [(FlowRefreshScheduler *)self setRepeatingTimer:v27 initialDelay:v28];
    v29 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      timer = self->_timer;
      v31 = self->_minimumDutyCycle;
      *buf = 134218496;
      v38 = *&timer;
      v39 = 2048;
      v40 = v28;
      v41 = 2048;
      v42 = v31;
      _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEBUG, "FlowRefreshScheduler recalculateTimer has new timer %p, initial delay %.3f interval %.3f", buf, 0x20u);
    }

    v25 = 184;
  }

  ++*(&self->super.isa + v25);
}

- (int64_t)periodicRefreshDataUsageWithInterval:(double)interval maxStale:(double)stale maxDelay:(double)delay logAs:(id)as
{
  asCopy = as;
  ++self->_numPeriodicCalls;
  v11 = objc_alloc_init(FlowRefreshRequest);
  v12 = v11;
  if (v11)
  {
    v13 = self->_seqno + 1;
    self->_seqno = v13;
    [(FlowRefreshRequest *)v11 setReference:v13];
    [(FlowRefreshRequest *)v12 setInterval:interval];
    [(FlowRefreshRequest *)v12 setMaxStale:stale];
    [(FlowRefreshRequest *)v12 setMaxLate:delay];
    [(FlowRefreshRequest *)v12 setLogAs:asCopy];
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v13];
    [(NSMutableDictionary *)self->_requests setObject:v12 forKeyedSubscript:v14];
    [(FlowRefreshScheduler *)self recalculateTimer];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)refreshDataUsageMaxStale:(double)stale maxDelay:(double)delay logAs:(id)as callback:(id)callback
{
  v39 = *MEMORY[0x277D85DE8];
  asCopy = as;
  callbackCopy = callback;
  ++self->_numSingleShotCalls;
  v12 = apparentTime();
  v13 = v12 - self->_lastRefresh;
  if (v13 >= stale)
  {
    v17 = objc_alloc_init(FlowRefreshRequest);
    v18 = v17;
    if (!v17)
    {
      asCopy2 = 0;
      goto LABEL_21;
    }

    seqno = self->_seqno;
    self->_seqno = seqno + 1;
    [(FlowRefreshRequest *)v17 setReference:~seqno];
    [(FlowRefreshRequest *)v18 setReference:0];
    [(FlowRefreshRequest *)v18 setInterval:0.0];
    [(FlowRefreshRequest *)v18 setMaxStale:stale];
    [(FlowRefreshRequest *)v18 setMaxLate:delay];
    [(FlowRefreshRequest *)v18 setLogAs:asCopy];
    [(FlowRefreshRequest *)v18 setCallback:callbackCopy];
    requests = self->_requests;
    v21 = [MEMORY[0x277CCABB0] numberWithLongLong:~seqno];
    [(NSMutableDictionary *)requests setObject:v18 forKeyedSubscript:v21];

    if (delay == 0.0)
    {
      ++self->_numSingleShotNoDelay;
      v22 = objc_alloc(MEMORY[0x277CCACA8]);
      v23 = timeStringMillisecondsFromReferenceInterval(v12);
      asCopy = [v22 initWithFormat:@"  %@ immediate poll, zero delay reqd (stale %.3f, max %.3f) for %@", v23, *&v13, *&stale, asCopy];
    }

    else if (self->_timer && (currentDutyCycle = self->_currentDutyCycle, currentDutyCycle > 0.0))
    {
      v26 = currentDutyCycle + self->_lastRefresh - v12;
      if (v26 < delay)
      {
        v27 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          v36 = v26;
          v37 = 2048;
          delayCopy = delay;
          _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEBUG, "RefreshScheduler, refreshDataUsageFor piggyback for delay %.3f max %.3f", buf, 0x16u);
        }

        ++self->_numSingleShotWaitExistingTimer;
        v28 = objc_alloc(MEMORY[0x277CCACA8]);
        delegate = timeStringMillisecondsFromReferenceInterval(v12);
        asCopy2 = [v28 initWithFormat:@"  %@ wait for timer, (expected %.3f max delay %.3f), for %@", delegate, *&v26, *&delay, asCopy];
        goto LABEL_20;
      }

      ++self->_numSingleShotPossNewTimer;
      v32 = objc_alloc(MEMORY[0x277CCACA8]);
      v23 = timeStringMillisecondsFromReferenceInterval(v12);
      asCopy = [v32 initWithFormat:@"  %@ immediate poll, no wait for timer, (expected %.3f max delay %.3f), for %@", v23, *&v26, *&delay, asCopy];
    }

    else
    {
      ++self->_numSingleShotNoExistingTimer;
      v30 = objc_alloc(MEMORY[0x277CCACA8]);
      v23 = timeStringMillisecondsFromReferenceInterval(v12);
      asCopy = [v30 initWithFormat:@"  %@ immediate poll, no running timer, for %@", v23, asCopy, v33, v34];
    }

    asCopy2 = asCopy;

    delegate = [(FlowRefreshScheduler *)self delegate];
    v31 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v36 = *&delegate;
      _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEBUG, "RefreshScheduler, refreshDataUsageFor has delegate %p", buf, 0xCu);
    }

    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      self->_inProgressSingleShotPoll = 1;
      [delegate pollFlows];
    }

LABEL_20:

LABEL_21:
    if (!asCopy2)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  ++self->_numSingleShotImmediateCallbacks;
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v15 = timeStringMillisecondsFromReferenceInterval(v12);
  asCopy2 = [v14 initWithFormat:@"  %@ amortized callback (stale %.3f, max %.3f) for %@", v15, *&v13, *&stale, asCopy];

  callbackCopy[2](callbackCopy, 1);
  if (!asCopy2)
  {
    goto LABEL_24;
  }

LABEL_22:
  [(NSMutableArray *)self->_recentSingleShots addObject:asCopy2];
  if ([(NSMutableArray *)self->_recentSingleShots count]>= 0xB)
  {
    [(NSMutableArray *)self->_recentSingleShots removeObjectAtIndex:0];
  }

LABEL_24:
}

- (void)cancelRefresh:(int64_t)refresh
{
  v11 = *MEMORY[0x277D85DE8];
  if (refresh < 1)
  {
    ++self->_numInvalidCancels;
    v7 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      refreshCopy2 = refresh;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "RefreshScheduler, cancelRefresh with invalid negative id %lld", &v9, 0xCu);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:refresh];
    v6 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:v5];

    if (v6)
    {
      [(NSMutableDictionary *)self->_requests setObject:0 forKeyedSubscript:v5];
      ++self->_numPeriodicCancels;
      [(FlowRefreshScheduler *)self recalculateTimer];
    }

    else
    {
      ++self->_numInvalidCancels;
      v8 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        refreshCopy2 = refresh;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "RefreshScheduler, cancelRefresh for non-existent id %lld", &v9, 0xCu);
      }
    }
  }
}

+ (void)refreshDataUsageMaxStale:(double)stale maxDelay:(double)delay logAs:(id)as callback:(id)callback
{
  asCopy = as;
  callbackCopy = callback;
  sharedInstance = [self sharedInstance];
  v13 = sharedInstance;
  if (sharedInstance && ([sharedInstance queue], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    queue = [v13 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__FlowRefreshScheduler_refreshDataUsageMaxStale_maxDelay_logAs_callback___block_invoke;
    block[3] = &unk_27898AFB8;
    v17 = v13;
    staleCopy = stale;
    delayCopy = delay;
    v18 = asCopy;
    v19 = callbackCopy;
    dispatch_async(queue, block);
  }

  else if (callbackCopy)
  {
    (*(callbackCopy + 2))(callbackCopy, 0);
  }
}

- (void)addDelegate:(id)delegate
{
  v10 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = MEMORY[0x277CCABB0];
  ++self->_delegateSeqno;
  v6 = [v5 numberWithLongLong:?];
  if (delegateCopy)
  {
    [(NSMutableDictionary *)self->_delegates setObject:delegateCopy forKeyedSubscript:v6];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v7 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v8 = 138412290;
        v9 = delegateCopy;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "RefreshScheduler, addeded delegate does not support didPollFlowsAt:periodic:  %@", &v8, 0xCu);
      }
    }
  }
}

- (void)removeDelegate:(id)delegate
{
  v17 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_delegates;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_delegates objectForKeyedSubscript:v10, v12];

        if (v11 == delegateCopy)
        {
          [(NSMutableDictionary *)self->_delegates setObject:0 forKeyedSubscript:v10];
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)didPollFlowsAt:(double)at
{
  v62 = *MEMORY[0x277D85DE8];
  setApparentTime(at);
  inProgressRepeatingPoll = self->_inProgressRepeatingPoll;
  self->_lastRefresh = at;
  ++self->_numDidPollFlows;
  v38 = inProgressRepeatingPoll;
  if (inProgressRepeatingPoll)
  {
    self->_lastScheduledExpiry = at;
    [(FlowRefreshScheduler *)self _refreshTimer];
    self->_inProgressRepeatingPoll = 0;
  }

  [(NSMutableDictionary *)self->_requests allKeys];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v55 = 0u;
  v6 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v53;
    *&v7 = 134217984;
    v37 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:v11, v37];
        [v12 interval];
        if (v13 == 0.0)
        {
          v14 = otherLogHandle;
          if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v15 = v14;
            reference = [v12 reference];
            *buf = v37;
            v60 = reference;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "RefreshScheduler, didPollFlowsAt finds single shot with reference %lld", buf, 0xCu);
          }

          [(NSMutableDictionary *)self->_requests setObject:0 forKeyedSubscript:v11];
          callback = [v12 callback];

          if (callback)
          {
            callback2 = [v12 callback];
            callback2[2](callback2, 1);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v8);
  }

  self->_inProgressSingleShotPoll = 0;
  allKeys = [(NSMutableDictionary *)self->_delegates allKeys];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v20 = [allKeys countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v49;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v49 != v22)
        {
          objc_enumerationMutation(allKeys);
        }

        v24 = [(NSMutableDictionary *)self->_delegates objectForKeyedSubscript:*(*(&v48 + 1) + 8 * j)];
        if (v24 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_didPollFlowsCallbackOrder(v24) == 1)
        {
          [v24 didPollFlowsAt:v38 periodic:at];
        }
      }

      v21 = [allKeys countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v21);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v25 = allKeys;
  v26 = [v25 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v45;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [(NSMutableDictionary *)self->_delegates objectForKeyedSubscript:*(*(&v44 + 1) + 8 * k)];
        if (v30 && (objc_opt_respondsToSelector() & 1) != 0 && ((objc_opt_respondsToSelector() & 1) == 0 || objc_msgSend_didPollFlowsCallbackOrder(v30) == 2))
        {
          [v30 didPollFlowsAt:v38 periodic:at];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v27);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = v25;
  v32 = [v31 countByEnumeratingWithState:&v40 objects:v56 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v41;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [(NSMutableDictionary *)self->_delegates objectForKeyedSubscript:*(*(&v40 + 1) + 8 * m)];
        if (v36 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_didPollFlowsCallbackOrder(v36) == 3)
        {
          [v36 didPollFlowsAt:v38 periodic:at];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v40 objects:v56 count:16];
    }

    while (v33);
  }
}

- (void)_generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  if (id == 16)
  {
    v8 = MEMORY[0x277CBEB38];
    blockCopy = block;
    dictionary = [v8 dictionary];
    getState = [(FlowRefreshScheduler *)self getState];
    [dictionary setObject:getState forKeyedSubscript:@"FlowRefreshSchedulerDetails"];

    date = [MEMORY[0x277CBEAA8] date];
    (*(blockCopy + 2))(blockCopy, 0, "FlowRefreshScheduler  details", date, "collected on demand", 0, dictionary);
  }

  else
  {
    v12 = MEMORY[0x277CBEAA8];
    blockCopy2 = block;
    dictionary = [v12 date];
    date = [MEMORY[0x277CBEAC0] dictionary];
    (*(block + 2))(blockCopy2, 0, "FlowRefreshScheduler unrecognised managed event request", dictionary, "collected on demand", 0, date);
  }
}

- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  uuidCopy = uuid;
  blockCopy = block;
  queue = [(FlowRefreshScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__FlowRefreshScheduler_generateInfoForId_context_uuid_completionBlock___block_invoke;
  block[3] = &unk_27898AFB8;
  idCopy = id;
  contextCopy = context;
  block[4] = self;
  v16 = uuidCopy;
  v17 = blockCopy;
  v13 = blockCopy;
  v14 = uuidCopy;
  dispatch_async(queue, block);
}

@end