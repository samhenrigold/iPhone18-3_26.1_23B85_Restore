@interface TCSTinCanUserDefaults
+ (NSString)allowListKey;
+ (NSString)storeDemoAllowlistKey;
+ (NSString)suggestionExpiryReasonAllowlistedValue;
+ (id)defaults;
- (void)clearUserData;
@end

@implementation TCSTinCanUserDefaults

+ (NSString)allowListKey
{
  if (allowListKey_onceToken != -1)
  {
    +[TCSTinCanUserDefaults allowListKey];
  }

  v3 = allowListKey_TCSDefaultsAllowlistKey;

  return v3;
}

void __37__TCSTinCanUserDefaults_allowListKey__block_invoke()
{
  v2 = [@"tel" mutableCopy];
  [v2 appendString:@"ist"];
  [v2 insertString:@"Whi" atIndex:0];
  v0 = [v2 copy];
  v1 = allowListKey_TCSDefaultsAllowlistKey;
  allowListKey_TCSDefaultsAllowlistKey = v0;
}

+ (NSString)storeDemoAllowlistKey
{
  allowListKey = [self allowListKey];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__TCSTinCanUserDefaults_storeDemoAllowlistKey__block_invoke;
  block[3] = &unk_279DC19E0;
  v9 = allowListKey;
  v3 = storeDemoAllowlistKey_onceToken;
  v4 = allowListKey;
  if (v3 != -1)
  {
    dispatch_once(&storeDemoAllowlistKey_onceToken, block);
  }

  v5 = storeDemoAllowlistKey_TCSDefaultsStoreDemoAllowlistKey;
  v6 = storeDemoAllowlistKey_TCSDefaultsStoreDemoAllowlistKey;

  return v5;
}

void __46__TCSTinCanUserDefaults_storeDemoAllowlistKey__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mutableCopy];
  [v3 insertString:@"StoreDemo" atIndex:0];
  v1 = [v3 copy];
  v2 = storeDemoAllowlistKey_TCSDefaultsStoreDemoAllowlistKey;
  storeDemoAllowlistKey_TCSDefaultsStoreDemoAllowlistKey = v1;
}

+ (NSString)suggestionExpiryReasonAllowlistedValue
{
  allowListKey = [self allowListKey];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TCSTinCanUserDefaults_suggestionExpiryReasonAllowlistedValue__block_invoke;
  block[3] = &unk_279DC19E0;
  v9 = allowListKey;
  v3 = suggestionExpiryReasonAllowlistedValue_onceToken;
  v4 = allowListKey;
  if (v3 != -1)
  {
    dispatch_once(&suggestionExpiryReasonAllowlistedValue_onceToken, block);
  }

  v5 = suggestionExpiryReasonAllowlistedValue_TCSDefaultsSuggestionExpiryReasonAllowlistedValue;
  v6 = suggestionExpiryReasonAllowlistedValue_TCSDefaultsSuggestionExpiryReasonAllowlistedValue;

  return v5;
}

void __63__TCSTinCanUserDefaults_suggestionExpiryReasonAllowlistedValue__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mutableCopy];
  [v3 appendString:@"ed"];
  v1 = [v3 copy];
  v2 = suggestionExpiryReasonAllowlistedValue_TCSDefaultsSuggestionExpiryReasonAllowlistedValue;
  suggestionExpiryReasonAllowlistedValue_TCSDefaultsSuggestionExpiryReasonAllowlistedValue = v1;
}

+ (id)defaults
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [@"com.apple.tincan" isEqualToString:bundleIdentifier];

  if (v5)
  {
    standardUserDefaults = [self standardUserDefaults];
  }

  else
  {
    standardUserDefaults = [[self alloc] initWithSuiteName:@"com.apple.tincan"];
  }

  v7 = standardUserDefaults;
  v8 = +[TCSBehavior isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot];
  if (v8)
  {
    [v7 _tcsEnsureProtectionClass];
  }

  else
  {
    _TCSInitializeLogging(v8, v9);
    v10 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_26F110000, v10, OS_LOG_TYPE_DEFAULT, "TCSTinCanUserDefaults waiting for first-unlock.", v14, 2u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = +[TCSBehavior sharedBehavior];
    [defaultCenter addObserver:v7 selector:sel__tcsHandleDeviceFirstUnlock name:@"TCSFirstUnlockNotification" object:v12];
  }

  return v7;
}

- (void)clearUserData
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TCSTinCanUserDefaults clearUserData]";
  _os_log_error_impl(&dword_26F110000, log, OS_LOG_TYPE_ERROR, "%s: attempt to clear user data before first device unlock.", &v1, 0xCu);
}

void __38__TCSTinCanUserDefaults_clearUserData__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v3 = +[TCSTinCanUserDefaults allowListKey];
  v4 = [v2 setWithObjects:{@"Unavailable", v3, @"Suggestions", @"SuggestionsFirstGenerated", @"SuggestionsPreviouslyGenerated", @"ContactPhotoHashes", 0}];

  _TCSInitializeLogging(v5, v6);
  v7 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F110000, v7, OS_LOG_TYPE_DEFAULT, "Clearing Walkie-Talkie user data from defaults.", buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (([@"AppIsInstalled" isEqualToString:v13] & 1) == 0)
        {
          [*(a1 + 32) removeObjectForKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  if (NPSHasCompletedInitialSync())
  {
    [v8 removeObject:@"ContactPhotoHashes"];
    v14 = objc_opt_new();
    [v14 synchronizeUserDefaultsDomain:@"com.apple.tincan" keys:v8];
  }
}

@end