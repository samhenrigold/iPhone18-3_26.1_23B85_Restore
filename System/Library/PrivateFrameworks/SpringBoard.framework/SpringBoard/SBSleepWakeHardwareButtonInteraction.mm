@interface SBSleepWakeHardwareButtonInteraction
- (BOOL)consumeInitialPressDown;
- (BOOL)consumeSinglePressUp;
- (BOOL)reverseSleepIfNeededAndPossible;
- (SBSleepWakeHardwareButtonInteraction)init;
- (void)_performSleep;
- (void)_performWake;
- (void)_playLockSound;
- (void)performSleepForReason:(id)reason;
- (void)provider:(id)provider didUpdateButtonGestureParameters:(id)parameters;
- (void)setDeferOrientationUpdatesAssertion:(id)assertion;
@end

@implementation SBSleepWakeHardwareButtonInteraction

- (SBSleepWakeHardwareButtonInteraction)init
{
  v14.receiver = self;
  v14.super_class = SBSleepWakeHardwareButtonInteraction;
  v2 = [(SBSleepWakeHardwareButtonInteraction *)&v14 init];
  if (v2)
  {
    v3 = +[SBBacklightController sharedInstance];
    backlightController = v2->_backlightController;
    v2->_backlightController = v3;

    v5 = +[SBLockScreenManager sharedInstance];
    lockScreenManager = v2->_lockScreenManager;
    v2->_lockScreenManager = v5;

    v7 = +[SBScreenWakeAnimationController sharedInstance];
    screenWakeAnimationController = v2->_screenWakeAnimationController;
    v2->_screenWakeAnimationController = v7;

    v9 = +[SBSoundController sharedInstance];
    soundController = v2->_soundController;
    v2->_soundController = v9;

    hIDUISensorController = [SBApp HIDUISensorController];
    sensorModeController = v2->_sensorModeController;
    v2->_sensorModeController = hIDUISensorController;

    objc_storeStrong(&v2->_SBApp, SBApp);
  }

  return v2;
}

- (BOOL)reverseSleepIfNeededAndPossible
{
  v12[2] = *MEMORY[0x277D85DE8];
  fadeOutInProgressFromLockButtonWhileUnlocked = self->_fadeOutInProgressFromLockButtonWhileUnlocked;
  if (fadeOutInProgressFromLockButtonWhileUnlocked)
  {
    self->_undidFadeOutFromLockButton = 1;
    v4 = SBLogButtonsInteraction(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "reverse sleep", v10, 2u);
    }

    [(SBLockScreenManager *)self->_lockScreenManager lockUIFromSource:1 withOptions:0];
    lockScreenManager = self->_lockScreenManager;
    v11[0] = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v12[0] = v6;
    v11[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v12[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(SBLockScreenManager *)lockScreenManager unlockUIFromSource:1 withOptions:v8];

    self->_undidFadeOutFromLockButton = 0;
  }

  return fadeOutInProgressFromLockButtonWhileUnlocked;
}

- (void)performSleepForReason:(id)reason
{
  v10 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  inhibitNextSinglePressUp = self->_inhibitNextSinglePressUp;
  v6 = SBLogButtonsInteraction(reasonCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (inhibitNextSinglePressUp)
  {
    if (v7)
    {
      v8 = 138543362;
      v9 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "ignoring sleep attempt (%{public}@) because a wake from button press is in progress", &v8, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v8 = 138543362;
      v9 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "sleeping (%{public}@)", &v8, 0xCu);
    }

    [(SBSleepWakeHardwareButtonInteraction *)self _performSleep];
  }
}

- (BOOL)consumeInitialPressDown
{
  self->_inhibitNextSinglePressUp = 0;
  screenIsDim = [(SBBacklightController *)self->_backlightController screenIsDim];
  v4 = +[SBAlwaysOnDomain rootSettings];
  if ([v4 sideButtonBehavior] == 1)
  {
    v5 = [(SBBacklightController *)self->_backlightController backlightState]!= 3;

    if (!v5 || !screenIsDim)
    {
      return 0;
    }
  }

  else
  {

    if (!screenIsDim)
    {
      return 0;
    }
  }

  [(SBSleepWakeHardwareButtonInteraction *)self _performWake];
  return 1;
}

