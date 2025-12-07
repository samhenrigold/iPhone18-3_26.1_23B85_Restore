@interface TLAlertActivationAssertion
- (TLAlertActivationAssertion)initWithAlert:(id)alert;
- (id)description;
- (void)_acquire;
- (void)_relinquish;
- (void)acquire;
- (void)dealloc;
- (void)relinquish;
@end

@implementation TLAlertActivationAssertion

- (TLAlertActivationAssertion)initWithAlert:(id)alert
{
  alertCopy = alert;
  v9.receiver = self;
  v9.super_class = TLAlertActivationAssertion;
  v6 = [(TLAlertActivationAssertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_alert, alert);
    atomic_store(0, &v7->_activeAcquisitionCount);
  }

  return v7;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_activeAcquisitionCount);
  if (v3 >= 1)
  {
    [(TLAlertActivationAssertion *)self _relinquish];
  }

  v4.receiver = self;
  v4.super_class = TLAlertActivationAssertion;
  [(TLAlertActivationAssertion *)&v4 dealloc];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@"; alert = %@", self->_alert];
  v7 = atomic_load(&self->_activeAcquisitionCount);
  if (v7 >= 1)
  {
    [v6 appendString:@"; isAquired = YES"];
  }

  [v6 appendString:@">"];

  return v6;
}

- (void)acquire
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = TLLogPlayback(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: -acquire.", &v4, 0xCu);
  }

  if (!atomic_fetch_add(&self->_activeAcquisitionCount, 1uLL))
  {
    [(TLAlertActivationAssertion *)self _acquire];
  }
}

- (void)relinquish
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = TLLogPlayback(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: -relinquish.", &v4, 0xCu);
  }

  if (atomic_fetch_add(&self->_activeAcquisitionCount, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    [(TLAlertActivationAssertion *)self _relinquish];
  }
}

- (void)_acquire
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = TLLogPlayback(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: was acquired.", &v5, 0xCu);
  }

  v4 = +[TLAlertController sharedAlertController];
  [v4 handleActivationAssertionStatusChangeForAlert:self->_alert updatedStatus:1];
}

- (void)_relinquish
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = TLLogPlayback(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: was relinquished.", &v5, 0xCu);
  }

  v4 = +[TLAlertController sharedAlertController];
  [v4 handleActivationAssertionStatusChangeForAlert:self->_alert updatedStatus:0];
}

@end