@interface ENOnboardingManager
- (BOOL)_isInLostMode;
- (BOOL)isDeviceUnlocked;
- (BOOL)isIdealTimeForBuddy;
- (ENOnboardingManager)init;
- (ENOnboardingManagerDelegate)delegate;
- (void)_cameraIrisStateChangedWithToken:(int)token;
- (void)_deviceLockStateChangedWithToken:(int)token;
- (void)_observeCameraIrisNotifications;
- (void)dealloc;
- (void)setShouldObserveDeviceUnlocks:(BOOL)unlocks;
@end

@implementation ENOnboardingManager

void __54__ENOnboardingManager__observeCameraIrisNotifications__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cameraIrisStateChangedWithToken:a2];
}

- (ENOnboardingManager)init
{
  v6.receiver = self;
  v6.super_class = ENOnboardingManager;
  v2 = [(ENOnboardingManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBAF78]);
    callObserver = v2->_callObserver;
    v2->_callObserver = v3;

    v2->_pendingBuddyOnboarding = 0;
    [(ENOnboardingManager *)v2 _observeCameraIrisNotifications];
  }

  return v2;
}

- (void)dealloc
{
  notify_cancel(self->_cameraIrisFrontNotifyToken);
  notify_cancel(self->_cameraIrisBackNotifyToken);
  notify_cancel(self->_cameraIrisBackTeleNotifyToken);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = ENOnboardingManager;
  [(ENOnboardingManager *)&v4 dealloc];
}

- (BOOL)isIdealTimeForBuddy
{
  if ([(ENOnboardingManager *)self _isInLostMode])
  {
    return 0;
  }

  if ([(ENOnboardingManager *)self isCaptureSessionRunning])
  {
    return 0;
  }

  callObserver = [(ENOnboardingManager *)self callObserver];
  calls = [callObserver calls];
  v5 = [calls count];

  if (v5)
  {
    return 0;
  }

  if (ENIsTestContext_onceToken != -1)
  {
    [ENOnboardingManager isIdealTimeForBuddy];
  }

  return (ENIsTestContext__isTestingContext & 1) != 0 || (BYSetupAssistantNeedsToRun() & 1) == 0;
}

- (BOOL)isDeviceUnlocked
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = SBSGetScreenLockStatus();
  v7 = @"ExtendedDeviceLockState";
  v8[0] = MEMORY[0x277CBEC30];
  [MEMORY[0x277CBEAC8] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v3 = MKBGetDeviceLockState();
  return v3 != 6 && (v3 - 3) < 0xFFFFFFFE && v2 == 0;
}

- (void)setShouldObserveDeviceUnlocks:(BOOL)unlocks
{
  if (unlocks)
  {
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __53__ENOnboardingManager_setShouldObserveDeviceUnlocks___block_invoke;
    v13 = &unk_278FD2A18;
    objc_copyWeak(&v14, &location);
    v4 = MEMORY[0x24C214430](&v10);
    screenLockNotifyToken = self->_screenLockNotifyToken;
    p_screenLockNotifyToken = &self->_screenLockNotifyToken;
    if (notify_is_valid_token(screenLockNotifyToken))
    {
      if (gLogCategory_ENOnboardingManager <= 30 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&gLogCategory_ENOnboardingManager, "[ENOnboardingManager setShouldObserveDeviceUnlocks:]", 30, "Already registered for lock events", v10, v11, v12, v13);
      }
    }

    else
    {
      v7 = *MEMORY[0x277D67778];
      v8 = MEMORY[0x277D85CD0];
      v9 = MEMORY[0x277D85CD0];
      LODWORD(v7) = notify_register_dispatch(v7, p_screenLockNotifyToken, v8, v4);

      if (v7)
      {
        if (gLogCategory_ENOnboardingManager <= 90 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&gLogCategory_ENOnboardingManager, "[ENOnboardingManager setShouldObserveDeviceUnlocks:]", 90, "Failed to register for lock events.", v10, v11, v12, v13);
        }

        *p_screenLockNotifyToken = -1;
      }

      else if (gLogCategory_ENOnboardingManager <= 30 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&gLogCategory_ENOnboardingManager, "[ENOnboardingManager setShouldObserveDeviceUnlocks:]", 30, "Registered for lock events.", v10, v11, v12, v13);
      }
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else if (self->_screenLockNotifyToken != -1)
  {
    if (gLogCategory_ENOnboardingManager <= 30 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
    {
      [ENOnboardingManager setShouldObserveDeviceUnlocks:];
    }

    notify_cancel(self->_screenLockNotifyToken);
    self->_screenLockNotifyToken = -1;
  }
}

