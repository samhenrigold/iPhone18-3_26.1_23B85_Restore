@interface BLSHBacklightOSInterfaceProvider
+ (BLSHBacklightOSInterfaceProvider)sharedProvider;
+ (void)setSharedProvider:(id)provider;
- (BLSHBacklightOSInterfaceProvider)initWithPlatformProvider:(id)provider;
- (BLSHSuppressionEvent)lastSuppressionEvent;
- (BOOL)isFlipbookTransparent;
- (BOOL)isSuppressionServiceActive;
- (double)timeoutForWatchdogType:(void *)type;
- (id)abortContextForTimer:(id)timer;
- (id)acquireDisplayPowerAssertionForReason:(int64_t)reason;
- (id)addSceneObserver:(id)observer forSceneIdentityToken:(id)token;
- (id)createDisplayPowerResourceHintWithState:(unint64_t)state;
- (id)createPowerAssertionWithIdentifier:(id)identifier;
- (id)createSystemActivityAssertionWithIdentifier:(id)identifier configurator:(id)configurator;
- (id)identifier;
- (id)observeSignificantTimeChangeWithIdentifier:(id)identifier handler:(id)handler;
- (id)removeSceneObserver:(id)observer forSceneIdentityToken:(id)token;
- (id)sceneWithIdentityToken:(id)token;
- (int64_t)caDisplayState;
- (int64_t)cbDisplayMode;
- (int64_t)cbFlipbookState;
- (void)_didCompleteTransitionToDisplayMode:(void *)mode withError:;
- (void)abortForWatchdog:(unint64_t)watchdog payload:(void *)payload payloadSize:(unsigned int)size explanation:(id)explanation;
- (void)clearCAWatchdog;
- (void)deregisterSceneWorkspace:(id)workspace;
- (void)didCompleteSwitchToFlipbookState:(int64_t)state withError:(id)error;
- (void)didCompleteTransitionToDisplayMode:(int64_t)mode withError:(id)error;
- (void)didDetectSignificantUserInteraction;
- (void)dispatchToMainQueueAfterSecondsDelay:(double)delay identifier:(id)identifier block:(id)block;
- (void)endSuppressionService;
- (void)notifyDisplayBlankedIfChangedForCADisplayState:(uint64_t)state;
- (void)panicForWatchdog:(id)watchdog withDelay:(double)delay completion:(id)completion;
- (void)registerHandlersForService:(id)service;
- (void)registerSceneWorkspace:(id)workspace;
- (void)scheduleOSIPWatchdogWithExplanation:(unint64_t)explanation type:;
- (void)setCATransitionsDelayForTesting:(double)testing;
- (void)setCBTransitionsDelayForTesting:(double)testing;
- (void)setFlipbookTransparent:(BOOL)transparent;
- (void)setLastSuppressionEvent:(uint64_t)event;
- (void)setSuppressionServiceActive:(uint64_t)active;
- (void)startSuppressionServiceWithHandler:(id)handler;
- (void)switchToFlipbookState:(int64_t)state;
- (void)transitionToCADisplayState:(int64_t)state;
- (void)transitionToDisplayMode:(int64_t)mode withDuration:(double)duration;
- (void)writeTailspinForWatchdog:(id)watchdog completion:(id)completion;
@end

@implementation BLSHBacklightOSInterfaceProvider

- (int64_t)caDisplayState
{
  os_unfair_lock_lock(&self->_lock);
  lock_caDisplayState = self->_lock_caDisplayState;
  os_unfair_lock_unlock(&self->_lock);
  return lock_caDisplayState;
}

- (int64_t)cbDisplayMode
{
  os_unfair_lock_lock(&self->_lock);
  lock_cbDisplayMode = self->_lock_cbDisplayMode;
  os_unfair_lock_unlock(&self->_lock);
  return lock_cbDisplayMode;
}

- (int64_t)cbFlipbookState
{
  os_unfair_lock_lock(&self->_lock);
  lock_cbFlipbookState = self->_lock_cbFlipbookState;
  os_unfair_lock_unlock(&self->_lock);
  return lock_cbFlipbookState;
}

- (void)endSuppressionService
{
  [(BLSHBacklightOSInterfaceProvider *)self setSuppressionServiceActive:?];
  [(CMSuppressionManager *)self->_suppressionManager stopSuppressionUpdates];
  [(CMSuppressionManager *)self->_suppressionManager stopService];
  v3 = [[BLSHSuppressionEvent alloc] initWithType:2 reason:0 timestamp:mach_continuous_time()];
  [(BLSHBacklightOSInterfaceProvider *)self setLastSuppressionEvent:v3];
}

- (BOOL)isSuppressionServiceActive
{
  os_unfair_lock_lock(&self->_lock);
  lock_suppressionServiceActive = self->_lock_suppressionServiceActive;
  os_unfair_lock_unlock(&self->_lock);
  return lock_suppressionServiceActive;
}

- (void)didDetectSignificantUserInteraction
{
  [(CMSuppressionManager *)self->_suppressionManager didDetectSignificantUserInteraction];
  [(BLSHWatchdogProvider *)self->_watchdogProvider didDetectSignificantUserInteraction];
  criticalAssertProvider = self->_criticalAssertProvider;

  [(BLSHCriticalAssertProvider *)criticalAssertProvider didDetectSignificantUserInteraction];
}

- (void)clearCAWatchdog
{
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    [*(self + 152) invalidate:2];
    v2 = *(self + 152);
    *(self + 152) = 0;

    os_unfair_lock_unlock((self + 88));
  }
}

+ (BLSHBacklightOSInterfaceProvider)sharedProvider
{
  os_unfair_lock_lock(&_classLock);
  v2 = _sharedProvider;
  os_unfair_lock_unlock(&_classLock);

  return v2;
}

+ (void)setSharedProvider:(id)provider
{
  providerCopy = provider;
  os_unfair_lock_lock(&_classLock);
  v4 = _sharedProvider;
  _sharedProvider = providerCopy;

  os_unfair_lock_unlock(&_classLock);
}

