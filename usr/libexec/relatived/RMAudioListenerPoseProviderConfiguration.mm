@interface RMAudioListenerPoseProviderConfiguration
- (RMAudioListenerPoseProviderConfiguration)initWithUniqueIdentifier:(id)identifier tempestOptions:(id)options forceSessionRestart:(BOOL)restart;
@end

@implementation RMAudioListenerPoseProviderConfiguration

- (RMAudioListenerPoseProviderConfiguration)initWithUniqueIdentifier:(id)identifier tempestOptions:(id)options forceSessionRestart:(BOOL)restart
{
  restartCopy = restart;
  identifierCopy = identifier;
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = RMAudioListenerPoseProviderConfiguration;
  v10 = [(RMAudioListenerPoseProviderConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(RMAudioListenerPoseProviderConfiguration *)v10 setIdentifier:identifierCopy];
    [(RMAudioListenerPoseProviderConfiguration *)v11 setTempestOptions:optionsCopy];
    [(RMAudioListenerPoseProviderConfiguration *)v11 setForceSessionRestart:restartCopy];
  }

  return v11;
}

@end