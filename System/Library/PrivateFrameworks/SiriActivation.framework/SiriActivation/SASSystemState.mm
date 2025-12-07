@interface SASSystemState
+ (id)sharedSystemState;
- (BOOL)_deviceIsUnlocked;
- (BOOL)_mapsAppIsVisibleOnLockscreen;
- (BOOL)callHangUpEnabled;
- (BOOL)carDNDActiveOrEyesFreeAndShouldHaveFullScreenPresentation:(BOOL)presentation;
- (BOOL)carPlaySupportsEnhancedSiriCharacteristic:(unint64_t)characteristic;
- (BOOL)deviceIsBlocked;
- (BOOL)deviceIsPasscodeLocked;
- (BOOL)deviceScreenIsOn;
- (BOOL)hasRingingCall;
- (BOOL)hasUnlockedSinceBoot;
- (BOOL)isCallAudioRouteAllowed;
- (BOOL)isConnectedToBluetoothVehicle;
- (BOOL)isConnectedToEyesFreeDevice;
- (BOOL)isGuestConnected;
- (BOOL)isInActiveCall;
- (BOOL)isWirelessSplitterOn;
- (BOOL)siriInCallEnabled;
- (BOOL)siriIsEnabled;
- (BOOL)siriIsSupported;
- (CGSize)carPlayPrimaryScreenPhysicalSize;
- (SASLockStateMonitor)lockStateMonitor;
- (SASSystemState)init;
- (id)_initForTesting;
- (id)currentSpokenLanguageCode;
- (int64_t)_carPlayTransportTypeFromConfiguration:(id)configuration;
- (unint64_t)carDNDStatus;
- (void)_fetchOEMAppContext;
- (void)_fetchVehicleInformation;
- (void)_setCarPlayConnectionState:(int)state;
- (void)_updateAccessibilityState;
- (void)_updateCarPlayConnectionState;
- (void)_updateEnhancedVoiceTriggerMode;
- (void)_voiceTriggerModeChanged:(id)changed;
- (void)addStateChangeListener:(id)listener;
- (void)callObserver:(id)observer callChanged:(id)changed;
- (void)monitorCarSessions;
- (void)registerForGameMonitoring;
- (void)removeStateChangeListener:(id)listener;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)shouldBeginRestrictingForAssessmentModeWithCompletion:(id)completion;
- (void)shouldEndRestrictingForAssessmentModeWithCompletion:(id)completion;
@end

@implementation SASSystemState

void __22__SASSystemState_init__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = MEMORY[0x1E698D0A0];
    v11 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "[SASSystemState init]_block_invoke";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #modes DisplayTransition called transition=%@", &v15, 0x16u);
    }

    v12 = [v9 transitionReasons];
    if ([v12 containsObject:*MEMORY[0x1E69D4360]])
    {
      [*(a1 + 32) setLiftToWakeDetected:1];
      v13 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = "[SASSystemState init]_block_invoke";
        _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #modes Device went through liftToWake transition setLiftToWake:YES", &v15, 0xCu);
      }
    }

    else
    {
      v14 = *v10;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = "[SASSystemState init]_block_invoke";
        _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #modes Device went to sleep or went through another transition setLiftToWake:NO", &v15, 0xCu);
      }

      [*(a1 + 32) setLiftToWakeDetected:0];
    }
  }
}

- (BOOL)siriIsEnabled
{
  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  -[SASSystemState setEnabled:](self, "setEnabled:", [mEMORY[0x1E698D1C0] assistantIsEnabled]);

  return [(SASSystemState *)self enabled];
}

- (BOOL)isInActiveCall
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(NSMutableSet *)self->_activeCalls count];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SASSystemState isInActiveCall]";
    v7 = 2048;
    v8 = v2;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s CXCallObserver activeCalls:%lu", &v5, 0x16u);
  }

  return v2 != 0;
}

- (BOOL)deviceIsPasscodeLocked
{
  lockStateMonitor = [(SASSystemState *)self lockStateMonitor];
  v3 = ([lockStateMonitor lockState] >> 1) & 1;

  return v3;
}

