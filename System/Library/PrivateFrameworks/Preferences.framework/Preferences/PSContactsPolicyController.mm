@interface PSContactsPolicyController
- (id)appSpecifierWithName:(id)name bundleID:(id)d;
- (id)appSpecifierWithName:(id)name bundleID:(id)d showContactsAccess:(BOOL)access showPickerUsage:(BOOL)usage;
- (id)contactsStatus:(id)status;
- (void)_setContactsTCCStatus:(id)status specifier:(id)specifier;
- (void)setTCCForService:(__CFString *)service appIdentifier:(id)identifier value:(int)value;
- (void)updateContactsAuthorizationStatus;
@end

@implementation PSContactsPolicyController

- (void)setTCCForService:(__CFString *)service appIdentifier:(id)identifier value:(int)value
{
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = _PSLoggingFacility(identifierCopy);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (value != 4)
  {
    if (v10)
    {
      *buf = 138412802;
      serviceCopy2 = service;
      v29 = 2112;
      v30 = identifierCopy;
      v31 = 1024;
      valueCopy = value;
      _os_log_impl(&dword_18B008000, v9, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%d", buf, 0x1Cu);
    }

    if (setTCCForService_appIdentifier_value__onceToken != -1)
    {
      [PSContactsPolicyController setTCCForService:appIdentifier:value:];
    }

    [(__CFString *)identifierCopy cStringUsingEncoding:4];
    v9 = tcc_identity_create();
    v11 = tcc_service_singleton_for_CF_name();
    switch(value)
    {
      case 1:
        contactsLimitedAccessAppIDs = [(PSContactsPolicyController *)self contactsLimitedAccessAppIDs];
        v18 = [contactsLimitedAccessAppIDs containsObject:identifierCopy];

        if ((v18 & 1) == 0)
        {
          goto LABEL_20;
        }

        break;
      case 3:
        goto LABEL_20;
      case 2:
        contactsFullAccessAllowedAppIDs = [(PSContactsPolicyController *)self contactsFullAccessAllowedAppIDs];
        v13 = [contactsFullAccessAllowedAppIDs containsObject:identifierCopy];

        if ((v13 & 1) == 0)
        {
          if (_os_feature_enabled_impl())
          {
            v21 = MEMORY[0x1E69E9820];
            v22 = 3221225472;
            v23 = __67__PSContactsPolicyController_setTCCForService_appIdentifier_value___block_invoke_2;
            v24 = &unk_1E71DBEC0;
            selfCopy = self;
            v14 = identifierCopy;
            v26 = v14;
            v15 = _Block_copy(&v21);
            v16 = _PSLoggingFacility(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              serviceCopy2 = service;
              v29 = 2112;
              v30 = v14;
              _os_log_impl(&dword_18B008000, v16, OS_LOG_TYPE_DEFAULT, "Setting %@ auth for app %@ to full, after prompt", buf, 0x16u);
            }

            tcc_server_message_prompt_authorization_value();
            goto LABEL_21;
          }

LABEL_20:
          tcc_server_message_set_authorization_value();
LABEL_21:
          [(PSContactsPolicyController *)self updateContactsAuthorizationStatus:v21];
        }

        break;
      default:
        contactsDeniedAppIDs = [(PSContactsPolicyController *)self contactsDeniedAppIDs];
        v20 = [contactsDeniedAppIDs containsObject:identifierCopy];

        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }

        break;
    }

    goto LABEL_23;
  }

  if (v10)
  {
    *buf = 138412290;
    serviceCopy2 = identifierCopy;
    _os_log_impl(&dword_18B008000, v9, OS_LOG_TYPE_DEFAULT, "Access level is picker only; Skipping for app: %@", buf, 0xCu);
  }

LABEL_23:
}

void __67__PSContactsPolicyController_setTCCForService_appIdentifier_value___block_invoke()
{
  v0 = tcc_server_create();
  v1 = setTCCForService_appIdentifier_value__tccServer;
  setTCCForService_appIdentifier_value__tccServer = v0;
}

