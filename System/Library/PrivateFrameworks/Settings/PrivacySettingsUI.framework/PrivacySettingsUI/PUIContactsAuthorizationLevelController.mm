@interface PUIContactsAuthorizationLevelController
- (BOOL)isAppLinkedWithContactsLimitedAccessSupportedSDK;
- (PSSpecifier)fullAccessSpecifier;
- (PSSpecifier)limitedAccessSpecifier;
- (id)_limitedAccessSectionSpecifiers;
- (id)_parentTCCSpecifiers;
- (id)_pickerUsageSectionSpecifiers;
- (id)footerStringForSpecifiers:(id)specifiers;
- (id)specifiers;
- (unint64_t)_currentTCCAuthorizationRight;
- (void)_addLimitedAccessSection;
- (void)_addPickerUsageSectionIfNeeded;
- (void)_handleContactStoreDidChangeNotification:(id)notification;
- (void)_handleUpgradePromptNotification:(id)notification;
- (void)_presentContactsPickerForModifyingSelection;
- (void)_removeLimitedAccessSectionIfPresent;
- (void)_removePickerUsageSectionIfPresent;
- (void)contactPicker:(Class)picker didSelectContacts:(id)contacts;
- (void)dealloc;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateContactsCountSubtitleForSpecifier:(id)specifier contactsTCCAccess:(int)access;
- (void)viewDidLoad;
@end

@implementation PUIContactsAuthorizationLevelController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PUIContactsAuthorizationLevelController;
  [(PSListItemsController *)&v5 viewDidLoad];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleContactStoreDidChangeNotification_ name:*MEMORY[0x277CBD140] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleUpgradePromptNotification_ name:@"PUIContactsPrivacyUpgradePromptCompletedNotification" object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"PUIContactsPrivacyUpgradePromptCompletedNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CBD140] object:0];

  v5.receiver = self;
  v5.super_class = PUIContactsAuthorizationLevelController;
  [(PSListItemsController *)&v5 dealloc];
}

- (void)_handleUpgradePromptNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"PUIContactsPrivacyUpgradePromptAppIdentifierKey"];
  serviceKey = [(PUIContactsAuthorizationLevelController *)self serviceKey];
  v7 = [v5 isEqualToString:serviceKey];

  if (v7)
  {
    v8 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__PUIContactsAuthorizationLevelController__handleUpgradePromptNotification___block_invoke;
    block[3] = &unk_279BA0B28;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }
}

- (void)_handleContactStoreDidChangeNotification:(id)notification
{
  fullAccessSpecifier = [(PUIContactsAuthorizationLevelController *)self fullAccessSpecifier];
  [(PUIContactsAuthorizationLevelController *)self updateContactsCountSubtitleForSpecifier:fullAccessSpecifier contactsTCCAccess:2];
  [(PUIContactsAuthorizationLevelController *)self reloadSpecifier:fullAccessSpecifier];
}

- (unint64_t)_currentTCCAuthorizationRight
{
  if (_currentTCCAuthorizationRight_onceToken != -1)
  {
    [PUIContactsAuthorizationLevelController _currentTCCAuthorizationRight];
  }

  [(NSString *)self->_serviceKey cStringUsingEncoding:4];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5 = tcc_identity_create();
  tcc_server_message_get_authorization_records_by_identity();
  v3 = v7[3];

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __72__PUIContactsAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke()
{
  _currentTCCAuthorizationRight_tccServer = tcc_server_create();

  return MEMORY[0x2821F96F8]();
}

void __72__PUIContactsAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_service();
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:tcc_service_get_name() encoding:4];
    if ([v7 isEqualToString:@"kTCCServiceAddressBook"])
    {
      *(*(*(a1 + 40) + 8) + 24) = tcc_authorization_record_get_authorization_right();
    }
  }

  else
  {
    v8 = _PUILoggingFacility(0);
    v6 = v8;
    if (a3)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __72__PUIContactsAuthorizationLevelController__currentTCCAuthorizationRight__block_invoke_2_cold_1();
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "Finished getting Contacts authorization for identity: %@", &v10, 0xCu);
    }
  }
}

