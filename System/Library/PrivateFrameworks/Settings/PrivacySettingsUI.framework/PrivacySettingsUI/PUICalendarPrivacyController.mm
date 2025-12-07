@interface PUICalendarPrivacyController
+ (BOOL)isServiceRestricted:(id)restricted;
- (id)appSpecifierWithName:(id)name bundleID:(id)d;
- (id)calendarStatus:(id)status;
- (id)specifiers;
- (void)_setCalendarStatus:(id)status specifier:(id)specifier;
- (void)provideNavigationDonations;
- (void)setTCCForService:(__CFString *)service appIdentifier:(id)identifier value:(int)value;
- (void)updateCalendarAuthorizationStates;
- (void)updateSpecifiersForImposedSettings;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PUICalendarPrivacyController

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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUICalendarPrivacyController;
  [(PUICalendarPrivacyController *)&v4 viewDidAppear:appear];
  [(PUICalendarPrivacyController *)self provideNavigationDonations];
}

- (void)provideNavigationDonations
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"CALENDARS" table:@"Privacy" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/CALENDARS"];
  [(PUICalendarPrivacyController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.privacy" title:v7 localizedNavigationComponents:v11 deepLink:v12];
}

- (void)setTCCForService:(__CFString *)service appIdentifier:(id)identifier value:(int)value
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9 = _PUILoggingFacility(identifierCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    serviceCopy = service;
    v19 = 2112;
    v20 = identifierCopy;
    v21 = 1024;
    valueCopy = value;
    _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%d", buf, 0x1Cu);
  }

  if (setTCCForService_appIdentifier_value__onceToken != -1)
  {
    [PUICalendarPrivacyController setTCCForService:appIdentifier:value:];
  }

  [identifierCopy cStringUsingEncoding:4];
  v10 = tcc_identity_create();
  v11 = tcc_service_singleton_for_CF_name();
  if (value == 2)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__PUICalendarPrivacyController_setTCCForService_appIdentifier_value___block_invoke_2;
    v15[3] = &unk_279BA18B0;
    v15[4] = self;
    v12 = identifierCopy;
    v16 = v12;
    v13 = _Block_copy(v15);
    v14 = _PUILoggingFacility(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      serviceCopy = v12;
      _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to full, after prompt", buf, 0xCu);
    }

    tcc_server_message_prompt_authorization_value();
  }

  else
  {
    tcc_server_message_set_authorization_value();
  }
}

uint64_t __69__PUICalendarPrivacyController_setTCCForService_appIdentifier_value___block_invoke()
{
  setTCCForService_appIdentifier_value__tccServer = tcc_server_create();

  return MEMORY[0x2821F96F8]();
}

void __69__PUICalendarPrivacyController_setTCCForService_appIdentifier_value___block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) updateCalendarAuthorizationStates];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = @"PUICalendarPrivacyUpgradePromptAppIdentifierKey";
  v9[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 postNotificationName:@"PUICalendarPrivacyUpgradePromptCompletedNotification" object:v4 userInfo:v5];

  v6 = dispatch_time(0, 100000000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__PUICalendarPrivacyController_setTCCForService_appIdentifier_value___block_invoke_3;
  v7[3] = &unk_279BA0B28;
  v7[4] = *(a1 + 32);
  dispatch_after(v6, MEMORY[0x277D85CD0], v7);
}

