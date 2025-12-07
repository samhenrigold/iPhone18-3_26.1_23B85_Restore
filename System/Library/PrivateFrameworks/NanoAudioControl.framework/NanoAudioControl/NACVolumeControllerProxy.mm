@interface NACVolumeControllerProxy
- (NACVolumeControllerDelegate)delegate;
- (NACVolumeControllerProxy)initWithVolumeControlTarget:(id)target;
- (id)_scheduleTimeoutWithBlock:(id)block;
- (void)_EUVolumeLimitDidChange;
- (void)_applicationDidBecomeActiveNotification:(id)notification;
- (void)_applicationWillResignActiveNotification:(id)notification;
- (void)_availableListeningModesDidChange;
- (void)_cancelSetHapticStateTimer;
- (void)_cancelSetHapticTimer;
- (void)_cancelSetProminentHapticTimer;
- (void)_cancelSetVolumeTimer;
- (void)_currentListeningModeDidChange;
- (void)_handleFailedToSetCurrentListeningModeNotification:(id)notification;
- (void)_hapticIntensityDidChange;
- (void)_hapticStateDidChange;
- (void)_hapticStateTimeout;
- (void)_hapticTimeout;
- (void)_mutedStateDidChange;
- (void)_notifyDelegateHapticChanged;
- (void)_notifyDelegateHapticStateChanged;
- (void)_notifyDelegateProminentHapticStateChanged;
- (void)_notifyDelegateSystemMutedStateChanged;
- (void)_notifyDelegateVolumeChanged;
- (void)_prominentHapticStateDidChange;
- (void)_prominentHapticTimeout;
- (void)_setHapticIntensity:(id)intensity;
- (void)_setVolumeValue:(id)value;
- (void)_systemMutedStateDidChange;
- (void)_volumeControlAvailabilityDidChange;
- (void)_volumeValueDidChange;
- (void)_volumeWarningDidChange;
- (void)beginObservingListeningModes;
- (void)beginObservingVolume;
- (void)dealloc;
- (void)endObservingListeningModes;
- (void)endObservingVolume;
- (void)setCurrentListeningMode:(id)mode;
- (void)setDelegate:(id)delegate;
- (void)setHapticIntensity:(float)intensity;
- (void)setHapticState:(int64_t)state;
- (void)setProminentHapticEnabled:(BOOL)enabled;
- (void)setVolumeValue:(float)value;
- (void)setVolumeValue:(float)value muted:(BOOL)muted overrideEULimit:(BOOL)limit;
@end

@implementation NACVolumeControllerProxy

- (NACVolumeControllerProxy)initWithVolumeControlTarget:(id)target
{
  targetCopy = target;
  v23.receiver = self;
  v23.super_class = NACVolumeControllerProxy;
  v6 = [(NACVolumeControllerProxy *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_target, target);
    v8 = +[NACXPCClient sharedClient];
    xpcClient = v7->_xpcClient;
    v7->_xpcClient = v8;

    objc_initWeak(&location, v7);
    v10 = objc_opt_new();
    volumeThrottler = v7->_volumeThrottler;
    v7->_volumeThrottler = v10;

    [(NACEventThrottler *)v7->_volumeThrottler setMinimumDelay:0.35];
    v12 = v7->_volumeThrottler;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__NACVolumeControllerProxy_initWithVolumeControlTarget___block_invoke;
    v20[3] = &unk_27992B890;
    objc_copyWeak(&v21, &location);
    [(NACEventThrottler *)v12 setEventBlock:v20];
    v13 = objc_opt_new();
    hapticThrottler = v7->_hapticThrottler;
    v7->_hapticThrottler = v13;

    [(NACEventThrottler *)v7->_hapticThrottler setMinimumDelay:0.5];
    v15 = v7->_hapticThrottler;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __56__NACVolumeControllerProxy_initWithVolumeControlTarget___block_invoke_2;
    v18[3] = &unk_27992B890;
    objc_copyWeak(&v19, &location);
    [(NACEventThrottler *)v15 setEventBlock:v18];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__applicationDidBecomeActiveNotification_ name:*MEMORY[0x277D76648] object:0];
    [defaultCenter addObserver:v7 selector:sel__applicationWillResignActiveNotification_ name:*MEMORY[0x277D76768] object:0];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __56__NACVolumeControllerProxy_initWithVolumeControlTarget___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setVolumeValue:v3];
}

