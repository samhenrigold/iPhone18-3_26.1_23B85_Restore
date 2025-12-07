@interface MNIdleTimerUpdater
- (MNIdleTimerUpdater)init;
- (MNIdleTimerUpdaterDelegate)delegate;
- (double)_speedThresholdForCurrentTransportType;
- (void)_updateForLocation:(id)location;
- (void)_updateShouldEnableIdleTimer:(BOOL)timer;
- (void)dealloc;
- (void)setNavigationSessionState:(id)state;
- (void)updateForStartNavigation;
@end

@implementation MNIdleTimerUpdater

- (MNIdleTimerUpdaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_speedThresholdForCurrentTransportType
{
  currentRouteInfo = [(MNNavigationSessionState *)self->_navigationSessionState currentRouteInfo];
  route = [currentRouteInfo route];
  transportType = [route transportType];

  if (transportType > 3)
  {
    v6 = @"default";
  }

  else
  {
    v6 = *(&off_1E842EE28 + transportType);
  }

  v7 = [(NSDictionary *)self->_speedThresholdsToConsiderStopped objectForKeyedSubscript:v6];
  [v7 doubleValue];
  v9 = v8;

  return v9;
}

- (void)_updateForLocation:(id)location
{
  v30 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = locationCopy;
  if (self->_isStarted && locationCopy && self->_isArrived)
  {
    [locationCopy speed];
    v7 = v6;
    [(MNIdleTimerUpdater *)self _speedThresholdForCurrentTransportType];
    notMovingTimer = self->_notMovingTimer;
    if (v7 <= v9)
    {
      if (!notMovingTimer)
      {
        GEOConfigGetDouble();
        v16 = v15;
        v17 = MNGetMNIdleTimerUpdaterLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_DEFAULT, "Location stopped in arrival state. Starting timer.", buf, 2u);
        }

        objc_initWeak(buf, self);
        v18 = [MNDispatchTimer alloc];
        v19 = MNNavigationQueue();
        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __41__MNIdleTimerUpdater__updateForLocation___block_invoke;
        v26 = &unk_1E8430F10;
        v27[1] = v16;
        objc_copyWeak(v27, buf);
        v20 = [(MNDispatchTimer *)v18 initWithTime:v19 queue:&v23 handler:*&v16];
        v22 = self->_notMovingTimer;
        p_notMovingTimer = &self->_notMovingTimer;
        *p_notMovingTimer = v20;

        [*p_notMovingTimer activate];
        objc_destroyWeak(v27);
        objc_destroyWeak(buf);
      }
    }

    else if (notMovingTimer)
    {
      v10 = MNGetMNIdleTimerUpdaterLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        [v5 speed];
        *buf = 134217984;
        v29 = v11;
        _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "Cancelling notMovingTimer because locations are moving again. Speed: %0.3f m/s", buf, 0xCu);
      }

      v13 = self->_notMovingTimer;
      v12 = &self->_notMovingTimer;
      [(MNDispatchTimer *)v13 cancel];
      v14 = *v12;
      *v12 = 0;
    }
  }
}

void __41__MNIdleTimerUpdater__updateForLocation___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = MNGetMNIdleTimerUpdaterLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "In arrival state and locations stopped for %g seconds. Triggering shouldEnableIdleTimer.", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[8] = 0;
    [WeakRetained _updateShouldEnableIdleTimer:1];
  }
}

- (void)_updateShouldEnableIdleTimer:(BOOL)timer
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_shouldEnableIdleTimer != timer)
  {
    timerCopy = timer;
    v5 = MNGetMNIdleTimerUpdaterLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = timerCopy;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Setting shouldEnableIdleTimer to %d.", v9, 8u);
    }

    self->_shouldEnableIdleTimer = timerCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 idleTimerUpdater:self shouldEnableIdleTimer:timerCopy];
    }
  }
}

- (void)updateForStartNavigation
{
  *&self->_isStarted = 1;
  self->_shouldEnableIdleTimer = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 idleTimerUpdater:self shouldEnableIdleTimer:0];
  }
}

- (void)setNavigationSessionState:(id)state
{
  v16 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  location = [stateCopy location];
  v6 = -[MNIdleTimerUpdater _shouldEnableIdleTimerForArrivalState:](self, "_shouldEnableIdleTimerForArrivalState:", [stateCopy arrivalState]);
  location2 = [(MNNavigationSessionState *)self->_navigationSessionState location];

  v8 = [(MNIdleTimerUpdater *)self _shouldEnableIdleTimerForArrivalState:[(MNNavigationSessionState *)self->_navigationSessionState arrivalState]];
  v9 = [stateCopy copy];

  navigationSessionState = self->_navigationSessionState;
  self->_navigationSessionState = v9;

  self->_isArrived = v6;
  if (v6 != v8)
  {
    v11 = MNGetMNIdleTimerUpdaterLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      isArrived = self->_isArrived;
      v15[0] = 67109120;
      v15[1] = isArrived;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "isArrived changed: %d", v15, 8u);
    }

    if (!self->_isArrived)
    {
      v13 = MNGetMNIdleTimerUpdaterLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "Left arrival state. Cancelling timers and setting shouldEnableIdleTimer to NO.", v15, 2u);
      }

      [(MNDispatchTimer *)self->_notMovingTimer cancel];
      notMovingTimer = self->_notMovingTimer;
      self->_notMovingTimer = 0;

      [(MNIdleTimerUpdater *)self _updateShouldEnableIdleTimer:0];
    }
  }

  if (location != location2)
  {
    [(MNIdleTimerUpdater *)self _updateForLocation:location];
  }
}

- (void)dealloc
{
  [(MNDispatchTimer *)self->_notMovingTimer cancel];
  v3.receiver = self;
  v3.super_class = MNIdleTimerUpdater;
  [(MNIdleTimerUpdater *)&v3 dealloc];
}

- (MNIdleTimerUpdater)init
{
  v7.receiver = self;
  v7.super_class = MNIdleTimerUpdater;
  v2 = [(MNIdleTimerUpdater *)&v7 init];
  if (v2)
  {
    v3 = GEOConfigGetDictionary();
    speedThresholdsToConsiderStopped = v2->_speedThresholdsToConsiderStopped;
    v2->_speedThresholdsToConsiderStopped = v3;

    v5 = v2;
  }

  return v2;
}

@end