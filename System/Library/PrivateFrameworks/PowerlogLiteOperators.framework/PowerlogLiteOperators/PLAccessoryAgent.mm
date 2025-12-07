@interface PLAccessoryAgent
+ (id)entryEventPointDefinitions;
+ (id)entryEventPointDefinitionsReceivedPush;
+ (void)load;
- (PLAccessoryAgent)init;
- (void)accessoryConnectionAttached:(id)attached type:(int)type;
- (void)accessoryConnectionDetached:(id)detached;
- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection;
- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection;
- (void)initOperatorDependancies;
@end

@implementation PLAccessoryAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccessoryAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"Accessory";
  entryEventPointDefinitionsReceivedPush = [self entryEventPointDefinitionsReceivedPush];
  v6[0] = entryEventPointDefinitionsReceivedPush;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventPointDefinitionsReceivedPush
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v15[0] = *MEMORY[0x277D3F568];
  v15[1] = v2;
  v16[0] = &unk_282C1C178;
  v16[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v3;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"Connected";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v14[0] = commonTypeDict_BoolFormat;
  v13[1] = @"EndpointType";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v14[1] = commonTypeDict_IntegerFormat;
  v13[2] = @"AccessoryType";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v14[2] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v11;
}

- (PLAccessoryAgent)init
{
  if ([MEMORY[0x277D3F208] hasCapability:7])
  {
    v5.receiver = self;
    v5.super_class = PLAccessoryAgent;
    self = [(PLAgent *)&v5 init];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(PLAccessoryAgent *)self setConnectedEndpoints:dictionary];

  mEMORY[0x277CFD210] = [MEMORY[0x277CFD210] sharedInstance];
  [(PLAccessoryAgent *)self setAccConnectionInfo:mEMORY[0x277CFD210]];

  accConnectionInfo = [(PLAccessoryAgent *)self accConnectionInfo];
  [accConnectionInfo registerDelegate:self];
}

- (void)accessoryConnectionAttached:(id)attached type:(int)type
{
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "Accessory connected", v5, 2u);
  }

  [MEMORY[0x277D3F258] postNotificationName:@"PLCAAccessoryAttachedNotification" object:0 userInfo:0];
}

- (void)accessoryConnectionDetached:(id)detached
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEFAULT, "Accessory disconnected", v4, 2u);
  }

  [MEMORY[0x277D3F258] postNotificationName:@"PLCAAccessoryDetachedNotification" object:0 userInfo:0];
}

- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection
{
  v9 = *&type;
  v30 = *MEMORY[0x277D85DE8];
  attachedCopy = attached;
  propertiesCopy = properties;
  connectionCopy = connection;
  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412802;
    v25 = connectionCopy;
    v26 = 2112;
    v27 = attachedCopy;
    v28 = 2112;
    v29 = propertiesCopy;
    _os_log_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEFAULT, "Accessory attached: %@, %@, %@", &v24, 0x20u);
  }

  if ((v9 - 14) >= 0xFFFFFFFE)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    [dictionary setObject:v16 forKeyedSubscript:@"EndpointType"];

    v17 = *MEMORY[0x277CFD330];
    v18 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x277CFD330]];
    [dictionary setObject:v18 forKeyedSubscript:@"AccessoryType"];

    connectedEndpoints = [(PLAccessoryAgent *)self connectedEndpoints];
    [connectedEndpoints setObject:dictionary forKeyedSubscript:attachedCopy];

    v20 = [(PLOperator *)PLAccessoryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Accessory"];
    v21 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v20];
    [v21 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"Connected"];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    [v21 setObject:v22 forKeyedSubscript:@"EndpointType"];

    v23 = [propertiesCopy objectForKeyedSubscript:v17];
    [v21 setObject:v23 forKeyedSubscript:@"AccessoryType"];

    [(PLOperator *)self logEntry:v21];
  }
}

- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection
{
  v20 = *MEMORY[0x277D85DE8];
  detachedCopy = detached;
  connectionCopy = connection;
  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = connectionCopy;
    v18 = 2112;
    v19 = detachedCopy;
    _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEFAULT, "Accessory detached: %@, %@", &v16, 0x16u);
  }

  connectedEndpoints = [(PLAccessoryAgent *)self connectedEndpoints];
  v10 = [connectedEndpoints objectForKeyedSubscript:detachedCopy];

  if (v10)
  {
    v11 = [(PLOperator *)PLAccessoryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Accessory"];
    v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
    [v12 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"Connected"];
    v13 = [v10 objectForKeyedSubscript:@"EndpointType"];
    [v12 setObject:v13 forKeyedSubscript:@"EndpointType"];

    v14 = [v10 objectForKeyedSubscript:@"AccessoryType"];
    [v12 setObject:v14 forKeyedSubscript:@"AccessoryType"];

    [(PLOperator *)self logEntry:v12];
    connectedEndpoints2 = [(PLAccessoryAgent *)self connectedEndpoints];
    [connectedEndpoints2 setObject:0 forKeyedSubscript:detachedCopy];
  }

  else
  {
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = detachedCopy;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "Accessory property does not exist: %@", &v16, 0xCu);
    }
  }
}

@end