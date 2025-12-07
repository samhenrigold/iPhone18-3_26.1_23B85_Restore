@interface MSDLanguageAndRegionHelper
+ (id)sharedInstance;
- (BOOL)_isCurrentDeviceLanguage:(id)language andRegion:(id)region;
- (BOOL)_isCurrentDevicePreferredLanguage:(id)language andRegion:(id)region;
- (BOOL)isSiriEnabled;
- (id)_preferredLocalizedLanguageCodeFromArray:(id)array;
- (id)_systemLocalizedLanguageCodeFromArray:(id)array;
- (id)getCurrentDeviceLanguage;
- (id)getCurrentDevicePreferredLanguage;
- (id)getCurrentDeviceRegion;
- (id)getCurrentLocaleCode;
- (id)getSiriLanguage;
- (int)setDeviceLanguage:(id)language andRegion:(id)region matchToSystemLanguage:(BOOL)systemLanguage;
- (int)setSiriLanguage:(id)language;
- (void)setSiriIsEnabled:(BOOL)enabled;
@end

@implementation MSDLanguageAndRegionHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[MSDLanguageAndRegionHelper sharedInstance];
  }

  v3 = sharedInstance_shared_0;

  return v3;
}

uint64_t __44__MSDLanguageAndRegionHelper_sharedInstance__block_invoke()
{
  sharedInstance_shared_0 = objc_alloc_init(MSDLanguageAndRegionHelper);

  return MEMORY[0x2821F96F8]();
}

- (int)setDeviceLanguage:(id)language andRegion:(id)region matchToSystemLanguage:(BOOL)systemLanguage
{
  systemLanguageCopy = systemLanguage;
  v28[1] = *MEMORY[0x277D85DE8];
  languageCopy = language;
  regionCopy = region;
  v10 = languageCopy;
  v11 = defaultLogHandle(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (systemLanguageCopy)
  {
    if (v12)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_259BCA000, v11, OS_LOG_TYPE_DEFAULT, "Comparing to the nearest system language", &v22, 2u);
    }

    v28[0] = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v14 = [(MSDLanguageAndRegionHelper *)self _systemLocalizedLanguageCodeFromArray:v13];

    v15 = [(MSDLanguageAndRegionHelper *)self _isCurrentDeviceLanguage:v14 andRegion:regionCopy];
    v16 = v15;
  }

  else
  {
    if (v12)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_259BCA000, v11, OS_LOG_TYPE_DEFAULT, "Comparing to any localized language variant", &v22, 2u);
    }

    v15 = [(MSDLanguageAndRegionHelper *)self _isCurrentDevicePreferredLanguage:v10 andRegion:regionCopy];
    v16 = v15;
    v14 = v10;
  }

  v17 = defaultLogHandle(v15);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543874;
    v23 = v10;
    v24 = 2114;
    v25 = v14;
    v26 = 2114;
    v27 = regionCopy;
    _os_log_impl(&dword_259BCA000, v17, OS_LOG_TYPE_DEFAULT, "Setting device language to %{public}@ (%{public}@) and region code to %{public}@.", &v22, 0x20u);
  }

  if (v16)
  {
    v19 = defaultLogHandle(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543874;
      v23 = v10;
      v24 = 2114;
      v25 = v14;
      v26 = 2114;
      v27 = regionCopy;
      _os_log_impl(&dword_259BCA000, v19, OS_LOG_TYPE_DEFAULT, "Device already has language %{public}@ (%{public}@) and region %{public}@", &v22, 0x20u);
    }

    v20 = 2;
  }

  else
  {
    [MEMORY[0x277D218C8] setRegion:regionCopy];
    [MEMORY[0x277D218C8] setLanguage:v14];
    v20 = 0;
  }

  return v20;
}

- (id)getCurrentDeviceLanguage
{
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v4 = [(MSDLanguageAndRegionHelper *)self _systemLocalizedLanguageCodeFromArray:preferredLanguages];

  return v4;
}

- (id)getCurrentDevicePreferredLanguage
{
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  return firstObject;
}

- (id)getCurrentDeviceRegion
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];

  return countryCode;
}

- (id)getCurrentLocaleCode
{
  v3 = MEMORY[0x277CCACA8];
  getCurrentDevicePreferredLanguage = [(MSDLanguageAndRegionHelper *)self getCurrentDevicePreferredLanguage];
  getCurrentDeviceRegion = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceRegion];
  v6 = [v3 stringWithFormat:@"%@_%@", getCurrentDevicePreferredLanguage, getCurrentDeviceRegion];

  return v6;
}

