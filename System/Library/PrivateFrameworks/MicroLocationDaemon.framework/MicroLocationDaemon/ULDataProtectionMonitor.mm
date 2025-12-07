@interface ULDataProtectionMonitor
- (BOOL)_checkDataAvailable;
- (ULDataProtectionMonitor)initWithNotificationHelper:(id)helper;
- (id)latestEventAfterAddingObserverForEventName:(id)name;
- (int)_checkHasContentProtection;
- (void)_handleKeyBagLockStatusChangeNotification;
- (void)startMonitoring:(id)monitoring;
- (void)stopMonitoring:(id)monitoring;
@end

@implementation ULDataProtectionMonitor

- (void)_handleKeyBagLockStatusChangeNotification
{
  queue = [(ULEventMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__ULDataProtectionMonitor__handleKeyBagLockStatusChangeNotification__block_invoke;
  block[3] = &unk_2798D41D8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __68__ULDataProtectionMonitor__handleKeyBagLockStatusChangeNotification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkDataAvailable];
  if (v2 != [*(a1 + 32) dataAvailable])
  {
    [*(a1 + 32) setDataAvailable:v2];
    v3 = objc_alloc_init(ULDataProtectionMonitorEventDataAvailable);
    [(ULDataProtectionMonitorEventDataAvailable *)v3 setDataAvailable:v2];
    [*(a1 + 32) postEvent:v3];
  }
}

- (BOOL)_checkDataAvailable
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = MKBGetDeviceLockState();
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULDataProtectionMonitor stopMonitoring:];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = v3;
    v6 = [v4 numberWithInt:v2];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "Lock state: %@", &v9, 0xCu);
  }

  return v2 == 3 || v2 == 0;
}

- (ULDataProtectionMonitor)initWithNotificationHelper:(id)helper
{
  helperCopy = helper;
  v8.receiver = self;
  v8.super_class = ULDataProtectionMonitor;
  v5 = [(ULEventMonitor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ULDataProtectionMonitor *)v5 setNotificationHelper:helperCopy];
  }

  return v6;
}

- (void)startMonitoring:(id)monitoring
{
  v16 = *MEMORY[0x277D85DE8];
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(ULDataProtectionMonitor *)self _checkHasContentProtection]== 1)
  {
    objc_initWeak(location, self);
    notificationHelper = [(ULDataProtectionMonitor *)self notificationHelper];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__ULDataProtectionMonitor_startMonitoring___block_invoke;
    v11[3] = &unk_2798D4080;
    objc_copyWeak(&v12, location);
    [notificationHelper addObserverForNotificationName:@"com.apple.mobile.keybagd.lock_status" handler:v11];

    [(ULDataProtectionMonitor *)self setDataAvailable:[(ULDataProtectionMonitor *)self _checkDataAvailable]];
    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  else
  {
    [(ULDataProtectionMonitor *)self setDataAvailable:1];
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULDataProtectionMonitor startMonitoring:];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    dataAvailable = [(ULDataProtectionMonitor *)self dataAvailable];
    v10 = @"NO";
    if (dataAvailable)
    {
      v10 = @"YES";
    }

    *location = 138412546;
    *&location[4] = monitoringCopy;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "Start monitoring: %@, dataAvailable: %@", location, 0x16u);
  }
}

void __43__ULDataProtectionMonitor_startMonitoring___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleKeyBagLockStatusChangeNotification];
    WeakRetained = v2;
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
    [ULDataProtectionMonitor stopMonitoring:];
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = monitoringCopy;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "Stop monitoring: %@", &v8, 0xCu);
  }

  notificationHelper = [(ULDataProtectionMonitor *)self notificationHelper];
  [notificationHelper removeObserverForNotificationName:@"com.apple.mobile.keybagd.lock_status"];

  [(ULDataProtectionMonitor *)self setDataAvailable:0];
}

- (id)latestEventAfterAddingObserverForEventName:(id)name
{
  nameCopy = name;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[(ULEvent *)ULDataProtectionMonitorEventDataAvailable];
  v7 = [nameCopy isEqual:v6];

  if (v7)
  {
    v8 = objc_alloc_init(ULDataProtectionMonitorEventDataAvailable);
    [(ULDataProtectionMonitorEventDataAvailable *)v8 setDataAvailable:[(ULDataProtectionMonitor *)self dataAvailable]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)_checkHasContentProtection
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = MKBDeviceFormattedForContentProtection();
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULDataProtectionMonitor stopMonitoring:];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"YES";
    if (!v2)
    {
      v4 = @"NO";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "Init, content protection: %@", &v6, 0xCu);
  }

  return v2;
}

@end