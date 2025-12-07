@interface IPLanguageListManager
+ (BOOL)canRemoveLanguages:(id)languages fromPreferredLanguages:(id)preferredLanguages;
+ (id)effectiveSystemLanguagesWithUnsupportedVariant:(BOOL)variant forPreferredLanguages:(id)languages;
+ (id)manager;
+ (id)regionalVariantLanguagesForBaseLanguage:(id)language;
+ (id)regionalVariantLanguagesForSystemLanguages;
- (IPLanguageListManager)initWithPreferredLanguages:(id)languages;
- (IPLanguageListManager)initWithPreferredLanguages:(id)languages preferredLocale:(id)locale;
- (IPLanguageListManager)initWithPreferredLanguages:(id)languages preferredLocale:(id)locale systemLanguages:(id)systemLanguages;
- (NSString)deviceLanguage;
- (NSString)systemDisplayLanguage;
- (id)deviceLanguagesForChangingDeviceLanguage:(BOOL)language;
- (id)languageVariants;
- (id)otherLanguages;
- (void)setPreferredLanguages:(id)languages;
- (void)setRegion:(id)region updateFirstLanguage:(BOOL)language;
- (void)systemDisplayLanguage;
@end

@implementation IPLanguageListManager

- (IPLanguageListManager)initWithPreferredLanguages:(id)languages preferredLocale:(id)locale systemLanguages:(id)systemLanguages
{
  languagesCopy = languages;
  localeCopy = locale;
  systemLanguagesCopy = systemLanguages;
  v15.receiver = self;
  v15.super_class = IPLanguageListManager;
  v12 = [(IPLanguageListManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preferredLanguages, languages);
    objc_storeStrong(&v13->_preferredLocale, locale);
    objc_storeStrong(&v13->_systemLanguages, systemLanguages);
  }

  return v13;
}

- (IPLanguageListManager)initWithPreferredLanguages:(id)languages preferredLocale:(id)locale
{
  v6 = MEMORY[0x277CBEAF8];
  localeCopy = locale;
  languagesCopy = languages;
  systemLanguages = [v6 systemLanguages];
  v10 = [(IPLanguageListManager *)self initWithPreferredLanguages:languagesCopy preferredLocale:localeCopy systemLanguages:systemLanguages];

  return v10;
}

- (IPLanguageListManager)initWithPreferredLanguages:(id)languages
{
  v4 = MEMORY[0x277CBEAF8];
  languagesCopy = languages;
  preferredLocale = [v4 preferredLocale];
  systemLanguages = [MEMORY[0x277CBEAF8] systemLanguages];
  v8 = [(IPLanguageListManager *)self initWithPreferredLanguages:languagesCopy preferredLocale:preferredLocale systemLanguages:systemLanguages];

  return v8;
}

+ (id)manager
{
  v2 = [self alloc];
  _globalPreferredLanguages = [MEMORY[0x277CBEAF8] _globalPreferredLanguages];
  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  systemLanguages = [MEMORY[0x277CBEAF8] systemLanguages];
  v6 = [v2 initWithPreferredLanguages:_globalPreferredLanguages preferredLocale:preferredLocale systemLanguages:systemLanguages];

  return v6;
}

