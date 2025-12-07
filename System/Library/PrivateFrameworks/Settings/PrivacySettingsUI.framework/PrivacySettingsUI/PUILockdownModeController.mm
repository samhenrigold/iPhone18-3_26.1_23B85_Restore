@interface PUILockdownModeController
- (PUILockdownModeController)init;
- (id)_2GEnabled:(id)enabled;
- (id)lockdownModeOptionsSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)dataDidChange;
- (void)didTapEnableLockdownModeButton:(id)button;
- (void)didTapOnboardingLockdownModeButton;
- (void)getEligibleDevicesWithCompletion:(id)completion;
- (void)openLearnMorePage;
- (void)presentConfirmationAlert:(id)alert hasPairedWatch:(BOOL)watch;
- (void)presentErrorAlert;
- (void)presentOnboardingController;
- (void)provideNavigationDonations;
- (void)refreshLinkStatusInParent;
- (void)set2GEnabled:(id)enabled specifier:(id)specifier;
- (void)setLockdownModeEnabled:(BOOL)enabled forAllDevices:(BOOL)devices;
- (void)updateSpecifiersForImposedSettings;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PUILockdownModeController

- (PUILockdownModeController)init
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = PUILockdownModeController;
  v2 = [(PUILockdownModeController *)&v17 init];
  if (v2)
  {
    [(PUILockdownModeController *)v2 setLockdownModeEnabled:+[PUILockdownModeUtilities isLockdownModeEnabled]];
    if ([(PUILockdownModeController *)v2 lockdownModeEnabled])
    {
      v3 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:0];
      [(PUILockdownModeController *)v2 setClient:v3];

      client = [(PUILockdownModeController *)v2 client];
      v16 = 0;
      v5 = [client get2GSwitchEnabledSync:&v16];
      v6 = v16;
      [(PUILockdownModeController *)v2 setHas2GSupport:v5];

      if (v6)
      {
        v8 = _PUILoggingFacility(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [PUILockdownModeController init];
        }
      }

      if ([(PUILockdownModeController *)v2 has2GSupport])
      {
        client2 = [(PUILockdownModeController *)v2 client];
        v15 = v6;
        v10 = [client2 get2GUserPreferenceSync:&v15];
        v11 = v15;

        [(PUILockdownModeController *)v2 set_2GEnabled:v10];
        if (v11)
        {
          v13 = _PUILoggingFacility(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v19 = v11;
            _os_log_impl(&dword_2657FE000, v13, OS_LOG_TYPE_DEFAULT, "Error getting if 2G is enabled: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v11 = v6;
      }
    }
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUILockdownModeController;
  [(PUILockdownModeController *)&v4 viewWillAppear:appear];
  [(PUILockdownModeController *)self updateSpecifiersForImposedSettings];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUILockdownModeController;
  [(PUILockdownModeController *)&v4 viewDidAppear:appear];
  [(PUILockdownModeController *)self provideNavigationDonations];
}

- (void)provideNavigationDonations
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = PUI_BundleForPrivacySettingsFramework(self);
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"LOCKDOWN_MODE" table:@"LockdownMode" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/LOCKDOWN_MODE"];
  [(PUILockdownModeController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.privacy" title:v7 localizedNavigationComponents:v11 deepLink:v12];
}

- (void)refreshLinkStatusInParent
{
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
  [WeakRetained reloadSpecifier:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];
}

- (void)dataDidChange
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__PUILockdownModeController_dataDidChange__block_invoke;
  v2[3] = &unk_279BA0B00;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __42__PUILockdownModeController_dataDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (void)updateSpecifiersForImposedSettings
{
  if ([(PUILockdownModeController *)self lockdownModeEnabled]&& [(PUILockdownModeController *)self indexOfSpecifierID:@"LOCKDOWN_MODE_OPTIONS_GROUP"]== 0x7FFFFFFFFFFFFFFFLL)
  {
    lockdownModeOptionsSpecifiers = [(PUILockdownModeController *)self lockdownModeOptionsSpecifiers];
    [(PUILockdownModeController *)self addSpecifiersFromArray:lockdownModeOptionsSpecifiers animated:0];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = +[PUILockdownModeUtilities getCanSetLockdownMode];
    traitCollection = [(PUILockdownModeController *)self traitCollection];
    pe_isSettingsFeatureDescriptionCellSupported = [traitCollection pe_isSettingsFeatureDescriptionCellSupported];

    if (pe_isSettingsFeatureDescriptionCellSupported)
    {
      v9 = MEMORY[0x277D3FAD8];
      v10 = PUI_LocalizedStringForLockdownMode(@"LOCKDOWN_MODE");
      v11 = [v9 preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

      [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
      v12 = MEMORY[0x277CCACA8];
      v13 = PUI_LocalizedStringForLockdownMode(@"ONBOARDING_CELL_DETAIL");
      v14 = getLocalizedDeviceName(v13);
      v15 = [v12 stringWithFormat:v13, v14];

      v16 = PUI_LocalizedStringForLockdownMode(@"ONBOARDING_CELL_LINK");
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ [%@](https://support.apple.com/kb/HT212650)", v15, v16];
      [v11 setObject:v17 forKeyedSubscript:*MEMORY[0x277D40160]];
      [v11 setObject:@"com.apple.graphic-icon.privacy" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __39__PUILockdownModeController_specifiers__block_invoke;
      v26[3] = &unk_279BA0B50;
      v26[4] = self;
      [v11 setSettingsFeatureDescriptionURLAction:v26];
      [v5 addObject:v11];
    }

    lockdownModeEnabled = [(PUILockdownModeController *)self lockdownModeEnabled];
    v19 = MEMORY[0x277D3FAD8];
    if (lockdownModeEnabled)
    {
      v20 = PUI_LocalizedStringForLockdownMode(@"STATE_SPECIFIER_TURN_OFF");
      v21 = [v19 deleteButtonSpecifierWithName:v20 target:self action:sel_didTapOnboardingLockdownModeButton];
    }

    else
    {
      v22 = PUI_LocalizedStringForLockdownMode(@"STATE_SPECIFIER_TURN_ON");
      v21 = [v19 preferenceSpecifierNamed:v22 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v21 setObject:&unk_28772B270 forKeyedSubscript:*MEMORY[0x277D3FD78]];
      [v21 setButtonAction:sel_didTapOnboardingLockdownModeButton];
    }

    v23 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    [v21 setObject:v23 forKeyedSubscript:*MEMORY[0x277D3FF38]];

    [v5 addObject:v21];
    v24 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

void __39__PUILockdownModeController_specifiers__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PUILockdownModeController_specifiers__block_invoke_2;
  block[3] = &unk_279BA0B28;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)lockdownModeOptionsSpecifiers
{
  v61[8] = *MEMORY[0x277D85DE8];
  _lockdownModeOptionsSpecifiers = [(PUILockdownModeController *)self _lockdownModeOptionsSpecifiers];

  if (!_lockdownModeOptionsSpecifiers)
  {
    v47 = objc_opt_new();
    v49 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LOCKDOWN_MODE_OPTIONS_GROUP"];
    v4 = getLocalizedDeviceName([v47 addObject:?]);
    v46 = PUI_LocalizedStringForLockdownMode(@"SECTION_MESSAGES_HEADER");
    v60[0] = v46;
    v45 = PUI_LocalizedStringForLockdownMode(@"SECTION_MESSAGES_CONTENT");
    v60[1] = v45;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
    v61[0] = v44;
    v43 = PUI_LocalizedStringForLockdownMode(@"SECTION_FACETIME_HEADER");
    v59[0] = v43;
    v42 = PUI_LocalizedStringForLockdownMode(@"SECTION_FACETIME_CONTENT");
    v59[1] = v42;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    v61[1] = v41;
    v40 = PUI_LocalizedStringForLockdownMode(@"SECTION_WEB_HEADER");
    v58[0] = v40;
    v39 = PUI_LocalizedStringForLockdownMode(@"SECTION_WEB_CONTENT");
    v58[1] = v39;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
    v61[2] = v38;
    v37 = PUI_LocalizedStringForLockdownMode(@"SECTION_SHARED_ALBUMS_HEADER");
    v57[0] = v37;
    v36 = PUI_LocalizedStringForLockdownMode(@"SECTION_SHARED_ALBUMS_CONTENT");
    v57[1] = v36;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
    v61[3] = v35;
    v34 = PUI_LocalizedStringForLockdownMode(@"SECTION_USB_HEADER");
    v56[0] = v34;
    v5 = MEMORY[0x277CCACA8];
    v33 = PUI_LocalizedStringForLockdownMode(@"SECTION_USB_CONTENT");
    v32 = [v5 stringWithFormat:v33, v4];
    v56[1] = v32;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v61[4] = v31;
    v30 = PUI_LocalizedStringForLockdownMode(@"SECTION_WIRELESS_CONNECTIVITY_HEADER");
    v55[0] = v30;
    [(PUILockdownModeController *)self has2GSupport];
    v29 = SFLocalizableWAPIStringKeyForKey();
    v28 = PUI_LocalizedStringForLockdownMode(v29);
    v55[1] = v28;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v61[5] = v6;
    v7 = PUI_LocalizedStringForLockdownMode(@"SECTION_REMOTE_HEADER");
    v54[0] = v7;
    v8 = MEMORY[0x277CCACA8];
    v9 = PUI_LocalizedStringForLockdownMode(@"SECTION_REMOTE_CONTENT");
    v48 = v4;
    v10 = [v8 stringWithFormat:v9, v4];
    v54[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
    v61[6] = v11;
    v12 = PUI_LocalizedStringForLockdownMode(@"SECTION_PROFILES_HEADER");
    v53[0] = v12;
    v13 = PUI_LocalizedStringForLockdownMode(@"SECTION_PROFILES_CONTENT");
    v53[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    v61[7] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:8];

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __58__PUILockdownModeController_lockdownModeOptionsSpecifiers__block_invoke;
    v50[3] = &unk_279BA0B78;
    v50[4] = self;
    v16 = v15;
    v51 = v16;
    v17 = v47;
    v52 = v17;
    [v16 enumerateObjectsUsingBlock:v50];
    v18 = MEMORY[0x277D3FAD8];
    v19 = PUI_LocalizedStringForLockdownMode(@"WEB_CONTENT");
    v20 = [v18 preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v17 addObject:v20];
    if ([(PUILockdownModeController *)self has2GSupport])
    {
      v21 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:&stru_28771E540];
      v22 = PUI_LocalizedStringForLockdownMode(@"ENABLE_CELLULAR_FOOTER");
      [v21 setProperty:v22 forKey:*MEMORY[0x277D3FF88]];

      [v17 addObject:v21];
      v23 = MEMORY[0x277D3FAD8];
      v24 = PUI_LocalizedStringForLockdownMode(@"ENABLE_CELLULAR");
      v25 = [v23 preferenceSpecifierNamed:v24 target:self set:sel_set2GEnabled_specifier_ get:sel__2GEnabled_ detail:0 cell:6 edit:0];

      [v25 setIdentifier:@"Enable_2G"];
      [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
      [v17 addObject:v25];
    }

    [(PUILockdownModeController *)self set_lockdownModeOptionsSpecifiers:v17];
  }

  _lockdownModeOptionsSpecifiers2 = [(PUILockdownModeController *)self _lockdownModeOptionsSpecifiers];

  return _lockdownModeOptionsSpecifiers2;
}

void __58__PUILockdownModeController_lockdownModeOptionsSpecifiers__block_invoke(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  v8 = [v5 objectAtIndexedSubscript:0];
  v6 = [v5 objectAtIndexedSubscript:1];

  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:*(a1 + 32) set:0 get:0 detail:0 cell:-1 edit:0];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277D40170]];
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277D40160]];
  [v7 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  if ([*(a1 + 40) count] - 1 > a3)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PUITableCellNoSeparator"];
  }

  [*(a1 + 48) addObject:v7];
}

- (void)openLearnMorePage
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = getSFSafariViewControllerClass_softClass;
  v14 = getSFSafariViewControllerClass_softClass;
  if (!getSFSafariViewControllerClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getSFSafariViewControllerClass_block_invoke;
    v10[3] = &unk_279BA0D08;
    v10[4] = &v11;
    __getSFSafariViewControllerClass_block_invoke(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/kb/HT212650"];
  v7 = [v5 initWithURL:v6];

  presentedViewController = [(PUILockdownModeController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(PUILockdownModeController *)self presentedViewController];
    [presentedViewController2 presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    [(PUILockdownModeController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (void)didTapOnboardingLockdownModeButton
{
  if ([(PUILockdownModeController *)self lockdownModeEnabled])
  {

    [(PUILockdownModeController *)self presentConfirmationAlert:0 hasPairedWatch:0];
  }

  else
  {

    [(PUILockdownModeController *)self presentOnboardingController];
  }
}

- (void)set2GEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  v8 = [specifierCopy propertyForKey:*MEMORY[0x277D401A8]];
  if (([enabledCopy isEqual:v8] & 1) == 0)
  {
    objc_initWeak(location, self);
    if ([enabledCopy BOOLValue])
    {
      v9 = PUI_LocalizedStringForLockdownMode(@"CELLULAR_ALERT_ENABLE_TITLE");
      v21 = PUI_LocalizedStringForLockdownMode(@"CELLULAR_ALERT_ENABLE_MESSAGE");
      v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v9 message:v21 preferredStyle:1];
      v11 = MEMORY[0x277D750F8];
      v12 = PUI_LocalizedStringForLockdownMode(@"CELLULAR_ALERT_ENABLE_BUTTON");
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke;
      v30[3] = &unk_279BA0BC8;
      v30[4] = self;
      v13 = specifierCopy;
      v31 = v13;
      v14 = v8;
      v32 = v14;
      objc_copyWeak(&v33, location);
      v15 = [v11 actionWithTitle:v12 style:2 handler:v30];
      [v10 addAction:v15];

      v16 = MEMORY[0x277D750F8];
      v17 = PUI_LocalizedStringForLockdownMode(@"CANCEL");
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_148;
      v26[3] = &unk_279BA0BF0;
      v27 = v13;
      v28 = v14;
      objc_copyWeak(&v29, location);
      v18 = [v16 actionWithTitle:v17 style:1 handler:v26];
      [v10 addAction:v18];

      [(PUILockdownModeController *)self presentViewController:v10 animated:1 completion:0];
      objc_destroyWeak(&v29);

      objc_destroyWeak(&v33);
      v19 = v9;
    }

    else
    {
      client = [(PUILockdownModeController *)self client];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_2_149;
      v22[3] = &unk_279BA0BA0;
      v23 = specifierCopy;
      v24 = v8;
      objc_copyWeak(&v25, location);
      [client set2GUserPreference:0 completion:v22];

      objc_destroyWeak(&v25);
      v19 = v23;
    }

    objc_destroyWeak(location);
  }
}

void __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] client];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_2;
  v5[3] = &unk_279BA0BA0;
  v6 = a1[5];
  v7 = a1[6];
  objc_copyWeak(&v8, a1 + 7);
  [v4 set2GUserPreference:1 completion:v5];

  objc_destroyWeak(&v8);
}

void __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _PUILoggingFacility(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_2_cold_1();
    }

    [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D401A8]];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained reloadSpecifier:*(a1 + 32) animated:1];
  }
}

void __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_148(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D401A8]];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadSpecifier:*(a1 + 32) animated:1];
}

