@interface DTConditionInducerService
+ (void)registerCapabilities:(id)capabilities;
- (DTConditionInducerService)initWithChannel:(id)channel;
- (id)availableConditionInducers;
- (id)disableActiveCondition;
- (id)disableConditionWithIdentifier:(id)identifier;
- (id)enableConditionWithIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier;
- (void)_disconnectServiceConnection;
- (void)_requestAvailableConditionInducersWithCompletion:(id)completion;
- (void)_requestDisableActiveConditionInducerWithCompletion:(id)completion;
- (void)_requestDisableConditionInducerWithIdentifier:(id)identifier completion:(id)completion;
- (void)_requestEnableConditionInducerWithIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier completion:(id)completion;
- (void)activeConditionsDidStop;
- (void)activeConditionsWillStop;
- (void)dealloc;
@end

@implementation DTConditionInducerService

- (DTConditionInducerService)initWithChannel:(id)channel
{
  channelCopy = channel;
  v15.receiver = self;
  v15.super_class = DTConditionInducerService;
  v5 = [(DTXService *)&v15 initWithChannel:channelCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.dt.DTConditionInducerSupportService"];
    connectionToService = v5->_connectionToService;
    v5->_connectionToService = v6;

    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285A4DD68];
    [(NSXPCConnection *)v5->_connectionToService setRemoteObjectInterface:v8];

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285A41AF8];
    [(NSXPCConnection *)v5->_connectionToService setExportedInterface:v9];

    [(NSXPCConnection *)v5->_connectionToService setExportedObject:v5];
    [(NSXPCConnection *)v5->_connectionToService resume];
    objc_initWeak(&location, v5);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_247FB3BF0;
    v11[3] = &unk_278EF2D88;
    v12 = v5;
    objc_copyWeak(&v13, &location);
    [channelCopy registerDisconnectHandler:v11];
    objc_destroyWeak(&v13);

    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  [(DTConditionInducerService *)self _disconnectServiceConnection];
  v3.receiver = self;
  v3.super_class = DTConditionInducerService;
  [(DTConditionInducerService *)&v3 dealloc];
}

- (void)_disconnectServiceConnection
{
  [(NSXPCConnection *)self->_connectionToService invalidate];
  connectionToService = self->_connectionToService;
  self->_connectionToService = 0;
}

+ (void)registerCapabilities:(id)capabilities
{
  v7 = *MEMORY[0x277D85DE8];
  capabilitiesCopy = capabilities;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v6 = 138412290;
    *&v6[4] = objc_opt_class();
    v5 = *&v6[4];
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Registering service %@", v6, 0xCu);
  }

  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.ConditionInducer" withVersion:1 forClass:{self, *v6, *&v6[8]}];
}

