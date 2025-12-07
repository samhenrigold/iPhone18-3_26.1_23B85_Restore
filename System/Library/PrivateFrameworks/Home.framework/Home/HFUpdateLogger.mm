@interface HFUpdateLogger
+ (id)history;
+ (id)runningLoggers;
- (HFUpdateLogger)initWithTimeout:(double)timeout description:(id)description;
- (id)description;
- (void)_handleTimeout:(id)timeout;
- (void)finish;
@end

@implementation HFUpdateLogger

+ (id)runningLoggers
{
  v2 = +[HFUpdateLoggerDebuggingController _sharedInstance];
  _runningLoggers = [v2 _runningLoggers];

  return _runningLoggers;
}

+ (id)history
{
  v2 = +[HFUpdateLoggerDebuggingController _sharedInstance];
  _historyStrings = [v2 _historyStrings];
  v4 = [_historyStrings componentsJoinedByString:@"\n"];

  return v4;
}

- (HFUpdateLogger)initWithTimeout:(double)timeout description:(id)description
{
  v21 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v16.receiver = self;
  v16.super_class = HFUpdateLogger;
  v7 = [(HFUpdateLogger *)&v16 init];
  if (v7)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(HFUpdateLogger *)v7 setStartDate:date];

    [(HFUpdateLogger *)v7 setClientDescription:descriptionCopy];
    v9 = _os_activity_create(&dword_20D9BF000, "HFUpdateLogger", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    [(HFUpdateLogger *)v7 setLoggerActivity:v9];

    [(HFUpdateLogger *)v7 setSoftTimeoutInterval:timeout];
    if (timeout > 0.0)
    {
      v10 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v7 target:sel__handleTimeout_ selector:0 userInfo:0 repeats:timeout];
      [(HFUpdateLogger *)v7 setSoftTimeoutTimer:v10];
    }

    v11 = +[HFUpdateLoggerDebuggingController _sharedInstance];
    [v11 _addRunningLogger:v7];

    v12 = [(HFUpdateLogger *)v7 loggerActivity:0];
    os_activity_scope_enter(v12, &v15);

    v13 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = descriptionCopy;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "%@: Starting log for: %@", buf, 0x16u);
    }

    os_activity_scope_leave(&v15);
  }

  return v7;
}

- (void)finish
{
  v15 = *MEMORY[0x277D85DE8];
  softTimeoutTimer = [(HFUpdateLogger *)self softTimeoutTimer];
  [softTimeoutTimer invalidate];

  date = [MEMORY[0x277CBEAA8] date];
  startDate = [(HFUpdateLogger *)self startDate];
  [date timeIntervalSinceDate:startDate];
  v7 = v6;

  if (self)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    loggerActivity = [(HFUpdateLogger *)self loggerActivity];
    os_activity_scope_enter(loggerActivity, &state);

    v9 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Update finished in %f seconds", &v12, 0xCu);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v11 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(state.opaque[0]) = 134217984;
      *(state.opaque + 4) = v7;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Update finished in %f seconds", &state, 0xCu);
    }
  }

  v10 = +[HFUpdateLoggerDebuggingController _sharedInstance];
  [v10 _removeRunningLogger:self];
}

- (void)_handleTimeout:(id)timeout
{
  v17 = *MEMORY[0x277D85DE8];
  softTimeoutTimer = [(HFUpdateLogger *)self softTimeoutTimer];
  [softTimeoutTimer invalidate];

  [(HFUpdateLogger *)self setDidReachSoftTimeout:1];
  date = [MEMORY[0x277CBEAA8] date];
  startDate = [(HFUpdateLogger *)self startDate];
  [date timeIntervalSinceDate:startDate];
  v8 = v7;

  if (self)
  {
    v9 = [(HFUpdateLogger *)self loggerActivity:0];
    os_activity_scope_enter(v9, &v12);

    v10 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "%@: Soft timeout reached after %f seconds. The update will continue until it completes.", buf, 0x16u);
    }

    os_activity_scope_leave(&v12);
  }

  else
  {
    v11 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = 0;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "%@: Soft timeout reached after %f seconds. The update will continue until it completes.", buf, 0x16u);
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  clientDescription = [(HFUpdateLogger *)self clientDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p> %@", v5, self, clientDescription];

  return v7;
}

@end