- (BOOL)consumeSinglePressUp
{
  inhibitNextSinglePressUp = self->_inhibitNextSinglePressUp;
  v4 = SBLogButtonsInteraction(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (inhibitNextSinglePressUp)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "wake/sleep consumeSinglePressUp: ignored due to _inhibitNextSinglePressUp (we may be waking the device instead)", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "wake/sleep _performSleep", v7, 2u);
    }

    [(SBSleepWakeHardwareButtonInteraction *)self _performSleep];
  }

  return 1;
}

- (void)provider:(id)provider didUpdateButtonGestureParameters:(id)parameters
{
  [parameters multiplePressTimeInterval];

  [(SBSleepWakeHardwareButtonInteraction *)self setMultiplePressTimeInterval:?];
}

- (void)_performWake
{
  v24 = *MEMORY[0x277D85DE8];
  shouldNeverLock = [(SpringBoard *)self->_SBApp shouldNeverLock];
  if (shouldNeverLock)
  {
    v4 = SBLogButtonsInteraction(shouldNeverLock);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "performWake: ignoring because [SBApp shouldNeverLock]", buf, 2u);
    }

    [(SBBacklightController *)self->_backlightController screenIsDim];
    return;
  }

  screenIsDim = [(SBBacklightController *)self->_backlightController screenIsDim];
  if ((screenIsDim & 1) == 0)
  {
    v7 = SBLogButtonsInteraction(screenIsDim);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "performWake: ignoring because the screen is not dimmed";
      goto LABEL_11;
    }

LABEL_12:

    return;
  }

  caseIsEnabledAndLatched = [(SpringBoard *)self->_SBApp caseIsEnabledAndLatched];
  if (caseIsEnabledAndLatched)
  {
    v7 = SBLogButtonsInteraction(caseIsEnabledAndLatched);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "performWake: ignoring because case is on and closed";
LABEL_11:
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  reverseSleepIfNeededAndPossible = [(SBSleepWakeHardwareButtonInteraction *)self reverseSleepIfNeededAndPossible];
  if (!reverseSleepIfNeededAndPossible)
  {
    [(SBBacklightController *)self->_backlightController setBacklightState:3 source:3];
    v11 = self->_lockScreenManager;
    isUILocked = [(SBLockScreenManager *)v11 isUILocked];
    if (isUILocked)
    {
      v13 = SBLogButtonsInteraction(isUILocked);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v23 = 1;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "performWake: Unlocking from lock button source with fade-in animation: %d", buf, 8u);
      }

      v14 = [MEMORY[0x277CCABB0] numberWithBool:{1, @"SBUIUnlockOptionsTurnOnScreenFirstKey"}];
      v21[0] = v14;
      v20[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
      v15 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v21[1] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
      [(SBLockScreenManager *)v11 unlockUIFromSource:1 withOptions:v16];
    }

    else
    {
      isSOSGestureActive = [(SBSleepWakeHardwareButtonInteraction *)self isSOSGestureActive];
      v18 = isSOSGestureActive;
      v14 = SBLogButtonsInteraction(isSOSGestureActive);
      v19 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (!v18)
      {
        if (v19)
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "performWake: locking UI from lock button source.", buf, 2u);
        }

        [(SBLockScreenManager *)self->_lockScreenManager lockUIFromSource:1 withOptions:0];
        goto LABEL_29;
      }

      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "performWake: aborting locking UI because the SOS gesture is active", buf, 2u);
      }
    }

LABEL_29:
    self->_inhibitNextSinglePressUp = 1;

    return;
  }

  v10 = SBLogButtonsInteraction(reverseSleepIfNeededAndPossible);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "performWake: ended fade-out to lock early, and told the screen to fade-in back in right away.", buf, 2u);
  }

  self->_inhibitNextSinglePressUp = 1;
}

