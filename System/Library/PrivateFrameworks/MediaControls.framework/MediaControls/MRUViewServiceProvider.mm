@interface MRUViewServiceProvider
+ (BOOL)shouldPresentNewRoutePickerForConfiguration:(id)configuration;
+ (id)viewControllerForConfiguration:(id)configuration;
@end

@implementation MRUViewServiceProvider

+ (id)viewControllerForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [self shouldPresentNewRoutePickerForConfiguration:configurationCopy];
  v6 = off_1E7662248;
  if (!v5)
  {
    v6 = off_1E76622B0;
  }

  v7 = objc_alloc_init(*v6);
  [v7 setConfiguration:configurationCopy];

  return v7;
}

+ (BOOL)shouldPresentNewRoutePickerForConfiguration:(id)configuration
{
  v23 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  presentingAppBundleID = [configurationCopy presentingAppBundleID];

  if (presentingAppBundleID)
  {
    v7 = objc_alloc_init(MEMORY[0x1E6999E70]);
    presentingAppBundleID2 = [configurationCopy presentingAppBundleID];
    [v7 setBundleID:presentingAppBundleID2];

    appIsUsingDeviceAccess = [v7 appIsUsingDeviceAccess];
    v10 = appIsUsingDeviceAccess;
    v11 = MCLogCategoryDefault(appIsUsingDeviceAccess);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      presentingAppBundleID3 = [configurationCopy presentingAppBundleID];
      v17 = 138412802;
      selfCopy2 = self;
      v19 = 2112;
      v20 = presentingAppBundleID3;
      v21 = 1024;
      v22 = v10;
      _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "[%@] presentingApp:%@ isUsingDeviceAccess:%{BOOL}u", &v17, 0x1Cu);
    }

    v13 = v10 ^ 1;
  }

  else
  {
    v14 = MCLogCategoryDefault(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1A20FC000, v14, OS_LOG_TYPE_DEFAULT, "[%@] presentingApp:nil", &v17, 0xCu);
    }

    v13 = 1;
  }

  v15 = +[MRUFeatureFlagProvider isCayenneEnabled];

  return v15 & v13;
}

@end