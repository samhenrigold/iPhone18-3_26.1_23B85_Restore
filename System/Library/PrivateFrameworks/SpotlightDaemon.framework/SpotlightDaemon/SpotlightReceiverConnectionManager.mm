@interface SpotlightReceiverConnectionManager
+ (id)sharedInstantManager;
+ (id)sharedScheduledManager;
- (SpotlightReceiverConnectionManager)initWithConnectionInfo:(id)info configurationInfo:(id)configurationInfo;
- (id)clientConnection:(int64_t)connection;
@end

@implementation SpotlightReceiverConnectionManager

+ (id)sharedInstantManager
{
  if (sharedInstantManager_onceToken != -1)
  {
    +[SpotlightReceiverConnectionManager sharedInstantManager];
  }

  v3 = sharedInstantManager_sInstantConnectionManager;

  return v3;
}

void __58__SpotlightReceiverConnectionManager_sharedInstantManager__block_invoke()
{
  v5[6] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_2846C94D0;
  v4[1] = &unk_2846C94E8;
  v5[0] = @"com.apple.corespotlight.receiver.coreduet";
  v5[1] = @"com.apple.corespotlight.receiver.suggestions";
  v4[2] = &unk_2846C9500;
  v4[3] = &unk_2846C9518;
  v5[2] = @"com.apple.corespotlight.receiver.textunderstandingd";
  v5[3] = @"com.apple.corespotlight.receiver.photos";
  v4[4] = &unk_2846C9530;
  v4[5] = &unk_2846C9548;
  v5[4] = @"com.apple.corespotlight.receiver.images";
  v5[5] = @"com.apple.corespotlight.receiver.corespotlight";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:6];
  v1 = [SpotlightReceiverConnectionManager alloc];
  v2 = [(SpotlightReceiverConnectionManager *)v1 initWithConnectionInfo:v0 configurationInfo:MEMORY[0x277CBEC10]];
  v3 = sharedInstantManager_sInstantConnectionManager;
  sharedInstantManager_sInstantConnectionManager = v2;
}

+ (id)sharedScheduledManager
{
  if (sharedScheduledManager_onceToken != -1)
  {
    +[SpotlightReceiverConnectionManager sharedScheduledManager];
  }

  v3 = sharedScheduledManager_sScheduledConnectionManager;

  return v3;
}

void __60__SpotlightReceiverConnectionManager_sharedScheduledManager__block_invoke()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_2846C9500;
  v10[0] = @"com.apple.corespotlight.scheduled.receiver.textunderstandingd";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.plist", @"/System/Library/PrivateFrameworks/TextUnderstandingRuntime.framework", @"com.apple.corespotlight.scheduled.receiver.textunderstandingd"];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:v1];

  if (v3)
  {
    v7 = &unk_2846C9500;
    v8 = v1;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = [[SpotlightReceiverConnectionManager alloc] initWithConnectionInfo:v0 configurationInfo:v4];
  v6 = sharedScheduledManager_sScheduledConnectionManager;
  sharedScheduledManager_sScheduledConnectionManager = v5;
}

