@interface CSAlwaysOnProcessorStateMonitor
+ (id)sharedInstance;
- (CSAlwaysOnProcessorStateMonitor)init;
- (void)_didReceiveAOPListeningStateChange:(BOOL)change;
- (void)_notifyObserver:(id)observer withEnabled:(BOOL)enabled;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSAlwaysOnProcessorStateMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_13490 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_13490, &__block_literal_global_13491);
  }

  v3 = sharedInstance_sharedInstance_13492;

  return v3;
}

- (void)_notifyObserver:(id)observer withEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  observerCopy = observer;
  [(CSEventMonitor *)self notifyObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSAlwaysOnProcessorStateMonitor:self didReceiveStateChange:enabledCopy];
  }
}

- (void)_didReceiveAOPListeningStateChange:(BOOL)change
{
  changeCopy = change;
  v12 = *MEMORY[0x1E69E9840];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CSAlwaysOnProcessorStateMonitor _didReceiveAOPListeningStateChange:]";
    v10 = 1026;
    v11 = changeCopy;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Received AOP Listening state change notification : %{public}d", buf, 0x12u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__CSAlwaysOnProcessorStateMonitor__didReceiveAOPListeningStateChange___block_invoke;
  v6[3] = &unk_1E865CA18;
  v6[4] = self;
  v7 = changeCopy;
  [(CSEventMonitor *)self enumerateObserversInQueue:v6];
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
      v6 = "[CSAlwaysOnProcessorStateMonitor _stopMonitoring]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : AOP Listening state", &v5, 0xCu);
      notifyToken = self->_notifyToken;
    }

    notify_cancel(notifyToken);
    self->_notifyToken = -1;
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v11 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CSAlwaysOnProcessorStateMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : AOP Listening state", buf, 0xCu);
  }

  if (self->_notifyToken == -1)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __61__CSAlwaysOnProcessorStateMonitor__startMonitoringWithQueue___block_invoke;
    handler[3] = &unk_1E865C9F0;
    handler[4] = self;
    notify_register_dispatch("com.apple.audio.AOP.enable", &self->_notifyToken, queueCopy, handler);
  }

  v6 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CSAlwaysOnProcessorStateMonitor__startMonitoringWithQueue___block_invoke_10;
  v7[3] = &unk_1E865C6C8;
  v7[4] = self;
  [v6 listeningEnabledCompletionBlock:v7];
}

void __61__CSAlwaysOnProcessorStateMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  v2 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__CSAlwaysOnProcessorStateMonitor__startMonitoringWithQueue___block_invoke_2;
  v3[3] = &unk_1E865C6C8;
  v3[4] = *(a1 + 32);
  [v2 listeningEnabledCompletionBlock:v3];
}

void __61__CSAlwaysOnProcessorStateMonitor__startMonitoringWithQueue___block_invoke_10(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CSLogContextFacilityCoreSpeech;
  if (v5 && os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    v9 = 136315394;
    v10 = "[CSAlwaysOnProcessorStateMonitor _startMonitoringWithQueue:]_block_invoke";
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Failed to fetch listeningEnabled : %{public}@", &v9, 0x16u);

    v6 = CSLogContextFacilityCoreSpeech;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CSAlwaysOnProcessorStateMonitor _startMonitoringWithQueue:]_block_invoke";
    v11 = 1026;
    LODWORD(v12) = a2;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Query value for listening property in AOP : %{public}d", &v9, 0x12u);
  }

  *(*(a1 + 32) + 24) = a2;
  [*(a1 + 32) _didReceiveAOPListeningStateChange:*(*(a1 + 32) + 24)];
}

void __61__CSAlwaysOnProcessorStateMonitor__startMonitoringWithQueue___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CSLogContextFacilityCoreSpeech;
  if (v5 && os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    v9 = 136315394;
    v10 = "[CSAlwaysOnProcessorStateMonitor _startMonitoringWithQueue:]_block_invoke_2";
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Failed to fetch listeningEnabledOnNotification : %{public}@", &v9, 0x16u);

    v6 = CSLogContextFacilityCoreSpeech;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CSAlwaysOnProcessorStateMonitor _startMonitoringWithQueue:]_block_invoke";
    v11 = 1026;
    LODWORD(v12) = a2;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s AOP listening property on notification : %{public}d", &v9, 0x12u);
  }

  *(*(a1 + 32) + 24) = a2;
  [*(a1 + 32) _didReceiveAOPListeningStateChange:*(*(a1 + 32) + 24)];
}

- (CSAlwaysOnProcessorStateMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSAlwaysOnProcessorStateMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_isListeningEnabled = 0;
    result->_notifyToken = -1;
  }

  return result;
}

uint64_t __49__CSAlwaysOnProcessorStateMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSAlwaysOnProcessorStateMonitor);
  v1 = sharedInstance_sharedInstance_13492;
  sharedInstance_sharedInstance_13492 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end