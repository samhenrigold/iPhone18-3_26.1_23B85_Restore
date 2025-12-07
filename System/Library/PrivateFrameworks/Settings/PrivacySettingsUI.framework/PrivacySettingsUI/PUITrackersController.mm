@interface PUITrackersController
- (BOOL)canChangeAllowAsk;
- (PUITrackersController)init;
- (id)allowAsk:(id)ask;
- (id)specifiers;
- (void)disableTCCForAllApps;
- (void)headerLinkWasTapped;
- (void)provideNavigationDonations;
- (void)setAllowAsk:(id)ask specifier:(id)specifier;
- (void)specifiers;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PUITrackersController

- (PUITrackersController)init
{
  v5.receiver = self;
  v5.super_class = PUITrackersController;
  v2 = [(PUITCCAccessController *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(PUITrackersController *)v2 setAdTrackingTransparency:v3];
  }

  return v2;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUITrackersController;
  [(PUITCCAccessController *)&v4 viewDidAppear:appear];
  [(PUITrackersController *)self provideNavigationDonations];
}

- (void)provideNavigationDonations
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"TRACKERS" table:@"Privacy" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/USER_TRACKING"];
  [(PUITrackersController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.app-tracking-transparency" title:v7 localizedNavigationComponents:v11 deepLink:v12];
}

- (id)specifiers
{
  v3 = objc_opt_new();
  v4 = *MEMORY[0x277D3FC48];
  v5 = *(&self->super.super.super.super.super.super.isa + v4);
  if (!v5)
  {
    canChangeAllowAsk = [(PUITrackersController *)self canChangeAllowAsk];
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HEADER_GROUP"];
    v8 = PUI_LocalizedStringForPrivacy(@"APP_TRACKING_HEADER_TEXT");
    v9 = PUI_LocalizedStringForPrivacy(@"APP_TRACKING_LINK_TEXT");
    v29 = v8;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v8, v9];
    if (canChangeAllowAsk)
    {
LABEL_19:
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [v7 setProperty:v17 forKey:*MEMORY[0x277D3FF48]];

      [v7 setProperty:v10 forKey:*MEMORY[0x277D3FF70]];
      v31.location = [v10 rangeOfString:v9];
      v18 = NSStringFromRange(v31);
      [v7 setProperty:v18 forKey:*MEMORY[0x277D3FF58]];

      v19 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v7 setProperty:v19 forKey:*MEMORY[0x277D3FF68]];

      [v7 setProperty:@"headerLinkWasTapped" forKey:*MEMORY[0x277D3FF50]];
      [v3 addObject:v7];
      v20 = MEMORY[0x277D3FAD8];
      v21 = PUI_LocalizedStringForPrivacy(@"ALLOW_ASK");
      v22 = [v20 preferenceSpecifierNamed:v21 target:self set:sel_setAllowAsk_specifier_ get:sel_allowAsk_ detail:0 cell:6 edit:0];

      [v22 setIdentifier:@"ALLOW_ASK"];
      [v22 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
      v23 = [MEMORY[0x277CCABB0] numberWithBool:canChangeAllowAsk];
      [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x277D3FF38]];

      [v3 addObject:v22];
      v30.receiver = self;
      v30.super_class = PUITrackersController;
      specifiers = [(PUITCCAccessController *)&v30 specifiers];
      [(PUITrackersController *)self setAppSpecifiers:specifiers];

      appSpecifiers = [(PUITrackersController *)self appSpecifiers];
      [v3 addObjectsFromArray:appSpecifiers];

      objc_storeStrong((&self->super.super.super.super.super.super.isa + v4), v3);
      v5 = *(&self->super.super.super.super.super.super.isa + v4);
      goto LABEL_20;
    }

    adTrackingTransparency = [(PUITrackersController *)self adTrackingTransparency];
    crossAppTrackingAllowedSwitchDisabledReason = [adTrackingTransparency crossAppTrackingAllowedSwitchDisabledReason];

    if (crossAppTrackingAllowedSwitchDisabledReason > 3)
    {
      switch(crossAppTrackingAllowedSwitchDisabledReason)
      {
        case 4:
          v13 = @"APP_TRACKING_DISABLED_REASON_EDU_ACCOUNT";
          goto LABEL_17;
        case 5:
          v13 = @"APP_TRACKING_DISABLED_REASON_MISSING_AGE";
          goto LABEL_17;
        case 6:
          v13 = @"APP_TRACKING_DISABLED_REASON_PROFILE";
          goto LABEL_17;
      }
    }

    else
    {
      if ((crossAppTrackingAllowedSwitchDisabledReason - 1) < 2)
      {
        v13 = @"APP_TRACKING_DISABLED_REASON_AGE";
LABEL_17:
        v14 = PUI_LocalizedStringForPrivacy(v13);
LABEL_18:
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v10, v14];

        v10 = v15;
        goto LABEL_19;
      }

      if (crossAppTrackingAllowedSwitchDisabledReason == 3)
      {
        v13 = @"APP_TRACKING_DISABLED_REASON_EDU_MODE";
        goto LABEL_17;
      }
    }

    v14 = PUI_LocalizedStringForPrivacy(@"APP_TRACKING_DISABLED");
    v28 = _PUILoggingFacility(v14);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(PUITrackersController *)crossAppTrackingAllowedSwitchDisabledReason specifiers];
    }

    goto LABEL_18;
  }

