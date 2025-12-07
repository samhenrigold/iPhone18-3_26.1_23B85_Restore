@interface PUIDataAndSensorsController
+ (BOOL)shouldShowDataAndSensors;
- (id)specifiers;
- (void)appSpecifierWasTapped:(id)tapped;
- (void)provideNavigationDonations;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PUIDataAndSensorsController

+ (BOOL)shouldShowDataAndSensors
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice sf_isChinaRegionCellularDevice])
  {
    v3 = PUIAllApplicationsSupportingDisclosureReview();
    v4 = [v3 count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUIDataAndSensorsController;
  [(PUIDataAndSensorsController *)&v4 viewDidAppear:appear];
  [(PUIDataAndSensorsController *)self provideNavigationDonations];
}

- (void)provideNavigationDonations
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"DATA_AND_SENSORS" table:@"Privacy" locale:currentLocale bundleURL:bundleURL];

  v10[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v9 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/DATA_AND_SENSORS"];
  [(PUIDataAndSensorsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.privacy" title:v7 localizedNavigationComponents:v8 deepLink:v9];
}

- (id)specifiers
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v21 = *MEMORY[0x277D3FC48];
    selfCopy = self;
    v26 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v4 = PUIAllApplicationsSupportingDisclosureReview();
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      v25 = *MEMORY[0x277D3FF38];
      v23 = *MEMORY[0x277D40008];
      v24 = *MEMORY[0x277D40020];
      v22 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          v28 = 0;
          v10 = [v9 findApplicationRecordWithError:&v28];
          v11 = v28;
          v12 = v11;
          if (v11)
          {
            v13 = _PUILoggingFacility(v11);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v34 = "[PUIDataAndSensorsController specifiers]";
              v35 = 2112;
              v36 = v9;
              _os_log_error_impl(&dword_2657FE000, v13, OS_LOG_TYPE_ERROR, "%s: error fetching app record for app identity: %@", buf, 0x16u);
            }
          }

          else
          {
            v14 = MEMORY[0x277D3FAD8];
            localizedName = [v10 localizedName];
            v13 = [v14 preferenceSpecifierNamed:localizedName target:selfCopy set:0 get:0 detail:0 cell:2 edit:0];

            [v13 setButtonAction:sel_appSpecifierWasTapped_];
            v16 = MEMORY[0x277CBEC38];
            [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v25];
            [v13 setObject:v16 forKeyedSubscript:v24];
            bundleIdentifier = [v10 bundleIdentifier];
            [v13 setObject:bundleIdentifier forKeyedSubscript:v23];

            [v13 setObject:v9 forKeyedSubscript:v22];
            [v26 addObject:v13];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v6);
    }

    [v26 sortUsingComparator:&__block_literal_global_7];
    v18 = [v26 copy];
    v19 = *(&selfCopy->super.super.super.super.super.isa + v21);
    *(&selfCopy->super.super.super.super.super.isa + v21) = v18;

    v3 = *(&selfCopy->super.super.super.super.super.isa + v21);
  }

  return v3;
}

uint64_t __41__PUIDataAndSensorsController_specifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)appSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = [tappedCopy objectForKeyedSubscript:*MEMORY[0x277D401A8]];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = getPDUDisclosureReviewViewControllerForApplicationSymbolLoc_ptr;
  v14 = getPDUDisclosureReviewViewControllerForApplicationSymbolLoc_ptr;
  if (!getPDUDisclosureReviewViewControllerForApplicationSymbolLoc_ptr)
  {
    v7 = PrivacyDisclosureUILibrary();
    v12[3] = dlsym(v7, "PDUDisclosureReviewViewControllerForApplication");
    getPDUDisclosureReviewViewControllerForApplicationSymbolLoc_ptr = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v6)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v10 = v9;
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v10);
  }

  v8 = v6(v5);

  [(PUIDataAndSensorsController *)self showController:v8];
}

@end