- (SASLockStateMonitor)lockStateMonitor
{
  lockStateMonitor = self->_lockStateMonitor;
  if (!lockStateMonitor)
  {
    v4 = objc_alloc_init(SASLockStateMonitor);
    v5 = self->_lockStateMonitor;
    self->_lockStateMonitor = v4;

    lockStateMonitor = self->_lockStateMonitor;
  }

  return lockStateMonitor;
}

- (unint64_t)carDNDStatus
{
  if (![MEMORY[0x1E6993950] isAutomaticDNDAvailable])
  {
    return 1;
  }

  carAutomaticDNDStatus = [(SASSystemState *)self carAutomaticDNDStatus];
  cachedAutomaticDNDActiveState = [carAutomaticDNDStatus cachedAutomaticDNDActiveState];

  return cachedAutomaticDNDActiveState;
}

- (BOOL)isConnectedToEyesFreeDevice
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
  connectedDevices = [mEMORY[0x1E698F468] connectedDevices];

  v4 = [connectedDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(connectedDevices);
        }

        if ([*(*(&v8 + 1) + 8 * i) ac_isEyesFree])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [connectedDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)siriIsSupported
{
  currentSpokenLanguageCode = [(SASSystemState *)self currentSpokenLanguageCode];
  if (currentSpokenLanguageCode && (AFPreferencesLanguageIsSupported() & 1) != 0 || ([MEMORY[0x1E698D1C0] sharedPreferences], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isCurrentLocaleNativelySupported"), v3, v4))
  {
    v5 = AFAssistantCapable();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasUnlockedSinceBoot
{
  lockStateMonitor = [(SASSystemState *)self lockStateMonitor];
  hasUnlockedSinceBoot = [lockStateMonitor hasUnlockedSinceBoot];

  return hasUnlockedSinceBoot;
}

- (id)currentSpokenLanguageCode
{
  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  languageCode = [mEMORY[0x1E698D1C0] languageCode];

  if (!languageCode)
  {
    mEMORY[0x1E698D1C0]2 = [MEMORY[0x1E698D1C0] sharedPreferences];
    languageCode = [mEMORY[0x1E698D1C0]2 bestSupportedLanguageCodeForLanguageCode:0];
  }

  return languageCode;
}

- (BOOL)deviceIsBlocked
{
  lockStateMonitor = [(SASSystemState *)self lockStateMonitor];
  isBlocked = [lockStateMonitor isBlocked];

  return isBlocked;
}

+ (id)sharedSystemState
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SASSystemState_sharedSystemState__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedSystemState_onceToken != -1)
  {
    dispatch_once(&sharedSystemState_onceToken, block);
  }

  v2 = sharedSystemState_sharedSystemState;

  return v2;
}

- (BOOL)deviceScreenIsOn
{
  lockStateMonitor = [(SASSystemState *)self lockStateMonitor];
  isScreenOn = [lockStateMonitor isScreenOn];

  return isScreenOn;
}

uint64_t __35__SASSystemState_sharedSystemState__block_invoke(uint64_t a1)
{
  sharedSystemState_sharedSystemState = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initForTesting
{
  v3.receiver = self;
  v3.super_class = SASSystemState;
  return [(SASSystemState *)&v3 init];
}

- (SASSystemState)init
{
  v34.receiver = self;
  v34.super_class = SASSystemState;
  v2 = [(SASSystemState *)&v34 init];
  v3 = v2;
  if (v2)
  {
    v2->_carPlayConnectionState = 0;
    *&v2->_supportsCarPlayVehicleData = 0;
    [(SASSystemState *)v2 _updateAccessibilityState];
    [(SASSystemState *)v3 monitorCarSessions];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _HomeButtonTripleClickEnabled, *MEMORY[0x1E69E4F48], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(SASSystemState *)v3 setListeners:weakObjectsHashTable];

    v6 = objc_alloc_init(SASCallRouteObserver);
    callRouteObserver = v3->_callRouteObserver;
    v3->_callRouteObserver = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activeCalls = v3->_activeCalls;
    v3->_activeCalls = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695AF00]);
    callObserver = v3->_callObserver;
    v3->_callObserver = v10;

    [(CXCallObserver *)v3->_callObserver setDelegate:v3 queue:0];
    if ([MEMORY[0x1E698D258] saeAvailable])
    {
      [(SASSystemState *)v3 setGameState:0];
      [(SASSystemState *)v3 registerForGameMonitoring];
    }

    [(SASSystemState *)v3 setLiftToWakeDetected:0];
    configurationForDefaultMainDisplayMonitor = [MEMORY[0x1E699FAF0] configurationForDefaultMainDisplayMonitor];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __22__SASSystemState_init__block_invoke;
    aBlock[3] = &unk_1E82F45F0;
    v13 = v3;
    v33 = v13;
    v14 = _Block_copy(aBlock);
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:v14];
    v15 = [MEMORY[0x1E699FAE8] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
    displayLayoutMonitor = v13->_displayLayoutMonitor;
    v13->_displayLayoutMonitor = v15;

    v17 = dispatch_queue_create("com.apple.siri.ActivationService.SystemState", 0);
    v18 = [objc_alloc(MEMORY[0x1E698D1A8]) initWithName:@"com.apple.bluetooth.WirelessSplitterOn" options:1 queue:v17 delegate:0];
    observerWirelessSplitter = v13->_observerWirelessSplitter;
    v13->_observerWirelessSplitter = v18;

    v20 = [objc_alloc(MEMORY[0x1E698D1A8]) initWithName:@"com.apple.bluetooth.GuestConnected" options:1 queue:v17 delegate:0];
    observerBluetoothGuestConnected = v13->_observerBluetoothGuestConnected;
    v13->_observerBluetoothGuestConnected = v20;

    v22 = objc_alloc(MEMORY[0x1E698D1A8]);
    v23 = [v22 initWithName:*MEMORY[0x1E69AED00] options:1 queue:v17 delegate:0];
    remoteWebcamModeEnabled = v13->_remoteWebcamModeEnabled;
    v13->_remoteWebcamModeEnabled = v23;

    objc_initWeak(&location, v13);
    v25 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __22__SASSystemState_init__block_invoke_185;
    block[3] = &unk_1E82F36D0;
    objc_copyWeak(&v30, &location);
    dispatch_async(v25, block);

    v26 = [MEMORY[0x1E6985E88] registerRestrictionEnforcer:v13 machServiceName:@"com.apple.siri.assessment-mode-restriction"];
    restrictionEnforcer = v13->_restrictionEnforcer;
    v13->_restrictionEnforcer = v26;

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __22__SASSystemState_init__block_invoke_185(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 isActive];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __22__SASSystemState_init__block_invoke_2;
  v4[3] = &unk_1E82F3A58;
  objc_copyWeak(&v5, (a1 + 32));
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
}

uint64_t __22__SASSystemState_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (([WeakRetained didAssessmentModeRecieveInitialStateUpdate] & 1) == 0)
    {
      [v4 setIsAssessmentModeActive:*(a1 + 40)];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)addStateChangeListener:(id)listener
{
  listenerCopy = listener;
  listeners = [(SASSystemState *)self listeners];
  [listeners addObject:listenerCopy];
}

- (void)removeStateChangeListener:(id)listener
{
  listenerCopy = listener;
  listeners = [(SASSystemState *)self listeners];
  [listeners removeObject:listenerCopy];
}

- (BOOL)_deviceIsUnlocked
{
  lockStateMonitor = [(SASSystemState *)self lockStateMonitor];
  v3 = [lockStateMonitor lockState] == 0;

  return v3;
}

- (void)callObserver:(id)observer callChanged:(id)changed
{
  v31 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  hasEnded = [changedCopy hasEnded];
  v7 = *MEMORY[0x1E698D0A0];
  v8 = os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT);
  if (hasEnded)
  {
    if (v8)
    {
      v9 = v7;
      uUID = [changedCopy UUID];
      *buf = 136315394;
      v28 = "[SASSystemState callObserver:callChanged:]";
      v29 = 2112;
      v30 = uUID;
      _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s CXCallObserver Ended:%@", buf, 0x16u);
    }

    activeCalls = self->_activeCalls;
    uUID2 = [changedCopy UUID];
    [(NSMutableSet *)activeCalls removeObject:uUID2];
  }

  else
  {
    if (v8)
    {
      v13 = v7;
      uUID3 = [changedCopy UUID];
      *buf = 136315394;
      v28 = "[SASSystemState callObserver:callChanged:]";
      v29 = 2112;
      v30 = uUID3;
      _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s CXCallObserver Changed:%@", buf, 0x16u);
    }

    v15 = self->_activeCalls;
    uUID2 = [changedCopy UUID];
    [(NSMutableSet *)v15 addObject:uUID2];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  listeners = [(SASSystemState *)self listeners];
  v17 = [listeners countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(listeners);
        }

        v21 = *(*(&v22 + 1) + 8 * v20);
        if (objc_opt_respondsToSelector())
        {
          [v21 callStateChangedToIsActive:-[SASSystemState isInActiveCall](self isOutgoing:{"isInActiveCall"), objc_msgSend(changedCopy, "isOutgoing")}];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [listeners countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  if ([(NSMutableSet *)self->_activeCalls count]== 1)
  {
    [(SASCallRouteObserver *)self->_callRouteObserver startObserving];
  }

  else if (![(NSMutableSet *)self->_activeCalls count])
  {
    [(SASCallRouteObserver *)self->_callRouteObserver stopObserving];
  }
}

- (BOOL)hasRingingCall
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  calls = [(CXCallObserver *)self->_callObserver calls];
  v3 = [calls countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(calls);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if (([v6 hasConnected] & 1) == 0 && !objc_msgSend(v6, "hasEnded"))
        {
          LODWORD(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [calls countByEnumeratingWithState:&v10 objects:v18 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v3)
    {
      v8 = @"YES";
    }

    *buf = 136315394;
    v15 = "[SASSystemState hasRingingCall]";
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s CXCallObserver hasRingingCall:%@", buf, 0x16u);
  }

  return v3;
}

- (BOOL)isCallAudioRouteAllowed
{
  v10 = *MEMORY[0x1E69E9840];
  isCallAudioRouteAllowed = [(SASCallRouteObserver *)self->_callRouteObserver isCallAudioRouteAllowed];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (isCallAudioRouteAllowed)
    {
      v4 = @"YES";
    }

    v6 = 136315394;
    v7 = "[SASSystemState isCallAudioRouteAllowed]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v6, 0x16u);
  }

  return isCallAudioRouteAllowed;
}

- (BOOL)isWirelessSplitterOn
{
  v9 = *MEMORY[0x1E69E9840];
  state = [(AFNotifyObserver *)self->_observerWirelessSplitter state];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SASSystemState isWirelessSplitterOn]";
    v7 = 1024;
    v8 = state != 0;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s %i", &v5, 0x12u);
  }

  return state != 0;
}

- (BOOL)isGuestConnected
{
  v9 = *MEMORY[0x1E69E9840];
  state = [(AFNotifyObserver *)self->_observerBluetoothGuestConnected state];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SASSystemState isGuestConnected]";
    v7 = 1024;
    v8 = state != 0;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s %i", &v5, 0x12u);
  }

  return state != 0;
}

