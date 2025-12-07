@interface BLSHService
+ (id)sharedService;
+ (id)startLocalOnlyServiceWithConfiguration:(id)configuration;
+ (id)startServiceWithPlatformProvider:(id)provider;
+ (id)startServiceWithPlatformProvider:(id)provider localOnly:(BOOL)only;
+ (void)sharedService;
- (BLSHService)initWithPlatformProvider:(id)provider localOnly:(BOOL)only;
- (void)beginSpecialManagementForHostEnvironment:(id)environment;
- (void)dealloc;
@end

@implementation BLSHService

+ (id)startServiceWithPlatformProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    [(BLSHService *)a2 startServiceWithPlatformProvider:self];
  }

  v6 = providerCopy;
  v7 = [self startServiceWithPlatformProvider:providerCopy localOnly:0];

  return v7;
}

+ (id)startLocalOnlyServiceWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    configurationCopy = objc_opt_new();
  }

  v5 = [[BLSHLocalOnlySimplePlatformProvider alloc] initWithConfiguration:configurationCopy];
  [MEMORY[0x277CF09B8] setIsHostProcess:1];
  v6 = [self startServiceWithPlatformProvider:v5 localOnly:1];

  return v6;
}

+ (id)startServiceWithPlatformProvider:(id)provider localOnly:(BOOL)only
{
  onlyCopy = only;
  providerCopy = provider;
  os_unfair_lock_lock(&_classLock_2);
  if (_sharedService)
  {
    [BLSHService startServiceWithPlatformProvider:a2 localOnly:self];
  }

  v8 = [[self alloc] initWithPlatformProvider:providerCopy localOnly:onlyCopy];
  v9 = _sharedService;
  _sharedService = v8;

  os_unfair_lock_unlock(&_classLock_2);

  return v8;
}

+ (id)sharedService
{
  os_unfair_lock_lock(&_classLock_2);
  v4 = _sharedService;
  os_unfair_lock_unlock(&_classLock_2);
  if (!v4)
  {
    +[(BLSHService *)a2];
  }

  return v4;
}

- (BLSHService)initWithPlatformProvider:(id)provider localOnly:(BOOL)only
{
  onlyCopy = only;
  v38[1] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v36.receiver = self;
  v36.super_class = BLSHService;
  v8 = [(BLSHService *)&v36 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_platformProvider, provider);
    backlightPlatformProvider = [providerCopy backlightPlatformProvider];
    v11 = objc_opt_respondsToSelector();
    v12 = providerCopy;
    if (v11 & 1) != 0 || (v13 = objc_opt_respondsToSelector(), v12 = backlightPlatformProvider, (v13))
    {
      [v12 serviceInitializing:v9];
    }

    v14 = [[BLSHBacklightOSInterfaceProvider alloc] initWithPlatformProvider:backlightPlatformProvider];
    osInterfaceProvider = v9->_osInterfaceProvider;
    v9->_osInterfaceProvider = v14;

    [BLSHBacklightOSInterfaceProvider setSharedProvider:v9->_osInterfaceProvider];
    v16 = [BLSHAssertionService serviceWithOSInterfaceProvider:v9->_osInterfaceProvider localOnly:onlyCopy];
    assertionService = v9->_assertionService;
    v9->_assertionService = v16;

    v18 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
    v37 = @"disableHostInvalidationBudget";
    v38[0] = MEMORY[0x277CBEC28];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    [v18 registerDefaults:v19];

    v20 = [v18 BOOLForKey:@"disableHostInvalidationBudget"];
    v21 = bls_backlight_log();
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21FD11000, v22, OS_LOG_TYPE_DEFAULT, "disabling host side invalidation budget because default is set", buf, 2u);
      }

      v23 = objc_alloc_init(BLSHNullInactiveBudgetPolicy);
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21FD11000, v22, OS_LOG_TYPE_INFO, "enabling host side invalidation budget.", buf, 2u);
      }

      v23 = [[BLSHInactiveBudgetPolicy alloc] initWithOSTimerProvider:v9->_osInterfaceProvider];
    }

    inactiveBudgetPolicy = v9->_inactiveBudgetPolicy;
    v9->_inactiveBudgetPolicy = v23;
    v25 = v23;

    v9->_stateHandler = os_state_add_handler();
    v26 = v9->_osInterfaceProvider;
    localAssertionService = [(BLSHAssertionService *)v9->_assertionService localAssertionService];
    [(BLSHBacklightOSInterfaceProvider *)v26 registerHandlersForService:localAssertionService];

    v28 = v9->_osInterfaceProvider;
    localAssertionService2 = [(BLSHAssertionService *)v9->_assertionService localAssertionService];
    v30 = [BLSHBacklightService serviceWithPlatformProvider:backlightPlatformProvider osInterfaceProvider:v28 inactiveBudgetPolicy:v25 localAssertionService:localAssertionService2 localOnly:onlyCopy];
    backlightService = v9->_backlightService;
    v9->_backlightService = v30;

    v32 = objc_alloc_init(BLSHDefaultsObserver);
    defaultsObserver = v9->_defaultsObserver;
    v9->_defaultsObserver = v32;
  }

  return v9;
}

- (void)dealloc
{
  if (self->_stateHandler)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = BLSHService;
  [(BLSHService *)&v3 dealloc];
}

- (void)beginSpecialManagementForHostEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = bls_backlight_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(BLSHService *)self beginSpecialManagementForHostEnvironment:environmentCopy, v5];
  }
}

+ (void)startServiceWithPlatformProvider:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"platformProvider != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"BLSHService.m";
    v16 = 1024;
    v17 = 41;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)startServiceWithPlatformProvider:(const char *)a1 localOnly:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"only one BLSHService can be registered"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_13();
    v10 = 2048;
    v11 = a2;
    v12 = v8;
    v13 = @"BLSHService.m";
    v14 = 1024;
    v15 = 62;
    v16 = v8;
    v17 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)sharedService
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[BLSHService sharedService] should not be called before startServiceWithPlatformProvider:"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(self);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_13();
    v10 = 2048;
    v11 = a2;
    v12 = v8;
    v13 = @"BLSHService.m";
    v14 = 1024;
    v15 = 74;
    v16 = v8;
    v17 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)beginSpecialManagementForHostEnvironment:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_0_13();
  _os_log_error_impl(&dword_21FD11000, a3, OS_LOG_TYPE_ERROR, "%p beginSpecialManagementForHostEnvironment:%{public}@ is no longer necessary", v5, 0x16u);
}

@end