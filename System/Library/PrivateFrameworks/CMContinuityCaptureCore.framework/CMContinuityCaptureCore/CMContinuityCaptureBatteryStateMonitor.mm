@interface CMContinuityCaptureBatteryStateMonitor
+ (id)sharedInstance;
+ (int64_t)resolveBatteryState:(BOOL)state isBatteryChargingThermallyLimited:(BOOL)limited batteryCapacity:(id)capacity;
+ (void)invalidate;
- (BOOL)invalidated;
- (BOOL)setupNotification;
- (CMContinuityCaptureBatteryStateMonitor)initWithQueue:(id)queue;
- (void)handleBatteryInfoChanged;
- (void)invalidate;
- (void)setInvalidated:(BOOL)invalidated;
- (void)setupNotification;
@end

@implementation CMContinuityCaptureBatteryStateMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  }

  v3 = _batteryStateMonitor;

  return v3;
}

void __56__CMContinuityCaptureBatteryStateMonitor_sharedInstance__block_invoke()
{
  v0 = [CMContinuityCaptureBatteryStateMonitor alloc];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.continuitycapture.batterymonitor", v4);
  v2 = [(CMContinuityCaptureBatteryStateMonitor *)v0 initWithQueue:?];
  v3 = _batteryStateMonitor;
  _batteryStateMonitor = v2;
}

- (BOOL)invalidated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  invalidated = selfCopy->_invalidated;
  objc_sync_exit(selfCopy);

  return invalidated;
}

- (void)setInvalidated:(BOOL)invalidated
{
  obj = self;
  objc_sync_enter(obj);
  obj->_invalidated = invalidated;
  objc_sync_exit(obj);
}

+ (void)invalidate
{
  if (([_batteryStateMonitor invalidated] & 1) == 0)
  {
    [_batteryStateMonitor invalidate];
    v2 = _batteryStateMonitor;

    [v2 setInvalidated:?];
  }
}

- (void)invalidate
{
  ioNotificationPort = self->_ioNotificationPort;
  if (ioNotificationPort)
  {
    IONotificationPortDestroy(ioNotificationPort);
    self->_ioNotificationPort = 0;
  }

  serviceNotification = self->_serviceNotification;
  if (serviceNotification)
  {
    IOObjectRelease(serviceNotification);
    self->_serviceNotification = 0;
  }
}

+ (int64_t)resolveBatteryState:(BOOL)state isBatteryChargingThermallyLimited:(BOOL)limited batteryCapacity:(id)capacity
{
  limitedCopy = limited;
  stateCopy = state;
  capacityCopy = capacity;
  v8 = capacityCopy;
  if (stateCopy)
  {
    if ([capacityCopy intValue] > 74 || limitedCopy)
    {
      if ([v8 intValue] <= 74 && limitedCopy)
      {
        v9 = 4;
      }

      else
      {
        v9 = 4 * ([v8 intValue] > 74);
      }
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)setupNotification
{
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__CMContinuityCaptureBatteryStateMonitor_setupNotification__block_invoke;
  v17[3] = &unk_278D5C080;
  objc_copyWeak(&v18, &location);
  v3 = MEMORY[0x245D12020](v17);
  v4 = *MEMORY[0x277CD2898];
  v5 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  self->_ioNotificationPort = v5;
  if (!v5)
  {
    v12 = CMContinuityCaptureLog(2);
    [(CMContinuityCaptureBatteryStateMonitor *)v12 setupNotification];
LABEL_9:

    v10 = 0;
    goto LABEL_6;
  }

  v6 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(v4, v6);
  if (!MatchingService)
  {
    v13 = CMContinuityCaptureLog(2);
    [(CMContinuityCaptureBatteryStateMonitor *)v13 setupNotification];
    goto LABEL_9;
  }

  ioNotificationPort = self->_ioNotificationPort;
  v9 = objc_loadWeakRetained(&location);
  LODWORD(ioNotificationPort) = IOServiceAddInterestNotification(ioNotificationPort, MatchingService, "IOGeneralInterest", handleBatteryInfoChanged, v9, &self->_serviceNotification);

  v10 = ioNotificationPort == 0;
  if (ioNotificationPort)
  {
    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInt:?];
      [(CMContinuityCaptureBatteryStateMonitor *)v15 setupNotification];
    }
  }

  else
  {
    IONotificationPortSetDispatchQueue(self->_ioNotificationPort, self->_queue);
    dispatch_assert_queue_not_V2(self->_queue);
    dispatch_async_and_wait(self->_queue, v3);
  }

  IOObjectRelease(MatchingService);
LABEL_6:

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  return v10;
}