- (id)deviceLanguagesForChangingDeviceLanguage:(BOOL)language
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  systemLanguages = [(IPLanguageListManager *)self systemLanguages];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(systemLanguages, "count")}];

  systemLanguages2 = [(IPLanguageListManager *)self systemLanguages];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __66__IPLanguageListManager_deviceLanguagesForChangingDeviceLanguage___block_invoke;
  v53[3] = &unk_2787A9418;
  v8 = v6;
  v54 = v8;
  [systemLanguages2 enumerateObjectsUsingBlock:v53];

  systemDisplayLanguage = [(IPLanguageListManager *)self systemDisplayLanguage];
  v9 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:?];
  preferredLocale = [(IPLanguageListManager *)self preferredLocale];
  countryCode = [preferredLocale countryCode];

  v12 = [IntlUtility preferredLanguagesForRegionWithoutFiltering:countryCode];
  systemLanguages3 = [(IPLanguageListManager *)self systemLanguages];
  regionalVariantLanguagesForSystemLanguages = [objc_opt_class() regionalVariantLanguagesForSystemLanguages];
  v15 = [systemLanguages3 arrayByAddingObjectsFromArray:regionalVariantLanguagesForSystemLanguages];
  v43 = countryCode;
  v16 = [IntlUtility filterLanguageList:v12 forRegion:countryCode fromLanguages:v15];
  v17 = [v16 mutableCopy];

  v18 = v9;
  v19 = v8;

  [v8 removeObjectsInArray:v17];
  if (v9)
  {
    [v8 removeObject:v9];
    [v17 removeObject:v9];
  }

  v20 = systemDisplayLanguage;
  if (systemDisplayLanguage)
  {
    [v8 removeObject:systemDisplayLanguage];
    [v17 removeObject:systemDisplayLanguage];
  }

  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v22 = orderedSet;
  if (systemDisplayLanguage)
  {
    [orderedSet addObject:systemDisplayLanguage];
  }

  v42 = v17;
  [v22 addObjectsFromArray:v17];
  [v22 addObjectsFromArray:v8];
  if (!language)
  {
    v23 = v18;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    preferredLanguages = [(IPLanguageListManager *)self preferredLanguages];
    v25 = [preferredLanguages countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v50;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v50 != v27)
          {
            objc_enumerationMutation(preferredLanguages);
          }

          v29 = *(*(&v49 + 1) + 8 * i);
          v30 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v29];
          v31 = [v22 indexOfObject:v29];
          if (v31 != 0x7FFFFFFFFFFFFFFFLL || (v31 = [v22 indexOfObject:v30], v31 != 0x7FFFFFFFFFFFFFFFLL))
          {
            [v22 removeObjectAtIndex:v31];
          }
        }

        v26 = [preferredLanguages countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v26);
    }

    [v22 removeObject:systemDisplayLanguage];
    v19 = v8;
    v18 = v23;
    v20 = systemDisplayLanguage;
  }

  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = v22;
  v34 = [v33 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v46;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v46 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [IPLanguage languageWithIdentifier:*(*(&v45 + 1) + 8 * j)];
        [orderedSet2 addObject:v38];
      }

      v35 = [v33 countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v35);
  }

  array = [orderedSet2 array];

  return array;
}

void __66__IPLanguageListManager_deviceLanguagesForChangingDeviceLanguage___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [IntlUtility normalizedLanguageIDFromString:a2];
  [v2 addObject:v3];
}

- (id)languageVariants
{
  v19 = *MEMORY[0x277D85DE8];
  systemDisplayLanguage = [(IPLanguageListManager *)self systemDisplayLanguage];
  v3 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:systemDisplayLanguage];
  v4 = [objc_opt_class() regionalVariantLanguagesForBaseLanguage:v3];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

        v11 = [IPLanguage languageWithIdentifier:*(*(&v14 + 1) + 8 * i), v14];
        [orderedSet addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  array = [orderedSet array];

  return array;
}

