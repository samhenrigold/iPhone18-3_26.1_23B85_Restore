@interface AUCalendarPolicyController
+ (id)loadPrivacySettingsBundle;
+ (unint64_t)authorizationRightforAccessLevel:(int)level;
+ (void)setCalendarAccessForApp:(id)app toValue:(int)value shouldPrompt:(BOOL)prompt;
- (id)appSpecifierWithName:(id)name bundleID:(id)d;
- (id)calendarStatus:(id)status;
- (void)setCalendarStatus:(id)status specifier:(id)specifier;
@end

@implementation AUCalendarPolicyController

+ (id)loadPrivacySettingsBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v4 = v3 = @"/System/Library/PrivateFrameworks/Settings/PrivacySettingsUI.framework";
  v5 = [v2 bundleWithPath:v4];

  [v5 load];

  return v5;
}

- (id)appSpecifierWithName:(id)name bundleID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  PSCalendarAuthorizationStates(&v18, &v17, &v16);
  v8 = v18;
  v9 = v17;
  v10 = v16;
  if (([v8 containsObject:dCopy] & 1) != 0 || (objc_msgSend(v9, "containsObject:", dCopy) & 1) != 0 || objc_msgSend(v10, "containsObject:", dCopy))
  {
    v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:nameCopy target:self set:sel_setCalendarStatus_specifier_ get:sel_calendarStatus_ detail:objc_opt_class() cell:2 edit:0];
    v12 = MEMORY[0x277CBEC38];
    [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
    [v11 setProperty:dCopy forKey:@"BUNDLE_ID"];
    [v11 setProperty:dCopy forKey:@"APP_NAME"];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF38]];
    [v11 setProperty:dCopy forKey:*MEMORY[0x277D3FFB8]];
    [v11 setObject:@"com.apple.mobilecal" forKeyedSubscript:*MEMORY[0x277D40008]];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    if (appSpecifierWithName_bundleID__onceToken != -1)
    {
      [AUCalendarPolicyController appSpecifierWithName:bundleID:];
    }

    [array addObject:appSpecifierWithName_bundleID__noAccessStr];
    [array2 addObject:&unk_282D7F750];
    [array addObject:appSpecifierWithName_bundleID__writeAccessStr];
    [array2 addObject:&unk_282D7F720];
    [array addObject:appSpecifierWithName_bundleID__fullAccessStr];
    [array2 addObject:&unk_282D7F738];
    [v11 setValues:array2 titles:array];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __60__AUCalendarPolicyController_appSpecifierWithName_bundleID___block_invoke()
{
  v6 = +[AUCalendarPolicyController loadPrivacySettingsBundle];
  v0 = [v6 localizedStringForKey:@"CALENDARS_FULL_ACCESS_AUTHORIZATION" value:&stru_282D7C630 table:@"Privacy"];
  v1 = appSpecifierWithName_bundleID__fullAccessStr;
  appSpecifierWithName_bundleID__fullAccessStr = v0;

  v2 = [v6 localizedStringForKey:@"CALENDARS_WRITE_ONLY_ACCESS_AUTHORIZATION" value:&stru_282D7C630 table:@"Privacy"];
  v3 = appSpecifierWithName_bundleID__writeAccessStr;
  appSpecifierWithName_bundleID__writeAccessStr = v2;

  v4 = [v6 localizedStringForKey:@"CALENDARS_NO_ACCESS_AUTHORIZATION" value:&stru_282D7C630 table:@"Privacy"];
  v5 = appSpecifierWithName_bundleID__noAccessStr;
  appSpecifierWithName_bundleID__noAccessStr = v4;
}

- (id)calendarStatus:(id)status
{
  v3 = [status propertyForKey:@"BUNDLE_ID"];
  v12 = 0;
  v13 = 0;
  v11 = 0;
  PSCalendarAuthorizationStates(&v13, &v12, &v11);
  v4 = v13;
  v5 = v12;
  v6 = v11;
  if ([v4 containsObject:v3])
  {
    v7 = &unk_282D7F738;
  }

  else if ([v5 containsObject:v3])
  {
    v7 = &unk_282D7F720;
  }

  else
  {
    v8 = [v6 containsObject:v3];
    if ((v8 & 1) == 0)
    {
      v9 = _AULoggingFacility(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(AUCalendarPolicyController *)v3 calendarStatus:v9];
      }
    }

    v7 = &unk_282D7F750;
  }

  return v7;
}