void __59__CMContinuityCaptureBatteryStateMonitor_setupNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleBatteryInfoChanged];
    WeakRetained = v2;
  }
}

- (CMContinuityCaptureBatteryStateMonitor)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = CMContinuityCaptureBatteryStateMonitor;
  v6 = [(CMContinuityCaptureBatteryStateMonitor *)&v13 init];
  v7 = v6;
  if (!v6)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_queue, queue);
  batteryLevel = v7->_batteryLevel;
  v7->_batteryLevel = &unk_2854ECD08;

  v7->_batteryState = 0;
  if (![(CMContinuityCaptureBatteryStateMonitor *)v7 setupNotification])
  {
    v11 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 0;
      _os_log_error_impl(&dword_242545000, v11, OS_LOG_TYPE_ERROR, "Unable to setup battery state monitor", v12, 2u);
    }

    goto LABEL_8;
  }

  v9 = v7;
LABEL_4:

  return v9;
}

- (void)handleBatteryInfoChanged
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = *MEMORY[0x277CD2898];
  v4 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  if (MatchingService)
  {
    v6 = MatchingService;
    v7 = *MEMORY[0x277CBECE8];
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"CurrentCapacity", *MEMORY[0x277CBECE8], 0);
    v9 = IORegistryEntryCreateCFProperty(v6, @"ExternalConnected", v7, 0);
    v10 = IORegistryEntryCreateCFProperty(v6, @"ChargerData", v7, 0);
    v11 = [v10 objectForKeyedSubscript:?];
    if ([v11 intValue] >= 1)
    {
      [v9 BOOLValue];
    }

    if (CMContinityCaptureDebugLogEnabled(v12, v13))
    {
      v14 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v18 = 138413058;
        selfCopy = self;
        v20 = 2112;
        v21 = CFProperty;
        v22 = 2112;
        v23 = v9;
        v24 = 2112;
        v25 = v10;
        _os_log_debug_impl(&dword_242545000, v14, OS_LOG_TYPE_DEBUG, "%@ currentBatteryCapacity %@ externalACConnected %@ chargerDataDict %@", &v18, 0x2Au);
      }
    }

    [v9 BOOLValue];
    v15 = [CMContinuityCaptureBatteryStateMonitor resolveBatteryState:"resolveBatteryState:isBatteryChargingThermallyLimited:batteryCapacity:" isBatteryChargingThermallyLimited:? batteryCapacity:?];
    v16 = MEMORY[0x277CCABB0];
    [CFProperty floatValue];
    v17 = [v16 numberWithFloat:?];
    if (self->_batteryState != v15)
    {
      [OUTLINED_FUNCTION_0_7() willChangeValueForKey:?];
      self->_batteryState = v15;
      [OUTLINED_FUNCTION_0_7() didChangeValueForKey:?];
    }

    if (![(NSNumber *)self->_batteryLevel isEqualToNumber:?])
    {
      [OUTLINED_FUNCTION_0_7() willChangeValueForKey:?];
      objc_storeStrong(&self->_batteryLevel, v17);
      [OUTLINED_FUNCTION_0_7() didChangeValueForKey:?];
    }

    IOObjectRelease(v6);
  }
}

- (void)setupNotification
{
  if (os_log_type_enabled(self, OS_LOG_TYPE_ERROR))
  {
    v10 = 0;
    OUTLINED_FUNCTION_1_5(&dword_242545000, v4, v5, "Failed to create IO notification port from kIOMainPortDefault", v6, v7, v8, v9, v10);
  }

  *a2 = self;
}

@end