@interface BYLocationController
+ (id)sharedBuddyLocationController;
- (BOOL)getCountryFromNVRAM;
- (BOOL)getCountryFromTelephony;
- (BYLocationController)init;
- (id)_checkForAliases:(id)aliases;
- (id)_checkForAliasesOrInvalid:(id)invalid;
- (id)_checkedArrayForString:(id)string;
- (id)_countriesFromDefaults;
- (id)_countryFromTelephony;
- (id)_languagesForRegionsUsingSIMRegionService:(id)service;
- (id)_subregionLanguagesForRegion:(id)region subregionsCodes:(id)codes;
- (id)aliasDict;
- (id)guessedLanguages;
- (void)_closeWifiConnection;
- (void)_countryFromTelephony;
- (void)_getWifiDevice;
- (void)_scanComplete:(id)complete error:(BOOL)error;
- (void)_scanWifiList;
- (void)_scanWifiListWithDevice:(__WiFiDeviceClient *)device;
- (void)_setGuessedCountryDefault:(id)default;
- (void)_startWifiScan;
- (void)configureForAnalytics:(id)analytics;
- (void)dealloc;
- (void)reset;
- (void)setFakeMode:(BOOL)mode;
@end

@implementation BYLocationController

+ (id)sharedBuddyLocationController
{
  v2 = sharedBuddyLocationController_sharedBuddyLocationController;
  if (!sharedBuddyLocationController_sharedBuddyLocationController)
  {
    v3 = objc_alloc_init(BYLocationController);
    v4 = sharedBuddyLocationController_sharedBuddyLocationController;
    sharedBuddyLocationController_sharedBuddyLocationController = v3;

    v2 = sharedBuddyLocationController_sharedBuddyLocationController;
  }

  return v2;
}

- (void)configureForAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  recommendedLocaleAnalyticsEvent = [(BYLocationController *)self recommendedLocaleAnalyticsEvent];

  if (!recommendedLocaleAnalyticsEvent)
  {
    v5 = [[BYAnalyticsEventRecommendedLocale alloc] initWithAnalyticsManager:analyticsCopy];
    [(BYLocationController *)self setRecommendedLocaleAnalyticsEvent:v5];
  }
}

- (id)_countryFromTelephony
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
  v37 = 0;
  v3 = [v2 getSubscriptionInfoWithError:&v37];
  v4 = v37;
  if (v4)
  {
    v5 = v4;
    v6 = _BYLoggingFacility(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BYLocationController *)v5 _countryFromTelephony:v6];
    }

    v13 = 0;
    goto LABEL_18;
  }

  subscriptionsInUse = [v3 subscriptionsInUse];
  v13 = [subscriptionsInUse count];

  if (!v13)
  {
    v5 = 0;
    goto LABEL_16;
  }

  subscriptionsInUse2 = [v3 subscriptionsInUse];
  v17 = [subscriptionsInUse2 objectAtIndexedSubscript:0];
  v36 = 0;
  v18 = [v2 copyMobileCountryCode:v17 error:&v36];
  v5 = v36;

  if (v5)
  {
    v20 = _BYLoggingFacility(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(BYLocationController *)v5 _countryFromTelephony:v20];
    }

    v13 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v35 = 0;
  v13 = [v2 copyMobileSubscriberIsoCountryCode:v18 error:&v35];
  v27 = v35;
  v5 = v27;
  if (v27)
  {
    v20 = _BYLoggingFacility(v27);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(BYLocationController *)v5 _countryFromTelephony:v20];
    }

    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  v6 = _BYLoggingFacility(v15);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v13;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Country from Telephony: %@", buf, 0xCu);
  }

LABEL_18:

  return v13;
}

- (id)aliasDict
{
  aliasDict = self->_aliasDict;
  if (!aliasDict)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"CountryAlias" ofType:@"plist"];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v5];
    v7 = self->_aliasDict;
    self->_aliasDict = v6;

    aliasDict = self->_aliasDict;
  }

  return aliasDict;
}

