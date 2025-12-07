@interface _DKPluggedInMonitor
+ (id)_BMEventWithState:(BOOL)state adapterType:(int64_t)type isWireless:(BOOL)wireless;
+ (id)_eventWithState:(BOOL)state adapterType:(int64_t)type isWireless:(BOOL)wireless;
+ (void)setIsPluggedIn:(BOOL)in;
- (void)deactivate;
- (void)dealloc;
- (void)setCurrentState;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
@end

@implementation _DKPluggedInMonitor

- (void)dealloc
{
  [(_DKPluggedInMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKPluggedInMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

+ (void)setIsPluggedIn:(BOOL)in
{
  inCopy = in;
  v11 = *MEMORY[0x277D85DE8];
  v4 = _DKPluggedInMonitorLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:inCopy];
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_22595A000, v4, OS_LOG_TYPE_DEFAULT, "Updating context store with plug in state: %{public}@", &v9, 0xCu);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:inCopy];
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForPluginStatus = [MEMORY[0x277CFE338] keyPathForPluginStatus];
  [userContext setObject:v6 forKeyedSubscript:keyPathForPluginStatus];
}

+ (id)_eventWithState:(BOOL)state adapterType:(int64_t)type isWireless:(BOOL)wireless
{
  wirelessCopy = wireless;
  stateCopy = state;
  v21[2] = *MEMORY[0x277D85DE8];
  if (state)
  {
    [MEMORY[0x277CFE1A0] yes];
  }

  else
  {
    [MEMORY[0x277CFE1A0] no];
  }
  v8 = ;
  [_DKPluggedInMonitor setIsPluggedIn:stateCopy];
  if (type)
  {
    adapterType = [MEMORY[0x277CFE1C8] adapterType];
    v20[0] = adapterType;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v21[0] = v10;
    adapterIsWireless = [MEMORY[0x277CFE1C8] adapterIsWireless];
    v20[1] = adapterIsWireless;
    v12 = [MEMORY[0x277CCABB0] numberWithBool:wirelessCopy];
    v21[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  }

  else
  {
    v13 = 0;
  }

  v14 = MEMORY[0x277CFE1D8];
  deviceIsPluggedInStream = [MEMORY[0x277CFE298] deviceIsPluggedInStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v18 = [v14 eventWithStream:deviceIsPluggedInStream startDate:date endDate:distantFuture value:v8 metadata:v13];

  return v18;
}

+ (id)_BMEventWithState:(BOOL)state adapterType:(int64_t)type isWireless:(BOOL)wireless
{
  wirelessCopy = wireless;
  stateCopy = state;
  v8 = objc_alloc(MEMORY[0x277CF1110]);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:stateCopy];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:wirelessCopy];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v12 = [v8 initWithStarting:v9 wireless:v10 adapterType:v11];

  return v12;
}

- (void)setCurrentState
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = _DKPluggedInMonitorLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 67109120;
    LODWORD(v25) = qos_class_self();
    _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_DEFAULT, "Querying current state with QoS %d", &v24, 8u);
  }

  v4 = IOPSCopyPowerSourcesInfo();
  if (!v4)
  {
    v10 = _DKPluggedInMonitorLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_DKPluggedInMonitor setCurrentState];
    }

    goto LABEL_13;
  }

  v5 = v4;
  v6 = IOPSPowerSourceSupported();
  if (!v6)
  {
    v7 = _DKPluggedInMonitorLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_DKPluggedInMonitor setCurrentState];
    }
  }

  Value = CFBooleanGetValue(v6);
  CFRelease(v5);
  if (Value)
  {
    v10 = IOPSCopyExternalPowerAdapterDetails();
    if (v10)
    {
      v11 = IOPSDrawingUnlimitedPower();
      v12 = [v10 objectForKeyedSubscript:@"FamilyCode"];
      integerValue = [v12 integerValue];

      v14 = [v10 objectForKeyedSubscript:@"IsWireless"];
      bOOLValue = [v14 BOOLValue];

LABEL_14:
      goto LABEL_16;
    }

LABEL_13:
    bOOLValue = 0;
    integerValue = 0;
    v11 = 0;
    goto LABEL_14;
  }

  bOOLValue = 0;
  integerValue = 0;
  v11 = 1;
