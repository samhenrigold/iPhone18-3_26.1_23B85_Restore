@interface SBSOSClawGestureObserver
- (BOOL)_isAutomaticCallCountdownEnabled;
- (BOOL)_isClawGestureActive;
- (BOOL)isClawActivated;
- (SBSOSClawGestureObserver)init;
- (SBSOSClawGestureObserverDelegate)delegate;
- (id)_currentSOSButtonPressState;
- (id)_initWithSOSManager:(id)manager workspace:(id)workspace;
- (void)_cancelSOSActivity;
- (void)_presentSOSInterface;
- (void)_updateActivePressesForPressType:(int64_t)type down:(BOOL)down timestamp:(double)timestamp;
- (void)dealloc;
- (void)noteButtonPress:(int64_t)press isDown:(BOOL)down;
- (void)noteGestureReset;
- (void)setSOSEnabled:(BOOL)enabled;
- (void)setSosTriggerTimer:(id)timer;
@end

@implementation SBSOSClawGestureObserver

- (SBSOSClawGestureObserver)init
{
  mEMORY[0x277D495A0] = [MEMORY[0x277D495A0] sharedInstance];
  v4 = +[SBMainWorkspace sharedInstance];
  v5 = [(SBSOSClawGestureObserver *)self _initWithSOSManager:mEMORY[0x277D495A0] workspace:v4];

  return v5;
}

- (id)_initWithSOSManager:(id)manager workspace:(id)workspace
{
  managerCopy = manager;
  workspaceCopy = workspace;
  v21.receiver = self;
  v21.super_class = SBSOSClawGestureObserver;
  v9 = [(SBSOSClawGestureObserver *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sosManager, manager);
    objc_storeStrong(&v10->_workspace, workspace);
    v11 = +[SBDefaults localDefaults];
    sosDefaults = [v11 sosDefaults];
    sosDefaults = v10->_sosDefaults;
    v10->_sosDefaults = sosDefaults;

    v14 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBSOSClawGestureObserver.sosTriggerTimer"];
    sosTriggerTimer = v10->_sosTriggerTimer;
    v10->_sosTriggerTimer = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activePressTypes = v10->_activePressTypes;
    v10->_activePressTypes = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activePressTypeToDownTimestamp = v10->_activePressTypeToDownTimestamp;
    v10->_activePressTypeToDownTimestamp = v18;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_sosEnabled)
  {
    [(SOSManager *)self->_sosManager removeObserver:self];
  }

  [(BSAbsoluteMachTimer *)self->_sosTriggerTimer invalidate];
  v3.receiver = self;
  v3.super_class = SBSOSClawGestureObserver;
  [(SBSOSClawGestureObserver *)&v3 dealloc];
}

