@interface ZoomController
- (id)areZoomHandGesturesEnabled;
- (id)instructionsText;
- (id)specifiers;
- (id)zoomEnabled:(id)enabled;
- (void)setZoomEnabled:(id)enabled specifier:(id)specifier;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ZoomController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ZoomController;
  [(AccessibilityBridgeBaseController *)&v6 viewDidLoad];
  table = [(ZoomController *)self table];
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)BridgeZoomLabeledSliderCell];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiers
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v24 = *MEMORY[0x277D3FC48];
    v4 = [(ZoomController *)self loadSpecifiersFromPlistName:@"ZoomSettings" target:self];
    v5 = [v4 mutableCopy];

    selfCopy = self;
    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_284E770C0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    v7 = *MEMORY[0x277D3FFB8];
    v26 = v6;
    [v6 setProperty:@"ZoomPreferredMaxZoomLevel" forKey:*MEMORY[0x277D3FFB8]];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      v25 = *MEMORY[0x277D3FF88];
      do
      {
        v13 = 0;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * v13);
          if (([MEMORY[0x277D7EA40] isZoomGreyFeatureOn] & 1) != 0 || (objc_msgSend(v14, "propertyForKey:", v7), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "hasPrefix:", @"HandGestures"), v15, (v16 & 1) == 0))
          {
            [v8 addObject:v14];
            v17 = [v14 propertyForKey:v7];
            v18 = [v17 hasPrefix:@"ZoomPreferredMaxZoomLevel"];

            if (v18)
            {
              [v8 addObject:v26];
            }

            v19 = [v14 propertyForKey:v7];
            v20 = [v19 isEqual:@"ZoomEnabledGroup"];

            if (v20)
            {
              instructionsText = [(ZoomController *)selfCopy instructionsText];
              [v14 setProperty:instructionsText forKey:v25];
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    v22 = *(&selfCopy->super.super.super.super.super.super.isa + v24);
    *(&selfCopy->super.super.super.super.super.super.isa + v24) = v8;

    v3 = *(&selfCopy->super.super.super.super.super.super.isa + v24);
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = ZoomController;
  [(AccessibilityBridgeBaseController *)&v15 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"ZOOM_TITLE" table:@"AccessibilitySettings" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale2 bundleURL:bundleURL2];

  v12 = MEMORY[0x277CF3470];
  v16[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=ZOOM_ID"];
  [v12 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v13 deepLink:v14];
}

- (void)setZoomEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  bOOLValue = [enabledCopy BOOLValue];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __43__ZoomController_setZoomEnabled_specifier___block_invoke;
  v15 = &unk_278B909B0;
  selfCopy = self;
  v17 = enabledCopy;
  v7 = enabledCopy;
  v8 = _Block_copy(&v12);
  v9 = [(ZoomController *)self areZoomHandGesturesEnabled:v12];
  bOOLValue2 = [v9 BOOLValue];

  if (AXActivePairedDeviceSupportsHasEltonEnabled() && bOOLValue && bOOLValue2)
  {
    v11 = settingsLocString(@"GREY_FEATURE_NAME_ZOOM", @"AccessibilitySettings-elton");
    [(AccessibilityBridgeBaseController *)self presentDisableEltonAlert:v11 greyOptional:1 confirmBlock:v8 disableGreyBlock:&__block_literal_global_5];
  }

  else
  {
    v8[2](v8);
  }
}

void __43__ZoomController_setZoomEnabled_specifier___block_invoke_2()
{
  v0 = [MEMORY[0x277D7A910] sharedInstance];
  [v0 setZoomHandGestures:0];
}

- (id)zoomEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [v3 numberWithBool:{objc_msgSend(accessibilityDomainAccessor, "BOOLForKey:", @"ZoomTouchEnabled"}];

  return v5;
}

- (id)areZoomHandGesturesEnabled
{
  v2 = MEMORY[0x277CCABB0];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(mEMORY[0x277D7A910], "zoomHandGesturesEnabled")}];

  return v4;
}

- (id)instructionsText
{
  v2 = MEMORY[0x277CCACA8];
  v3 = settingsLocString(@"ZOOM_INTRO", @"ZoomSettings");
  v4 = settingsLocString(@"ZOOM_INSTRUCTIONS", @"ZoomSettings");
  v5 = settingsLocString(@"PAN_INSTRUCTIONS", @"ZoomSettings");
  v6 = settingsLocString(@"ADJUST_MAG_INSTRUCTIONS", @"ZoomSettings");
  v7 = [v2 stringWithFormat:@"%@\n%@\n%@\n%@", v3, v4, v5, v6];

  return v7;
}

@end