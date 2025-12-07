@interface PUIContactsPrivacyController
+ (BOOL)isServiceRestricted:(id)restricted;
- (id)appSpecifierWithName:(id)name bundleID:(id)d showContactsAccess:(BOOL)access showPickerUsage:(BOOL)usage;
- (id)contactsStatus:(id)status;
- (id)createSpecifiers;
- (id)createSpecifiersWithCombinedPickerUsage;
- (id)specifiers;
- (void)_setContactsTCCStatus:(id)status specifier:(id)specifier;
- (void)provideNavigationDonations;
- (void)setAccess:(id)access forSpecifier:(id)specifier;
- (void)setTCCForService:(__CFString *)service appIdentifier:(id)identifier value:(int)value;
- (void)updateContactsAuthorizationStates;
- (void)updateSpecifiersForImposedSettings;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PUIContactsPrivacyController

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUIContactsPrivacyController;
  [(PUIContactsPrivacyController *)&v4 viewDidAppear:appear];
  [(PUIContactsPrivacyController *)self provideNavigationDonations];
}

- (void)provideNavigationDonations
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = PUI_BundleForPrivacySettingsFramework(self);
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"CONTACTS" table:@"Privacy" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/CONTACTS"];
  [(PUIContactsPrivacyController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.privacy" title:v7 localizedNavigationComponents:v11 deepLink:v12];
}

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

- (void)updateSpecifiersForImposedSettings
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{+[PUIContactsPrivacyController isServiceRestricted:](PUIContactsPrivacyController, "isServiceRestricted:", *MEMORY[0x277D6C100]) ^ 1}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(PUIContactsPrivacyController *)self contactsAppSpecifiers];
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

- (void)updateContactsAuthorizationStates
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D6C100];
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
  v29 = __PUIContactsAuthorizationStatesForService_block_invoke;
  v30 = &unk_279BA1948;
  v10 = v6;
  v31 = v10;
  v11 = v7;
  v32 = v11;
  v12 = v8;
  v33 = v12;
  v34 = v3;
  tcc_server_message_get_authorization_records_by_service();
  v13 = [v10 copy];
  v14 = v13;
  v15 = [v11 copy];
  v16 = v15;
  if (v12)
  {
    v17 = [v12 copy];
    v18 = v17;
  }

  else
  {
    v17 = 0;
  }

  v19 = v13;
  v20 = v15;
  v21 = v17;
  [(PUIContactsPrivacyController *)self setContactsFullAccessAllowedAppIDs:v19];
  [(PUIContactsPrivacyController *)self setContactsLimitedAccessAppIDs:v20];

  [(PUIContactsPrivacyController *)self setContactsDeniedAppIDs:v21];
  contactsFullAccessAllowedAppIDs = [(PUIContactsPrivacyController *)self contactsFullAccessAllowedAppIDs];
  contactsLimitedAccessAppIDs = [(PUIContactsPrivacyController *)self contactsLimitedAccessAppIDs];
  v24 = [contactsFullAccessAllowedAppIDs setByAddingObjectsFromSet:contactsLimitedAccessAppIDs];

  contactsDeniedAppIDs = [(PUIContactsPrivacyController *)self contactsDeniedAppIDs];
  v26 = [v24 setByAddingObjectsFromSet:contactsDeniedAppIDs];
  [(PUIContactsPrivacyController *)self setContactsAllAppIDs:v26];

  v27 = bundleIdentifiersWithPickerAccess();
  [(PUIContactsPrivacyController *)self setPickerUsageAppIDs:v27];
}