- (id)_parentTCCSpecifiers
{
  v41 = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = PUIContactsAuthorizationLevelController;
  specifiers = [(PSListItemsController *)&v38 specifiers];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(specifiers, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = specifiers;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
  v6 = MEMORY[0x277D3FC90];
  if (v5)
  {
    v7 = *v35;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        if (*&v9[*v6] == 3)
        {
          identifier = [v9 identifier];
          intValue = [identifier intValue];

          if (intValue == 4)
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    v28 = *MEMORY[0x277D3FE58];
    v16 = v5 ^ 1;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v30 + 1) + 8 * j);
        identifier2 = [v18 identifier];
        intValue2 = [identifier2 intValue];

        v21 = *&v18[*v6];
        if (v21 != 3 || intValue2 != 4)
        {
          if (v21 == 3)
          {
            v23 = v16;
          }

          else
          {
            v23 = 1;
          }

          if ((v23 & 1) != 0 || intValue2)
          {
            if (v21 == 3 && (intValue2 - 1) <= 1)
            {
              [v18 setProperty:objc_opt_class() forKey:v28];
              [(PUIContactsAuthorizationLevelController *)self updateContactsCountSubtitleForSpecifier:v18 contactsTCCAccess:intValue2];
            }
          }

          else
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 0];
            [v18 setIdentifier:v24];
          }

          [v3 addObject:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v14);
  }

  v26 = [v3 copy];

  return v26;
}

- (void)setSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = PUIContactsAuthorizationLevelController;
  specifierCopy = specifier;
  [(PUIContactsAuthorizationLevelController *)&v9 setSpecifier:specifierCopy];
  identifier = [specifierCopy identifier];
  serviceKey = self->_serviceKey;
  self->_serviceKey = identifier;

  v7 = [specifierCopy propertyForKey:@"appLocalizedDisplayName"];

  displayName = self->_displayName;
  self->_displayName = v7;
}

- (id)specifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&selfCopy->super.super.super.super.super.super.isa + v3))
  {
    _currentTCCAuthorizationRight = [(PUIContactsAuthorizationLevelController *)selfCopy _currentTCCAuthorizationRight];
    specifier = [(PUIContactsAuthorizationLevelController *)selfCopy specifier];
    v6 = [specifier propertyForKey:@"hasPickerInfo"];
    bOOLValue = [v6 BOOLValue];
    if (_currentTCCAuthorizationRight == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = bOOLValue;
    }

    specifier2 = [(PUIContactsAuthorizationLevelController *)selfCopy specifier];
    v10 = [specifier2 propertyForKey:@"hasTCCOptions"];
    bOOLValue2 = [v10 BOOLValue];

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (bOOLValue2)
    {
      _parentTCCSpecifiers = [(PUIContactsAuthorizationLevelController *)selfCopy _parentTCCSpecifiers];
      [v12 addObjectsFromArray:_parentTCCSpecifiers];
      firstObject = [_parentTCCSpecifiers firstObject];
      v15 = [(PUIContactsAuthorizationLevelController *)selfCopy footerStringForSpecifiers:v12];
      if (v15)
      {
        [firstObject setProperty:v15 forKey:*MEMORY[0x277D3FF88]];
      }

      _limitedAccessSectionSpecifiers = [(PUIContactsAuthorizationLevelController *)selfCopy _limitedAccessSectionSpecifiers];
      [v12 addObjectsFromArray:_limitedAccessSectionSpecifiers];
    }

    _pickerUsageSectionSpecifiers = [(PUIContactsAuthorizationLevelController *)selfCopy _pickerUsageSectionSpecifiers];
    v18 = _pickerUsageSectionSpecifiers;
    if (v8)
    {
      if ((bOOLValue2 & 1) == 0)
      {
        firstObject2 = [_pickerUsageSectionSpecifiers firstObject];
        v20 = PUI_LocalizedStringForPrivacy(@"CONTACTS_AUTH_HEADER");
        [firstObject2 setName:v20];
      }

      [v12 addObjectsFromArray:v18];
    }

    v21 = *(&selfCopy->super.super.super.super.super.super.isa + v3);
    *(&selfCopy->super.super.super.super.super.super.isa + v3) = v12;
  }

  objc_sync_exit(selfCopy);

  v22 = *(&selfCopy->super.super.super.super.super.super.isa + v3);

  return v22;
}