void __56__NACVolumeControllerProxy_initWithVolumeControlTarget___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setHapticIntensity:v3];
}

- (void)dealloc
{
  [(NACVolumeControllerProxy *)self setDelegate:0];
  [(NACVolumeControllerProxy *)self endObservingVolume];
  [(NACVolumeControllerProxy *)self endObservingListeningModes];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = NACVolumeControllerProxy;
  [(NACVolumeControllerProxy *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!obj || WeakRetained)
  {
    if (!obj)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
    }
  }

  else
  {
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, self, _NACVolumeValueDidChangeNotification, @"NACVolumeValueDidChangeNotification", 0, 0);
    CFNotificationCenterAddObserver(v5, self, _NACVolumeControlAvailabilityDidChangeNotification, @"NACVolumeControlAvailabilityDidChangeNotification", 0, 0);
    CFNotificationCenterAddObserver(v5, self, _NACMutedStateDidChangeNotification, @"NACMutedStateDidChangeNotificaton", 0, 0);
    CFNotificationCenterAddObserver(v5, self, _NACHapticIntensityDidChangeNotification, @"NACHapticIntensityDidChangeNotification", 0, 0);
    CFNotificationCenterAddObserver(v5, self, _NACEUVolumeLimitDidChangeNotification, @"NACEULimitDidChangeNotification", 0, 0);
    CFNotificationCenterAddObserver(v5, self, _NACVolumeWarningDidChangeNotification, @"NACVolumeWarningDidChangeNotification", 0, 0);
    CFNotificationCenterAddObserver(v5, self, _NACSystemMutedStateDidChangeNotification, @"NACSystemMutedStateDidChangeNotification", 0, 0);
    CFNotificationCenterAddObserver(v5, self, _NACProminentHapticStateDidChangeNotification, @"NACProminentHapticStateDidChangeNotification", 0, 0);
    CFNotificationCenterAddObserver(v5, self, _NACHapticStateDidChangeNotification, @"NACHapticStateDidChangeNotification", 0, 0);
    CFNotificationCenterAddObserver(v5, self, _NACAvailableListeningModesDidChangeNotification, @"NACAvailableListeningModesDidChangeNotification", 0, 0);
    CFNotificationCenterAddObserver(v5, self, _NACCurrentListeningModeDidChangeNotification, @"NACCurrentListeningModeDidChangeNotification", 0, 0);
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleFailedToSetCurrentListeningModeNotification_ name:@"NACFailedToSetCurrentListeningModeNotification" object:0 suspensionBehavior:4];

    [(NACVolumeControllerProxy *)self _volumeControlAvailabilityDidChange];
    [(NACVolumeControllerProxy *)self _volumeValueDidChange];
    [(NACVolumeControllerProxy *)self _mutedStateDidChange];
    [(NACVolumeControllerProxy *)self _systemMutedStateDidChange];
    [(NACVolumeControllerProxy *)self _hapticStateDidChange];
    [(NACVolumeControllerProxy *)self _volumeWarningDidChange];
    [(NACVolumeControllerProxy *)self _EUVolumeLimitDidChange];
    [(NACVolumeControllerProxy *)self _availableListeningModesDidChange];
    [(NACVolumeControllerProxy *)self _currentListeningModeDidChange];
    [(NACVolumeControllerProxy *)self _prominentHapticStateDidChange];
    [(NACVolumeControllerProxy *)self _hapticIntensityDidChange];
  }

  objc_storeWeak(&self->_delegate, obj);
}

- (void)beginObservingVolume
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_observingVolume)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    applicationState = [mEMORY[0x277D75128] applicationState];

    if (!applicationState)
    {
      v5 = NMLogForCategory(4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        target = self->_target;
        v7 = 138412290;
        v8 = target;
        _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "VolumeControllerProxy begin observing volume for target: %@", &v7, 0xCu);
      }

      [(NACXPCClient *)self->_xpcClient beginObservingVolumeForTarget:self->_target];
    }

    self->_observingVolume = 1;
  }
}

