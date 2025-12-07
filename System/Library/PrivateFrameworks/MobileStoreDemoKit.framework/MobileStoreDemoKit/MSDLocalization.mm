@interface MSDLocalization
+ (BOOL)getChannelWarningKeys:(id *)keys andPlaceHolderWarnings:(id *)warnings forDeviceClass:(id)class;
+ (BOOL)getRetailWarningKeys:(id *)keys andPlaceHolderWarnings:(id *)warnings forDeviceClass:(id)class;
+ (BOOL)getWarningKeys:(id *)keys andPlaceHolderWarnings:(id *)warnings forOwnershipWarningFlag:(id)flag;
+ (id)getLocalizedOwnershipWarnings:(id)warnings;
+ (id)sharedInstance;
+ (void)fillInMissingLocales:(id)locales withOwnershipWarningMsg:(id)msg;
- (MSDLocalization)init;
- (id)localizedStringWithKey:(id)key defaultString:(id)string;
- (void)init;
@end

@implementation MSDLocalization

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[MSDLocalization sharedInstance];
  }

  v3 = sharedInstance_shared_2;

  return v3;
}

uint64_t __33__MSDLocalization_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MSDLocalization);
  v1 = sharedInstance_shared_2;
  sharedInstance_shared_2 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (MSDLocalization)init
{
  v16.receiver = self;
  v16.super_class = MSDLocalization;
  v2 = [(MSDLocalization *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/Applications/StoreDemoViewService.app"];
    v4 = v3;
    if (v3)
    {
      v5 = MEMORY[0x277CCA8D8];
      localizations = [v3 localizations];
      preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
      v8 = [v5 preferredLocalizationsFromArray:localizations forPreferences:preferredLanguages];

      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v4 pathForResource:@"Localizable" ofType:@"strings" inDirectory:@"." forLocalization:v9];

      v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v10];
      localizationTable = v2->_localizationTable;
      v2->_localizationTable = v11;
    }

    else
    {
      v13 = defaultLogHandle(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(MSDLocalization *)v13 init];
      }

      v8 = v2->_localizationTable;
      v2->_localizationTable = 0;
    }

    v14 = v2;
  }

  return v2;
}

- (id)localizedStringWithKey:(id)key defaultString:(id)string
{
  v21 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  stringCopy = string;
  localizationTable = [(MSDLocalization *)self localizationTable];

  if (localizationTable)
  {
    localizationTable2 = [(MSDLocalization *)self localizationTable];
    v10 = [localizationTable2 objectForKey:keyCopy];

    v12 = v10;
    if (!v10)
    {
      v13 = defaultLogHandle(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
        v17 = 138543618;
        v18 = keyCopy;
        v19 = 2114;
        v20 = preferredLanguages;
        _os_log_impl(&dword_259B7D000, v13, OS_LOG_TYPE_DEFAULT, "Localization lookup failed for key %{public}@, preferred languages %{public}@", &v17, 0x16u);
      }

      v12 = stringCopy;
    }

    v15 = v12;
  }

  else
  {
    v15 = stringCopy;
  }

  return v15;
}