- (id)_checkForAliases:(id)aliases
{
  v25 = *MEMORY[0x1E69E9840];
  aliasesCopy = aliases;
  if (aliasesCopy)
  {
    aliasDict = [(BYLocationController *)self aliasDict];
    v6 = [aliasDict objectForKey:@"countryAlias"];

    v7 = [aliasesCopy count];
    if (v7)
    {
      v9 = v7;
      v10 = 0;
      *&v8 = 138412546;
      v19 = v8;
      do
      {
        v11 = [aliasesCopy objectAtIndexedSubscript:{v10, v19}];
        v12 = [v6 objectForKey:v11];
        v13 = v12;
        if (v12)
        {
          v14 = _BYLoggingFacility(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v22 = v11;
            v23 = 2112;
            v24 = v13;
            _os_log_impl(&dword_1B862F000, v14, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Found country '%@', but this is an alias for '%@'", buf, 0x16u);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v13;
          }

          else
          {
            v20 = v13;
            v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
          }

          v17 = v15;
          [aliasesCopy replaceObjectsInRange:v10 withObjectsFromArray:{1, v15}];
          v16 = [v17 count];
        }

        else
        {
          v16 = 1;
        }

        v10 += v16;
      }

      while (v10 < v9);
    }
  }

  return aliasesCopy;
}

- (id)_checkForAliasesOrInvalid:(id)invalid
{
  v40 = *MEMORY[0x1E69E9840];
  invalidCopy = invalid;
  array = [MEMORY[0x1E695DF70] array];
  v27 = invalidCopy;
  if (!self->_validCountries)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    availableLocaleIdentifiers = [MEMORY[0x1E695DF58] availableLocaleIdentifiers];
    v8 = [availableLocaleIdentifiers countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      v11 = *MEMORY[0x1E695D978];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(availableLocaleIdentifiers);
          }

          v13 = MEMORY[0x1E695DF58];
          v14 = [MEMORY[0x1E695DF58] canonicalLocaleIdentifierFromString:*(*(&v32 + 1) + 8 * i)];
          v15 = [v13 componentsFromLocaleIdentifier:v14];

          v16 = [v15 objectForKey:v11];
          if (v16)
          {
            [(NSSet *)v6 addObject:v16];
          }
        }

        v9 = [availableLocaleIdentifiers countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v9);
    }

    validCountries = self->_validCountries;
    self->_validCountries = v6;

    invalidCopy = v27;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [(BYLocationController *)self _checkForAliases:invalidCopy];
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * j);
        v24 = [(NSSet *)self->_validCountries containsObject:v23];
        if (v24)
        {
          [array addObject:v23];
        }

        else
        {
          v25 = _BYLoggingFacility(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v37 = v23;
            _os_log_impl(&dword_1B862F000, v25, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Found country '%@', but this is not a valid country code, ignoring", buf, 0xCu);
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v20);
  }

  return array;
}

- (id)_checkedArrayForString:(id)string
{
  if (string)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithObject:?];
    v5 = [(BYLocationController *)self _checkForAliases:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_countriesFromDefaults
{
  v18 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"GuessedCountry"];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    isKindOfClass = v4;
    v6 = isKindOfClass;
  }

  else
  {
    v6 = 0;
  }

  v7 = _BYLoggingFacility(isKindOfClass);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "N";
    if (self->_fakeMode)
    {
      v8 = "Y";
    }

    v14 = 138412546;
    v15 = v6;
    v16 = 2080;
    v17 = v8;
    _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: stored in defaults: countries = '%@' fake mode? %s", &v14, 0x16u);
  }

  v9 = [v6 count];
  if (v9 && self->_fakeMode)
  {
    v9 = v6;
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = _BYLoggingFacility(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: countries from defaults = '%@'", &v14, 0xCu);
  }

  v12 = v10;
  return v10;
}

- (void)_setGuessedCountryDefault:(id)default
{
  v3 = MEMORY[0x1E695E000];
  defaultCopy = default;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:defaultCopy forKey:@"GuessedCountry"];
}