- (void)_setContactsTCCStatus:(id)status specifier:(id)specifier
{
  *&v18[13] = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v7 = [specifier propertyForKey:@"appBundleID"];
  intValue = [statusCopy intValue];

  if (intValue > 4)
  {
    v10 = @"unsupported";
  }

  else
  {
    v10 = off_279BA19A8[intValue];
  }

  v11 = _PUILoggingFacility(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = v7;
    v17 = 1024;
    *v18 = intValue;
    v18[2] = 2112;
    *&v18[3] = v10;
    _os_log_impl(&dword_2657FE000, v11, OS_LOG_TYPE_DEFAULT, "Selected contacts auth for app %@: %d(%@)", &v15, 0x1Cu);
  }

  v13 = _PUILoggingFacility(v12);
  v14 = v13;
  if (intValue > 2)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v15 = 138412802;
      v16 = v7;
      v17 = 1024;
      *v18 = intValue;
      v18[2] = 2112;
      *&v18[3] = v10;
      _os_log_fault_impl(&dword_2657FE000, v14, OS_LOG_TYPE_FAULT, "Unexpected value set for contacts tcc access for app %@: %d(%@)", &v15, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v7;
      v17 = 2112;
      *v18 = v10;
      _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "Setting contacts auth for app %@ to %@", &v15, 0x16u);
    }

    [(PUIContactsPrivacyController *)self setTCCForService:*MEMORY[0x277D6C100] appIdentifier:v7 value:intValue];
  }

  [(PUIContactsPrivacyController *)self updateContactsAuthorizationStates];
  [(PUIContactsPrivacyController *)self reloadSpecifiers];
}

- (void)setTCCForService:(__CFString *)service appIdentifier:(id)identifier value:(int)value
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9 = _PUILoggingFacility(identifierCopy);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (value != 4)
  {
    if (v10)
    {
      *buf = 138412802;
      serviceCopy2 = service;
      v25 = 2112;
      v26 = identifierCopy;
      v27 = 1024;
      valueCopy = value;
      _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%d", buf, 0x1Cu);
    }

    if (setTCCForService_appIdentifier_value__onceToken_0 != -1)
    {
      [PUIContactsPrivacyController setTCCForService:appIdentifier:value:];
    }

    [(__CFString *)identifierCopy cStringUsingEncoding:4];
    v9 = tcc_identity_create();
    v11 = tcc_service_singleton_for_CF_name();
    if (value == 1)
    {
      contactsLimitedAccessAppIDs = [(PUIContactsPrivacyController *)self contactsLimitedAccessAppIDs];
      v18 = [contactsLimitedAccessAppIDs containsObject:identifierCopy];

      if (v18)
      {
        goto LABEL_21;
      }
    }

    else if (value != 3)
    {
      if (value == 2)
      {
        contactsFullAccessAllowedAppIDs = [(PUIContactsPrivacyController *)self contactsFullAccessAllowedAppIDs];
        v13 = [contactsFullAccessAllowedAppIDs containsObject:identifierCopy];

        if ((v13 & 1) == 0)
        {
          if (_os_feature_enabled_impl())
          {
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __69__PUIContactsPrivacyController_setTCCForService_appIdentifier_value___block_invoke_2;
            v21[3] = &unk_279BA18B0;
            v21[4] = self;
            v14 = identifierCopy;
            v22 = v14;
            v15 = _Block_copy(v21);
            v16 = _PUILoggingFacility(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              serviceCopy2 = service;
              v25 = 2112;
              v26 = v14;
              _os_log_impl(&dword_2657FE000, v16, OS_LOG_TYPE_DEFAULT, "Setting %@ auth for app %@ to full, after prompt", buf, 0x16u);
            }

            tcc_server_message_prompt_authorization_value();
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_21:

        goto LABEL_22;
      }

      contactsDeniedAppIDs = [(PUIContactsPrivacyController *)self contactsDeniedAppIDs];
      v20 = [contactsDeniedAppIDs containsObject:identifierCopy];

      if (v20)
      {
        goto LABEL_21;
      }
    }

LABEL_20:
    tcc_server_message_set_authorization_value();
    [(PUIContactsPrivacyController *)self updateContactsAuthorizationStates];
    goto LABEL_21;
  }

  if (v10)
  {
    *buf = 138412290;
    serviceCopy2 = identifierCopy;
    _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "Access level is picker only; Skipping for app: %@", buf, 0xCu);
  }

LABEL_22:
}

