@interface MTFrameworkEnvironment
+ (void)initialize;
+ (void)withEnvironment:(id)environment execute:(id)execute;
- (BOOL)useCloudKitSandbox;
- (NSString)localDataPath;
- (id)dateOfBirthComponents;
- (id)hostProcessBundleIdentifier;
- (id)idCache;
- (id)metricsKitBundleIdentifier;
- (id)secretStore;
- (id)valueForEntitlement:(id)entitlement;
- (void)setLocalDataPath:(id)path;
@end

@implementation MTFrameworkEnvironment

- (id)hostProcessBundleIdentifier
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = bundleIdentifier;
  if (bundleIdentifier)
  {
    processName = bundleIdentifier;
  }

  else
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
  }

  return processName;
}

- (id)idCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idCache = selfCopy->_idCache;
  if (!idCache)
  {
    v4 = objc_alloc_init(MTIDCache);
    v5 = selfCopy->_idCache;
    selfCopy->_idCache = v4;

    idCache = selfCopy->_idCache;
  }

  v6 = idCache;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)secretStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  secretStore = selfCopy->_secretStore;
  if (!secretStore)
  {
    v4 = NSClassFromString(&cfstr_Mtidcomposites.isa);
    v5 = NSClassFromString(&cfstr_Mtidxpcsecrets.isa);
    v6 = [(MTFrameworkEnvironment *)selfCopy valueForEntitlement:@"com.apple.security.exception.mach-lookup.global-name"];
    if (([v6 containsObject:@"com.apple.AMPIDService"] & (v5 != 0)) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = objc_alloc_init(v7);
    v9 = selfCopy->_secretStore;
    selfCopy->_secretStore = v8;

    secretStore = selfCopy->_secretStore;
  }

  v10 = secretStore;
  objc_sync_exit(selfCopy);

  return v10;
}

+ (void)withEnvironment:(id)environment execute:(id)execute
{
  executeCopy = execute;
  environmentCopy = environment;
  sharedEnvironment = [self sharedEnvironment];
  [self setSharedEnvironment:environmentCopy];

  executeCopy[2](executeCopy);
  [self setSharedEnvironment:sharedEnvironment];
}

+ (void)initialize
{
  v2 = objc_opt_new();
  v3 = _sharedEnvironment;
  _sharedEnvironment = v2;

  _isInternalBuild = MGGetBoolAnswer();
}

- (void)setLocalDataPath:(id)path
{
  v13 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = [pathCopy hasPrefix:@"file://"];
  if (v5)
  {
    v6 = MTMetricsKitOSLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = pathCopy;
      _os_log_impl(&dword_258F4B000, v6, OS_LOG_TYPE_ERROR, "MetricsKit: Expected a path but got a full url for MTFrameworkEnvironment.setLocalDataPath. Please remove file:// from %@", &v11, 0xCu);
    }

    v7 = [MEMORY[0x277CBEBC0] URLWithString:pathCopy];
    path = [v7 path];

    pathCopy = path;
  }

  v9 = [pathCopy stringByReplacingOccurrencesOfString:@"//" withString:@"/"];

  localDataPath = self->_localDataPath;
  self->_localDataPath = v9;
}

- (NSString)localDataPath
{
  localDataPath = self->_localDataPath;
  if (!localDataPath)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__MTFrameworkEnvironment_localDataPath__block_invoke;
    block[3] = &unk_2798CD868;
    block[4] = self;
    if (localDataPath_onceToken != -1)
    {
      dispatch_once(&localDataPath_onceToken, block);
    }

    localDataPath = localDataPath_defaultDataFolder;
  }

  v3 = localDataPath;

  return v3;
}

void __39__MTFrameworkEnvironment_localDataPath__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  v3 = [v2 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v9];
  v4 = v9;
  v5 = [*(a1 + 32) metricsKitBundleIdentifier];
  v6 = [v3 URLByAppendingPathComponent:v5];

  v7 = [v6 path];
  v8 = localDataPath_defaultDataFolder;
  localDataPath_defaultDataFolder = v7;
}

- (id)valueForEntitlement:(id)entitlement
{
  v15 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, entitlementCopy, &error);
    v7 = v6;
    if (error)
    {
      v8 = MTMetricsKitOSLog(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v12 = entitlementCopy;
        v13 = 2112;
        v14 = error;
        _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to read entitlement %@ error: %@", buf, 0x16u);
      }

      CFRelease(error);
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)useCloudKitSandbox
{
  isInternalBuild = [(MTFrameworkEnvironment *)self isInternalBuild];
  if (isInternalBuild)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [standardUserDefaults valueForKey:@"MTMetricsKitContainerEnvironment"];

    if (!v5)
    {
      v5 = [(MTFrameworkEnvironment *)self valueForEntitlement:@"com.apple.developer.icloud-container-environment"];
    }

    v6 = [v5 isEqualToString:@"Development"];

    LOBYTE(isInternalBuild) = v6;
  }

  return isInternalBuild;
}

- (id)metricsKitBundleIdentifier
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Mtmetricskit.isa)];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (id)dateOfBirthComponents
{
  v16 = *MEMORY[0x277D85DE8];
  if (HealthKitFramework_sOnce != -1)
  {
    [MTFrameworkEnvironment(HealthKit) dateOfBirthComponents];
  }

  if (!HealthKitFramework_sHandle || (NSClassFromString(&cfstr_Hkhealthstore.isa), v2 = objc_claimAutoreleasedReturnValue(), (self = v2) == 0))
  {
    v4 = MTMetricsKitOSLog(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "MetricsKit: HKHealthStore class is not found.";
      v10 = v4;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_15:
      _os_log_impl(&dword_258F4B000, v10, v11, v9, buf, 2u);
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  isHealthDataAvailable = [v2 isHealthDataAvailable];
  if ((isHealthDataAvailable & 1) == 0)
  {
    v4 = MTMetricsKitOSLog(isHealthDataAvailable);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "MetricsKit: HealthKit health data is not available.";
      v10 = v4;
      v11 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v4 = objc_alloc_init(v2);
  v13 = 0;
  v5 = [v4 dateOfBirthComponentsWithError:&v13];
  v6 = v13;
  v7 = v6;
  if (v6)
  {
    v8 = MTMetricsKitOSLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Date of birth retrieval from HealthKit failed with error: %@", buf, 0xCu);
    }
  }

LABEL_17:

  return v5;
}

@end