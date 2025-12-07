@interface KeychainSyncPhoneSettingsFragment
- (KeychainSyncPhoneSettingsFragment)initWithListController:(id)controller;
- (KeychainSyncPhoneSettingsFragmentDelegate)delegate;
- (NSArray)specifiers;
- (id)unformattedPhoneNumber;
- (void)dealloc;
- (void)reloadSpecifiers;
- (void)resignFirstResponder;
- (void)setDialingCountryInfo:(id)info forSpecifier:(id)specifier;
- (void)setPhoneNumber:(id)number forSpecifier:(id)specifier;
- (void)textFieldChanged:(id)changed;
@end

@implementation KeychainSyncPhoneSettingsFragment

- (KeychainSyncPhoneSettingsFragment)initWithListController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = KeychainSyncPhoneSettingsFragment;
  v5 = [(KeychainSyncPhoneSettingsFragment *)&v8 init];
  if (v5)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_textFieldChanged_ name:*MEMORY[0x1E69DE5C0] object:0];

    objc_storeWeak(&v5->_listController, controllerCopy);
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = KeychainSyncPhoneSettingsFragment;
  [(KeychainSyncPhoneSettingsFragment *)&v4 dealloc];
}

- (NSArray)specifiers
{
  v88 = *MEMORY[0x1E69E9840];
  specifiers = self->_specifiers;
  if (specifiers)
  {
    goto LABEL_43;
  }

  selfCopy = self;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v77 = 0;
  v64 = PSSecureBackupAccountInfo(&v77, 0);
  v4 = v77;
  v62 = v4;
  if (!v4)
  {
    v83 = 0;
    v84 = &v83;
    v85 = 0x2020000000;
    v5 = getkSecureBackupSMSTargetInfoKeySymbolLoc_ptr;
    v86 = getkSecureBackupSMSTargetInfoKeySymbolLoc_ptr;
    if (!getkSecureBackupSMSTargetInfoKeySymbolLoc_ptr)
    {
      v78 = MEMORY[0x1E69E9820];
      v79 = 3221225472;
      v80 = __getkSecureBackupSMSTargetInfoKeySymbolLoc_block_invoke;
      v81 = &unk_1E71DBC78;
      v82 = &v83;
      v6 = CloudServicesLibrary();
      v7 = dlsym(v6, "kSecureBackupSMSTargetInfoKey");
      *(v82[1] + 24) = v7;
      getkSecureBackupSMSTargetInfoKeySymbolLoc_ptr = *(v82[1] + 24);
      v5 = v84[3];
    }

    _Block_object_dispose(&v83, 8);
    if (v5)
    {
      v8 = [v64 objectForKey:*v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v83 = 0;
        v84 = &v83;
        v85 = 0x2020000000;
        v9 = getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr;
        v86 = getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr;
        if (!getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr)
        {
          v78 = MEMORY[0x1E69E9820];
          v79 = 3221225472;
          v80 = __getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_block_invoke;
          v81 = &unk_1E71DBC78;
          v82 = &v83;
          v10 = CloudServicesLibrary();
          v11 = dlsym(v10, "kSecureBackupSMSTargetPhoneNumberKey");
          *(v82[1] + 24) = v11;
          getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr = *(v82[1] + 24);
          v9 = v84[3];
        }

        _Block_object_dispose(&v83, 8);
        if (!v9)
        {
          goto LABEL_47;
        }

        v12 = *v9;
        v13 = [v8 objectForKey:v12];
        phoneNumber = selfCopy->_phoneNumber;
        selfCopy->_phoneNumber = v13;

        v83 = 0;
        v84 = &v83;
        v85 = 0x2020000000;
        v15 = getkSecureBackupCountryDialCodeKeySymbolLoc_ptr;
        v86 = getkSecureBackupCountryDialCodeKeySymbolLoc_ptr;
        if (!getkSecureBackupCountryDialCodeKeySymbolLoc_ptr)
        {
          v78 = MEMORY[0x1E69E9820];
          v79 = 3221225472;
          v80 = __getkSecureBackupCountryDialCodeKeySymbolLoc_block_invoke;
          v81 = &unk_1E71DBC78;
          v82 = &v83;
          v16 = CloudServicesLibrary();
          v17 = dlsym(v16, "kSecureBackupCountryDialCodeKey");
          *(v82[1] + 24) = v17;
          getkSecureBackupCountryDialCodeKeySymbolLoc_ptr = *(v82[1] + 24);
          v15 = v84[3];
        }

        _Block_object_dispose(&v83, 8);
        if (!v15)
        {
          goto LABEL_47;
        }

        v63 = [v8 objectForKey:*v15];
        v18 = getkSecureBackupCountryCodeKey();
        v69 = [v8 objectForKey:v18];

        if (v69)
        {
LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {
        v63 = 0;
      }

      v83 = 0;
      v84 = &v83;
      v85 = 0x2020000000;
      v19 = getkSecureBackupMetadataKeySymbolLoc_ptr;
      v86 = getkSecureBackupMetadataKeySymbolLoc_ptr;
      if (!getkSecureBackupMetadataKeySymbolLoc_ptr)
      {
        v78 = MEMORY[0x1E69E9820];
        v79 = 3221225472;
        v80 = __getkSecureBackupMetadataKeySymbolLoc_block_invoke;
        v81 = &unk_1E71DBC78;
        v82 = &v83;
        v20 = CloudServicesLibrary();
        v21 = dlsym(v20, "kSecureBackupMetadataKey");
        *(v82[1] + 24) = v21;
        getkSecureBackupMetadataKeySymbolLoc_ptr = *(v82[1] + 24);
        v19 = v84[3];
      }

      _Block_object_dispose(&v83, 8);
      if (v19)
      {
        v22 = [v64 objectForKey:*v19];
        v23 = getkSecureBackupCountryCodeKey();
        v69 = [v22 objectForKey:v23];

        goto LABEL_21;
      }
    }

LABEL_47:
    [PSContactsAuthorizationLevelController dealloc];
    __break(1u);
  }

  NSLog(&cfstr_Getaccountinfo.isa, v4);
  v63 = 0;
  v69 = 0;
LABEL_22:
  v24 = MEMORY[0x1E695DF58];
  localeIdentifier = [currentLocale localeIdentifier];
  v26 = [v24 componentsFromLocaleIdentifier:localeIdentifier];
  v66 = [v26 objectForKey:*MEMORY[0x1E695D978]];

  v27 = v69;
  if (!v69)
  {
    v27 = v66;
  }

  v67 = v27;
  if ([(NSString *)selfCopy->_phoneNumber length])
  {
    v28 = PSPNCreateFormattedStringWithCountry(selfCopy->_phoneNumber, [v67 lowercaseString]);
    v29 = selfCopy->_phoneNumber;
    selfCopy->_phoneNumber = v28;
  }

  else
  {
    v30 = v66;
    v29 = v69;
    v69 = v30;
  }

  v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (PSIsRunningInAssistant(v70, v31) && ([MEMORY[0x1E69DC938] currentDevice], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "userInterfaceIdiom") == 0, v32, v33))
  {
    v68 = +[PSSpecifier emptyGroupSpecifier];
    [(NSArray *)v70 addObject:v68];
  }

  else
  {
    title = [(KeychainSyncPhoneSettingsFragment *)selfCopy title];
    v68 = [PSSpecifier groupSpecifierWithName:title];

    v35 = PS_LocalizedStringForKeychainSync(@"PHONE_NUMBER_DESCRIPTION");
    [v68 setProperty:v35 forKey:@"footerText"];

    [(NSArray *)v70 addObject:v68];
  }

  countryInfo = selfCopy->_countryInfo;
  selfCopy->_countryInfo = 0;

  v37 = PS_LocalizedStringForKeychainSync(@"COUNTRY");
  v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:selfCopy set:sel_setDialingCountryInfo_forSpecifier_ get:sel_dialingCountryInfoForSpecifier_ detail:objc_opt_class() cell:2 edit:0];
  countrySpecifier = selfCopy->_countrySpecifier;
  selfCopy->_countrySpecifier = v38;

  [(PSSpecifier *)selfCopy->_countrySpecifier setProperty:objc_opt_class() forKey:?];
  if (!selfCopy->_countryInfo)
  {
    v40 = [KeychainSyncCountryInfo countryInfoForCountryCode:v69 dialingPrefix:v63];
    v41 = selfCopy->_countryInfo;
    selfCopy->_countryInfo = v40;
  }

  v42 = +[KeychainSyncCountryInfo allCountries];
  v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v42, "count")}];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v42;
  v44 = [obj countByEnumeratingWithState:&v73 objects:v87 count:16];
  if (v44)
  {
    v45 = *v74;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v74 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v73 + 1) + 8 * i);
        localizedCountryName = [v47 localizedCountryName];
        v49 = localizedCountryName;
        if (localizedCountryName)
        {
          countryName = localizedCountryName;
        }

        else
        {
          countryName = [v47 countryName];
        }

        v51 = countryName;

        v52 = MEMORY[0x1E696AEC0];
        dialingPrefix = [v47 dialingPrefix];
        v54 = [v52 stringWithFormat:@"\u202A+%@\u202C (%@)", dialingPrefix, v51];

        [v43 addObject:v54];
      }

      v44 = [obj countByEnumeratingWithState:&v73 objects:v87 count:16];
    }

    while (v44);
  }

  [(PSSpecifier *)selfCopy->_countrySpecifier setValues:obj titles:v43];
  [(NSArray *)v70 addObject:selfCopy->_countrySpecifier];
  v55 = objc_alloc_init(PSPhoneNumberSpecifier);
  p_phoneNumberSpecifier = &selfCopy->_phoneNumberSpecifier;
  phoneNumberSpecifier = selfCopy->_phoneNumberSpecifier;
  selfCopy->_phoneNumberSpecifier = v55;

  v58 = selfCopy->_phoneNumberSpecifier;
  v59 = PS_LocalizedStringForKeychainSync(@"NUMBER");
  [(PSSpecifier *)v58 setName:v59];

  objc_storeWeak(&selfCopy->_phoneNumberSpecifier->super.super.target, selfCopy);
  (*p_phoneNumberSpecifier)->super.super.setter = sel_setPhoneNumber_forSpecifier_;
  (*p_phoneNumberSpecifier)->super.super.getter = sel_phoneNumberForSpecifier_;
  (*p_phoneNumberSpecifier)->super.super.detailControllerClass = 0;
  (*p_phoneNumberSpecifier)->super.super.cellType = 8;
  (*p_phoneNumberSpecifier)->super.super.editPaneClass = 0;
  [(PSPhoneNumberSpecifier *)selfCopy->_phoneNumberSpecifier setCountryCode:v67];
  [(PSSpecifier *)selfCopy->_phoneNumberSpecifier setKeyboardType:5 autoCaps:0 autoCorrection:1];
  [(PSPhoneNumberSpecifier *)selfCopy->_phoneNumberSpecifier setProperty:objc_opt_class() forKey:@"cellClass"];
  [(NSArray *)v70 addObject:selfCopy->_phoneNumberSpecifier];
  v60 = selfCopy->_specifiers;
  selfCopy->_specifiers = v70;

  specifiers = selfCopy->_specifiers;