void __53__ENOnboardingManager_setShouldObserveDeviceUnlocks___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceLockStateChangedWithToken:a2];
}

- (BOOL)_isInLostMode
{
  mEMORY[0x277D08F70] = [MEMORY[0x277D08F70] sharedInstance];
  if ([mEMORY[0x277D08F70] lostModeIsActive])
  {
    isManagedLostModeActive = 1;
  }

  else
  {
    isManagedLostModeActive = [mEMORY[0x277D08F70] isManagedLostModeActive];
  }

  return isManagedLostModeActive;
}

- (void)_deviceLockStateChangedWithToken:(int)token
{
  state64 = 0;
  notify_get_state(token, &state64);
  delegate = [(ENOnboardingManager *)self delegate];
  if (state64 || ![(ENOnboardingManager *)self isDeviceUnlocked])
  {
    if (!CFPrefs_GetInt64())
    {
      if (gLogCategory_ENOnboardingManager <= 30 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
      {
        [ENOnboardingManager _deviceLockStateChangedWithToken:];
      }

      self->_pendingBuddyOnboarding = 1;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__ENOnboardingManager__deviceLockStateChangedWithToken___block_invoke;
    block[3] = &unk_278FD1120;
    v6 = delegate;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_cameraIrisStateChangedWithToken:(int)token
{
  state64 = 0;
  notify_get_state(token, &state64);
  [(ENOnboardingManager *)self setIsCaptureSessionRunning:state64 == 1];
}

- (void)_observeCameraIrisNotifications
{
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __54__ENOnboardingManager__observeCameraIrisNotifications__block_invoke;
  v11 = &unk_278FD2A18;
  objc_copyWeak(&v12, &location);
  v3 = MEMORY[0x24C214430](&v8);
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  LODWORD(v4) = notify_register_dispatch("com.apple.isp.frontcamerapower", &self->_cameraIrisFrontNotifyToken, v4, v3);

  if (v4)
  {
    if (gLogCategory_ENOnboardingManager <= 90 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_ENOnboardingManager, "[ENOnboardingManager _observeCameraIrisNotifications]", 90, "Failed to register for front camera iris events.", v8, v9, v10, v11);
    }

    self->_cameraIrisFrontNotifyToken = -1;
  }

  else if (gLogCategory_ENOnboardingManager <= 30 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENOnboardingManager, "[ENOnboardingManager _observeCameraIrisNotifications]", 30, "Registered for front camera iris events.", v8, v9, v10, v11);
  }

  v6 = notify_register_dispatch("com.apple.isp.backcamerapower", &self->_cameraIrisBackNotifyToken, MEMORY[0x277D85CD0], v3);

  if (v6)
  {
    if (gLogCategory_ENOnboardingManager <= 90 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_ENOnboardingManager, "[ENOnboardingManager _observeCameraIrisNotifications]", 90, "Failed to register for back camera iris events.", v8, v9, v10, v11);
    }

    self->_cameraIrisBackNotifyToken = -1;
  }

  else if (gLogCategory_ENOnboardingManager <= 30 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENOnboardingManager, "[ENOnboardingManager _observeCameraIrisNotifications]", 30, "Registered for back camera iris events.", v8, v9, v10, v11);
  }

  v7 = notify_register_dispatch("com.apple.isp.backtelecamerapower", &self->_cameraIrisBackTeleNotifyToken, MEMORY[0x277D85CD0], v3);

  if (v7)
  {
    if (gLogCategory_ENOnboardingManager <= 90 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_ENOnboardingManager, "[ENOnboardingManager _observeCameraIrisNotifications]", 90, "Failed to register for back telecamera iris events.", v8, v9, v10, v11);
    }

    self->_cameraIrisBackTeleNotifyToken = -1;
  }

  else if (gLogCategory_ENOnboardingManager <= 30 && (gLogCategory_ENOnboardingManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENOnboardingManager, "[ENOnboardingManager _observeCameraIrisNotifications]", 30, "Registered for back telecamera iris events.", v8, v9, v10, v11);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (ENOnboardingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end