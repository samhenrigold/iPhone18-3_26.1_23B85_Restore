@interface CSVoiceTriggerEnabledMonitor
+ (id)sharedInstance;
- (BOOL)_checkVoiceTriggerEnabled;
- (CSVoiceTriggerEnabledMonitor)init;
- (void)_didReceiveVoiceTriggerSettingChanged:(BOOL)changed;
- (void)_didReceiveVoiceTriggerSettingChangedInQueue:(BOOL)queue;
- (void)_notifyObserver:(id)observer withEnabled:(BOOL)enabled;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSVoiceTriggerEnabledMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7249 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7249, &__block_literal_global_7250);
  }

  v3 = sharedInstance__sharedInstance_7251;

  return v3;
}

uint64_t __46__CSVoiceTriggerEnabledMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSVoiceTriggerEnabledMonitor);
  v1 = sharedInstance__sharedInstance_7251;
  sharedInstance__sharedInstance_7251 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CSVoiceTriggerEnabledMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSVoiceTriggerEnabledMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
    result->_isVoiceTriggerEnabled = 0;
  }

  return result;
}

- (BOOL)_checkVoiceTriggerEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[CSFPreferences sharedPreferences];
  voiceTriggerEnabled = [v2 voiceTriggerEnabled];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (voiceTriggerEnabled)
    {
      v5 = @"YES";
    }

    v7 = 136315394;
    v8 = "[CSVoiceTriggerEnabledMonitor _checkVoiceTriggerEnabled]";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger enabled = %{public}@", &v7, 0x16u);
  }

  return voiceTriggerEnabled;
}

- (void)_notifyObserver:(id)observer withEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  observerCopy = observer;
  [(CSEventMonitor *)self notifyObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSVoiceTriggerEnabledMonitor:self didReceiveEnabled:enabledCopy];
  }
}

- (void)_didReceiveVoiceTriggerSettingChanged:(BOOL)changed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__CSVoiceTriggerEnabledMonitor__didReceiveVoiceTriggerSettingChanged___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  changedCopy = changed;
  [(CSEventMonitor *)self enumerateObservers:v3];
}

- (void)_didReceiveVoiceTriggerSettingChangedInQueue:(BOOL)queue
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__CSVoiceTriggerEnabledMonitor__didReceiveVoiceTriggerSettingChangedInQueue___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  queueCopy = queue;
  [(CSEventMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_stopMonitoring
{
  v7 = *MEMORY[0x1E69E9840];
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerEnabledMonitor _stopMonitoring]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitring : VoiceTrigger setting switch", &v5, 0xCu);
      notifyToken = self->_notifyToken;
    }

    notify_cancel(notifyToken);
    self->_notifyToken = -1;
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v10 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (self->_notifyToken == -1)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __58__CSVoiceTriggerEnabledMonitor__startMonitoringWithQueue___block_invoke;
    handler[3] = &unk_1E865C9F0;
    handler[4] = self;
    notify_register_dispatch("com.apple.coreaudio.BorealisToggled", &self->_notifyToken, queueCopy, handler);
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSVoiceTriggerEnabledMonitor _startMonitoringWithQueue:]";
      v6 = "%s Start monitring : VoiceTrigger setting switch";
      goto LABEL_6;
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSVoiceTriggerEnabledMonitor _startMonitoringWithQueue:]";
      v6 = "%s Cannot start monitoring VoiceTrigger setting switch because it was already started";
LABEL_6:
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }

  self->_isVoiceTriggerEnabled = [(CSVoiceTriggerEnabledMonitor *)self _checkVoiceTriggerEnabled];
}

void __58__CSVoiceTriggerEnabledMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[28];
  if (v3 == [v2 _checkVoiceTriggerEnabled])
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      if (*(*(a1 + 32) + 28))
      {
        v7 = @"ON";
      }

      else
      {
        v7 = @"OFF";
      }

      v8 = 136315394;
      v9 = "[CSVoiceTriggerEnabledMonitor _startMonitoringWithQueue:]_block_invoke";
      v10 = 2114;
      v11 = v7;
      _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s VoiceTrigger is already %{public}@, received duplicated notification!", &v8, 0x16u);
    }
  }

  else
  {
    *(*(a1 + 32) + 28) = [*(a1 + 32) _checkVoiceTriggerEnabled];
    v5 = *(a1 + 32);
    v6 = v5[28];

    [v5 _didReceiveVoiceTriggerSettingChanged:v6];
  }
}

@end