- (void)endObservingVolume
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_observingVolume)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    applicationState = [mEMORY[0x277D75128] applicationState];

    if (!applicationState)
    {
      v5 = NMLogForCategory(4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        target = self->_target;
        v7 = 138412290;
        v8 = target;
        _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "VolumeControllerProxy end observing volume for target: %@", &v7, 0xCu);
      }

      [(NACXPCClient *)self->_xpcClient endObservingVolumeForTarget:self->_target];
    }

    self->_observingVolume = 0;
  }
}

- (void)beginObservingListeningModes
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_observingListeningModes)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    applicationState = [mEMORY[0x277D75128] applicationState];

    if (!applicationState)
    {
      v5 = NMLogForCategory(4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        target = self->_target;
        v7 = 138412290;
        v8 = target;
        _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "VolumeControllerProxy begin observing listening modes for target: %@", &v7, 0xCu);
      }

      [(NACXPCClient *)self->_xpcClient beginObservingListeningModesForTarget:self->_target];
    }

    self->_observingListeningModes = 1;
  }
}

- (void)endObservingListeningModes
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_observingListeningModes)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    applicationState = [mEMORY[0x277D75128] applicationState];

    if (!applicationState)
    {
      v5 = NMLogForCategory(4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        target = self->_target;
        v7 = 138412290;
        v8 = target;
        _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "VolumeControllerProxy end observing listening modes for target: %@", &v7, 0xCu);
      }

      [(NACXPCClient *)self->_xpcClient endObservingListeningModesForTarget:self->_target];
    }

    self->_observingListeningModes = 0;
  }
}

- (void)setVolumeValue:(float)value muted:(BOOL)muted overrideEULimit:(BOOL)limit
{
  mutedCopy = muted;
  [(NACVolumeControllerProxy *)self setVolumeValue:muted, limit];

  [(NACVolumeControllerProxy *)self setMuted:mutedCopy];
}

- (void)setVolumeValue:(float)value
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  volumeValue = self->_volumeValue;
  self->_volumeValue = v4;

  volumeThrottler = self->_volumeThrottler;
  v7 = self->_volumeValue;

  [(NACEventThrottler *)volumeThrottler setValue:v7];
}

- (void)_setVolumeValue:(id)value
{
  v18 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  [valueCopy floatValue];
  v6 = v5;
  v7 = NMLogForCategory(4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    target = self->_target;
    *buf = 134218242;
    v15 = v6;
    v16 = 2112;
    v17 = target;
    _os_log_impl(&dword_25AEBF000, v7, OS_LOG_TYPE_DEFAULT, "Setting volume: %f for target: %@", buf, 0x16u);
  }

  *&v9 = v6;
  [(NACXPCClient *)self->_xpcClient setVolumeValue:self->_target forTarget:v9];
  [(NACVolumeControllerProxy *)self _cancelSetVolumeTimer];
  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__NACVolumeControllerProxy__setVolumeValue___block_invoke;
  v12[3] = &unk_27992B678;
  objc_copyWeak(&v13, buf);
  v10 = [(NACVolumeControllerProxy *)self _scheduleTimeoutWithBlock:v12];
  setVolumeTimer = self->_setVolumeTimer;
  self->_setVolumeTimer = v10;

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __44__NACVolumeControllerProxy__setVolumeValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _volumeTimout];
}

- (void)setHapticIntensity:(float)intensity
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  hapticIntensity = self->_hapticIntensity;
  self->_hapticIntensity = v4;

  hapticThrottler = self->_hapticThrottler;
  v7 = self->_hapticIntensity;

  [(NACEventThrottler *)hapticThrottler setValue:v7];
}

- (void)setProminentHapticEnabled:(BOOL)enabled
{
  self->_prominentHapticEnabled = enabled;
  [(NACXPCClient *)self->_xpcClient setProminentHapticEnabled:?];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__NACVolumeControllerProxy_setProminentHapticEnabled___block_invoke;
  v6[3] = &unk_27992B678;
  objc_copyWeak(&v7, &location);
  v4 = [(NACVolumeControllerProxy *)self _scheduleTimeoutWithBlock:v6];
  setProminentHapticTimer = self->_setProminentHapticTimer;
  self->_setProminentHapticTimer = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __54__NACVolumeControllerProxy_setProminentHapticEnabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _prominentHapticTimeout];
}