LABEL_43:

  return specifiers;
}

- (void)reloadSpecifiers
{
  specifiers = self->_specifiers;
  self->_specifiers = 0;
}

- (void)resignFirstResponder
{
  phoneNumberCell = [(KeychainSyncPhoneSettingsFragment *)self phoneNumberCell];
  [phoneNumberCell resignFirstResponder];
}

- (void)setDialingCountryInfo:(id)info forSpecifier:(id)specifier
{
  infoCopy = info;
  if (self->_countryInfo != infoCopy)
  {
    v18 = infoCopy;
    objc_storeStrong(&self->_countryInfo, info);
    phoneNumberSpecifier = self->_phoneNumberSpecifier;
    countryCode = [(KeychainSyncCountryInfo *)self->_countryInfo countryCode];
    [(PSPhoneNumberSpecifier *)phoneNumberSpecifier setCountryCode:countryCode];

    countryInfo = self->_countryInfo;
    v10 = self->_phoneNumber;
    countryCode2 = [(KeychainSyncCountryInfo *)countryInfo countryCode];
    v12 = PSPNCreateFormattedStringWithCountry(v10, [countryCode2 lowercaseString]);
    phoneNumber = self->_phoneNumber;
    self->_phoneNumber = v12;

    WeakRetained = objc_loadWeakRetained(&self->_listController);
    [WeakRetained reloadSpecifier:self->_phoneNumberSpecifier];

    delegate = [(KeychainSyncPhoneSettingsFragment *)self delegate];
    unformattedPhoneNumber = [(KeychainSyncPhoneSettingsFragment *)self unformattedPhoneNumber];
    countryInfo = [(KeychainSyncPhoneSettingsFragment *)self countryInfo];
    [delegate phoneSettingsFragment:self didChangePhoneNumber:unformattedPhoneNumber countryInfo:countryInfo];

    infoCopy = v18;
  }
}

