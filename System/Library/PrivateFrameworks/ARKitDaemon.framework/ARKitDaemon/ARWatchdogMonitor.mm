@interface ARWatchdogMonitor
- (ARWatchdogMonitor)init;
@end

@implementation ARWatchdogMonitor

- (ARWatchdogMonitor)init
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = ARWatchdogMonitor;
  v2 = [(ARWatchdogMonitor *)&v8 init];
  if (v2)
  {
    if (_ARLogDaemon_onceToken_8 != -1)
    {
      [ARWatchdogMonitor init];
    }

    v3 = _ARLogDaemon_logObj_8;
    if (os_log_type_enabled(_ARLogDaemon_logObj_8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138543618;
      v10 = v6;
      v11 = 2048;
      v12 = v2;
      _os_log_impl(&dword_23D391000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Watchdog monitoring is not supported", buf, 0x16u);
    }
  }

  return 0;
}

@end