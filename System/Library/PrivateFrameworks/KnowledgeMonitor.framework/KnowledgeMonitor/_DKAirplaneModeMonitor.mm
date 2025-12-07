@interface _DKAirplaneModeMonitor
+ (id)_BMEventWithState:(BOOL)state;
+ (id)_eventWithState:(BOOL)state;
- (void)deactivate;
- (void)dealloc;
- (void)start;
- (void)stop;
- (void)updateAirplaneModeStatus;
@end

@implementation _DKAirplaneModeMonitor

+ (id)_eventWithState:(BOOL)state
{
  if (state)
  {
    [MEMORY[0x277CFE1A0] yes];
  }

  else
  {
    [MEMORY[0x277CFE1A0] no];
  }
  v3 = ;
  v4 = MEMORY[0x277CFE1D8];
  airplaneModeStream = [MEMORY[0x277CFE298] airplaneModeStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [v4 eventWithStream:airplaneModeStream startDate:date endDate:distantFuture value:v3];

  return v8;
}

+ (id)_BMEventWithState:(BOOL)state
{
  stateCopy = state;
  v4 = objc_alloc(MEMORY[0x277CF1090]);
  v5 = [MEMORY[0x277CCABB0] numberWithBool:stateCopy];
  v6 = [v4 initWithStarting:v5];

  return v6;
}

- (void)dealloc
{
  [(_DKAirplaneModeMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKAirplaneModeMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

- (void)start
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[_DKAirplaneModeMonitor start]";
  _os_log_error_impl(&dword_22595A000, log, OS_LOG_TYPE_ERROR, "%s: SCPreferencesCreate() failed for com.apple.radios.plist", &v1, 0xCu);
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKAirplaneModeMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKAirplaneModeMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[_DKAirplaneModeMonitor deactivate]";
  OUTLINED_FUNCTION_1_0(&dword_22595A000, self, a3, "%s: Deactivated _DKAirplaneModeMonitor", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updateAirplaneModeStatus
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[_DKAirplaneModeMonitor updateAirplaneModeStatus]";
  _os_log_error_impl(&dword_22595A000, log, OS_LOG_TYPE_ERROR, "%s: SCPreferencesRef is nil", &v1, 0xCu);
}

@end