- (BYLocationController)init
{
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = BYLocationController;
  v2 = [(BYLocationController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfWiFiScanAttemptsRemaining = 5;
    v4 = +[BYPreferencesController buddyPreferencesInternal];
    v5 = [v4 objectForKey:@"SuggestedCountries"];

    if (v5)
    {
      v7 = _BYLoggingFacility(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Using override suggested countries: %@", buf, 0xCu);
      }

      v3->forceGuessedCountries = 1;
      if ([v5 count])
      {
        objc_storeStrong(&v3->_guessedCountries, v5);
        firstObject = [(NSArray *)v3->_guessedCountries firstObject];
      }

      else
      {
        guessedCountries = v3->_guessedCountries;
        v3->_guessedCountries = MEMORY[0x1E695E0F0];

        firstObject = &stru_1F309EFF0;
      }

      guessedCountryFromTelephony = v3->_guessedCountryFromTelephony;
      v3->_guessedCountryFromTelephony = &firstObject->isa;
    }

    else if (!v3->_guessedCountries)
    {
      [(BYLocationController *)v3 getCountryFromTelephony];
      recommendedLocaleAnalyticsEvent = [(BYLocationController *)v3 recommendedLocaleAnalyticsEvent];
      [recommendedLocaleAnalyticsEvent setSource:2];

      if (!v3->_guessedCountries)
      {
        [(BYLocationController *)v3 _startWifiScan];
        if (!v3->_guessedCountries)
        {
          [(BYLocationController *)v3 getCountryFromNVRAM];
        }
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  [(BYLocationController *)self _closeWifiConnection];
  v3.receiver = self;
  v3.super_class = BYLocationController;
  [(BYLocationController *)&v3 dealloc];
}

- (BOOL)getCountryFromTelephony
{
  guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
  if (!guessedCountryFromTelephony)
  {
    _countryFromTelephony = [(BYLocationController *)self _countryFromTelephony];
    v5 = self->_guessedCountryFromTelephony;
    self->_guessedCountryFromTelephony = _countryFromTelephony;

    v6 = [(NSString *)self->_guessedCountryFromTelephony length];
    guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
    if (v6)
    {
      uppercaseString = [(NSString *)guessedCountryFromTelephony uppercaseString];
      v8 = [(BYLocationController *)self _checkedArrayForString:uppercaseString];
      [(BYLocationController *)self setGuessedCountries:v8];

      [(BYLocationController *)self _setGuessedCountryDefault:self->_guessedCountries];
      guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
    }
  }

  return guessedCountryFromTelephony != 0;
}

- (BOOL)getCountryFromNVRAM
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (getCountryFromNVRAM_onceToken != -1)
  {
    [BYLocationController getCountryFromNVRAM];
  }

  if (!getCountryFromNVRAM_nvramCountry)
  {
    return 0;
  }

  v5[0] = getCountryFromNVRAM_nvramCountry;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(BYLocationController *)self setGuessedCountries:v3];

  [(BYLocationController *)self _setGuessedCountryDefault:self->_guessedCountries];
  return getCountryFromNVRAM_nvramCountry != 0;
}

uint64_t __43__BYLocationController_getCountryFromNVRAM__block_invoke()
{
  result = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/options");
  if (result)
  {
    v1 = result;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"SetupCountryOverride", *MEMORY[0x1E695E480], 0);
    IOObjectRelease(v1);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = CFProperty;
      v3 = [v2 bytes];
      if ([v2 length])
      {
        v4 = 0;
        while (*(v3 + v4))
        {
          if (++v4 >= [v2 length])
          {
            goto LABEL_10;
          }
        }

        if (!v4)
        {
          goto LABEL_11;
        }

LABEL_10:
        v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v3 length:v4 encoding:4];
        v6 = getCountryFromNVRAM_nvramCountry;
        getCountryFromNVRAM_nvramCountry = v5;
      }

LABEL_11:
    }

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)guessedLanguages
{
  selfCopy = self;
  v52 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_guessedCountries count];
  if (v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v5 = objc_alloc_init(BYSIMRegionService);
    v6 = [(BYLocationController *)selfCopy _languagesForRegionsUsingSIMRegionService:v5];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = selfCopy;
    obj = selfCopy->_guessedCountries;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v7)
    {
      v8 = v7;
      v36 = *v43;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v43 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v42 + 1) + 8 * i);
          v11 = [MEMORY[0x1E69AAE08] preferredLanguagesForRegion:v10];
          v12 = objc_alloc_init(MEMORY[0x1E695DFA0]);
          v13 = [v6 objectForKeyedSubscript:v10];
          if (v13)
          {
            v14 = v13;
            v15 = [v6 objectForKeyedSubscript:v10];
            v16 = [v15 count];

            if (v16)
            {
              v17 = [v6 objectForKeyedSubscript:v10];
              [v12 addObjectsFromArray:v17];
            }
          }

          [v12 addObjectsFromArray:v11];
          array3 = [v12 array];
          reverseObjectEnumerator = [array3 reverseObjectEnumerator];
          allObjects = [reverseObjectEnumerator allObjects];

          v22 = _BYLoggingFacility(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v48 = v10;
            v49 = 2112;
            v50 = allObjects;
            _os_log_impl(&dword_1B862F000, v22, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Languages (in reverse order) for country %@ = %@", buf, 0x16u);
          }

          [array2 addObject:allObjects];
        }

        v8 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v8);
    }

    while (1)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v23 = array2;
      v24 = [v23 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (!v24)
      {
        break;
      }

      v25 = v24;
      v26 = 0;
      v27 = *v39;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v38 + 1) + 8 * j);
          lastObject = [v29 lastObject];
          if (lastObject)
          {
            if (([array containsObject:lastObject] & 1) == 0)
            {
              [array addObject:lastObject];
            }

            [v29 removeLastObject];
            v26 = 1;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v25);

      if ((v26 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

LABEL_30:
    selfCopy = v34;
  }

  else
  {
    array = 0;
  }

  v31 = _BYLoggingFacility(v3);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    guessedCountries = selfCopy->_guessedCountries;
    *buf = 138412546;
    v48 = guessedCountries;
    v49 = 2112;
    v50 = array;
    _os_log_impl(&dword_1B862F000, v31, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Languages for countries %@ = %@", buf, 0x16u);
  }

  if (!selfCopy->_firstGuessedLanguages)
  {
    [(BYLocationController *)selfCopy setFirstGuessedLanguages:array];
  }

  return array;
}