- (id)specifiers
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v46 = *MEMORY[0x277D3FC48];
    val = self;
    [(PUICalendarPrivacyController *)self updateCalendarAuthorizationStates];
    v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = MEMORY[0x277D6C118];
    v5 = TCCAccessCopyInformation();
    v6 = objc_opt_new();
    v52 = [PUICalendarPrivacyController isServiceRestricted:*v4];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v7)
    {
      v8 = *v64;
      v50 = *MEMORY[0x277D40008];
      v48 = *MEMORY[0x277D40020];
      v9 = *MEMORY[0x277D3FF38];
      v10 = MEMORY[0x277D6C0C8];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v64 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v63 + 1) + 8 * i);
          v13 = [v12 objectForKey:*v10];
          v14 = v13;
          if (v13)
          {
            v15 = CFBundleGetIdentifier(v13);
            if (([v6 containsObject:v15] & 1) == 0)
            {
              [v6 addObject:v15];
              v16 = PUIDisplayNameForApp(v14);
              v17 = [(PUICalendarPrivacyController *)val appSpecifierWithName:v16 bundleID:v15];
              [v17 setProperty:v15 forKey:v50];
              [v17 setProperty:MEMORY[0x277CBEC38] forKey:v48];
              v18 = [MEMORY[0x277CCABB0] numberWithInt:!v52];
              [v17 setObject:v18 forKeyedSubscript:v9];

              [v53 addObject:v17];
            }
          }

          else
          {
            v15 = _PUILoggingFacility(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v69 = v12;
              _os_log_impl(&dword_2657FE000, v15, OS_LOG_TYPE_DEFAULT, "TCCAccess skipping app with nil bundle: %@", buf, 0xCu);
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v7);
    }

    v45 = PUIGetActivePairedDevice();
    if (v45 && objc_opt_class())
    {
      mEMORY[0x277D2BD58] = [MEMORY[0x277D2BD58] sharedInstance];
      ScreenScale();
      if (v19 == 2)
      {
        v20 = 47;
      }

      else
      {
        v20 = 48;
      }

      v47 = v20;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      calendarAllAppIDs = [(PUICalendarPrivacyController *)val calendarAllAppIDs];
      v21 = [calendarAllAppIDs countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v21)
      {
        v22 = *v60;
        v23 = *MEMORY[0x277D3FF38];
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v60 != v22)
            {
              objc_enumerationMutation(calendarAllAppIDs);
            }

            v25 = *(*(&v59 + 1) + 8 * j);
            if (([v6 containsObject:v25] & 1) == 0)
            {
              [v6 addObject:v25];
              v26 = PUIDisplayNameForWatchApp(v25);
              if (v26)
              {
                v27 = v25;
              }

              else
              {
                v27 = PUIWatchBundleIDForBundleID(v25);
                v26 = PUIDisplayNameForWatchApp(v27);
              }

              if (v26)
              {
                v28 = v26;
              }

              else
              {
                v28 = v25;
              }

              v29 = [(PUICalendarPrivacyController *)val appSpecifierWithName:v28 bundleID:v25];
              v30 = [MEMORY[0x277CCABB0] numberWithInt:!v52];
              [v29 setObject:v30 forKeyedSubscript:v23];

              objc_initWeak(buf, val);
              v56[0] = MEMORY[0x277D85DD0];
              v56[1] = 3221225472;
              v56[2] = __42__PUICalendarPrivacyController_specifiers__block_invoke;
              v56[3] = &unk_279BA1900;
              v31 = v29;
              v57 = v31;
              objc_copyWeak(&v58, buf);
              [mEMORY[0x277D2BD58] getIconForBundleID:v27 iconVariant:v47 block:v56 timeout:-1.0];
              [v53 addObject:v31];
              objc_destroyWeak(&v58);

              objc_destroyWeak(buf);
            }
          }

          v21 = [calendarAllAppIDs countByEnumeratingWithState:&v59 objects:v67 count:16];
        }

        while (v21);
      }
    }

    [v53 sortUsingComparator:&__block_literal_global_107];
    v32 = [v53 copy];
    [(PUICalendarPrivacyController *)val setCalendarAppSpecifiers:v32];

    v33 = objc_opt_new();
    v34 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    [v34 setIdentifier:@"CALENDAR_PRIVACY_DESCRIPTION"];
    v35 = PUI_LocalizedStringForPrivacy(@"CALENDARS_PRIVACY_DESCRIPTION");
    v36 = *MEMORY[0x277D3FF88];
    [v34 setProperty:v35 forKey:*MEMORY[0x277D3FF88]];
    [v33 addObject:v34];
    v37 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:val set:0 get:0 detail:0 cell:-1 edit:0];
    [v37 setProperty:@"CALENDAR_PICKER_INFO_CELL" forKey:*MEMORY[0x277D3FFB8]];
    v38 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    [v37 setProperty:v38 forKey:*MEMORY[0x277D40140]];

    [v37 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v37 setIdentifier:@"CALENDAR_PREVIEW_GROUP"];
    [v33 addObject:v37];
    v39 = [v53 count] == 0;
    v40 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    v41 = v40;
    if (v39)
    {
      [v40 setIdentifier:@"NO_APP_GROUP"];
      v42 = PUI_LocalizedStringForPrivacy(@"CALENDARS_NO_APP_FOOTER");
      [v41 setProperty:v42 forKey:v36];
      [v33 addObject:v41];
    }

    else
    {
      [v40 setIdentifier:@"CALENDAR_FOOTER_SPACING"];
      [v33 addObject:v41];
      [v33 addObjectsFromArray:v53];
    }

    v43 = *(&val->super.super.super.super.super.isa + v46);
    *(&val->super.super.super.super.super.isa + v46) = v33;

    [(PUICalendarPrivacyController *)val updateSpecifiersForImposedSettings];
    v3 = *(&val->super.super.super.super.super.isa + v46);
  }

  return v3;
}

