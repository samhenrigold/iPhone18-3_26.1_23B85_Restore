@interface CRKPlatformClassroomLockScreenMonitor
+ (CRKClassroomLockScreenMonitoring)sharedMonitor;
@end

@implementation CRKPlatformClassroomLockScreenMonitor

+ (CRKClassroomLockScreenMonitoring)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    +[CRKPlatformClassroomLockScreenMonitor sharedMonitor];
  }

  v3 = sharedMonitor_monitor;

  return v3;
}

void __54__CRKPlatformClassroomLockScreenMonitor_sharedMonitor__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  v2 = [v4 makeMonitor];
  v3 = sharedMonitor_monitor;
  sharedMonitor_monitor = v2;
}

@end