uint64_t __69__PUIContactsPrivacyController_setTCCForService_appIdentifier_value___block_invoke()
{
  setTCCForService_appIdentifier_value__tccServer_0 = tcc_server_create();

  return MEMORY[0x2821F96F8]();
}

void __69__PUIContactsPrivacyController_setTCCForService_appIdentifier_value___block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) updateContactsAuthorizationStates];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = @"PUIContactsPrivacyUpgradePromptAppIdentifierKey";
  v9[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 postNotificationName:@"PUIContactsPrivacyUpgradePromptCompletedNotification" object:v4 userInfo:v5];

  v6 = dispatch_time(0, 100000000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__PUIContactsPrivacyController_setTCCForService_appIdentifier_value___block_invoke_3;
  v7[3] = &unk_279BA0B28;
  v7[4] = *(a1 + 32);
  dispatch_after(v6, MEMORY[0x277D85CD0], v7);
}

- (id)contactsStatus:(id)status
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [status propertyForKey:@"appBundleID"];
  contactsFullAccessAllowedAppIDs = [(PUIContactsPrivacyController *)self contactsFullAccessAllowedAppIDs];
  v6 = [contactsFullAccessAllowedAppIDs containsObject:v4];

  if (v6)
  {
    v8 = _PUILoggingFacility(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v4;
      _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "App %@ has full contacts access", &v21, 0xCu);
    }

    v9 = &unk_28772B2E8;
    goto LABEL_19;
  }

  contactsLimitedAccessAppIDs = [(PUIContactsPrivacyController *)self contactsLimitedAccessAppIDs];
  v11 = [contactsLimitedAccessAppIDs containsObject:v4];

  if (v11)
  {
    v8 = _PUILoggingFacility(v12);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v4;
      _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "App %@ has limited contacts access", &v21, 0xCu);
    }

    v9 = &unk_28772B2D0;
    goto LABEL_19;
  }

  contactsDeniedAppIDs = [(PUIContactsPrivacyController *)self contactsDeniedAppIDs];
  v14 = [contactsDeniedAppIDs containsObject:v4];

  if (v14)
  {
    v8 = _PUILoggingFacility(v15);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v4;
      _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "App %@ has no access to contacts", &v21, 0xCu);
    }

LABEL_18:
    v9 = &unk_28772B300;
    goto LABEL_19;
  }

  pickerUsageAppIDs = [(PUIContactsPrivacyController *)self pickerUsageAppIDs];
  v17 = [pickerUsageAppIDs containsObject:v4];

  v19 = _PUILoggingFacility(v18);
  v8 = v19;
  if (!v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(PUIContactsPrivacyController *)v4 contactsStatus:v8];
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v4;
    _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "App %@ has private access to contacts", &v21, 0xCu);
  }

  v9 = &unk_28772B318;
LABEL_19:

  return v9;
}

- (id)appSpecifierWithName:(id)name bundleID:(id)d showContactsAccess:(BOOL)access showPickerUsage:(BOOL)usage
{
  usageCopy = usage;
  accessCopy = access;
  v10 = MEMORY[0x277D3FAD8];
  dCopy = d;
  nameCopy = name;
  v13 = [v10 preferenceSpecifierNamed:nameCopy target:self set:sel__setContactsTCCStatus_specifier_ get:sel_contactsStatus_ detail:objc_opt_class() cell:2 edit:0];
  [v13 setIdentifier:dCopy];
  [v13 setProperty:dCopy forKey:@"appBundleID"];

  [v13 setProperty:nameCopy forKey:@"appLocalizedDisplayName"];
  v14 = PUI_LocalizedStringForPrivacy(@"CONTACTS_AUTH_HEADER");
  [v13 setProperty:v14 forKey:*MEMORY[0x277D40110]];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (accessCopy)
  {
    v17 = PUI_LocalizedStringForPrivacy(@"CONTACTS_NO_ACCESS_AUTHORIZATION");
    [array addObject:v17];

    [array2 addObject:&unk_28772B300];
    [v13 setProperty:MEMORY[0x277CBEC38] forKey:@"hasTCCOptions"];
    v18 = PUI_LocalizedStringForPrivacy(@"CONTACTS_LIMITED_ACCESS_AUTHORIZATION");
    [array addObject:v18];

    [array2 addObject:&unk_28772B2D0];
    v19 = PUI_LocalizedStringForPrivacy(@"CONTACTS_FULL_ACCESS_AUTHORIZATION");
    [array addObject:v19];

    [array2 addObject:&unk_28772B2E8];
  }

  if (usageCopy)
  {
    v20 = PUI_LocalizedStringForPrivacy(@"CONTACTS_PICKER_ONLY_AUTHORIZATION");
    [array addObject:v20];

    [array2 addObject:&unk_28772B318];
    [v13 setProperty:MEMORY[0x277CBEC38] forKey:@"hasPickerInfo"];
  }

  [v13 setValues:array2 titles:array];

  return v13;
}