void __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_2_149(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _PUILoggingFacility(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_2_149_cold_1();
    }

    [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D401A8]];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained reloadSpecifier:*(a1 + 32) animated:1];
  }
}

- (id)_2GEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  _2GEnabled = [(PUILockdownModeController *)self _2GEnabled];

  return [v3 numberWithBool:_2GEnabled];
}

- (void)didTapEnableLockdownModeButton:(id)button
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__PUILockdownModeController_didTapEnableLockdownModeButton___block_invoke;
  v3[3] = &unk_279BA0C18;
  v3[4] = self;
  [(PUILockdownModeController *)self getEligibleDevicesWithCompletion:v3];
}

- (void)presentOnboardingController
{
  v3 = getLocalizedDeviceName(self);
  v4 = objc_alloc(MEMORY[0x277D37688]);
  v5 = PUI_LocalizedStringForLockdownMode(@"LOCKDOWN_MODE");
  v6 = MEMORY[0x277CCACA8];
  v7 = PUI_LocalizedStringForLockdownMode(@"ONBOARDING_UI_DETAIL");
  v8 = [v6 stringWithFormat:v7, v3];
  v9 = [v4 initWithTitle:v5 detailText:v8 symbolName:0 contentLayout:2];

  v10 = PUI_LocalizedStringForLockdownMode(@"SECTION_MESSAGES_HEADER");
  v11 = PUI_LocalizedStringForLockdownMode(@"SECTION_MESSAGES_CONTENT");
  [v9 addSectionWithHeader:v10 content:v11];

  v12 = PUI_LocalizedStringForLockdownMode(@"SECTION_FACETIME_HEADER");
  v13 = PUI_LocalizedStringForLockdownMode(@"SECTION_FACETIME_CONTENT");
  [v9 addSectionWithHeader:v12 content:v13];

  v14 = PUI_LocalizedStringForLockdownMode(@"SECTION_WEB_HEADER");
  v15 = PUI_LocalizedStringForLockdownMode(@"SECTION_WEB_CONTENT");
  [v9 addSectionWithHeader:v14 content:v15];

  v16 = PUI_LocalizedStringForLockdownMode(@"SECTION_SHARED_ALBUMS_HEADER");
  v17 = PUI_LocalizedStringForLockdownMode(@"SECTION_SHARED_ALBUMS_CONTENT");
  [v9 addSectionWithHeader:v16 content:v17];

  v18 = PUI_LocalizedStringForLockdownMode(@"SECTION_USB_HEADER");
  v19 = MEMORY[0x277CCACA8];
  v20 = PUI_LocalizedStringForLockdownMode(@"SECTION_USB_CONTENT");
  v21 = [v19 stringWithFormat:v20, v3];
  [v9 addSectionWithHeader:v18 content:v21];

  v22 = PUI_LocalizedStringForLockdownMode(@"SECTION_WIRELESS_CONNECTIVITY_HEADER");
  +[PUILockdownModeCTCapabilities supportsBB2GMitigation];
  v23 = SFLocalizableWAPIStringKeyForKey();
  v24 = PUI_LocalizedStringForLockdownMode(v23);
  [v9 addSectionWithHeader:v22 content:v24];

  v25 = PUI_LocalizedStringForLockdownMode(@"SECTION_REMOTE_HEADER");
  v26 = PUI_LocalizedStringForLockdownMode(@"SECTION_REMOTE_CONTENT");
  [v9 addSectionWithHeader:v25 content:v26];

  v27 = PUI_LocalizedStringForLockdownMode(@"SECTION_PROFILES_HEADER");
  v28 = MEMORY[0x277CCACA8];
  v29 = PUI_LocalizedStringForLockdownMode(@"SECTION_PROFILES_CONTENT");
  v30 = [v28 stringWithFormat:v29, v3];
  [v9 addSectionWithHeader:v27 content:v30];

  linkButton = [MEMORY[0x277D37650] linkButton];
  v32 = PUI_LocalizedStringForLockdownMode(@"ENABLE_LOCKDOWN_MODE");
  [linkButton setTitle:v32 forState:0];

  [linkButton addTarget:self action:sel_didTapEnableLockdownModeButton_ forEvents:0x2000];
  buttonTray = [v9 buttonTray];
  [buttonTray addButton:linkButton];

  v34 = objc_alloc(MEMORY[0x277D751E0]);
  v35 = MEMORY[0x277D750C8];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __56__PUILockdownModeController_presentOnboardingController__block_invoke;
  v41[3] = &unk_279BA0C40;
  v42 = v9;
  v36 = v9;
  v37 = [v35 actionWithHandler:v41];
  v38 = [v34 initWithBarButtonSystemItem:1 primaryAction:v37];

  navigationItem = [v36 navigationItem];
  [navigationItem setLeftBarButtonItem:v38];

  v40 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v36];
  [(PUILockdownModeController *)self presentModalViewController:v40 withTransition:3];
}

