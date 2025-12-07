@interface RPStatusBarAssertion
- (id)rpLocalizedStatusStringForPaused:(BOOL)paused;
- (id)stringWithTimeInterval:(double)interval;
- (void)acquireAssertionWithPid:(int)pid;
- (void)acquireAssertionWithPidWaitForCompletion:(int)completion;
- (void)invalidateStatusBar;
- (void)pauseSession;
- (void)resumeSession;
- (void)showStatusBarWithPid:(int)pid;
- (void)startRepeatingTimer;
- (void)statusBarCoordinator:(id)coordinator invalidatedRegistrationWithError:(id)error;
- (void)updateDelegateRecordingTimer:(id)timer;
@end

@implementation RPStatusBarAssertion

- (void)acquireAssertionWithPidWaitForCompletion:(int)completion
{
  v3 = *&completion;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = [[SBSStatusBarStyleOverridesAssertion alloc] initWithStatusBarStyleOverrides:0x100000 forPID:v3 exclusive:1 showsWhenForeground:0];
  assertion = self->_assertion;
  self->_assertion = v6;

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_10001D460;
  v14[4] = sub_10001D470;
  selfCopy = self;
  v8 = self->_assertion;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D478;
  v11[3] = &unk_1000A1A68;
  v13 = v14;
  v9 = v5;
  v12 = v9;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D538;
  v10[3] = &unk_1000A1A90;
  v10[4] = v14;
  [(SBSStatusBarStyleOverridesAssertion *)v8 acquireWithHandler:v11 invalidationHandler:v10];
  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(v14, 8);
}

- (void)acquireAssertionWithPid:(int)pid
{
  v3 = *&pid;
  [(RPStatusBarAssertion *)self acquireAssertionWithPidWaitForCompletion:?];
  if (!self->_assertion)
  {

    [(RPStatusBarAssertion *)self acquireAssertionWithPidWaitForCompletion:v3];
  }
}

- (void)showStatusBarWithPid:(int)pid
{
  [(RPStatusBarAssertion *)self acquireAssertionWithPid:*&pid];
  if (self->_assertion)
  {
    v4 = objc_alloc_init(SBSStatusBarStyleOverridesCoordinator);
    coordinator = self->_coordinator;
    self->_coordinator = v4;

    delegate = [(RPStatusBarAssertion *)self delegate];
    [(SBSStatusBarStyleOverridesCoordinator *)self->_coordinator setDelegate:delegate];

    [(SBSStatusBarStyleOverridesCoordinator *)self->_coordinator setRegisteredStyleOverrides:0x100000 reply:&stru_1000A1AB0];

    [(RPStatusBarAssertion *)self startRepeatingTimer];
  }
}

- (void)startRepeatingTimer
{
  self->_totalPausedTime = 0.0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D754;
  block[3] = &unk_1000A1088;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)invalidateStatusBar
{
  if (self->_assertion)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPStatusBarAssertion: double height status bar assertion released", v6, 2u);
    }

    [(SBSStatusBarStyleOverridesAssertion *)self->_assertion invalidate];
    assertion = self->_assertion;
    self->_assertion = 0;

    [(SBSStatusBarStyleOverridesCoordinator *)self->_coordinator setRegisteredStyleOverrides:0 reply:&stru_1000A1AD0];
    coordinator = self->_coordinator;
    self->_coordinator = 0;

    [(NSTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;
  }

  self->_totalPausedTime = 0.0;
}

- (id)stringWithTimeInterval:(double)interval
{
  v4 = objc_alloc_init(NSDateComponentsFormatter);
  [v4 setUnitsStyle:0];
  [v4 setIncludesApproximationPhrase:0];
  [v4 setIncludesTimeRemainingPhrase:0];
  [v4 setMaximumUnitCount:2];
  if (interval >= 60.0)
  {
    v5 = 240;
  }

  else
  {
    [v4 setZeroFormattingBehavior:0x10000];
    v5 = 192;
  }

  [v4 setAllowedUnits:v5];
  v6 = [v4 stringFromTimeInterval:interval];

  return v6;
}

- (id)rpLocalizedStatusStringForPaused:(BOOL)paused
{
  if (self->_broadcasting)
  {
    if (paused)
    {
      v4 = @"BROADCASTING_PAUSED_STATUS_BAR_FORMAT";
    }

    else
    {
      v4 = @"BROADCASTING_STATUS_BAR_FORMAT";
    }

    v6 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v4];
    v7 = [NSString stringWithFormat:v6, self->_broadcastServiceName];
  }

  else
  {
    if (paused)
    {
      v5 = @"RECORDING_PAUSED_STATUS_BAR";
    }

    else
    {
      v5 = @"RECORDING_STATUS_BAR";
    }

    v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v5];
  }

  return v7;
}

- (void)updateDelegateRecordingTimer:(id)timer
{
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:self->_timerStartDate];
  v6 = v5 - self->_totalPausedTime;

  assertionDelegate = self->_assertionDelegate;
  v8 = [(RPStatusBarAssertion *)self stringWithTimeInterval:v6];
  [(RPStatusBarAssertionDelegate *)assertionDelegate timerDidUpdate:v8];
}

- (void)statusBarCoordinator:(id)coordinator invalidatedRegistrationWithError:(id)error
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    code = [error code];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPStatusBarAssertion: coordinator registartion invalidated with error %li", &v5, 0xCu);
  }
}

- (void)pauseSession
{
  self->_timerPauseDate = +[NSDate date];

  _objc_release_x1();
}

- (void)resumeSession
{
  totalPausedTime = self->_totalPausedTime;
  v5 = +[NSDate date];
  [v5 timeIntervalSinceDate:self->_timerPauseDate];
  self->_totalPausedTime = totalPausedTime + v4;
}

@end