@interface IPInternationalAnalytics
+ (void)reportGeneralStatistics;
+ (void)reportPerAppLanguageStatistics;
+ (void)reportStatistics;
@end

@implementation IPInternationalAnalytics

+ (void)reportStatistics
{
  [self reportGeneralStatistics];

  [self reportPerAppLanguageStatistics];
}

+ (void)reportGeneralStatistics
{
  v36[10] = *MEMORY[0x277D85DE8];
  _globalPreferredLanguages = [MEMORY[0x277CBEAF8] _globalPreferredLanguages];
  if ([_globalPreferredLanguages count])
  {
    v34 = [_globalPreferredLanguages objectAtIndexedSubscript:0];
  }

  else
  {
    v34 = 0;
  }

  if ([_globalPreferredLanguages count] < 2)
  {
    v31 = 0;
  }

  else
  {
    v31 = [_globalPreferredLanguages objectAtIndexedSubscript:1];
  }

  if ([_globalPreferredLanguages count] < 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [_globalPreferredLanguages objectAtIndexedSubscript:2];
  }

  v4 = +[IntlUtility perAppLanguageSelectionBundleIdentifiers];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _currentGlobalUserInflection = [MEMORY[0x277CCAEA8] _currentGlobalUserInflection];
  v33 = _globalPreferredLanguages;
  v30 = _currentGlobalUserInflection;
  if (_currentGlobalUserInflection)
  {
    v6 = [_currentGlobalUserInflection isIdentity] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v35[0] = @"deviceLanguage";
  _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v36[0] = _deviceLanguage;
  v35[1] = @"deviceRegion";
  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  countryCode = [preferredLocale countryCode];
  v8 = countryCode;
  if (countryCode)
  {
    v9 = countryCode;
  }

  else
  {
    v9 = @"Not Specified";
  }

  v36[1] = v9;
  v35[2] = @"perAppLanguageUsageCount";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  v27 = v10;
  v11 = v34;
  if (!v34)
  {
    v11 = @"Not Specified";
  }

  v36[2] = v10;
  v36[3] = v11;
  v35[3] = @"preferredLanguage1";
  v35[4] = @"preferredLanguage2";
  if (v31)
  {
    v12 = v31;
  }

  else
  {
    v12 = @"Not Specified";
  }

  v13 = v3;
  if (v3)
  {
    v14 = v3;
  }

  else
  {
    v14 = @"Not Specified";
  }

  v36[4] = v12;
  v36[5] = v14;
  v35[5] = @"preferredLanguage3";
  v35[6] = @"hasInflectionSet";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v36[6] = v15;
  v35[7] = 0x2841A0BD8;
  _preferredTemperatureUnit = [MEMORY[0x277CBEAF8] _preferredTemperatureUnit];
  v17 = _preferredTemperatureUnit;
  if (_preferredTemperatureUnit)
  {
    v18 = _preferredTemperatureUnit;
  }

  else
  {
    v18 = @"Not Specified";
  }

  v36[7] = v18;
  v35[8] = 0x28419F478;
  v19 = [standardUserDefaults objectForKey:? inDomain:?];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = @"Not Specified";
  }

  v36[8] = v21;
  v35[9] = 0x28419F498;
  v22 = [standardUserDefaults objectForKey:? inDomain:?];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"Not Specified";
  }

  v36[9] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:10];
  v26 = [v25 mutableCopy];

  AnalyticsSendEvent();
}

+ (void)reportPerAppLanguageStatistics
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = +[IntlUtility perAppLanguageSelectionBundleIdentifiers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [IntlUtility preferredLanguageForBundleID:v7];
        v9 = v8;
        if (v8)
        {
          v20[0] = @"bundleIdentifier";
          v20[1] = @"languageIdentifier";
          v21[0] = v7;
          v21[1] = v8;
          v20[2] = @"deviceLanguage";
          _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
          v21[2] = _deviceLanguage;
          v20[3] = @"deviceRegion";
          preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
          countryCode = [preferredLocale countryCode];
          v13 = countryCode;
          v14 = @"Not Specified";
          if (countryCode)
          {
            v14 = countryCode;
          }

          v21[3] = v14;
          v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
          AnalyticsSendEvent();
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v4);
  }
}

@end