- (void)_prominentHapticTimeout
{
  lastReceivedProminentHapticEnabled = self->_lastReceivedProminentHapticEnabled;
  if (self->_prominentHapticEnabled != lastReceivedProminentHapticEnabled)
  {
    self->_prominentHapticEnabled = lastReceivedProminentHapticEnabled;
    [(NACVolumeControllerProxy *)self _notifyDelegateProminentHapticStateChanged];
  }

  [(NACVolumeControllerProxy *)self _cancelSetProminentHapticTimer];
}

- (void)_setHapticIntensity:(id)intensity
{
  intensityCopy = intensity;
  [intensityCopy floatValue];
  [(NACXPCClient *)self->_xpcClient setHapticIntensity:?];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__NACVolumeControllerProxy__setHapticIntensity___block_invoke;
  v7[3] = &unk_27992B678;
  objc_copyWeak(&v8, &location);
  v5 = [(NACVolumeControllerProxy *)self _scheduleTimeoutWithBlock:v7];
  setHapticTimer = self->_setHapticTimer;
  self->_setHapticTimer = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __48__NACVolumeControllerProxy__setHapticIntensity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hapticTimeout];
}

- (void)_hapticTimeout
{
  [(NSNumber *)self->_hapticIntensity floatValue];
  if (v3 != self->_lastRecievedHapticIntensity)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    hapticIntensity = self->_hapticIntensity;
    self->_hapticIntensity = v4;

    [(NACVolumeControllerProxy *)self _notifyDelegateHapticChanged];
  }

  [(NACVolumeControllerProxy *)self _cancelSetHapticTimer];
}

- (void)setHapticState:(int64_t)state
{
  if (self->_hapticState != state)
  {
    self->_hapticState = state;
    [(NACXPCClient *)self->_xpcClient setHapticState:?];
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__NACVolumeControllerProxy_setHapticState___block_invoke;
    v6[3] = &unk_27992B678;
    objc_copyWeak(&v7, &location);
    v4 = [(NACVolumeControllerProxy *)self _scheduleTimeoutWithBlock:v6];
    setHapticStateTimer = self->_setHapticStateTimer;
    self->_setHapticStateTimer = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __43__NACVolumeControllerProxy_setHapticState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hapticStateTimeout];
}

- (void)_hapticStateTimeout
{
  lastReceivedHapticState = self->_lastReceivedHapticState;
  if (self->_hapticState != lastReceivedHapticState)
  {
    self->_hapticState = lastReceivedHapticState;
    [(NACVolumeControllerProxy *)self _notifyDelegateHapticStateChanged];
  }

  [(NACVolumeControllerProxy *)self _cancelSetHapticStateTimer];
}

- (void)setCurrentListeningMode:(id)mode
{
  modeCopy = mode;
  if (self->_currentListeningMode != modeCopy)
  {
    v5 = modeCopy;
    if (([(NSString *)modeCopy isEqual:?]& 1) == 0)
    {
      [(NACXPCClient *)self->_xpcClient setCurrentListeningMode:v5 forTarget:self->_target];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_volumeValueDidChange
{
  xpcClient = self->_xpcClient;
  target = self->_target;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__NACVolumeControllerProxy__volumeValueDidChange__block_invoke;
  v4[3] = &unk_27992BB08;
  v4[4] = self;
  [(NACXPCClient *)xpcClient volumeValueForTarget:target result:v4];
}

void __49__NACVolumeControllerProxy__volumeValueDidChange__block_invoke(uint64_t a1, float a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __49__NACVolumeControllerProxy__volumeValueDidChange__block_invoke_2;
  v2[3] = &unk_27992B5D8;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void *__49__NACVolumeControllerProxy__volumeValueDidChange__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8);
    v12 = 134218242;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_25AEBF000, v2, OS_LOG_TYPE_DEFAULT, "Received volume value update: %f for target: %@", &v12, 0x16u);
  }

  v6 = *(a1 + 32);
  result = *(v6 + 96);
  if (result)
  {
    v8 = *(a1 + 40);
    result = [result floatValue];
    if (vabds_f32(v8, *&v5) < 0.00000011921)
    {
      return result;
    }

    v6 = *(a1 + 32);
  }

  if (!*(v6 + 32))
  {
    LODWORD(v5) = *(a1 + 40);
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    v10 = *(a1 + 32);
    v11 = *(v10 + 96);
    *(v10 + 96) = v9;

    return [*(a1 + 32) _notifyDelegateVolumeChanged];
  }

  return result;
}

