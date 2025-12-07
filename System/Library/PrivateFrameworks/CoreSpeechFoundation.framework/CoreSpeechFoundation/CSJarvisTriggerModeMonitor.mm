@interface CSJarvisTriggerModeMonitor
+ (id)sharedInstance;
+ (id)triggerModeStringDescription:(int64_t)description;
- (CSJarvisTriggerModeMonitor)init;
- (int64_t)_fetchTriggerMode;
- (int64_t)getTriggerMode;
- (void)_notifyJarvisTriggerModeDidChanged;
- (void)_notifyObserver:(id)observer withJarvisTriggerMode:(int64_t)mode;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)setTriggerMode:(int64_t)mode;
@end

@implementation CSJarvisTriggerModeMonitor

- (void)_notifyObserver:(id)observer withJarvisTriggerMode:(int64_t)mode
{
  observerCopy = observer;
  [(CSEventMonitor *)self notifyObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSJarvisTriggerModeMonitor:self didReceiveTriggerModeChanged:mode];
  }
}

- (void)_notifyJarvisTriggerModeDidChanged
{
  v10 = *MEMORY[0x1E69E9840];
  _fetchTriggerMode = [(CSJarvisTriggerModeMonitor *)self _fetchTriggerMode];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[CSJarvisTriggerModeMonitor _notifyJarvisTriggerModeDidChanged]";
    v8 = 1026;
    v9 = _fetchTriggerMode;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Notifying jarvis trigger mode change to %{public}d", buf, 0x12u);
  }

  self->_triggerMode = _fetchTriggerMode;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__CSJarvisTriggerModeMonitor__notifyJarvisTriggerModeDidChanged__block_invoke;
  v5[3] = &unk_1E865CA68;
  v5[4] = self;
  v5[5] = _fetchTriggerMode;
  [(CSEventMonitor *)self enumerateObserversInQueue:v5];
}

- (int64_t)_fetchTriggerMode
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[CSFPreferences sharedPreferences];
  getJarvisTriggerMode = [v2 getJarvisTriggerMode];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSJarvisTriggerModeMonitor _fetchTriggerMode]";
    v8 = 1026;
    v9 = getJarvisTriggerMode;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Fetched Jarvis trigger mode : %{public}d", &v6, 0x12u);
  }

  return getJarvisTriggerMode;
}

- (int64_t)getTriggerMode
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    triggerMode = self->_triggerMode;
    v6 = 136315394;
    v7 = "[CSJarvisTriggerModeMonitor getTriggerMode]";
    v8 = 1026;
    v9 = triggerMode;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Queried Jarvis trigger mode : %{public}d", &v6, 0x12u);
  }

  return self->_triggerMode;
}

- (void)setTriggerMode:(int64_t)mode
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSJarvisTriggerModeMonitor setTriggerMode:]";
    v8 = 1026;
    modeCopy = mode;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Setting Jarvis trigger mode : %{public}d", &v6, 0x12u);
  }

  v5 = +[CSFPreferences sharedPreferences];
  [v5 setJarvisTriggerMode:mode];
}

- (void)_stopMonitoring
{
  v7 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"kCSPreferencesJarvisTriggerModeDidChangeDarwinNotification", 0);
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSJarvisTriggerModeMonitor _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : jarvis trigger mode switch", &v5, 0xCu);
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v12 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _jarvisTriggerModeDidChange, @"kCSPreferencesJarvisTriggerModeDidChangeDarwinNotification", 0, CFNotificationSuspensionBehaviorDrop);
  _fetchTriggerMode = [(CSJarvisTriggerModeMonitor *)self _fetchTriggerMode];
  v6 = _fetchTriggerMode;
  self->_triggerMode = _fetchTriggerMode;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSJarvisTriggerModeMonitor _startMonitoringWithQueue:]";
    v10 = 1026;
    v11 = v6;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : jarvis trigger mode switch, trigger mode is set to %{public}d", &v8, 0x12u);
  }
}

- (CSJarvisTriggerModeMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSJarvisTriggerModeMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_triggerMode = 2;
  }

  return result;
}

+ (id)triggerModeStringDescription:(int64_t)description
{
  if ((description + 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E865C8F8[description + 1];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_14529 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_14529, &__block_literal_global_14530);
  }

  v3 = sharedInstance__sharedInstance_14531;

  return v3;
}

uint64_t __44__CSJarvisTriggerModeMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSJarvisTriggerModeMonitor);
  v1 = sharedInstance__sharedInstance_14531;
  sharedInstance__sharedInstance_14531 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end