LABEL_16:
  v16 = _DKPluggedInMonitorLog(v9);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v24 = 138543874;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    v28 = 2114;
    v29 = v19;
    _os_log_impl(&dword_22595A000, v16, OS_LOG_TYPE_DEFAULT, "Setting current state plugin:%{public}@, adapterType:%{public}@, wireless:%{public}@", &v24, 0x20u);
  }

  currentEvent = [(_DKMonitor *)self currentEvent];
  v21 = [_DKPluggedInMonitor _eventWithState:v11 adapterType:integerValue isWireless:bOOLValue];
  if ([(_DKMonitor *)self historicalStateHasChanged:v21])
  {
    v22 = [objc_opt_class() _BMEventWithState:v11 adapterType:integerValue isWireless:bOOLValue];
    [(BMSource *)self->_source sendEvent:v22];
  }

  v23 = _DKPluggedInMonitorLog([(_DKMonitor *)self setCurrentEvent:v21 inferHistoricalState:1]);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    v25 = v21;
    v26 = 2112;
    v27 = currentEvent;
    _os_log_impl(&dword_22595A000, v23, OS_LOG_TYPE_DEFAULT, "Setting current event: %@, previousEvent: %@", &v24, 0x16u);
  }
}

- (void)start
{
  v12.receiver = self;
  v12.super_class = _DKPluggedInMonitor;
  if ([(_DKMonitor *)&v12 instantMonitorNeedsActivation])
  {
    v3 = BiomeLibrary();
    device = [v3 Device];
    power = [device Power];
    pluggedIn = [power PluggedIn];
    source = [pluggedIn source];
    source = self->_source;
    self->_source = source;

    self->_enabled = 1;
    uTF8String = [@"com.apple.system.powermanagement.poweradapter" UTF8String];
    queue = [(_DKMonitor *)self queue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __28___DKPluggedInMonitor_start__block_invoke;
    handler[3] = &unk_27856F408;
    handler[4] = self;
    notify_register_dispatch(uTF8String, &self->_pluggedInToken, queue, handler);

    [(_DKPluggedInMonitor *)self setCurrentState];
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKPluggedInMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKPluggedInMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  self->_enabled = 0;
  pluggedInToken = self->_pluggedInToken;
  if (pluggedInToken)
  {
    notify_cancel(pluggedInToken);
    self->_pluggedInToken = 0;
  }
}

- (void)synchronouslyReflectCurrentValue
{
  v15 = *MEMORY[0x277D85DE8];
  currentEvent = [(_DKMonitor *)self currentEvent];

  if (!currentEvent)
  {
    v3 = IOPSCopyPowerSourcesInfo();
    if (v3)
    {
      v4 = v3;
      v5 = IOPSPowerSourceSupported();
      if (!v5)
      {
        v6 = _DKPluggedInMonitorLog(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [_DKPluggedInMonitor setCurrentState];
        }
      }

      Value = CFBooleanGetValue(v5);
      CFRelease(v4);
      if (Value)
      {
        v8 = IOPSDrawingUnlimitedPower();
        v9 = v8;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v10 = _DKPluggedInMonitorLog(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_DKPluggedInMonitor setCurrentState];
      }

      v9 = 0;
    }

    v11 = _DKPluggedInMonitorLog(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_22595A000, v11, OS_LOG_TYPE_DEFAULT, "Synchronously reflecting current plug in status: %{public}@", &v13, 0xCu);
    }

    [_DKPluggedInMonitor setIsPluggedIn:v9];
  }
}

@end