void __67__PSContactsPolicyController_setTCCForService_appIdentifier_value___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = @"PSContactsPrivacyUpgradePromptAppIdentifierKey";
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:@"PSContactsPrivacyUpgradePromptCompletedNotification" object:v4 userInfo:v5];

  v6 = dispatch_time(0, 100000000);
  dispatch_after(v6, MEMORY[0x1E69E96A0], &__block_literal_global_223);
}

- (void)updateContactsAuthorizationStatus
{
  v3 = *MEMORY[0x1E69D5500];
  v9 = 0;
  v10 = 0;
  v8 = 0;
  PSContactsAuthorizationStatesForService(v3, &v10, &v9, &v8);
  v4 = v10;
  v5 = v9;
  v6 = v8;
  [(PSContactsPolicyController *)self setContactsFullAccessAllowedAppIDs:v4];
  [(PSContactsPolicyController *)self setContactsLimitedAccessAppIDs:v5];
  [(PSContactsPolicyController *)self setContactsDeniedAppIDs:v6];

  v7 = bundleIdentifiersWithPickerAccess();
  [(PSContactsPolicyController *)self setPickerUsageAppIDs:v7];
}

- (id)contactsStatus:(id)status
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [status propertyForKey:@"appBundleID"];
  [(PSContactsPolicyController *)self updateContactsAuthorizationStatus];
  contactsFullAccessAllowedAppIDs = [(PSContactsPolicyController *)self contactsFullAccessAllowedAppIDs];
  v6 = [contactsFullAccessAllowedAppIDs containsObject:v4];

  if (v6)
  {
    v8 = _PSLoggingFacility(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v4;
      _os_log_impl(&dword_18B008000, v8, OS_LOG_TYPE_DEFAULT, "App %@ has full contacts access", &v21, 0xCu);
    }

    v9 = &unk_1EFE65A18;
    goto LABEL_19;
  }

  contactsLimitedAccessAppIDs = [(PSContactsPolicyController *)self contactsLimitedAccessAppIDs];
  v11 = [contactsLimitedAccessAppIDs containsObject:v4];

  if (v11)
  {
    v8 = _PSLoggingFacility(v12);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v4;
      _os_log_impl(&dword_18B008000, v8, OS_LOG_TYPE_DEFAULT, "App %@ has limited contacts access", &v21, 0xCu);
    }

    v9 = &unk_1EFE65A00;
    goto LABEL_19;
  }

  contactsDeniedAppIDs = [(PSContactsPolicyController *)self contactsDeniedAppIDs];
  v14 = [contactsDeniedAppIDs containsObject:v4];

  if (v14)
  {
    v8 = _PSLoggingFacility(v15);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v4;
      _os_log_impl(&dword_18B008000, v8, OS_LOG_TYPE_DEFAULT, "App %@ has no access to contacts", &v21, 0xCu);
    }

LABEL_18:
    v9 = &unk_1EFE65A30;
    goto LABEL_19;
  }

  pickerUsageAppIDs = [(PSContactsPolicyController *)self pickerUsageAppIDs];
  v17 = [pickerUsageAppIDs containsObject:v4];

  v19 = _PSLoggingFacility(v18);
  v8 = v19;
  if (!v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(PSContactsPolicyController *)v4 contactsStatus:v8];
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v4;
    _os_log_impl(&dword_18B008000, v8, OS_LOG_TYPE_DEFAULT, "App %@ has private access to contacts", &v21, 0xCu);
  }

  v9 = &unk_1EFE65A48;
LABEL_19:

  return v9;
}

