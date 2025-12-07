@interface EXPKService
+ (id)defaultService;
+ (void)main;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)unregisterPersonality:(id)personality;
- (EXPKService)init;
- (EXPKService)initWithProxyFactory:(id)factory;
- (PKServicePersonality)solePersonality;
- (id)_serviceType;
- (id)_subDictionaryOfSDKWithKey:(id)key;
- (id)_subServices;
- (id)_subsystems;
- (id)configuredSubsystemList;
- (id)connectionForPlugInNamed:(id)named;
- (id)defaultsForPlugInNamed:(id)named;
- (id)discoverSubsystemNamed:(id)named options:(id)options required:(BOOL)required;
- (id)embeddedPrincipalForPlugInNamed:(id)named;
- (id)hostPrincipalForPlugInNamed:(id)named;
- (id)personalityNamed:(id)named;
- (id)personalityNamed:(id)named forHostPid:(int)pid;
- (id)plugInPrincipalForPlugInNamed:(id)named;
- (void)_prepareToRun;
- (void)beganUsingServicePersonality:(id)personality;
- (void)cancelTermination;
- (void)checkEnvironment:(id)environment;
- (void)discoverSubsystems;
- (void)launchContainingApplicationForPlugInNamed:(id)named;
- (void)mergeSubsystemList:(id)list from:(id)from;
- (void)mergeSubsystems:(id)subsystems from:(id)from;
- (void)registerPersonality:(id)personality;
- (void)run;
- (void)scheduleTermination:(double)termination;
- (void)setSolePersonality:(id)personality;
- (void)solePersonality;
@end

@implementation EXPKService

- (void)beganUsingServicePersonality:(id)personality
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__EXPKService_beganUsingServicePersonality___block_invoke;
  block[3] = &unk_1E6E4DC28;
  block[4] = self;
  if (beganUsingServicePersonality__onceToken != -1)
  {
    dispatch_once(&beganUsingServicePersonality__onceToken, block);
  }
}

void __44__EXPKService_beganUsingServicePersonality___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__EXPKService_beganUsingServicePersonality___block_invoke_2;
  block[3] = &unk_1E6E4DC28;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);

  v3 = pklog_handle_for_category();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ExtensionStartup", "", v4, 2u);
  }
}

void __44__EXPKService_beganUsingServicePersonality___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) firstHostRequestTimer];

  if (v2)
  {
    v3 = [*(a1 + 32) firstHostRequestTimer];
    dispatch_source_cancel(v3);

    v4 = *(a1 + 32);

    [v4 setFirstHostRequestTimer:0];
  }
}

+ (void)main
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = pklog_handle_for_category();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ExtensionStartup", "", buf, 2u);
  }

  v3 = pklog_handle_for_category();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ExtensionStartupXPCReady", "", buf, 2u);
  }

  current_persona = voucher_get_current_persona();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  *buf = 1;
  pklog_get_persona_type_and_name();
  v5 = pklog_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 67110146;
    v8 = geteuid();
    v9 = 1024;
    v10 = getuid();
    v11 = 1024;
    v12 = current_persona;
    v13 = 2080;
    v14 = 0;
    v15 = 2080;
    v16 = 0;
    _os_log_impl(&dword_1847D1000, v5, OS_LOG_TYPE_DEFAULT, "Hello, I'm launching as euid = %d, uid = %d, personaid = %d, type = %s, name = %s", v7, 0x28u);
  }

  defaultService = [objc_opt_class() defaultService];
  [defaultService run];
}

- (EXPKService)init
{
  v3 = NSClassFromString(&cfstr_Pkproxyfactory.isa);
  if (!v3)
  {
    v7 = objc_alloc(MEMORY[0x1E695DF30]);
    objc_exception_throw([v7 initWithName:*MEMORY[0x1E695D930] reason:@"EXPKService init failed due to missing required class PKProxyFactory!" userInfo:0]);
  }

  defaultFactory = [(objc_class *)v3 defaultFactory];
  v5 = [(EXPKService *)self initWithProxyFactory:defaultFactory];

  return v5;
}