- (id)otherLanguages
{
  v33 = *MEMORY[0x277D85DE8];
  renderableUILanguages = [MEMORY[0x277CBEAF8] renderableUILanguages];
  v4 = [renderableUILanguages mutableCopy];

  systemLanguages = [(IPLanguageListManager *)self systemLanguages];
  [v4 removeObjectsInArray:systemLanguages];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  preferredLanguages = [(IPLanguageListManager *)self preferredLanguages];
  v7 = [preferredLanguages countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(preferredLanguages);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v11];
        v13 = [v4 indexOfObject:v11];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL || (v13 = [v4 indexOfObject:v12], v13 != 0x7FFFFFFFFFFFFFFFLL))
        {
          [v4 removeObjectAtIndex:v13];
        }
      }

      v8 = [preferredLanguages countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v4;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [IPLanguage languageWithIdentifier:*(*(&v23 + 1) + 8 * j), v23];
        [array addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  v21 = [(IPLanguageListManager *)self deviceLanguagesForChangingDeviceLanguage:0];
  [array removeObjectsInArray:v21];

  [objc_opt_class() sortByLocalizedLanguage:array];

  return array;
}

- (void)setRegion:(id)region updateFirstLanguage:(BOOL)language
{
  v41[1] = *MEMORY[0x277D85DE8];
  regionCopy = region;
  selfCopy = self;
  preferredLanguages = [(IPLanguageListManager *)self preferredLanguages];
  v7 = [preferredLanguages mutableCopy];

  if ([v7 count])
  {
    v8 = 0;
    v9 = 0;
    v37 = *MEMORY[0x277CBE690];
    v38 = v7;
    v35 = regionCopy;
    do
    {
      v10 = [v7 objectAtIndexedSubscript:{v9, v35}];
      v11 = [MEMORY[0x277CBEAF8] languageFromLanguage:v10 byReplacingRegion:regionCopy];
      v40 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v10];
      if (v8)
      {
        v12 = 0;
      }

      else
      {
        v13 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v10];
        systemLanguages = [MEMORY[0x277CBEAF8] systemLanguages];
        if ([systemLanguages containsObject:v13])
        {
          v12 = 1;
        }

        else
        {
          baseSystemLanguages = [MEMORY[0x277CBEAF8] baseSystemLanguages];
          v12 = [baseSystemLanguages containsObject:v13];
        }
      }

      regionalVariantLanguagesForSystemLanguages = [objc_opt_class() regionalVariantLanguagesForSystemLanguages];
      v17 = [regionalVariantLanguagesForSystemLanguages containsObject:v10];

      if (v12)
      {
        v7 = v38;
        if (!language && ![MEMORY[0x277CBEAF8] _language:v10 usesSameLocalizationAs:v11])
        {
          if ((v17 & 1) == 0)
          {
            v18 = MEMORY[0x277CCA8D8];
            regionalVariantLanguagesForSystemLanguages2 = [objc_opt_class() regionalVariantLanguagesForSystemLanguages];
            v41[0] = v10;
            v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
            v21 = [v18 preferredLocalizationsFromArray:regionalVariantLanguagesForSystemLanguages2 forPreferences:v20];
            firstObject = [v21 firstObject];

            v7 = v38;
            if ([firstObject length] && objc_msgSend(MEMORY[0x277CBEAF8], "_language:usesSameLocalizationAs:", firstObject, v10))
            {
              [v38 replaceObjectAtIndex:v9 withObject:firstObject];
            }

            regionCopy = v35;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v23 = [v40 objectForKeyedSubscript:v37];
        v7 = v38;
        if (v23)
        {
          v24 = v23;
          v25 = v17 ^ 1;
          v26 = [v40 objectForKeyedSubscript:v37];
          preferredLocale = [(IPLanguageListManager *)selfCopy preferredLocale];
          countryCode = [preferredLocale countryCode];
          v29 = [v26 isEqualToString:countryCode] | v25;

          regionCopy = v35;
          v7 = v38;

          if ((v29 & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      [v7 replaceObjectAtIndex:v9 withObject:v11];
LABEL_20:
      v8 |= v12;

      ++v9;
    }

    while (v9 < [v7 count]);
  }

  v30 = [MEMORY[0x277CBEB70] orderedSetWithArray:v7];
  array = [v30 array];
  [v7 setArray:array];

  v32 = MEMORY[0x277CBEAF8];
  v33 = [MEMORY[0x277CBEAF8] localeIdentifierForRegionChange:regionCopy];
  v34 = [v32 localeWithLocaleIdentifier:v33];
  [(IPLanguageListManager *)selfCopy setPreferredLocale:v34];

  [(IPLanguageListManager *)selfCopy setPreferredLanguages:v7];
}

- (void)setPreferredLanguages:(id)languages
{
  objc_storeStrong(&self->_preferredLanguages, languages);
  languagesCopy = languages;
  systemDisplayLanguage = self->_systemDisplayLanguage;
  self->_systemDisplayLanguage = 0;
}

- (NSString)deviceLanguage
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.Foundation"];
  localizations = [v3 localizations];

  v5 = MEMORY[0x277CCA8D8];
  preferredLanguages = [(IPLanguageListManager *)self preferredLanguages];
  v7 = [v5 preferredLocalizationsFromArray:localizations forPreferences:preferredLanguages];
  firstObject = [v7 firstObject];

  v9 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:firstObject];

  return v9;
}

- (NSString)systemDisplayLanguage
{
  v28[1] = *MEMORY[0x277D85DE8];
  systemDisplayLanguage = self->_systemDisplayLanguage;
  if (systemDisplayLanguage)
  {
    goto LABEL_19;
  }

  deviceLanguage = [(IPLanguageListManager *)self deviceLanguage];
  v5 = objc_opt_class();
  preferredLanguages = [(IPLanguageListManager *)self preferredLanguages];
  v7 = [v5 effectiveSystemLanguagesWithUnsupportedVariant:1 forPreferredLanguages:preferredLanguages];
  firstObject = [v7 firstObject];

  v9 = deviceLanguage;
  v10 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:firstObject];
  v11 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v9];
  v12 = [v10 isEqualToString:v11];

  v13 = v9;
  if (v12)
  {
    v13 = firstObject;
  }

  if (v13)
  {
    v14 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v13];
    v15 = [objc_opt_class() regionalVariantLanguagesForBaseLanguage:v14];
    if ([v15 containsObject:v13])
    {
LABEL_18:
      v25 = self->_systemDisplayLanguage;
      self->_systemDisplayLanguage = v13;
      v26 = v13;

      systemDisplayLanguage = self->_systemDisplayLanguage;
LABEL_19:
      v19 = systemDisplayLanguage;
      goto LABEL_20;
    }

    systemLanguages = [(IPLanguageListManager *)self systemLanguages];
    v17 = [systemLanguages arrayByAddingObjectsFromArray:v15];

    if ([v17 containsObject:v13])
    {
      firstObject2 = 0;
    }

    else
    {
      v20 = MEMORY[0x277CCA8D8];
      v28[0] = v13;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      v22 = [v20 preferredLocalizationsFromArray:v17 forPreferences:v21];
      firstObject2 = [v22 firstObject];

      if ([(__CFString *)firstObject2 isEqualToString:@"pt"])
      {

        firstObject2 = @"pt-BR";
      }

      else if (!firstObject2)
      {
        goto LABEL_16;
      }

      if ([v17 containsObject:firstObject2])
      {
        v23 = firstObject2;
        firstObject2 = v23;
LABEL_17:
        p_isa = &v23->isa;

        v13 = p_isa;
        goto LABEL_18;
      }
    }

LABEL_16:
    v23 = v14;
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [IPLanguageListManager systemDisplayLanguage];
  }

  v19 = 0;
LABEL_20:

  return v19;
}