- (void)setPhoneNumber:(id)number forSpecifier:(id)specifier
{
  if (self->_phoneNumber != number)
  {
    [(KeychainSyncPhoneSettingsFragment *)self setPhoneNumber:?];
    delegate = [(KeychainSyncPhoneSettingsFragment *)self delegate];
    unformattedPhoneNumber = [(KeychainSyncPhoneSettingsFragment *)self unformattedPhoneNumber];
    countryInfo = [(KeychainSyncPhoneSettingsFragment *)self countryInfo];
    [delegate phoneSettingsFragment:self didChangePhoneNumber:unformattedPhoneNumber countryInfo:countryInfo];
  }
}

- (id)unformattedPhoneNumber
{
  phoneNumber = [(KeychainSyncPhoneSettingsFragment *)self phoneNumber];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = get_PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc_ptr;
  v12 = get_PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc_ptr;
  if (!get_PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc_ptr)
  {
    v4 = PhoneNumbersLibrary();
    v10[3] = dlsym(v4, "_PNCreateStringByStrippingFormattingAndNotVisiblyAllowable");
    get_PNCreateStringByStrippingFormattingAndNotVisiblyAllowableSymbolLoc_ptr = v10[3];
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v3)
  {
    [PSContactsAuthorizationLevelController dealloc];
    v8 = v7;
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  v5 = v3(phoneNumber);

  return v5;
}

- (void)textFieldChanged:(id)changed
{
  phoneNumberSpecifier = self->_phoneNumberSpecifier;
  changedCopy = changed;
  v6 = [(PSSpecifier *)phoneNumberSpecifier propertyForKey:@"cellObject"];
  editableTextField = [v6 editableTextField];

  object = [changedCopy object];

  if (object == editableTextField)
  {
    text = [editableTextField text];
    [(KeychainSyncPhoneSettingsFragment *)self setPhoneNumber:text forSpecifier:self->_phoneNumberSpecifier];
  }
}

- (KeychainSyncPhoneSettingsFragmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end