- (id)_pickerUsageSectionSpecifiers
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = bundleIdentifiersWithPickerAccess();
  if ([v3 containsObject:self->_serviceKey])
  {
    pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;
    if (!pickerUsageSectionSpecifiers)
    {
      v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
      v6 = *MEMORY[0x277D3FFB8];
      [v5 setProperty:@"CONTACTS_PICKER_INFO_GROUP" forKey:*MEMORY[0x277D3FFB8]];
      v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
      [v7 setProperty:@"CONTACTS_PICKER_INFO_CELL" forKey:v6];
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
      [v7 setProperty:v8 forKey:*MEMORY[0x277D40140]];

      [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      v13[0] = v5;
      v13[1] = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
      v10 = self->_pickerUsageSectionSpecifiers;
      self->_pickerUsageSectionSpecifiers = v9;

      pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;
    }

    v11 = pickerUsageSectionSpecifiers;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (id)_limitedAccessSectionSpecifiers
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (!self->_limitedAccessSectionSpecifiers)
  {
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v4 = *MEMORY[0x277D3FFB8];
    [emptyGroupSpecifier setProperty:@"CONTACTS_MANUAL_SELECTION_GROUP" forKey:*MEMORY[0x277D3FFB8]];
    v5 = MEMORY[0x277D3FAD8];
    v6 = PUI_LocalizedStringForPrivacy(@"CONTACTS_MANUAL_SELECTION_BUTTON");
    v7 = [v5 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v7 setProperty:v8 forKey:*MEMORY[0x277D3FF38]];

    [v7 setProperty:@"CONTACTS_MANUAL_SELECTION_BUTTON" forKey:v4];
    [v7 setButtonAction:sel__presentContactsPickerForModifyingSelection];
    v13[0] = emptyGroupSpecifier;
    v13[1] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    limitedAccessSectionSpecifiers = self->_limitedAccessSectionSpecifiers;
    self->_limitedAccessSectionSpecifiers = v9;
  }

  if ([(PUIContactsAuthorizationLevelController *)self _currentTCCAuthorizationRight]== 3)
  {
    v11 = self->_limitedAccessSectionSpecifiers;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (void)updateContactsCountSubtitleForSpecifier:(id)specifier contactsTCCAccess:(int)access
{
  v26 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  serviceKey = [(PUIContactsAuthorizationLevelController *)self serviceKey];
  v8 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v9 = v8;
  if (access == 1)
  {
    v15 = [v8 getLimitedAccessContactsCountForBundle:serviceKey];
    if (v15)
    {
      v10 = v15;
      v12 = 0;
      goto LABEL_17;
    }

    v14 = _PUILoggingFacility(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = serviceKey;
      _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "Error: unable to get contacts count from ContactStore for %@", buf, 0xCu);
    }

    v12 = 0;
    goto LABEL_15;
  }

  if (access != 2)
  {
    v12 = 0;
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v23 = 0;
  v10 = [v8 unifiedContactCountWithError:&v23];
  v11 = v23;
  v12 = v11;
  if (v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11 == 0;
  }

  if (!v13)
  {
    v14 = _PUILoggingFacility(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "Error: unable to get contacts count from ContactStore (%@)", buf, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
  v16 = v10;

  if (access == 1)
  {
    if ([v16 longValue] < 1)
    {
      v21 = PUI_LocalizedStringForPrivacy(@"CONTACTS_LIMITEDACCESS_NOCONTACTS_COUNT_SECONDARY_LABEL");
      [specifierCopy setProperty:v21 forKey:*MEMORY[0x277D3FE18]];
    }

    else
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = PUI_LocalizedStringForPrivacy(@"LIMITEDACCESS_CONTACTS_COUNT_SECONDARY_LABEL");
      v22 = [v20 localizedStringWithFormat:v21, objc_msgSend(v16, "longValue")];
      [specifierCopy setProperty:v22 forKey:*MEMORY[0x277D3FE18]];
    }

    [(PUIContactsAuthorizationLevelController *)self setLimitedAccessCount:v16];
    [(PUIContactsAuthorizationLevelController *)self setLimitedAccessSpecifier:specifierCopy];
  }

  else if (access == 2)
  {
    if ([v16 longValue] < 1)
    {
      v18 = PUI_LocalizedStringForPrivacy(@"CONTACTS_FULLACCESS_NOCONTACTS_COUNT_SECONDARY_LABEL");
      [specifierCopy setProperty:v18 forKey:*MEMORY[0x277D3FE18]];
    }

    else
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = PUI_LocalizedStringForPrivacy(@"FULLACCESS_CONTACTS_COUNT_SECONDARY_LABEL");
      v19 = [v17 localizedStringWithFormat:v18, objc_msgSend(v16, "longValue")];
      [specifierCopy setProperty:v19 forKey:*MEMORY[0x277D3FE18]];
    }

    [(PUIContactsAuthorizationLevelController *)self setFullAccessSpecifier:specifierCopy];
  }

  [(PUIContactsAuthorizationLevelController *)self reloadSpecifier:specifierCopy];
}

- (BOOL)isAppLinkedWithContactsLimitedAccessSupportedSDK
{
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  serviceKey = [(PUIContactsAuthorizationLevelController *)self serviceKey];
  v11 = 0;
  v5 = [v3 initWithBundleIdentifier:serviceKey allowPlaceholder:0 error:&v11];

  if (v5 && ([v5 SDKVersion], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    sDKVersion = [v5 SDKVersion];
    v8 = [sDKVersion compare:@"18.0" options:64];

    v9 = v8 < 2;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)contactPicker:(Class)picker didSelectContacts:(id)contacts
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [(PUIContactsAuthorizationLevelController *)self limitedAccessSpecifier:picker];
  [(PUIContactsAuthorizationLevelController *)self updateContactsCountSubtitleForSpecifier:v5 contactsTCCAccess:1];
  [(PUIContactsAuthorizationLevelController *)self reloadSpecifier:v5];
  isAppLinkedWithContactsLimitedAccessSupportedSDK = [(PUIContactsAuthorizationLevelController *)self isAppLinkedWithContactsLimitedAccessSupportedSDK];
  if ((isAppLinkedWithContactsLimitedAccessSupportedSDK & 1) == 0)
  {
    v7 = _PUILoggingFacility(isAppLinkedWithContactsLimitedAccessSupportedSDK);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      displayName = [(PUIContactsAuthorizationLevelController *)self displayName];
      serviceKey = [(PUIContactsAuthorizationLevelController *)self serviceKey];
      *buf = 138412546;
      v30 = displayName;
      v31 = 2112;
      v32 = serviceKey;
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "App %@(%@) is linked using SDK that doesn't support LimitedAccess for Contacts", buf, 0x16u);
    }

    v10 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"Terminating app as selected contacts changed for legacy linked app"];
    if (!v10)
    {
      goto LABEL_22;
    }

    v11 = objc_alloc(MEMORY[0x277CC1E58]);
    serviceKey2 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
    v13 = [v11 initWithBundleIdentifier:serviceKey2 URL:0 personaUniqueString:0 personaType:4];

    v14 = [MEMORY[0x277D46F60] identityForLSApplicationIdentity:v13];
    if (!v14)
    {
      v15 = _PUILoggingFacility(0);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      displayName2 = [(PUIContactsAuthorizationLevelController *)self displayName];
      serviceKey3 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
      *buf = 138412546;
      v30 = displayName2;
      v31 = 2112;
      v32 = serviceKey3;
      _os_log_impl(&dword_2657FE000, v15, OS_LOG_TYPE_DEFAULT, "Unable to get process identity for %@(%@)", buf, 0x16u);

LABEL_20:
      goto LABEL_21;
    }

    v15 = [MEMORY[0x277D46FA0] predicateMatchingIdentity:v14];
    v16 = [objc_alloc(MEMORY[0x277D47018]) initWithPredicate:v15 context:v10];
    displayName2 = v16;
    if (v16)
    {
      v28 = 0;
      v18 = [v16 execute:&v28];
      v19 = v28;
      v20 = v19;
      if (v18)
      {
        displayName4 = _PUILoggingFacility(v19);
        if (os_log_type_enabled(displayName4, OS_LOG_TYPE_DEFAULT))
        {
          displayName3 = [(PUIContactsAuthorizationLevelController *)self displayName];
          serviceKey4 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
          *buf = 138412546;
          v30 = displayName3;
          v31 = 2112;
          v32 = serviceKey4;
          v24 = "Successfully terminated %@(%@)";
LABEL_17:
          _os_log_impl(&dword_2657FE000, displayName4, OS_LOG_TYPE_DEFAULT, v24, buf, 0x16u);

          goto LABEL_18;
        }

        goto LABEL_18;
      }

      code = [v19 code];
      if (code != 3)
      {
        displayName4 = _PUILoggingFacility(code);
        if (os_log_type_enabled(displayName4, OS_LOG_TYPE_DEFAULT))
        {
          displayName3 = [(PUIContactsAuthorizationLevelController *)self displayName];
          serviceKey4 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
          *buf = 138412546;
          v30 = displayName3;
          v31 = 2112;
          v32 = serviceKey4;
          v24 = "Failed to kill %@(%@)";
          goto LABEL_17;
        }

LABEL_18:
      }
    }

    else
    {
      v20 = _PUILoggingFacility(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        displayName4 = [(PUIContactsAuthorizationLevelController *)self displayName];
        serviceKey5 = [(PUIContactsAuthorizationLevelController *)self serviceKey];
        *buf = 138412546;
        v30 = displayName4;
        v31 = 2112;
        v32 = serviceKey5;
        _os_log_impl(&dword_2657FE000, v20, OS_LOG_TYPE_DEFAULT, "Unable to create terminate request for %@(%@)", buf, 0x16u);

        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

LABEL_23:
}

- (void)_presentContactsPickerForModifyingSelection
{
  getCNLimitedAccessContactPickerViewControllerClass();
  if (objc_opt_class())
  {
    limitedAccessCount = [(PUIContactsAuthorizationLevelController *)self limitedAccessCount];
    longValue = [limitedAccessCount longValue];

    v5 = objc_alloc(getCNLimitedAccessContactPickerViewControllerClass());
    displayName = [(PUIContactsAuthorizationLevelController *)self displayName];
    serviceKey = [(PUIContactsAuthorizationLevelController *)self serviceKey];
    if (longValue <= 0)
    {
      v8 = [v5 initDeltaPickerForAppName:displayName bundleId:serviceKey];
    }

    else
    {
      v8 = [v5 initSettingsPickerForAppName:displayName bundleId:serviceKey];
    }

    v9 = v8;

    [v9 setDelegate:self];
    if (v9)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __86__PUIContactsAuthorizationLevelController__presentContactsPickerForModifyingSelection__block_invoke;
      v10[3] = &unk_279BA0B28;
      v10[4] = self;
      [(PUIContactsAuthorizationLevelController *)self presentViewController:v9 animated:1 completion:v10];
    }
  }
}

void __86__PUIContactsAuthorizationLevelController__presentContactsPickerForModifyingSelection__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _PUILoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) displayName];
    v4 = [*(a1 + 32) serviceKey];
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_2657FE000, v2, OS_LOG_TYPE_DEFAULT, "Edit selected contacts view controller dismissed for %@(%@)", &v5, 0x16u);
  }
}