- (id)availableConditionInducers
{
  v3 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_247FB3ED4;
  v8[3] = &unk_278EF2DB0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(DTConditionInducerService *)self _requestAvailableConditionInducersWithCompletion:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

- (id)disableActiveCondition
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = objc_opt_class();
    v3 = v12;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@: disable active condition", buf, 0xCu);
  }

  v4 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_247FB4184;
  v9[3] = &unk_278EF2DD8;
  v9[4] = self;
  v5 = v4;
  v10 = v5;
  [(DTConditionInducerService *)self _requestDisableActiveConditionInducerWithCompletion:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

- (id)disableConditionWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v16 = objc_opt_class();
    v17 = 2112;
    v18 = identifierCopy;
    v5 = v16;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@: disable condition with identifier: %@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_247FB44E8;
  v12[3] = &unk_278EF2E00;
  v12[4] = self;
  v13 = identifierCopy;
  v7 = v6;
  v14 = v7;
  v8 = identifierCopy;
  [(DTConditionInducerService *)self _requestDisableConditionInducerWithIdentifier:v8 completion:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

- (id)enableConditionWithIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  profileIdentifierCopy = profileIdentifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v21 = objc_opt_class();
    v22 = 2112;
    v23 = identifierCopy;
    v24 = 2112;
    v25 = profileIdentifierCopy;
    v8 = v21;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@: enable condition with identifier '%@' profile '%@'", buf, 0x20u);
  }

  v9 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_247FB48A0;
  v16[3] = &unk_278EF2E28;
  v16[4] = self;
  v17 = identifierCopy;
  v18 = profileIdentifierCopy;
  v10 = v9;
  v19 = v10;
  v11 = profileIdentifierCopy;
  v12 = identifierCopy;
  [(DTConditionInducerService *)self _requestEnableConditionInducerWithIdentifier:v12 profileIdentifier:v11 completion:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

- (void)_requestAvailableConditionInducersWithCompletion:(id)completion
{
  v14[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  connectionToService = [(DTConditionInducerService *)self connectionToService];

  if (connectionToService)
  {
    connectionToService2 = [(DTConditionInducerService *)self connectionToService];
    remoteObjectProxy = [connectionToService2 remoteObjectProxy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_247FB4C50;
    v11[3] = &unk_278EF2E50;
    v12 = completionCopy;
    [remoteObjectProxy listAvailableConditionInducersWithReply:v11];

    v8 = v12;
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"The Condition Inducer service is not available.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v9 errorWithDomain:@"DTConditionInducerService" code:2 userInfo:v10];

    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

- (void)_requestEnableConditionInducerWithIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier completion:(id)completion
{
  v20[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  profileIdentifierCopy = profileIdentifier;
  completionCopy = completion;
  connectionToService = [(DTConditionInducerService *)self connectionToService];

  if (connectionToService)
  {
    connectionToService2 = [(DTConditionInducerService *)self connectionToService];
    remoteObjectProxy = [connectionToService2 remoteObjectProxy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_247FB4E1C;
    v17[3] = &unk_278EF2E78;
    v18 = completionCopy;
    [remoteObjectProxy enableConditionInducerWithIdentifier:identifierCopy profileIdentifier:profileIdentifierCopy reply:v17];

    v14 = v18;
  }

  else
  {
    v15 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"The Condition Inducer service is not available.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [v15 errorWithDomain:@"DTConditionInducerService" code:2 userInfo:v16];

    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

- (void)_requestDisableConditionInducerWithIdentifier:(id)identifier completion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  connectionToService = [(DTConditionInducerService *)self connectionToService];

  if (connectionToService)
  {
    connectionToService2 = [(DTConditionInducerService *)self connectionToService];
    remoteObjectProxy = [connectionToService2 remoteObjectProxy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_247FB50A8;
    v14[3] = &unk_278EF2E78;
    v15 = completionCopy;
    [remoteObjectProxy disableConditionInducerWithIdentifier:identifierCopy reply:v14];

    v11 = v15;
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"The Condition Inducer service is not available.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v12 errorWithDomain:@"DTConditionInducerService" code:2 userInfo:v13];

    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

- (void)_requestDisableActiveConditionInducerWithCompletion:(id)completion
{
  v14[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  connectionToService = [(DTConditionInducerService *)self connectionToService];

  if (connectionToService)
  {
    connectionToService2 = [(DTConditionInducerService *)self connectionToService];
    remoteObjectProxy = [connectionToService2 remoteObjectProxy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_247FB5320;
    v11[3] = &unk_278EF2E78;
    v12 = completionCopy;
    [remoteObjectProxy disableActiveConditionInducerWithReply:v11];

    v8 = v12;
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"The Condition Inducer service is not available.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v9 errorWithDomain:@"DTConditionInducerService" code:2 userInfo:v10];

    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

- (void)activeConditionsWillStop
{
  message = [MEMORY[0x277D03668] message];
  [message setInteger:1 forMessageKey:@"ActiveConditionsWillStop"];
  channel = [(DTXService *)self channel];
  [channel sendControlAsync:message replyHandler:0];
}

- (void)activeConditionsDidStop
{
  message = [MEMORY[0x277D03668] message];
  [message setInteger:1 forMessageKey:@"ActiveConditionsDidStop"];
  channel = [(DTXService *)self channel];
  [channel sendControlAsync:message replyHandler:0];
}

@end