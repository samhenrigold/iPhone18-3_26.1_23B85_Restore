@interface ULAirplaneModeMonitor
- (BOOL)_checkAirplaneMode;
- (id)latestEventAfterAddingObserverForEventName:(id)name;
- (void)airplaneModeChanged;
- (void)startMonitoring:(id)monitoring;
- (void)stopMonitoring:(id)monitoring;
@end

@implementation ULAirplaneModeMonitor

- (void)startMonitoring:(id)monitoring
{
  v18 = *MEMORY[0x277D85DE8];
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_alloc(MEMORY[0x277CEC5D0]);
  queue2 = [(ULEventMonitor *)self queue];
  v8 = [v6 initWithQueue:queue2];
  [(ULAirplaneModeMonitor *)self setRadiosPref:v8];

  radiosPref = [(ULAirplaneModeMonitor *)self radiosPref];
  [radiosPref setDelegate:self];

  [(ULAirplaneModeMonitor *)self setAirplaneMode:[(ULAirplaneModeMonitor *)self _checkAirplaneMode]];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULAirplaneModeMonitor startMonitoring:];
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    airplaneMode = [(ULAirplaneModeMonitor *)self airplaneMode];
    v13 = @"NO";
    if (airplaneMode)
    {
      v13 = @"YES";
    }

    v14 = 138412546;
    v15 = monitoringCopy;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "Start monitoring: %@, airplaneMode: %@", &v14, 0x16u);
  }
}

- (void)stopMonitoring:(id)monitoring
{
  v10 = *MEMORY[0x277D85DE8];
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULAirplaneModeMonitor startMonitoring:];
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = monitoringCopy;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "Stop monitoring: %@", &v8, 0xCu);
  }

  radiosPref = [(ULAirplaneModeMonitor *)self radiosPref];
  [radiosPref setDelegate:0];

  [(ULAirplaneModeMonitor *)self setRadiosPref:0];
  [(ULAirplaneModeMonitor *)self setAirplaneMode:0];
}

- (id)latestEventAfterAddingObserverForEventName:(id)name
{
  nameCopy = name;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[(ULEvent *)ULAirplaneModeMonitorEventAirplaneMode];
  v7 = [nameCopy isEqual:v6];

  if (v7)
  {
    v8 = objc_alloc_init(ULAirplaneModeMonitorEventAirplaneMode);
    [(ULAirplaneModeMonitorEventAirplaneMode *)v8 setAirplaneMode:[(ULAirplaneModeMonitor *)self airplaneMode]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_checkAirplaneMode
{
  radiosPref = [(ULAirplaneModeMonitor *)self radiosPref];
  airplaneMode = [radiosPref airplaneMode];

  return airplaneMode;
}

- (void)airplaneModeChanged
{
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  _checkAirplaneMode = [(ULAirplaneModeMonitor *)self _checkAirplaneMode];
  if (_checkAirplaneMode != [(ULAirplaneModeMonitor *)self airplaneMode])
  {
    [(ULAirplaneModeMonitor *)self setAirplaneMode:_checkAirplaneMode];
    v5 = objc_alloc_init(ULAirplaneModeMonitorEventAirplaneMode);
    [(ULAirplaneModeMonitorEventAirplaneMode *)v5 setAirplaneMode:_checkAirplaneMode];
    [(ULEventMonitor *)self postEvent:v5];
  }
}

@end