- (void)registerForGameMonitoring
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69E96A0];
  v4 = MEMORY[0x1E69E96A0];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __43__SASSystemState_registerForGameMonitoring__block_invoke;
  handler[3] = &unk_1E82F4618;
  objc_copyWeak(&v6, &location);
  handler[4] = self;
  notify_register_dispatch("com.apple.system.console_mode_model_manager_assertion_changed", &self->_gameMonitorNotifyToken, v3, handler);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __43__SASSystemState_registerForGameMonitoring__block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    state64 = 0;
    if (!notify_get_state(a2, &state64))
    {
      v5 = [WeakRetained gameState];
      if (state64 <= 2)
      {
        [WeakRetained setGameState:?];
      }

      v6 = [WeakRetained gameState];
      if (v6 != v5)
      {
        v7 = v6;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v8 = [*(a1 + 32) listeners];
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v14 + 1) + 8 * v12);
              if (objc_opt_respondsToSelector())
              {
                [v13 gameStateDidChange:v7];
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
          }

          while (v10);
        }
      }
    }
  }
}

- (BOOL)carDNDActiveOrEyesFreeAndShouldHaveFullScreenPresentation:(BOOL)presentation
{
  if ([(SASSystemState *)self isConnectedToEyesFreeDevice]|| presentation || [(SASSystemState *)self carDNDActive]|| (v5 = [(SASSystemState *)self _internalAlwaysEyesFreeEnabled]))
  {
    if ([(SASSystemState *)self _deviceIsUnlocked])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      LOBYTE(v5) = ![(SASSystemState *)self _mapsAppIsVisibleOnLockscreen];
    }
  }

  return v5;
}

