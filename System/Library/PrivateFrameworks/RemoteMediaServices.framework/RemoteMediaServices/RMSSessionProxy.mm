@interface RMSSessionProxy
- (BOOL)sessionMatchesNotification:(id)notification;
- (RMSSessionProxy)initWithTimeout:(double)timeout;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationWillResignActiveNotification:(id)notification;
- (void)_sendHeartbeat:(id)heartbeat;
- (void)beginHeartbeat;
- (void)dealloc;
- (void)endHeartbeat;
@end

@implementation RMSSessionProxy

- (RMSSessionProxy)initWithTimeout:(double)timeout
{
  v8.receiver = self;
  v8.super_class = RMSSessionProxy;
  v4 = [(RMSSessionProxy *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_sessionTimeout = timeout;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__applicationWillResignActiveNotification_ name:*MEMORY[0x277D76768] object:0];
    [defaultCenter addObserver:v5 selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(RMSSessionProxy *)self endHeartbeat];
  v4.receiver = self;
  v4.super_class = RMSSessionProxy;
  [(RMSSessionProxy *)&v4 dealloc];
}

- (void)_applicationWillResignActiveNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_heartbeatTimer)
  {
    v4 = RMSLogger(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_261E98000, v4, OS_LOG_TYPE_DEFAULT, "[%@] Application suspended, pausing heartbeat", &v7, 0xCu);
    }

    [(RMSSessionProxy *)self endHeartbeat];
    self->_isPaused = 1;
  }
}

- (void)_applicationDidBecomeActive:(id)active
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_isPaused)
  {
    timeIntervalSinceReferenceDate = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v6 = v5 - self->_lastHeartbeatTime;
    v7 = RMSLogger(timeIntervalSinceReferenceDate);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v19 = 138412546;
      v20 = *&v9;
      v21 = 2048;
      v22 = v6;
      _os_log_impl(&dword_261E98000, v7, OS_LOG_TYPE_DEFAULT, "[%@] Application foregrounded, time since last heartbeat: %f", &v19, 0x16u);
    }

    v11 = RMSLogger(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sessionTimeout = self->_sessionTimeout;
      v19 = 134217984;
      v20 = sessionTimeout;
      _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "Session timeout: %f", &v19, 0xCu);
    }

    v13 = self->_sessionTimeout;
    v15 = RMSLogger(v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v6 >= v13)
    {
      if (v16)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_261E98000, v15, OS_LOG_TYPE_DEFAULT, "Backgrounded for too long, session is over", &v19, 2u);
      }

      [(RMSSessionProxy *)self heartbeatDidFail];
      [(RMSSessionProxy *)self endHeartbeat];
      self->_sessionIdentifier = 0;
    }

    else
    {
      if (v16)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_261E98000, v15, OS_LOG_TYPE_DEFAULT, "Resuming session", &v19, 2u);
      }

      [(RMSSessionProxy *)self beginHeartbeat];
      heartbeatTime = [(RMSSessionProxy *)self heartbeatTime];
      if (v6 > (heartbeatTime / 2))
      {
        v18 = RMSLogger(heartbeatTime);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_261E98000, v18, OS_LOG_TYPE_DEFAULT, "Sending immediate heartbeat", &v19, 2u);
        }

        [(NSTimer *)self->_heartbeatTimer fire];
      }
    }
  }
}

- (void)beginHeartbeat
{
  if (!self->_heartbeatTimer)
  {
    block[7] = v2;
    block[8] = v3;
    self->_isPaused = 0;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_lastHeartbeatTime = v5;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__RMSSessionProxy_beginHeartbeat__block_invoke;
    block[3] = &unk_279B088E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __33__RMSSessionProxy_beginHeartbeat__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel__sendHeartbeat_ selector:0 userInfo:1 repeats:{objc_msgSend(*(a1 + 32), "heartbeatTime")}];

  return MEMORY[0x2821F96F8]();
}

- (void)endHeartbeat
{
  heartbeatTimer = self->_heartbeatTimer;
  if (heartbeatTimer)
  {
    [(NSTimer *)heartbeatTimer invalidate];
    v4 = self->_heartbeatTimer;
    self->_heartbeatTimer = 0;
  }

  self->_isPaused = 0;
}

- (BOOL)sessionMatchesNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"RMSIDSClientSessionIdentifierNotificationKey"];
  intValue = [v5 intValue];

  LOBYTE(self) = self->_sessionIdentifier == intValue;
  return self;
}

- (void)_sendHeartbeat:(id)heartbeat
{
  v16 = *MEMORY[0x277D85DE8];
  heartbeatCopy = heartbeat;
  sessionIdentifier = [(RMSSessionProxy *)self sessionIdentifier];
  inited = objc_initWeak(&location, self);
  v7 = RMSLogger(inited);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138412290;
    v15 = v9;
    _os_log_impl(&dword_261E98000, v7, OS_LOG_TYPE_DEFAULT, "Sending heartbeat for session: %@", buf, 0xCu);
  }

  v10 = +[RMSIDSClient sharedClient];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__RMSSessionProxy__sendHeartbeat___block_invoke;
  v11[3] = &unk_279B08930;
  objc_copyWeak(&v12, &location);
  [v10 sendHeartbeatWithSessionIdentifier:sessionIdentifier completionHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __34__RMSSessionProxy__sendHeartbeat___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && WeakRetained[1] && (WeakRetained[4] & 1) == 0)
  {
    if (a2 == 1)
    {
      v5 = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v4[3] = v6;
      v7 = RMSLogger(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v13 = 138412290;
        v14 = v9;
        _os_log_impl(&dword_261E98000, v7, OS_LOG_TYPE_DEFAULT, "Hearbeat success response for session: %@", &v13, 0xCu);
      }
    }

    else
    {
      v10 = RMSLogger(WeakRetained);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "Heartbeat failure response for session: %@", &v13, 0xCu);
      }

      [v4 endHeartbeat];
      [v4 heartbeatDidFail];
    }
  }
}

@end