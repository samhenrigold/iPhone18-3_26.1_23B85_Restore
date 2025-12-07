@interface IXSInstallProgressServer
- (void)_setIsPaused:(BOOL)paused forIdentity:(id)identity;
- (void)progressServer:(id)server requestCancelForIdentity:(id)identity withReason:(id)reason fromClient:(unint64_t)client;
@end

@implementation IXSInstallProgressServer

- (void)_setIsPaused:(BOOL)paused forIdentity:(id)identity
{
  pausedCopy = paused;
  identityCopy = identity;
  personaUniqueString = [identityCopy personaUniqueString];
  v7 = [IXApplicationIdentity alloc];
  bundleIdentifier = [identityCopy bundleIdentifier];

  if (personaUniqueString)
  {
    v9 = [(IXApplicationIdentity *)v7 initWithBundleIdentifier:bundleIdentifier personaUniqueString:personaUniqueString];
  }

  else
  {
    v9 = [(IXApplicationIdentity *)v7 initWithBundleIdentifier:bundleIdentifier];
  }

  v10 = v9;

  v11 = +[IXSCoordinatorManager sharedInstance];
  v12 = [v11 coordinatorForIdentity:v10];

  if (v12)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003FDD8;
    v14[3] = &unk_100102598;
    v15 = pausedCopy;
    [v12 externalSetIsPaused:pausedCopy completion:v14];
  }

  else
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[IXSInstallProgressServer _setIsPaused:forIdentity:]";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Failed to fetch the coordinator for %@", buf, 0x16u);
    }
  }
}

- (void)progressServer:(id)server requestCancelForIdentity:(id)identity withReason:(id)reason fromClient:(unint64_t)client
{
  reasonCopy = reason;
  identityCopy = identity;
  personaUniqueString = [identityCopy personaUniqueString];
  v11 = [IXApplicationIdentity alloc];
  bundleIdentifier = [identityCopy bundleIdentifier];

  if (personaUniqueString)
  {
    v13 = [(IXApplicationIdentity *)v11 initWithBundleIdentifier:bundleIdentifier personaUniqueString:personaUniqueString];
  }

  else
  {
    v13 = [(IXApplicationIdentity *)v11 initWithBundleIdentifier:bundleIdentifier];
  }

  v14 = v13;

  v15 = +[IXSCoordinatorManager sharedInstance];
  v16 = [v15 coordinatorForIdentity:v14];

  if (v16)
  {
    [v16 cancelForReason:reasonCopy client:client error:0];
  }

  else
  {
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[IXSInstallProgressServer progressServer:requestCancelForIdentity:withReason:fromClient:]";
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Failed to fetch the coordinator for %@", &v18, 0x16u);
    }
  }
}

@end