@interface IPAppState
- (IPAppState)initWithAppStateSource:(id)source applicationIdentity:(id)identity isInstalling:(BOOL)installing;
@end

@implementation IPAppState

- (IPAppState)initWithAppStateSource:(id)source applicationIdentity:(id)identity isInstalling:(BOOL)installing
{
  installingCopy = installing;
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = IPAppState;
  v10 = [(IPInstallableState *)&v13 initWithStateSource:source isInstalling:installingCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_launchServicesIdentity, identity);
  }

  return v11;
}

@end