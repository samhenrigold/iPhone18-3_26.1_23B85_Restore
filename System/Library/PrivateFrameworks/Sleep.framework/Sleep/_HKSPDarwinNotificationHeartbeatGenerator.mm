@interface _HKSPDarwinNotificationHeartbeatGenerator
- (_HKSPDarwinNotificationHeartbeatGenerator)initWithLifecycleNotification:(id)notification;
- (void)sendHeartbeat;
@end

@implementation _HKSPDarwinNotificationHeartbeatGenerator

- (_HKSPDarwinNotificationHeartbeatGenerator)initWithLifecycleNotification:(id)notification
{
  notificationCopy = notification;
  v9.receiver = self;
  v9.super_class = _HKSPDarwinNotificationHeartbeatGenerator;
  v6 = [(_HKSPDarwinNotificationHeartbeatGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lifecycleNotification, notification);
  }

  return v7;
}

- (void)sendHeartbeat
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_lifecycleNotification)
  {
    v3 = HKSPLogForCategory(4uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      lifecycleNotification = self->_lifecycleNotification;
      v8 = 138543618;
      v9 = v4;
      v10 = 2114;
      v11 = lifecycleNotification;
      v6 = v4;
      _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] posting lifecycle notification %{public}@", &v8, 0x16u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, self->_lifecycleNotification, 0, 0, 1u);
  }
}

@end