LABEL_20:
  v26 = v5;

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PUITrackersController;
  [(PUITCCAccessController *)&v3 viewWillAppear:appear];
  [MEMORY[0x277D4D8F0] trackingViewVisited];
}

- (void)headerLinkWasTapped
{
  v3 = objc_opt_new();
  [(PUITrackersController *)self presentViewController:v3 animated:1 completion:0];
}

- (BOOL)canChangeAllowAsk
{
  adTrackingTransparency = [(PUITrackersController *)self adTrackingTransparency];
  crossAppTrackingAllowedSwitchEnabled = [adTrackingTransparency crossAppTrackingAllowedSwitchEnabled];

  return crossAppTrackingAllowedSwitchEnabled;
}

- (void)setAllowAsk:(id)ask specifier:(id)specifier
{
  if ([ask BOOLValue])
  {
    [MEMORY[0x277D4D8F0] trackingStateOfRequest:1 askAppsToStopTracking:0];
    adTrackingTransparency = [(PUITrackersController *)self adTrackingTransparency];
    [adTrackingTransparency setCrossAppTrackingAllowed:1];
  }

  else
  {
    v6 = TCCAccessCopyBundleIdentifiersForService();
    v7 = [v6 count];

    if (v7)
    {
      v8 = MEMORY[0x277D75110];
      v9 = PUI_LocalizedStringForPrivacy(@"DISABLE_ALLOW_ASK_MESSAGE");
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      v11 = [v8 alertControllerWithTitle:0 message:v9 preferredStyle:{objc_msgSend(currentDevice, "sf_isiPad")}];

      v12 = MEMORY[0x277D750F8];
      v13 = PUI_LocalizedStringForPrivacy(@"DISABLE_ALLOW_ASK_CANCEL");
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __47__PUITrackersController_setAllowAsk_specifier___block_invoke;
      v25[3] = &unk_279BA1B38;
      v25[4] = self;
      v14 = [v12 actionWithTitle:v13 style:1 handler:v25];
      [v11 addAction:v14];

      v15 = MEMORY[0x277D750F8];
      v16 = PUI_LocalizedStringForPrivacy(@"DISABLE_ALLOW_ASK_LEAVE_APPS_ON");
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __47__PUITrackersController_setAllowAsk_specifier___block_invoke_2;
      v24[3] = &unk_279BA1B38;
      v24[4] = self;
      v17 = [v15 actionWithTitle:v16 style:0 handler:v24];
      [v11 addAction:v17];

      v18 = MEMORY[0x277D750F8];
      v19 = PUI_LocalizedStringForPrivacy(@"DISABLE_ALLOW_ASK_TURN_OFF_APPS");
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __47__PUITrackersController_setAllowAsk_specifier___block_invoke_3;
      v23[3] = &unk_279BA1B38;
      v23[4] = self;
      v20 = [v18 actionWithTitle:v19 style:0 handler:v23];
      [v11 addAction:v20];

      [(PUITrackersController *)self presentViewController:v11 animated:1 completion:0];
      return;
    }

    [MEMORY[0x277D4D8F0] trackingStateOfRequest:0 askAppsToStopTracking:0];
    adTrackingTransparency2 = [(PUITrackersController *)self adTrackingTransparency];
    [adTrackingTransparency2 setCrossAppTrackingAllowed:0];

    PUIResetIDFAIfNeeded();
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.PrivacySettingsUI.TrackingStateChanged" object:0];
}

void __47__PUITrackersController_setAllowAsk_specifier___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) adTrackingTransparency];
  [v1 setCrossAppTrackingAllowed:0];

  [MEMORY[0x277D4D8F0] trackingStateOfRequest:0 askAppsToStopTracking:0];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"com.apple.PrivacySettingsUI.TrackingStateChanged" object:0];
}

void __47__PUITrackersController_setAllowAsk_specifier___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) disableTCCForAllApps];
  v2 = [*(a1 + 32) adTrackingTransparency];
  [v2 setCrossAppTrackingAllowed:0];

  [MEMORY[0x277D4D8F0] trackingStateOfRequest:0 askAppsToStopTracking:1];
  [*(a1 + 32) reloadSpecifiers];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"com.apple.PrivacySettingsUI.TrackingStateChanged" object:0];
}

- (void)disableTCCForAllApps
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = TCCAccessCopyBundleIdentifiersForService();
  v4 = [v2 setWithArray:v3];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        TCCAccessSetForBundleId();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  PUIResetIDFAIfNeeded();
}

- (id)allowAsk:(id)ask
{
  v3 = MEMORY[0x277CCABB0];
  adTrackingTransparency = [(PUITrackersController *)self adTrackingTransparency];
  v5 = [v3 numberWithBool:{objc_msgSend(adTrackingTransparency, "crossAppTrackingAllowed")}];

  return v5;
}

- (void)specifiers
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[PUITrackersController specifiers]";
  v4 = 2048;
  selfCopy = self;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "%s: Unexpected crossAppTrackingAllowedSwitchDisabledReason code: %ld", &v2, 0x16u);
}

@end