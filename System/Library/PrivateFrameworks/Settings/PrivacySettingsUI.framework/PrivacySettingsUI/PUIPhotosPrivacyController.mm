@interface PUIPhotosPrivacyController
+ (BOOL)isServiceRestricted:(id)restricted;
+ (void)setTCCForService:(__CFString *)service appIdentifier:(id)identifier value:(int)value completion:(id)completion;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (id)_photosStatus:(id)status;
- (id)_specifiersWithCombinedPickerUsage;
- (id)appSpecifierWithName:(id)name bundleID:(id)d showPhotosAccess:(BOOL)access showPhotosAddAccess:(BOOL)addAccess showPickerUsage:(BOOL)usage;
- (void)_setPhotosStatus:(id)status specifier:(id)specifier;
- (void)_updatePhotosAuthorizationStates;
- (void)provideNavigationDonations;
- (void)updateSpecifiersForImposedSettings;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PUIPhotosPrivacyController

+ (BOOL)isServiceRestricted:(id)restricted
{
  restrictedCopy = restricted;
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v4 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v5 = v4;
  if (v4)
  {
    v6 = [v4 containsObject:restrictedCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)setTCCForService:(__CFString *)service appIdentifier:(id)identifier value:(int)value completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v12 = completionCopy;
  if (value != 5)
  {
    if (setTCCForService_appIdentifier_value_completion__onceToken != -1)
    {
      +[PUIPhotosPrivacyController setTCCForService:appIdentifier:value:completion:];
    }

    v13 = _PUILoggingFacility(completionCopy);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      serviceCopy = service;
      v30 = 2112;
      v31 = identifierCopy;
      v32 = 1024;
      valueCopy = value;
      _os_log_impl(&dword_2657FE000, v13, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%d", buf, 0x1Cu);
    }

    [identifierCopy cStringUsingEncoding:4];
    v14 = tcc_identity_create();
    v15 = tcc_service_singleton_for_CF_name();
    v16 = 0;
    if ((value - 1) <= 2)
    {
      v16 = qword_265869FE8[value - 1];
    }

    v17 = CFEqual(service, *MEMORY[0x277D6C1D0]);
    if (value == 2 && v17 && TCCLibraryCore(0) && gettcc_server_message_prompt_authorization_valueSymbolLoc())
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __78__PUIPhotosPrivacyController_setTCCForService_appIdentifier_value_completion___block_invoke_143;
      aBlock[3] = &unk_279BA1F38;
      selfCopy = self;
      v25 = identifierCopy;
      v26 = v12;
      v18 = _Block_copy(aBlock);
      v19 = setTCCForService_appIdentifier_value_completion__tccServer;
      v20 = v14;
      v21 = v15;
      v22 = v18;
      v23 = gettcc_server_message_prompt_authorization_valueSymbolLoc();
      if (!v23)
      {
        [PUILockdownModeController getEligibleDevicesWithCompletion:];
      }

      v23(v19, 0, v20, v21, 0, v16, v22);
    }

    else
    {
      tcc_server_message_set_authorization_value();
      if (v12)
      {
        v12[2](v12);
      }
    }
  }
}

uint64_t __78__PUIPhotosPrivacyController_setTCCForService_appIdentifier_value_completion___block_invoke()
{
  setTCCForService_appIdentifier_value_completion__tccServer = tcc_server_create();

  return MEMORY[0x2821F96F8]();
}

void __78__PUIPhotosPrivacyController_setTCCForService_appIdentifier_value_completion___block_invoke_143(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v8 = @"PUIPhotosPrivacyUpgradePromptAppIdentifierKey";
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 postNotificationName:@"PUIPhotosPrivacyUpgradePromptCompletedNotification" object:v3 userInfo:v5];

  if (*(a1 + 40))
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __78__PUIPhotosPrivacyController_setTCCForService_appIdentifier_value_completion___block_invoke_2;
    v6[3] = &unk_279BA1038;
    v7 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUIPhotosPrivacyController;
  [(PUIPhotosPrivacyController *)&v4 viewDidAppear:appear];
  [(PUIPhotosPrivacyController *)self provideNavigationDonations];
}

