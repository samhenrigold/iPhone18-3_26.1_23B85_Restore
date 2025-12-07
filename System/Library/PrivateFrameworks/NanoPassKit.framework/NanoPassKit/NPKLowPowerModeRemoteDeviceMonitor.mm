@interface NPKLowPowerModeRemoteDeviceMonitor
+ (id)sharedInstance;
- (BOOL)isLowPowerModeEnabled;
- (NPKLowPowerModeRemoteDeviceMonitor)init;
- (void)_sendLowPowerModeEnabled:(BOOL)enabled toObserver:(id)observer;
- (void)_sendLowPowerModeEnabledStateToObservers;
- (void)dealloc;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation NPKLowPowerModeRemoteDeviceMonitor

- (BOOL)isLowPowerModeEnabled
{
  _currentDeviceDomainAccessor = [(NPKLowPowerModeRemoteDeviceMonitor *)self _currentDeviceDomainAccessor];
  synchronize = [_currentDeviceDomainAccessor synchronize];
  v4 = [_currentDeviceDomainAccessor BOOLForKey:@"LowPowerMode"];

  return v4;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[NPKLowPowerModeRemoteDeviceMonitor sharedInstance];
  }

  v3 = sharedInstance_monitor_0;

  return v3;
}

void __52__NPKLowPowerModeRemoteDeviceMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NPKLowPowerModeRemoteDeviceMonitor);
  v1 = sharedInstance_monitor_0;
  sharedInstance_monitor_0 = v0;
}

- (NPKLowPowerModeRemoteDeviceMonitor)init
{
  v7.receiver = self;
  v7.super_class = NPKLowPowerModeRemoteDeviceMonitor;
  v2 = [(NPKLowPowerModeRemoteDeviceMonitor *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NPKThreadSafeObserverManager);
    observersManager = v2->_observersManager;
    v2->_observersManager = &v3->super;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, lowPowerModeChangedNotification, @"com.apple.Carousel.LowPowerMode", 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.Carousel.LowPowerMode", 0);
  v4.receiver = self;
  v4.super_class = NPKLowPowerModeRemoteDeviceMonitor;
  [(NPKLowPowerModeRemoteDeviceMonitor *)&v4 dealloc];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  [(NPKObserverManager *)self->_observersManager registerObserver:observerCopy];
  isLowPowerModeEnabled = [(NPKLowPowerModeRemoteDeviceMonitor *)self isLowPowerModeEnabled];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__NPKLowPowerModeRemoteDeviceMonitor_registerObserver___block_invoke;
  v7[3] = &unk_279946490;
  v9 = isLowPowerModeEnabled;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  NPKGuaranteeMainThread(v7);
}

- (void)unregisterObserver:(id)observer
{
  observersManager = self->_observersManager;
  observerCopy = observer;
  [(NPKObserverManager *)observersManager unregisterObserver:observerCopy];
}

- (void)_sendLowPowerModeEnabledStateToObservers
{
  v14 = *MEMORY[0x277D85DE8];
  isLowPowerModeEnabled = [(NPKLowPowerModeRemoteDeviceMonitor *)self isLowPowerModeEnabled];
  v4 = isLowPowerModeEnabled;
  v5 = pk_General_log(isLowPowerModeEnabled);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"disabled";
      if (v4)
      {
        v9 = @"enabled";
      }

      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKLowPowerModeMonitor: Sending low power mode %@ state to observers.", buf, 0xCu);
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__NPKLowPowerModeRemoteDeviceMonitor__sendLowPowerModeEnabledStateToObservers__block_invoke;
  v10[3] = &unk_279944FC0;
  v10[4] = self;
  v11 = v4;
  NPKGuaranteeMainThread(v10);
}

uint64_t __78__NPKLowPowerModeRemoteDeviceMonitor__sendLowPowerModeEnabledStateToObservers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__NPKLowPowerModeRemoteDeviceMonitor__sendLowPowerModeEnabledStateToObservers__block_invoke_2;
  v4[3] = &unk_279947260;
  v4[4] = v1;
  v5 = *(a1 + 40);
  return [v2 enumerateObserversUsingBlock:v4];
}

- (void)_sendLowPowerModeEnabled:(BOOL)enabled toObserver:(id)observer
{
  enabledCopy = enabled;
  v17 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = pk_General_log(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_General_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"disabled";
      if (enabledCopy)
      {
        v12 = @"enabled";
      }

      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = observerCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKLowPowerModeMonitor: Sending low power mode %@ state to observer %@.", &v13, 0x16u);
    }
  }

  [observerCopy lowPowerModeMonitor:self didUpdateLowPowerModeEnabled:enabledCopy];
}

@end