+ (id)regionalVariantLanguagesForBaseLanguage:(id)language
{
  v18 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  renderableUILanguages = [MEMORY[0x277CBEAF8] renderableUILanguages];
  v6 = [renderableUILanguages countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(renderableUILanguages);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([languageCopy isEqualToString:v10] & 1) == 0)
        {
          v11 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v10];
          if ([languageCopy isEqualToString:v11])
          {
            [array addObject:v10];
          }
        }
      }

      v7 = [renderableUILanguages countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [array sortUsingComparator:&__block_literal_global_4];

  return array;
}

uint64_t __65__IPLanguageListManager_regionalVariantLanguagesForBaseLanguage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [IPLanguage languageWithIdentifier:a2];
  v6 = [v5 localizedStringForName];

  v7 = [IPLanguage languageWithIdentifier:v4];

  v8 = [v7 localizedStringForName];

  v9 = [v6 localizedStandardCompare:v8];
  return v9;
}

+ (id)regionalVariantLanguagesForSystemLanguages
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = regionalVariantLanguagesForSystemLanguages___regionalVariantLanguagesForSystemLanguages;
  if (!regionalVariantLanguagesForSystemLanguages___regionalVariantLanguagesForSystemLanguages)
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    baseSystemLanguages = [MEMORY[0x277CBEAF8] baseSystemLanguages];
    v6 = [baseSystemLanguages countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(baseSystemLanguages);
          }

          v10 = [self regionalVariantLanguagesForBaseLanguage:*(*(&v14 + 1) + 8 * v9)];
          [orderedSet addObjectsFromArray:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [baseSystemLanguages countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    array = [orderedSet array];
    v12 = regionalVariantLanguagesForSystemLanguages___regionalVariantLanguagesForSystemLanguages;
    regionalVariantLanguagesForSystemLanguages___regionalVariantLanguagesForSystemLanguages = array;

    v3 = regionalVariantLanguagesForSystemLanguages___regionalVariantLanguagesForSystemLanguages;
  }

  return v3;
}