- (id)_languagesForRegionsUsingSIMRegionService:(id)service
{
  v58 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v5 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v43 = serviceCopy;
  obj = [serviceCopy cellularNetworkInformation];
  v6 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v6)
  {
    v7 = v6;
    v45 = *v51;
    do
    {
      v8 = 0;
      do
      {
        if (*v51 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v50 + 1) + 8 * v8);
        v10 = _BYLoggingFacility(v6);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B862F000, v10, OS_LOG_TYPE_DEFAULT, "Getting subregion languages for Home Region", buf, 2u);
        }

        homeCountryISOCode = [v9 homeCountryISOCode];
        homeSubregionISOCodes = [v9 homeSubregionISOCodes];
        v13 = [(BYLocationController *)self _subregionLanguagesForRegion:homeCountryISOCode subregionsCodes:homeSubregionISOCodes];

        v15 = _BYLoggingFacility(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v56 = v13;
          _os_log_impl(&dword_1B862F000, v15, OS_LOG_TYPE_DEFAULT, "Home subregion languages: %@", buf, 0xCu);
        }

        v16 = [v5 objectForKeyedSubscript:homeCountryISOCode];

        if (!v16)
        {
          v17 = objc_opt_new();
          [v5 setObject:v17 forKeyedSubscript:homeCountryISOCode];
        }

        v18 = [v5 objectForKeyedSubscript:homeCountryISOCode];
        [v18 addObjectsFromArray:v13];

        v20 = _BYLoggingFacility(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B862F000, v20, OS_LOG_TYPE_DEFAULT, "Getting subregion languages for Network Region", buf, 2u);
        }

        networkCountryISOCode = [v9 networkCountryISOCode];
        networkSubregionISOCodes = [v9 networkSubregionISOCodes];
        v23 = [(BYLocationController *)self _subregionLanguagesForRegion:networkCountryISOCode subregionsCodes:networkSubregionISOCodes];

        v25 = _BYLoggingFacility(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v56 = v23;
          _os_log_impl(&dword_1B862F000, v25, OS_LOG_TYPE_DEFAULT, "Network subregion languages: %@", buf, 0xCu);
        }

        v26 = [v5 objectForKeyedSubscript:networkCountryISOCode];

        if (!v26)
        {
          v27 = objc_opt_new();
          [v5 setObject:v27 forKeyedSubscript:networkCountryISOCode];
        }

        v28 = [v5 objectForKeyedSubscript:networkCountryISOCode];
        [v28 addObjectsFromArray:v23];

        ++v8;
      }

      while (v7 != v8);
      v6 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
      v7 = v6;
    }

    while (v6);
  }

  v29 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  allKeys = [v5 allKeys];
  v31 = [allKeys countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v47;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(allKeys);
        }

        v35 = *(*(&v46 + 1) + 8 * i);
        v36 = [v5 objectForKeyedSubscript:v35];
        array = [v36 array];
        uppercaseString = [v35 uppercaseString];
        [v29 setObject:array forKeyedSubscript:uppercaseString];
      }

      v32 = [allKeys countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v32);
  }

  v39 = [v29 count];
  if (v39)
  {
    v40 = _BYLoggingFacility(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v29;
      _os_log_impl(&dword_1B862F000, v40, OS_LOG_TYPE_DEFAULT, "Subregion languages: %@", buf, 0xCu);
    }
  }

  v41 = [v29 copy];

  return v41;
}

