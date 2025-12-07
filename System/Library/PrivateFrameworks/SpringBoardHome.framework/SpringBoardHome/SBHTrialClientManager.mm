@interface SBHTrialClientManager
- (BOOL)widgetDiscoverabilityGoSwitchEnabled;
- (SBHTrialClientManager)init;
- (void)immediatelyFetchSpringBoardHomeNamespace;
@end

@implementation SBHTrialClientManager

- (SBHTrialClientManager)init
{
  v6.receiver = self;
  v6.super_class = SBHTrialClientManager;
  v2 = [(SBHTrialClientManager *)&v6 init];
  if (v2)
  {
    client = [MEMORY[0x1E69DB518] client];
    trialClient = v2->_trialClient;
    v2->_trialClient = client;
  }

  return v2;
}

- (void)immediatelyFetchSpringBoardHomeNamespace
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v15[0] = @"SPRINGBOARD_HOME";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v5 = [v3 setWithArray:v4];

  trialClient = [(SBHTrialClientManager *)self trialClient];
  v12 = 0;
  v7 = [trialClient immediateDownloadForNamespaceNames:v5 allowExpensiveNetworking:1 error:&v12];
  v8 = v12;

  if (v8)
  {
    v10 = SBLogWidgetDiscoverabilityMigration(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Immediate download onboarding factor error: %@", buf, 0xCu);
    }
  }

  if ((v7 & 1) == 0)
  {
    v11 = SBLogWidgetDiscoverabilityMigration(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "Immediate download onboarding factor failed.", buf, 2u);
    }
  }
}

- (BOOL)widgetDiscoverabilityGoSwitchEnabled
{
  trialClient = [(SBHTrialClientManager *)self trialClient];
  v3 = [trialClient levelForFactor:@"goSwitch" withNamespaceName:@"SPRINGBOARD_HOME"];

  LOBYTE(trialClient) = [v3 BOOLeanValue];
  return trialClient;
}

@end