@interface SceneDelegate
- (BOOL)_setupAssistantEnabled;
- (void)_handleURL:(id)l;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation SceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  uRLContexts = [options URLContexts];
  allObjects = [uRLContexts allObjects];
  firstObject = [allObjects firstObject];

  if (dword_100022820 <= 30 && (dword_100022820 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D49C(firstObject);
  }

  v8 = [firstObject URL];
  [(SceneDelegate *)self _handleURL:v8];
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  allObjects = [contexts allObjects];
  firstObject = [allObjects firstObject];

  if (dword_100022820 <= 30 && (dword_100022820 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D4FC(firstObject);
  }

  v6 = [firstObject URL];
  [(SceneDelegate *)self _handleURL:v6];
}

- (void)_handleURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    if (dword_100022820 <= 30 && (dword_100022820 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D670();
    }

    goto LABEL_23;
  }

  if (![(SceneDelegate *)self _setupAssistantEnabled])
  {
    if (dword_100022820 <= 60 && (dword_100022820 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D55C();
    }

    goto LABEL_23;
  }

  if (dword_100022820 <= 50 && (dword_100022820 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D57C(lCopy);
  }

  absoluteString = [lCopy absoluteString];
  v6 = [APUIAirPlayURLParser setupPayloadFromAirPlayURL:absoluteString];

  if (!v6)
  {
    if (dword_100022820 <= 50 && (dword_100022820 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D614(lCopy);
    }

LABEL_23:
    v11 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_24;
  }

  v13 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v13];
  v8 = v13;
  if (v8)
  {
    v11 = v8;
    if (dword_100022820 <= 50 && (dword_100022820 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D5D8(v11, v9, v10);
    }
  }

  else
  {
    v14 = @"setupPayload";
    v15 = v7;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [APUIAirPlaySetupFlowLauncher launchAirPlaySetupFlowWithUserInfo:v12];

    v11 = 0;
  }

LABEL_24:
}

- (BOOL)_setupAssistantEnabled
{
  IsFeatureEnabled = 0;
  if (APSRemoteConfigGetShared() && APSRemoteConfigGetBooleanIfPresent())
  {
    v3 = "remotely";
  }

  else
  {
    IsFeatureEnabled = APSSettingsIsFeatureEnabled();
    v3 = "locally";
  }

  if (dword_100022820 <= 50 && (dword_100022820 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D690(&IsFeatureEnabled, v3, v2);
  }

  return IsFeatureEnabled != 0;
}

@end