- (void)provideNavigationDonations
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"PHOTOS" table:@"Privacy" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/PHOTOS"];
  [(PUIPhotosPrivacyController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.privacy" title:v7 localizedNavigationComponents:v11 deepLink:v12];
}

- (id)_specifiersWithCombinedPickerUsage
{
  v113 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v72 = *MEMORY[0x277D3FC48];
    val = self;
    [(PUIPhotosPrivacyController *)self _updatePhotosAuthorizationStates];
    v87 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v88 = [MEMORY[0x277CBEB58] set];
    v4 = MEMORY[0x277D6C1D0];
    v70 = TCCAccessCopyInformation();
    v71 = TCCAccessCopyInformation();
    v5 = [v70 arrayByAddingObjectsFromArray:?];
    v86 = [PUIPhotosPrivacyController isServiceRestricted:*v4];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
    if (v6)
    {
      v7 = *v103;
      v82 = *MEMORY[0x277D40008];
      v79 = *MEMORY[0x277D40020];
      v76 = *MEMORY[0x277D3FF38];
      v8 = MEMORY[0x277D6C0C8];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v103 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v102 + 1) + 8 * i);
          v11 = [v10 objectForKey:*v8];
          v12 = v11;
          if (v11)
          {
            v13 = CFBundleGetIdentifier(v11);
            if (([v88 containsObject:v13] & 1) == 0)
            {
              [v88 addObject:v13];
              v14 = PUIDisplayNameForApp(v12);
              photosAddOnlyAllAppIDs = [(PUIPhotosPrivacyController *)val photosAddOnlyAllAppIDs];
              v16 = [photosAddOnlyAllAppIDs containsObject:v13];

              photosReadWriteAllAppIDs = [(PUIPhotosPrivacyController *)val photosReadWriteAllAppIDs];
              v18 = [photosReadWriteAllAppIDs containsObject:v13];

              pickerUsageAppIDs = [(PUIPhotosPrivacyController *)val pickerUsageAppIDs];
              v20 = [pickerUsageAppIDs containsObject:v13];

              v21 = [(PUIPhotosPrivacyController *)val appSpecifierWithName:v14 bundleID:v13 showPhotosAccess:v18 showPhotosAddAccess:v16 showPickerUsage:v20];
              [v21 setProperty:v13 forKey:v82];
              [v21 setProperty:MEMORY[0x277CBEC38] forKey:v79];
              v22 = [MEMORY[0x277CCABB0] numberWithInt:!v86];
              [v21 setObject:v22 forKeyedSubscript:v76];

              [v87 addObject:v21];
            }
          }

          else
          {
            v13 = _PUILoggingFacility(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v107 = v10;
              _os_log_impl(&dword_2657FE000, v13, OS_LOG_TYPE_DEFAULT, "TCCAccess skipping app with nil bundle: %@", buf, 0xCu);
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
      }

      while (v6);
    }

    v73 = PUIGetActivePairedDevice();
    if (v73 && objc_opt_class())
    {
      mEMORY[0x277D2BD58] = [MEMORY[0x277D2BD58] sharedInstance];
      ScreenScale();
      v100 = 0u;
      v101 = 0u;
      if (v24 == 2)
      {
        v25 = 47;
      }

      else
      {
        v25 = 48;
      }

      v77 = v25;
      v99 = 0uLL;
      v98 = 0uLL;
      photosAllAppIDs = [(PUIPhotosPrivacyController *)val photosAllAppIDs];
      v26 = [photosAllAppIDs countByEnumeratingWithState:&v98 objects:v111 count:16];
      if (v26)
      {
        v83 = *v99;
        v74 = *MEMORY[0x277D3FF38];
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v99 != v83)
            {
              objc_enumerationMutation(photosAllAppIDs);
            }

            v28 = *(*(&v98 + 1) + 8 * j);
            if (([v88 containsObject:v28] & 1) == 0)
            {
              [v88 addObject:v28];
              v29 = PUIDisplayNameForWatchApp(v28);
              if (v29)
              {
                v30 = v28;
              }

              else
              {
                v30 = PUIWatchBundleIDForBundleID(v28);
                v29 = PUIDisplayNameForWatchApp(v30);
              }

              photosAddOnlyAllAppIDs2 = [(PUIPhotosPrivacyController *)val photosAddOnlyAllAppIDs];
              v32 = [photosAddOnlyAllAppIDs2 containsObject:v28];

              photosReadWriteAllAppIDs2 = [(PUIPhotosPrivacyController *)val photosReadWriteAllAppIDs];
              v34 = [photosReadWriteAllAppIDs2 containsObject:v28];

              pickerUsageAppIDs2 = [(PUIPhotosPrivacyController *)val pickerUsageAppIDs];
              v36 = [pickerUsageAppIDs2 containsObject:v28];

              if (v29)
              {
                v37 = v29;
              }

              else
              {
                v37 = v28;
              }

              v38 = [(PUIPhotosPrivacyController *)val appSpecifierWithName:v37 bundleID:v28 showPhotosAccess:v34 showPhotosAddAccess:v32 showPickerUsage:v36];
              v39 = [MEMORY[0x277CCABB0] numberWithInt:!v86];
              [v38 setObject:v39 forKeyedSubscript:v74];

              objc_initWeak(buf, val);
              v95[0] = MEMORY[0x277D85DD0];
              v95[1] = 3221225472;
              v95[2] = __64__PUIPhotosPrivacyController__specifiersWithCombinedPickerUsage__block_invoke;
              v95[3] = &unk_279BA1900;
              v40 = v38;
              v96 = v40;
              objc_copyWeak(&v97, buf);
              [mEMORY[0x277D2BD58] getIconForBundleID:v30 iconVariant:v77 block:v95 timeout:-1.0];
              [v87 addObject:v40];
              objc_destroyWeak(&v97);

              objc_destroyWeak(buf);
            }
          }

          v26 = [photosAllAppIDs countByEnumeratingWithState:&v98 objects:v111 count:16];
        }

        while (v26);
      }
    }

    mEMORY[0x277D3B240] = [MEMORY[0x277D3B240] sharedInstance];
    photosPickerPresentedLibraryLogsByClient = [mEMORY[0x277D3B240] photosPickerPresentedLibraryLogsByClient];

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v84 = photosPickerPresentedLibraryLogsByClient;
    v43 = [v84 countByEnumeratingWithState:&v91 objects:v110 count:16];
    if (v43)
    {
      v44 = *v92;
      v45 = *MEMORY[0x277D3B268];
      v81 = *MEMORY[0x277D40008];
      v78 = *MEMORY[0x277D40020];
      v75 = *MEMORY[0x277D3FF38];
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v92 != v44)
          {
            objc_enumerationMutation(v84);
          }

          v47 = *(*(&v91 + 1) + 8 * k);
          v48 = [v47 objectForKeyedSubscript:v45];
          pickerUsageAppIDs3 = [(PUIPhotosPrivacyController *)val pickerUsageAppIDs];
          v50 = [pickerUsageAppIDs3 containsObject:v48];

          v51 = [v88 containsObject:v48];
          if (v51 & 1 | ((v50 & 1) == 0))
          {
            v52 = _PUILoggingFacility(v51);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v107 = v47;
              _os_log_impl(&dword_2657FE000, v52, OS_LOG_TYPE_DEFAULT, "Skipping picker log: %@", buf, 0xCu);
            }
          }

          else
          {
            v90 = 0;
            v53 = [MEMORY[0x277CC1E70] bundleRecordWithApplicationIdentifier:v48 error:&v90];
            v54 = v90;
            v52 = v54;
            if (v53)
            {
              localizedName = [v53 localizedName];
              v56 = [(PUIPhotosPrivacyController *)val appSpecifierWithName:localizedName bundleID:v48 showPhotosAccess:0 showPhotosAddAccess:0 showPickerUsage:1];
              [v56 setProperty:v48 forKey:v81];
              [v56 setProperty:MEMORY[0x277CBEC38] forKey:v78];
              v57 = [MEMORY[0x277CCABB0] numberWithInt:!v86];
              [v56 setObject:v57 forKeyedSubscript:v75];

              [v87 addObject:v56];
            }

            else
            {
              localizedName = _PUILoggingFacility(v54);
              if (os_log_type_enabled(localizedName, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v107 = v48;
                v108 = 2112;
                v109 = v52;
                _os_log_impl(&dword_2657FE000, localizedName, OS_LOG_TYPE_DEFAULT, "Skipping app (%@) without bundle record with error: %@", buf, 0x16u);
              }
            }
          }
        }

        v43 = [v84 countByEnumeratingWithState:&v91 objects:v110 count:16];
      }

      while (v43);
    }

    [v87 sortUsingComparator:&__block_literal_global_175];
    v58 = [v87 copy];
    [(PUIPhotosPrivacyController *)val setAllAppSpecifiers:v58];

    v59 = objc_opt_new();
    v60 = NSClassFromString(&cfstr_Psphotostccgri.isa);
    if (v60)
    {
      emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      v62 = *MEMORY[0x277D3FFB8];
      [emptyGroupSpecifier setProperty:@"PHOTOS_GRID_GROUP" forKey:*MEMORY[0x277D3FFB8]];
      v63 = PUI_LocalizedStringForPrivacy(@"PHOTOS_GRID_FOOTER");
      [emptyGroupSpecifier setProperty:v63 forKey:*MEMORY[0x277D3FF88]];
      v64 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28771E540 target:val set:0 get:0 detail:0 cell:-1 edit:0];
      [v64 setProperty:@"PHOTOS_GRID_CELL" forKey:v62];
      v65 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
      [v64 setProperty:v65 forKey:*MEMORY[0x277D40140]];

      [v64 setProperty:v60 forKey:*MEMORY[0x277D3FE58]];
      [v59 addObject:emptyGroupSpecifier];
      [v59 addObject:v64];
    }

    if ([v87 count])
    {
      if (![v87 count])
      {
LABEL_57:
        v68 = *(&val->super.super.super.super.super.isa + v72);
        *(&val->super.super.super.super.super.isa + v72) = v59;

        v3 = *(&val->super.super.super.super.super.isa + v72);
        goto LABEL_58;
      }

      v66 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28771E540 target:0 set:0 get:0 detail:0 cell:0 edit:0];
      [v66 setIdentifier:@"PHOTOKIT_APP_GROUP"];
      [v59 addObject:v66];
      [v59 addObjectsFromArray:v87];
    }

    else
    {
      v66 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
      [v66 setIdentifier:@"NO_APP_GROUP"];
      v67 = PUI_LocalizedStringForPrivacy(@"PHOTOS_NO_APP_FOOTER");
      [v66 setProperty:v67 forKey:*MEMORY[0x277D3FF88]];
      [v59 addObject:v66];
    }

    goto LABEL_57;
  }

