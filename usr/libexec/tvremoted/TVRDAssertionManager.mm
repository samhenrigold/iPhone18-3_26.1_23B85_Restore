@interface TVRDAssertionManager
+ (id)sharedInstance;
- (TVRDAssertionManager)init;
- (void)_createAssertionExpirationTimer;
- (void)_setup;
- (void)acquireLockScreenAssertion;
- (void)dealloc;
- (void)invalidateAssertionExpirationTimer;
- (void)releaseLockScreenAssertion;
- (void)startAssertionExpirationTimer;
@end

@implementation TVRDAssertionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[TVRDAssertionManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __38__TVRDAssertionManager_sharedInstance__block_invoke(id a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(TVRDAssertionManager);

  _objc_release_x1();
}

- (TVRDAssertionManager)init
{
  v5.receiver = self;
  v5.super_class = TVRDAssertionManager;
  v2 = [(TVRDAssertionManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TVRDAssertionManager *)v2 _setup];
  }

  return v3;
}

- (void)_setup
{
  if (!self->_systemMonitor)
  {
    v3 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v3;

    objc_initWeak(&location, self);
    v5 = self->_systemMonitor;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __30__TVRDAssertionManager__setup__block_invoke;
    v6[3] = &unk_100020518;
    objc_copyWeak(&v7, &location);
    v6[4] = self;
    [(CUSystemMonitor *)v5 setScreenLockedChangedHandler:v6];
    [(CUSystemMonitor *)self->_systemMonitor activateWithCompletion:&__block_literal_global_8];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  _TVRCAddStateHandlerWithName();
}

void __30__TVRDAssertionManager__setup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained systemMonitor];
    v5 = [v4 screenLocked];

    v7 = _TVRDXPCLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"unlocked";
      if (v5)
      {
        v8 = @"locked";
      }

      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Screen is now %@", &v11, 0xCu);
    }

    if (v5)
    {
      v9 = [*(a1 + 32) _newLockScreenBehaviour];
      if ((v9 & 1) == 0)
      {
        v10 = _TVRDXPCLog(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Resetting expiration timer", &v11, 2u);
        }

        [v3 invalidateAssertionExpirationTimer];
        [v3 _createAssertionExpirationTimer];
      }
    }
  }
}

void __30__TVRDAssertionManager__setup__block_invoke_6(id a1)
{
  v1 = _TVRDXPCLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Screen lock monitor activated", v2, 2u);
  }
}

id __30__TVRDAssertionManager__setup__block_invoke_10(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) assertion];
  v4 = [NSNumber numberWithInt:v3 != 0];
  [v2 setObject:v4 forKeyedSubscript:@"lockScreen"];

  return v2;
}

- (void)dealloc
{
  [(TVRDAssertionManager *)self releaseLockScreenAssertion];
  systemMonitor = [(TVRDAssertionManager *)self systemMonitor];
  [systemMonitor invalidate];

  v4.receiver = self;
  v4.super_class = TVRDAssertionManager;
  [(TVRDAssertionManager *)&v4 dealloc];
}

- (void)acquireLockScreenAssertion
{
  _newLockScreenBehaviour = [(TVRDAssertionManager *)self _newLockScreenBehaviour];
  v4 = @"SBSWakeToRemoteAlertAssertion";
  if (_newLockScreenBehaviour)
  {
    v4 = @"SBSSecureAppAssertion";
  }

  v5 = v4;
  assertion = self->_assertion;
  v7 = _TVRDXPCLog(v5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (assertion)
  {
    if (v8)
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "We already have a valid %@", &v16, 0xCu);
    }

    if ((_newLockScreenBehaviour & 1) == 0)
    {
      v10 = _TVRDXPCLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Resetting invalidation timer for assertion", &v16, 2u);
      }

      [(TVRDAssertionManager *)self _createAssertionExpirationTimer];
    }
  }

  else
  {
    if (v8)
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Acquiring %@", &v16, 0xCu);
    }

    if (_newLockScreenBehaviour)
    {
      v11 = [SBSSecureAppAssertion acquireSecureAppAssertionWithType:13 errorHandler:&__block_literal_global_28];
      v12 = self->_assertion;
      self->_assertion = v11;
    }

    else
    {
      v13 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.TVRemoteUIService" viewControllerClassName:@"TVRemoteAlertViewController"];
      v14 = [SBSWakeToRemoteAlertAssertion acquireWakeToRemoteAlertAssertionWithDefinition:v13 errorHandler:&__block_literal_global_39];
      v15 = self->_assertion;
      self->_assertion = v14;

      [(TVRDAssertionManager *)self _createAssertionExpirationTimer];
    }
  }
}