- (EXPKService)initWithProxyFactory:(id)factory
{
  v17 = *MEMORY[0x1E69E9840];
  factoryCopy = factory;
  v14.receiver = self;
  v14.super_class = EXPKService;
  v6 = [(EXPKService *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxyFactory, factory);
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    [(EXPKService *)v7 setPersonalities:v8];

    v9 = dispatch_queue_create("timer queue", 0);
    timerQueue = v7->_timerQueue;
    v7->_timerQueue = v9;

    v7->_personalityLock._os_unfair_lock_opaque = 0;
    active_platform = dyld_get_active_platform();
    v12 = pklog_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v16 = active_platform;
      _os_log_impl(&dword_1847D1000, v12, OS_LOG_TYPE_INFO, "setting extensionPointPlatform: %u", buf, 8u);
    }

    [(EXPKService *)v7 setExtensionPointPlatform:active_platform];
  }

  return v7;
}

+ (id)defaultService
{
  if (defaultService_once != -1)
  {
    +[EXPKService defaultService];
  }

  v3 = defaultService__service;

  return v3;
}

uint64_t __29__EXPKService_defaultService__block_invoke()
{
  defaultService__service = objc_alloc_init(EXPKService);

  return MEMORY[0x1EEE66BB8]();
}

- (void)run
{
  if ([(EXPKService *)self supportsAutoreleasePoolDuringPlugInLaunch])
  {
    v3 = objc_autoreleasePoolPush();
    [(EXPKService *)self _prepareToRun];
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    [(EXPKService *)self _prepareToRun];
  }

  timerQueue = [(EXPKService *)self timerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__EXPKService_run__block_invoke;
  block[3] = &unk_1E6E4DC28;
  block[4] = self;
  dispatch_async(timerQueue, block);

  v5 = pklog_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1847D1000, v5, OS_LOG_TYPE_DEFAULT, "Bootstrapping; Bootstrap complete. Ready for handshake from host.", v8, 2u);
  }

  v6 = pklog_handle_for_category();
  if (os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ExtensionStartupXPCReady", "", v8, 2u);
  }

  serviceListener = [(EXPKService *)self serviceListener];
  MEMORY[0x1865F46C0]();

  exit(1);
}

void __18__EXPKService_run__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timerQueue];
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v2);
  [*(a1 + 32) setFirstHostRequestTimer:v3];

  v4 = [*(a1 + 32) firstHostRequestTimer];
  dispatch_source_set_event_handler(v4, &__block_literal_global_9);

  v5 = dispatch_time(0, 2000000000);
  v6 = [*(a1 + 32) firstHostRequestTimer];
  dispatch_source_set_timer(v6, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  v7 = [*(a1 + 32) firstHostRequestTimer];
  dispatch_resume(v7);
}

void __18__EXPKService_run__block_invoke_2()
{
  v0 = pklog_handle_for_category();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __18__EXPKService_run__block_invoke_2_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

- (void)_prepareToRun
{
  [(EXPKService *)self checkEnvironment:0];
  serviceListener = [MEMORY[0x1E696B0D8] serviceListener];
  [(EXPKService *)self setServiceListener:serviceListener];

  serviceListener2 = [(EXPKService *)self serviceListener];
  [serviceListener2 setDelegate:self];

  [(EXPKService *)self discoverSubsystems];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v7 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x1E69C4AE0]];
  if (!v7)
  {
    v7 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x1E69C4AE8]];
  }

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69C4AB8]];
  v9 = v8;
  if (v8)
  {
    v10 = objc_lookUpClass([v8 UTF8String]);
    if (v10)
    {
      v11 = v10;
      if (([(objc_class *)v10 conformsToProtocol:&unk_1EF2AC0B8]& 1) != 0)
      {
        v12 = objc_alloc_init(v11);
        if (v12)
        {
          v13 = v12;
          [(EXPKService *)self setDelegate:v12];
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
        v14 = pklog_handle_for_category();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [EXPKService _prepareToRun];
        }
      }
    }

    v13 = pklog_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [EXPKService _prepareToRun];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  serviceListener = [(EXPKService *)self serviceListener];

  if (serviceListener == listenerCopy)
  {
    v10 = objc_alloc(NSClassFromString(&cfstr_Pkserviceperso.isa));
    proxyFactory = [(EXPKService *)self proxyFactory];
  }

  else
  {
    proxyFactory = pklog_handle_for_category();
    if (os_log_type_enabled(proxyFactory, OS_LOG_TYPE_ERROR))
    {
      [EXPKService listener:shouldAcceptNewConnection:];
    }
  }

  return serviceListener == listenerCopy;
}