LABEL_58:

  return v3;
}

void __64__PUIPhotosPrivacyController__specifiersWithCombinedPickerUsage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__PUIPhotosPrivacyController__specifiersWithCombinedPickerUsage__block_invoke_2;
  block[3] = &unk_279BA18D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __64__PUIPhotosPrivacyController__specifiersWithCombinedPickerUsage__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D3FFC0]];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

uint64_t __64__PUIPhotosPrivacyController__specifiersWithCombinedPickerUsage__block_invoke_172(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (id)appSpecifierWithName:(id)name bundleID:(id)d showPhotosAccess:(BOOL)access showPhotosAddAccess:(BOOL)addAccess showPickerUsage:(BOOL)usage
{
  usageCopy = usage;
  addAccessCopy = addAccess;
  accessCopy = access;
  v11 = MEMORY[0x277D3FAD8];
  dCopy = d;
  nameCopy = name;
  v14 = [v11 preferenceSpecifierNamed:nameCopy target:self set:sel__setPhotosStatus_specifier_ get:sel__photosStatus_ detail:objc_opt_class() cell:2 edit:0];

  [v14 setIdentifier:dCopy];
  [v14 setProperty:dCopy forKey:@"appBundleID"];

  v15 = PUI_LocalizedStringForPrivacy(@"PHOTOS_AUTH_ONGOING_HEADER");
  [v14 setProperty:v15 forKey:*MEMORY[0x277D40110]];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (!accessCopy && !addAccessCopy || (PUI_LocalizedStringForPrivacy(@"PHOTOS_NO_ACCESS_AUTHORIZATION"), v22 = objc_claimAutoreleasedReturnValue(), [array addObject:v22], v22, objc_msgSend(array2, "addObject:", &unk_28772B360), objc_msgSend(v14, "setProperty:forKey:", MEMORY[0x277CBEC38], @"hasTCCOptions"), !addAccessCopy))
  {
    if (!accessCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v23 = PUI_LocalizedStringForPrivacy(@"PHOTOS_ADD_ONLY_AUTHORIZATION");
  [array addObject:v23];

  [array2 addObject:&unk_28772B378];
  if (accessCopy)
  {
LABEL_4:
    v18 = PUI_LocalizedStringForPrivacy(@"PHOTOS_LIMITED_AUTHORIZATION");
    [array addObject:v18];

    [array2 addObject:&unk_28772B330];
    v19 = PUI_LocalizedStringForPrivacy(@"PHOTOS_FULL_AUTHORIZATION");
    [array addObject:v19];

    [array2 addObject:&unk_28772B348];
  }

LABEL_5:
  if (usageCopy)
  {
    v20 = PUI_LocalizedStringForPrivacy(@"PHOTOS_PICKER_ONLY_AUTHORIZATION");
    [array addObject:v20];

    [array2 addObject:&unk_28772B390];
    [v14 setProperty:MEMORY[0x277CBEC38] forKey:@"hasPickerInfo"];
  }

  [v14 setValues:array2 titles:array];

  return v14;
}

- (void)_updatePhotosAuthorizationStates
{
  v3 = *MEMORY[0x277D6C1D0];
  v27 = 0;
  v28 = 0;
  v26 = 0;
  PUIPhotosAuthorizationStatesForService(v3, &v28, &v27, &v26, 0);
  v4 = v28;
  v5 = v27;
  v6 = v26;
  v7 = *MEMORY[0x277D6C1D8];
  v24 = 0;
  v25 = 0;
  v23 = 0;
  PUIPhotosAuthorizationStatesForService(v7, &v25, 0, &v24, &v23);
  v8 = v25;
  v9 = v24;
  v10 = v23;
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteAllowedAppIDs:v4];
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteLimitedAppIDs:v5];
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteDeniedAppIDs:v6];
  [(PUIPhotosPrivacyController *)self setPhotosAddOnlyAllowedAppIDs:v8];
  [(PUIPhotosPrivacyController *)self setPhotosAddOnlyDeniedAppIDs:v9];
  v11 = PUIPhotosPolicyBundleIdentifiersWithRecentPickerUsage();
  [(PUIPhotosPrivacyController *)self setPickerUsageAppIDs:v11];

  photosReadWriteAllowedAppIDs = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedAppIDs];
  photosReadWriteLimitedAppIDs = [(PUIPhotosPrivacyController *)self photosReadWriteLimitedAppIDs];
  v14 = [photosReadWriteAllowedAppIDs setByAddingObjectsFromSet:photosReadWriteLimitedAppIDs];
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteAllowedOrLimitedAppIDs:v14];

  photosReadWriteAllowedOrLimitedAppIDs = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedOrLimitedAppIDs];
  v16 = [photosReadWriteAllowedOrLimitedAppIDs setByAddingObjectsFromSet:v6];
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteAllAppIDs:v16];

  photosReadWriteAllAppIDs = [(PUIPhotosPrivacyController *)self photosReadWriteAllAppIDs];
  v18 = [photosReadWriteAllAppIDs setByAddingObjectsFromSet:v10];
  [(PUIPhotosPrivacyController *)self setPhotosReadWriteAllAppIDs:v18];

  v19 = [v8 setByAddingObjectsFromSet:v9];

  [(PUIPhotosPrivacyController *)self setPhotosAddOnlyAllAppIDs:v19];
  photosReadWriteAllAppIDs2 = [(PUIPhotosPrivacyController *)self photosReadWriteAllAppIDs];
  photosAddOnlyAllAppIDs = [(PUIPhotosPrivacyController *)self photosAddOnlyAllAppIDs];
  v22 = [photosReadWriteAllAppIDs2 setByAddingObjectsFromSet:photosAddOnlyAllAppIDs];
  [(PUIPhotosPrivacyController *)self setPhotosAllAppIDs:v22];
}

