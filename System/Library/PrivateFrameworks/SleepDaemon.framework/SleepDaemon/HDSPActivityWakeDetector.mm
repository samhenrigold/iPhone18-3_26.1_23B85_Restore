@interface HDSPActivityWakeDetector
- (HDSPActivityWakeDetector)initWithEnvironment:(id)environment;
- (HDSPEnvironment)environment;
- (HDSPWakeDetectorDelegate)wakeDetectorDelegate;
- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name;
- (void)notifyForActivityDetectedOnDate:(id)date;
- (void)startDetecting;
- (void)stopDetecting;
@end

@implementation HDSPActivityWakeDetector

- (HDSPActivityWakeDetector)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = HDSPActivityWakeDetector;
  v5 = [(HDSPActivityWakeDetector *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v7 = v6;
  }

  return v6;
}

- (void)startDetecting
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_isDetecting)
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = objc_opt_class();
      v4 = v8;
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] startDetecting", &v7, 0xCu);
    }

    self->_isDetecting = 1;
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    notificationListener = [WeakRetained notificationListener];
    [notificationListener addObserver:self];
  }
}

- (void)stopDetecting
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] stopDetecting", &v7, 0xCu);
  }

  self->_isDetecting = 0;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  notificationListener = [WeakRetained notificationListener];
  [notificationListener removeObserver:self];
}

- (void)notifyForActivityDetectedOnDate:(id)date
{
  v12 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = dateCopy;
    v6 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] notifying for activity detected on date %{public}@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_wakeDetectorDelegate);
  [WeakRetained wakeDetector:self didDetectWakeUpEventOnDate:dateCopy];
}

- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy isEqualToString:@"com.apple.healthlite.SleepDetectedActivity"] && self->_isDetecting)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 138543618;
      *&v16[4] = objc_opt_class();
      *&v16[12] = 2114;
      *&v16[14] = nameCopy;
      v7 = *&v16[4];
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@", v16, 0x16u);
    }

    environment = [(HDSPActivityWakeDetector *)self environment];
    currentDateProvider = [environment currentDateProvider];
    v13 = currentDateProvider[2](currentDateProvider, v10, v11, v12);
    [(HDSPActivityWakeDetector *)self notifyForActivityDetectedOnDate:v13];
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  return futureWithNoResult;
}

- (HDSPWakeDetectorDelegate)wakeDetectorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wakeDetectorDelegate);

  return WeakRetained;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end