void __56__PUILockdownModeController_presentOnboardingController__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)presentConfirmationAlert:(id)alert hasPairedWatch:(BOOL)watch
{
  watchCopy = watch;
  alertCopy = alert;
  lockdownModeEnabled = [(PUILockdownModeController *)self lockdownModeEnabled];
  v35 = !lockdownModeEnabled;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPhone = [currentDevice sf_isiPhone];

  v11 = getLocalizedDeviceName(v10);
  if (lockdownModeEnabled)
  {
    v12 = @"CONFIRM_ALERT_DISABLE_TITLE";
  }

  else
  {
    v12 = @"CONFIRM_ALERT_ENABLE_TITLE";
  }

  v13 = PUI_LocalizedStringForLockdownMode(v12);
  if (alertCopy && [alertCopy count])
  {
    v14 = watchCopy & sf_isiPhone;
    v15 = @"CONFIRM_ALERT_ENABLE_ALL_DEVICES_MESSAGE";
    v16 = MEMORY[0x277CCACA8];
    v17 = !lockdownModeEnabled;
    v18 = @"CONFIRM_ALERT_ENABLE_ALL_DEVICES_WITH_WATCH_MESSAGE";
    if (lockdownModeEnabled)
    {
      v15 = @"CONFIRM_ALERT_DISABLE_ALL_DEVICES_MESSAGE";
    }

    v19 = @"CONFIRM_ALERT_DISABLE_ALL_DEVICES_WITH_WATCH_MESSAGE";
  }

  else
  {
    v14 = watchCopy & sf_isiPhone;
    v15 = @"CONFIRM_ALERT_ENABLE_MESSAGE";
    v16 = MEMORY[0x277CCACA8];
    v17 = !lockdownModeEnabled;
    v18 = @"CONFIRM_ALERT_ENABLE_WITH_WATCH_MESSAGE";
    if (lockdownModeEnabled)
    {
      v15 = @"CONFIRM_ALERT_DISABLE_MESSAGE";
    }

    v19 = @"CONFIRM_ALERT_DISABLE_WITH_WATCH_MESSAGE";
  }

  if (v17)
  {
    v19 = v18;
  }

  if (v14 == 1)
  {
    v20 = v19;
  }

  else
  {
    v20 = v15;
  }

  v21 = PUI_LocalizedStringForLockdownMode(v20);
  v22 = [v16 stringWithFormat:v21, v11];

  v23 = [MEMORY[0x277D75110] alertControllerWithTitle:v13 message:v22 preferredStyle:1];
  if (lockdownModeEnabled)
  {
    v24 = @"CONFIRM_ALERT_DISABLE_BUTTON";
  }

  else
  {
    v24 = @"CONFIRM_ALERT_ENABLE_BUTTON";
  }

  if (lockdownModeEnabled)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  v26 = PUI_LocalizedStringForLockdownMode(v24);
  v27 = MEMORY[0x277D750F8];
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:v26, v11];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __69__PUILockdownModeController_presentConfirmationAlert_hasPairedWatch___block_invoke;
  v36[3] = &unk_279BA0C68;
  v36[4] = self;
  v37 = v35;
  v29 = [v27 actionWithTitle:v28 style:v25 handler:v36];
  [v23 addAction:v29];

  v30 = MEMORY[0x277D750F8];
  v31 = PUI_LocalizedStringForLockdownMode(@"CANCEL");
  v32 = [v30 actionWithTitle:v31 style:1 handler:0];
  [v23 addAction:v32];

  presentedViewController = [(PUILockdownModeController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(PUILockdownModeController *)self presentedViewController];
    [presentedViewController2 presentViewController:v23 animated:1 completion:0];
  }

  else
  {
    [(PUILockdownModeController *)self presentViewController:v23 animated:1 completion:0];
  }
}

