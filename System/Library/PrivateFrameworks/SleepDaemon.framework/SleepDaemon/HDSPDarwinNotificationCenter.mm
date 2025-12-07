@interface HDSPDarwinNotificationCenter
- (HDSPDarwinNotificationCenter)initWithEnvironment:(id)environment;
- (HDSPEnvironment)environment;
- (void)publishNotificationForEvent:(id)event;
- (void)tearDownNotificationForEventIdentifier:(id)identifier;
@end

@implementation HDSPDarwinNotificationCenter

- (HDSPDarwinNotificationCenter)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = HDSPDarwinNotificationCenter;
  v5 = [(HDSPDarwinNotificationCenter *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v7 = v6;
  }

  return v6;
}

- (void)publishNotificationForEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  identifier = [event identifier];
  v5 = *MEMORY[0x277D621D0];
  v6 = [identifier isEqualToString:*MEMORY[0x277D621D0]];

  if (v6)
  {
    environment = [(HDSPDarwinNotificationCenter *)self environment];
    sensitiveUIMonitor = [environment sensitiveUIMonitor];
    v9 = [sensitiveUIMonitor shouldHideForSensitivity:1];

    v10 = HKSPLogForCategory();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v15 = 138543618;
        v16 = objc_opt_class();
        v17 = 2114;
        v18 = v5;
        v12 = v16;
        _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] not posting %{public}@ because sensitive UI is disabled", &v15, 0x16u);
      }
    }

    else
    {
      if (v11)
      {
        v15 = 138543362;
        v16 = objc_opt_class();
        v13 = v16;
        _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Posting HKSPNotificationPresentGoodMorningAlert", &v15, 0xCu);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D620B0], 0, 0, 1u);
    }
  }
}

- (void)tearDownNotificationForEventIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  if ([identifier isEqualToString:*MEMORY[0x277D621D0]])
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = objc_opt_class();
      v4 = v7;
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Posting HKSPNotificationDismissGoodMorningAlert", &v6, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D620A8], 0, 0, 1u);
  }
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end