uint64_t __49__IPLanguageListManager_sortByLocalizedLanguage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedStringForName];
  v6 = [v4 localizedStringForName];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

+ (id)effectiveSystemLanguagesWithUnsupportedVariant:(BOOL)variant forPreferredLanguages:(id)languages
{
  variantCopy = variant;
  v31 = *MEMORY[0x277D85DE8];
  languagesCopy = languages;
  v5 = 0x277CBE000uLL;
  systemLanguages = [MEMORY[0x277CBEAF8] systemLanguages];
  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = languagesCopy;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      v24 = v10;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        if ([systemLanguages containsObject:{v13, v24}])
        {
          [array addObject:v13];
        }

        else
        {
          v14 = [*(v5 + 2808) baseLanguageFromLanguage:v13];
          if (([systemLanguages containsObject:v14] & 1) != 0 || (objc_msgSend(*(v5 + 2808), "baseSystemLanguages"), v15 = v11, v16 = systemLanguages, v17 = array, v18 = v8, v19 = v5, v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "containsObject:", v14), v20, v5 = v19, v8 = v18, array = v17, systemLanguages = v16, v11 = v15, v10 = v24, v21))
          {
            if (variantCopy)
            {
              v22 = v13;
            }

            else
            {
              v22 = v14;
            }

            [array addObject:v22];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  if (![array count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      +[IPLanguageListManager effectiveSystemLanguagesWithUnsupportedVariant:forPreferredLanguages:];
    }

    [array addObject:@"en-001"];
  }

  return array;
}

+ (BOOL)canRemoveLanguages:(id)languages fromPreferredLanguages:(id)preferredLanguages
{
  languagesCopy = languages;
  v6 = [IPLanguageListManager effectiveSystemLanguagesWithUnsupportedVariant:1 forPreferredLanguages:preferredLanguages];
  v7 = [v6 mutableCopy];

  [v7 removeObjectsInArray:languagesCopy];
  LOBYTE(v6) = [v7 count] != 0;

  return v6;
}

- (void)systemDisplayLanguage
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136315138;
  v1 = "[IPLanguageListManager systemDisplayLanguage]";
  _os_log_fault_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s: systemDisplayLanguage is nil.", &v0, 0xCu);
}

+ (void)effectiveSystemLanguagesWithUnsupportedVariant:forPreferredLanguages:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = 136315394;
  v1 = "+[IPLanguageListManager effectiveSystemLanguagesWithUnsupportedVariant:forPreferredLanguages:]";
  v2 = 2112;
  v3 = @"en-001";
  _os_log_fault_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s: effectiveSystemLanguages is empty. Falling back to [%@].", &v0, 0x16u);
}

@end