- (void)_setPhotosStatus:(id)status specifier:(id)specifier
{
  statusCopy = status;
  v7 = [specifier propertyForKey:@"appBundleID"];
  if ([statusCopy intValue] == 2)
  {
    v8 = *MEMORY[0x277D6C1D0];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __57__PUIPhotosPrivacyController__setPhotosStatus_specifier___block_invoke;
    v20[3] = &unk_279BA0B28;
    v20[4] = self;
    [PUIPhotosPrivacyController setTCCForService:v8 appIdentifier:v7 value:2 completion:v20];
    goto LABEL_16;
  }

  if ([statusCopy intValue] == 1)
  {
    photosReadWriteAllowedOrLimitedAppIDs = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedOrLimitedAppIDs];
    v10 = [photosReadWriteAllowedOrLimitedAppIDs containsObject:v7];

    if (v10)
    {
      [PUIPhotosPrivacyController setTCCForService:*MEMORY[0x277D6C1D0] appIdentifier:v7 value:0];
    }

    v11 = *MEMORY[0x277D6C1D8];
    v12 = v7;
    v13 = 1;
    goto LABEL_15;
  }

  if ([statusCopy intValue] == 3)
  {
    v11 = *MEMORY[0x277D6C1D0];
    v12 = v7;
    v13 = 3;
LABEL_15:
    [PUIPhotosPrivacyController setTCCForService:v11 appIdentifier:v12 value:v13];
    goto LABEL_16;
  }

  if ([statusCopy intValue] && (v14 = objc_msgSend(statusCopy, "intValue"), v14 != 5))
  {
    v19 = _PUILoggingFacility(v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [PUIPhotosPrivacyController _setPhotosStatus:statusCopy specifier:v19];
    }
  }

  else
  {
    photosReadWriteAllowedOrLimitedAppIDs2 = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedOrLimitedAppIDs];
    v16 = [photosReadWriteAllowedOrLimitedAppIDs2 containsObject:v7];

    if (v16)
    {
      [PUIPhotosPrivacyController setTCCForService:*MEMORY[0x277D6C1D0] appIdentifier:v7 value:0];
    }

    photosAddOnlyAllowedAppIDs = [(PUIPhotosPrivacyController *)self photosAddOnlyAllowedAppIDs];
    v18 = [photosAddOnlyAllowedAppIDs containsObject:v7];

    if (v18)
    {
      v11 = *MEMORY[0x277D6C1D8];
      v12 = v7;
      v13 = 0;
      goto LABEL_15;
    }
  }