- (void)presentErrorAlert
{
  lockdownModeEnabled = [(PUILockdownModeController *)self lockdownModeEnabled];
  v4 = !lockdownModeEnabled;
  if (lockdownModeEnabled)
  {
    v5 = @"ERROR_ALERT_DISABLE_TITLE";
  }

  else
  {
    v5 = @"ERROR_ALERT_ENABLE_TITLE";
  }

  if (v4)
  {
    v6 = @"ERROR_ALERT_ENABLE_MESSAGE";
  }

  else
  {
    v6 = @"ERROR_ALERT_DISABLE_MESSAGE";
  }

  v17 = PUI_LocalizedStringForLockdownMode(v5);
  v7 = MEMORY[0x277CCACA8];
  v8 = PUI_LocalizedStringForLockdownMode(v6);
  v9 = getLocalizedDeviceName(v8);
  v10 = [v7 stringWithFormat:v8, v9];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v17 message:v10 preferredStyle:1];
  v12 = MEMORY[0x277D750F8];
  v13 = PUI_LocalizedStringForLockdownMode(@"OK");
  v14 = [v12 actionWithTitle:v13 style:1 handler:0];
  [v11 addAction:v14];

  presentedViewController = [(PUILockdownModeController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(PUILockdownModeController *)self presentedViewController];
    [presentedViewController2 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    [(PUILockdownModeController *)self presentViewController:v11 animated:1 completion:0];
  }
}