- (id)_subDictionaryOfSDKWithKey:(id)key
{
  v3 = MEMORY[0x1E6963668];
  keyCopy = key;
  extensionPointRecordForCurrentProcess = [v3 extensionPointRecordForCurrentProcess];
  sDKDictionary = [extensionPointRecordForCurrentProcess SDKDictionary];
  v7 = [sDKDictionary objectForKey:keyCopy ofClass:objc_opt_class()];

  return v7;
}

- (id)_subServices
{
  _xpcServiceDict = [(EXPKService *)self _xpcServiceDict];
  v3 = [_xpcServiceDict objectForKeyedSubscript:@"_AdditionalSubServices"];

  return v3;
}

- (id)_serviceType
{
  _xpcServiceDict = [(EXPKService *)self _xpcServiceDict];
  v3 = [_xpcServiceDict objectForKeyedSubscript:@"ServiceType"];

  return v3;
}

- (id)_subsystems
{
  v2 = [(EXPKService *)self _subDictionaryOfSDKWithKey:*MEMORY[0x1E69C4AE0]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69C4B08]];

  return v3;
}

- (void)discoverSubsystems
{
  v31 = *MEMORY[0x1E69E9840];
  configuredSubsystemList = [(EXPKService *)self configuredSubsystemList];
  if ([(EXPKService *)self isSystemService])
  {
    v4 = 0;
    goto LABEL_15;
  }

  v5 = xpc_copy_bootstrap();
  v6 = v5;
  if (!v5)
  {
    v4 = 0;
    goto LABEL_12;
  }

  v7 = xpc_dictionary_get_value(v5, MEMORY[0x1E69C4B20]);
  if (!v7)
  {
    goto LABEL_9;
  }

  v4 = _CFXPCCreateCFObjectFromXPCObject();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = pklog_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(EXPKService *)v8 discoverSubsystems];
    }

LABEL_9:
    v4 = 0;
  }

LABEL_12:
  v9 = pklog_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    preferredLocalizations = [mainBundle preferredLocalizations];
    *buf = 138412290;
    v30 = preferredLocalizations;
    _os_log_impl(&dword_1847D1000, v9, OS_LOG_TYPE_INFO, "Bootstrapping; Preferred localizations: %@", buf, 0xCu);
  }

LABEL_15:
  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = configuredSubsystemList;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(EXPKService *)self discoverSubsystemNamed:*(*(&v24 + 1) + 8 * i) options:v4 required:1, v24];
        if (v18)
        {
          [array addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v19 = "NSViewService_PKSubsystem";
  v20 = &off_1E6E4E788;
  do
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v19, v24}];
    if ((!v13 || ([v13 containsObject:v21] & 1) == 0) && -[EXPKService _processDefaultSubsystemName:](self, "_processDefaultSubsystemName:", v21))
    {
      v22 = [(EXPKService *)self discoverSubsystemNamed:v21 options:v4 required:0];
      if (v22)
      {
        [array addObject:v22];
      }
    }

    v23 = *v20++;
    v19 = v23;
  }

  while (v23);
  [(EXPKService *)self setSubsystems:array];
}

- (id)configuredSubsystemList
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v5 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x1E69C4AE0]];
  if (!v5)
  {
    v5 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x1E69C4AE8]];
  }

  array = [MEMORY[0x1E695DF70] array];
  [(EXPKService *)self mergeSubsystems:array from:v5];

  return array;
}

