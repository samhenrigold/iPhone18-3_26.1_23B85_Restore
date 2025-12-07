@interface _HKSPDarwinNotificationHeartbeatListener
- (HKSPXPCHeartbeatListenerDelegate)delegate;
- (_HKSPDarwinNotificationHeartbeatListener)initWithLifecycleNotification:(id)notification;
- (void)didReceiveLifecycleNotification;
- (void)setHeartbeatDelegate:(id)delegate;
@end

@implementation _HKSPDarwinNotificationHeartbeatListener

- (_HKSPDarwinNotificationHeartbeatListener)initWithLifecycleNotification:(id)notification
{
  notificationCopy = notification;
  v9.receiver = self;
  v9.super_class = _HKSPDarwinNotificationHeartbeatListener;
  v6 = [(_HKSPDarwinNotificationHeartbeatListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lifecycleNotification, notification);
  }

  return v7;
}

- (void)setHeartbeatDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  lifecycleNotification = self->_lifecycleNotification;
  if (delegate)
  {

    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleLifeCycleNotification, lifecycleNotification, self, 1028);
  }

  else
  {
    v7 = self->_lifecycleNotification;

    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v7, self);
  }
}

- (void)didReceiveLifecycleNotification
{
  v12 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] received lifecycle notification %{public}@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained listenerDidReceiveHeartbeat:self];
}

- (HKSPXPCHeartbeatListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end