- (BOOL)_mapsAppIsVisibleOnLockscreen
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  displayLayoutMonitor = [(SASSystemState *)self displayLayoutMonitor];
  currentLayout = [displayLayoutMonitor currentLayout];
  elements = [currentLayout elements];

  v5 = [elements countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(elements);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          identifier = [v9 identifier];
          v11 = [identifier isEqualToString:@"com.apple.Maps"];

          if (v11)
          {
            if ([v9 layoutRole] == 6)
            {
              v12 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v6 = [elements countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (void)monitorCarSessions
{
  if ([MEMORY[0x1E6993950] isAutomaticDNDAvailable])
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:self selector:sel__pairedVehiclesDidChange_ name:*MEMORY[0x1E6993948] object:0];

    [(SASSystemState *)self setCurrentCarPlaySupportedOEMAppIdList:0];
    v4 = objc_alloc_init(MEMORY[0x1E6993968]);
    [(SASSystemState *)self setCarPlaySessionStatus:v4];

    carPlaySessionStatus = [(SASSystemState *)self carPlaySessionStatus];
    [carPlaySessionStatus addSessionObserver:self];

    v6 = objc_alloc_init(MEMORY[0x1E6993950]);
    [(SASSystemState *)self setCarAutomaticDNDStatus:v6];

    carAutomaticDNDStatus = [(SASSystemState *)self carAutomaticDNDStatus];
    [carAutomaticDNDStatus fetchAutomaticDNDAssertionWithReply:0];

    v8 = objc_alloc_init(MEMORY[0x1E6993978]);
    [(SASSystemState *)self setCarFeatureAvailability:v8];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__voiceTriggerModeChanged_ name:*MEMORY[0x1E6993940] object:0];
  }
}

- (void)_setCarPlayConnectionState:(int)state
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_carPlayConnectionState == state)
  {
    return;
  }

  v3 = *&state;
  self->_carPlayConnectionState = state;
  if (state == 2)
  {
    v5 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[SASSystemState _setCarPlayConnectionState:]";
      v6 = "%s Paired to a trusted CarPlay device.";
      goto LABEL_11;
    }
  }

  else
  {
    if (state != 1)
    {
      if (state)
      {
        goto LABEL_12;
      }

      v5 = *MEMORY[0x1E698D0A0];
      if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 136315138;
      v19 = "[SASSystemState _setCarPlayConnectionState:]";
      v6 = "%s Disconnected from CarPlay display.";
      goto LABEL_11;
    }

    v5 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[SASSystemState _setCarPlayConnectionState:]";
      v6 = "%s Paired to an untrusted CarPlay device.";
LABEL_11:
      _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }

LABEL_12:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  listeners = [(SASSystemState *)self listeners];
  v8 = [listeners countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(listeners);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v12 carPlayConnectionStateDidChange:v3];
        }
      }

      v9 = [listeners countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_updateCarPlayConnectionState
{
  carPlaySessionStatus = [(SASSystemState *)self carPlaySessionStatus];
  currentSession = [carPlaySessionStatus currentSession];
  mFiCertificateSerialNumber = [currentSession MFiCertificateSerialNumber];

  if (mFiCertificateSerialNumber)
  {
    v6[5] = MEMORY[0x1E69E9820];
    v6[6] = 3221225472;
    v6[7] = __47__SASSystemState__updateCarPlayConnectionState__block_invoke;
    v6[8] = &unk_1E82F4668;
    v6[9] = self;
    CRIsPairedWithCertificateSerialNumber();
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__SASSystemState__updateCarPlayConnectionState__block_invoke_3;
    v6[3] = &unk_1E82F3A08;
    v6[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __47__SASSystemState__updateCarPlayConnectionState__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__SASSystemState__updateCarPlayConnectionState__block_invoke_2;
  v2[3] = &unk_1E82F4640;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __47__SASSystemState__updateCarPlayConnectionState__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return [v2 _setCarPlayConnectionState:v3];
}

- (void)_fetchVehicleInformation
{
  currentSession = [(CARSessionStatus *)self->_carPlaySessionStatus currentSession];
  configuration = [currentSession configuration];

  vehicleName = [configuration vehicleName];
  vehicleName = self->_vehicleName;
  self->_vehicleName = vehicleName;

  vehicleModelName = [configuration vehicleModelName];
  vehicleModel = self->_vehicleModel;
  self->_vehicleModel = vehicleModelName;

  vehicleManufacturer = [configuration vehicleManufacturer];
  vehicleManufacturer = self->_vehicleManufacturer;
  self->_vehicleManufacturer = vehicleManufacturer;

  self->_rightHandDrive = [configuration rightHandDrive];
  supportsSiriZLL = [configuration supportsSiriZLL];
  if ([configuration supportsSiriZLLButton])
  {
    supportsSiriZLL |= 2uLL;
  }

  if ([configuration supportsSiriMixable])
  {
    v12 = supportsSiriZLL | 4;
  }

  else
  {
    v12 = supportsSiriZLL;
  }

  if ([configuration supportsVehicleData])
  {
    self->_supportsCarPlayVehicleData = 1;
    currentSession2 = [(CARSessionStatus *)self->_carPlaySessionStatus currentSession];
    self->_carOwnsMainAudio = [currentSession2 carOwnsMainAudio];
  }

  self->_carPlayEnhancedSiriCharacteristics = v12;
  self->_carPlayTransportType = [(SASSystemState *)self _carPlayTransportTypeFromConfiguration:configuration];
  [(SASSystemState *)self _updateEnhancedVoiceTriggerMode];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = &unk_1C81A3BAB;
  v20 = *MEMORY[0x1E695F060];
  screens = [configuration screens];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__SASSystemState__fetchVehicleInformation__block_invoke;
  v15[3] = &unk_1E82F4690;
  v15[4] = &v16;
  [screens enumerateObjectsUsingBlock:v15];

  self->_carPlayPrimaryScreenPhysicalSize = v17[2];
  _Block_object_dispose(&v16, 8);
}

void __42__SASSystemState__fetchVehicleInformation__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if (![v9 screenType])
  {
    [v9 physicalSize];
    v6 = *(*(a1 + 32) + 8);
    *(v6 + 32) = v7;
    *(v6 + 40) = v8;
    *a4 = 1;
  }
}

- (void)_updateEnhancedVoiceTriggerMode
{
  v14 = *MEMORY[0x1E69E9840];
  currentSession = [(CARSessionStatus *)self->_carPlaySessionStatus currentSession];
  deviceSupportedCarPlayFeatures = [(CRFeatureAvailability *)self->_carFeatureAvailability deviceSupportedCarPlayFeatures];
  if (!currentSession)
  {
    v5 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[SASSystemState _updateEnhancedVoiceTriggerMode]";
      v6 = "%s #CarPlay CARSession is currently nil, setting mode to be not applicable.";
      goto LABEL_7;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if ((deviceSupportedCarPlayFeatures & 2) == 0)
  {
    v5 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[SASSystemState _updateEnhancedVoiceTriggerMode]";
      v6 = "%s #CarPlay Enhanced Siri is not supported, setting mode to be not applicable.";
LABEL_7:
      _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_INFO, v6, &v12, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  voiceTriggerMode = [currentSession voiceTriggerMode];
  switch(voiceTriggerMode)
  {
    case 2:
      v11 = *MEMORY[0x1E698D0A0];
      v7 = 1;
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "[SASSystemState _updateEnhancedVoiceTriggerMode]";
        v7 = 1;
        _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_INFO, "%s #CarPlay Enhanced Siri voice trigger mode is activity detection", &v12, 0xCu);
      }

      break;
    case 1:
      v10 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "[SASSystemState _updateEnhancedVoiceTriggerMode]";
        _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_INFO, "%s #CarPlay Enhanced Siri voice trigger mode is trigger detection", &v12, 0xCu);
      }

      v7 = 2;
      break;
    case -1:
      v9 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "[SASSystemState _updateEnhancedVoiceTriggerMode]";
        _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_INFO, "%s #CarPlay Enhanced Siri voice trigger mode is disabled", &v12, 0xCu);
      }

      v7 = 3;
      break;
    default:
      goto LABEL_10;
  }