- (void)setCalendarStatus:(id)status specifier:(id)specifier
{
  v20 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v6 = [specifier propertyForKey:@"BUNDLE_ID"];
  intValue = [statusCopy intValue];
  if (intValue == 2)
  {
    v8 = _AULoggingFacility(intValue);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v6;
      _os_log_impl(&dword_21BAF4000, v8, OS_LOG_TYPE_DEFAULT, "Requesting to set calendar auth for app %@ to full", &v18, 0xCu);
    }

    v9 = v6;
    v10 = 2;
    v11 = 1;
  }

  else
  {
    intValue2 = [statusCopy intValue];
    if (intValue2 == 1)
    {
      v13 = _AULoggingFacility(intValue2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v6;
        _os_log_impl(&dword_21BAF4000, v13, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to write-only", &v18, 0xCu);
      }

      v9 = v6;
      v10 = 1;
    }

    else
    {
      intValue3 = [statusCopy intValue];
      v15 = intValue3;
      v16 = _AULoggingFacility(intValue3);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          v18 = 138412290;
          v19 = statusCopy;
          _os_log_impl(&dword_21BAF4000, v16, OS_LOG_TYPE_DEFAULT, "Unexpected value set for calendar tcc access: %@", &v18, 0xCu);
        }

        v9 = v6;
        v10 = 3;
      }

      else
      {
        if (v17)
        {
          v18 = 138412290;
          v19 = v6;
          _os_log_impl(&dword_21BAF4000, v16, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to denied", &v18, 0xCu);
        }

        v9 = v6;
        v10 = 0;
      }
    }

    v11 = 0;
  }

  [AUCalendarPolicyController setCalendarAccessForApp:v9 toValue:v10 shouldPrompt:v11];
}

+ (unint64_t)authorizationRightforAccessLevel:(int)level
{
  if ((level - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21BB24EA0[level - 1];
  }
}

+ (void)setCalendarAccessForApp:(id)app toValue:(int)value shouldPrompt:(BOOL)prompt
{
  promptCopy = prompt;
  v6 = *&value;
  v26 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v9 = appCopy;
  if (setCalendarAccessForApp_toValue_shouldPrompt__onceToken != -1)
  {
    +[AUCalendarPolicyController setCalendarAccessForApp:toValue:shouldPrompt:];
  }

  v10 = _AULoggingFacility(appCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *MEMORY[0x277D6C118];
    *buf = 138412802;
    v21 = v11;
    v22 = 2112;
    v23 = v9;
    v24 = 1024;
    v25 = v6;
    _os_log_impl(&dword_21BAF4000, v10, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%d", buf, 0x1Cu);
  }

  [v9 cStringUsingEncoding:4];
  v12 = tcc_identity_create();
  v13 = tcc_service_singleton_for_CF_name();
  [AUCalendarPolicyController authorizationRightforAccessLevel:v6];
  if (promptCopy)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__AUCalendarPolicyController_setCalendarAccessForApp_toValue_shouldPrompt___block_invoke_80;
    v17[3] = &unk_2782EF7E0;
    selfCopy = self;
    v14 = v9;
    v18 = v14;
    v15 = MEMORY[0x21CF002C0](v17);
    v16 = _AULoggingFacility(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_21BAF4000, v16, OS_LOG_TYPE_DEFAULT, "Setting calendar auth for app %@ to full, after prompt", buf, 0xCu);
    }

    tcc_server_message_prompt_authorization_value();
  }

  else
  {
    tcc_server_message_set_authorization_value();
  }
}

uint64_t __75__AUCalendarPolicyController_setCalendarAccessForApp_toValue_shouldPrompt___block_invoke()
{
  setCalendarAccessForApp_toValue_shouldPrompt__tccServer = tcc_server_create();

  return MEMORY[0x2821F96F8]();
}

void __75__AUCalendarPolicyController_setCalendarAccessForApp_toValue_shouldPrompt___block_invoke_80(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = @"PSCalendarPrivacyUpgradePromptAppIdentifierKey";
  v7[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"PSCalendarPrivacyUpgradePromptCompletedNotification" object:v4 userInfo:v5];
}

- (void)calendarStatus:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BAF4000, a2, OS_LOG_TYPE_ERROR, "unknown state for %@, treating as denied", &v2, 0xCu);
}

@end