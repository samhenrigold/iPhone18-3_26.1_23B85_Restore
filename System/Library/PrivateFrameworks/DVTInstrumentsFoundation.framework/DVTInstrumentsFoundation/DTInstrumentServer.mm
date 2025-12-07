@interface DTInstrumentServer
+ (unsigned)taskForPid:(int)pid;
+ (void)_taskInvalid:(unsigned int)invalid forPid:(int)pid;
+ (void)_tfpPortReceived:(unsigned int)received;
+ (void)takeOwnershipOfSharedAuthorization:(void *)authorization;
- (DTInstrumentServer)initWithTransport:(id)transport;
- (id)_blessSimulatorHub:(int)hub;
- (void)loadServicesAtPath:(id)path;
@end

@implementation DTInstrumentServer

- (DTInstrumentServer)initWithTransport:(id)transport
{
  v36 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  v33.receiver = self;
  v33.super_class = DTInstrumentServer;
  v5 = [(DTInstrumentServer *)&v33 init];
  v6 = v5;
  if (v5)
  {
    if (transportCopy)
    {
      v7 = [objc_alloc(MEMORY[0x277D03650]) initWithTransport:transportCopy];
      [v7 setMaximumEnqueueSize:0x800000];
      [v7 setDispatchTarget:v6];
      v31[0] = 0;
      v31[1] = v31;
      v31[2] = 0x3032000000;
      v31[3] = sub_247FB1D94;
      v31[4] = sub_247FB1DA4;
      v32 = os_transaction_create();
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_247FB1DAC;
      v30[3] = &unk_278EF1D40;
      v30[4] = v31;
      [v7 registerDisconnectHandler:v30];
      [v7 setChannelHandler:&unk_285A18830];
      v8 = objc_opt_new();
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = v9;
      if (v9 && ([v9 executablePath], v11 = objc_claimAutoreleasedReturnValue(), (v27 = v11) != 0))
      {
        if ([v11 length])
        {
          [v8 addObject:v27];
        }
      }

      else
      {
        v27 = 0;
      }

      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      executablePath = [mainBundle executablePath];

      if (executablePath && [executablePath length])
      {
        [v8 addObject:executablePath];
      }

      if (v10)
      {
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        bundlePath = [mainBundle2 bundlePath];
        bundlePath2 = [v10 bundlePath];
        v17 = [bundlePath isEqualToString:bundlePath2];

        if (v17)
        {
          bundleURL = [v10 bundleURL];
          uRLByDeletingPathExtension = [bundleURL URLByDeletingPathExtension];
          lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

          if (lastPathComponent)
          {
            bundlePath3 = [v10 bundlePath];
            v22 = [bundlePath3 stringByAppendingPathComponent:lastPathComponent];

            if (v22 && [v22 length])
            {
              [v8 addObject:v22];
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v35 = v10;
            _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to construct base name for DTInstrumentServer bundle '%@'", buf, 0xCu);
          }
        }
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_247FB1E38;
      v28[3] = &unk_278EF2CC0;
      v23 = v7;
      v29 = v23;
      [v8 enumerateObjectsUsingBlock:v28];
      if (![v8 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "no services to publish - this DTXConnection is likely to be useless", buf, 2u);
      }

      [v23 publishCapability:@"com.apple.dt.Instruments.inlineCapabilities" withVersion:1 forClass:0];
      connection = v6->_connection;
      v6->_connection = v23;
      v25 = v23;

      _Block_object_dispose(v31, 8);
    }

    else
    {

      v6 = 0;
    }
  }

  return v6;
}

- (void)loadServicesAtPath:(id)path
{
  v40 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v4 = DVTIUCurrentDylibRootPath();
  v5 = [v4 stringByAppendingPathComponent:pathCopy];

  [MEMORY[0x277CCAA00] defaultManager];
  v25 = v34 = 0;
  v28 = v5;
  v6 = [v25 contentsOfDirectoryAtPath:v5 error:&v34];
  v24 = v34;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        pathExtension = [v12 pathExtension];
        v14 = [pathExtension isEqualToString:@"bundle"];

        if (v14)
        {
          v15 = [v28 stringByAppendingPathComponent:v12];
          v16 = [MEMORY[0x277CCA8D8] bundleWithPath:v15];
          if ([v16 isLoaded])
          {
            v17 = 0;
          }

          else
          {
            v29 = 0;
            v18 = [v16 loadAndReturnError:&v29];
            v17 = v29;
            if ((v18 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              bundlePath = [v16 bundlePath];
              uTF8String = [bundlePath UTF8String];
              localizedDescription = [v17 localizedDescription];
              uTF8String2 = [localizedDescription UTF8String];
              *buf = 136446466;
              v36 = uTF8String;
              v37 = 2082;
              v38 = uTF8String2;
              _os_log_error_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to register services in bundle %{public}s - bundle could not be loaded: %{public}s", buf, 0x16u);
            }
          }

          connection = self->_connection;
          executablePath = [v16 executablePath];
          [(DTXConnection *)connection publishServicesInImagePath:executablePath];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v9);
  }
}

+ (void)takeOwnershipOfSharedAuthorization:(void *)authorization
{
  if (authorization)
  {
    obj = self;
    objc_sync_enter(obj);
    qword_27EE84318 = authorization;
    objc_sync_exit(obj);
  }
}

+ (unsigned)taskForPid:(int)pid
{
  v3 = *&pid;
  if (qword_27EE84320 != -1)
  {
    sub_24802E8C8();
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_247FB1D94;
  v36 = sub_247FB1DA4;
  v6 = qword_27EE84328;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v37 = [v6 objectForKeyedSubscript:v7];

  v8 = v33[5];
  if (!v8)
  {
    v31 = 0;
    if (task_for_pid(*MEMORY[0x277D85F48], v3, &v31))
    {
      v9 = 0;
    }

    else
    {
      v9 = v31;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v11 = v33[5];
    v33[5] = v10;

    intValue = [v33[5] intValue];
    v13 = dispatch_get_global_queue(0, 0);
    v14 = dispatch_source_create(MEMORY[0x277D85D10], intValue, 0, v13);

    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = sub_247FB2598;
    v26 = &unk_278EF2CE8;
    v28 = &v32;
    v29 = selfCopy;
    v30 = v3;
    v15 = v14;
    v27 = v15;
    dispatch_source_set_event_handler(v15, &v23);
    dispatch_resume(v15);
    v16 = v33[5];
    v17 = qword_27EE84328;
    v18 = [MEMORY[0x277CCABB0] numberWithInt:{v3, v23, v24, v25, v26}];
    [v17 setObject:v16 forKeyedSubscript:v18];

    v19 = qword_27EE84330;
    v20 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    [v19 setObject:v15 forKeyedSubscript:v20];

    v8 = v33[5];
  }

  unsignedIntValue = [v8 unsignedIntValue];
  if (unsignedIntValue - 1 > 0xFFFFFFFD || mach_port_mod_refs(*MEMORY[0x277D85F48], unsignedIntValue, 0, 1))
  {
    unsignedIntValue = 0;
  }

  _Block_object_dispose(&v32, 8);

  objc_sync_exit(selfCopy);
  return unsignedIntValue;
}

+ (void)_taskInvalid:(unsigned int)invalid forPid:(int)pid
{
  v4 = *&pid;
  obj = self;
  objc_sync_enter(obj);
  v6 = qword_27EE84328;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v8 = [v6 objectForKeyedSubscript:v7];
  intValue = [v8 intValue];

  if (intValue == invalid)
  {
    v10 = qword_27EE84328;
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    [v10 removeObjectForKey:v11];

    v12 = qword_27EE84330;
    v13 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    [v12 removeObjectForKey:v13];
  }

  if (invalid - 1 <= 0xFFFFFFFD)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], invalid);
  }

  objc_sync_exit(obj);
}

+ (void)_tfpPortReceived:(unsigned int)received
{
  obj = self;
  objc_sync_enter(obj);
  if ((dword_27EE84338 - 1) <= 0xFFFFFFFD)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], dword_27EE84338);
  }

  dword_27EE84338 = received;
  objc_sync_exit(obj);
}

- (id)_blessSimulatorHub:(int)hub
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"Simulated hub authorization not available on this platform";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.DTInstrumentServer" code:-11 userInfo:v5];
  [v3 invokeCompletionWithReturnValue:0 error:v6];

  return v3;
}

@end