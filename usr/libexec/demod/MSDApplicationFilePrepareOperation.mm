@interface MSDApplicationFilePrepareOperation
- (BOOL)_determineAppInstallNecessity;
- (BOOL)_waitForPricingAppUpdateIfNeeded;
- (id)methodSelectors;
@end

@implementation MSDApplicationFilePrepareOperation

- (id)methodSelectors
{
  v2 = +[MSDOperationContext downloadOnly];
  v3 = [NSValue valueWithPointer:"_waitForPricingAppUpdateIfNeeded"];
  v4 = [NSValue valueWithPointer:"_determineAppInstallNecessity"];
  v5 = v4;
  if (v2)
  {
    v6 = [NSArray arrayWithObjects:v3, v4, 0];
  }

  else
  {
    v7 = [NSValue valueWithPointer:"_prepareStagingArea"];
    v6 = [NSArray arrayWithObjects:v3, v5, v7, 0];
  }

  return v6;
}

- (BOOL)_waitForPricingAppUpdateIfNeeded
{
  context = [(MSDOperation *)self context];
  pricingAppUpdateDeferred = [context pricingAppUpdateDeferred];

  if (pricingAppUpdateDeferred)
  {
    v5 = sub_100063A54(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Waiting for Pricing app to finish its own update.", v8, 2u);
    }

    v6 = +[MSDTargetDevice sharedInstance];
    [v6 waitForPricing:0 forReboot:0];
  }

  return 1;
}

- (BOOL)_determineAppInstallNecessity
{
  v3 = +[MSDAppHelper sharedInstance];
  installedApps = [v3 installedApps];

  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  v7 = [installedApps containsObject:identifier];
  if (v7)
  {
    v8 = sub_100063A54(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      v24 = identifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "App is already installed: %{public}@", &v23, 0xCu);
    }

    v9 = +[MSDAppHelper sharedInstance];
    v10 = [v9 bundlePathForInstalledApp:identifier];

    v12 = v10 != 0;
    if (v10)
    {
      v13 = [MSDiOSApp appWithPath:v10];
      uniqueIdentifier = [v13 uniqueIdentifier];

      context2 = [(MSDOperation *)self context];
      uniqueIdentifier2 = [context2 uniqueIdentifier];
      v17 = [uniqueIdentifier2 isEqualToString:uniqueIdentifier];

      [(MSDOperation *)self setSkipped:v17];
      context3 = [(MSDOperation *)self context];
      [context3 setAlreadyInstalled:1];

      context4 = [(MSDOperation *)self context];
      [context4 setCurrentUniqueIdentifier:uniqueIdentifier];
    }

    else
    {
      uniqueIdentifier = sub_100063A54(v11);
      if (os_log_type_enabled(uniqueIdentifier, OS_LOG_TYPE_ERROR))
      {
        sub_1000D6598(identifier, uniqueIdentifier);
      }
    }
  }

  else
  {
    [(MSDOperation *)self setSkipped:0];
    context5 = [(MSDOperation *)self context];
    [context5 setAlreadyInstalled:0];

    context6 = [(MSDOperation *)self context];
    [context6 setCurrentUniqueIdentifier:0];

    v12 = 1;
  }

  return v12;
}

@end