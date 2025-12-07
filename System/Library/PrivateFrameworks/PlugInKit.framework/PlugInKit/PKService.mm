@interface PKService
+ (id)defaultService;
+ (void)main;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)unregisterPersonality:(id)personality;
- (NSXPCListenerEndpoint)endpoint;
- (PKService)init;
- (PKService)initWithExternalProviders:(id)providers;
- (PKServicePersonality)solePersonality;
- (id)configuredSubsystemList;
- (id)connectionForPlugInNamed:(id)named;
- (id)defaultsForPlugInNamed:(id)named;
- (id)discoverSubsystemNamed:(id)named options:(id)options required:(BOOL)required;
- (id)embeddedPrincipalForPlugInNamed:(id)named;
- (id)hostPrincipalForPlugInNamed:(id)named;
- (id)personalityNamed:(id)named;
- (id)personalityNamed:(id)named forHostPid:(int)pid;
- (id)plugInPrincipalForPlugInNamed:(id)named;
- (void)_prepareToRunUsingServiceListener:(BOOL)listener;
- (void)beganUsingServicePersonality:(id)personality;
- (void)cancelTermination;
- (void)checkEnvironment:(id)environment;
- (void)checkIn;
- (void)discoverSubsystems;
- (void)launchContainingApplicationForPlugInNamed:(id)named;
- (void)mergeSubsystemList:(id)list from:(id)from;
- (void)mergeSubsystems:(id)subsystems from:(id)from;
- (void)registerPersonality:(id)personality;
- (void)runUsingServiceListener:(BOOL)listener;
- (void)scheduleTermination:(double)termination;
- (void)setSolePersonality:(id)personality;
@end

@implementation PKService

- (void)discoverSubsystems
{
  v31 = *MEMORY[0x1E69E9840];
  configuredSubsystemList = [(PKService *)self configuredSubsystemList];
  if ([(PKService *)self isSystemService])
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

  v7 = xpc_dictionary_get_value(v5, "SubsystemOptions");
  if (!v7)
  {
    goto LABEL_9;
  }

  v4 = _CFXPCCreateCFObjectFromXPCObject();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = pklog_handle_for_category(8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1C68B6C08(v8);
    }

LABEL_9:
    v4 = 0;
  }

LABEL_12:
  v9 = pklog_handle_for_category(8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    preferredLocalizations = [mainBundle preferredLocalizations];
    *buf = 138412290;
    v30 = preferredLocalizations;
    _os_log_impl(&dword_1C6892000, v9, OS_LOG_TYPE_INFO, "Bootstrapping; Preferred localizations: %@", buf, 0xCu);
  }

LABEL_15:
  array = [MEMORY[0x1E695DF70] array];
  [(PKService *)self checkIn];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = configuredSubsystemList;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = *v25;
    do
    {
      v16 = 0;
      if (v14 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v14;
      }

      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(PKService *)self discoverSubsystemNamed:*(*(&v24 + 1) + 8 * v16) options:v4 required:1, v24];
        if (v18)
        {
          [array addObject:v18];
        }

        ++v16;
      }

      while (v17 != v16);
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v19 = "NSViewService_PKSubsystem";
  v20 = &off_1E827F9B0;
  do
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v19, v24}];
    if ((!v13 || ([v13 containsObject:v22] & 1) == 0) && -[PKService _processDefaultSubsystemName:](self, "_processDefaultSubsystemName:", v22))
    {
      v23 = [(PKService *)self discoverSubsystemNamed:v22 options:v4 required:0];
      if (v23)
      {
        [array addObject:v23];
      }
    }

    v21 = *v20++;
    v19 = v21;
  }

  while (v21);
  [(PKService *)self setSubsystems:array];
}

- (void)checkIn
{
  if (objc_opt_class())
  {
    currentProcess = [MEMORY[0x1E69C75C8] currentProcess];
    v3 = pklog_handle_for_category(7);
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "KernelMemoryStatus", &unk_1C68BDED5, buf, 2u);
    }

    getpid();
    memorystatus_control();
    v4 = pklog_handle_for_category(7);
    if (os_signpost_enabled(v4))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "KernelMemoryStatus", &unk_1C68BDED5, v5, 2u);
    }
  }
}

+ (id)defaultService
{
  if (qword_1ED6EF088 != -1)
  {
    sub_1C6896F44();
  }

  v3 = qword_1ED6EF078;

  return v3;
}

- (id)configuredSubsystemList
{
  external = [(PKService *)self external];
  filesystem = [external filesystem];
  mainBundle = [filesystem mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v7 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];
  if (!v7)
  {
    v7 = [infoDictionary objectForKeyedSubscript:@"PlugInKit"];
  }

  array = [MEMORY[0x1E695DF70] array];
  [(PKService *)self mergeSubsystems:array from:v7];

  return array;
}