- (id)createSpecifiersWithCombinedPickerUsage
{
  v101 = *MEMORY[0x277D85DE8];
  v2 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v62 = *MEMORY[0x277D3FC48];
    [(PUIContactsPrivacyController *)self updateContactsAuthorizationStates];
    v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = MEMORY[0x277D6C100];
    v6 = TCCAccessCopyInformation();
    v75 = [PUIContactsPrivacyController isServiceRestricted:*v5];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
    if (v7)
    {
      v8 = *v91;
      v69 = *MEMORY[0x277D40008];
      v66 = *MEMORY[0x277D40020];
      v64 = *MEMORY[0x277D3FF38];
      v9 = MEMORY[0x277D6C0C8];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v91 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v90 + 1) + 8 * i);
          v12 = [v11 objectForKey:*v9];
          v13 = v12;
          if (v12)
          {
            v14 = CFBundleGetIdentifier(v12);
            if (([v4 containsObject:v14] & 1) == 0)
            {
              [v4 addObject:v14];
              v15 = PUIDisplayNameForApp(v13);
              contactsAllAppIDs = [(PUIContactsPrivacyController *)self contactsAllAppIDs];
              v17 = [contactsAllAppIDs containsObject:v14];

              pickerUsageAppIDs = [(PUIContactsPrivacyController *)self pickerUsageAppIDs];
              v19 = [pickerUsageAppIDs containsObject:v14];

              if ((v17 | v19))
              {
                v20 = [(PUIContactsPrivacyController *)self appSpecifierWithName:v15 bundleID:v14 showContactsAccess:v17 showPickerUsage:v19];
                [v20 setProperty:v14 forKey:v69];
                [v20 setProperty:MEMORY[0x277CBEC38] forKey:v66];
                v21 = [MEMORY[0x277CCABB0] numberWithInt:!v75];
                [v20 setProperty:v21 forKey:v64];

                [v76 addObject:v20];
              }
            }
          }

          else
          {
            v14 = _PUILoggingFacility(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v95 = v11;
              _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "Contacts: TCCAccess skipping app with nil bundle for %@", buf, 0xCu);
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
      }

      while (v7);
    }

    v63 = PUIGetActivePairedDevice();
    if (v63 && objc_opt_class())
    {
      mEMORY[0x277D2BD58] = [MEMORY[0x277D2BD58] sharedInstance];
      ScreenScale();
      v88 = 0u;
      v89 = 0u;
      if (v23 == 2)
      {
        v24 = 47;
      }

      else
      {
        v24 = 48;
      }

      v67 = v24;
      v87 = 0uLL;
      v86 = 0uLL;
      contactsAllAppIDs2 = [(PUIContactsPrivacyController *)self contactsAllAppIDs];
      v25 = [contactsAllAppIDs2 countByEnumeratingWithState:&v86 objects:v99 count:16];
      if (v25)
      {
        v72 = *v87;
        v65 = *MEMORY[0x277D3FF38];
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v87 != v72)
            {
              objc_enumerationMutation(contactsAllAppIDs2);
            }

            v27 = *(*(&v86 + 1) + 8 * j);
            if (([v4 containsObject:v27] & 1) == 0)
            {
              [v4 addObject:v27];
              v28 = PUIDisplayNameForWatchApp(v27);
              if (v28)
              {
                v29 = v27;
              }

              else
              {
                v29 = PUIWatchBundleIDForBundleID(v27);
                v28 = PUIDisplayNameForWatchApp(v29);
              }

              contactsAllAppIDs3 = [(PUIContactsPrivacyController *)self contactsAllAppIDs];
              v31 = [contactsAllAppIDs3 containsObject:v27];

              pickerUsageAppIDs2 = [(PUIContactsPrivacyController *)self pickerUsageAppIDs];
              v33 = [pickerUsageAppIDs2 containsObject:v27];

              if (v28)
              {
                v34 = v28;
              }

              else
              {
                v34 = v27;
              }

              v35 = [(PUIContactsPrivacyController *)self appSpecifierWithName:v34 bundleID:v27 showContactsAccess:v31 showPickerUsage:v33];
              v36 = [MEMORY[0x277CCABB0] numberWithInt:!v75];
              [v35 setObject:v36 forKeyedSubscript:v65];

              objc_initWeak(buf, self);
              v83[0] = MEMORY[0x277D85DD0];
              v83[1] = 3221225472;
              v83[2] = __71__PUIContactsPrivacyController_createSpecifiersWithCombinedPickerUsage__block_invoke;
              v83[3] = &unk_279BA1900;
              v37 = v35;
              v84 = v37;
              objc_copyWeak(&v85, buf);
              [mEMORY[0x277D2BD58] getIconForBundleID:v29 iconVariant:v67 block:v83 timeout:-1.0];
              [v76 addObject:v37];
              objc_destroyWeak(&v85);

              objc_destroyWeak(buf);
            }
          }

          v25 = [contactsAllAppIDs2 countByEnumeratingWithState:&v86 objects:v99 count:16];
        }

        while (v25);
      }
    }

    v73 = bundleIdentifiersWithPickerAccess();
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v38 = [v73 countByEnumeratingWithState:&v79 objects:v98 count:16];
    if (v38)
    {
      v39 = *v80;
      v71 = *MEMORY[0x277D40008];
      v68 = *MEMORY[0x277D40020];
      v40 = *MEMORY[0x277D3FF38];
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v80 != v39)
          {
            objc_enumerationMutation(v73);
          }

          v42 = *(*(&v79 + 1) + 8 * k);
          v43 = [v4 containsObject:v42];
          if (v43)
          {
            v44 = _PUILoggingFacility(v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v95 = v42;
              _os_log_impl(&dword_2657FE000, v44, OS_LOG_TYPE_DEFAULT, "Contacts: Skipping picker log: %@", buf, 0xCu);
            }
          }

          else
          {
            v78 = 0;
            v45 = [MEMORY[0x277CC1E70] bundleRecordWithApplicationIdentifier:v42 error:&v78];
            v46 = v78;
            v44 = v46;
            if (v45)
            {
              localizedName = [v45 localizedName];
              v48 = [(PUIContactsPrivacyController *)self appSpecifierWithName:localizedName bundleID:v42 showContactsAccess:0 showPickerUsage:1];
              [v48 setProperty:v42 forKey:v71];
              [v48 setProperty:MEMORY[0x277CBEC38] forKey:v68];
              v49 = [MEMORY[0x277CCABB0] numberWithInt:!v75];
              [v48 setObject:v49 forKeyedSubscript:v40];

              [v76 addObject:v48];
            }

            else
            {
              localizedName = _PUILoggingFacility(v46);
              if (os_log_type_enabled(localizedName, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v95 = v42;
                v96 = 2112;
                v97 = v44;
                _os_log_impl(&dword_2657FE000, localizedName, OS_LOG_TYPE_DEFAULT, "Contacts: Skipping picker log for app (%@) without bundle record with error: %@", buf, 0x16u);
              }
            }
          }
        }

        v38 = [v73 countByEnumeratingWithState:&v79 objects:v98 count:16];
      }

      while (v38);
    }

    [v76 sortUsingComparator:&__block_literal_global_280];
    v50 = [v76 copy];
    [(PUIContactsPrivacyController *)self setContactsAppSpecifiers:v50];

    v51 = objc_opt_new();
    v52 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    [v52 setIdentifier:@"CONTACTS_PRIVACY_FOOTER"];
    v53 = PUI_LocalizedStringForPrivacy(@"CONTACTS_PRIVACY_FOOTER");
    v54 = *MEMORY[0x277D3FF88];
    [v52 setProperty:v53 forKey:*MEMORY[0x277D3FF88]];
    [v51 addObject:v52];
    v55 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v55 setProperty:@"CONTACTS_PICKER_INFO_CELL" forKey:*MEMORY[0x277D3FFB8]];
    v56 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    [v55 setProperty:v56 forKey:*MEMORY[0x277D40140]];

    [v55 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v55 setIdentifier:@"CONTACTS_AVATAR_VIEW"];
    [v51 addObject:v55];
    if ([v76 count])
    {
      v57 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28771E540 target:0 set:0 get:0 detail:0 cell:0 edit:0];
      [v57 setIdentifier:@"CONTACTS_APP_GROUP"];
      [v51 addObject:v57];
      [v51 addObjectsFromArray:v76];
    }

    else
    {
      v57 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
      [v57 setIdentifier:@"NO_APP_GROUP"];
      v58 = PUI_LocalizedStringForPrivacy(@"CONTACTS_NO_APP_FOOTER");
      [v57 setProperty:v58 forKey:v54];
      [v51 addObject:v57];
    }

    v59 = *(&self->super.super.super.super.super.isa + v62);
    *(&self->super.super.super.super.super.isa + v62) = v51;
    v60 = v51;

    v3 = *(&self->super.super.super.super.super.isa + v62);
  }

  return v3;
}

