@interface NPKLowPowerModeLocalDeviceMonitor
+ (id)sharedInstance;
- (BOOL)isLowPowerModeEnabled;
- (NPKLowPowerModeLocalDeviceMonitor)init;
- (NPKLowPowerModeLocalDeviceMonitor)initWithNotificationCenter:(id)center;
- (void)_lowPowerModeStateChanged:(id)changed;
- (void)_sendLowPowerModeEnabled:(BOOL)enabled toObserver:(id)observer;
- (void)_sendLowPowerModeEnabledStateToObservers:(BOOL)observers;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation NPKLowPowerModeLocalDeviceMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[NPKLowPowerModeLocalDeviceMonitor sharedInstance];
  }

  v3 = sharedInstance_monitor;

  return v3;
}

void __51__NPKLowPowerModeLocalDeviceMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NPKLowPowerModeLocalDeviceMonitor);
  v1 = sharedInstance_monitor;
  sharedInstance_monitor = v0;
}

- (NPKLowPowerModeLocalDeviceMonitor)init
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [(NPKLowPowerModeLocalDeviceMonitor *)self initWithNotificationCenter:defaultCenter];

  return v4;
}

- (NPKLowPowerModeLocalDeviceMonitor)initWithNotificationCenter:(id)center
{
  centerCopy = center;
  v9.receiver = self;
  v9.super_class = NPKLowPowerModeLocalDeviceMonitor;
  v5 = [(NPKLowPowerModeLocalDeviceMonitor *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(NPKThreadSafeObserverManager);
    observersManager = v5->_observersManager;
    v5->_observersManager = &v6->super;

    [centerCopy addObserver:v5 selector:sel__lowPowerModeStateChanged_ name:*MEMORY[0x277CCA5E8] object:0];
  }

  return v5;
}

- (BOOL)isLowPowerModeEnabled
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  return isLowPowerModeEnabled;
}

- (void)_lowPowerModeStateChanged:(id)changed
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__NPKLowPowerModeLocalDeviceMonitor__lowPowerModeStateChanged___block_invoke;
  v3[3] = &unk_279944F98;
  v3[4] = self;
  NPKGuaranteeMainThread(v3);
}

uint64_t __63__NPKLowPowerModeLocalDeviceMonitor__lowPowerModeStateChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isLowPowerModeEnabled];
  v3 = *(a1 + 32);

  return [v3 _sendLowPowerModeEnabledStateToObservers:v2];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  [(NPKObserverManager *)self->_observersManager registerObserver:observerCopy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__NPKLowPowerModeLocalDeviceMonitor_registerObserver___block_invoke;
  v6[3] = &unk_2799454E0;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  NPKGuaranteeMainThread(v6);
}

uint64_t __54__NPKLowPowerModeLocalDeviceMonitor_registerObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isLowPowerModeEnabled];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _sendLowPowerModeEnabled:v2 toObserver:v4];
}

- (void)unregisterObserver:(id)observer
{
  observersManager = self->_observersManager;
  observerCopy = observer;
  [(NPKObserverManager *)observersManager unregisterObserver:observerCopy];
}

- (void)_sendLowPowerModeEnabledStateToObservers:(BOOL)observers
{
  observersCopy = observers;
  v15 = *MEMORY[0x277D85DE8];
  v5 = pk_General_log(self);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"disabled";
      if (observersCopy)
      {
        v9 = @"enabled";
      }

      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKLowPowerModeMonitor: Sending low power mode %@ state to observers.", buf, 0xCu);
    }
  }

  observersManager = self->_observersManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__NPKLowPowerModeLocalDeviceMonitor__sendLowPowerModeEnabledStateToObservers___block_invoke;
  v11[3] = &unk_279947260;
  v11[4] = self;
  v12 = observersCopy;
  [(NPKObserverManager *)observersManager enumerateObserversUsingBlock:v11];
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