- (BLSHBacklightOSInterfaceProvider)initWithPlatformProvider:(id)provider
{
  v77[2] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v65.receiver = self;
  v65.super_class = BLSHBacklightOSInterfaceProvider;
  v7 = [(BLSHBacklightOSInterfaceProvider *)&v65 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11 = *(v8 + 32);
    *(v8 + 32) = dictionary;

    v12 = [MEMORY[0x277CBEB58] set];
    v13 = *(v8 + 40);
    *(v8 + 40) = v12;

    objc_storeStrong((v8 + 8), provider);
    v14 = [[BLSHWatchdogProvider alloc] initWithDelegate:v8];
    v15 = *(v8 + 16);
    *(v8 + 16) = v14;

    v16 = objc_alloc_init(BLSHCriticalAssertProvider);
    v17 = *(v8 + 24);
    *(v8 + 24) = v16;

    v18 = objc_opt_respondsToSelector();
    LODWORD(v19) = 1.0;
    if (v18)
    {
      [providerCopy backlightDimmedFactor];
    }

    *(v8 + 136) = LODWORD(v19);
    if (MGGetBoolAnswer())
    {
      LOBYTE(bOOLValue2) = MGGetBoolAnswer();
      LOBYTE(bOOLValue) = 1;
    }

    else
    {
      LOBYTE(bOOLValue2) = MGGetBoolAnswer();
      LOBYTE(bOOLValue) = bOOLValue2;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v22 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
      v23 = [v22 valueForKey:@"deviceSupportsAlwaysOnOverride"];
      if (v23 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        bOOLValue = [v23 BOOLValue];
        v24 = bls_backlight_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v67 = v8;
          v68 = 1024;
          LODWORD(v69) = bOOLValue;
          _os_log_impl(&dword_21FD11000, v24, OS_LOG_TYPE_DEFAULT, "OSIP:%p deviceSupportsAlwaysOnOverride set to %{BOOL}u - use 'login -f mobile defaults delete com.apple.BacklightServices deviceSupportsAlwaysOnOverride' to remove", buf, 0x12u);
        }
      }

      v25 = [v22 valueForKey:@"deviceSupportsAlwaysOnFlipbookOverride"];

      if (v25 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        bOOLValue2 = [v25 BOOLValue];
        v26 = bls_backlight_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v67 = v8;
          v68 = 1024;
          LODWORD(v69) = bOOLValue2;
          _os_log_impl(&dword_21FD11000, v26, OS_LOG_TYPE_DEFAULT, "OSIP:%p deviceSupportsAlwaysOnFlipbookOverride set to %{BOOL}u - use 'login -f mobile defaults delete com.apple.BacklightServices deviceSupportsAlwaysOnFlipbookOverride' to remove", buf, 0x12u);
        }
      }

      v76[0] = @"flipbookDiagnosticsFrameLimit";
      v76[1] = @"flipbookDiagnosticsMemoryLimit";
      v77[0] = &unk_28338DE78;
      v77[1] = &unk_28338DE90;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
      [v22 registerDefaults:v27];

      *(v8 + 192) = [v22 integerForKey:@"flipbookDiagnosticsFrameLimit"];
      *(v8 + 200) = [v22 integerForKey:@"flipbookDiagnosticsMemoryLimit"] << 20;
    }

    *(v8 + 130) = bOOLValue;
    *(v8 + 131) = bOOLValue2;
    *(v8 + 132) = bOOLValue2;
    mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
    stateControl = [mainDisplay stateControl];
    v30 = *(v8 + 64);
    *(v8 + 64) = stateControl;

    *(v8 + 96) = [*(v8 + 64) displayState];
    if (!*(v8 + 64))
    {
      [BLSHBacklightOSInterfaceProvider initWithPlatformProvider:a2];
    }

    v31 = objc_alloc_init(MEMORY[0x277CFD3B0]);
    [v31 activate];
    supported = [v31 supported];
    v33 = supported;
    if (supported)
    {
      v34 = (v8 + 133);
      *(v8 + 133) = supported;
      *(v8 + 120) = 3;
      objc_storeStrong((v8 + 56), v31);
      *(v8 + 112) = [*(v8 + 56) displayMode];
      [*(v8 + 56) setCompletionDelegate:v8];
    }

    else
    {
      [v31 cancel];
      v34 = (v8 + 133);
      *(v8 + 133) = v33;
      v35 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:@"backlightServices.setCBDisplayMode"];
      v36 = *(v8 + 80);
      *(v8 + 80) = v35;

      *(v8 + 120) = 3;
      BKSHIDServicesGetBacklightFactor();
      v38 = fabsf(v37);
      v39 = 4;
      if (fabsf(v37 + -1.0) <= 0.001)
      {
        v39 = 3;
      }

      if (v38 <= 0.001)
      {
        v39 = 0;
      }

      *(v8 + 112) = v39;
    }

    *(v8 + 104) = *(v8 + 96) != 1;
    [(BLSHBacklightOSInterfaceProvider *)v8 notifyDisplayBlankedIfChangedForCADisplayState:?];
    isAvailable = [MEMORY[0x277CC1D50] isAvailable];
    v41 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
    v42 = [v41 BOOLForKey:@"disableSuppression"];

    if (v42)
    {
      v43 = bls_backlight_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v67 = v8;
        _os_log_impl(&dword_21FD11000, v43, OS_LOG_TYPE_DEFAULT, "OSIP:%p disableSuppression set to YES - use 'login -f mobile defaults delete com.apple.BacklightServices disableSuppression' to remove", buf, 0xCu);
      }

      isAvailable = 0;
    }

    v44 = bls_backlight_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(v8 + 112);
      if (v45 > 4)
      {
        v46 = @"Invalid";
      }

      else
      {
        v46 = off_27841E908[v45];
      }

      v47 = *(v8 + 130);
      v48 = *(v8 + 131);
      v49 = *v34;
      *buf = 134219266;
      v67 = v8;
      v68 = 2114;
      v69 = v46;
      v70 = 1024;
      *v71 = v47;
      *&v71[4] = 1024;
      *&v71[6] = v48;
      v72 = 1024;
      v73 = v49;
      v74 = 1024;
      v75 = isAvailable;
      _os_log_impl(&dword_21FD11000, v44, OS_LOG_TYPE_DEFAULT, "OSIP:%p startup cbDisplayMode:%{public}@ dsao:%{BOOL}u dsaof:%{BOOL}u dscs:%{BOOL}u sup:%{BOOL}u", buf, 0x2Eu);
    }

    v50 = [[BLSHSuppressionEvent alloc] initWithType:2 reason:0 timestamp:mach_continuous_time()];
    v51 = *(v8 + 48);
    *(v8 + 48) = v50;

    if (isAvailable)
    {
      v52 = [objc_alloc(MEMORY[0x277CC1D50]) initWithClientType:1];
      v53 = *(v8 + 72);
      *(v8 + 72) = v52;
    }

    if (*v34)
    {
      v54 = *(v8 + 112);
      if (v54 > 4)
      {
        v55 = @"Invalid";
      }

      else
      {
        v55 = off_27841E908[v54];
      }

      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"OSIP:%p initWithPlatformProvider: transitionToDisplayMode:%@ withDuration:0", v8, v55];
      [(BLSHBacklightOSInterfaceProvider *)v8 scheduleOSIPWatchdogWithExplanation:v56 type:0];
      v57 = *(v8 + 56);
      v58 = *(v8 + 112);
      v64 = 0;
      [v57 transitionToDisplayMode:v58 withDuration:&v64 error:0.0];
      v59 = v64;
      if (v59)
      {
        v60 = bls_backlight_log();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
        {
          v61 = *(v8 + 112);
          if (v61 > 4)
          {
            v62 = @"Invalid";
          }

          else
          {
            v62 = off_27841E908[v61];
          }

          bls_loggingString = [v59 bls_loggingString];
          *buf = 134218498;
          v67 = v8;
          v68 = 2114;
          v69 = v62;
          v70 = 2114;
          *v71 = bls_loggingString;
          _os_log_fault_impl(&dword_21FD11000, v60, OS_LOG_TYPE_FAULT, "OSIP:%p could not transitionToDisplayMode:%{public}@ during init error:%{public}@", buf, 0x20u);
        }
      }
    }

    if (*v34 == 1)
    {
      BKSHIDServicesNotifyBacklightFactorWithFadeDurationAsync();
    }

    else
    {
      BKSHIDServicesSetBacklightFactorWithFadeDurationAsync();
    }
  }

  return v8;
}

