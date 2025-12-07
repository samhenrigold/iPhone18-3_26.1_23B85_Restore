@interface GEOSystemMonitor
+ (GEOSystemMonitor)sharedInstance;
@end

@implementation GEOSystemMonitor

+ (GEOSystemMonitor)sharedInstance
{
  if (sharedInstance_once_173611 != -1)
  {
    dispatch_once(&sharedInstance_once_173611, &__block_literal_global_173612);
  }

  v3 = sharedInstance_singleton_173613;

  return v3;
}

void __34__GEOSystemMonitor__systemDidWake__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 24) hasObservers];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && _rootPort)
  {
    v3 = *(a1 + 32);

    [(GEOSystemMonitor *)v3 _disablePowerNotifications];
  }
}

@end