void __71__PUIContactsPrivacyController_createSpecifiersWithCombinedPickerUsage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__PUIContactsPrivacyController_createSpecifiersWithCombinedPickerUsage__block_invoke_2;
  block[3] = &unk_279BA18D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __71__PUIContactsPrivacyController_createSpecifiersWithCombinedPickerUsage__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D3FFC0]];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

uint64_t __71__PUIContactsPrivacyController_createSpecifiersWithCombinedPickerUsage__block_invoke_277(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (void)setAccess:(id)access forSpecifier:(id)specifier
{
  v14 = *MEMORY[0x277D85DE8];
  accessCopy = access;
  specifierCopy = specifier;
  v7 = *MEMORY[0x277D401A8];
  v8 = [specifierCopy propertyForKey:*MEMORY[0x277D401A8]];
  v9 = [accessCopy isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [specifierCopy propertyForKey:@"appBundleID"];
    [accessCopy BOOLValue];
    TCCAccessSetForBundleId();
    v11 = _PUILoggingFacility([specifierCopy setProperty:accessCopy forKey:v7]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_2657FE000, v11, OS_LOG_TYPE_DEFAULT, "########### Quitting application (%@) in response to privacy settings change.", &v12, 0xCu);
    }
  }
}

- (id)createSpecifiers
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v57 = *MEMORY[0x277D3FC48];
    v4 = TCCAccessCopyInformation();
    v72 = objc_opt_new();
    v70 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count") + 1}];
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v80 objects:v87 count:16];
    if (v5)
    {
      v71 = *v81;
      v68 = *MEMORY[0x277D40008];
      v64 = *MEMORY[0x277D401A8];
      v66 = *MEMORY[0x277D40020];
      v60 = *MEMORY[0x277D3FE58];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v81 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v80 + 1) + 8 * i);
          v8 = [v7 objectForKey:*MEMORY[0x277D6C0C8]];
          v9 = v8;
          if (v8)
          {
            v10 = CFBundleGetIdentifier(v8);
            [v72 addObject:v10];
            v11 = MEMORY[0x277D3FAD8];
            v12 = PUIDisplayNameForApp(v9);
            v13 = [v11 preferenceSpecifierNamed:v12 target:self set:sel_setAccess_forSpecifier_ get:sel_accesssForSpecifier_ detail:0 cell:6 edit:0];

            [v13 setIdentifier:v10];
            [v13 setProperty:v10 forKey:v68];
            [v13 setProperty:MEMORY[0x277CBEC38] forKey:v66];
            v14 = [v7 objectForKey:*MEMORY[0x277D6C0D0]];
            [v13 setProperty:v14 forKey:v64];

            [v13 setProperty:v10 forKey:@"appBundleID"];
            [v13 setProperty:v10 forKey:@"PUITCCAccessControllerBundleIDKey"];
            specifier = [(PUIContactsPrivacyController *)self specifier];
            v16 = [specifier objectForKeyedSubscript:@"PUITCCAccessControllerCellClassKey"];

            if (v16)
            {
              specifier2 = [(PUIContactsPrivacyController *)self specifier];
              v18 = [specifier2 objectForKeyedSubscript:@"PUITCCAccessControllerCellClassKey"];
              [v13 setProperty:v18 forKey:v60];
            }

            specifier3 = [(PUIContactsPrivacyController *)self specifier];
            v20 = [specifier3 objectForKeyedSubscript:@"PUITCCAccessControllerCellDelegateKey"];

            if (v20)
            {
              specifier4 = [(PUIContactsPrivacyController *)self specifier];
              v22 = [specifier4 objectForKeyedSubscript:@"PUITCCAccessControllerCellDelegateKey"];
              [v13 setProperty:v22 forKey:@"PUITCCAccessControllerCellDelegateKey"];
            }

            [v70 addObject:v13];
          }

          else
          {
            v10 = _PUILoggingFacility(0);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v86 = v7;
              _os_log_impl(&dword_2657FE000, v10, OS_LOG_TYPE_DEFAULT, "TCCAccess skipping app with nil bundle: %@", buf, 0xCu);
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v80 objects:v87 count:16];
      }

      while (v5);
    }

    v56 = PUIGetActivePairedDevice();
    if (v56 && objc_opt_class())
    {
      v23 = MEMORY[0x277CBEB98];
      v24 = TCCAccessCopyBundleIdentifiersForService();
      v67 = [v23 setWithArray:v24];

      v25 = MEMORY[0x277CBEB98];
      v26 = TCCAccessCopyBundleIdentifiersDisabledForService();
      v55 = [v25 setWithArray:v26];

      v27 = [v67 setByAddingObjectsFromSet:v55];
      mEMORY[0x277D2BD58] = [MEMORY[0x277D2BD58] sharedInstance];
      ScreenScale();
      if (v28 == 2)
      {
        v29 = 47;
      }

      else
      {
        v29 = 48;
      }

      v63 = v29;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v69 = v27;
      v30 = [v69 countByEnumeratingWithState:&v76 objects:v84 count:16];
      if (v30)
      {
        v31 = *v77;
        v61 = *MEMORY[0x277D3FFC0];
        v59 = *MEMORY[0x277D401A8];
        v58 = *MEMORY[0x277D3FE58];
        do
        {
          v32 = 0;
          do
          {
            if (*v77 != v31)
            {
              objc_enumerationMutation(v69);
            }

            v33 = *(*(&v76 + 1) + 8 * v32);
            if (([v72 containsObject:v33] & 1) == 0)
            {
              [v72 addObject:v33];
              v34 = PUIDisplayNameForWatchApp(v33);
              if (v34)
              {
                v35 = v33;
                v36 = MEMORY[0x277D3FAD8];
                goto LABEL_30;
              }

              v35 = PUIWatchBundleIDForBundleID(v33);
              v34 = PUIDisplayNameForWatchApp(v35);
              if (!(v34 | v35))
              {
                goto LABEL_36;
              }

              v36 = MEMORY[0x277D3FAD8];
              v37 = v33;
              if (v34)
              {
LABEL_30:
                v37 = v34;
              }

              v38 = [v36 preferenceSpecifierNamed:v37 target:self set:sel__setContactsTCCStatus_specifier_ get:sel_contactsStatus_ detail:0 cell:6 edit:0];
              [v38 setIdentifier:v33];
              v39 = PSBlankIconImage();
              [v38 setProperty:v39 forKey:v61];

              v40 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v67, "containsObject:", v33)}];
              [v38 setProperty:v40 forKey:v59];

              [v38 setProperty:v33 forKey:@"appBundleID"];
              [v38 setProperty:v33 forKey:@"PUITCCAccessControllerBundleIDKey"];
              specifier5 = [(PUIContactsPrivacyController *)self specifier];
              v42 = [specifier5 objectForKeyedSubscript:@"PUITCCAccessControllerCellClassKey"];

              if (v42)
              {
                specifier6 = [(PUIContactsPrivacyController *)self specifier];
                v44 = [specifier6 objectForKeyedSubscript:@"PUITCCAccessControllerCellClassKey"];
                [v38 setProperty:v44 forKey:v58];
              }

              specifier7 = [(PUIContactsPrivacyController *)self specifier];
              v46 = [specifier7 objectForKeyedSubscript:@"PUITCCAccessControllerCellDelegateKey"];

              if (v46)
              {
                specifier8 = [(PUIContactsPrivacyController *)self specifier];
                v48 = [specifier8 objectForKeyedSubscript:@"PUITCCAccessControllerCellDelegateKey"];
                [v38 setProperty:v48 forKey:@"PUITCCAccessControllerCellDelegateKey"];
              }

              objc_initWeak(buf, self);
              v73[0] = MEMORY[0x277D85DD0];
              v73[1] = 3221225472;
              v73[2] = __48__PUIContactsPrivacyController_createSpecifiers__block_invoke;
              v73[3] = &unk_279BA1900;
              v49 = v38;
              v74 = v49;
              objc_copyWeak(&v75, buf);
              [mEMORY[0x277D2BD58] getIconForBundleID:v35 iconVariant:v63 block:v73 timeout:-1.0];
              [v70 addObject:v49];
              objc_destroyWeak(&v75);

              objc_destroyWeak(buf);
            }

LABEL_36:
            ++v32;
          }

          while (v30 != v32);
          v50 = [v69 countByEnumeratingWithState:&v76 objects:v84 count:16];
          v30 = v50;
        }

        while (v50);
      }
    }

    [v70 sortUsingComparator:&__block_literal_global_303];
    v51 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    v52 = PUI_LocalizedStringForPrivacy(@"CONTACTS_FOOTER");
    [v51 setProperty:v52 forKey:*MEMORY[0x277D3FF88]];

    [v70 addObject:v51];
    v53 = *(&self->super.super.super.super.super.isa + v57);
    *(&self->super.super.super.super.super.isa + v57) = v70;

    [(PUIContactsPrivacyController *)self updateSpecifiersForImposedSettings];
    v3 = *(&self->super.super.super.super.super.isa + v57);
  }

  return v3;
}

void __48__PUIContactsPrivacyController_createSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PUIContactsPrivacyController_createSpecifiers__block_invoke_2;
  block[3] = &unk_279BA18D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __48__PUIContactsPrivacyController_createSpecifiers__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D3FFC0]];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

uint64_t __48__PUIContactsPrivacyController_createSpecifiers__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    if (_os_feature_enabled_impl())
    {
      [(PUIContactsPrivacyController *)self createSpecifiersWithCombinedPickerUsage];
    }

    else
    {
      [(PUIContactsPrivacyController *)self createSpecifiers];
    }
    v4 = ;
    v5 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v4;
  }

  v6 = *(&self->super.super.super.super.super.isa + v3);

  return v6;
}

- (void)contactsStatus:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "Unknown or unexpected status for contacts access, not in any array; Defaulting to denied: %@", &v2, 0xCu);
}

@end