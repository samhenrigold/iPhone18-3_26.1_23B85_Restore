@interface WFTrueToneSettingsClient
+ (void)createClientWithCompletionHandler:(id)handler;
- (WFTrueToneSettingsClient)initWithBrightnessClient:(id)client adaptationClient:(id)adaptationClient;
- (void)getStateWithCompletionHandler:(id)handler;
- (void)setState:(BOOL)state completionHandler:(id)handler;
@end

@implementation WFTrueToneSettingsClient

- (void)setState:(BOOL)state completionHandler:(id)handler
{
  stateCopy = state;
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  adaptationClient = [(WFTrueToneSettingsClient *)self adaptationClient];
  available = [adaptationClient available];

  if ((available & 1) == 0)
  {
LABEL_10:
    v13 = WFSettingsClientError();
    handlerCopy[2](handlerCopy, v13);

    goto LABEL_11;
  }

  adaptationClient2 = [(WFTrueToneSettingsClient *)self adaptationClient];
  v10 = [adaptationClient2 setEnabled:stateCopy];

  v11 = getWFActionsLogObject();
  v12 = v11;
  if (!v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[WFTrueToneSettingsClient setState:completionHandler:]";
      v16 = 1024;
      v17 = stateCopy;
      _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_ERROR, "%s Failed to set True Tone state to: %d", &v14, 0x12u);
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[WFTrueToneSettingsClient setState:completionHandler:]";
    v16 = 1024;
    v17 = stateCopy;
    _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_DEFAULT, "%s Successfully set True Tone state to: %d", &v14, 0x12u);
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_11:
}

- (void)getStateWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  adaptationClient = [(WFTrueToneSettingsClient *)self adaptationClient];
  available = [adaptationClient available];

  if (available)
  {
    adaptationClient2 = [(WFTrueToneSettingsClient *)self adaptationClient];
    getEnabled = [adaptationClient2 getEnabled];

    v9 = getWFActionsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[WFTrueToneSettingsClient getStateWithCompletionHandler:]";
      v14 = 1024;
      v15 = getEnabled;
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_DEFAULT, "%s Current True Tone State: %d", &v12, 0x12u);
    }

    handlerCopy[2](handlerCopy, getEnabled, 0);
  }

  else
  {
    v10 = getWFActionsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[WFTrueToneSettingsClient getStateWithCompletionHandler:]";
      _os_log_impl(&dword_23DE30000, v10, OS_LOG_TYPE_ERROR, "%s True Tone is not currently available", &v12, 0xCu);
    }

    v11 = WFSettingsClientError();
    handlerCopy[2](handlerCopy, 0, v11);

    handlerCopy = v11;
  }
}

- (WFTrueToneSettingsClient)initWithBrightnessClient:(id)client adaptationClient:(id)adaptationClient
{
  clientCopy = client;
  adaptationClientCopy = adaptationClient;
  v10 = adaptationClientCopy;
  if (clientCopy)
  {
    if (adaptationClientCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTrueToneSettingsClient.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"brightnessClient"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTrueToneSettingsClient.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"adaptationClient"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = WFTrueToneSettingsClient;
  v11 = [(WFTrueToneSettingsClient *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_brightnessClient, client);
    objc_storeStrong(&v12->_adaptationClient, adaptationClient);
  }

  return v12;
}

+ (void)createClientWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc_init(getCBClientClass_23066());
  adaptationClient = [v4 adaptationClient];
  if (adaptationClient && ([getCBClientClass_23066() supportsAdaptation] & 1) != 0)
  {
    v6 = [[self alloc] initWithBrightnessClient:v4 adaptationClient:adaptationClient];
    v7 = handlerCopy[2];
  }

  else
  {
    v6 = WFSettingsClientError();
    v7 = handlerCopy[2];
  }

  v7();
}

@end