LABEL_9:
  self->_carPlayEnhancedVoiceTriggerMode = v7;
LABEL_10:
}

- (int64_t)_carPlayTransportTypeFromConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy supportsVehicleData])
  {
    v4 = 3;
  }

  else
  {
    transportType = [configurationCopy transportType];
    if (transportType > 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = qword_1C818FB18[transportType];
    }
  }

  return v4;
}

- (void)_fetchOEMAppContext
{
  currentSession = [(CARSessionStatus *)self->_carPlaySessionStatus currentSession];

  if (currentSession)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6993970]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__SASSystemState__fetchOEMAppContext__block_invoke;
    v6[3] = &unk_1E82F46B8;
    v6[4] = self;
    [v4 fetchApplicationBundleIdentifiersForCarIntents:v6];
  }

  else
  {
    currentCarPlaySupportedOEMAppIdList = self->_currentCarPlaySupportedOEMAppIdList;
    self->_currentCarPlaySupportedOEMAppIdList = MEMORY[0x1E695E0F0];
  }
}

void __37__SASSystemState__fetchOEMAppContext__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E698D0A0];
  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = [v5 allObjects];
    [v8 setCurrentCarPlaySupportedOEMAppIdList:v9];
  }

  else
  {
    v10 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      __37__SASSystemState__fetchOEMAppContext__block_invoke_cold_1(v6, v10);
    }
  }

  v11 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    v13 = v11;
    v14 = [v12 currentCarPlaySupportedOEMAppIdList];
    v15 = 136315394;
    v16 = "[SASSystemState _fetchOEMAppContext]_block_invoke";
    v17 = 2112;
    v18 = v14;
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_INFO, "%s #CarPlay supported OEM apps: %@", &v15, 0x16u);
  }
}

