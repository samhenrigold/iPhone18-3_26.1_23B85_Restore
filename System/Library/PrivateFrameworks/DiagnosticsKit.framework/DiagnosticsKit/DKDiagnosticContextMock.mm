@interface DKDiagnosticContextMock
- (void)allowSessionAccessoryDisconnectForDuration:(id)duration;
- (void)clearAllowSessionAccessoryDisconnect;
- (void)displayAlertWithHeader:(id)header message:(id)message buttonStrings:(id)strings completion:(id)completion;
- (void)displayInstructions:(id)instructions style:(int)style imageLocators:(id)locators title:(id)title subtitle:(id)subtitle iconLocator:(id)locator options:(id)options navigationBarActions:(id)self0 completion:(id)self1;
- (void)enableVolumeHUD:(BOOL)d;
- (void)getAsset:(id)asset completion:(id)completion;
- (void)requestPluginReloadOnFinishWithCompletion:(id)completion;
- (void)requestSessionAccessoryIdentifierWithCompletion:(id)completion;
- (void)setScreenToBrightness:(float)brightness animate:(BOOL)animate;
- (void)showUI:(id)i completion:(id)completion;
- (void)unpairSessionAccessoryOnTestCompletion;
- (void)updateProgress:(id)progress forTest:(id)test;
- (void)uploadAssets:(id)assets completion:(id)completion;
@end

@implementation DKDiagnosticContextMock

- (void)updateProgress:(id)progress forTest:(id)test
{
  v14 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  testCopy = test;
  v7 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[DKDiagnosticContextMock updateProgress:forTest:]";
    v10 = 2112;
    v11 = progressCopy;
    v12 = 2112;
    v13 = testCopy;
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v8, 0x20u);
  }
}

- (void)enableVolumeHUD:(BOOL)d
{
  dCopy = d;
  v9 = *MEMORY[0x277D85DE8];
  v4 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[DKDiagnosticContextMock enableVolumeHUD:]";
    v7 = 1024;
    v8 = dCopy;
    _os_log_impl(&dword_248B9D000, v4, OS_LOG_TYPE_DEFAULT, "%s: %d", &v5, 0x12u);
  }
}

- (void)setScreenToBrightness:(float)brightness animate:(BOOL)animate
{
  animateCopy = animate;
  v13 = *MEMORY[0x277D85DE8];
  v6 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[DKDiagnosticContextMock setScreenToBrightness:animate:]";
    v9 = 2048;
    brightnessCopy = brightness;
    v11 = 1024;
    v12 = animateCopy;
    _os_log_impl(&dword_248B9D000, v6, OS_LOG_TYPE_DEFAULT, "%s: %f, %d", &v7, 0x1Cu);
  }
}

- (void)getAsset:(id)asset completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  completionCopy = completion;
  v7 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[DKDiagnosticContextMock getAsset:completion:]";
    v11 = 2112;
    v12 = assetCopy;
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v9, 0x16u);
  }

  data = [MEMORY[0x277CBEA90] data];
  completionCopy[2](completionCopy, data);
}

- (void)uploadAssets:(id)assets completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  completionCopy = completion;
  v7 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[DKDiagnosticContextMock uploadAssets:completion:]";
    v11 = 2112;
    v12 = assetsCopy;
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v9, 0x16u);
  }

  array = [MEMORY[0x277CBEA60] array];
  completionCopy[2](completionCopy, array, 0);
}

- (void)showUI:(id)i completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  iCopy = i;
  completionCopy = completion;
  v7 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[DKDiagnosticContextMock showUI:completion:]";
    v10 = 2112;
    v11 = iCopy;
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v8, 0x16u);
  }

  completionCopy[2](completionCopy, MEMORY[0x277CBEC10]);
}

- (void)requestPluginReloadOnFinishWithCompletion:(id)completion
{
  v7 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[DKDiagnosticContextMock requestPluginReloadOnFinishWithCompletion:]";
    _os_log_impl(&dword_248B9D000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  completionCopy[2](completionCopy);
}

- (void)unpairSessionAccessoryOnTestCompletion
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[DKDiagnosticContextMock unpairSessionAccessoryOnTestCompletion]";
    _os_log_impl(&dword_248B9D000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }
}

- (void)requestSessionAccessoryIdentifierWithCompletion:(id)completion
{
  v7 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[DKDiagnosticContextMock requestSessionAccessoryIdentifierWithCompletion:]";
    _os_log_impl(&dword_248B9D000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  completionCopy[2](completionCopy, &stru_285B8CB68, 0);
}

- (void)allowSessionAccessoryDisconnectForDuration:(id)duration
{
  v9 = *MEMORY[0x277D85DE8];
  durationCopy = duration;
  v4 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[DKDiagnosticContextMock allowSessionAccessoryDisconnectForDuration:]";
    v7 = 2112;
    v8 = durationCopy;
    _os_log_impl(&dword_248B9D000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v5, 0x16u);
  }
}

- (void)clearAllowSessionAccessoryDisconnect
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[DKDiagnosticContextMock clearAllowSessionAccessoryDisconnect]";
    _os_log_impl(&dword_248B9D000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }
}

- (void)displayAlertWithHeader:(id)header message:(id)message buttonStrings:(id)strings completion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[DKDiagnosticContextMock displayAlertWithHeader:message:buttonStrings:completion:]";
    _os_log_impl(&dword_248B9D000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }
}

- (void)displayInstructions:(id)instructions style:(int)style imageLocators:(id)locators title:(id)title subtitle:(id)subtitle iconLocator:(id)locator options:(id)options navigationBarActions:(id)self0 completion:(id)self1
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[DKDiagnosticContextMock displayInstructions:style:imageLocators:title:subtitle:iconLocator:options:navigationBarActions:completion:]";
    _os_log_impl(&dword_248B9D000, v11, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }
}

@end