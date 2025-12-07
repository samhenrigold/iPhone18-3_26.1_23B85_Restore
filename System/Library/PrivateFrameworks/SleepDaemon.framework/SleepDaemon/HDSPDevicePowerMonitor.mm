@interface HDSPDevicePowerMonitor
- (BOOL)isCharging;
- (HDSPDevicePowerMonitor)init;
- (HDSPDevicePowerMonitor)initWithCallbackScheduler:(id)scheduler;
- (float)batteryLevel;
- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name;
@end

@implementation HDSPDevicePowerMonitor

- (HDSPDevicePowerMonitor)init
{
  hkspMainThreadScheduler = [MEMORY[0x277D2C938] hkspMainThreadScheduler];
  v4 = [(HDSPDevicePowerMonitor *)self initWithCallbackScheduler:hkspMainThreadScheduler];

  return v4;
}

- (HDSPDevicePowerMonitor)initWithCallbackScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v10.receiver = self;
  v10.super_class = HDSPDevicePowerMonitor;
  v5 = [(HDSPDevicePowerMonitor *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D624A0]) initWithCallbackScheduler:schedulerCopy];
    observers = v5->_observers;
    v5->_observers = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isCharging
{
  v11 = *MEMORY[0x277D85DE8];
  isChargingOverride = self->_isChargingOverride;
  if (isChargingOverride)
  {

    return [(NSNumber *)isChargingOverride BOOLValue];
  }

  else
  {
    v4 = HKSPIsCharging();
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = objc_opt_class();
      v9 = 1024;
      v10 = v4;
      v6 = v8;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] charging: %d", &v7, 0x12u);
    }

    return v4;
  }
}

- (float)batteryLevel
{
  v12 = *MEMORY[0x277D85DE8];
  batteryLevelOverride = self->_batteryLevelOverride;
  if (batteryLevelOverride)
  {

    [(NSNumber *)batteryLevelOverride floatValue];
  }

  else
  {
    HKSPBatteryLevel();
    v5 = v4;
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 2048;
      v11 = v5;
      v7 = v9;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] battery level: %f", &v8, 0x16u);
    }

    return v5;
  }

  return result;
}

- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy isEqualToString:@"com.apple.system.powersources.source"])
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = nameCopy;
      v7 = v13;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@", buf, 0x16u);
    }

    observers = self->_observers;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__HDSPDevicePowerMonitor_notificationListener_didReceiveNotificationWithName___block_invoke;
    v11[3] = &unk_279C7CE10;
    v11[4] = self;
    [(HKSPObserverSet *)observers enumerateObserversWithBlock:v11];
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  return futureWithNoResult;
}

void __78__HDSPDevicePowerMonitor_notificationListener_didReceiveNotificationWithName___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 deviceChangedChargingState:{objc_msgSend(v2, "isCharging")}];
}

@end