- (void)registerHandlersForService:(id)service
{
  serviceCopy = service;
  v5 = [BLSHTransparentFlipbookAttributeHandler registerHandlerForService:"registerHandlerForService:provider:" provider:?];
  if (!v5)
  {
    [BLSHBacklightOSInterfaceProvider registerHandlersForService:a2];
  }

  v6 = v5;
  [(BLSHWatchdogProvider *)self->_watchdogProvider registerHandlersForService:serviceCopy];
}

- (void)registerSceneWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_sceneWorkspaces addObject:workspaceCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)deregisterSceneWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_sceneWorkspaces removeObject:workspaceCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)sceneWithIdentityToken:(id)token
{
  v19 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_lock_sceneWorkspaces;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) sceneWithIdentityToken:{tokenCopy, v14}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  if (!v11)
  {
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    v11 = [mEMORY[0x277D0AAD8] sceneFromIdentityToken:tokenCopy];
  }

  return v11;
}

- (void)dispatchToMainQueueAfterSecondsDelay:(double)delay identifier:(id)identifier block:(id)block
{
  v5 = (delay * 1000000000.0);
  block = block;
  v6 = dispatch_time(0, v5);
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

- (void)transitionToDisplayMode:(int64_t)mode withDuration:(double)duration
{
  v43 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_displayStateClientSupported && (self->_lock_cbFlipbookState & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    if (mode > 4)
    {
      v29 = @"Invalid";
    }

    else
    {
      v29 = off_27841E908[mode];
    }

    v30 = self->_lock_cbFlipbookState - 1;
    if (v30 > 2)
    {
      v31 = @"WillTurnOn";
    }

    else
    {
      v31 = off_27841E930[v30];
    }

    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot change cb display mode to %@, flipbook state:%@ is transitioning", v29, v31];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(BLSHBacklightOSInterfaceProvider *)a2 transitionToDisplayMode:v32 withDuration:?];
    }

    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x21FD22020);
  }

  lock_cbDisplayMode = self->_lock_cbDisplayMode;
  v9 = mode - 1;
  if ((lock_cbDisplayMode - 1) > 3)
  {
    v34 = 0;
  }

  else
  {
    v34 = qword_21FDA5230[lock_cbDisplayMode - 1];
  }

  if (v9 > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_21FDA5230[v9];
  }

  deviceSupportsAlwaysOn = self->_deviceSupportsAlwaysOn;
  self->_lock_cbDisplayMode = mode;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_cbDisplayMode != mode)
  {
    v12 = (((mode - 1) < 2) ^ ((lock_cbDisplayMode - 1) < 2)) & deviceSupportsAlwaysOn;
    if (self->_displayStateClientSupported)
    {
      v18 = bls_backlight_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        if (mode > 4)
        {
          v19 = @"Invalid";
        }

        else
        {
          v19 = off_27841E908[mode];
        }

        *buf = 134218498;
        selfCopy4 = self;
        v39 = 2114;
        *v40 = v19;
        *&v40[8] = 2048;
        *&v40[10] = duration;
        _os_log_debug_impl(&dword_21FD11000, v18, OS_LOG_TYPE_DEBUG, "OSIP:%p transitionToDisplayMode:%{public}@ withDuration:%fs", buf, 0x20u);
      }

      if (mode > 4)
      {
        v22 = @"Invalid";
      }

      else
      {
        v22 = off_27841E908[mode];
      }

      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"OSIP:%p transitionToDisplayMode:%@ withDuration:%fs", self, v22, *&duration];
      [(BLSHBacklightOSInterfaceProvider *)self scheduleOSIPWatchdogWithExplanation:v23 type:0];
      displayStateClient = self->_displayStateClient;
      v36 = 0;
      [(CBDisplayStateClient *)displayStateClient transitionToDisplayMode:mode withDuration:&v36 error:duration];
      v25 = v36;
      if (v25)
      {
        v26 = bls_backlight_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          if (mode > 4)
          {
            v27 = @"Invalid";
          }

          else
          {
            v27 = off_27841E908[mode];
          }

          v33 = v27;
          bls_loggingString = [v25 bls_loggingString];
          *buf = 134218498;
          selfCopy4 = self;
          v39 = 2114;
          *v40 = v33;
          *&v40[8] = 2114;
          *&v40[10] = bls_loggingString;
          _os_log_fault_impl(&dword_21FD11000, v26, OS_LOG_TYPE_FAULT, "OSIP:%p could not transitionToDisplayMode:%{public}@ error:%{public}@", buf, 0x20u);
        }
      }

      if (!v12)
      {
        goto LABEL_16;
      }
    }

    else if (!v12)
    {
LABEL_16:
      if (v34 != v10)
      {
        if (v10 == 1)
        {
          backlightDimmedFactor = 1.0;
        }

        else
        {
          backlightDimmedFactor = 0.0;
          if (v10 == 2)
          {
            backlightDimmedFactor = self->_backlightDimmedFactor;
          }
        }

        if (v12)
        {
          durationCopy = 0.0;
        }

        else
        {
          durationCopy = duration;
        }

        v16 = bls_backlight_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          displayStateClientSupported = self->_displayStateClientSupported;
          *buf = 134218754;
          selfCopy4 = self;
          if (displayStateClientSupported)
          {
            v21 = "Notify";
          }

          else
          {
            v21 = "Set";
          }

          v39 = 2080;
          *v40 = v21;
          *&v40[8] = 2048;
          *&v40[10] = backlightDimmedFactor;
          v41 = 2048;
          v42 = durationCopy;
          _os_log_debug_impl(&dword_21FD11000, v16, OS_LOG_TYPE_DEBUG, "OSIP:%p %sBacklightFactor:%f WithFadeDuration:%fs", buf, 0x2Au);
        }

        if (self->_displayStateClientSupported)
        {
          BKSHIDServicesNotifyBacklightFactorWithFadeDurationAsync();
        }

        else
        {
          BKSHIDServicesSetBacklightFactorWithFadeDurationAsync();
        }
      }

      if (!self->_displayStateClientSupported)
      {
        setCBDisplayModeTimer = self->_setCBDisplayModeTimer;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __73__BLSHBacklightOSInterfaceProvider_transitionToDisplayMode_withDuration___block_invoke;
        v35[3] = &unk_27841E728;
        v35[4] = self;
        v35[5] = mode;
        [(BSContinuousMachTimer *)setCBDisplayModeTimer scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v35 queue:duration handler:0.016];
      }

      return;
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = bls_backlight_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        selfCopy4 = self;
        v39 = 1024;
        *v40 = v9 < 2;
        *&v40[4] = 2048;
        *&v40[6] = duration;
        _os_log_debug_impl(&dword_21FD11000, v13, OS_LOG_TYPE_DEBUG, "OSIP:%p (platformProvider) useAlwaysOnBrightnessCurve:%{BOOL}u withDuration:%fs", buf, 0x1Cu);
      }

      [(BLSHBacklightPlatformProvider *)self->_platformProvider useAlwaysOnBrightnessCurve:v9 < 2 withRampDuration:duration];
    }

    goto LABEL_16;
  }
}

