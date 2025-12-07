@interface CSSiriRestrictionOnLockScreenMonitor
+ (id)sharedInstance;
- (BOOL)_checkSiriRestrictedOnLockScreen;
- (CSSiriRestrictionOnLockScreenMonitor)init;
- (void)_didReceiveRestrictionChanged:(BOOL)changed;
- (void)_didReceiveRestrictionChangedInQueue:(BOOL)queue;
- (void)_notifyObserver:(id)observer withRestricted:(BOOL)restricted;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation CSSiriRestrictionOnLockScreenMonitor

+ (id)sharedInstance
{
  if (+[CSUtils isDarwinOS])
  {
    v2 = 0;
  }

  else
  {
    if (sharedInstance_onceToken_7025 != -1)
    {
      dispatch_once(&sharedInstance_onceToken_7025, &__block_literal_global_7026);
    }

    v2 = sharedInstance__sharedInstance_7027;
  }

  return v2;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v5 = [(CSSiriRestrictionOnLockScreenMonitor *)self _checkSiriRestrictedOnLockScreen:notification];
  self->_isRestricted = v5;

  [(CSSiriRestrictionOnLockScreenMonitor *)self _didReceiveRestrictionChanged:v5];
}

- (void)_notifyObserver:(id)observer withRestricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  observerCopy = observer;
  [(CSEventMonitor *)self notifyObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSSiriRestrictionOnLockScreenMonitor:self didReceiveRestrictionChanged:restrictedCopy];
  }
}

- (void)_didReceiveRestrictionChanged:(BOOL)changed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__CSSiriRestrictionOnLockScreenMonitor__didReceiveRestrictionChanged___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  changedCopy = changed;
  [(CSEventMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_didReceiveRestrictionChangedInQueue:(BOOL)queue
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__CSSiriRestrictionOnLockScreenMonitor__didReceiveRestrictionChangedInQueue___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  queueCopy = queue;
  [(CSEventMonitor *)self enumerateObserversInQueue:v3];
}

- (BOOL)_checkSiriRestrictedOnLockScreen
{
  v11 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69ADFC0] = [MEMORY[0x1E69ADFC0] sharedConnection];
  v3 = [mEMORY[0x1E69ADFC0] effectiveBoolValueForSetting:*MEMORY[0x1E69ADDC0]];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3 == 2)
    {
      v5 = @"YES";
    }

    v7 = 136315394;
    v8 = "[CSSiriRestrictionOnLockScreenMonitor _checkSiriRestrictedOnLockScreen]";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Siri restricted on lock screen : %{public}@", &v7, 0x16u);
  }

  return v3 == 2;
}

- (void)_stopMonitoring
{
  v7 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69ADFC0] = [MEMORY[0x1E69ADFC0] sharedConnection];
  [mEMORY[0x1E69ADFC0] unregisterObserver:self];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSSiriRestrictionOnLockScreenMonitor _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Setting preference change", &v5, 0xCu);
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v8 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69ADFC0] = [MEMORY[0x1E69ADFC0] sharedConnection];
  [mEMORY[0x1E69ADFC0] registerObserver:self];

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSSiriRestrictionOnLockScreenMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : Setting preference change", &v6, 0xCu);
  }

  self->_isRestricted = [(CSSiriRestrictionOnLockScreenMonitor *)self _checkSiriRestrictedOnLockScreen];
}

- (CSSiriRestrictionOnLockScreenMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSSiriRestrictionOnLockScreenMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_isRestricted = 0;
  }

  return result;
}

uint64_t __54__CSSiriRestrictionOnLockScreenMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSSiriRestrictionOnLockScreenMonitor);
  v1 = sharedInstance__sharedInstance_7027;
  sharedInstance__sharedInstance_7027 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end