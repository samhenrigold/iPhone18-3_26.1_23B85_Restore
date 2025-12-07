@interface ULBuddyMonitor
- (ULBuddyMonitor)initWithNotificationHelper:(id)helper;
- (id)latestEventAfterAddingObserverForEventName:(id)name;
- (void)_handleBuddyCompleteNotification;
- (void)startMonitoring:(id)monitoring;
- (void)stopMonitoring:(id)monitoring;
@end

@implementation ULBuddyMonitor

- (ULBuddyMonitor)initWithNotificationHelper:(id)helper
{
  helperCopy = helper;
  v8.receiver = self;
  v8.super_class = ULBuddyMonitor;
  v5 = [(ULEventMonitor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ULBuddyMonitor *)v5 setNotificationHelper:helperCopy];
  }

  return v6;
}

- (void)startMonitoring:(id)monitoring
{
  v16 = *MEMORY[0x277D85DE8];
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ULBuddyMonitor *)self setBuddyComplete:[(ULBuddyMonitor *)self _checkBuddyComplete]];
  if (![(ULBuddyMonitor *)self buddyComplete])
  {
    objc_initWeak(location, self);
    notificationHelper = [(ULBuddyMonitor *)self notificationHelper];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __34__ULBuddyMonitor_startMonitoring___block_invoke;
    v11[3] = &unk_2798D4080;
    objc_copyWeak(&v12, location);
    [notificationHelper addObserverForNotificationName:*MEMORY[0x277D4D9E8] handler:v11];

    [(ULBuddyMonitor *)self setBuddyComplete:[(ULBuddyMonitor *)self _checkBuddyComplete]];
    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBuddyMonitor startMonitoring:];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    buddyComplete = [(ULBuddyMonitor *)self buddyComplete];
    v10 = @"NO";
    if (buddyComplete)
    {
      v10 = @"YES";
    }

    *location = 138412546;
    *&location[4] = monitoringCopy;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "Start monitoring: %@, buddyComplete: %@", location, 0x16u);
  }
}

void __34__ULBuddyMonitor_startMonitoring___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleBuddyCompleteNotification];
    WeakRetained = v2;
  }
}

- (void)stopMonitoring:(id)monitoring
{
  v10 = *MEMORY[0x277D85DE8];
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  notificationHelper = [(ULBuddyMonitor *)self notificationHelper];
  [notificationHelper removeObserverForNotificationName:*MEMORY[0x277D4D9E8]];

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBuddyMonitor stopMonitoring:];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = monitoringCopy;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "Stop monitoring: %@", &v8, 0xCu);
  }
}

- (id)latestEventAfterAddingObserverForEventName:(id)name
{
  nameCopy = name;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[(ULEvent *)ULBuddyMonitorEventBuddyComplete];
  v7 = [nameCopy isEqual:v6];

  if (v7)
  {
    v8 = objc_alloc_init(ULBuddyMonitorEventBuddyComplete);
    [(ULBuddyMonitorEventBuddyComplete *)v8 setBuddyComplete:[(ULBuddyMonitor *)self buddyComplete]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_handleBuddyCompleteNotification
{
  queue = [(ULEventMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ULBuddyMonitor__handleBuddyCompleteNotification__block_invoke;
  block[3] = &unk_2798D41D8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__ULBuddyMonitor__handleBuddyCompleteNotification__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBuddyComplete:1];
  v2 = objc_alloc_init(ULBuddyMonitorEventBuddyComplete);
  [(ULBuddyMonitorEventBuddyComplete *)v2 setBuddyComplete:1];
  [*(a1 + 32) postEvent:v2];
}

@end