@interface SMHeartbeatTimer
- (SMHeartbeatTimer)init;
- (void)_startHeartbeatForSessionID:(id)d handler:(id)handler;
- (void)_stopHeartbeatWithHandler:(id)handler;
- (void)startHeartbeatForSessionID:(id)d handler:(id)handler;
- (void)stopHeartbeatWithHandler:(id)handler;
@end

@implementation SMHeartbeatTimer

- (SMHeartbeatTimer)init
{
  v12.receiver = self;
  v12.super_class = SMHeartbeatTimer;
  v2 = [(SMHeartbeatTimer *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [(SMHeartbeatTimer *)v4 UTF8String];
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v4];
      uTF8String = [v7 UTF8String];
    }

    v8 = dispatch_queue_create(uTF8String, v5);

    queue = v4->_queue;
    v4->_queue = v8;

    heartbeatTimer = v4->_heartbeatTimer;
    v4->_heartbeatTimer = 0;
  }

  return v3;
}

- (void)startHeartbeatForSessionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(SMHeartbeatTimer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SMHeartbeatTimer_startHeartbeatForSessionID_handler___block_invoke;
  block[3] = &unk_279B65068;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)_startHeartbeatForSessionID:(id)d handler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      heartbeatTimer = [(SMHeartbeatTimer *)self heartbeatTimer];
      *buf = 136315650;
      v24 = "[SMHeartbeatTimer _startHeartbeatForSessionID:handler:]";
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = heartbeatTimer;
      _os_log_impl(&dword_26455D000, v8, OS_LOG_TYPE_INFO, "%s, sessionID, %@, heartbeatTimer, %@", buf, 0x20u);
    }
  }

  heartbeatTimer2 = [(SMHeartbeatTimer *)self heartbeatTimer];

  if (heartbeatTimer2)
  {
    [(SMHeartbeatTimer *)self _stopHeartbeatWithHandler:0];
  }

  v11 = MEMORY[0x277CBEBB8];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __56__SMHeartbeatTimer__startHeartbeatForSessionID_handler___block_invoke;
  v20 = &unk_279B65090;
  v21 = dCopy;
  v22 = handlerCopy;
  v12 = handlerCopy;
  v13 = dCopy;
  v14 = [v11 timerWithTimeInterval:1 repeats:&v17 block:60.0];
  [(SMHeartbeatTimer *)self setHeartbeatTimer:v14, v17, v18, v19, v20];

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  heartbeatTimer3 = [(SMHeartbeatTimer *)self heartbeatTimer];
  [mainRunLoop addTimer:heartbeatTimer3 forMode:*MEMORY[0x277CBE738]];
}

void __56__SMHeartbeatTimer__startHeartbeatForSessionID_handler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v5 = 136315394;
      v6 = "[SMHeartbeatTimer _startHeartbeatForSessionID:handler:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&dword_26455D000, v2, OS_LOG_TYPE_INFO, "Heartbeat timer fired %s, sessionID, %@", &v5, 0x16u);
    }
  }

  v4 = +[SMSafetyMonitorManager defaultManager];
  [v4 sendHeartbeatForSessionID:*(a1 + 32) handler:*(a1 + 40)];
}

- (void)stopHeartbeatWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMHeartbeatTimer *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SMHeartbeatTimer_stopHeartbeatWithHandler___block_invoke;
  v7[3] = &unk_279B64C28;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_stopHeartbeatWithHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[SMHeartbeatTimer _stopHeartbeatWithHandler:]";
      _os_log_impl(&dword_26455D000, v5, OS_LOG_TYPE_INFO, "%s", &v7, 0xCu);
    }
  }

  heartbeatTimer = [(SMHeartbeatTimer *)self heartbeatTimer];
  [heartbeatTimer invalidate];

  [(SMHeartbeatTimer *)self setHeartbeatTimer:0];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

@end