+ (id)getLocalizedOwnershipWarnings:(id)warnings
{
  v16 = *MEMORY[0x277D85DE8];
  warningsCopy = warnings;
  v4 = defaultLogHandle(warningsCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "+[MSDLocalization getLocalizedOwnershipWarnings:]";
    v14 = 2114;
    v15 = warningsCopy;
    _os_log_impl(&dword_259B7D000, v4, OS_LOG_TYPE_DEFAULT, "%s - ownershipWarningFlag:  %{public}@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke;
  block[3] = &unk_2798EF790;
  v11 = warningsCopy;
  v5 = getLocalizedOwnershipWarnings__onceToken;
  v6 = warningsCopy;
  if (v5 != -1)
  {
    dispatch_once(&getLocalizedOwnershipWarnings__onceToken, block);
  }

  v7 = getLocalizedOwnershipWarnings__localizedOwnershipWarnings;
  v8 = getLocalizedOwnershipWarnings__localizedOwnershipWarnings;

  return v7;
}

void __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/MobileStoreDemoKit.framework"];
  v30 = [MEMORY[0x277CBEB38] dictionary];
  v3 = 0x281DDE000uLL;
  v38 = 0;
  v39 = 0;
  v4 = [MSDLocalization getWarningKeys:&v39 andPlaceHolderWarnings:&v38 forOwnershipWarningFlag:*(a1 + 32)];
  v5 = v39;
  v6 = v38;
  v7 = v6;
  if (v2)
  {
    v8 = !v4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = defaultLogHandle(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke_cold_1();
    }
  }

  else
  {
    isKindOfClass = [v2 localizations];
    v9 = isKindOfClass;
    if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      v11 = defaultLogHandle(isKindOfClass);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke_cold_2();
      }

      v29 = v7;

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = v9;
      v33 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v33)
      {
        v32 = *v35;
        *&v12 = 138543362;
        v28 = v12;
        obj = v9;
        do
        {
          v13 = 0;
          do
          {
            if (*v35 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v34 + 1) + 8 * v13);
            v15 = [v5 objectForKey:{@"Title", v28}];
            v16 = [v2 localizedStringForKey:v15 value:0 table:0 localization:v14];

            v17 = [v5 objectForKey:@"Body"];
            v18 = [v2 localizedStringForKey:v17 value:0 table:0 localization:v14];

            v19 = [v5 objectForKey:@"Link"];
            v20 = [v2 localizedStringForKey:v19 value:0 table:0 localization:v14];

            if (!v20 || ([v5 objectForKey:@"Link"], v21 = objc_claimAutoreleasedReturnValue(), v22 = -[__CFString isEqualToString:](v20, "isEqualToString:", v21), v21, v22))
            {

              v20 = &stru_286AD9A18;
            }

            if (v16 && v18)
            {
              v42[0] = @"Title";
              v42[1] = @"Body";
              v43[0] = v16;
              v43[1] = v18;
              v42[2] = @"Link";
              v43[2] = v20;
              v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
              [v30 setObject:v24 forKey:v14];
              if ([v14 isEqualToString:@"en"])
              {
                v24 = v24;

                v29 = v24;
              }
            }

            else
            {
              v24 = defaultLogHandle(v23);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = v28;
                v41 = v14;
                _os_log_error_impl(&dword_259B7D000, v24, OS_LOG_TYPE_ERROR, "ERROR - Either title, body or link localized text is missing for locale:  %{public}@", buf, 0xCu);
              }
            }

            ++v13;
          }

          while (v33 != v13);
          v9 = obj;
          v33 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
        }

        while (v33);
      }

      v3 = 0x281DDE000;
      v7 = v29;
    }

    else
    {
      v25 = defaultLogHandle(isKindOfClass);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke_cold_3();
      }
    }
  }

  [v3 + 2456 fillInMissingLocales:v30 withOwnershipWarningMsg:v7];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v30];
  v27 = getLocalizedOwnershipWarnings__localizedOwnershipWarnings;
  getLocalizedOwnershipWarnings__localizedOwnershipWarnings = v26;
}

+ (void)fillInMissingLocales:(id)locales withOwnershipWarningMsg:(id)msg
{
  v19 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  msgCopy = msg;
  if (fillInMissingLocales_withOwnershipWarningMsg__onceToken != -1)
  {
    +[MSDLocalization fillInMissingLocales:withOwnershipWarningMsg:];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = fillInMissingLocales_withOwnershipWarningMsg__defaultLocales;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [localesCopy objectForKey:{v12, v14}];

        if (!v13)
        {
          [localesCopy setObject:msgCopy forKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

void __64__MSDLocalization_fillInMissingLocales_withOwnershipWarningMsg___block_invoke()
{
  v0 = fillInMissingLocales_withOwnershipWarningMsg__defaultLocales;
  fillInMissingLocales_withOwnershipWarningMsg__defaultLocales = &unk_286AE1768;
}

+ (BOOL)getWarningKeys:(id *)keys andPlaceHolderWarnings:(id *)warnings forOwnershipWarningFlag:(id)flag
{
  flagCopy = flag;
  *keys = 0;
  *warnings = 0;
  v8 = MGGetStringAnswer();
  v9 = v8;
  if (!v8)
  {
    [MSDLocalization getWarningKeys:? andPlaceHolderWarnings:? forOwnershipWarningFlag:?];
LABEL_16:
    v11 = 0;
    goto LABEL_12;
  }

  if (([v8 isEqualToString:@"iPhone"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"iPad") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"iPod") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"Watch") & 1) == 0)
  {
    [MSDLocalization getWarningKeys:v9 andPlaceHolderWarnings:? forOwnershipWarningFlag:?];
    goto LABEL_16;
  }

  if (([flagCopy isEqualToString:@"2"] & 1) == 0 && (objc_msgSend(flagCopy, "isEqualToString:", @"1") & 1) == 0)
  {
    [MSDLocalization getWarningKeys:flagCopy andPlaceHolderWarnings:? forOwnershipWarningFlag:?];
    goto LABEL_16;
  }

  if ([flagCopy isEqualToString:@"2"])
  {
    v10 = [MSDLocalization getChannelWarningKeys:keys andPlaceHolderWarnings:warnings forDeviceClass:v9];
  }

  else
  {
    v10 = [MSDLocalization getRetailWarningKeys:keys andPlaceHolderWarnings:warnings forDeviceClass:v9];
  }

  v11 = v10;
LABEL_12:

  return v11;
}

+ (BOOL)getChannelWarningKeys:(id *)keys andPlaceHolderWarnings:(id *)warnings forDeviceClass:(id)class
{
  classCopy = class;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"PropertyClaimTitle_Channel" forKey:@"Title"];
  [dictionary setObject:@"PropertyClaimLink_Channel" forKey:@"Link"];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary2 setObject:@"Property of Apple Authorized Reseller" forKey:@"Title"];
  [dictionary2 setObject:&stru_286AD9A18 forKey:@"Link"];
  if ([classCopy isEqualToString:@"iPhone"])
  {
    v10 = @"This iPhone cannot be used and is not for sale.";
    v11 = @"PropertyClaimBody_iPhone_Channel";
LABEL_9:
    [dictionary setObject:v11 forKey:@"Body"];
    [dictionary2 setObject:v10 forKey:@"Body"];
    goto LABEL_10;
  }

  if ([classCopy isEqualToString:@"iPad"])
  {
    v10 = @"This iPad cannot be used and is not for sale.";
    v11 = @"PropertyClaimBody_iPad_Channel";
    goto LABEL_9;
  }

  if ([classCopy isEqualToString:@"iPod"])
  {
    v10 = @"This iPod cannot be used and is not for sale.";
    v11 = @"PropertyClaimBody_iPod_Channel";
    goto LABEL_9;
  }

  if ([classCopy isEqualToString:@"Watch"])
  {
    v10 = @"This Apple Watch cannot be used and is not for sale.";
    v11 = @"PropertyClaimBody_AppleWatch_Channel";
    goto LABEL_9;
  }

LABEL_10:
  *keys = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
  *warnings = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary2];

  return 1;
}

