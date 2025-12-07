@interface WBSPasswordWarningTopFraudTargetsManager
- (WBSPasswordWarningTopFraudTargetsManager)init;
- (id)_initWithBuiltinListURL:(id)l shouldAttemptToUpdateConfiguration:(BOOL)configuration;
- (void)dealloc;
@end

@implementation WBSPasswordWarningTopFraudTargetsManager

- (WBSPasswordWarningTopFraudTargetsManager)init
{
  safari_safariCoreBundle = [MEMORY[0x1E696AAE8] safari_safariCoreBundle];
  v4 = [safari_safariCoreBundle URLForResource:@"WBSPasswordWarningTopFraudTargets" withExtension:@"plist"];

  v5 = [(WBSPasswordWarningTopFraudTargetsManager *)self _initWithBuiltinListURL:v4 shouldAttemptToUpdateConfiguration:1];
  return v5;
}

- (id)_initWithBuiltinListURL:(id)l shouldAttemptToUpdateConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  lCopy = l;
  v17.receiver = self;
  v17.super_class = WBSPasswordWarningTopFraudTargetsManager;
  v7 = [(WBSPasswordWarningTopFraudTargetsManager *)&v17 init];
  if (v7)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    safari_settingsDirectoryURL = [defaultManager safari_settingsDirectoryURL];

    v10 = [WBSRemotelyUpdatableDataController alloc];
    if (configurationCopy)
    {
      v11 = safari_settingsDirectoryURL;
    }

    else
    {
      v11 = 0;
    }

    v12 = objc_opt_class();
    v13 = [(WBSRemotelyUpdatableDataController *)v10 initWithDataFormat:0 builtInListURL:lCopy downloadsDirectoryURL:v11 resourceName:@"PasswordBreachAwarenessTopFraudTargets" resourceVersion:@"1" updateDateDefaultsKey:@"WBSPasswordWarningTopFraudTargetsLastUpdate" updateInterval:86400.0 snapshotClass:v12 snapshotTransformerClass:objc_opt_class()];
    remotelyUpdatableDataController = v7->_remotelyUpdatableDataController;
    v7->_remotelyUpdatableDataController = v13;

    [(WBSRemotelyUpdatableDataController *)v7->_remotelyUpdatableDataController setShouldAttemptToUpdateConfiguration:configurationCopy];
    v15 = v7;
  }

  return v7;
}

- (void)dealloc
{
  [(WBSRemotelyUpdatableDataController *)self->_remotelyUpdatableDataController prepareForTermination];
  v3.receiver = self;
  v3.super_class = WBSPasswordWarningTopFraudTargetsManager;
  [(WBSPasswordWarningTopFraudTargetsManager *)&v3 dealloc];
}

@end