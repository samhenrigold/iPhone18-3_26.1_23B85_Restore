@interface InstalledAppsCache
+ (id)sharedInstance;
- (id)appNameForPid:(int)pid bundleId:(id *)id;
- (id)binaryNameForPid:(int)pid;
- (id)bundlePathForPid:(int)pid stripXPCService:(BOOL)service;
- (id)pathForPid:(int)pid;
@end

@implementation InstalledAppsCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[InstalledAppsCache sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __36__InstalledAppsCache_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)appNameForPid:(int)pid bundleId:(id *)id
{
  v5 = *&pid;
  mEMORY[0x277D24078] = [MEMORY[0x277D24078] sharedInstance];
  v7 = [mEMORY[0x277D24078] infoForPid:v5];

  if (id)
  {
    *id = [v7 bundleId];
  }

  displayName = [v7 displayName];

  return displayName;
}

- (id)pathForPid:(int)pid
{
  v3 = *&pid;
  mEMORY[0x277D24078] = [MEMORY[0x277D24078] sharedInstance];
  v5 = [mEMORY[0x277D24078] pathForPid:v3];

  return v5;
}

- (id)bundlePathForPid:(int)pid stripXPCService:(BOOL)service
{
  serviceCopy = service;
  v5 = *&pid;
  mEMORY[0x277D24078] = [MEMORY[0x277D24078] sharedInstance];
  v7 = [mEMORY[0x277D24078] bundlePathForPid:v5 stripXPCService:serviceCopy];

  return v7;
}

- (id)binaryNameForPid:(int)pid
{
  v3 = *&pid;
  mEMORY[0x277D24078] = [MEMORY[0x277D24078] sharedInstance];
  v5 = [mEMORY[0x277D24078] binaryNameForPid:v3];

  return v5;
}

@end