+ (void)main
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = pklog_handle_for_category(7);
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ExtensionStartup", &unk_1C68BDED5, buf, 2u);
  }

  v3 = pklog_handle_for_category(7);
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ExtensionStartupXPCReady", &unk_1C68BDED5, buf, 2u);
  }

  v41 = 0u;
  memset(v42, 0, sizeof(v42));
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *buf = 0u;
  v10 = 0;
  v11 = 0;
  current_persona = voucher_get_current_persona();
  v5 = current_persona;
  *buf = 0u;
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
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  memset(v42, 0, sizeof(v42));
  *buf = 1;
  pklog_get_persona_type_and_name(current_persona, buf, &v11, &v10);
  v6 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = geteuid();
    v8 = getuid();
    *v12 = 67110146;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v5;
    v18 = 2080;
    v19 = v11;
    v20 = 2080;
    v21 = v10;
    _os_log_impl(&dword_1C6892000, v6, OS_LOG_TYPE_DEFAULT, "Hello, I'm launching as euid = %d, uid = %d, personaid = %d, type = %s, name = %s", v12, 0x28u);
  }

  v9 = +[PKService defaultService];
  [v9 run];
}

- (PKService)init
{
  v3 = objc_opt_new();
  v4 = [(PKService *)self initWithExternalProviders:v3];

  return v4;
}

- (PKServicePersonality)solePersonality
{
  os_unfair_lock_lock(&self->_personalityLock);
  v3 = self->_solePersonality;
  os_unfair_lock_unlock(&self->_personalityLock);
  if (!v3)
  {
    v4 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B6DE4(self, v4);
    }
  }

  return v3;
}

- (void)beganUsingServicePersonality:(id)personality
{
  personalityCopy = personality;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1C68AAA44;
  v7[3] = &unk_1E827F1A0;
  v8 = personalityCopy;
  selfCopy = self;
  v5 = qword_1ED6EF120;
  v6 = personalityCopy;
  if (v5 != -1)
  {
    dispatch_once(&qword_1ED6EF120, v7);
  }
}

- (NSXPCListenerEndpoint)endpoint
{
  serviceListener = [(PKService *)self serviceListener];
  endpoint = [serviceListener endpoint];

  return endpoint;
}

- (PKService)initWithExternalProviders:(id)providers
{
  v17 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  v14.receiver = self;
  v14.super_class = PKService;
  v6 = [(PKService *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_external, providers);
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    [(PKService *)v7 setPersonalities:v8];

    v9 = dispatch_queue_create("timer queue", 0);
    timerQueue = v7->_timerQueue;
    v7->_timerQueue = v9;

    v7->_personalityLock._os_unfair_lock_opaque = 0;
    active_platform = dyld_get_active_platform();
    v12 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v16 = active_platform;
      _os_log_impl(&dword_1C6892000, v12, OS_LOG_TYPE_INFO, "setting extensionPointPlatform: %u", buf, 8u);
    }

    [(PKService *)v7 setExtensionPointPlatform:active_platform];
  }

  return v7;
}

- (void)runUsingServiceListener:(BOOL)listener
{
  listenerCopy = listener;
  if (+[PKCapabilities supportsAutoreleasePoolDuringPlugInLaunch])
  {
    v5 = objc_autoreleasePoolPush();
    [(PKService *)self _prepareToRunUsingServiceListener:listenerCopy];
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    [(PKService *)self _prepareToRunUsingServiceListener:listenerCopy];
  }

  timerQueue = [(PKService *)self timerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C68AAFE0;
  block[3] = &unk_1E827F1C8;
  block[4] = self;
  dispatch_sync(timerQueue, block);

  v7 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C6892000, v7, OS_LOG_TYPE_DEFAULT, "Bootstrapping; Bootstrap complete. Ready for handshake from host.", v10, 2u);
  }

  v8 = pklog_handle_for_category(7);
  if (os_signpost_enabled(v8))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ExtensionStartupXPCReady", &unk_1C68BDED5, v10, 2u);
  }

  serviceListener = [(PKService *)self serviceListener];
  __PLUGINKIT_HANDING_CONTROL_TO_MAIN_SERVICE_LISTENER__(serviceListener);
}

