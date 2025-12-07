@interface NSLocale(Setup)
+ (id)_subdivisionCodeFromSubdivisionTag:()Setup restrictedToRegionCode:;
- (BOOL)_requiresMultilingualSetupWithKeyboardIDs:()Setup;
- (id)_languagesForMultilingualSetupWithKeyboardsIDs:()Setup;
- (id)defaultLanguagesForMultilingualSetup;
@end

@implementation NSLocale(Setup)

- (BOOL)_requiresMultilingualSetupWithKeyboardIDs:()Setup
{
  v2 = [self _languagesForMultilingualSetupWithKeyboardsIDs:?];
  if ([v2 count] < 2)
  {
    v8 = 0;
  }

  else
  {
    countryCode = [self countryCode];
    if ([countryCode length])
    {
      v4 = MEMORY[0x277CBEAF8];
      v5 = [@"zxx_" stringByAppendingString:countryCode];
      v6 = [v4 localeWithLocaleIdentifier:v5];
      v7 = [v6 _languagesForMultilingualSetupWithKeyboardsIDs:0];
    }

    else
    {
      v7 = 0;
    }

    v9 = MEMORY[0x277CBEAF8];
    languageIdentifier = [self languageIdentifier];
    v11 = [v9 baseLanguageFromLanguage:languageIdentifier];

    if ([v7 containsObject:v11])
    {
      baseSystemLanguages = [MEMORY[0x277CBEAF8] baseSystemLanguages];
      v13 = [v2 arrayByExcludingObjectsInArray:baseSystemLanguages];

      v8 = [v13 count] != 0;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)_languagesForMultilingualSetupWithKeyboardsIDs:()Setup
{
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  languageIdentifier = [self languageIdentifier];

  if (languageIdentifier)
  {
    v4 = MEMORY[0x277CBEAF8];
    languageIdentifier2 = [self languageIdentifier];
    v6 = [v4 canonicalLanguageIdentifierFromString:languageIdentifier2];
    v7 = [v4 baseLanguageFromLanguage:v6];
    [orderedSet addObject:v7];
  }

  v8 = MEMORY[0x277CBEAF8];
  localeIdentifier = [self localeIdentifier];
  v10 = [v8 componentsFromLocaleIdentifier:localeIdentifier];
  v11 = [v10 objectForKey:@"sd"];

  if ([v11 length] && (v12 = MEMORY[0x277CBEAF8], objc_msgSend(self, "countryCode"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_opt_class(), objc_msgSend(self, "countryCode"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "_subdivisionCodeFromSubdivisionTag:restrictedToRegionCode:", v11, v15), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "languagesForRegion:subdivision:withThreshold:filter:", v13, v16, 1, 2), v17 = objc_claimAutoreleasedReturnValue(), v16, v15, v13, v17) || (v18 = MEMORY[0x277CBEAF8], objc_msgSend(self, "countryCode"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "languagesForRegion:subdivision:withThreshold:filter:", v19, 0, 1, 2), v17 = objc_claimAutoreleasedReturnValue(), v19, v17))
  {
    [orderedSet addObjectsFromArray:v17];
  }

  array = [orderedSet array];

  return array;
}

- (id)defaultLanguagesForMultilingualSetup
{
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  languageIdentifier = [self languageIdentifier];

  if (languageIdentifier)
  {
    v4 = MEMORY[0x277CBEAF8];
    languageIdentifier2 = [self languageIdentifier];
    v6 = [v4 canonicalLanguageIdentifierFromString:languageIdentifier2];
    v7 = [v4 baseLanguageFromLanguage:v6];
    [orderedSet addObject:v7];
  }

  v8 = MEMORY[0x277CBEAF8];
  localeIdentifier = [self localeIdentifier];
  v10 = [v8 componentsFromLocaleIdentifier:localeIdentifier];
  v11 = [v10 objectForKey:@"sd"];

  if ([v11 length] && (v12 = MEMORY[0x277CBEAF8], objc_msgSend(self, "countryCode"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_opt_class(), objc_msgSend(self, "countryCode"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "_subdivisionCodeFromSubdivisionTag:restrictedToRegionCode:", v11, v15), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "languagesForRegion:subdivision:withThreshold:filter:", v13, v16, 2, 2), v17 = objc_claimAutoreleasedReturnValue(), v16, v15, v13, v17) || (v18 = MEMORY[0x277CBEAF8], objc_msgSend(self, "countryCode"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "languagesForRegion:subdivision:withThreshold:filter:", v19, 0, 2, 2), v17 = objc_claimAutoreleasedReturnValue(), v19, v17))
  {
    [orderedSet addObjectsFromArray:v17];
  }

  array = [orderedSet array];

  return array;
}

+ (id)_subdivisionCodeFromSubdivisionTag:()Setup restrictedToRegionCode:
{
  v5 = a3;
  uppercaseString = [a4 uppercaseString];
  v7 = [v5 substringToIndex:2];
  uppercaseString2 = [v7 uppercaseString];

  v9 = [v5 substringFromIndex:2];

  uppercaseString3 = [v9 uppercaseString];

  if ([uppercaseString isEqualToString:uppercaseString2])
  {
    v11 = uppercaseString3;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end