- (void)_volumeControlAvailabilityDidChange
{
  xpcClient = self->_xpcClient;
  target = self->_target;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__NACVolumeControllerProxy__volumeControlAvailabilityDidChange__block_invoke;
  v4[3] = &unk_27992BB30;
  v4[4] = self;
  [(NACXPCClient *)xpcClient volumeControlAvailabilityForTarget:target result:v4];
}

void __63__NACVolumeControllerProxy__volumeControlAvailabilityDidChange__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __63__NACVolumeControllerProxy__volumeControlAvailabilityDidChange__block_invoke_2;
  v2[3] = &unk_27992B600;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __63__NACVolumeControllerProxy__volumeControlAvailabilityDidChange__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 129) != v2)
  {
    *(v1 + 129) = v2;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 144));
      [v6 volumeControllerDidUpdateVolumeControlAvailibility:*(a1 + 32)];
    }
  }
}

- (void)_mutedStateDidChange
{
  xpcClient = self->_xpcClient;
  target = self->_target;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__NACVolumeControllerProxy__mutedStateDidChange__block_invoke;
  v4[3] = &unk_27992BB30;
  v4[4] = self;
  [(NACXPCClient *)xpcClient mutedStateForTarget:target result:v4];
}

void __48__NACVolumeControllerProxy__mutedStateDidChange__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__NACVolumeControllerProxy__mutedStateDidChange__block_invoke_2;
  v2[3] = &unk_27992B600;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __48__NACVolumeControllerProxy__mutedStateDidChange__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 131) != v2)
  {
    *(v1 + 131) = v2;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 144));
      [v6 volumeControllerDidUpdateMutedState:*(a1 + 32)];
    }
  }
}

- (void)_hapticIntensityDidChange
{
  xpcClient = self->_xpcClient;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__NACVolumeControllerProxy__hapticIntensityDidChange__block_invoke;
  v3[3] = &unk_27992BB08;
  v3[4] = self;
  [(NACXPCClient *)xpcClient hapticIntensity:v3];
}