- (BOOL)carPlaySupportsEnhancedSiriCharacteristic:(unint64_t)characteristic
{
  carPlayEnhancedSiriCharacteristics = [(SASSystemState *)self carPlayEnhancedSiriCharacteristics];

  return SASCarPlayEnhancedSiriCharacteristicsContainsCharacteristic(carPlayEnhancedSiriCharacteristics, characteristic);
}

- (void)sessionDidConnect:(id)connect
{
  [(SASSystemState *)self _updateCarPlayConnectionState];
  [(SASSystemState *)self _fetchVehicleInformation];

  [(SASSystemState *)self _fetchOEMAppContext];
}

- (void)_voiceTriggerModeChanged:(id)changed
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SASSystemState _voiceTriggerModeChanged:]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_INFO, "%s #CarPlay Enhanced Siri voice trigger mode changed", &v5, 0xCu);
  }

  [(SASSystemState *)self _updateEnhancedVoiceTriggerMode];
}

- (void)sessionDidDisconnect:(id)disconnect
{
  [(SASSystemState *)self _updateCarPlayConnectionState];
  [(SASSystemState *)self _fetchVehicleInformation];

  [(SASSystemState *)self _fetchOEMAppContext];
}

- (void)_updateAccessibilityState
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _AXSTripleClickCopyOptions();
  -[SASSystemState setAccessibilityShortcutEnabled:](self, "setAccessibilityShortcutEnabled:", [v3 count] != 0);

  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (self->_accessibilityShortcutEnabled)
    {
      v5 = @"YES";
    }

    v6 = 136315394;
    v7 = "[SASSystemState _updateAccessibilityState]";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s Enabled:%@", &v6, 0x16u);
  }
}