- (id)_subregionLanguagesForRegion:(id)region subregionsCodes:(id)codes
{
  v37 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  codesCopy = codes;
  v7 = _BYLoggingFacility(codesCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = regionCopy;
    _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Region ISO Code: %@", buf, 0xCu);
  }

  v9 = _BYLoggingFacility(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = codesCopy;
    _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Subregions ISO Codes: %@", buf, 0xCu);
  }

  v10 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = codesCopy;
  v11 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v27;
    *&v12 = 138412802;
    v24 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [v16 componentsSeparatedByString:{@"-", v24}];
        lastObject = [v17 lastObject];
        lowercaseString = [lastObject lowercaseString];

        v20 = [MEMORY[0x1E695DF58] languagesForRegion:regionCopy subdivision:lowercaseString withThreshold:2 filter:0];
        v21 = _BYLoggingFacility(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v24;
          v31 = regionCopy;
          v32 = 2112;
          v33 = v16;
          v34 = 2112;
          v35 = v20;
          _os_log_impl(&dword_1B862F000, v21, OS_LOG_TYPE_DEFAULT, "Language codes for region %@, subregion %@: %@", buf, 0x20u);
        }

        [v10 addObjectsFromArray:v20];
      }

      v13 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v13);
  }

  v22 = [v10 copy];

  return v22;
}

- (void)setFakeMode:(BOOL)mode
{
  self->_fakeMode = mode;
  if (mode)
  {
    _countriesFromDefaults = [(BYLocationController *)self _countriesFromDefaults];
    [(BYLocationController *)self setGuessedCountries:_countriesFromDefaults];

    recommendedLocaleAnalyticsEvent = [(BYLocationController *)self recommendedLocaleAnalyticsEvent];
    [recommendedLocaleAnalyticsEvent setSource:1];
  }
}

