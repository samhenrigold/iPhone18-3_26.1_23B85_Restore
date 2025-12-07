@interface SBCaptureButtonDispatchingDeferrer
- (SBCaptureButtonDispatchingDeferrer)initWithZStackResolver:(id)resolver restrictionCoordinator:(id)coordinator;
- (void)_deferCaptureButtonEventsToSceneWithIdentityToken:(id)token PID:(int)d;
- (void)_processZStackParticipantSettings:(id)settings;
- (void)_stopDeferringCaptureButtonEvents;
- (void)_updateCaptureButtonDispatchingDeferringTarget;
- (void)dealloc;
@end

@implementation SBCaptureButtonDispatchingDeferrer

- (SBCaptureButtonDispatchingDeferrer)initWithZStackResolver:(id)resolver restrictionCoordinator:(id)coordinator
{
  resolverCopy = resolver;
  coordinatorCopy = coordinator;
  v16.receiver = self;
  v16.super_class = SBCaptureButtonDispatchingDeferrer;
  v9 = [(SBCaptureButtonDispatchingDeferrer *)&v16 init];
  if (v9)
  {
    mEMORY[0x277CF0668] = [MEMORY[0x277CF0668] sharedInstance];
    deliveryManager = v9->_deliveryManager;
    v9->_deliveryManager = mEMORY[0x277CF0668];

    objc_storeStrong(&v9->_zStackResolver, resolver);
    v12 = [coordinatorCopy addObserver:v9];
    inhibitionObservation = v9->_inhibitionObservation;
    v9->_inhibitionObservation = v12;

    v9->_inhibitedDueToRestrictionCoordinator = [coordinatorCopy isCaptureButtonActionInhibited:0];
    v14 = [(SBFZStackResolver *)v9->_zStackResolver addObserver:v9 ofParticipantWithIdentifier:29];
    [(SBCaptureButtonDispatchingDeferrer *)v9 _processZStackParticipantSettings:v14];
    [(SBCaptureButtonDispatchingDeferrer *)v9 _updateCaptureButtonDispatchingDeferringTarget];
  }

  return v9;
}

- (void)dealloc
{
  [(SBFZStackResolver *)self->_zStackResolver removeObserver:self ofParticipantWithIdentifier:29];
  zStackResolver = self->_zStackResolver;
  self->_zStackResolver = 0;

  v4.receiver = self;
  v4.super_class = SBCaptureButtonDispatchingDeferrer;
  [(SBCaptureButtonDispatchingDeferrer *)&v4 dealloc];
}

- (void)_processZStackParticipantSettings:(id)settings
{
  captureButtonFullFidelityEventRequestingScenes = [settings captureButtonFullFidelityEventRequestingScenes];
  lastObject = [captureButtonFullFidelityEventRequestingScenes lastObject];
  if ((BSEqualObjects() & 1) == 0)
  {
    [(FBScene *)self->_targetScene removeObserver:self];
    objc_storeStrong(&self->_targetScene, lastObject);
    targetScene = self->_targetScene;
    if (targetScene)
    {
      [(FBScene *)targetScene addObserver:self];
    }

    [(SBCaptureButtonDispatchingDeferrer *)self _updateCaptureButtonDispatchingDeferringTarget];
  }
}

- (void)_updateCaptureButtonDispatchingDeferringTarget
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(self + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Selected scene requesting full-fidelity capture button events: %@", &v3, 0xCu);
}

- (void)_deferCaptureButtonEventsToSceneWithIdentityToken:(id)token PID:(int)d
{
  v4 = *&d;
  v22 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v8 = tokenCopy;
  if (self->_currentDeferralTargetPid != v4)
  {
    v9 = SBLogCameraCaptureOverlay(tokenCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = BSProcessDescriptionForPID();
      v20 = 138412290;
      v21 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Deferring full-fidelity capture button events to: %@", &v20, 0xCu);
    }

    [(BSInvalidatable *)self->_deferringRuleAssertion invalidate];
    deferringRuleAssertion = self->_deferringRuleAssertion;
    self->_deferringRuleAssertion = 0;

    v12 = objc_opt_new();
    ui_cameraCaptureButtonEnvironment = [MEMORY[0x277CF0628] ui_cameraCaptureButtonEnvironment];
    [v12 setEnvironment:ui_cameraCaptureButtonEnvironment];
    v14 = objc_opt_new();
    [v14 setPid:v4];
    v15 = MEMORY[0x277CF0650];
    stringRepresentation = [v8 stringRepresentation];
    v17 = [v15 tokenForString:stringRepresentation];

    if (v17)
    {
      [v14 setToken:v17];
    }

    v18 = [(BKSHIDEventDeliveryManager *)self->_deliveryManager deferEventsMatchingPredicate:v12 toTarget:v14 withReason:@"Entitled Capture Button Consumer Active"];
    v19 = self->_deferringRuleAssertion;
    self->_deferringRuleAssertion = v18;

    self->_currentDeferralTargetPid = v4;
    objc_storeStrong(&self->_currentDeferralSceneIdentityToken, token);
  }
}

- (void)_stopDeferringCaptureButtonEvents
{
  if (self->_deferringRuleAssertion)
  {
    v3 = SBLogCameraCaptureOverlay(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "No longer deferring full-fidelity capture button events.", v5, 2u);
    }

    [(BSInvalidatable *)self->_deferringRuleAssertion invalidate];
    deferringRuleAssertion = self->_deferringRuleAssertion;
    self->_deferringRuleAssertion = 0;

    self->_currentDeferralTargetPid = -1;
  }
}

@end