void __53__NACVolumeControllerProxy__hapticIntensityDidChange__block_invoke(uint64_t a1, float a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__NACVolumeControllerProxy__hapticIntensityDidChange__block_invoke_2;
  v2[3] = &unk_27992B5D8;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void *__53__NACVolumeControllerProxy__hapticIntensityDidChange__block_invoke_2(uint64_t a1, double a2)
{
  v3 = *(a1 + 40);
  *(*(a1 + 32) + 76) = v3;
  v4 = *(a1 + 32);
  result = *(v4 + 104);
  if (result)
  {
    result = [result floatValue];
    if (vabds_f32(v3, *&a2) < 0.00000011921)
    {
      return result;
    }

    v4 = *(a1 + 32);
  }

  if (!*(v4 + 40))
  {
    LODWORD(a2) = *(a1 + 40);
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
    v7 = *(a1 + 32);
    v8 = *(v7 + 104);
    *(v7 + 104) = v6;

    v9 = *(a1 + 32);

    return [v9 _notifyDelegateHapticChanged];
  }

  return result;
}

- (void)_prominentHapticStateDidChange
{
  xpcClient = self->_xpcClient;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__NACVolumeControllerProxy__prominentHapticStateDidChange__block_invoke;
  v3[3] = &unk_27992BB30;
  v3[4] = self;
  [(NACXPCClient *)xpcClient prominentHapticEnabled:v3];
}

void __58__NACVolumeControllerProxy__prominentHapticStateDidChange__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__NACVolumeControllerProxy__prominentHapticStateDidChange__block_invoke_2;
  v2[3] = &unk_27992B600;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void *__58__NACVolumeControllerProxy__prominentHapticStateDidChange__block_invoke_2(void *result)
{
  v1 = *(result + 40);
  *(*(result + 4) + 80) = v1;
  v2 = *(result + 4);
  if (!*(v2 + 48))
  {
    *(v2 + 133) = v1;
    return [*(result + 4) _notifyDelegateProminentHapticStateChanged];
  }

  return result;
}

- (void)_hapticStateDidChange
{
  xpcClient = self->_xpcClient;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__NACVolumeControllerProxy__hapticStateDidChange__block_invoke;
  v3[3] = &unk_27992BB58;
  v3[4] = self;
  [(NACXPCClient *)xpcClient hapticState:v3];
}

void __49__NACVolumeControllerProxy__hapticStateDidChange__block_invoke(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __49__NACVolumeControllerProxy__hapticStateDidChange__block_invoke_2;
  v2[3] = &unk_27992B628;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void *__49__NACVolumeControllerProxy__hapticStateDidChange__block_invoke_2(void *result)
{
  v1 = *(result + 5);
  *(*(result + 4) + 88) = v1;
  v2 = *(result + 4);
  if (!*(v2 + 56))
  {
    *(v2 + 160) = v1;
    return [*(result + 4) _notifyDelegateHapticStateChanged];
  }

  return result;
}

- (void)_systemMutedStateDidChange
{
  xpcClient = self->_xpcClient;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__NACVolumeControllerProxy__systemMutedStateDidChange__block_invoke;
  v3[3] = &unk_27992BB30;
  v3[4] = self;
  [(NACXPCClient *)xpcClient systemMutedState:v3];
}

void __54__NACVolumeControllerProxy__systemMutedStateDidChange__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__NACVolumeControllerProxy__systemMutedStateDidChange__block_invoke_2;
  v2[3] = &unk_27992B600;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

unsigned __int8 *__54__NACVolumeControllerProxy__systemMutedStateDidChange__block_invoke_2(unsigned __int8 *result)
{
  v1 = result[40];
  v2 = *(result + 4);
  if (v1 != *(v2 + 132))
  {
    *(v2 + 132) = v1;
    return [*(result + 4) _notifyDelegateSystemMutedStateChanged];
  }

  return result;
}

- (void)_EUVolumeLimitDidChange
{
  xpcClient = self->_xpcClient;
  target = self->_target;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__NACVolumeControllerProxy__EUVolumeLimitDidChange__block_invoke;
  v4[3] = &unk_27992BB08;
  v4[4] = self;
  [(NACXPCClient *)xpcClient EULimitForTarget:target result:v4];
}

void __51__NACVolumeControllerProxy__EUVolumeLimitDidChange__block_invoke(uint64_t a1, float a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__NACVolumeControllerProxy__EUVolumeLimitDidChange__block_invoke_2;
  v2[3] = &unk_27992B5D8;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __51__NACVolumeControllerProxy__EUVolumeLimitDidChange__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 136))
  {
    *(v2 + 136) = v1;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 144));
      [v6 volumeControllerDidUpdateEUVolumeLimit:*(a1 + 32)];
    }
  }
}

- (void)_volumeWarningDidChange
{
  xpcClient = self->_xpcClient;
  target = self->_target;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__NACVolumeControllerProxy__volumeWarningDidChange__block_invoke;
  v4[3] = &unk_27992BBA8;
  v4[4] = self;
  [(NACXPCClient *)xpcClient volumeWarningForTarget:target result:v4];
}

void __51__NACVolumeControllerProxy__volumeWarningDidChange__block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NACVolumeControllerProxy__volumeWarningDidChange__block_invoke_2;
  block[3] = &unk_27992BB80;
  v4 = a2;
  block[4] = *(a1 + 32);
  block[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__NACVolumeControllerProxy__volumeWarningDidChange__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 != *(v3 + 130))
  {
    *(v3 + 130) = v2;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
    v5 = objc_opt_respondsToSelector();

    v3 = *(a1 + 32);
    if (v5)
    {
      v6 = objc_loadWeakRetained((v3 + 144));
      [v6 volumeControllerDidUpdateVolumeWarningEnabled:*(a1 + 32)];

      v3 = *(a1 + 32);
    }
  }

  v7 = *(a1 + 40);
  if (v7 != *(v3 + 152))
  {
    *(v3 + 152) = v7;
    v8 = objc_loadWeakRetained((*(a1 + 32) + 144));
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained((*(a1 + 32) + 144));
      [v10 volumeControllerDidUpdateVolumeWarningState:*(a1 + 32)];
    }
  }
}

