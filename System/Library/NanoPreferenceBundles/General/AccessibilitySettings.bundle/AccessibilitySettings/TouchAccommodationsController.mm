@interface TouchAccommodationsController
- (TouchAccommodationsController)init;
- (void)dealloc;
- (void)setTouchAccommodationsEnabled:(BOOL)enabled;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TouchAccommodationsController

- (TouchAccommodationsController)init
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = TouchAccommodationsController;
  v2 = [(AXUISettingsSetupCapableListController *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x277D75AC0];
    v10[0] = objc_opt_class();
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v5 = [v3 appearanceWhenContainedInInstancesOfClasses:v4];
    v6 = BPSBridgeTintColor();
    [v5 setTintColor:v6];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _reloadSettings_1, @"NanoTouchAccommodationsDefaultsChanged", 0, 1028);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = TouchAccommodationsController;
  [(AXUISettingsSetupCapableListController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TouchAccommodationsController;
  [(AXUISettingsTouchAccommodationsController *)&v15 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"TOUCH_ACCOMMODATIONS_TITLE" table:@"AccessibilitySettings" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale2 bundleURL:bundleURL2];

  v12 = MEMORY[0x277CF3470];
  v16[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=TouchAccommodationsCell"];
  [v12 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v13 deepLink:v14];
}

- (void)setTouchAccommodationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && (AXGizmoTouchAccommodationsUsageConfirmed() & 1) == 0)
  {
    v5 = MEMORY[0x277D750F8];
    v6 = settingsLocString(@"TOUCH_ACCOMMODATIONS_USAGE_CONFIRM", @"TouchAccommodations");
    v7 = [v5 actionWithTitle:v6 style:0 handler:&__block_literal_global_2];

    v8 = MEMORY[0x277D750F8];
    v9 = settingsLocString(@"TOUCH_ACCOMMODATIONS_USAGE_CANCEL", @"TouchAccommodations");
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__TouchAccommodationsController_setTouchAccommodationsEnabled___block_invoke_2;
    v15[3] = &unk_278B908C8;
    v15[4] = self;
    v10 = [v8 actionWithTitle:v9 style:1 handler:v15];

    v11 = MEMORY[0x277D75110];
    v12 = settingsLocString(@"TOUCH_ACCOMMODATIONS_USAGE_TITLE", @"TouchAccommodations");
    v13 = settingsLocString(@"TOUCH_ACCOMMODATIONS_USAGE_MESSAGE", @"TouchAccommodations");
    v14 = [v11 alertControllerWithTitle:v12 message:v13 preferredStyle:1];

    [v14 addAction:v7];
    [v14 addAction:v10];
    [(TouchAccommodationsController *)self presentViewController:v14 animated:1 completion:0];
  }

  else
  {

    AXGizmoTouchAccommodationsSetEnabled(enabledCopy);
  }
}

void __63__TouchAccommodationsController_setTouchAccommodationsEnabled___block_invoke()
{
  AXGizmoTouchAccommodationsSetUsageConfirmed(1);

  AXGizmoTouchAccommodationsSetEnabled(1);
}

@end