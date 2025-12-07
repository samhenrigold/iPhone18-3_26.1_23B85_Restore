@interface CSAudioSessionMonitor
+ (id)sharedInstance;
- (CSAudioSessionMonitor)initWithCrashMonitor:(id)monitor;
- (unint64_t)getAudioSessionState;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)audioSessionEventProvidingDidSetAudioSessionActive:(BOOL)active;
- (void)audioSessionEventProvidingWillSetAudioSessionActive:(BOOL)active;
- (void)notifyAudioSessionStateChange:(unint64_t)change;
@end

@implementation CSAudioSessionMonitor

- (void)audioSessionEventProvidingDidSetAudioSessionActive:(BOOL)active
{
  if (!active)
  {
    [(CSAudioSessionMonitor *)self notifyAudioSessionStateChange:2];
  }
}

- (void)audioSessionEventProvidingWillSetAudioSessionActive:(BOOL)active
{
  if (active)
  {
    [(CSAudioSessionMonitor *)self notifyAudioSessionStateChange:1];
  }
}

- (void)notifyAudioSessionStateChange:(unint64_t)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CSAudioSessionMonitor_notifyAudioSessionStateChange___block_invoke;
  block[3] = &unk_1E865CC58;
  block[4] = self;
  block[5] = change;
  dispatch_async(queue, block);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CSAudioSessionMonitor_notifyAudioSessionStateChange___block_invoke_3;
  v6[3] = &unk_1E865CA68;
  v6[4] = self;
  v6[5] = change;
  [(CSEventMonitor *)self enumerateObserversInQueue:v6];
}

void __55__CSAudioSessionMonitor_notifyAudioSessionStateChange___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 40) != v2)
  {
    *(v1 + 40) = v2;
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = 136315394;
      v7 = "[CSAudioSessionMonitor notifyAudioSessionStateChange:]_block_invoke";
      v8 = 2050;
      v9 = v5;
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Notifying audio session state change to %{public}lu", &v6, 0x16u);
    }
  }
}

- (unint64_t)getAudioSessionState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__CSAudioSessionMonitor_getAudioSessionState__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_stopMonitoring
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSAudioSessionMonitor _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : audio session event", &v3, 0xCu);
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAudioSessionMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : audio session event", &v4, 0xCu);
  }
}

- (CSAudioSessionMonitor)initWithCrashMonitor:(id)monitor
{
  monitorCopy = monitor;
  v11.receiver = self;
  v11.super_class = CSAudioSessionMonitor;
  v5 = [(CSEventMonitor *)&v11 init];
  if (v5)
  {
    v6 = dispatch_queue_create("audioSessionMonitor queue", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    v5->_audioSessionState = 0;
    if (monitorCopy)
    {
      v8 = monitorCopy;
    }

    else
    {
      v8 = +[CSAudioServerCrashMonitor sharedInstance];
    }

    crashMonitor = v5->_crashMonitor;
    v5->_crashMonitor = v8;

    [(CSEventMonitor *)v5->_crashMonitor addObserver:v5];
  }

  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_863 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_863, &__block_literal_global_864);
  }

  v3 = sharedInstance__sharedInstance_865;

  return v3;
}

uint64_t __39__CSAudioSessionMonitor_sharedInstance__block_invoke()
{
  v0 = [[CSAudioSessionMonitor alloc] initWithCrashMonitor:0];
  v1 = sharedInstance__sharedInstance_865;
  sharedInstance__sharedInstance_865 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end