- (SpotlightReceiverConnectionManager)initWithConnectionInfo:(id)info configurationInfo:(id)configurationInfo
{
  v47 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  configurationInfoCopy = configurationInfo;
  v45.receiver = self;
  v45.super_class = SpotlightReceiverConnectionManager;
  v8 = [(SpotlightReceiverConnectionManager *)&v45 init];
  if (v8)
  {
    v9 = objc_alloc_init(SpotlightSenderState);
    state = v8->_state;
    v8->_state = v9;

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12 = [standardUserDefaults BOOLForKey:@"CSDisableReceiverLimit"];
    if (v12)
    {
      v13 = logForCSLogCategoryDefault(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEFAULT, "### RECEIVER LIMITS DISABLED with CSDisableReceiverLimit preference ### ", buf, 2u);
      }

      sReceiverRequestMax = 1;
      sReceiverSetupTimeout = 1;
    }

    v36 = v8;
    v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = infoCopy;
    v14 = infoCopy;
    v15 = [v14 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v40 + 1) + 8 * i);
          v20 = [v14 objectForKeyedSubscript:{v19, v36}];
          v21 = [configurationInfoCopy objectForKeyedSubscript:v19];
          intValue = [v19 intValue];
          if (intValue > 2)
          {
            if (intValue == 3)
            {
              if ([standardUserDefaults BOOLForKey:@"CSDisableBackgroundHarvestingForImages"])
              {
                goto LABEL_34;
              }

              v29 = [SpotlightReceiverConnection alloc];
              v30 = v20;
              v31 = 3;
              goto LABEL_31;
            }

            if (intValue == 4)
            {
              if ([standardUserDefaults BOOLForKey:@"CSDisableBackgroundHarvestingForAssets"])
              {
                goto LABEL_34;
              }

              v29 = [SpotlightReceiverConnection alloc];
              v30 = v20;
              v31 = 4;
LABEL_31:
              v26 = [(SpotlightReceiverConnection *)v29 initWithServiceName:v30 client:v31 configPath:v21];
              [(SpotlightReceiverConnection *)v26 setWantsText:0];
              v27 = v26;
              v28 = 0;
LABEL_32:
              [(SpotlightReceiverConnection *)v27 setWantsHTML:v28];
LABEL_33:
              [(NSDictionary *)v38 setObject:v26 forKey:v19];
              [(NSArray *)v39 addObject:v20];

              goto LABEL_34;
            }

            if (intValue == 5 && ([standardUserDefaults BOOLForKey:@"CSDisableBackgroundHarvestingForTextUnderstanding"] & 1) == 0)
            {
              v23 = [SpotlightReceiverConnection alloc];
              v24 = v20;
              v25 = 5;
              goto LABEL_24;
            }
          }

          else
          {
            if (!intValue)
            {
              if ([standardUserDefaults BOOLForKey:@"CSDisableBackgroundHarvestingForTest"])
              {
                goto LABEL_34;
              }

              v23 = [SpotlightReceiverConnection alloc];
              v24 = v20;
              v25 = 0;
LABEL_24:
              v26 = [(SpotlightReceiverConnection *)v23 initWithServiceName:v24 client:v25 configPath:v21];
              [(SpotlightReceiverConnection *)v26 setWantsText:1];
              v27 = v26;
              v28 = 1;
              goto LABEL_32;
            }

            if (intValue == 1)
            {
              if ([standardUserDefaults BOOLForKey:@"CSDisableBackgroundHarvestingForCoreDuet"])
              {
                goto LABEL_34;
              }

              v26 = [[SpotlightReceiverConnection alloc] initWithServiceName:v20 client:1 configPath:v21];
              [(SpotlightReceiverConnection *)v26 setWantsText:0];
              [(SpotlightReceiverConnection *)v26 setWantsHTML:0];
              [(SpotlightReceiverConnection *)v26 setSkipFileProviderItems:1];
              [(SpotlightReceiverConnection *)v26 setMinDate:CFAbsoluteTimeGetCurrent() + -4838400.0];
              goto LABEL_33;
            }

            if (intValue == 2 && ([standardUserDefaults BOOLForKey:@"CSDisableBackgroundHarvestingForIntelligentSuggestions"] & 1) == 0)
            {
              v23 = [SpotlightReceiverConnection alloc];
              v24 = v20;
              v25 = 2;
              goto LABEL_24;
            }
          }

LABEL_34:
        }

        v16 = [v14 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v16);
    }

    v8 = v36;
    connections = v36->_connections;
    v36->_connections = v38;
    v33 = v38;

    connectionIdentifiers = v36->_connectionIdentifiers;
    v36->_connectionIdentifiers = v39;

    infoCopy = v37;
  }

  return v8;
}

- (id)clientConnection:(int64_t)connection
{
  connections = self->_connections;
  if (connections)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:connection];
    connections = [connections objectForKeyedSubscript:v6];
  }

  if ([(SpotlightSenderState *)self->_state clientDisabled:connection])
  {
    v7 = 0;
  }

  else
  {
    v7 = connections;
  }

  return v7;
}

@end