- (void)mergeSubsystems:(id)subsystems from:(id)from
{
  subsystemsCopy = subsystems;
  fromCopy = from;
  v7 = [fromCopy objectForKeyedSubscript:*MEMORY[0x1E69C4B08]];
  [(EXPKService *)self mergeSubsystemList:subsystemsCopy from:v7];

  v8 = [fromCopy objectForKeyedSubscript:*MEMORY[0x1E69C4AF8]];
  if (v8 || ([fromCopy objectForKeyedSubscript:*MEMORY[0x1E69C4B00]], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    _subsystems = [(EXPKService *)self _subsystems];
    [(EXPKService *)self mergeSubsystemList:subsystemsCopy from:_subsystems];

    _serviceType = [(EXPKService *)self _serviceType];
    if ([_serviceType isEqualToString:@"System"])
    {
      [(EXPKService *)self setIsSystemService:1];
    }
  }
}

- (void)mergeSubsystemList:(id)list from:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  listCopy = list;
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [fromCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (([listCopy containsObject:v12] & 1) == 0)
          {
            [listCopy addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (id)discoverSubsystemNamed:(id)named options:(id)options required:(BOOL)required
{
  requiredCopy = required;
  v20 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  optionsCopy = options;
  v9 = objc_lookUpClass([namedCopy UTF8String]);
  v10 = pklog_handle_for_category();
  v11 = v10;
  if (v9)
  {
    if (os_signpost_enabled(v10))
    {
      v16 = 138543362;
      v17 = namedCopy;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ExtensionSubsystemInit", " name=%{public, signpost.description:attribute}@ ", &v16, 0xCu);
    }

    v12 = pklog_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 138543362;
      v17 = namedCopy;
      _os_log_impl(&dword_1847D1000, v12, OS_LOG_TYPE_INFO, "Bootstrapping; external subsystem [%{public}@] initializing", &v16, 0xCu);
    }

    v13 = __PLUGINKIT_CALLING_OUT_TO_CLIENT_SUBSYSTEM_FOR_INIT__();
    v14 = pklog_handle_for_category();
    if (os_signpost_enabled(v14))
    {
      v16 = 138543618;
      v17 = namedCopy;
      v18 = 1026;
      v19 = v13 != 0;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ExtensionSubsystemInit", " name=%{public, signpost.description:attribute}@  success=%{public, signpost.description:attribute}d ", &v16, 0x12u);
    }

    if (v13)
    {
      if ([v13 conformsToProtocol:&unk_1EF2A0C50])
      {
        goto LABEL_20;
      }

      v11 = pklog_handle_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [EXPKService discoverSubsystemNamed:options:required:];
      }
    }

    else
    {
      v11 = pklog_handle_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [EXPKService discoverSubsystemNamed:options:required:];
      }
    }
  }

  else if (requiredCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [EXPKService discoverSubsystemNamed:options:required:];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v16 = 138543362;
    v17 = namedCopy;
    _os_log_impl(&dword_1847D1000, v11, OS_LOG_TYPE_INFO, "Bootstrapping; external subsystem [%{public}@] not present, skipping", &v16, 0xCu);
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (void)launchContainingApplicationForPlugInNamed:(id)named
{
  v3 = pklog_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(EXPKService *)v3 launchContainingApplicationForPlugInNamed:v4, v5, v6, v7, v8, v9, v10];
  }
}

- (id)defaultsForPlugInNamed:(id)named
{
  v3 = [(EXPKService *)self personalityNamed:named];
  preferences = [v3 preferences];

  return preferences;
}

- (id)plugInPrincipalForPlugInNamed:(id)named
{
  v3 = [(EXPKService *)self personalityNamed:named];
  plugInPrincipal = [v3 plugInPrincipal];

  return plugInPrincipal;
}

- (id)hostPrincipalForPlugInNamed:(id)named
{
  v3 = [(EXPKService *)self personalityNamed:named];
  hostPrincipal = [v3 hostPrincipal];

  return hostPrincipal;
}

- (id)embeddedPrincipalForPlugInNamed:(id)named
{
  v3 = [(EXPKService *)self personalityNamed:named];
  embeddedPrincipal = [v3 embeddedPrincipal];

  return embeddedPrincipal;
}

- (id)connectionForPlugInNamed:(id)named
{
  v3 = [(EXPKService *)self personalityNamed:named];
  connection = [v3 connection];

  return connection;
}

- (void)setSolePersonality:(id)personality
{
  personalityCopy = personality;
  os_unfair_lock_lock(&self->_personalityLock);
  solePersonality = self->_solePersonality;
  self->_solePersonality = personalityCopy;

  os_unfair_lock_unlock(&self->_personalityLock);
}

- (PKServicePersonality)solePersonality
{
  os_unfair_lock_lock(&self->_personalityLock);
  v3 = self->_solePersonality;
  os_unfair_lock_unlock(&self->_personalityLock);
  if (!v3)
  {
    v4 = pklog_handle_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(EXPKService *)self solePersonality];
    }
  }

  return v3;
}