- (void)switchToFlipbookState:(int64_t)state
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_cbFlipbookState = state;
  os_unfair_lock_unlock(&self->_lock);
  if (self->_displayStateClientSupported)
  {
    v6 = state - 1;
    if ((state - 1) > 2)
    {
      v7 = @"WillTurnOn";
    }

    else
    {
      v7 = off_27841E930[v6];
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"OSIP:%p switchToFlipbookState:%@", self, v7];
    [(BLSHBacklightOSInterfaceProvider *)self scheduleOSIPWatchdogWithExplanation:v5 type:1uLL];
    displayStateClient = self->_displayStateClient;
    v13 = 0;
    [(CBDisplayStateClient *)displayStateClient switchToFlipbookState:state error:&v13];
    v9 = v13;
    if (v9)
    {
      v10 = bls_backlight_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        if (v6 > 2)
        {
          v11 = @"WillTurnOn";
        }

        else
        {
          v11 = off_27841E930[v6];
        }

        bls_loggingString = [v9 bls_loggingString];
        *buf = 134218498;
        selfCopy = self;
        v16 = 2114;
        v17 = v11;
        v18 = 2114;
        v19 = bls_loggingString;
        _os_log_fault_impl(&dword_21FD11000, v10, OS_LOG_TYPE_FAULT, "OSIP:%p could not switchToFlipbookState:%{public}@ error:%{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v5 = bls_backlight_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(BLSHBacklightOSInterfaceProvider *)self switchToFlipbookState:state, v5];
    }
  }
}

- (id)acquireDisplayPowerAssertionForReason:(int64_t)reason
{
  if (reason == 1)
  {
    kdebug_trace();
  }

  v4 = [(CADisplayStateControl *)self->_displayStateControl createPowerAssertionWithReason:1 identifier:@"BacklightServices"];
  [v4 acquire];

  return v4;
}

void __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = bls_backlight_log();
  v7 = v6;
  if (*(a1 + 40) == a2)
  {
    v8 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v8 = 16 * (a3 == 0);
  }

  if (os_log_type_enabled(v6, v8))
  {
    v9 = *(a1 + 32);
    v10 = NSStringFromCADisplayStateTransitionStatus();
    v11 = NSStringFromCADisplayState();
    v12 = NSStringFromCADisplayState();
    *buf = 134218754;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    v30 = 2114;
    v31 = *&v11;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&dword_21FD11000, v7, v8, "OSIP:%p completion(%{public}@->%{public}@) transitionToDisplayState:%{public}@", buf, 0x2Au);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke_173;
  v25[3] = &unk_27841E750;
  v13 = *(a1 + 40);
  v25[4] = *(a1 + 32);
  v25[5] = a3;
  v25[6] = a2;
  v25[7] = v13;
  v14 = MEMORY[0x223D70730](v25);
  v15 = v14;
  v16 = *(*(a1 + 32) + 184);
  if (v16 <= 0.1)
  {
    (*(v14 + 16))(v14);
  }

  else
  {
    v17 = bls_diagnostics_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = NSStringFromCADisplayState();
      *buf = 134218498;
      v27 = v18;
      v28 = 2114;
      v29 = v19;
      v30 = 2048;
      v31 = v16;
      _os_log_impl(&dword_21FD11000, v17, OS_LOG_TYPE_DEFAULT, "OSIP:%p delayCompletionsForTesting:YES, delaying CATransitionToDisplayState:%{public}@ completion by %.2fs", buf, 0x20u);
    }

    v20 = dispatch_time(0, (v16 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke_175;
    block[3] = &unk_27841E5B0;
    v21 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v24 = v21;
    v23 = v15;
    dispatch_after(v20, MEMORY[0x277D85CD0], block);
  }
}

void __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke_173(uint64_t *a1)
{
  [(BLSHBacklightOSInterfaceProvider *)a1[4] clearCAWatchdog];
  if (!a1[5])
  {
    [(BLSHBacklightOSInterfaceProvider *)a1[4] notifyDisplayBlankedIfChangedForCADisplayState:?];
  }

  v2 = [a1[4] displayStateDelegate];
  [v2 osInterfaceProvider:a1[4] didCompleteTransitionToCADisplayState:a1[7] currentState:a1[6] transitionStatus:a1[5]];
}

uint64_t __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke_175(uint64_t a1)
{
  v2 = bls_diagnostics_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke_175_cold_1(a1, v2);
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)createDisplayPowerResourceHintWithState:(unint64_t)state
{
  v3 = [objc_alloc(MEMORY[0x277D3F038]) initWithResourceType:2 andState:state];
  v4 = [BLSHAsyncDisplayPowerResourceHint hintWithHint:v3];

  return v4;
}

- (id)createPowerAssertionWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D6C090];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithIdentifier:identifierCopy];

  return v5;
}

- (id)createSystemActivityAssertionWithIdentifier:(id)identifier configurator:(id)configurator
{
  v5 = MEMORY[0x277D6C098];
  configuratorCopy = configurator;
  identifierCopy = identifier;
  v8 = [[v5 alloc] initWithIdentifier:identifierCopy configurator:configuratorCopy];

  return v8;
}

- (id)observeSignificantTimeChangeWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__0;
  v16[4] = __Block_byref_object_dispose__0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *MEMORY[0x277D766F0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__BLSHBacklightOSInterfaceProvider_observeSignificantTimeChangeWithIdentifier_handler___block_invoke;
  v14[3] = &unk_27841E7A0;
  v9 = handlerCopy;
  v15 = v9;
  v17 = [defaultCenter addObserverForName:v8 object:0 queue:0 usingBlock:v14];

  v10 = objc_alloc(MEMORY[0x277CF0CE8]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__BLSHBacklightOSInterfaceProvider_observeSignificantTimeChangeWithIdentifier_handler___block_invoke_2;
  v13[3] = &unk_27841E7C8;
  v13[4] = v16;
  v11 = [v10 initWithIdentifier:identifierCopy forReason:@"observeSignificantTimeChange" invalidationBlock:v13];
  _Block_object_dispose(v16, 8);

  return v11;
}

void __87__BLSHBacklightOSInterfaceProvider_observeSignificantTimeChangeWithIdentifier_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (BLSHSuppressionEvent)lastSuppressionEvent
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_lastSuppressionEvent;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

void __71__BLSHBacklightOSInterfaceProvider_startSuppressionServiceWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 32);
      v10 = [v7 localizedDescription];
      v11 = [v7 localizedFailureReason];
      v12 = 134218754;
      v13 = v9;
      v14 = 2114;
      v15 = v5;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_fault_impl(&dword_21FD11000, v8, OS_LOG_TYPE_FAULT, "OSIP:%p suppression event error - event:%{public}@ error:%{public}@ reason:%{public}@", &v12, 0x2Au);
    }
  }

  else if (([v5 type] - 1) <= 1)
  {
    __71__BLSHBacklightOSInterfaceProvider_startSuppressionServiceWithHandler___block_invoke_cold_1(v5, a1);
  }
}

- (id)addSceneObserver:(id)observer forSceneIdentityToken:(id)token
{
  v26 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  tokenCopy = token;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BLSHBacklightOSInterfaceProvider addSceneObserver:a2 forSceneIdentityToken:?];
  }

  v9 = [(BLSHBacklightOSInterfaceProvider *)self sceneWithIdentityToken:tokenCopy];
  if (v9)
  {
    v10 = [BLSHSceneEnvironmentObserverToken tokenWithObserver:observerCopy sceneIdentityToken:tokenCopy];
    v11 = [BLSHSceneEnvironmentObserver observerWithObserver:observerCopy];
    os_unfair_lock_lock(&self->_lock);
    v12 = bls_assertions_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(NSMutableDictionary *)self->_lock_sceneObservers objectForKey:v10];
      *buf = 134218754;
      selfCopy = self;
      v20 = 2114;
      v21 = observerCopy;
      v22 = 2114;
      v23 = tokenCopy;
      v24 = 2114;
      v25 = v17;
      _os_log_debug_impl(&dword_21FD11000, v12, OS_LOG_TYPE_DEBUG, "OSIP:%p addSceneObserver:%{public}@ forSceneIdentityToken:%{public}@ existing:%{public}@", buf, 0x2Au);
    }

    v13 = [(NSMutableDictionary *)self->_lock_sceneObservers objectForKey:v10];

    if (v13)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot add the same observer twice for the same scene observer:%@ scene:%@", observerCopy, v9];;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [(BLSHBacklightOSInterfaceProvider *)a2 addSceneObserver:v16 forSceneIdentityToken:?];
      }

      [v16 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x21FD22E74);
    }

    [(NSMutableDictionary *)self->_lock_sceneObservers setObject:v11 forKey:v10];
    os_unfair_lock_unlock(&self->_lock);
    [v9 addObserver:v11];
    backlightSceneHostEnvironment = [v9 backlightSceneHostEnvironment];
  }

  else
  {
    v10 = bls_assertions_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BLSHBacklightOSInterfaceProvider addSceneObserver:forSceneIdentityToken:];
    }

    backlightSceneHostEnvironment = 0;
  }

  return backlightSceneHostEnvironment;
}

- (id)removeSceneObserver:(id)observer forSceneIdentityToken:(id)token
{
  v26 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  tokenCopy = token;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BLSHBacklightOSInterfaceProvider removeSceneObserver:a2 forSceneIdentityToken:?];
  }

  v9 = [(BLSHBacklightOSInterfaceProvider *)self sceneWithIdentityToken:tokenCopy];
  os_unfair_lock_lock(&self->_lock);
  v10 = [BLSHSceneEnvironmentObserverToken tokenWithObserver:observerCopy sceneIdentityToken:tokenCopy];
  v11 = [(NSMutableDictionary *)self->_lock_sceneObservers objectForKey:v10];
  v12 = bls_assertions_log();
  v13 = 2 * (v9 != 0);
  if (os_log_type_enabled(v12, v13))
  {
    v16 = 134219010;
    selfCopy = self;
    v18 = 2114;
    v19 = observerCopy;
    v20 = 2114;
    v21 = tokenCopy;
    v22 = 1024;
    v23 = v9 != 0;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&dword_21FD11000, v12, v13, "OSIP:%p removeSceneObserver:%{public}@ forSceneIdentityToken:%{public}@ foundScene:%{BOOL}u existing:%{public}@", &v16, 0x30u);
  }

  [(NSMutableDictionary *)self->_lock_sceneObservers removeObjectForKey:v10];
  if (v9)
  {
    if (v11)
    {
      [v9 removeObserver:v11];
    }

    backlightSceneHostEnvironment = [v9 backlightSceneHostEnvironment];
  }

  else
  {
    backlightSceneHostEnvironment = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return backlightSceneHostEnvironment;
}

- (void)didCompleteTransitionToDisplayMode:(int64_t)mode withError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = bls_backlight_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (mode > 4)
    {
      v8 = @"Invalid";
    }

    else
    {
      v8 = off_27841E908[mode];
    }

    *buf = 134218498;
    selfCopy2 = self;
    v17 = 2114;
    v18 = *&v8;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&dword_21FD11000, v7, OS_LOG_TYPE_INFO, "OSIP:%p got didCompleteTransitionToDisplayMode:%{public}@ error:%@", buf, 0x20u);
  }

  if (self->_cbTransitionsDelayForTesting <= 0.1)
  {
    [(BLSHBacklightOSInterfaceProvider *)self _didCompleteTransitionToDisplayMode:mode withError:errorCopy];
  }

  else
  {
    v9 = bls_diagnostics_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      cbTransitionsDelayForTesting = self->_cbTransitionsDelayForTesting;
      *buf = 134218240;
      selfCopy2 = self;
      v17 = 2048;
      v18 = cbTransitionsDelayForTesting;
      _os_log_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEFAULT, "OSIP:%p delayCompletionsForTesting:YES, delaying didCompleteCBTransitionToDisplayMode by %.2fs", buf, 0x16u);
    }

    v11 = dispatch_time(0, (self->_cbTransitionsDelayForTesting * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__BLSHBacklightOSInterfaceProvider_didCompleteTransitionToDisplayMode_withError___block_invoke;
    block[3] = &unk_27841E510;
    block[4] = self;
    modeCopy = mode;
    v13 = errorCopy;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
  }
}

