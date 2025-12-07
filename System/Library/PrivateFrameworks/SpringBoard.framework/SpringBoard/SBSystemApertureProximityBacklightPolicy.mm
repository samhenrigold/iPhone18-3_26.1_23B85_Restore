@interface SBSystemApertureProximityBacklightPolicy
- (BOOL)_isGracePeriodDisabledByEntitledApp;
- (BOOL)proximityBacklightPolicyTouchHandlingView:(id)view shouldConsumeTouchForHitTest:(CGPoint)test withEvent:(id)event;
- (SBSystemApertureProximityBacklightPolicy)initWithConfiguration:(id)configuration;
- (SBSystemApertureProximityBacklightPolicyDelegate)delegate;
- (double)_nontelephonyTouchAllowanceGracePeriod;
- (void)_objectThatCanPreventTouchesWithinProximityDidChange:(BOOL)change fromGracePeriod:(BOOL)period;
- (void)_scheduleBacklightFactorToZeroForTouchWithinSystemAperture;
- (void)_startCancelingTouches;
- (void)_stopCancelingTouches;
- (void)dealloc;
- (void)proximitySensorManager:(id)manager objectWithinProximityDidChange:(BOOL)change detectionMode:(int)mode;
@end

@implementation SBSystemApertureProximityBacklightPolicy

- (void)_stopCancelingTouches
{
  [(BSInvalidatable *)self->_suppressSystemGestures invalidate];
  suppressSystemGestures = self->_suppressSystemGestures;
  self->_suppressSystemGestures = 0;
}

- (SBSystemApertureProximityBacklightPolicyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_startCancelingTouches
{
  if (!self->_suppressSystemGestures)
  {
    BKSHIDServicesCancelTouchesOnMainDisplay();
    systemGestureManager = [(SBDefaultProximityBacklightPolicy *)self systemGestureManager];
    v3 = +[SBSystemGestureManager deviceHardwareButtonGestureTypes];
    v4 = [systemGestureManager acquireSystemGestureDisableAssertionForReason:@"objectInProximity" exceptSystemGestureTypes:v3];
    suppressSystemGestures = self->_suppressSystemGestures;
    self->_suppressSystemGestures = v4;
  }
}

- (double)_nontelephonyTouchAllowanceGracePeriod
{
  mEMORY[0x277CF06F8] = [MEMORY[0x277CF06F8] sharedInstance];
  sensorCharacteristics = [mEMORY[0x277CF06F8] sensorCharacteristics];

  suggestedSystemApertureGracePeriodForScreenOff = [sensorCharacteristics suggestedSystemApertureGracePeriodForScreenOff];
  if (suggestedSystemApertureGracePeriodForScreenOff == 0x7FFFFFFFFFFFFFFFLL)
  {
    _proximitySettings = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
    [_proximitySettings nonTelephonyTouchAllowanceGracePeriodDuration];
    v8 = v7;
  }

  else
  {
    v8 = suggestedSystemApertureGracePeriodForScreenOff / 1000.0;
  }

  return v8;
}

- (SBSystemApertureProximityBacklightPolicy)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SBSystemApertureProximityBacklightPolicy;
  v5 = [(SBDefaultProximityBacklightPolicy *)&v11 initWithConfiguration:configurationCopy];
  if (v5)
  {
    sensorModeController = [configurationCopy sensorModeController];
    sensorModeController = v5->_sensorModeController;
    v5->_sensorModeController = sensorModeController;

    proximitySettings = [configurationCopy proximitySettings];
    proximitySettings = v5->_proximitySettings;
    v5->_proximitySettings = proximitySettings;

    BKSHIDServicesSetObjectInProximityIgnoresTouches();
  }

  return v5;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_suppressSystemGestures invalidate];
  v3.receiver = self;
  v3.super_class = SBSystemApertureProximityBacklightPolicy;
  [(SBDefaultProximityBacklightPolicy *)&v3 dealloc];
}

