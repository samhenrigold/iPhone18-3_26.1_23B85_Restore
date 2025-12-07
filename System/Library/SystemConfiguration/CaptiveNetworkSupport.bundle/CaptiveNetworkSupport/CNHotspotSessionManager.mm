@interface CNHotspotSessionManager
+ (id)eventTypeString:(int)string;
+ (id)hotspotSessionQueue;
+ (id)sessionStatusString:(int)string;
+ (id)sessionTypeString:(int)string;
- (BOOL)startWithConfigurationID:(id)d sessionType:(int)type;
- (CNHotspotSessionManager)init;
- (void)dealloc;
- (void)invalidate;
- (void)scheduleRequestCompletionHandler:(int)handler;
- (void)stop;
@end

@implementation CNHotspotSessionManager

+ (id)hotspotSessionQueue
{
  if (hotspotSessionQueue_onceToken != -1)
  {
    +[CNHotspotSessionManager hotspotSessionQueue];
  }

  v3 = hotspotSessionQueue_g_queue;

  return v3;
}

uint64_t __46__CNHotspotSessionManager_hotspotSessionQueue__block_invoke()
{
  hotspotSessionQueue_g_queue = dispatch_queue_create("CNHotspotSessionManager_Queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (CNHotspotSessionManager)init
{
  v6.receiver = self;
  v6.super_class = CNHotspotSessionManager;
  v2 = [(CNHotspotSessionManager *)&v6 init];
  v3 = +[CNHotspotSessionManager hotspotSessionQueue];
  queue = v2->_queue;
  v2->_queue = v3;

  v2->_currentSessionStatus = 0;
  return v2;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = mysyslog_get_logger();
  v4 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_277237000, v3, v4, "%@: dealloc", buf, 0xCu);
  }

  [(CNHotspotSessionManager *)self setHandler:0];
  [(CNHotspotSessionManager *)self setRunloop:0];
  [(CNHotspotSessionManager *)self setContext:0];
  [(CNHotspotSessionManager *)self setQueue:0];
  if ([(CNHotspotSessionManager *)self hotspotSession])
  {
    [(CNHotspotSessionManager *)self hotspotSession];
    ne_session_release();
    [(CNHotspotSessionManager *)self setHotspotSession:0];
  }

  v5.receiver = self;
  v5.super_class = CNHotspotSessionManager;
  [(CNHotspotSessionManager *)&v5 dealloc];
}

- (void)scheduleRequestCompletionHandler:(int)handler
{
  if (handler == 1)
  {
    ne_session_cancel();
  }

  if (self->_handler)
  {
    runloop = self->_runloop;
    if (runloop)
    {
      runloopMode = self->_runloopMode;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __60__CNHotspotSessionManager_scheduleRequestCompletionHandler___block_invoke;
      v7[3] = &unk_27A714630;
      v7[4] = self;
      handlerCopy = handler;
      CFRunLoopPerformBlock(runloop, runloopMode, v7);
      CFRunLoopWakeUp(self->_runloop);
    }
  }
}

+ (id)sessionTypeString:(int)string
{
  v3 = @"Unsupported";
  if (string == 12)
  {
    v3 = @"Authentication";
  }

  if (string == 11)
  {
    return @"Evaluation";
  }

  else
  {
    return v3;
  }
}

+ (id)eventTypeString:(int)string
{
  if ((string - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_27A7146A0[string - 1];
  }
}

+ (id)sessionStatusString:(int)string
{
  if (string > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_27A7146B8[string];
  }
}

- (BOOL)startWithConfigurationID:(id)d sessionType:(int)type
{
  v4 = *&type;
  v27[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (self->_hotspotSession || self->_currentSessionStatus == 3)
  {
    v7 = 0;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];
    v27[0] = 0;
    v27[1] = 0;
    [v9 getUUIDBytes:v27];
    v10 = ne_session_create();
    self->_hotspotSession = v10;
    v7 = v10 != 0;
    if (v10)
    {
      ne_session_start();
      v11 = mysyslog_get_logger();
      v12 = _SC_syslog_os_log_mapping();
      v13 = v11;
      if (os_log_type_enabled(v13, v12))
      {
        hotspotSession = self->_hotspotSession;
        v15 = [CNHotspotSessionManager sessionTypeString:v4];
        *buf = 138412802;
        selfCopy = self;
        v23 = 2048;
        v24 = hotspotSession;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_277237000, v13, v12, "%@: starting hotspot (session:[%p] type:[%@])", buf, 0x20u);
      }

      objc_initWeak(buf, self);
      queue = [(CNHotspotSessionManager *)self queue];
      objc_copyWeak(&v20, buf);
      v19 = dCopy;
      ne_session_set_event_handler();

      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }

    else
    {
      v17 = mysyslog_get_logger();
      v18 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v17, v18))
      {
        *buf = 0;
        _os_log_impl(&dword_277237000, v17, v18, "ne_session_create() failed to create hotspot session", buf, 2u);
      }
    }
  }

  return v7;
}

