@interface MechanismAssertionWithDarwinNotifications
- (MechanismAssertionWithDarwinNotifications)initWithMechanism:(id)mechanism inStateNotificationName:(id)name outStateNotificationName:(id)notificationName;
- (id)_notificationNameForInState:(BOOL)state;
- (id)assertInState;
- (int)_notificationTokenForInState:(BOOL)state;
- (void)_registerDarwinNotificationForInState:(BOOL)state;
- (void)_unregisterDarwinNotificationForInstate:(BOOL)instate;
- (void)handleAssertionFailureWithReason:(id)reason error:(id)error;
- (void)handleAssertionSuccessWithReason:(id)reason;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation MechanismAssertionWithDarwinNotifications

- (MechanismAssertionWithDarwinNotifications)initWithMechanism:(id)mechanism inStateNotificationName:(id)name outStateNotificationName:(id)notificationName
{
  nameCopy = name;
  notificationNameCopy = notificationName;
  v14.receiver = self;
  v14.super_class = MechanismAssertionWithDarwinNotifications;
  v11 = [(MechanismAssertion *)&v14 initWithMechanism:mechanism];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_inStateNotificationName, name);
    objc_storeStrong(&v12->_outStateNotificationName, notificationName);
    v12->_isInState = 1;
  }

  return v12;
}

- (id)assertInState
{
  if (self->_isInState)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CD47F0] errorWithCode:-4 message:{@"Assertion failed", v2}];
  }

  return v4;
}

- (void)startMonitoring
{
  v3.receiver = self;
  v3.super_class = MechanismAssertionWithDarwinNotifications;
  [(MechanismAssertion *)&v3 startMonitoring];
  [(MechanismAssertionWithDarwinNotifications *)self _registerDarwinNotificationForInState:1];
  [(MechanismAssertionWithDarwinNotifications *)self _registerDarwinNotificationForInState:0];
}

- (void)stopMonitoring
{
  v3.receiver = self;
  v3.super_class = MechanismAssertionWithDarwinNotifications;
  [(MechanismAssertion *)&v3 stopMonitoring];
  [(MechanismAssertionWithDarwinNotifications *)self _unregisterDarwinNotificationForInstate:1];
  [(MechanismAssertionWithDarwinNotifications *)self _unregisterDarwinNotificationForInstate:0];
}

- (void)handleAssertionSuccessWithReason:(id)reason
{
  v4.receiver = self;
  v4.super_class = MechanismAssertionWithDarwinNotifications;
  [(MechanismAssertion *)&v4 handleAssertionSuccessWithReason:reason];
  self->_isInState = 1;
}

- (void)handleAssertionFailureWithReason:(id)reason error:(id)error
{
  v5.receiver = self;
  v5.super_class = MechanismAssertionWithDarwinNotifications;
  [(MechanismAssertion *)&v5 handleAssertionFailureWithReason:reason error:error];
  self->_isInState = 0;
}

- (void)_registerDarwinNotificationForInState:(BOOL)state
{
  stateCopy = state;
  v5 = [(MechanismAssertionWithDarwinNotifications *)self _notificationTokenForInState:?];
  v6 = [(MechanismAssertionWithDarwinNotifications *)self _notificationNameForInState:stateCopy];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"received %@", v6];
  objc_initWeak(&location, self);
  uTF8String = [v6 UTF8String];
  queue = [MEMORY[0x277CD47C8] queue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __83__MechanismAssertionWithDarwinNotifications__registerDarwinNotificationForInState___block_invoke;
  handler[3] = &unk_278A62E38;
  objc_copyWeak(&v17, &location);
  v18 = stateCopy;
  v10 = v7;
  v16 = v10;
  v11 = notify_register_dispatch(uTF8String, v5, queue, handler);

  if (v11)
  {
    mechanism = [(MechanismAssertion *)self mechanism];
    request = [mechanism request];
    v14 = [request log];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(MechanismAssertionWithDarwinNotifications *)v6 _registerDarwinNotificationForInState:v11, v14];
    }
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __83__MechanismAssertionWithDarwinNotifications__registerDarwinNotificationForInState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6 = WeakRetained;
    if (v3 == 1)
    {
      [WeakRetained handleAssertionSuccessWithReason:v4];
    }

    else
    {
      v5 = [WeakRetained assertInState];
      [v6 handleAssertionFailureWithReason:v4 error:v5];
    }

    WeakRetained = v6;
  }
}

- (void)_unregisterDarwinNotificationForInstate:(BOOL)instate
{
  v3 = *[(MechanismAssertionWithDarwinNotifications *)self _notificationTokenForInState:instate];
  if (v3)
  {

    notify_cancel(v3);
  }
}

- (id)_notificationNameForInState:(BOOL)state
{
  if (state)
  {
    [(MechanismAssertionWithDarwinNotifications *)self inStateNotificationName];
  }

  else
  {
    [(MechanismAssertionWithDarwinNotifications *)self outStateNotificationName];
  }
  v3 = ;

  return v3;
}

- (int)_notificationTokenForInState:(BOOL)state
{
  v3 = &OBJC_IVAR___MechanismAssertionWithDarwinNotifications__outStateToken;
  if (state)
  {
    v3 = &OBJC_IVAR___MechanismAssertionWithDarwinNotifications__inStateToken;
  }

  return (self + *v3);
}

- (void)_registerDarwinNotificationForInState:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_fault_impl(&dword_238B95000, log, OS_LOG_TYPE_FAULT, "Failed to register %{public}@: %u", &v3, 0x12u);
}

@end