void __81__BLSHBacklightOSInterfaceProvider_didCompleteTransitionToDisplayMode_withError___block_invoke(void *a1)
{
  v2 = bls_diagnostics_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__BLSHBacklightOSInterfaceProvider_didCompleteTransitionToDisplayMode_withError___block_invoke_cold_1(a1, v2);
  }

  [(BLSHBacklightOSInterfaceProvider *)a1[4] _didCompleteTransitionToDisplayMode:a1[5] withError:?];
}

- (void)didCompleteSwitchToFlipbookState:(int64_t)state withError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = bls_backlight_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if ((state - 1) > 2)
    {
      v8 = @"WillTurnOn";
    }

    else
    {
      v8 = off_27841E930[state - 1];
    }

    v11 = 134218498;
    selfCopy = self;
    v13 = 2114;
    v14 = v8;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_21FD11000, v7, OS_LOG_TYPE_INFO, "OSIP:%p got didCompleteSwitchToFlipbookState:%{public}@ error:%@", &v11, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_CBWatchdogType == 1)
  {
    [(BLSHWatchdogInvalidatable *)self->_lock_CBWatchdogTimer invalidate:2];
    lock_CBWatchdogTimer = self->_lock_CBWatchdogTimer;
    self->_lock_CBWatchdogTimer = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  displayStateDelegate = [(BLSHBacklightOSInterfaceProvider *)self displayStateDelegate];
  [displayStateDelegate osInterfaceProvider:self didCompleteSwitchToCBFlipbookState:state withError:errorCopy];
}

- (BOOL)isFlipbookTransparent
{
  os_unfair_lock_lock(&self->_lock);
  lock_flipbookTransparent = self->_lock_flipbookTransparent;
  os_unfair_lock_unlock(&self->_lock);
  return lock_flipbookTransparent;
}

- (void)setFlipbookTransparent:(BOOL)transparent
{
  transparentCopy = transparent;
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_flipbookTransparent = self->_lock_flipbookTransparent;
  self->_lock_flipbookTransparent = transparentCopy;
  lock_caDisplayState = self->_lock_caDisplayState;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_flipbookTransparent != transparentCopy && lock_caDisplayState == 2)
  {
    v8 = bls_backlight_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (transparentCopy)
    {
      if (v9)
      {
        *buf = 134217984;
        selfCopy2 = self;
        v10 = 1;
        _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_INFO, "OSIP:%p flipbook set transparent, will transition to active", buf, 0xCu);
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      if (v9)
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_INFO, "OSIP:%p flipbook no longer transparent, will transition to real flipbook", buf, 0xCu);
      }

      v10 = 2;
    }

    displayStateControl = self->_displayStateControl;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__BLSHBacklightOSInterfaceProvider_setFlipbookTransparent___block_invoke;
    v12[3] = &unk_27841E818;
    v12[4] = self;
    v13 = transparentCopy;
    [(CADisplayStateControl *)displayStateControl transitionToDisplayState:v10 withCompletion:v12];
  }
}

void __59__BLSHBacklightOSInterfaceProvider_setFlipbookTransparent___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = bls_backlight_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 134218496;
    v10 = v7;
    v11 = 1024;
    v12 = a3;
    v13 = 1024;
    v14 = v8;
    _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_INFO, "OSIP:%p completed(%d) setFlipbookTransparent:%{BOOL}u", &v9, 0x18u);
  }

  if (!a3)
  {
    [(BLSHBacklightOSInterfaceProvider *)*(a1 + 32) notifyDisplayBlankedIfChangedForCADisplayState:a2];
  }
}

- (id)abortContextForTimer:(id)timer
{
  timerCopy = timer;
  os_unfair_lock_lock(&self->_lock);
  lock_CAWatchdogTimer = self->_lock_CAWatchdogTimer;

  v6 = &OBJC_IVAR___BLSHBacklightOSInterfaceProvider__lock_CBWatchdogType;
  if (lock_CAWatchdogTimer == timerCopy)
  {
    v6 = &OBJC_IVAR___BLSHBacklightOSInterfaceProvider__lock_CAWatchdogType;
  }

  v7 = *(&self->super.super.isa + *v6);
  v8 = [BLSHOSInterfaceProviderAbortContext alloc];
  *&v9 = self->_backlightDimmedFactor;
  BYTE3(v12) = self->_displayStateClientSupported;
  BYTE2(v12) = self->_deviceSupportsAlwaysOnFlipbook;
  LOWORD(v12) = *&self->_lock_flipbookTransparent;
  v10 = [BLSHOSInterfaceProviderAbortContext initWithWatchdogType:v8 cbDisplayMode:"initWithWatchdogType:cbDisplayMode:cbFlipbookState:caDisplayState:completedCADisplayState:suppressionServiceActive:flipbookTransparent:deviceSupportsAlwaysOn:deviceSupportsAlwaysOnFlipbook:displayStateClientSupported:backlightDimmedFactor:" cbFlipbookState:v7 caDisplayState:self->_lock_cbDisplayMode completedCADisplayState:self->_lock_cbFlipbookState suppressionServiceActive:self->_lock_caDisplayState flipbookTransparent:self->_lock_notifiedCADisplayState deviceSupportsAlwaysOn:self->_lock_suppressionServiceActive deviceSupportsAlwaysOnFlipbook:v9 displayStateClientSupported:v12 backlightDimmedFactor:?];
  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)identifier
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  build = [v2 build];

  return build;
}

- (void)setCBTransitionsDelayForTesting:(double)testing
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = bls_diagnostics_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    testingCopy = testing;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_DEFAULT, "OSIP: setCBTransitionsDelayForTesting:%.02fs", &v6, 0xCu);
  }

  self->_cbTransitionsDelayForTesting = testing;
}

- (void)setCATransitionsDelayForTesting:(double)testing
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = bls_diagnostics_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    testingCopy = testing;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_DEFAULT, "OSIP: setCATransitionsDelayForTesting:%.02fs", &v6, 0xCu);
  }

  self->_caTransitionsDelayForTesting = testing;
}

