@interface SBSUIRemoteAlertSceneClientComponent
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
@end

@implementation SBSUIRemoteAlertSceneClientComponent

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  v6 = objc_msgSend_transitionContext(settingsCopy);
  remoteAlertActivationContext = [v6 remoteAlertActivationContext];

  v7 = objc_msgSend_transitionContext(settingsCopy);

  remoteAlertConfigurationContext = [v7 remoteAlertConfigurationContext];

  if (remoteAlertActivationContext)
  {
    [(SBSUIRemoteAlertSceneClientComponent *)self setActivationContext:remoteAlertActivationContext];
  }

  if (remoteAlertConfigurationContext)
  {
    [(SBSUIRemoteAlertSceneClientComponent *)self setConfigurationContext:remoteAlertConfigurationContext];
  }
}

@end