LABEL_16:
  [(PUIPhotosPrivacyController *)self _updatePhotosAuthorizationStates];
  [(PUIPhotosPrivacyController *)self reloadSpecifiers];
}

uint64_t __57__PUIPhotosPrivacyController__setPhotosStatus_specifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updatePhotosAuthorizationStates];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

- (id)_photosStatus:(id)status
{
  v4 = [status propertyForKey:@"appBundleID"];
  photosReadWriteAllowedAppIDs = [(PUIPhotosPrivacyController *)self photosReadWriteAllowedAppIDs];
  v6 = [photosReadWriteAllowedAppIDs containsObject:v4];

  if (v6)
  {
    v7 = &unk_28772B348;
  }

  else
  {
    photosReadWriteLimitedAppIDs = [(PUIPhotosPrivacyController *)self photosReadWriteLimitedAppIDs];
    v9 = [photosReadWriteLimitedAppIDs containsObject:v4];

    if (v9)
    {
      v7 = &unk_28772B330;
    }

    else
    {
      photosAddOnlyAllowedAppIDs = [(PUIPhotosPrivacyController *)self photosAddOnlyAllowedAppIDs];
      v11 = [photosAddOnlyAllowedAppIDs containsObject:v4];

      if (v11)
      {
        v7 = &unk_28772B378;
      }

      else
      {
        pickerUsageAppIDs = [(PUIPhotosPrivacyController *)self pickerUsageAppIDs];
        v13 = [pickerUsageAppIDs containsObject:v4];

        if (v13)
        {
          v7 = &unk_28772B390;
        }

        else
        {
          v7 = &unk_28772B360;
        }
      }
    }
  }

  return v7;
}