- (void)_startWifiScan
{
  self->fWifiManager = 0;
  self->fWifiDevice = 0;
  v3 = WiFiManagerClientCreate();
  self->fWifiManager = v3;
  if (v3)
  {
    CFRunLoopGetCurrent();
    WiFiManagerClientScheduleWithRunLoop();
    [(BYLocationController *)self _getWifiDevice];
  }

  else
  {
    v4 = _BYLoggingFacility(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: WiFiManagerClientCreate failed", v5, 2u);
    }
  }

  if (self->fWifiDevice)
  {
    [(BYLocationController *)self _scanWifiList];
  }

  else
  {
    WiFiManagerClientRegisterDeviceAttachmentCallback();
  }
}

- (void)_getWifiDevice
{
  v3 = WiFiManagerClientCopyDevices();
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
      self->fWifiDevice = ValueAtIndex;
      if (ValueAtIndex)
      {
        v6 = CFGetTypeID(ValueAtIndex);
        ValueAtIndex = WiFiDeviceClientGetTypeID();
        if (v6 == ValueAtIndex)
        {
          CFRetain(self->fWifiDevice);
LABEL_15:
          CFRelease(v4);
          return;
        }
      }

      v8 = _BYLoggingFacility(ValueAtIndex);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v9 = "Setup Assistant Location: could not get wifi device";
        v10 = &v11;
LABEL_13:
        _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      }
    }

    else
    {
      v8 = _BYLoggingFacility(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        v9 = "Setup Assistant Location: no WiFi devices found";
        v10 = v12;
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v7 = _BYLoggingFacility(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: WiFiManagerClientCopyDevices failed", buf, 2u);
  }
}

- (void)_scanWifiListWithDevice:(__WiFiDeviceClient *)device
{
  if (device)
  {
    self->fWifiDevice = device;
    CFRetain(device);

    [(BYLocationController *)self _scanWifiList];
  }

  else
  {

    [(BYLocationController *)self _closeWifiConnection];
  }
}

- (void)_scanWifiList
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = _BYLoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Starting Wi-Fi scan...", buf, 2u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  date = [MEMORY[0x1E695DF00] date];
  [(BYLocationController *)self setWirelessScanStartDate:date];

  v6 = WiFiDeviceClientScanAsync();
  if (v6)
  {
    v7 = v6;
    v8 = _BYLoggingFacility(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v7;
      _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Wi-Fi scan failed with error %d", buf, 8u);
    }

    numberOfWiFiScanAttemptsRemaining = [(BYLocationController *)self numberOfWiFiScanAttemptsRemaining];
    if (numberOfWiFiScanAttemptsRemaining)
    {
      v10 = _BYLoggingFacility(numberOfWiFiScanAttemptsRemaining);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B862F000, v10, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Retrying Wi-Fi scan after a delay...", buf, 2u);
      }

      [(BYLocationController *)self setNumberOfWiFiScanAttemptsRemaining:[(BYLocationController *)self numberOfWiFiScanAttemptsRemaining]- 1];
      v11 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__BYLocationController__scanWifiList__block_invoke;
      block[3] = &unk_1E7D027A8;
      block[4] = self;
      dispatch_after(v11, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      [(BYLocationController *)self _closeWifiConnection];
    }
  }
}

void __37__BYLocationController__scanWifiList__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3[2] || !v3[7])
  {
    v4 = _BYLoggingFacility(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Wi-Fi scan re-attempt unnecessary", v5, 2u);
    }
  }

  else
  {

    [v3 _scanWifiList];
  }
}