+ (BOOL)getRetailWarningKeys:(id *)keys andPlaceHolderWarnings:(id *)warnings forDeviceClass:(id)class
{
  classCopy = class;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"PropertyClaimTitle_Retail" forKey:@"Title"];
  [dictionary setObject:@"PropertyClaimLink_Retail" forKey:@"Link"];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary2 setObject:@"Property of Apple" forKey:@"Title"];
  [dictionary2 setObject:@"apple.com/retail" forKey:@"Link"];
  if ([classCopy isEqualToString:@"iPhone"])
  {
    v10 = @"This iPhone cannot be used and is not for sale.  Return it to a nearby Apple retail location.";
    v11 = @"PropertyClaimBody_iPhone_Retail";
LABEL_9:
    [dictionary setObject:v11 forKey:@"Body"];
    [dictionary2 setObject:v10 forKey:@"Body"];
    goto LABEL_10;
  }

  if ([classCopy isEqualToString:@"iPad"])
  {
    v10 = @"This iPad cannot be used and is not for sale.  Return it to a nearby Apple retail location.";
    v11 = @"PropertyClaimBody_iPad_Retail";
    goto LABEL_9;
  }

  if ([classCopy isEqualToString:@"iPod"])
  {
    v10 = @"This iPod cannot be used and is not for sale.  Return it to a nearby Apple retail location.";
    v11 = @"PropertyClaimBody_iPod_Retail";
    goto LABEL_9;
  }

  if ([classCopy isEqualToString:@"Watch"])
  {
    v10 = @"This Apple Watch cannot be used and is not for sale.  Return it to a nearby Apple retail location.";
    v11 = @"PropertyClaimBody_AppleWatch_Retail";
    goto LABEL_9;
  }

LABEL_10:
  *keys = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
  *warnings = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary2];

  return 1;
}

- (void)init
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = @"/Applications/StoreDemoViewService.app";
  _os_log_error_impl(&dword_259B7D000, log, OS_LOG_TYPE_ERROR, "Could not load localization bundle at %{public}@", &v1, 0xCu);
}

void __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v2 = @"/System/Library/PrivateFrameworks/MobileStoreDemoKit.framework";
  _os_log_error_impl(&dword_259B7D000, v0, OS_LOG_TYPE_ERROR, "%s - Failed to load bundle %{public}@", v1, 0x16u);
}

void __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke_cold_2()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v3 = v0;
  _os_log_debug_impl(&dword_259B7D000, v1, OS_LOG_TYPE_DEBUG, "%s - allLocalizations = %{public}@", v2, 0x16u);
}

void __49__MSDLocalization_getLocalizedOwnershipWarnings___block_invoke_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v2 = @"/System/Library/PrivateFrameworks/MobileStoreDemoKit.framework";
  _os_log_error_impl(&dword_259B7D000, v0, OS_LOG_TYPE_ERROR, "%s - Failed to get all localizations or localizations is in wrong format.  Bundle:  %{public}@", v1, 0x16u);
}

+ (void)getWarningKeys:(uint64_t)a1 andPlaceHolderWarnings:forOwnershipWarningFlag:.cold.1(uint64_t a1)
{
  v1 = defaultLogHandle(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

+ (void)getWarningKeys:(uint64_t)a1 andPlaceHolderWarnings:forOwnershipWarningFlag:.cold.2(uint64_t a1)
{
  v1 = defaultLogHandle(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

+ (void)getWarningKeys:(uint64_t)a1 andPlaceHolderWarnings:forOwnershipWarningFlag:.cold.3(uint64_t a1)
{
  v1 = defaultLogHandle(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

@end