- (void)_setContactsTCCStatus:(id)status specifier:(id)specifier
{
  *&v18[13] = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v7 = [specifier propertyForKey:@"appBundleID"];
  intValue = [statusCopy intValue];

  if (intValue > 4)
  {
    v10 = @"unsupported";
  }

  else
  {
    v10 = off_1E71DBF38[intValue];
  }

  v11 = _PSLoggingFacility(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = v7;
    v17 = 1024;
    *v18 = intValue;
    v18[2] = 2112;
    *&v18[3] = v10;
    _os_log_impl(&dword_18B008000, v11, OS_LOG_TYPE_DEFAULT, "Selected contacts auth for app %@: %d(%@)", &v15, 0x1Cu);
  }

  v13 = _PSLoggingFacility(v12);
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
      _os_log_fault_impl(&dword_18B008000, v14, OS_LOG_TYPE_FAULT, "Unexpected value set for contacts tcc access for app %@: %d(%@)", &v15, 0x1Cu);
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
      _os_log_impl(&dword_18B008000, v14, OS_LOG_TYPE_DEFAULT, "Setting contacts auth for app %@ to %@", &v15, 0x16u);
    }

    [(PSContactsPolicyController *)self setTCCForService:*MEMORY[0x1E69D5500] appIdentifier:v7 value:intValue];
  }
}

- (id)appSpecifierWithName:(id)name bundleID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v8 = *MEMORY[0x1E69D5500];
  v20 = 0;
  v21 = 0;
  v19 = 0;
  PSContactsAuthorizationStatesForService(v8, &v21, &v20, &v19);
  v9 = v21;
  v10 = v20;
  v11 = v19;
  v12 = [v9 setByAddingObjectsFromSet:v10];
  v13 = [v12 setByAddingObjectsFromSet:v11];

  v14 = bundleIdentifiersWithPickerAccess();
  v15 = [v13 containsObject:dCopy];
  v16 = [v14 containsObject:dCopy];
  if ((v15 & 1) != 0 || (v17 = 0, v16))
  {
    v17 = [(PSContactsPolicyController *)self appSpecifierWithName:nameCopy bundleID:dCopy showContactsAccess:v15 showPickerUsage:v16];
  }

  return v17;
}

- (id)appSpecifierWithName:(id)name bundleID:(id)d showContactsAccess:(BOOL)access showPickerUsage:(BOOL)usage
{
  usageCopy = usage;
  accessCopy = access;
  dCopy = d;
  nameCopy = name;
  v12 = [PSSpecifier preferenceSpecifierNamed:nameCopy target:self set:sel__setContactsTCCStatus_specifier_ get:sel_contactsStatus_ detail:objc_opt_class() cell:2 edit:0];

  v13 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:dCopy allowPlaceholder:1 error:0];
  [v12 setIdentifier:dCopy];
  [v12 setProperty:dCopy forKey:@"appBundleID"];

  localizedName = [v13 localizedName];
  [v12 setProperty:localizedName forKey:@"appLocalizedDisplayName"];

  v15 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_AUTH_HEADER");
  [v12 setProperty:v15 forKey:@"staticHeaderText"];

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if (accessCopy)
  {
    v18 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_NO_ACCESS_AUTHORIZATION");
    [array addObject:v18];

    [array2 addObject:&unk_1EFE65A30];
    [v12 setProperty:MEMORY[0x1E695E118] forKey:@"hasTCCOptions"];
    v19 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_LIMITED_ACCESS_AUTHORIZATION");
    [array addObject:v19];

    [array2 addObject:&unk_1EFE65A00];
    v20 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_FULL_ACCESS_AUTHORIZATION");
    [array addObject:v20];

    [array2 addObject:&unk_1EFE65A18];
  }

  if (usageCopy)
  {
    v21 = PS_LocalizedStringForSystemPolicy(@"CONTACTS_PICKER_ONLY_AUTHORIZATION");
    [array addObject:v21];

    [array2 addObject:&unk_1EFE65A48];
    [v12 setProperty:MEMORY[0x1E695E118] forKey:@"hasPickerInfo"];
  }

  [v12 setValues:array2 titles:array];

  return v12;
}

- (void)contactsStatus:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B008000, a2, OS_LOG_TYPE_ERROR, "Unknown or unexpected status for contacts access, not in any array; Defaulting to denied: %@", &v2, 0xCu);
}

@end