- (void)proximitySensorManager:(id)manager objectWithinProximityDidChange:(BOOL)change detectionMode:(int)mode
{
  changeCopy = change;
  *&v30[5] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v9 = managerCopy;
  v10 = !self->_suppressBacklightChanges || !changeCopy;
  if (v10 || self->_objectThatCanPreventTouchesInProximity)
  {
    if (self->_objectInProximityAccordingToProxManager != changeCopy)
    {
      self->_objectInProximityAccordingToProxManager = changeCopy;
      if (self->_touchAllowanceGracePeriodTimer)
      {
        v11 = SBLogProximitySensor(managerCopy);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = NSStringFromBKSHIDServicesProximityDetectionMode();
          *buf = 67109378;
          v30[0] = changeCopy;
          LOWORD(v30[1]) = 2114;
          *(&v30[1] + 2) = v12;
          _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Canceling grace period due to incoming event (objectInProximity:%{BOOL}u mode:%{public}@)", buf, 0x12u);
        }

        [(NSTimer *)self->_touchAllowanceGracePeriodTimer invalidate];
        touchAllowanceGracePeriodTimer = self->_touchAllowanceGracePeriodTimer;
        self->_touchAllowanceGracePeriodTimer = 0;
      }

      [(SBSystemApertureProximityBacklightPolicy *)self _nontelephonyTouchAllowanceGracePeriod];
      if (changeCopy && (v15 = v14, v14 > 0.0) && ((v16 = [(SBSystemApertureProximityBacklightPolicy *)self _isGracePeriodDisabledByEntitledApp], mode != 6) ? (v17 = 1) : (v17 = v16), (v17 & 1) == 0))
      {
        objc_initWeak(&location, self);
        inited = objc_initWeak(&from, v9);
        v20 = SBLogProximitySensor(inited);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v30 = v15;
          _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Scheduling grace period (%gs)", buf, 0xCu);
        }

        v21 = MEMORY[0x277CBEBB8];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __112__SBSystemApertureProximityBacklightPolicy_proximitySensorManager_objectWithinProximityDidChange_detectionMode___block_invoke;
        v24[3] = &unk_2783C11B0;
        objc_copyWeak(&v25, &location);
        v26[1] = *&v15;
        objc_copyWeak(v26, &from);
        v22 = [v21 scheduledTimerWithTimeInterval:0 repeats:v24 block:v15];
        v23 = self->_touchAllowanceGracePeriodTimer;
        self->_touchAllowanceGracePeriodTimer = v22;

        objc_destroyWeak(v26);
        objc_destroyWeak(&v25);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
      }

      else
      {
        [(SBSystemApertureProximityBacklightPolicy *)self _objectThatCanPreventTouchesWithinProximityDidChange:changeCopy fromGracePeriod:0];
      }
    }
  }

  else
  {
    v18 = SBLogProximitySensor(managerCopy);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Suppresing prox -- backlight change suppression is active", buf, 2u);
    }
  }
}

void __112__SBSystemApertureProximityBacklightPolicy_proximitySensorManager_objectWithinProximityDidChange_detectionMode___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 isValid];
    if (v5)
    {
      v6 = SBLogProximitySensor(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 48);
        v10 = 134217984;
        v11 = v7;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Grace period finished (%gs)", &v10, 0xCu);
      }

      v8 = WeakRetained[12];
      WeakRetained[12] = 0;

      v9 = objc_loadWeakRetained((a1 + 40));
      [WeakRetained _objectThatCanPreventTouchesWithinProximityDidChange:objc_msgSend(v9 fromGracePeriod:{"isObjectInProximity"), 1}];
    }
  }
}

- (void)_objectThatCanPreventTouchesWithinProximityDidChange:(BOOL)change fromGracePeriod:(BOOL)period
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_objectThatCanPreventTouchesInProximity != change)
  {
    periodCopy = period;
    changeCopy = change;
    delegate = [(SBSystemApertureProximityBacklightPolicy *)self delegate];
    WeakRetained = objc_loadWeakRetained(&self->_touchTrackingView);
    v9 = objc_loadWeakRetained(&self->_touchBlockingView);
    self->_objectThatCanPreventTouchesInProximity = changeCopy;
    _proximitySettings = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
    allowTouchesInJindoWhenObjectInProximity = [_proximitySettings allowTouchesInJindoWhenObjectInProximity];

    if (changeCopy)
    {
      if (!WeakRetained)
      {
        WeakRetained = [[_SBSystemApertureProximityTouchHandlingView alloc] initWithDelegate:self hitTestsAsOpaque:allowTouchesInJindoWhenObjectInProximity ^ 1u];
      }

      _proximitySettings2 = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
      colorScreenEdgeWhenObjectInProximity = [_proximitySettings2 colorScreenEdgeWhenObjectInProximity];

      if (colorScreenEdgeWhenObjectInProximity)
      {
        layer = [(_SBSystemApertureProximityTouchHandlingView *)WeakRetained layer];
        systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
        [layer setBorderColor:{objc_msgSend(systemYellowColor, "CGColor")}];

        layer2 = [(_SBSystemApertureProximityTouchHandlingView *)WeakRetained layer];
        [layer2 setBorderWidth:3.0];
      }

      if (!v9)
      {
        v9 = [[_SBSystemApertureProximityTouchHandlingView alloc] initWithDelegate:self hitTestsAsOpaque:1];
      }

      objc_storeWeak(&self->_touchTrackingView, WeakRetained);
      objc_storeWeak(&self->_touchBlockingView, v9);
      v17 = [delegate systemApertureProximityBacklightPolicy:self embedProximityTouchTrackingView:WeakRetained touchBlockingView:v9];
      if (periodCopy)
      {
        v18 = SBLogProximitySensor(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Scheduling backlight factor to zero immediately because we already spent time on the grace period.", &v30, 2u);
        }

        [(SBSystemApertureProximityBacklightPolicy *)self _startCancelingTouches];
        v19 = 0.0;
        selfCopy2 = self;
LABEL_13:
        [(SBDefaultProximityBacklightPolicy *)selfCopy2 _scheduleBacklightFactorToZeroAfterDebounceDuration:v19];
        goto LABEL_24;
      }

      v23 = [delegate systemApertureProximityBacklightPolicyShouldConsiderSystemApertureInert:self];
      if (v23)
      {
        v24 = SBLogProximitySensor(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Scheduling backlight factor to zero after default duration (0.5s) because System Aperture is inert.", &v30, 2u);
        }

        [(SBSystemApertureProximityBacklightPolicy *)self _startCancelingTouches];
        [(SBDefaultProximityBacklightPolicy *)self _scheduleBacklightFactorToZeroAfterDefaultDuration];
        goto LABEL_24;
      }

      _proximitySettings3 = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
      [_proximitySettings3 initialBacklightDebounceDuration];
      v27 = v26;

      v28 = BSFloatGreaterThanFloat();
      if (v28)
      {
        v29 = SBLogProximitySensor(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 134217984;
          v31 = v27;
          _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "Scheduling backlight factor to zero after initialBacklightDebounceDuration (%gs) because System Aperture is active.", &v30, 0xCu);
        }

        [(SBSystemApertureProximityBacklightPolicy *)self _startCancelingTouches];
        selfCopy2 = self;
        v19 = v27;
        goto LABEL_13;
      }
    }

    else
    {
      [(SBSystemApertureProximityBacklightPolicy *)self _stopCancelingTouches];
      self->_numberOfTouchesWhileObjectInProximity = 0;
      [(SBDefaultProximityBacklightPolicy *)self _restoreBacklightFactor];
      v21 = 0;
      v22 = 0;
      if (!(WeakRetained | v9))
      {
LABEL_25:

        return;
      }

      [delegate systemApertureProximityBacklightPolicy:self removeProximityTouchTrackingView:WeakRetained touchBlockingView:v9];
    }