- (void)_scanComplete:(id)complete error:(BOOL)error
{
  v66 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  v7 = completeCopy;
  if (!error && !self->_guessedCountries)
  {
    v8 = [completeCopy count];
    if (!v8)
    {
LABEL_46:
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"BYCountryScanCompletedNotification" object:0];

      goto LABEL_47;
    }

    v9 = v8;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v12 = 0;
    v57 = 3;
    do
    {
      [v7 objectAtIndexedSubscript:v12];

      if (WiFiNetworkGet11dCountryCodeFromIe())
      {
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v58 length:2 encoding:1];
        [v10 addObject:v13];
      }

      ++v12;
    }

    while (v9 != v12);
    v14 = [(BYLocationController *)self _checkForAliasesOrInvalid:v10];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v54;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v54 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v11 addObject:*(*(&v53 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v53 objects:v65 count:16];
      }

      while (v16);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v19 = v11;
    array = [v19 countByEnumeratingWithState:&v49 objects:v64 count:16];
    if (array)
    {
      v41 = v14;
      v42 = v10;
      v43 = v7;
      selfCopy = self;
      v21 = 0;
      v22 = *v50;
      do
      {
        for (j = 0; j != array; j = j + 1)
        {
          if (*v50 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v49 + 1) + 8 * j);
          v25 = [v19 countForObject:{v24, v41}];
          v26 = _BYLoggingFacility(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v61 = v25;
            v62 = 2112;
            v63 = v24;
            _os_log_impl(&dword_1B862F000, v26, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Wifi scan found %lu APs for '%@'", buf, 0x16u);
          }

          if (v25 > v21)
          {
            v21 = v25;
          }
        }

        array = [v19 countByEnumeratingWithState:&v49 objects:v64 count:16];
      }

      while (array);

      if (!v21)
      {
        array = 0;
        v7 = v43;
        v14 = v41;
        v10 = v42;
        goto LABEL_39;
      }

      array = [MEMORY[0x1E695DF70] array];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v27 = v19;
      v28 = [v27 countByEnumeratingWithState:&v45 objects:v59 count:16];
      v10 = v42;
      v7 = v43;
      if (v28)
      {
        v29 = v28;
        v30 = *v46;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v46 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v45 + 1) + 8 * k);
            if ([v27 countForObject:v32] == v21)
            {
              [array addObject:v32];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v45 objects:v59 count:16];
        }

        while (v29);
      }

      self = selfCopy;
      v14 = v41;
    }

LABEL_39:
    v33 = [array count];
    recommendedLocaleAnalyticsEvent2 = _BYLoggingFacility(v33);
    v35 = os_log_type_enabled(recommendedLocaleAnalyticsEvent2, OS_LOG_TYPE_DEFAULT);
    if (v33)
    {
      if (v35)
      {
        *buf = 138412290;
        v61 = array;
        _os_log_impl(&dword_1B862F000, recommendedLocaleAnalyticsEvent2, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Wifi scan guessed countries: '%@'", buf, 0xCu);
      }

      [(BYLocationController *)self setGuessedCountries:array];
      [(BYLocationController *)self _setGuessedCountryDefault:self->_guessedCountries];
      wirelessScanStartDate = [(BYLocationController *)self wirelessScanStartDate];
      [wirelessScanStartDate timeIntervalSinceNow];
      v38 = -v37;

      recommendedLocaleAnalyticsEvent = [(BYLocationController *)self recommendedLocaleAnalyticsEvent];
      [recommendedLocaleAnalyticsEvent setSource:3];

      recommendedLocaleAnalyticsEvent2 = [(BYLocationController *)self recommendedLocaleAnalyticsEvent];
      [recommendedLocaleAnalyticsEvent2 setDurationOfWiFiScan:v38];
    }

    else if (v35)
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, recommendedLocaleAnalyticsEvent2, OS_LOG_TYPE_DEFAULT, "No valid countries in Wifi scan.", buf, 2u);
    }

    goto LABEL_46;
  }

LABEL_47:
  [(BYLocationController *)self _closeWifiConnection];
}

- (void)_closeWifiConnection
{
  if (self->fWifiManager)
  {
    CFRunLoopGetCurrent();
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(self->fWifiManager);
    self->fWifiManager = 0;
  }

  fWifiDevice = self->fWifiDevice;
  if (fWifiDevice)
  {
    CFRelease(fWifiDevice);
    self->fWifiDevice = 0;
  }
}

- (void)reset
{
  [(BYLocationController *)self setGuessedCountries:0];
  guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
  self->_guessedCountryFromTelephony = 0;
}

- (void)_countryFromTelephony
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_3(&dword_1B862F000, a2, a3, "Failed to get country code from MCC: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end