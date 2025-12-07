@interface CSPickableRouteChangeMonitor
+ (id)sharedInstance;
- (CSPickableRouteChangeMonitor)init;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_startObservingAudioPickableRouteChange;
- (void)_startObservingSystemControllerLifecycle;
- (void)_stopMonitoring;
- (void)_systemControllerDied:(id)died;
- (void)pickableRoutesDidChange:(id)change;
@end

@implementation CSPickableRouteChangeMonitor

- (void)_startObservingSystemControllerLifecycle
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = MEMORY[0x1E69AECB0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69AECB0] object:0];

  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:*v4];
  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [mEMORY[0x1E69AED08] setAttribute:v9 forKey:*MEMORY[0x1E69AECE0] error:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *v4;
  mEMORY[0x1E69AED08]2 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [defaultCenter2 addObserver:self selector:sel__systemControllerDied_ name:v7 object:mEMORY[0x1E69AED08]2];
}

- (void)_systemControllerDied:(id)died
{
  v10 = *MEMORY[0x1E69E9840];
  diedCopy = died;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSPickableRouteChangeMonitor _systemControllerDied:]";
    v8 = 2114;
    v9 = diedCopy;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %{public}@", &v6, 0x16u);
  }

  [(CSPickableRouteChangeMonitor *)self _startObservingSystemControllerLifecycle];
  [(CSPickableRouteChangeMonitor *)self _startObservingAudioPickableRouteChange];
  [(CSPickableRouteChangeMonitor *)self pickableRoutesDidChange:0];
}

- (void)_stopMonitoring
{
  v7 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSPickableRouteChangeMonitor _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : CSPickableRouteChangeMonitor", &v5, 0xCu);
  }
}

- (void)_startObservingAudioPickableRouteChange
{
  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v3 = MEMORY[0x1E69AEAE8];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69AEAE8], 0}];
  [mEMORY[0x1E69AED08] setAttribute:v4 forKey:*MEMORY[0x1E69AECE0] error:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_pickableRoutesDidChange_ name:*v3 object:mEMORY[0x1E69AED08]];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v7 = *MEMORY[0x1E69E9840];
  [(CSPickableRouteChangeMonitor *)self _startObservingSystemControllerLifecycle];
  [(CSPickableRouteChangeMonitor *)self _startObservingAudioPickableRouteChange];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSPickableRouteChangeMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : CSPickableRouteChangeMonitor", &v5, 0xCu);
  }
}

- (void)pickableRoutesDidChange:(id)change
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSPickableRouteChangeMonitor pickableRoutesDidChange:]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Received external pickable route change notification", buf, 0xCu);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__CSPickableRouteChangeMonitor_pickableRoutesDidChange___block_invoke;
  v5[3] = &unk_1E865CB20;
  v5[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v5];
}

- (CSPickableRouteChangeMonitor)init
{
  if (+[CSUtils isDarwinOS])
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSPickableRouteChangeMonitor;
    self = [(CSEventMonitor *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1329 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1329, &__block_literal_global_1330);
  }

  v3 = sharedInstance_sharedInstance_1331;

  return v3;
}

uint64_t __46__CSPickableRouteChangeMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSPickableRouteChangeMonitor);
  v1 = sharedInstance_sharedInstance_1331;
  sharedInstance_sharedInstance_1331 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end