LABEL_24:
    v21 = v9;
    v22 = WeakRetained;
    goto LABEL_25;
  }
}

- (BOOL)proximityBacklightPolicyTouchHandlingView:(id)view shouldConsumeTouchForHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v18[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_touchTrackingView);
  v10 = objc_loadWeakRetained(&self->_touchBlockingView);
  delegate = [(SBSystemApertureProximityBacklightPolicy *)self delegate];
  v12 = [delegate systemApertureProximityBacklightPolicyShouldConsiderSystemApertureInert:self];
  _proximitySettings = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
  allowTouchesInJindoWhenObjectInProximity = [_proximitySettings allowTouchesInJindoWhenObjectInProximity];

  if ((v12 & 1) == 0)
  {
    if (WeakRetained == viewCopy)
    {
      v15 = self->_numberOfTouchesWhileObjectInProximity + 1;
      self->_numberOfTouchesWhileObjectInProximity = v15;
      if (v15 <= 2)
      {
        self->_isTrackingTouchPossiblyInJindoWithObjectInProximity = [delegate systemApertureProximityBacklightPolicy:self isSystemApertureElementVisibleAtPoint:{x, y}];
        v18[0] = *MEMORY[0x277CBE738];
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
        [(SBSystemApertureProximityBacklightPolicy *)self performSelector:sel__scheduleBacklightFactorToZeroForTouchWithinSystemAperture withObject:0 afterDelay:v16 inModes:0.0];
      }
    }

    else if (v10 == viewCopy)
    {
      self->_isTrackingTouchPossiblyInJindoWithObjectInProximity = 0;
    }
  }

  return v10 == viewCopy || (allowTouchesInJindoWhenObjectInProximity & 1) == 0;
}

- (BOOL)_isGracePeriodDisabledByEntitledApp
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained systemApertureProximityBacklightPolicyShouldDisableGracePeriod:selfCopy];

  return selfCopy;
}

- (void)_scheduleBacklightFactorToZeroForTouchWithinSystemAperture
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_isTrackingTouchPossiblyInJindoWithObjectInProximity)
  {
    self->_isTrackingTouchPossiblyInJindoWithObjectInProximity = 0;
    _proximitySettings = [(SBSystemApertureProximityBacklightPolicy *)self _proximitySettings];
    [_proximitySettings subsequentBacklightDebounceDuration];
    v5 = v4;

    v7 = SBLogProximitySensor(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Scheduling backlight factor to zero after subsequentBacklightDebounceDuration (%.3f) because System Aperture is active and either did handle or could have handled touch.", &v8, 0xCu);
    }

    if (BSFloatGreaterThanFloat())
    {
      [(SBDefaultProximityBacklightPolicy *)self _scheduleBacklightFactorToZeroAfterDebounceDuration:v5];
    }
  }
}

@end