- (void)noteButtonPress:(int64_t)press isDown:(BOOL)down
{
  v57 = *MEMORY[0x277D85DE8];
  if ((press - 102) >= 3)
  {
    activePressTypes = SBLogButtonsCombo(self);
    if (os_log_type_enabled(activePressTypes, OS_LOG_TYPE_ERROR))
    {
      [SBSOSClawGestureObserver noteButtonPress:press isDown:activePressTypes];
    }
  }

  else
  {
    downCopy = down;
    _isClawGestureActive = [(SBSOSClawGestureObserver *)self _isClawGestureActive];
    activePressTypes = [(SBSOSClawGestureObserver *)self activePressTypes];
    BSContinuousMachTimeNow();
    [(SBSOSClawGestureObserver *)self _updateActivePressesForPressType:press down:downCopy timestamp:?];
    allObjects = [activePressTypes allObjects];
    v10 = [allObjects bs_map:&__block_literal_global_58];
    v11 = [v10 componentsJoinedByString:{@", "}];

    _isClawGestureActive2 = [(SBSOSClawGestureObserver *)self _isClawGestureActive];
    v13 = _isClawGestureActive2;
    v14 = SBLogButtonsCombo(_isClawGestureActive2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = off_2783AF7A8[press - 102];
      *buf = 138544386;
      v49 = v16;
      v50 = 2114;
      *v51 = v17;
      *&v51[8] = 1024;
      v52 = v13;
      v53 = 1024;
      v54 = downCopy;
      v55 = 2114;
      v56 = v11;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - button press noted: %{public}@ down: %{BOOL}u active(%{BOOL}u): [%{public}@]", buf, 0x2Cu);
    }

    isSOSEnabled = [(SBSOSClawGestureObserver *)self isSOSEnabled];
    if (isSOSEnabled)
    {
      delegate = [(SBSOSClawGestureObserver *)self delegate];
      v20 = delegate;
      if (v13 & 1 | !_isClawGestureActive)
      {
        if (!_isClawGestureActive && (v13 & 1) != 0)
        {
          v21 = SBLogButtonsCombo(delegate);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            v24 = off_2783AF7A8[press - 102];
            *buf = 138543618;
            v49 = v23;
            v50 = 2114;
            *v51 = v24;
            _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Claw activated with press %{public}@", buf, 0x16u);
          }

          if ([(SBSOSClawGestureObserver *)self _isSOSActivated])
          {
            _isAutomaticCallCountdownEnabled = [(SBSOSClawGestureObserver *)self _isAutomaticCallCountdownEnabled];
            if (_isAutomaticCallCountdownEnabled && (_isAutomaticCallCountdownEnabled = [(SBSOSClawGestureObserver *)self _wasSOSTriggeredByClaw], _isAutomaticCallCountdownEnabled))
            {
              v26 = SBLogButtonsCombo(_isAutomaticCallCountdownEnabled);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = objc_opt_class();
                v28 = NSStringFromClass(v27);
                *buf = 138543362;
                v49 = v28;
                _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting SOS current interactive state to Starting due to claw activation", buf, 0xCu);
              }

              sosManager = self->_sosManager;
              _currentSOSButtonPressState = [(SBSOSClawGestureObserver *)self _currentSOSButtonPressState];
              [(SOSManager *)sosManager setCurrentSOSButtonPressState:_currentSOSButtonPressState];

              [(SOSManager *)self->_sosManager setCurrentSOSInteractiveState:1];
              [v20 sosClawAutoCallInteractiveStateChanged:self interacting:1];
            }

            else
            {
              v39 = SBLogButtonsCombo(_isAutomaticCallCountdownEnabled);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v40 = objc_opt_class();
                v41 = NSStringFromClass(v40);
                _isAutomaticCallCountdownEnabled2 = [(SBSOSClawGestureObserver *)self _isAutomaticCallCountdownEnabled];
                _wasSOSTriggeredByClaw = [(SBSOSClawGestureObserver *)self _wasSOSTriggeredByClaw];
                *buf = 138543874;
                v49 = v41;
                v50 = 1024;
                *v51 = _isAutomaticCallCountdownEnabled2;
                *&v51[4] = 1024;
                *&v51[6] = _wasSOSTriggeredByClaw;
                _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ - Claw has been activated, but claw for automatic call down requires automatic call down enabled: %{BOOL}u and SOS was triggered by claw: %{BOOL}u", buf, 0x18u);
              }
            }
          }

          else if (![(BSAbsoluteMachTimer *)self->_sosTriggerTimer isScheduled])
          {
            objc_initWeak(buf, self);
            sosTriggerTimer = self->_sosTriggerTimer;
            v38 = MEMORY[0x277D85CD0];
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v46[2] = __51__SBSOSClawGestureObserver_noteButtonPress_isDown___block_invoke_27;
            v46[3] = &unk_2783A9918;
            objc_copyWeak(&v47, buf);
            [(BSAbsoluteMachTimer *)sosTriggerTimer scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v46 queue:1.1 handler:0.0];

            objc_destroyWeak(&v47);
            objc_destroyWeak(buf);
          }

          volumeHardwareButton = [SBApp volumeHardwareButton];
          [volumeHardwareButton addVolumePressBandit:self];

          v45 = +[SBUIController sharedInstanceIfExists];
          [v45 cancelVolumeEvent];

          [v20 sosClawDidBecomeActive:self];
        }
      }

      else
      {
        v33 = SBLogButtonsCombo(delegate);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = off_2783AF7A8[press - 102];
          *buf = 138543618;
          v49 = v35;
          v50 = 2114;
          *v51 = v36;
          _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ - Claw deactivated with press %{public}@", buf, 0x16u);
        }

        [(SBSOSClawGestureObserver *)self _cancelSOSActivity];
      }
    }

    else
    {
      v20 = SBLogButtonsCombo(isSOSEnabled);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138543362;
        v49 = v32;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - SOS is disabled so nothing left to do", buf, 0xCu);
      }
    }
  }
}