- (id)personalityNamed:(id)named
{
  namedCopy = named;
  os_unfair_lock_lock(&self->_personalityLock);
  if (namedCopy)
  {
    personalities = [(EXPKService *)self personalities];
    v6 = [personalities objectForKeyedSubscript:namedCopy];

    if ([v6 count] == 1)
    {
      allValues = [v6 allValues];
      v8 = [allValues objectAtIndexedSubscript:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = self->_solePersonality;
  }

  os_unfair_lock_unlock(&self->_personalityLock);

  return v8;
}

- (id)personalityNamed:(id)named forHostPid:(int)pid
{
  v4 = *&pid;
  namedCopy = named;
  os_unfair_lock_lock(&self->_personalityLock);
  personalities = [(EXPKService *)self personalities];
  v8 = [personalities objectForKeyedSubscript:namedCopy];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v10 = [v8 objectForKeyedSubscript:v9];

  os_unfair_lock_unlock(&self->_personalityLock);

  return v10;
}

- (void)registerPersonality:(id)personality
{
  v28 = *MEMORY[0x1E69E9840];
  personalityCopy = personality;
  os_unfair_lock_lock(&self->_personalityLock);
  personalities = [(EXPKService *)self personalities];
  identifier = [personalityCopy identifier];
  dictionary = [personalities objectForKeyedSubscript:identifier];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    personalities2 = [(EXPKService *)self personalities];
    identifier2 = [personalityCopy identifier];
    [personalities2 setObject:dictionary forKeyedSubscript:identifier2];
  }

  v10 = MEMORY[0x1E696AD98];
  connection = [personalityCopy connection];
  v12 = [v10 numberWithInt:{objc_msgSend(connection, "processIdentifier")}];
  [dictionary setObject:personalityCopy forKeyedSubscript:v12];

  personalities3 = [(EXPKService *)self personalities];
  if ([personalities3 count] == 1)
  {
    v14 = [dictionary count];

    if (v14 == 1)
    {
      v15 = pklog_handle_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [personalityCopy uuid];
        identifier3 = [personalityCopy identifier];
        version = [personalityCopy version];
        v22 = 138543874;
        v23 = uuid;
        v24 = 2112;
        v25 = identifier3;
        v26 = 2112;
        v27 = version;
        _os_log_impl(&dword_1847D1000, v15, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Set sole personality.", &v22, 0x20u);
      }

      v19 = personalityCopy;
      solePersonality = self->_solePersonality;
      self->_solePersonality = v19;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v21 = pklog_handle_for_category();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [(EXPKService *)personalityCopy registerPersonality:v21];
  }

  solePersonality = self->_solePersonality;
  self->_solePersonality = 0;
LABEL_12:

  os_unfair_lock_unlock(&self->_personalityLock);
}

- (BOOL)unregisterPersonality:(id)personality
{
  v25 = *MEMORY[0x1E69E9840];
  personalityCopy = personality;
  os_unfair_lock_lock(&self->_personalityLock);
  personalities = [(EXPKService *)self personalities];
  v6 = [personalities count];

  if (v6)
  {
    personalities2 = [(EXPKService *)self personalities];
    identifier = [(PKServicePersonality *)personalityCopy identifier];
    v9 = [personalities2 objectForKeyedSubscript:identifier];

    v6 = MEMORY[0x1E696AD98];
    connection = [(PKServicePersonality *)personalityCopy connection];
    v11 = [v6 numberWithInt:{objc_msgSend(connection, "processIdentifier")}];

    v12 = [v9 objectForKeyedSubscript:v11];
    LOBYTE(v6) = v12 != 0;

    if (v12)
    {
      [v9 removeObjectForKey:v11];
      if (self->_solePersonality == personalityCopy)
      {
        v13 = pklog_handle_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [(PKServicePersonality *)personalityCopy uuid];
          identifier2 = [(PKServicePersonality *)personalityCopy identifier];
          version = [(PKServicePersonality *)personalityCopy version];
          v19 = 138543874;
          v20 = uuid;
          v21 = 2112;
          v22 = identifier2;
          v23 = 2112;
          v24 = version;
          _os_log_impl(&dword_1847D1000, v13, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Removed sole personality.", &v19, 0x20u);
        }

        solePersonality = self->_solePersonality;
        self->_solePersonality = 0;
      }
    }
  }

  os_unfair_lock_unlock(&self->_personalityLock);

  return v6;
}

- (void)checkEnvironment:(id)environment
{
  *&v7[1023] = *MEMORY[0x1E69E9840];
  bzero(v7, 0x3FFuLL);
  __s = 63;
  getpid();
  if (sandbox_container_path_for_pid())
  {
    v3 = pklog_handle_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [EXPKService checkEnvironment:v3];
    }
  }

  else if (strlen(&__s) > 1)
  {
    return;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"plugin has invalid sandbox or container: error %d path %s", *__error(), &__s];
  v5 = pklog_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [EXPKService checkEnvironment:];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@", v4}];
}

- (void)scheduleTermination:(double)termination
{
  timerQueue = [(EXPKService *)self timerQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__EXPKService_scheduleTermination___block_invoke;
  v6[3] = &unk_1E6E4E7A0;
  v6[4] = self;
  *&v6[5] = termination;
  dispatch_async(timerQueue, v6);
}

void __35__EXPKService_scheduleTermination___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) terminationTimer];

  if (v2)
  {
    v3 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
    v9 = [*(a1 + 32) terminationTimer];
    dispatch_source_set_timer(v9, v3, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  else
  {
    v4 = [*(a1 + 32) timerQueue];
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);
    [*(a1 + 32) setTerminationTimer:v5];

    v6 = [*(a1 + 32) terminationTimer];
    dispatch_source_set_event_handler(v6, &__block_literal_global_95);

    v7 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
    v8 = [*(a1 + 32) terminationTimer];
    dispatch_source_set_timer(v8, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

    v9 = [*(a1 + 32) terminationTimer];
    dispatch_resume(v9);
  }
}

uint64_t __35__EXPKService_scheduleTermination___block_invoke_2()
{
  v0 = pklog_handle_for_category();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1847D1000, v0, OS_LOG_TYPE_DEFAULT, "Exiting when clean", v2, 2u);
  }

  return xpc_transaction_exit_clean();
}