- (void)_prepareToRunUsingServiceListener:(BOOL)listener
{
  listenerCopy = listener;
  [(PKService *)self checkEnvironment:0];
  if (listenerCopy)
  {
    [MEMORY[0x1E696B0D8] serviceListener];
  }

  else
  {
    [MEMORY[0x1E696B0D8] anonymousListener];
  }
  v5 = ;
  [(PKService *)self setServiceListener:v5];

  serviceListener = [(PKService *)self serviceListener];
  [serviceListener setDelegate:self];

  [(PKService *)self discoverSubsystems];
  external = [(PKService *)self external];
  filesystem = [external filesystem];
  mainBundle = [filesystem mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v11 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];
  if (!v11)
  {
    v11 = [infoDictionary objectForKeyedSubscript:@"PlugInKit"];
  }

  v12 = [v11 objectForKeyedSubscript:@"Delegate"];
  v13 = v12;
  if (v12)
  {
    v14 = objc_lookUpClass([v12 UTF8String]);
    if (v14)
    {
      v15 = v14;
      if ([(objc_class *)v14 conformsToProtocol:&unk_1F464CFD8])
      {
        v16 = objc_alloc_init(v15);
        if (v16)
        {
          [(PKService *)self setDelegate:v16];
LABEL_18:

          goto LABEL_19;
        }

LABEL_10:
        v17 = pklog_handle_for_category(7);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1C68B6B50();
        }

        goto LABEL_18;
      }

      v18 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B6AF4();
      }
    }

    v16 = 0;
    goto LABEL_10;
  }

LABEL_19:
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  serviceListener = [(PKService *)self serviceListener];

  if (serviceListener == listenerCopy)
  {
    v9 = [[PKServicePersonality alloc] initWithConnection:connectionCopy service:self];
  }

  else
  {
    v9 = pklog_handle_for_category(7);
    if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B6BAC();
    }
  }

  return serviceListener == listenerCopy;
}