__CFString *__51__SBSOSClawGestureObserver_noteButtonPress_isDown___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if ((v2 - 102) > 2)
  {
    return @"<notSupported>";
  }

  else
  {
    return off_2783AF7A8[v2 - 102];
  }
}

void __51__SBSOSClawGestureObserver_noteButtonPress_isDown___block_invoke_27(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained isSOSEnabled])
  {
    [v4 _presentSOSInterface];
  }

  [v5 cancel];
}

- (void)noteGestureReset
{
  [(NSMutableSet *)self->_activePressTypes removeAllObjects];
  if ([(SBSOSClawGestureObserver *)self isSOSEnabled])
  {

    [(SBSOSClawGestureObserver *)self _cancelSOSActivity];
  }
}

- (void)setSOSEnabled:(BOOL)enabled
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_sosEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_sosEnabled = enabled;
    v5 = SBLogButtonsCombo([(NSMutableSet *)self->_activePressTypes removeAllObjects]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543618;
      v10 = v7;
      v11 = 1024;
      v12 = enabledCopy;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Set SOS Claw Gesture Enabled: %{BOOL}u", &v9, 0x12u);
    }

    if (enabledCopy)
    {
      v8 = +[SBSOSEventHandler sharedInstance];
      [v8 run];

      [(SOSManager *)self->_sosManager addObserver:self queue:MEMORY[0x277D85CD0]];
    }

    else
    {
      [(SOSManager *)self->_sosManager removeObserver:self];
    }
  }
}

- (BOOL)isClawActivated
{
  isSOSEnabled = [(SBSOSClawGestureObserver *)self isSOSEnabled];
  if (isSOSEnabled)
  {

    LOBYTE(isSOSEnabled) = [(SBSOSClawGestureObserver *)self _isClawGestureActive];
  }

  return isSOSEnabled;
}

- (void)setSosTriggerTimer:(id)timer
{
  timerCopy = timer;
  sosTriggerTimer = self->_sosTriggerTimer;
  p_sosTriggerTimer = &self->_sosTriggerTimer;
  v6 = sosTriggerTimer;
  if (sosTriggerTimer != timerCopy)
  {
    v9 = timerCopy;
    [(BSAbsoluteMachTimer *)v6 invalidate];
    objc_storeStrong(p_sosTriggerTimer, timer);
    timerCopy = v9;
  }
}

- (id)_currentSOSButtonPressState
{
  v3 = objc_alloc(MEMORY[0x277D49598]);
  v4 = objc_msgSend_containsObject_(self->_activePressTypes);
  v5 = [(NSMutableDictionary *)self->_activePressTypeToDownTimestamp objectForKeyedSubscript:&unk_283370490];
  [v5 doubleValue];
  v7 = v6;
  v8 = objc_msgSend_containsObject_(self->_activePressTypes);
  v9 = [(NSMutableDictionary *)self->_activePressTypeToDownTimestamp objectForKeyedSubscript:&unk_2833704A8];
  [v9 doubleValue];
  v11 = v10;
  v12 = [(NSMutableDictionary *)self->_activePressTypeToDownTimestamp objectForKeyedSubscript:&unk_2833704C0];
  [v12 doubleValue];
  v14 = [v3 initWithVolumeUpPressed:v4 Timestamp:v8 VolumeDownPressed:v7 Timestamp:v11 LockPressedTimestamp:v13];

  return v14;
}

- (void)_updateActivePressesForPressType:(int64_t)type down:(BOOL)down timestamp:(double)timestamp
{
  downCopy = down;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  activePressTypes = self->_activePressTypes;
  if (downCopy)
  {
    [(NSMutableSet *)activePressTypes addObject:v11];
    activePressTypeToDownTimestamp = self->_activePressTypeToDownTimestamp;
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:timestamp];
    [(NSMutableDictionary *)activePressTypeToDownTimestamp setObject:v10 forKey:v11];
  }

  else
  {
    [(NSMutableSet *)activePressTypes removeObject:v11];
    [(NSMutableDictionary *)self->_activePressTypeToDownTimestamp removeObjectForKey:v11];
  }
}