void __42__PUICalendarPrivacyController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PUICalendarPrivacyController_specifiers__block_invoke_2;
  block[3] = &unk_279BA18D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __42__PUICalendarPrivacyController_specifiers__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D3FFC0]];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

uint64_t __42__PUICalendarPrivacyController_specifiers__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (id)appSpecifierWithName:(id)name bundleID:(id)d
{
  v6 = MEMORY[0x277D3FAD8];
  dCopy = d;
  nameCopy = name;
  v9 = [v6 preferenceSpecifierNamed:nameCopy target:self set:sel__setCalendarStatus_specifier_ get:sel_calendarStatus_ detail:objc_opt_class() cell:2 edit:0];

  [v9 setIdentifier:dCopy];
  [v9 setProperty:dCopy forKey:@"appBundleID"];

  v10 = PUI_LocalizedStringForPrivacy(@"CALENDARS_AUTH_HEADER");
  [v9 setProperty:v10 forKey:*MEMORY[0x277D40110]];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v13 = PUI_LocalizedStringForPrivacy(@"CALENDARS_NO_ACCESS_AUTHORIZATION");
  [array addObject:v13];

  [array2 addObject:&unk_28772B2B8];
  v14 = PUI_LocalizedStringForPrivacy(@"CALENDARS_WRITE_ONLY_ACCESS_AUTHORIZATION");
  [array addObject:v14];

  [array2 addObject:&unk_28772B288];
  v15 = PUI_LocalizedStringForPrivacy(@"CALENDARS_FULL_ACCESS_AUTHORIZATION");
  [array addObject:v15];

  [array2 addObject:&unk_28772B2A0];
  [v9 setValues:array2 titles:array];

  return v9;
}

- (void)_setCalendarStatus:(id)status specifier:(id)specifier
{
  v25 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v7 = [specifier propertyForKey:@"appBundleID"];
  v8 = _PUILoggingFacility(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v7;
    v23 = 1024;
    intValue = [statusCopy intValue];
    _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "Selected entry for app %@: %d", &v21, 0x12u);
  }

  intValue2 = [statusCopy intValue];
  if (intValue2 == 2)
  {
    v10 = _PUILoggingFacility(intValue2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v7;
      _os_log_impl(&dword_2657FE000, v10, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to full", &v21, 0xCu);
    }

    v11 = *MEMORY[0x277D6C118];
    selfCopy3 = self;
    v13 = v7;
    v14 = 2;
LABEL_18:
    [(PUICalendarPrivacyController *)selfCopy3 setTCCForService:v11 appIdentifier:v13 value:v14];
    goto LABEL_19;
  }

  intValue3 = [statusCopy intValue];
  if (intValue3 == 1)
  {
    v16 = _PUILoggingFacility(intValue3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v7;
      _os_log_impl(&dword_2657FE000, v16, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to write-only", &v21, 0xCu);
    }

    v11 = *MEMORY[0x277D6C118];
    selfCopy3 = self;
    v13 = v7;
    v14 = 1;
    goto LABEL_18;
  }

  intValue4 = [statusCopy intValue];
  v18 = intValue4;
  v19 = _PUILoggingFacility(intValue4);
  v20 = v19;
  if (!v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v7;
      _os_log_impl(&dword_2657FE000, v20, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to denied", &v21, 0xCu);
    }

    v11 = *MEMORY[0x277D6C118];
    selfCopy3 = self;
    v13 = v7;
    v14 = 0;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [PUICalendarPrivacyController _setCalendarStatus:statusCopy specifier:v20];
  }

LABEL_19:
  [(PUICalendarPrivacyController *)self updateCalendarAuthorizationStates];
  [(PUICalendarPrivacyController *)self reloadSpecifiers];
}

- (id)calendarStatus:(id)status
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [status propertyForKey:@"appBundleID"];
  calendarFullAccessAllowedAppIDs = [(PUICalendarPrivacyController *)self calendarFullAccessAllowedAppIDs];
  v6 = [calendarFullAccessAllowedAppIDs containsObject:v4];

  if (v6)
  {
    v8 = _PUILoggingFacility(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "App %@ has full calendar access", &v18, 0xCu);
    }

    v9 = &unk_28772B2A0;
  }

  else
  {
    calendarWriteOnlyAppIDs = [(PUICalendarPrivacyController *)self calendarWriteOnlyAppIDs];
    v11 = [calendarWriteOnlyAppIDs containsObject:v4];

    if (v11)
    {
      v8 = _PUILoggingFacility(v12);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v4;
        _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "App %@ has write-only calendar access", &v18, 0xCu);
      }

      v9 = &unk_28772B288;
    }

    else
    {
      calendarNoAccessAppIDs = [(PUICalendarPrivacyController *)self calendarNoAccessAppIDs];
      v14 = [calendarNoAccessAppIDs containsObject:v4];

      v16 = _PUILoggingFacility(v15);
      v8 = v16;
      if (v14)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = v4;
          _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "App %@ has no calendar access", &v18, 0xCu);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(PUICalendarPrivacyController *)v4 calendarStatus:v8];
      }

      v9 = &unk_28772B2B8;
    }
  }

  return v9;
}

