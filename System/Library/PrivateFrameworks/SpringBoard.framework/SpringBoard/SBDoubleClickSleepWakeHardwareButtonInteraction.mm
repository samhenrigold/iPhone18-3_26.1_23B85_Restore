@interface SBDoubleClickSleepWakeHardwareButtonInteraction
- (BOOL)consumeInitialPressDown;
- (BOOL)consumeInitialPressUp;
- (SBDoubleClickSleepWakeHardwareButtonInteraction)initWithProximitySensorManager:(id)manager;
- (void)_performSleep;
- (void)_performWake;
- (void)_resumeProxAfterMultiplePressIntervalForReason:(id)reason;
- (void)_resumeProxForReason:(id)reason;
- (void)_suspendProx;
- (void)observeFinalPressUp;
@end

@implementation SBDoubleClickSleepWakeHardwareButtonInteraction

- (SBDoubleClickSleepWakeHardwareButtonInteraction)initWithProximitySensorManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SBDoubleClickSleepWakeHardwareButtonInteraction;
  v6 = [(SBSleepWakeHardwareButtonInteraction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proximitySensorManager, manager);
  }

  return v7;
}

- (BOOL)consumeInitialPressDown
{
  [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _resumeProxForReason:@"Initial press down - stuck request?"];
  v4.receiver = self;
  v4.super_class = SBDoubleClickSleepWakeHardwareButtonInteraction;
  return [(SBSleepWakeHardwareButtonInteraction *)&v4 consumeInitialPressDown];
}

- (BOOL)consumeInitialPressUp
{
  inhibitNextSinglePressUp = [(SBSleepWakeHardwareButtonInteraction *)self inhibitNextSinglePressUp];
  v4 = inhibitNextSinglePressUp;
  if (inhibitNextSinglePressUp)
  {
    v5 = SBLogButtonsInteraction(inhibitNextSinglePressUp);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v6 = "wake/sleep x2 inital press up inhibited";
      v7 = &v11;
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else
  {
    isObjectInProximity = [(SBProximitySensorManager *)self->_proximitySensorManager isObjectInProximity];
    if ((isObjectInProximity & 1) == 0)
    {
      [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _suspendProx];
      [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _resumeProxAfterMultiplePressIntervalForReason:@"Multiple press timeout"];
      return v4;
    }

    v5 = SBLogButtonsInteraction(isObjectInProximity);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v6 = "wake/sleep x2 not suspending prox because objectInProximity";
      v7 = &v10;
      goto LABEL_7;
    }
  }

  return v4;
}

- (void)observeFinalPressUp
{
  [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _resumeProxForReason:@"final press up"];

  [(SBSleepWakeHardwareButtonInteraction *)self setInhibitNextSinglePressUp:1];
}

- (void)_performSleep
{
  v3.receiver = self;
  v3.super_class = SBDoubleClickSleepWakeHardwareButtonInteraction;
  [(SBSleepWakeHardwareButtonInteraction *)&v3 _performSleep];
  [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _resumeProxForReason:@"sleeping"];
}

- (void)_performWake
{
  v3.receiver = self;
  v3.super_class = SBDoubleClickSleepWakeHardwareButtonInteraction;
  [(SBSleepWakeHardwareButtonInteraction *)&v3 _performWake];
  [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _resumeProxForReason:@"waking"];
}

- (void)_suspendProx
{
  _cancelPreviousResumeProxRequests = [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _cancelPreviousResumeProxRequests];
  if (!self->_proxLockAssertion)
  {
    v4 = SBLogButtonsInteraction(_cancelPreviousResumeProxRequests);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "wake/sleep x2 suspend prox", v8, 2u);
    }

    sensorModeController = [(SBSleepWakeHardwareButtonInteraction *)self sensorModeController];
    v6 = [sensorModeController suspendProximityDetectionForSource:0 reason:@"double-click interval"];
    proxLockAssertion = self->_proxLockAssertion;
    self->_proxLockAssertion = v6;
  }
}

- (void)_resumeProxForReason:(id)reason
{
  v10 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  _cancelPreviousResumeProxRequests = [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _cancelPreviousResumeProxRequests];
  if (self->_proxLockAssertion)
  {
    v6 = SBLogButtonsInteraction(_cancelPreviousResumeProxRequests);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "wake/sleep x2 resume prox: %{public}@", &v8, 0xCu);
    }

    [(BSInvalidatable *)self->_proxLockAssertion invalidate];
    proxLockAssertion = self->_proxLockAssertion;
    self->_proxLockAssertion = 0;
  }
}

- (void)_resumeProxAfterMultiplePressIntervalForReason:(id)reason
{
  v4 = MEMORY[0x277D82BB8];
  reasonCopy = reason;
  [v4 cancelPreviousPerformRequestsWithTarget:self];
  [(SBSleepWakeHardwareButtonInteraction *)self multiplePressTimeInterval];
  [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self performSelector:sel__resumeProxForReason_ withObject:reasonCopy afterDelay:?];
}

@end