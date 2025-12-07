@interface FMNetworkMonitor
+ (id)sharedInstance;
- (BOOL)isMonitoring;
- (BOOL)isNetworkUp;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerNetworkMonitorLaunchEvent:(BOOL)event;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation FMNetworkMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[FMNetworkMonitor sharedInstance];
  }

  v3 = sharedInstance___instance_1;

  return v3;
}

uint64_t __34__FMNetworkMonitor_sharedInstance__block_invoke()
{
  sharedInstance___instance_1 = objc_alloc_init(FMNetworkMonitor);

  return MEMORY[0x2821F96F8]();
}

- (void)startMonitoring
{
  mEMORY[0x277CD9200] = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  [(FMNetworkMonitor *)self setEvaluator:mEMORY[0x277CD9200]];

  evaluator = [(FMNetworkMonitor *)self evaluator];
  [evaluator addObserver:self forKeyPath:@"path" options:5 context:0];
}

- (void)stopMonitoring
{
  evaluator = [(FMNetworkMonitor *)self evaluator];
  [evaluator removeObserver:self forKeyPath:@"path" context:0];

  [(FMNetworkMonitor *)self setEvaluator:0];
}

- (BOOL)isMonitoring
{
  evaluator = [(FMNetworkMonitor *)self evaluator];
  v3 = evaluator != 0;

  return v3;
}

- (BOOL)isNetworkUp
{
  isMonitoring = [(FMNetworkMonitor *)self isMonitoring];
  if (isMonitoring)
  {
    evaluator = [(FMNetworkMonitor *)self evaluator];
    path = [evaluator path];
    status = [path status];

    LOBYTE(isMonitoring) = (status & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  return isMonitoring;
}

- (void)registerNetworkMonitorLaunchEvent:(BOOL)event
{
  v3 = LogCategory_Unspecified(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24A2EE000, v3, OS_LOG_TYPE_DEFAULT, "FMNetworkMonitor registerNetworkMonitorLaunchEvent: not implemented for this platform.", v4, 2u);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v17 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if ([path isEqualToString:@"path"])
  {
    path = [objectCopy path];
    status = [path status];

    v11 = LogCategory_Unspecified(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"DOWN";
      if (status == 1)
      {
        v12 = @"UP";
      }

      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&dword_24A2EE000, v11, OS_LOG_TYPE_INFO, "Network state changed: %@", buf, 0xCu);
    }

    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __67__FMNetworkMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke;
    activity_block[3] = &__block_descriptor_33_e5_v8__0l;
    v14 = status == 1;
    _os_activity_initiate(&dword_24A2EE000, "Network state changed", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }
}

void __67__FMNetworkMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = @"IsNetworkAvailable";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 postNotificationName:@"com.apple.icloud.FMNetworkMonitor.networkChanged" object:0 userInfo:v4];
}

@end