- (void)updateCalendarAuthorizationStates
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D6C118];
  v4 = tcc_server_create();
  v5 = tcc_service_singleton_for_CF_name();
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = _PUILoggingFacility(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v28) = 138412290;
    *(&v28 + 4) = v3;
    _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "Requesting TCC auth records for service: %@", &v28, 0xCu);
  }

  *&v28 = MEMORY[0x277D85DD0];
  *(&v28 + 1) = 3221225472;
  v29 = __PUICalendarAuthorizationStatesForService_block_invoke;
  v30 = &unk_279BA1948;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v3;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  tcc_server_message_get_authorization_records_by_service();
  v13 = [v12 copy];
  v14 = v13;
  v15 = [v11 copy];
  v16 = v15;
  v17 = [v10 copy];
  v18 = v17;

  v19 = v13;
  v20 = v15;
  v21 = v17;
  [(PUICalendarPrivacyController *)self setCalendarFullAccessAllowedAppIDs:v19];
  [(PUICalendarPrivacyController *)self setCalendarWriteOnlyAppIDs:v20];

  [(PUICalendarPrivacyController *)self setCalendarNoAccessAppIDs:v21];
  calendarWriteOnlyAppIDs = [(PUICalendarPrivacyController *)self calendarWriteOnlyAppIDs];
  calendarFullAccessAllowedAppIDs = [(PUICalendarPrivacyController *)self calendarFullAccessAllowedAppIDs];
  v24 = [calendarWriteOnlyAppIDs setByAddingObjectsFromSet:calendarFullAccessAllowedAppIDs];
  [(PUICalendarPrivacyController *)self setCalendarSomeAccessAppIDs:v24];

  calendarSomeAccessAppIDs = [(PUICalendarPrivacyController *)self calendarSomeAccessAppIDs];
  calendarNoAccessAppIDs = [(PUICalendarPrivacyController *)self calendarNoAccessAppIDs];
  v27 = [calendarSomeAccessAppIDs setByAddingObjectsFromSet:calendarNoAccessAppIDs];
  [(PUICalendarPrivacyController *)self setCalendarAllAppIDs:v27];
}

- (void)updateSpecifiersForImposedSettings
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{+[PUICalendarPrivacyController isServiceRestricted:](PUICalendarPrivacyController, "isServiceRestricted:", *MEMORY[0x277D6C118]) ^ 1}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(PUICalendarPrivacyController *)self calendarAppSpecifiers];
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

- (void)_setCalendarStatus:(uint64_t)a1 specifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "Unexpected value set for calendar tcc access: %@", &v2, 0xCu);
}

- (void)calendarStatus:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "Unexpected status for calendar access, not in any array: %@", &v2, 0xCu);
}

@end