void __64__CNHotspotSessionManager_startWithConfigurationID_sessionType___block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = mysyslog_get_logger();
  v6 = _SC_syslog_os_log_mapping();
  v7 = v5;
  if (os_log_type_enabled(v7, v6))
  {
    v8 = [WeakRetained hotspotSession];
    v9 = [CNHotspotSessionManager eventTypeString:a2];
    *buf = 138413058;
    v16 = WeakRetained;
    v17 = 2080;
    v18 = "[CNHotspotSessionManager startWithConfigurationID:sessionType:]_block_invoke";
    v19 = 2048;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_277237000, v7, v6, "%@: (%s): hotspot session([%p]) received event:[%@]", buf, 0x2Au);
  }

  if (a2 == 2)
  {
    v11 = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(a1 + 40);
      *buf = 138412290;
      v16 = v13;
      _os_log_impl(&dword_277237000, v11, v12, "hotspot session was cancelled for configuration [%@]", buf, 0xCu);
    }

    if ([WeakRetained hotspotSession])
    {
      [WeakRetained hotspotSession];
      ne_session_release();
      [WeakRetained setHotspotSession:0];
    }
  }

  else if (a2 == 1)
  {
    [WeakRetained hotspotSession];
    v10 = [WeakRetained queue];
    v14 = *(a1 + 40);
    ne_session_get_status();
  }
}

void __64__CNHotspotSessionManager_startWithConfigurationID_sessionType___block_invoke_69(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  v6 = v4;
  if (os_log_type_enabled(v6, v5))
  {
    v7 = *(a1 + 32);
    v8 = [v7 hotspotSession];
    v9 = [CNHotspotSessionManager sessionStatusString:a2];
    v28 = 138413058;
    v29 = v7;
    v30 = 2080;
    v31 = "[CNHotspotSessionManager startWithConfigurationID:sessionType:]_block_invoke";
    v32 = 2048;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_277237000, v6, v5, "%@: (%s): hotspot session([%p]) received session status:[%@]", &v28, 0x2Au);
  }

  if ([*(a1 + 40) currentSessionStatus] == a2)
  {
    v10 = mysyslog_get_logger();
    v11 = _SC_syslog_os_log_mapping();
    v12 = v10;
    if (os_log_type_enabled(v12, v11))
    {
      v13 = *(a1 + 32);
      v14 = [v13 hotspotSession];
      v15 = *(a1 + 48);
      v28 = 138412802;
      v29 = v13;
      v30 = 2048;
      v31 = v14;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_277237000, v12, v11, "%@ hotspot session([%p]) status did not change for configuration [%@]", &v28, 0x20u);
    }
  }

  else
  {
    if (a2 == 1)
    {
      v23 = mysyslog_get_logger();
      v24 = _SC_syslog_os_log_mapping();
      v25 = v23;
      if (os_log_type_enabled(v25, v24))
      {
        v26 = [*(a1 + 32) hotspotSession];
        v27 = *(a1 + 48);
        v28 = 134218242;
        v29 = v26;
        v30 = 2112;
        v31 = v27;
        _os_log_impl(&dword_277237000, v25, v24, "hotspot session([%p]) status changed to disconnected for configuration [%@]", &v28, 0x16u);
      }

      [*(a1 + 32) setCurrentSessionStatus:1];
      v21 = *(a1 + 32);
      v22 = 1;
    }

    else
    {
      if (a2 != 3)
      {
        return;
      }

      v16 = mysyslog_get_logger();
      v17 = _SC_syslog_os_log_mapping();
      v18 = v16;
      if (os_log_type_enabled(v18, v17))
      {
        v19 = [*(a1 + 32) hotspotSession];
        v20 = *(a1 + 48);
        v28 = 134218242;
        v29 = v19;
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&dword_277237000, v18, v17, "hotspot session([%p]) status changed to connected for configuration [%@]", &v28, 0x16u);
      }

      [*(a1 + 32) setCurrentSessionStatus:3];
      v21 = *(a1 + 32);
      v22 = 3;
    }

    [v21 scheduleRequestCompletionHandler:v22];
  }
}

- (void)stop
{
  if (self->_hotspotSession)
  {
    if (self->_currentSessionStatus == 3)
    {
      MEMORY[0x282204A80]();
    }
  }
}

- (void)invalidate
{
  if (self->_hotspotSession)
  {
    ne_session_release();
    self->_hotspotSession = 0;
    self->_currentSessionStatus = 0;
  }
}

@end