@interface CKSettingsiMessageApp
- (BOOL)isHiddenInSendMenuByUserPreference;
- (CKSettingsiMessageApp)initWithExtension:(id)extension;
- (id)_hiddenExtensionBundleIdentifiers;
- (id)_stringArrayFromUserDefaults:(id)defaults key:(id)key;
- (void)_setHiddenExtensionBundleIdentifiers:(id)identifiers;
- (void)setHiddenInSendMenuByUserPreference:(BOOL)preference;
@end

@implementation CKSettingsiMessageApp

- (CKSettingsiMessageApp)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v26.receiver = self;
  v26.super_class = CKSettingsiMessageApp;
  v5 = [(CKSettingsiMessageApp *)&v26 init];
  if (!v5)
  {
    goto LABEL_17;
  }

  identifier = [extensionCopy identifier];
  v25 = 0;
  v7 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:identifier error:&v25];
  v8 = v25;
  if (!v8)
  {
    containingBundleRecord = [v7 containingBundleRecord];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_8;
    }

    v11 = containingBundleRecord;
    v5->_isiMessageAppOnly = [v11 isLaunchProhibited];
    objc_storeStrong(&v5->_extensionBundleID, identifier);
    bundleIdentifier = [v11 bundleIdentifier];
    appBundleID = v5->_appBundleID;
    v5->_appBundleID = bundleIdentifier;

    localizedName = [v7 localizedName];
    v15 = localizedName;
    if (localizedName)
    {
      localizedShortName = localizedName;
    }

    else
    {
      localizedShortName = [v7 localizedShortName];
    }

    extensionDisplayName = v5->_extensionDisplayName;
    v5->_extensionDisplayName = localizedShortName;

    localizedName2 = [v11 localizedName];
    v20 = localizedName2;
    if (localizedName2)
    {
      localizedShortName2 = localizedName2;
    }

    else
    {
      localizedShortName2 = [v11 localizedShortName];
    }

    appDisplayName = v5->_appDisplayName;
    v5->_appDisplayName = localizedShortName2;

    if ([v11 isDeletable])
    {
      isDeletableSystemApplication = 1;
    }

    else
    {
      isDeletableSystemApplication = [v11 isDeletableSystemApplication];
    }

    v5->_deletable = isDeletableSystemApplication;

LABEL_17:
    v17 = v5;
    goto LABEL_18;
  }

  v9 = v8;

LABEL_8:
  v17 = 0;
LABEL_18:

  return v17;
}

- (id)_hiddenExtensionBundleIdentifiers
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.MobileSMS"];
  v4 = [(CKSettingsiMessageApp *)self _stringArrayFromUserDefaults:v3 key:@"SendMenuHiddenExtensionBundleIdentifiers"];

  return v4;
}

- (void)_setHiddenExtensionBundleIdentifiers:(id)identifiers
{
  v3 = MEMORY[0x277CBEBD0];
  identifiersCopy = identifiers;
  v5 = [[v3 alloc] initWithSuiteName:@"com.apple.MobileSMS"];
  [v5 setObject:identifiersCopy forKey:@"SendMenuHiddenExtensionBundleIdentifiers"];
}

- (id)_stringArrayFromUserDefaults:(id)defaults key:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [defaults objectForKey:key];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = v4;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (BOOL)isHiddenInSendMenuByUserPreference
{
  if (self->_isiMessageAppOnly)
  {
    return 0;
  }

  selfCopy = self;
  _hiddenExtensionBundleIdentifiers = [(CKSettingsiMessageApp *)self _hiddenExtensionBundleIdentifiers];
  LOBYTE(selfCopy) = [_hiddenExtensionBundleIdentifiers containsObject:selfCopy->_extensionBundleID];

  return selfCopy;
}

- (void)setHiddenInSendMenuByUserPreference:(BOOL)preference
{
  preferenceCopy = preference;
  v17 = *MEMORY[0x277D85DE8];
  v5 = self->_extensionBundleID;
  v7 = csui_log(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = v5;
    v15 = 1024;
    v16 = preferenceCopy;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_INFO, "Setting extension %@ to hidden=%{BOOL}d", &v13, 0x12u);
  }

  _hiddenExtensionBundleIdentifiers = [(CKSettingsiMessageApp *)self _hiddenExtensionBundleIdentifiers];
  v9 = [_hiddenExtensionBundleIdentifiers containsObject:v5];
  if (!preferenceCopy || (v9 & 1) != 0)
  {
    if (preferenceCopy || ((v9 ^ 1) & 1) != 0)
    {
      v11 = csui_log(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CKSettingsiMessageApp *)v5 setHiddenInSendMenuByUserPreference:preferenceCopy, v11];
      }
    }

    else
    {
      v11 = [_hiddenExtensionBundleIdentifiers mutableCopy];
      [v11 removeObject:v5];
      v12 = [v11 copy];
      [(CKSettingsiMessageApp *)self _setHiddenExtensionBundleIdentifiers:v12];
    }
  }

  else
  {
    v11 = [_hiddenExtensionBundleIdentifiers arrayByAddingObject:v5];
    [(CKSettingsiMessageApp *)self _setHiddenExtensionBundleIdentifiers:v11];
  }
}

- (void)setHiddenInSendMenuByUserPreference:(os_log_t)log .cold.1(uint64_t a1, char a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_error_impl(&dword_243BE5000, log, OS_LOG_TYPE_ERROR, "Extension %@ was already hidden=%{BOOL}d", &v3, 0x12u);
}

@end