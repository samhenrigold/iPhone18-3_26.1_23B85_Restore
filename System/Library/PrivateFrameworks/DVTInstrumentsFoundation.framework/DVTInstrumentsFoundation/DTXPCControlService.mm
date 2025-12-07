@interface DTXPCControlService
- (DTXPCControlService)initWithChannel:(id)channel;
- (id)launchSuspendedProcessWithDevicePath:(id)path bundleIdentifier:(id)identifier environment:(id)environment arguments:(id)arguments options:(id)options;
- (void)messageReceived:(id)received;
- (void)observeServicesWithIdentifier:(id)identifier requestingProcess:(int)process environment:(id)environment arguments:(id)arguments options:(id)options;
- (void)requestDebugLaunchOfDaemonWithSpecifier:(id)specifier programPath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options;
- (void)stopObservationsForIdentifier:(id)identifier requestingProcess:(int)process;
@end

@implementation DTXPCControlService

- (DTXPCControlService)initWithChannel:(id)channel
{
  v12 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  v9.receiver = self;
  v9.super_class = DTXPCControlService;
  v5 = [(DTProcessControlService *)&v9 initWithChannel:channelCopy];
  if (v5)
  {
    if (sub_247FD55F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v11 = v5;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "XPCControlService %p", buf, 0xCu);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_247FD563C;
    v7[3] = &unk_278EF1070;
    v8 = v5;
    [channelCopy registerDisconnectHandler:v7];
  }

  return v5;
}

- (id)launchSuspendedProcessWithDevicePath:(id)path bundleIdentifier:(id)identifier environment:(id)environment arguments:(id)arguments options:(id)options
{
  v39 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  identifierCopy = identifier;
  environmentCopy = environment;
  argumentsCopy = arguments;
  optionsCopy = options;
  if (sub_247FD55F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v30 = pathCopy;
    v31 = 2112;
    v32 = identifierCopy;
    v33 = 2112;
    v34 = environmentCopy;
    v35 = 2112;
    v36 = argumentsCopy;
    v37 = 2112;
    v38 = optionsCopy;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCControlService launchSuspendedProcessWithDevicePath called: path=%@, bundleIdentifier=%@, environment=%@, arguments=%@, options=%@", buf, 0x34u);
  }

  if (![identifierCopy length])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid bundle identifier"];
  }

  v17 = [optionsCopy mutableCopy];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;

  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"OnceOnly"];
  v21 = objc_alloc_init(MEMORY[0x277D03670]);
  v22 = +[DTXPCServiceController sharedInstance];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_247FD596C;
  v27[3] = &unk_278EF3718;
  v27[4] = self;
  v23 = v21;
  v28 = v23;
  [v22 registerClient:self forXPCService:identifierCopy environment:environmentCopy arguments:argumentsCopy options:v20 handler:v27];

  v24 = v28;
  v25 = v23;

  return v23;
}

- (void)messageReceived:(id)received
{
  if (*MEMORY[0x277D03698] == received)
  {
    v5 = +[DTXPCServiceController sharedInstance];
    [v5 unregisterClient:self withIdentifier:0 parent:0];
  }
}

- (void)observeServicesWithIdentifier:(id)identifier requestingProcess:(int)process environment:(id)environment arguments:(id)arguments options:(id)options
{
  v10 = *&process;
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  environmentCopy = environment;
  argumentsCopy = arguments;
  optionsCopy = options;
  if (sub_247FD55F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v27 = identifierCopy;
    v28 = 1024;
    v29 = v10;
    v30 = 2112;
    v31 = environmentCopy;
    v32 = 2112;
    v33 = argumentsCopy;
    v34 = 2112;
    v35 = optionsCopy;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCControlService observeServicesWithIdentifier called: serviceID=%@, requestingProcess=%d, environment=%@, arguments=%@, options=%@", buf, 0x30u);
  }

  v16 = [optionsCopy mutableCopy];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = objc_opt_new();
  }

  v19 = v18;

  v20 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  [v19 setObject:v20 forKeyedSubscript:@"RequestingPid"];

  v21 = +[DTXPCServiceController sharedInstance];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_247FD5D64;
  v23[3] = &unk_278EF3718;
  v24 = v19;
  selfCopy = self;
  v22 = v19;
  [v21 registerClient:self forXPCService:identifierCopy environment:environmentCopy arguments:argumentsCopy options:v22 handler:v23];
}

- (void)requestDebugLaunchOfDaemonWithSpecifier:(id)specifier programPath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options
{
  v32 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  pathCopy = path;
  environmentCopy = environment;
  argumentsCopy = arguments;
  optionsCopy = options;
  if (sub_247FD55F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v23 = specifierCopy;
    v24 = 2112;
    v25 = pathCopy;
    v26 = 2112;
    v27 = environmentCopy;
    v28 = 2112;
    v29 = argumentsCopy;
    v30 = 2112;
    v31 = optionsCopy;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCControlService requestDebugLaunchOfDaemonWithSpecifier called: specifier=%@, programPath=%@, environment=%@, arguments=%@, options=%@", buf, 0x34u);
  }

  v17 = +[DTXPCServiceController sharedInstance];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_247FD5FFC;
  v19[3] = &unk_278EF3718;
  v20 = optionsCopy;
  selfCopy = self;
  v18 = optionsCopy;
  [v17 requestDebugLaunchOfDaemonWithSpecifier:specifierCopy programPath:pathCopy environment:environmentCopy arguments:argumentsCopy options:v18 handler:v19];
}

- (void)stopObservationsForIdentifier:(id)identifier requestingProcess:(int)process
{
  v4 = *&process;
  identifierCopy = identifier;
  v7 = +[DTXPCServiceController sharedInstance];
  [v7 unregisterClient:self withIdentifier:identifierCopy parent:v4];
}

@end