- (int)setSiriLanguage:(id)language
{
  v25 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  isSiriEnabled = [(MSDLanguageAndRegionHelper *)self isSiriEnabled];
  if ((isSiriEnabled & 1) == 0)
  {
    v6 = defaultLogHandle(isSiriEnabled);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, "Enabling Siri", buf, 2u);
    }

    isSiriEnabled = [(MSDLanguageAndRegionHelper *)self setSiriIsEnabled:1];
  }

  v7 = defaultLogHandle(isSiriEnabled);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = languageCopy;
    _os_log_impl(&dword_259BCA000, v7, OS_LOG_TYPE_DEFAULT, "Setting Siri language to %{public}@", buf, 0xCu);
  }

  getSiriLanguage = [(MSDLanguageAndRegionHelper *)self getSiriLanguage];

  if (getSiriLanguage == languageCopy)
  {
    v12 = defaultLogHandle(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = languageCopy;
      _os_log_impl(&dword_259BCA000, v12, OS_LOG_TYPE_DEFAULT, "Device already has a Siri language of %{public}@", buf, 0xCu);
    }

    v19 = 2;
  }

  else
  {
    v10 = dispatch_semaphore_create(0);
    mEMORY[0x277CEF3A8] = [MEMORY[0x277CEF3A8] sharedInstance];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __46__MSDLanguageAndRegionHelper_setSiriLanguage___block_invoke;
    v21[3] = &unk_2798F1C48;
    v12 = v10;
    v22 = v12;
    [mEMORY[0x277CEF3A8] setLanguage:languageCopy withCompletion:v21];

    v13 = dispatch_time(0, 10000000000);
    v14 = dispatch_semaphore_wait(v12, v13);
    if (v14)
    {
      v15 = defaultLogHandle(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MSDLanguageAndRegionHelper setSiriLanguage:v15];
      }
    }

    getSiriLanguage2 = [(MSDLanguageAndRegionHelper *)self getSiriLanguage];

    if (getSiriLanguage2 == languageCopy)
    {
      v19 = 0;
    }

    else
    {
      v18 = defaultLogHandle(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(MSDLanguageAndRegionHelper *)languageCopy setSiriLanguage:v18];
      }

      v19 = 1;
    }
  }

  return v19;
}

intptr_t __46__MSDLanguageAndRegionHelper_setSiriLanguage___block_invoke(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Siri language change complete", v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getSiriLanguage
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  return languageCode;
}

- (BOOL)isSiriEnabled
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x277CEF368] assistantIsEnabled];

  return assistantIsEnabled;
}

- (void)setSiriIsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  [mEMORY[0x277CEF368] setAssistantIsEnabled:enabledCopy];
}

- (BOOL)_isCurrentDeviceLanguage:(id)language andRegion:(id)region
{
  regionCopy = region;
  languageCopy = language;
  getCurrentDeviceLanguage = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceLanguage];
  v9 = [getCurrentDeviceLanguage isEqualToString:languageCopy];

  if (v9)
  {
    getCurrentDeviceRegion = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceRegion];
    v11 = [getCurrentDeviceRegion isEqualToString:regionCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_isCurrentDevicePreferredLanguage:(id)language andRegion:(id)region
{
  regionCopy = region;
  languageCopy = language;
  getCurrentDevicePreferredLanguage = [(MSDLanguageAndRegionHelper *)self getCurrentDevicePreferredLanguage];
  v9 = [getCurrentDevicePreferredLanguage isEqualToString:languageCopy];

  if (v9)
  {
    getCurrentDeviceRegion = [(MSDLanguageAndRegionHelper *)self getCurrentDeviceRegion];
    v11 = [getCurrentDeviceRegion isEqualToString:regionCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_systemLocalizedLanguageCodeFromArray:(id)array
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = MEMORY[0x277CBEAF8];
  arrayCopy = array;
  systemLanguages = [v4 systemLanguages];
  v7 = [v3 preferredLocalizationsFromArray:systemLanguages forPreferences:arrayCopy];

  firstObject = [v7 firstObject];

  return firstObject;
}

- (id)_preferredLocalizedLanguageCodeFromArray:(id)array
{
  v22 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  availableLocaleIdentifiers = [MEMORY[0x277CBEAF8] availableLocaleIdentifiers];
  v6 = [availableLocaleIdentifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(availableLocaleIdentifiers);
        }

        v10 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:*(*(&v17 + 1) + 8 * i)];
        languageIdentifier = [v10 languageIdentifier];
        [array addObject:languageIdentifier];
      }

      v7 = [availableLocaleIdentifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v12 = MEMORY[0x277CCA8D8];
  v13 = [array copy];
  v14 = [v12 preferredLocalizationsFromArray:v13 forPreferences:arrayCopy];
  firstObject = [v14 firstObject];

  return firstObject;
}

- (void)setSiriLanguage:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 getSiriLanguage];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_259BCA000, a3, OS_LOG_TYPE_ERROR, "Failed to set the Siri language to %{public}@, the device Siri language remains set to %{public}@", &v6, 0x16u);
}

@end