- (BOOL)_isClawGestureActive
{
  activePressTypes = [(SBSOSClawGestureObserver *)self activePressTypes];
  if (objc_msgSend_containsObject_(activePressTypes))
  {
    v3 = [activePressTypes count] > 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_cancelSOSActivity
{
  v12 = *MEMORY[0x277D85DE8];
  delegate = [(SBSOSClawGestureObserver *)self delegate];
  sosTriggerTimer = [(SBSOSClawGestureObserver *)self sosTriggerTimer];
  if ([sosTriggerTimer isScheduled])
  {
    [sosTriggerTimer cancel];
  }

  currentSOSInteractiveState = [(SOSManager *)self->_sosManager currentSOSInteractiveState];
  if (currentSOSInteractiveState)
  {
    v6 = SBLogButtonsCombo(currentSOSInteractiveState);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting SOS current interactive state to Stopping due to claw release.", &v10, 0xCu);
    }

    [(SOSManager *)self->_sosManager setCurrentSOSInteractiveState:0];
    [delegate sosClawAutoCallInteractiveStateChanged:self interacting:0];
  }

  volumeHardwareButton = [SBApp volumeHardwareButton];
  [volumeHardwareButton removeVolumePressBandit:self];

  [delegate sosClawDidBecomeInactive:self];
}

- (void)_presentSOSInterface
{
  hUDController = [SBApp HUDController];
  [hUDController dismissHUDs:1];

  ringerControl = [SBApp ringerControl];
  [(SBRingerControl *)ringerControl dismissRingerHUD];

  delegate = [(SBSOSClawGestureObserver *)self delegate];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SBSOSClawGestureObserver__presentSOSInterface__block_invoke;
  v6[3] = &unk_2783A9398;
  v6[4] = self;
  [delegate sosClawDidTriggerSOS:self completion:v6];
}

void __48__SBSOSClawGestureObserver__presentSOSInterface__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    BSDispatchMain();
  }

  else
  {
    v3 = SBLogButtonsCombo(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __48__SBSOSClawGestureObserver__presentSOSInterface__block_invoke_cold_1(a1, v3);
    }
  }
}

void *__48__SBSOSClawGestureObserver__presentSOSInterface__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _setWasSOSTriggeredByClaw:1];
  result = [*(a1 + 32) isClawActivated];
  if (result)
  {
    result = [*(a1 + 32) _isAutomaticCallCountdownEnabled];
    if (result)
    {
      v3 = SBLogButtonsCombo(result);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        v9 = 138543362;
        v10 = v5;
        _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting SOS current interactive state to Starting upon SOS presentation.", &v9, 0xCu);
      }

      v6 = *(a1 + 32);
      v7 = v6[1];
      v8 = [v6 _currentSOSButtonPressState];
      [v7 setCurrentSOSButtonPressState:v8];

      return [*(*(a1 + 32) + 8) setCurrentSOSInteractiveState:1];
    }
  }

  return result;
}

- (BOOL)_isAutomaticCallCountdownEnabled
{
  sosDefaults = [(SBSOSClawGestureObserver *)self sosDefaults];
  isAutomaticCallCountdownEnabled = [sosDefaults isAutomaticCallCountdownEnabled];

  return isAutomaticCallCountdownEnabled;
}

void __63__SBSOSClawGestureObserver_didUpdateCurrentSOSInitiationState___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SBLogButtonsCombo(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [*(a1 + 32) _isSOSActivated];
    v6 = 138543618;
    v7 = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - SOS UI initiation state changed. SOS activated: %{BOOL}u", &v6, 0x12u);
  }

  if (!*(a1 + 40))
  {
    [*(a1 + 32) _setWasSOSTriggeredByClaw:0];
  }
}

- (SBSOSClawGestureObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)noteButtonPress:(int)a1 isDown:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "must be a volume or lock button press, not %d", v2, 8u);
}

void __48__SBSOSClawGestureObserver__presentSOSInterface__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "%{public}@ - Claw triggered SOS, but SOS responded without success.", &v5, 0xCu);
}

@end