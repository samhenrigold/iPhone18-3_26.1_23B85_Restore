@interface CSAudioServerCrashMonitor
+ (CSAudioServerCrashMonitor)sharedInstance;
- (CSAudioServerCrashMonitor)init;
- (void)_didReceiveMediaserverNotification:(unint64_t)notification;
- (void)_notifyObserver:(id)observer withMediaserverState:(unint64_t)state;
- (void)_startMonitoringWithQueue:(id)queue;
@end

@implementation CSAudioServerCrashMonitor

- (void)_notifyObserver:(id)observer withMediaserverState:(unint64_t)state
{
  observerCopy = observer;
  [(CSEventMonitor *)self notifyObserver:?];
  if (state == 2)
  {
    if (objc_opt_respondsToSelector())
    {
      [observerCopy CSAudioServerCrashMonitorDidReceiveServerRestart:self];
    }
  }

  else if (state == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [observerCopy CSAudioServerCrashMonitorDidReceiveServerCrash:self];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_didReceiveMediaserverNotification:(unint64_t)notification
{
  self->_serverState = notification;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__CSAudioServerCrashMonitor__didReceiveMediaserverNotification___block_invoke;
  v3[3] = &unk_1E865CA68;
  v3[4] = self;
  v3[5] = notification;
  [(CSEventMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v14 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  objc_initWeak(&location, self);
  v5 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__CSAudioServerCrashMonitor__startMonitoringWithQueue___block_invoke;
  v9[3] = &unk_1E865CA40;
  objc_copyWeak(&v10, &location);
  [v5 setServerCrashedBlock:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CSAudioServerCrashMonitor__startMonitoringWithQueue___block_invoke_6;
  v7[3] = &unk_1E865CA40;
  objc_copyWeak(&v8, &location);
  [v5 setServerResetBlock:v7];
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[CSAudioServerCrashMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : audiomxd crash / recover event", buf, 0xCu);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __55__CSAudioServerCrashMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAudioServerCrashMonitor _startMonitoringWithQueue:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Received audiomxd or bridgeaudiod crashes event", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveMediaserverNotification:1];
}

void __55__CSAudioServerCrashMonitor__startMonitoringWithQueue___block_invoke_6(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAudioServerCrashMonitor _startMonitoringWithQueue:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Received audiomxd or bridgeaudiod reset event", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveMediaserverNotification:2];
}

- (CSAudioServerCrashMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSAudioServerCrashMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_serverState = 0;
  }

  return result;
}

+ (CSAudioServerCrashMonitor)sharedInstance
{
  if (sharedInstance_onceToken_15162 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_15162, &__block_literal_global_15163);
  }

  v3 = sharedInstance__sharedInstance_15164;

  return v3;
}

uint64_t __43__CSAudioServerCrashMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSAudioServerCrashMonitor);
  v1 = sharedInstance__sharedInstance_15164;
  sharedInstance__sharedInstance_15164 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end