- (void)_performSleep
{
  v3 = self->_lockScreenManager;
  shouldNeverLock = [(SpringBoard *)self->_SBApp shouldNeverLock];
  if (shouldNeverLock)
  {
    v5 = SBLogButtonsInteraction(shouldNeverLock);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v6 = "performSleep: ignored due to [SBApp shouldNeverLock]";
LABEL_10:
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  caseIsEnabledAndLatched = [(SpringBoard *)self->_SBApp caseIsEnabledAndLatched];
  if (caseIsEnabledAndLatched)
  {
    v5 = SBLogButtonsInteraction(caseIsEnabledAndLatched);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v6 = "performSleep: ignored due to [SBApp caseIsEnabledAndLatched]";
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  isSOSGestureActive = [(SBSleepWakeHardwareButtonInteraction *)self isSOSGestureActive];
  if (isSOSGestureActive)
  {
    v5 = SBLogButtonsInteraction(isSOSGestureActive);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v6 = "performSleep: ignored due to isSOSGestureActive";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v9 = !+[SBInCallPresentationManager isSpecializedAPISupported]&& [(SBLockScreenManager *)v3 shouldLockUIAfterEndingCall];
  [(SBSleepWakeHardwareButtonInteraction *)self _playLockSound];
  bannerManager = [SBApp bannerManager];
  [bannerManager dismissAllBannersInAllWindowScenesAnimated:1 reason:@"performSleep"];

  v11 = +[SBWorkspace mainWorkspace];
  inCallPresentationManager = [v11 inCallPresentationManager];
  if ([inCallPresentationManager supportsHandlingDeviceLock])
  {

LABEL_19:
    v15 = SBLogButtonsInteraction(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "performSleep: in call supports handling device lock, passing to lock screen manager", buf, 2u);
    }

    [(SBLockScreenManager *)v3 lockUIFromSource:1 withOptions:0];
    goto LABEL_12;
  }

  v14 = !+[SBInCallPresentationManager isSpecializedAPISupported]&& v9;

  if (v14)
  {
    goto LABEL_19;
  }

  v16 = [(SBScreenWakeAnimationController *)self->_screenWakeAnimationController isWakeAnimationInProgressForSource:20];
  v17 = v16;
  v18 = SBLogButtonsInteraction(v16);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "performSleep: swallowing lock button press because we are in the process of fading in for LTW", buf, 2u);
    }
  }

  else
  {
    if (v19)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "performSleep: locking the device with lock button source and animating fade-out", buf, 2u);
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBLockForScreenFadeOut-%i", ++_performSleep_lockReasonCount];
    authenticationController = [(SpringBoard *)self->_SBApp authenticationController];
    self->_fadeOutInProgressFromLockButtonWhileUnlocked = [authenticationController isAuthenticated];

    v21 = [(SpringBoard *)self->_SBApp deviceOrientationUpdateDeferralAssertionWithReason:v18];
    [(SBSleepWakeHardwareButtonInteraction *)self setDeferOrientationUpdatesAssertion:v21];

    v23 = SBLogButtonsInteraction(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "performSleep: start sleep", buf, 2u);
    }

    objc_initWeak(buf, self);
    screenSleepCoordinator = [SBApp screenSleepCoordinator];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __53__SBSleepWakeHardwareButtonInteraction__performSleep__block_invoke;
    v25[3] = &unk_2783A8C68;
    objc_copyWeak(&v26, buf);
    [screenSleepCoordinator sleepAndLockUIFromSource:1 completion:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

LABEL_12:
}

void __53__SBSleepWakeHardwareButtonInteraction__performSleep__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFadeOutInProgressFromLockButtonWhileUnlocked:0];
  [WeakRetained setDeferOrientationUpdatesAssertion:0];
}

- (void)setDeferOrientationUpdatesAssertion:(id)assertion
{
  assertionCopy = assertion;
  deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
  p_deferOrientationUpdatesAssertion = &self->_deferOrientationUpdatesAssertion;
  v6 = deferOrientationUpdatesAssertion;
  if (deferOrientationUpdatesAssertion != assertionCopy)
  {
    v9 = assertionCopy;
    if (v6)
    {
      [(BSInvalidatable *)v6 invalidate];
    }

    objc_storeStrong(p_deferOrientationUpdatesAssertion, assertion);
    assertionCopy = v9;
  }
}

- (void)_playLockSound
{
  playLockSoundIfPermitted = [(SBLockScreenManager *)self->_lockScreenManager playLockSoundIfPermitted];
  v3 = playLockSoundIfPermitted;
  v4 = SBLogButtonsInteraction(playLockSoundIfPermitted);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "_playLockSound is playing the lock sound";
      v7 = &v9;
LABEL_6:
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    v8 = 0;
    v6 = "_playLockSound couldn't play the lock sound";
    v7 = &v8;
    goto LABEL_6;
  }
}

@end