- (BOOL)isConnectedToBluetoothVehicle
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
  connectedDevices = [mEMORY[0x1E698F468] connectedDevices];

  v4 = [connectedDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(connectedDevices);
        }

        if ([*(*(&v8 + 1) + 8 * i) ac_isBluetoothVehicle])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [connectedDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)siriInCallEnabled
{
  v2 = AFSupportsSiriInCall();
  if (v2)
  {
    mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
    siriInCallEnabled = [mEMORY[0x1E698D1C0] siriInCallEnabled];

    LOBYTE(v2) = siriInCallEnabled;
  }

  return v2;
}

- (BOOL)callHangUpEnabled
{
  if ((AFSupportsSiriInCall() & 1) != 0 || !AFSupportsCallHangUp())
  {
    return 0;
  }

  mEMORY[0x1E69E1478] = [MEMORY[0x1E69E1478] sharedPreferences];
  canUseVoiceTriggerDuringPhoneCall = [mEMORY[0x1E69E1478] canUseVoiceTriggerDuringPhoneCall];

  return canUseVoiceTriggerDuringPhoneCall;
}

- (void)shouldBeginRestrictingForAssessmentModeWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__SASSystemState_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke;
  block[3] = &unk_1E82F3D30;
  objc_copyWeak(&v8, &location);
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __72__SASSystemState_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setDidAssessmentModeRecieveInitialStateUpdate:1];
    [v3 setIsAssessmentModeActive:1];
    v4 = dispatch_group_create();
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 1;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [v3 listeners];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            dispatch_group_enter(v4);
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = 3221225472;
            v14[2] = __72__SASSystemState_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke_2;
            v14[3] = &unk_1E82F46E0;
            v16 = v21;
            v15 = v4;
            [v9 assessmentModeChangedToIsActive:1 completion:v14];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v6);
    }

    v10 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__SASSystemState_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke_3;
    block[3] = &unk_1E82F4708;
    v13 = v21;
    v12 = *(a1 + 32);
    dispatch_group_notify(v4, v10, block);

    _Block_object_dispose(v21, 8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __72__SASSystemState_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24) == 1)
  {
    *(v2 + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __72__SASSystemState_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke_3(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 32);

    v2(v3, 0);
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E698D280];
    v9 = *MEMORY[0x1E696A278];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to deactivate assistant"];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = [v4 errorWithDomain:v5 code:0 userInfo:v7];
    (*(v1 + 16))(v1, v8);
  }
}

- (void)shouldEndRestrictingForAssessmentModeWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__SASSystemState_shouldEndRestrictingForAssessmentModeWithCompletion___block_invoke;
  block[3] = &unk_1E82F3D30;
  objc_copyWeak(&v8, &location);
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __70__SASSystemState_shouldEndRestrictingForAssessmentModeWithCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setDidAssessmentModeRecieveInitialStateUpdate:1];
    [v3 setIsAssessmentModeActive:0];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 listeners];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 assessmentModeChangedToIsActive:0 completion:0];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (CGSize)carPlayPrimaryScreenPhysicalSize
{
  width = self->_carPlayPrimaryScreenPhysicalSize.width;
  height = self->_carPlayPrimaryScreenPhysicalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

void __37__SASSystemState__fetchOEMAppContext__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[SASSystemState _fetchOEMAppContext]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1C8137000, a2, OS_LOG_TYPE_ERROR, "%s #CarPlay failed to lookup car intent extensions: %@", &v2, 0x16u);
}

@end