- (void)updateSpecifiersForImposedSettings
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{+[PUIPhotosPrivacyController isServiceRestricted:](PUIPhotosPrivacyController, "isServiceRestricted:", *MEMORY[0x277D6C1D0]) ^ 1}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(PUIPhotosPrivacyController *)self allAppSpecifiers];
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    v7 = *MEMORY[0x277D3FF38];
    v18 = *MEMORY[0x277D40148];
    v16 = *MEMORY[0x277D401A8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 propertyForKey:v7];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 objectForKeyedSubscript:v7];
          bOOLValue = [v12 BOOLValue];
          bOOLValue2 = [v3 BOOLValue];

          if (bOOLValue == bOOLValue2)
          {
            continue;
          }
        }

        [v9 setProperty:v3 forKey:v7];
        v15 = [v9 propertyForKey:v18];
        [v15 setCellEnabled:{objc_msgSend(v3, "BOOLValue")}];

        if (([v3 BOOLValue] & 1) == 0)
        {
          [v9 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v16];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PUIPhotosPrivacyController *)self specifierForID:@"PICKER_APP_GROUP"];
  v13 = 0;
  if (-[PUIPhotosPrivacyController getGroup:row:ofSpecifier:](self, "getGroup:row:ofSpecifier:", &v13, 0, v8) && (v9 = [pathCopy section], v9 == v13))
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PUIPhotosPrivacyController;
    v10 = [(PUIPhotosPrivacyController *)&v12 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  return v10;
}

- (void)_setPhotosStatus:(uint64_t)a1 specifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "Unexpected value set for photos tcc access: %@", &v2, 0xCu);
}

@end