- (void)cancelTermination
{
  timerQueue = [(EXPKService *)self timerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__EXPKService_cancelTermination__block_invoke;
  block[3] = &unk_1E6E4DC28;
  block[4] = self;
  dispatch_async(timerQueue, block);
}

void __32__EXPKService_cancelTermination__block_invoke(uint64_t a1)
{
  xpc_transaction_interrupt_clean_exit();
  v2 = [*(a1 + 32) terminationTimer];

  if (v2)
  {
    v3 = [*(a1 + 32) terminationTimer];
    dispatch_source_cancel(v3);

    v4 = *(a1 + 32);

    [v4 setTerminationTimer:0];
  }
}

void __18__EXPKService_run__block_invoke_2_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = 0x4000000000000000;
  OUTLINED_FUNCTION_8(&dword_1847D1000, a1, a3, "WARNING: Did not receive handshake message from the host after waiting ~%0.0f seconds. THIS MAY BE A SPURIOUS LAUNCH OF THE PLUGIN due to a message to an XPC endpoint other than the main service endpoint, or the CPU is highly contended and this extension or its host is not getting enough CPU time.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)discoverSubsystemNamed:options:required:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(&dword_1847D1000, v0, OS_LOG_TYPE_FAULT, "Bootstrapping; misconfigured plugin; external subsystem [%{public}@] not present; possible missing linkage", v1, 0xCu);
}

- (void)launchContainingApplicationForPlugInNamed:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[EXPKService launchContainingApplicationForPlugInNamed:]";
  OUTLINED_FUNCTION_8(&dword_1847D1000, a1, a3, "%s unsupported", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)solePersonality
{
  v5 = *MEMORY[0x1E69E9840];
  personalities = [self personalities];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_1847D1000, a2, OS_LOG_TYPE_ERROR, "WARNING! Sole personality requested when nil; THIS MAY BE A SPURIOUS LAUNCH OF THE PLUGIN due to a message to an XPC endpoint other than the main service endpoint; personalities: %@", v4, 0xCu);
}

- (void)registerPersonality:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [a1 uuid];
  v7 = [a1 identifier];
  v8 = [a1 version];
  v9 = [a2 personalities];
  v10 = 138544130;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  v16 = 2112;
  v17 = v9;
  _os_log_error_impl(&dword_1847D1000, a3, OS_LOG_TYPE_ERROR, "[u %{public}@] [%@(%@)] WARNING! Sole personality is ambiguous; this may lead to erratic behavior; personalities: %@", &v10, 0x2Au);
}

@end