- (void)_availableListeningModesDidChange
{
  xpcClient = self->_xpcClient;
  target = self->_target;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__NACVolumeControllerProxy__availableListeningModesDidChange__block_invoke;
  v4[3] = &unk_27992BBD0;
  v4[4] = self;
  [(NACXPCClient *)xpcClient availableListeningModesForTarget:target result:v4];
}

void __61__NACVolumeControllerProxy__availableListeningModesDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__NACVolumeControllerProxy__availableListeningModesDidChange__block_invoke_2;
  v6[3] = &unk_27992B510;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __61__NACVolumeControllerProxy__availableListeningModesDidChange__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 40) + 112);
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
  }

  else
  {
    v11 = v3;
    v4 = [v3 isEqual:v2];

    if ((v4 & 1) == 0)
    {
      v5 = NMLogForCategory(4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = *(*(a1 + 40) + 8);
        *buf = 138412546;
        v13 = v6;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[ListeningMode] Received available listening modes update: %@ for target: %@", buf, 0x16u);
      }

      objc_storeStrong((*(a1 + 40) + 112), *(a1 + 32));
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 144));
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = objc_loadWeakRetained((*(a1 + 40) + 144));
        [v10 volumeControllerDidUpdateAvailableListeningModes:*(a1 + 40)];
      }
    }
  }
}

- (void)_currentListeningModeDidChange
{
  xpcClient = self->_xpcClient;
  target = self->_target;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__NACVolumeControllerProxy__currentListeningModeDidChange__block_invoke;
  v4[3] = &unk_27992BBF8;
  v4[4] = self;
  [(NACXPCClient *)xpcClient currentListeningModeForTarget:target result:v4];
}

void __58__NACVolumeControllerProxy__currentListeningModeDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__NACVolumeControllerProxy__currentListeningModeDidChange__block_invoke_2;
  v6[3] = &unk_27992B510;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __58__NACVolumeControllerProxy__currentListeningModeDidChange__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 40) + 120);
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
  }

  else
  {
    v11 = v3;
    v4 = [v3 isEqual:v2];

    if ((v4 & 1) == 0)
    {
      v5 = NMLogForCategory(4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = *(*(a1 + 40) + 8);
        *buf = 138412546;
        v13 = v6;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "Received current listening mode update: %@ for target: %@", buf, 0x16u);
      }

      objc_storeStrong((*(a1 + 40) + 120), *(a1 + 32));
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 144));
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = objc_loadWeakRetained((*(a1 + 40) + 144));
        [v10 volumeControllerDidUpdateCurrentListeningMode:*(a1 + 40)];
      }
    }
  }
}

- (void)_handleFailedToSetCurrentListeningModeNotification:(id)notification
{
  v4 = MEMORY[0x277CCA9B8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"errorDomain"];
  userInfo2 = [notificationCopy userInfo];

  v9 = [userInfo2 objectForKeyedSubscript:@"errorCode"];
  v12 = [v4 errorWithDomain:v7 code:objc_msgSend(v9 userInfo:{"integerValue"), 0}];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 volumeController:self didFailToSetCurrentListeningModeWithError:v12];
  }
}

- (void)_notifyDelegateVolumeChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NACVolumeControllerProxy__notifyDelegateVolumeChanged__block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__NACVolumeControllerProxy__notifyDelegateVolumeChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v4 volumeControllerDidUpdateVolumeValue:*(a1 + 32)];
  }
}

- (void)_notifyDelegateHapticChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NACVolumeControllerProxy__notifyDelegateHapticChanged__block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__NACVolumeControllerProxy__notifyDelegateHapticChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v4 volumeControllerDidUpdateHapticIntensity:*(a1 + 32)];
  }
}

- (void)_notifyDelegateSystemMutedStateChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__NACVolumeControllerProxy__notifyDelegateSystemMutedStateChanged__block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__NACVolumeControllerProxy__notifyDelegateSystemMutedStateChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v4 volumeControllerDidUpdateSystemMutedState:*(a1 + 32)];
  }
}

- (void)_notifyDelegateProminentHapticStateChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__NACVolumeControllerProxy__notifyDelegateProminentHapticStateChanged__block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __70__NACVolumeControllerProxy__notifyDelegateProminentHapticStateChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v4 volumeControllerDidUpdateProminentHapticState:*(a1 + 32)];
  }
}

- (void)_notifyDelegateHapticStateChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NACVolumeControllerProxy__notifyDelegateHapticStateChanged__block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __61__NACVolumeControllerProxy__notifyDelegateHapticStateChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v4 volumeControllerDidUpdateHapticState:*(a1 + 32)];
  }
}

- (id)_scheduleTimeoutWithBlock:(id)block
{
  blockCopy = block;
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  v5 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(v4, blockCopy);

  dispatch_resume(v4);

  return v4;
}

- (void)_cancelSetVolumeTimer
{
  setVolumeTimer = self->_setVolumeTimer;
  if (setVolumeTimer)
  {
    dispatch_source_cancel(setVolumeTimer);
    v4 = self->_setVolumeTimer;
    self->_setVolumeTimer = 0;
  }
}

- (void)_cancelSetHapticTimer
{
  setHapticTimer = self->_setHapticTimer;
  if (setHapticTimer)
  {
    dispatch_source_cancel(setHapticTimer);
    v4 = self->_setHapticTimer;
    self->_setHapticTimer = 0;
  }
}

- (void)_cancelSetProminentHapticTimer
{
  setProminentHapticTimer = self->_setProminentHapticTimer;
  if (setProminentHapticTimer)
  {
    dispatch_source_cancel(setProminentHapticTimer);
    v4 = self->_setProminentHapticTimer;
    self->_setProminentHapticTimer = 0;
  }
}

- (void)_cancelSetHapticStateTimer
{
  setHapticStateTimer = self->_setHapticStateTimer;
  if (setHapticStateTimer)
  {
    dispatch_source_cancel(setHapticStateTimer);
    v4 = self->_setHapticStateTimer;
    self->_setHapticStateTimer = 0;
  }
}

- (void)_applicationDidBecomeActiveNotification:(id)notification
{
  v11 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (self->_observingVolume)
  {
    v5 = NMLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      target = self->_target;
      v9 = 138412290;
      v10 = target;
      _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "VolumeControllerProxy begin observing volume for target (%@) due to re-entering foreground", &v9, 0xCu);
    }

    [(NACXPCClient *)self->_xpcClient beginObservingVolumeForTarget:self->_target];
  }

  if (self->_observingListeningModes)
  {
    v7 = NMLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_target;
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_25AEBF000, v7, OS_LOG_TYPE_DEFAULT, "VolumeControllerProxy begin observing listening modes for target (%@) due to re-entering foreground", &v9, 0xCu);
    }

    [(NACXPCClient *)self->_xpcClient beginObservingListeningModesForTarget:self->_target];
  }
}

- (void)_applicationWillResignActiveNotification:(id)notification
{
  v11 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (self->_observingVolume)
  {
    v5 = NMLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      target = self->_target;
      v9 = 138412290;
      v10 = target;
      _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "VolumeControllerProxy end observing volume for target (%@) due to entering background", &v9, 0xCu);
    }

    [(NACXPCClient *)self->_xpcClient endObservingVolumeForTarget:self->_target];
  }

  if (self->_observingListeningModes)
  {
    v7 = NMLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_target;
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_25AEBF000, v7, OS_LOG_TYPE_DEFAULT, "VolumeControllerProxy end observing listeningmodes for target (%@) due to entering background", &v9, 0xCu);
    }

    [(NACXPCClient *)self->_xpcClient endObservingListeningModesForTarget:self->_target];
  }
}

- (NACVolumeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end