- (void)abortForWatchdog:(unint64_t)watchdog payload:(void *)payload payloadSize:(unsigned int)size explanation:(id)explanation
{
  [explanation UTF8String];
  if (payload && size)
  {
    abort_with_payload();
  }

  v8 = abort_with_reason();
  [(BLSHBacklightOSInterfaceProvider *)v8 panicForWatchdog:v9 withDelay:v10 completion:v12, v11];
}

- (void)panicForWatchdog:(id)watchdog withDelay:(double)delay completion:(id)completion
{
  watchdogCopy = watchdog;
  completionCopy = completion;
  v9 = bls_diagnostics_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [BLSHBacklightOSInterfaceProvider panicForWatchdog:v9 withDelay:? completion:?];
  }

  v10 = OSLogFlushBuffers();
  v11 = bls_diagnostics_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [BLSHBacklightOSInterfaceProvider panicForWatchdog:v10 withDelay:v11 completion:?];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__BLSHBacklightOSInterfaceProvider_panicForWatchdog_withDelay_completion___block_invoke;
  v17[3] = &unk_27841E5B0;
  delayCopy = delay;
  v18 = watchdogCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = watchdogCopy;
  v14 = MEMORY[0x223D70730](v17);
  v15 = v14;
  if (delay <= 0.0)
  {
    (*(v14 + 16))(v14);
  }

  else
  {
    v16 = dispatch_time(0, (delay * 1000000000.0));
    dispatch_after(v16, MEMORY[0x277D85CD0], v15);
  }
}

uint64_t __74__BLSHBacklightOSInterfaceProvider_panicForWatchdog_withDelay_completion___block_invoke(uint64_t a1)
{
  v2 = bls_diagnostics_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __74__BLSHBacklightOSInterfaceProvider_panicForWatchdog_withDelay_completion___block_invoke_cold_1(a1, v2);
  }

  v3 = MEMORY[0x223D70990](3072, [*(a1 + 32) UTF8String]);
  if (!v3)
  {
    result = *(a1 + 40);
    if (!result)
    {
      return result;
    }

    v7 = *(result + 16);
    return v7();
  }

  v4 = v3;
  v5 = bls_diagnostics_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    __74__BLSHBacklightOSInterfaceProvider_panicForWatchdog_withDelay_completion___block_invoke_cold_2(v4, v5);
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);
    return v7();
  }

  return result;
}

- (void)writeTailspinForWatchdog:(id)watchdog completion:(id)completion
{
  watchdogCopy = watchdog;
  completionCopy = completion;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = [[BLSHTailspinLogWriter alloc] initWithReason:watchdogCopy];
  v7 = v13[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__BLSHBacklightOSInterfaceProvider_writeTailspinForWatchdog_completion___block_invoke;
  v9[3] = &unk_27841E840;
  v8 = completionCopy;
  v10 = v8;
  v11 = &v12;
  [v7 writeTailspinLogWithCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

void __72__BLSHBacklightOSInterfaceProvider_writeTailspinForWatchdog_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)notifyDisplayBlankedIfChangedForCADisplayState:(uint64_t)state
{
  if (state)
  {
    os_unfair_lock_lock((state + 88));
    v4 = (a2 != 1) ^ (*(state + 104) == 1);
    *(state + 104) = a2;
    os_unfair_lock_unlock((state + 88));
    if ((v4 & 1) == 0)
    {
      kdebug_trace();

      MEMORY[0x282143388](0, a2 != 1);
    }
  }
}

- (void)scheduleOSIPWatchdogWithExplanation:(unint64_t)explanation type:
{
  if (self)
  {
    v5 = a2;
    os_unfair_lock_lock(self + 22);
    obj = [(os_unfair_lock_s *)self scheduleWatchdogWithDelegate:self explanation:v5 timeout:[(BLSHBacklightOSInterfaceProvider *)self timeoutForWatchdogType:explanation]];

    if (explanation <= 2)
    {
      v6 = off_27841E8D8[explanation];
      v7 = off_27841E8F0[explanation];
      [*(&self->_os_unfair_lock_opaque + *v6) invalidate:1];
      objc_storeStrong((self + *v6), obj);
      *(&self->_os_unfair_lock_opaque + *v7) = explanation;
    }

    os_unfair_lock_unlock(self + 22);
  }
}

- (void)transitionToCADisplayState:(int64_t)state
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_caDisplayState = state;
  if (state == 2)
  {
    lock_flipbookTransparent = self->_lock_flipbookTransparent;
    os_unfair_lock_unlock(&self->_lock);
    if (lock_flipbookTransparent)
    {
      v6 = bls_backlight_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_INFO, "OSIP:%p flipbook transparent, will transition to CADisplayStateOn not CADisplayStateFlipBook", buf, 0xCu);
      }

      state = 1;
    }

    else
    {
      state = 2;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromCADisplayState();
  v9 = [v7 stringWithFormat:@"OSIP:%p transitionToCADisplayState:%@", self, v8];

  v10 = bls_backlight_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    selfCopy = v9;
    _os_log_debug_impl(&dword_21FD11000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
  }

  [(BLSHBacklightOSInterfaceProvider *)self scheduleOSIPWatchdogWithExplanation:v9 type:2uLL];
  displayStateControl = self->_displayStateControl;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke;
  v12[3] = &unk_27841E778;
  v12[4] = self;
  v12[5] = state;
  [(CADisplayStateControl *)displayStateControl transitionToDisplayState:state withCompletion:v12];
}

- (void)setSuppressionServiceActive:(uint64_t)active
{
  if (active)
  {
    os_unfair_lock_lock((active + 88));
    *(active + 128) = a2;

    os_unfair_lock_unlock((active + 88));
  }
}

- (void)setLastSuppressionEvent:(uint64_t)event
{
  v4 = a2;
  if (event)
  {
    os_unfair_lock_lock((event + 88));
    objc_storeStrong((event + 48), a2);
    os_unfair_lock_unlock((event + 88));
  }
}

- (void)startSuppressionServiceWithHandler:(id)handler
{
  handlerCopy = handler;
  [(BLSHBacklightOSInterfaceProvider *)self setSuppressionServiceActive:?];
  [(CMSuppressionManager *)self->_suppressionManager startService];
  suppressionManager = self->_suppressionManager;
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__BLSHBacklightOSInterfaceProvider_startSuppressionServiceWithHandler___block_invoke;
  v8[3] = &unk_27841E7F0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(CMSuppressionManager *)suppressionManager startSuppressionUpdatesToQueue:mainQueue withHandler:v8];
}