- (id)footerStringForSpecifiers:(id)specifiers
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  specifiersCopy = specifiers;
  v4 = [specifiersCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(specifiersCopy);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        values = [v8 values];
        firstObject = [values firstObject];
        v11 = [firstObject isEqual:&unk_28772B2D0];

        values2 = [v8 values];
        firstObject2 = [values2 firstObject];
        v14 = [firstObject2 isEqual:&unk_28772B2E8];

        if ((v11 & 1) != 0 || v14)
        {

          v15 = PUI_LocalizedStringForPrivacy(@"CONTACTS_PRIVACY_FOOTER");
          goto LABEL_12;
        }
      }

      v5 = [specifiersCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PUIContactsAuthorizationLevelController *)self indexForIndexPath:pathCopy];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(PUIContactsAuthorizationLevelController *)self specifierAtIndex:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 propertyForKey:*MEMORY[0x277D3FFB8]];
      v12 = [v11 isEqual:@"CONTACTS_MANUAL_SELECTION_BUTTON"];

      if (v12)
      {
        [v10 performButtonAction];
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      }

      else
      {
        v18.receiver = self;
        v18.super_class = PUIContactsAuthorizationLevelController;
        [(PSListItemsController *)&v18 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
        values = [v10 values];
        firstObject = [values firstObject];
        intValue = [firstObject intValue];

        if (intValue == 2)
        {
          [(PUIContactsAuthorizationLevelController *)self _removeLimitedAccessSectionIfPresent];
          [(PUIContactsAuthorizationLevelController *)self _removePickerUsageSectionIfPresent];
        }

        else if (intValue == 1)
        {
          firstObject2 = [(NSArray *)self->_limitedAccessSectionSpecifiers firstObject];
          v17 = [(PUIContactsAuthorizationLevelController *)self containsSpecifier:firstObject2];

          if ((v17 & 1) == 0)
          {
            [(PUIContactsAuthorizationLevelController *)self _addLimitedAccessSection];
            [(PUIContactsAuthorizationLevelController *)self _addPickerUsageSectionIfNeeded];
            [(PUIContactsAuthorizationLevelController *)self _presentContactsPickerForModifyingSelection];
          }
        }

        else
        {
          [(PUIContactsAuthorizationLevelController *)self _removeLimitedAccessSectionIfPresent];
          [(PUIContactsAuthorizationLevelController *)self _addPickerUsageSectionIfNeeded];
        }
      }
    }
  }
}