- (void)mergeSubsystems:(id)subsystems from:(id)from
{
  subsystemsCopy = subsystems;
  fromCopy = from;
  v7 = [fromCopy objectForKeyedSubscript:@"Subsystems"];
  [(PKService *)self mergeSubsystemList:subsystemsCopy from:v7];

  v8 = [fromCopy objectForKeyedSubscript:@"NSExtensionPointIdentifier"];
  if (!v8)
  {
    v8 = [fromCopy objectForKeyedSubscript:@"SDK"];
  }

  if (v8)
  {
    extensionPointPlatform = [(PKService *)self extensionPointPlatform];
    external = [(PKService *)self external];
    v11 = [PKPlugInCore readSDKDictionary:v8 forPlatform:extensionPointPlatform externalProviders:external];

    v12 = [v11 objectForKeyedSubscript:@"NSExtension"];
    v13 = [v12 objectForKeyedSubscript:@"Subsystems"];
    [(PKService *)self mergeSubsystemList:subsystemsCopy from:v13];

    v14 = [v11 objectForKeyedSubscript:@"XPCService"];
    v15 = [v14 objectForKeyedSubscript:@"ServiceType"];

    if ([v15 isEqualToString:@"System"])
    {
      [(PKService *)self setIsSystemService:1];
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
      v9 = *v14;
      do
      {
        v10 = 0;
        if (v8 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v8;
        }

        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * v10);
          if (([listCopy containsObject:v12] & 1) == 0)
          {
            [listCopy addObject:v12];
          }

          ++v10;
        }

        while (v11 != v10);
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
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
  v10 = pklog_handle_for_category(8);
  v11 = v10;
  if (v9)
  {
    if (os_signpost_enabled(v10))
    {
      v16 = 138543362;
      v17 = namedCopy;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ExtensionSubsystemInit", " name=%{public, signpost.description:attribute}@ ", &v16, 0xCu);
    }

    v12 = pklog_handle_for_category(8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 138543362;
      v17 = namedCopy;
      _os_log_impl(&dword_1C6892000, v12, OS_LOG_TYPE_INFO, "Bootstrapping; external subsystem [%{public}@] initializing", &v16, 0xCu);
    }

    v13 = __PLUGINKIT_CALLING_OUT_TO_CLIENT_SUBSYSTEM_FOR_INIT__(v9, optionsCopy);
    v14 = pklog_handle_for_category(8);
    if (os_signpost_enabled(v14))
    {
      v16 = 138543618;
      v17 = namedCopy;
      v18 = 1026;
      v19 = v13 != 0;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ExtensionSubsystemInit", " name=%{public, signpost.description:attribute}@  success=%{public, signpost.description:attribute}d ", &v16, 0x12u);
    }

    if (v13)
    {
      if ([v13 conformsToProtocol:&unk_1F464D0C0])
      {
        goto LABEL_20;
      }

      v11 = pklog_handle_for_category(8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B6C4C();
      }
    }

    else
    {
      v11 = pklog_handle_for_category(8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B6CA8();
      }
    }
  }

  else if (requiredCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1C68B6D04();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v16 = 138543362;
    v17 = namedCopy;
    _os_log_impl(&dword_1C6892000, v11, OS_LOG_TYPE_INFO, "Bootstrapping; external subsystem [%{public}@] not present, skipping", &v16, 0xCu);
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (void)launchContainingApplicationForPlugInNamed:(id)named
{
  v3 = pklog_handle_for_category(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1C68B6D6C(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (id)defaultsForPlugInNamed:(id)named
{
  v3 = [(PKService *)self personalityNamed:named];
  preferences = [v3 preferences];

  return preferences;
}

- (id)plugInPrincipalForPlugInNamed:(id)named
{
  v3 = [(PKService *)self personalityNamed:named];
  plugInPrincipal = [v3 plugInPrincipal];

  return plugInPrincipal;
}

- (id)hostPrincipalForPlugInNamed:(id)named
{
  v3 = [(PKService *)self personalityNamed:named];
  hostPrincipal = [v3 hostPrincipal];

  return hostPrincipal;
}

- (id)embeddedPrincipalForPlugInNamed:(id)named
{
  v3 = [(PKService *)self personalityNamed:named];
  embeddedPrincipal = [v3 embeddedPrincipal];

  return embeddedPrincipal;
}

- (id)connectionForPlugInNamed:(id)named
{
  v3 = [(PKService *)self personalityNamed:named];
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

- (id)personalityNamed:(id)named
{
  namedCopy = named;
  os_unfair_lock_lock(&self->_personalityLock);
  if (namedCopy)
  {
    personalities = [(PKService *)self personalities];
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
  personalities = [(PKService *)self personalities];
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
  personalities = [(PKService *)self personalities];
  identifier = [personalityCopy identifier];
  dictionary = [personalities objectForKeyedSubscript:identifier];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    personalities2 = [(PKService *)self personalities];
    identifier2 = [personalityCopy identifier];
    [personalities2 setObject:dictionary forKeyedSubscript:identifier2];
  }

  v10 = MEMORY[0x1E696AD98];
  connection = [personalityCopy connection];
  v12 = [v10 numberWithInt:{objc_msgSend(connection, "processIdentifier")}];
  [dictionary setObject:personalityCopy forKeyedSubscript:v12];

  personalities3 = [(PKService *)self personalities];
  if ([personalities3 count] == 1)
  {
    v14 = [dictionary count];

    if (v14 == 1)
    {
      v15 = pklog_handle_for_category(7);
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
        _os_log_impl(&dword_1C6892000, v15, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Set sole personality.", &v22, 0x20u);
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

  v21 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_1C68B6E70(personalityCopy, self, v21);
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
  personalities = [(PKService *)self personalities];
  v6 = [personalities count];

  if (v6)
  {
    personalities2 = [(PKService *)self personalities];
    identifier = [(PKPlugInCore *)personalityCopy identifier];
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
        v13 = pklog_handle_for_category(7);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [(PKPlugInCore *)personalityCopy uuid];
          identifier2 = [(PKPlugInCore *)personalityCopy identifier];
          version = [(PKPlugInCore *)personalityCopy version];
          v19 = 138543874;
          v20 = uuid;
          v21 = 2112;
          v22 = identifier2;
          v23 = 2112;
          v24 = version;
          _os_log_impl(&dword_1C6892000, v13, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Removed sole personality.", &v19, 0x20u);
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
  v13 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  __s[0] = 63;
  external = [(PKService *)self external];
  sandbox = [external sandbox];
  external2 = [(PKService *)self external];
  v7 = [external2 sys];
  v8 = [sandbox sandbox_container_path_for_pid:objc_msgSend(v7 buffer:"getpid") bufsize:{__s, 1024}];

  if (v8)
  {
    v9 = pklog_handle_for_category(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B6F78(v9);
    }
  }

  else if (strlen(__s) > 1)
  {
    return;
  }

  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"plugin has invalid sandbox or container: error %d path %s", *__error(), __s];
  v11 = pklog_handle_for_category(4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1C68B6FBC();
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@", v10}];
}

- (void)scheduleTermination:(double)termination
{
  timerQueue = [(PKService *)self timerQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1C68AC42C;
  v6[3] = &unk_1E827F178;
  v6[4] = self;
  *&v6[5] = termination;
  dispatch_sync(timerQueue, v6);
}

- (void)cancelTermination
{
  timerQueue = [(PKService *)self timerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C68AC6DC;
  block[3] = &unk_1E827F1C8;
  block[4] = self;
  dispatch_sync(timerQueue, block);
}

@end