void __50__TVRDAssertionManager_acquireLockScreenAssertion__block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = [(NSError *)v2 code];
  v4 = _TVRDXPCLog(v3);
  v5 = v4;
  if (v3 == 5)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully invalidated lock screen assertion", v6, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50__TVRDAssertionManager_acquireLockScreenAssertion__block_invoke_cold_1(v2, v5);
  }
}

void __50__TVRDAssertionManager_acquireLockScreenAssertion__block_invoke_37(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _TVRDXPCLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__TVRDAssertionManager_acquireLockScreenAssertion__block_invoke_37_cold_1(v2, v3);
  }
}

- (void)releaseLockScreenAssertion
{
  v3 = _TVRDXPCLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing lock screen assertion", v5, 2u);
  }

  [(SBSLockScreenContentAssertion *)self->_assertion invalidate];
  assertion = self->_assertion;
  self->_assertion = 0;

  [(TVRDAssertionManager *)self invalidateAssertionExpirationTimer];
}

- (void)_createAssertionExpirationTimer
{
  v3 = +[TVRCFeatures isPersistOnLockScreenEnabled];
  if (v3)
  {
    v4 = _TVRDXPCLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      v5 = "Persist On LockScreen Internal flag is enabled. Ignoring creating the timer.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, location, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  assertion = [(TVRDAssertionManager *)self assertion];

  if (!assertion)
  {
    v4 = _TVRDXPCLog(v7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      v5 = "Lock Screen Assertion is nil. Skipping creating the expiration timer";
      goto LABEL_10;
    }

LABEL_11:

    return;
  }

  [(TVRDAssertionManager *)self invalidateAssertionExpirationTimer];
  objc_initWeak(location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __55__TVRDAssertionManager__createAssertionExpirationTimer__block_invoke;
  v14[3] = &unk_1000205E8;
  objc_copyWeak(&v15, location);
  v8 = [NSTimer timerWithTimeInterval:0 repeats:v14 block:480.0];
  expirationTimer = self->_expirationTimer;
  self->_expirationTimer = v8;

  v11 = _TVRDXPCLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting Lock Screen Assertion Timer", v13, 2u);
  }

  v12 = +[NSRunLoop mainRunLoop];
  [v12 addTimer:self->_expirationTimer forMode:NSRunLoopCommonModes];

  objc_destroyWeak(&v15);
  objc_destroyWeak(location);
}

void __55__TVRDAssertionManager__createAssertionExpirationTimer__block_invoke(uint64_t a1)
{
  v2 = _TVRDXPCLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Lock Screen Assertion expiration timer fired", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained releaseLockScreenAssertion];
}

- (void)startAssertionExpirationTimer
{
  if (self->_expirationTimer)
  {
    v3 = _TVRDXPCLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Lock Screen Assertion Timer already exists", v4, 2u);
    }
  }

  else
  {

    [(TVRDAssertionManager *)self _createAssertionExpirationTimer];
  }
}

- (void)invalidateAssertionExpirationTimer
{
  if (self->_expirationTimer)
  {
    v3 = _TVRDXPCLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating Lock Screen Assertion Timer", v5, 2u);
    }

    [(NSTimer *)self->_expirationTimer invalidate];
    expirationTimer = self->_expirationTimer;
    self->_expirationTimer = 0;
  }
}

void __50__TVRDAssertionManager_acquireLockScreenAssertion__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error acquiring SBSSecureAppAssertion %{public}@", &v2, 0xCu);
}

void __50__TVRDAssertionManager_acquireLockScreenAssertion__block_invoke_37_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error acquiring SBSWakeToRemoteAlertAssertion %{public}@", &v2, 0xCu);
}

@end