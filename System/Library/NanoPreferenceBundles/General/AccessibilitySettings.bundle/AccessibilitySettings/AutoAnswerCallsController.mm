@interface AutoAnswerCallsController
- (AutoAnswerCallsController)init;
- (BOOL)numericalPreferenceEnabled;
- (double)numericalPreferenceValue;
- (void)dealloc;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user;
- (void)setNumericalPreferenceValueFromUser:(double)user;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AutoAnswerCallsController

- (AutoAnswerCallsController)init
{
  v8.receiver = self;
  v8.super_class = AutoAnswerCallsController;
  v2 = [(AXUISettingsSetupCapableListController *)&v8 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _reloadAutoAnswerValues, @"NanoAccessibilityDefaultsChanged", 0, 1028);
    v4 = objc_alloc(MEMORY[0x277D2BA58]);
    v5 = [v4 initWithDomain:*MEMORY[0x277D81C18]];
    [(AutoAnswerCallsController *)v2 setDomainAccessor:v5];

    v6 = v2;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"NanoAccessibilityDefaultsChanged", 0);
  v4.receiver = self;
  v4.super_class = AutoAnswerCallsController;
  [(AXUISettingsSetupCapableListController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = AutoAnswerCallsController;
  [(AutoAnswerCallsController *)&v15 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"AutoAnswerCalls" table:@"AccessibilitySettings" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale2 bundleURL:bundleURL2];

  v12 = MEMORY[0x277CF3470];
  v16[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=AUTO_ANSWER_CALLS_ID"];
  [v12 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v13 deepLink:v14];
}

- (double)numericalPreferenceValue
{
  v6 = 0;
  domainAccessor = [(AutoAnswerCallsController *)self domainAccessor];
  [domainAccessor floatForKey:*MEMORY[0x277CE7EE0] keyExistsAndHasValidFormat:&v6];
  v4 = v3;

  result = v4;
  if (!v6)
  {
    return 3.0;
  }

  return result;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  v15[1] = *MEMORY[0x277D85DE8];
  domainAccessor = [(AutoAnswerCallsController *)self domainAccessor];
  v6 = *MEMORY[0x277CE7EE0];
  [domainAccessor setDouble:*MEMORY[0x277CE7EE0] forKey:user];

  domainAccessor2 = [(AutoAnswerCallsController *)self domainAccessor];
  synchronize = [domainAccessor2 synchronize];

  v9 = objc_opt_new();
  domainAccessor3 = [(AutoAnswerCallsController *)self domainAccessor];
  domain = [domainAccessor3 domain];
  v12 = MEMORY[0x277CBEB98];
  v15[0] = v6;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v14 = [v12 setWithArray:v13];
  [v9 synchronizeNanoDomain:domain keys:v14];
}

- (BOOL)numericalPreferenceEnabled
{
  domainAccessor = [(AutoAnswerCallsController *)self domainAccessor];
  v3 = [domainAccessor BOOLForKey:*MEMORY[0x277CE7ED8]];

  return v3;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user
{
  userCopy = user;
  v15[1] = *MEMORY[0x277D85DE8];
  domainAccessor = [(AutoAnswerCallsController *)self domainAccessor];
  v6 = *MEMORY[0x277CE7ED8];
  [domainAccessor setBool:userCopy forKey:*MEMORY[0x277CE7ED8]];

  domainAccessor2 = [(AutoAnswerCallsController *)self domainAccessor];
  synchronize = [domainAccessor2 synchronize];

  v9 = objc_opt_new();
  domainAccessor3 = [(AutoAnswerCallsController *)self domainAccessor];
  domain = [domainAccessor3 domain];
  v12 = MEMORY[0x277CBEB98];
  v15[0] = v6;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v14 = [v12 setWithArray:v13];
  [v9 synchronizeNanoDomain:domain keys:v14];
}

@end