- (void)setLockdownModeEnabled:(BOOL)enabled forAllDevices:(BOOL)devices
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__PUILockdownModeController_setLockdownModeEnabled_forAllDevices___block_invoke;
  v4[3] = &unk_279BA0C90;
  v4[4] = self;
  [PUILockdownModeUtilities setLockdownModeEnabled:enabled forAllDevices:devices completion:v4];
}

void __66__PUILockdownModeController_setLockdownModeEnabled_forAllDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _PUILoggingFacility(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __66__PUILockdownModeController_setLockdownModeEnabled_forAllDevices___block_invoke_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__PUILockdownModeController_setLockdownModeEnabled_forAllDevices___block_invoke_218;
    block[3] = &unk_279BA0B28;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)getEligibleDevicesWithCompletion:(id)completion
{
  v60[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  v6 = PUIGetActivePairedDevice();
  v7 = v6;
  v8 = v6 != 0;
  if (aa_primaryAppleAccount)
  {
    aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
    v10 = [defaultStore aa_authKitAccountForAltDSID:aa_altDSID];
    if ([v10 aa_needsToVerifyTerms])
    {
      goto LABEL_14;
    }

    v56 = 0;
    v57 = &v56;
    v58 = 0x2050000000;
    v11 = getAKAccountManagerClass_softClass;
    v59 = getAKAccountManagerClass_softClass;
    if (!getAKAccountManagerClass_softClass)
    {
      v51 = MEMORY[0x277D85DD0];
      v52 = 3221225472;
      v53 = __getAKAccountManagerClass_block_invoke;
      v54 = &unk_279BA0D08;
      v55 = &v56;
      __getAKAccountManagerClass_block_invoke(&v51);
      v11 = v57[3];
    }

    v12 = v11;
    _Block_object_dispose(&v56, 8);
    sharedInstance = [v11 sharedInstance];
    v14 = [sharedInstance securityLevelForAccount:v10] == 4;

    if (!v14)
    {
LABEL_14:
      completionCopy[2](completionCopy, 0, v7 != 0);
    }

    else
    {
      v56 = 0;
      v57 = &v56;
      v58 = 0x2050000000;
      v15 = getAKDeviceListRequestContextClass_softClass;
      v59 = getAKDeviceListRequestContextClass_softClass;
      if (!getAKDeviceListRequestContextClass_softClass)
      {
        v51 = MEMORY[0x277D85DD0];
        v52 = 3221225472;
        v53 = __getAKDeviceListRequestContextClass_block_invoke;
        v54 = &unk_279BA0D08;
        v55 = &v56;
        __getAKDeviceListRequestContextClass_block_invoke(&v51);
        v15 = v57[3];
      }

      v16 = v15;
      _Block_object_dispose(&v56, 8);
      v38 = objc_alloc_init(v15);
      [v38 setAltDSID:aa_altDSID];
      [v38 setIncludeFamilyDevices:0];
      [v38 setIncludeUntrustedDevices:0];
      v56 = 0;
      v57 = &v56;
      v58 = 0x2020000000;
      v17 = getAKServiceNameiCloudSymbolLoc_ptr;
      v59 = getAKServiceNameiCloudSymbolLoc_ptr;
      if (!getAKServiceNameiCloudSymbolLoc_ptr)
      {
        v51 = MEMORY[0x277D85DD0];
        v52 = 3221225472;
        v53 = __getAKServiceNameiCloudSymbolLoc_block_invoke;
        v54 = &unk_279BA0D08;
        v55 = &v56;
        v18 = AuthKitLibrary();
        v19 = dlsym(v18, "AKServiceNameiCloud");
        *(v55[1] + 24) = v19;
        getAKServiceNameiCloudSymbolLoc_ptr = *(v55[1] + 24);
        v17 = v57[3];
      }

      _Block_object_dispose(&v56, 8);
      if (!v17)
      {
        [PUILockdownModeController getEligibleDevicesWithCompletion:];
        __break(1u);
      }

      v60[0] = *v17;
      v20 = MEMORY[0x277CBEA60];
      v21 = v60[0];
      v22 = [v20 arrayWithObjects:v60 count:1];

      [v38 setServices:v22];
      [v38 setOperatingSystems:&unk_28772B5A0];
      v23 = MGCopyAnswer();
      v37 = v8;
      v49[0] = 0;
      v49[1] = v49;
      v49[2] = 0x2020000000;
      v50 = 0;
      array = [MEMORY[0x277CBEB18] array];
      v36 = aa_altDSID;
      v25 = dispatch_semaphore_create(0);
      v56 = 0;
      v57 = &v56;
      v58 = 0x2050000000;
      v26 = getAKAppleIDAuthenticationControllerClass_softClass;
      v59 = getAKAppleIDAuthenticationControllerClass_softClass;
      if (!getAKAppleIDAuthenticationControllerClass_softClass)
      {
        v51 = MEMORY[0x277D85DD0];
        v52 = 3221225472;
        v53 = __getAKAppleIDAuthenticationControllerClass_block_invoke;
        v54 = &unk_279BA0D08;
        v55 = &v56;
        __getAKAppleIDAuthenticationControllerClass_block_invoke(&v51);
        v26 = v57[3];
      }

      v27 = array;
      v28 = v23;
      v29 = v26;
      _Block_object_dispose(&v56, 8);
      v30 = objc_alloc_init(v26);
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke;
      v44[3] = &unk_279BA0CB8;
      v31 = v25;
      v45 = v31;
      v35 = v28;
      v46 = v35;
      v32 = v27;
      v47 = v32;
      v48 = v49;
      [v30 fetchDeviceListWithContext:v38 completion:v44];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke_237;
      block[3] = &unk_279BA0CE0;
      v40 = v31;
      v41 = v32;
      v42 = completionCopy;
      v43 = v37;
      v33 = v32;
      v34 = v31;
      dispatch_async(MEMORY[0x277D85CD0], block);

      aa_altDSID = v36;
      _Block_object_dispose(v49, 8);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v6 != 0);
  }
}

void __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _PUILoggingFacility(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke_cold_1();
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v45 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v52 objects:v57 count:16];
    v46 = v9;
    if (v11)
    {
      v12 = v11;
      v13 = *v53;
      do
      {
        v14 = 0;
        v47 = v12;
        do
        {
          if (*v53 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v52 + 1) + 8 * v14);
          v16 = [v15 serialNumber];
          v17 = v16;
          if (v16 && ([v16 isEqualToString:*(a1 + 40)] & 1) == 0)
          {
            v18 = [v9 objectForKeyedSubscript:*(a1 + 40)];
            if (!v18 || ([v15 lastUpdatedDate], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "lastUpdatedDate"), v20 = v13, v21 = a1, v22 = v10, v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v19, "compare:", v23), v23, v10 = v22, a1 = v21, v13 = v20, v12 = v47, v19, v9 = v46, v24 == 1))
            {
              [v9 setObject:v15 forKeyedSubscript:v17];
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v12);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v25 = [v9 allValues];
    v26 = [v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v49;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v49 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v48 + 1) + 8 * i);
          v31 = [v30 lastUpdatedDate];
          [v31 timeIntervalSinceNow];
          v33 = v32 / 86400.0;

          if (v33 <= 7.0)
          {
            v34 = [v30 operatingSystemVersion];
            v35 = [v34 componentsSeparatedByString:@"."];

            v36 = [v35 firstObject];
            v37 = [v36 integerValue];

            v38 = [v30 operatingSystemName];
            v39 = [v38 isEqualToString:@"iOS"];

            if (v39)
            {
              v40 = v37 < 17;
            }

            else
            {
              v40 = 1;
            }

            if (!v40)
            {
              [*(a1 + 48) addObject:v30];
            }

            v41 = [v30 operatingSystemName];
            v42 = [v41 isEqualToString:@"macOS"];

            if (v42 && v37 >= 14)
            {
              [*(a1 + 48) addObject:v30];
            }

            v43 = [v30 operatingSystemName];
            if ([v43 isEqualToString:@"watchOS"] && v37 >= 10)
            {
              v44 = *(*(*(a1 + 56) + 8) + 24);

              if ((v44 & 1) == 0)
              {
                [*(a1 + 48) addObject:v30];
                *(*(*(a1 + 56) + 8) + 24) = 1;
              }
            }

            else
            {
            }
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v27);
    }

    dispatch_semaphore_signal(*(a1 + 32));
    v7 = 0;
    v5 = v45;
  }
}

uint64_t __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke_237(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  v3 = dispatch_semaphore_wait(*(a1 + 32), v2);
  if (v3)
  {
    v4 = _PUILoggingFacility(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke_237_cold_1(v4);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = PUILockdownModeController;
  pathCopy = path;
  v7 = [(PUILockdownModeController *)&v13 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(PUILockdownModeController *)self specifierAtIndexPath:pathCopy, v13.receiver, v13.super_class];

  v9 = [v8 propertyForKey:*MEMORY[0x277D3FE58]];
  LODWORD(pathCopy) = [v9 isEqual:objc_opt_class()];

  if (pathCopy)
  {
    detailTextLabel = [v7 detailTextLabel];
    [detailTextLabel setNumberOfLines:0];
  }

  v11 = [v8 propertyForKey:@"PUITableCellNoSeparator"];

  if (v11)
  {
    [v7 setSeparatorInset:{0.0, 0.0, 0.0, 1.79769313e308}];
  }

  return v7;
}

- (void)getEligibleDevicesWithCompletion:.cold.1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke_cold_1();
}

@end