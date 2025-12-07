@interface AACloudPolicyRestrictions
+ (BOOL)policyRestrictsDataclass:(id)dataclass;
+ (id)_managedIcloudPolicyIdentifierForDataclass;
+ (id)_policyRestrictionIdentifierForDataclass:(id)dataclass;
@end

@implementation AACloudPolicyRestrictions

+ (id)_managedIcloudPolicyIdentifierForDataclass
{
  if (_managedIcloudPolicyIdentifierForDataclass_onceToken != -1)
  {
    +[AACloudPolicyRestrictions _managedIcloudPolicyIdentifierForDataclass];
  }

  v3 = _managedIcloudPolicyIdentifierForDataclass_iCloudPolicyIdentifiersDictionary;

  return v3;
}

void __71__AACloudPolicyRestrictions__managedIcloudPolicyIdentifierForDataclass__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v0 setObject:@"DisableBookmarksiCloudSetting" forKeyedSubscript:*MEMORY[0x1E6959608]];
  [v0 setObject:@"DisableFMMiCloudSetting" forKeyedSubscript:*MEMORY[0x1E6959658]];
  [v0 setObject:@"DisableAddressBookiCloudSetting" forKeyedSubscript:*MEMORY[0x1E6959640]];
  [v0 setObject:@"DisableCalendariCloudSetting" forKeyedSubscript:*MEMORY[0x1E6959630]];
  [v0 setObject:@"DisableMailiCloudSetting" forKeyedSubscript:*MEMORY[0x1E6959698]];
  [v0 setObject:@"DisableNotesiCloudSetting" forKeyedSubscript:*MEMORY[0x1E69596C0]];
  [v0 setObject:@"DisableRemindersiCloudSetting" forKeyedSubscript:*MEMORY[0x1E69596E0]];
  [v0 setObject:@"DisableKeychainCloudSync" forKeyedSubscript:*MEMORY[0x1E6959690]];
  [v0 setObject:@"DisableCloudSync" forKeyedSubscript:*MEMORY[0x1E6959718]];
  [v0 setObject:@"DisablePhotosiCloudSetting" forKeyedSubscript:*MEMORY[0x1E69596D0]];
  [v0 setObject:@"DisableFreeformiCloudSetting" forKeyedSubscript:*MEMORY[0x1E6959668]];
  [v0 setObject:@"DisableImagePlaygroundiCloudSetting" forKeyedSubscript:*MEMORY[0x1E6959680]];
  v1 = _managedIcloudPolicyIdentifierForDataclass_iCloudPolicyIdentifiersDictionary;
  _managedIcloudPolicyIdentifierForDataclass_iCloudPolicyIdentifiersDictionary = v0;
}

+ (id)_policyRestrictionIdentifierForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  v4 = +[AACloudPolicyRestrictions _managedIcloudPolicyIdentifierForDataclass];
  v5 = [v4 objectForKey:dataclassCopy];

  return v5;
}

+ (BOOL)policyRestrictsDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  v4 = [AACloudPolicyRestrictions _policyRestrictionIdentifierForDataclass:dataclassCopy];
  v5 = v4;
  if (v4)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v4, @"com.apple.icloud.managed", 0);
    v7 = AppBooleanValue;
    v8 = AppBooleanValue != 0;
    v9 = _AALogSystem(AppBooleanValue);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(AACloudPolicyRestrictions *)dataclassCopy policyRestrictsDataclass:v9];
    }
  }

  else
  {
    v9 = _AALogSystem(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(AACloudPolicyRestrictions *)dataclassCopy policyRestrictsDataclass:v9];
    }

    v8 = 0;
  }

  return v8;
}

+ (void)policyRestrictsDataclass:(os_log_t)log .cold.1(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = @"YES";
  if ((a2 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_1B6F6A000, log, OS_LOG_TYPE_DEBUG, "Policy restriction for %@ is %@", &v4, 0x16u);
}

+ (void)policyRestrictsDataclass:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "Policy identifier does not exist for %@", &v2, 0xCu);
}

@end