- (void)_addLimitedAccessSection
{
  if ([(NSArray *)self->_pickerUsageSectionSpecifiers count]&& ([(NSArray *)self->_pickerUsageSectionSpecifiers firstObject], v3 = objc_claimAutoreleasedReturnValue(), v4 = [(PUIContactsAuthorizationLevelController *)self containsSpecifier:v3], v3, v4))
  {
    firstObject = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
    v6 = [(PUIContactsAuthorizationLevelController *)self indexOfSpecifier:firstObject];

    limitedAccessSectionSpecifiers = self->_limitedAccessSectionSpecifiers;

    [(PUIContactsAuthorizationLevelController *)self insertContiguousSpecifiers:limitedAccessSectionSpecifiers atIndex:v6 animated:1];
  }

  else
  {
    v8 = self->_limitedAccessSectionSpecifiers;

    [(PUIContactsAuthorizationLevelController *)self addSpecifiersFromArray:v8 animated:1];
  }
}

- (void)_removeLimitedAccessSectionIfPresent
{
  firstObject = [(NSArray *)self->_limitedAccessSectionSpecifiers firstObject];
  v4 = [(PUIContactsAuthorizationLevelController *)self containsSpecifier:firstObject];

  if (v4)
  {
    limitedAccessSectionSpecifiers = self->_limitedAccessSectionSpecifiers;

    [(PUIContactsAuthorizationLevelController *)self removeContiguousSpecifiers:limitedAccessSectionSpecifiers animated:1];
  }
}

- (void)_addPickerUsageSectionIfNeeded
{
  firstObject = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
  if ([(PUIContactsAuthorizationLevelController *)self containsSpecifier:?])
  {
  }

  else
  {
    v3 = bundleIdentifiersWithPickerAccess();
    v4 = [v3 containsObject:self->_serviceKey];

    if (v4)
    {
      pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;

      [(PUIContactsAuthorizationLevelController *)self addSpecifiersFromArray:pickerUsageSectionSpecifiers animated:1];
    }
  }
}

- (void)_removePickerUsageSectionIfPresent
{
  firstObject = [(NSArray *)self->_pickerUsageSectionSpecifiers firstObject];
  v4 = [(PUIContactsAuthorizationLevelController *)self containsSpecifier:firstObject];

  if (v4)
  {
    pickerUsageSectionSpecifiers = self->_pickerUsageSectionSpecifiers;

    [(PUIContactsAuthorizationLevelController *)self removeContiguousSpecifiers:pickerUsageSectionSpecifiers animated:1];
  }
}

- (PSSpecifier)fullAccessSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_fullAccessSpecifier);

  return WeakRetained;
}

- (PSSpecifier)limitedAccessSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_limitedAccessSpecifier);

  return WeakRetained;
}

@end