- (double)timeoutForWatchdogType:(void *)type
{
  if (!type)
  {
    return 0.0;
  }

  systemSleepMonitor = [type systemSleepMonitor];
  isSleepImminent = [systemSleepMonitor isSleepImminent];

  if (a2 < 2)
  {
    v6 = &BLSHBacklightCoreBrightnessCallbackSleepImminentWatchdogTimeout;
    v7 = &BLSHBacklightCoreBrightnessCallbackWatchdogTimeout;
    v8 = isSleepImminent == 0;
    goto LABEL_4;
  }

  if (a2 == 2)
  {
    if (isSleepImminent)
    {
      v6 = &BLSHBacklightCoreAnimationCallbackSleepImminentWatchdogTimeout;
      return *v6;
    }

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v6 = &BLSHBacklightCoreAnimationCallbackWatchdogInternalInstallTimeout;
    v7 = &BLSHBacklightCoreAnimationCallbackWatchdogTimeout;
    v8 = has_internal_diagnostics == 0;
LABEL_4:
    if (v8)
    {
      v6 = v7;
    }

    return *v6;
  }

  return result;
}

- (void)_didCompleteTransitionToDisplayMode:(void *)mode withError:
{
  if (self)
  {
    modeCopy = mode;
    os_unfair_lock_lock((self + 88));
    if (!*(self + 160))
    {
      [*(self + 144) invalidate:2];
      v6 = *(self + 144);
      *(self + 144) = 0;
    }

    os_unfair_lock_unlock((self + 88));
    displayStateDelegate = [self displayStateDelegate];
    [displayStateDelegate osInterfaceProvider:self didCompleteTransitionToCBDisplayMode:a2 withError:modeCopy];
  }
}

- (void)initWithPlatformProvider:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"CADisplayStateControl nil - this process needs entitlement: 'com.apple.QuartzCore.display-state'"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    v9 = 138544642;
    v10 = a1;
    OUTLINED_FUNCTION_0_1();
    v11 = @"BLSHBacklightOSInterfaceProvider.m";
    v12 = 1024;
    v13 = 234;
    v14 = v7;
    v15 = v2;
    OUTLINED_FUNCTION_3_0(&dword_21FD11000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHandlersForService:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v10 = @"BLSHBacklightOSInterfaceProvider.m";
    v11 = 1024;
    v12 = 315;
    v13 = v7;
    v14 = v2;
    OUTLINED_FUNCTION_3_0(&dword_21FD11000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)transitionToDisplayMode:(uint64_t)a3 withDuration:.cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9 = 138544642;
  v10 = v4;
  OUTLINED_FUNCTION_0_1();
  v11 = @"BLSHBacklightOSInterfaceProvider.m";
  v12 = 1024;
  v13 = 373;
  v14 = v7;
  v15 = a3;
  OUTLINED_FUNCTION_3_0(&dword_21FD11000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9);
}

- (void)switchToFlipbookState:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((a2 - 1) > 2)
  {
    v3 = @"WillTurnOn";
  }

  else
  {
    v3 = off_27841E930[a2 - 1];
  }

  v4 = 134218242;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_fault_impl(&dword_21FD11000, log, OS_LOG_TYPE_FAULT, "OSIP:%p unsupported call to switchToFlipbookState:%{public}@", &v4, 0x16u);
}

void __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke_175_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = NSStringFromCADisplayState();
  v5 = 134218242;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "OSIP:%p delayCompletionsForTesting:YES, completing delayed CATransitionToDisplayState:%{public}@", &v5, 0x16u);
}

void __71__BLSHBacklightOSInterfaceProvider_startSuppressionServiceWithHandler___block_invoke_cold_1(void *a1, uint64_t a2)
{
  [a1 timestamp];
  BLSMachTimeFromNSTimeInterval();
  v4 = [[BLSHSuppressionEvent alloc] initWithCoreMotionEvent:a1 timestamp:BLSMachContinuousTimeFromMachAbsoluteTime()];
  [(BLSHBacklightOSInterfaceProvider *)*(a2 + 32) setLastSuppressionEvent:v4];
  (*(*(a2 + 40) + 16))();
}

- (void)addSceneObserver:(char *)a1 forSceneIdentityToken:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[sceneIdentityToken isKindOfClass:[FBSSceneIdentityToken class]]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v10 = @"BLSHBacklightOSInterfaceProvider.m";
    v11 = 1024;
    v12 = 692;
    v13 = v7;
    v14 = v2;
    OUTLINED_FUNCTION_3_0(&dword_21FD11000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addSceneObserver:(uint64_t)a3 forSceneIdentityToken:.cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9 = 138544642;
  v10 = v4;
  OUTLINED_FUNCTION_0_1();
  v11 = @"BLSHBacklightOSInterfaceProvider.m";
  v12 = 1024;
  v13 = 705;
  v14 = v7;
  v15 = a3;
  OUTLINED_FUNCTION_3_0(&dword_21FD11000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9);
}

- (void)addSceneObserver:forSceneIdentityToken:.cold.3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(&dword_21FD11000, v0, OS_LOG_TYPE_ERROR, "OSIP:%p could not find scene for token:%{public}@", v1, 0x16u);
}

- (void)removeSceneObserver:(char *)a1 forSceneIdentityToken:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[sceneIdentityToken isKindOfClass:[FBSSceneIdentityToken class]]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v10 = @"BLSHBacklightOSInterfaceProvider.m";
    v11 = 1024;
    v12 = 719;
    v13 = v7;
    v14 = v2;
    OUTLINED_FUNCTION_3_0(&dword_21FD11000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __81__BLSHBacklightOSInterfaceProvider_didCompleteTransitionToDisplayMode_withError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "OSIP:%p delayCompletionsForTesting:YES, completing delayed didCompleteCBTransitionToDisplayMode", &v3, 0xCu);
}

- (void)panicForWatchdog:(uint64_t)a1 withDelay:(os_log_t)log completion:.cold.2(uint64_t a1, os_log_t log)
{
  v3 = a1;
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed:%d", a1];
  }

  else
  {
    v4 = @"succeeded";
  }

  *buf = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_21FD11000, log, OS_LOG_TYPE_ERROR, "panicForWatchdog: OSLogFlushBuffers() %{public}@", buf, 0xCu);
  if (v3)
  {
  }
}

void __74__BLSHBacklightOSInterfaceProvider_panicForWatchdog_withDelay_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  if (v3 <= 0.0)
  {
    v4 = @"immediately";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"after %lfs delay: %@", *&v3, *(a1 + 32)];
  }

  *buf = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "panicForWatchdog: triggering panic %{public}@", buf, 0xCu);
  if (v3 > 0.0)
  {
  }
}

void __74__BLSHBacklightOSInterfaceProvider_panicForWatchdog_withDelay_completion___block_invoke_cold_2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_21FD11000, a2, OS_LOG_TYPE_FAULT, "attempt to panic failed:%d, falling through to abort", v2, 8u);
}

@end