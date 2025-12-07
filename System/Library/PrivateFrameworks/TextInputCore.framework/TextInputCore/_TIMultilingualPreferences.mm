@interface _TIMultilingualPreferences
+ (id)inputModesForIdentifiers:(id)identifiers;
- (NSArray)preferredAdditionalInputModes;
- (NSArray)userEnabledInputModes;
- (NSArray)userPreferredLanguages;
- (TIInputMode)preferredSecondaryInputMode;
@end

@implementation _TIMultilingualPreferences

- (NSArray)userPreferredLanguages
{
  v2 = MEMORY[0x277CBEAF8];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v4 = [v2 languagesByAddingRelatedLanguagesToLanguages:preferredLanguages];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  return v6;
}

- (NSArray)userEnabledInputModes
{
  mEMORY[0x277D6F380] = [MEMORY[0x277D6F380] sharedInputModeController];
  enabledInputModeIdentifiers = [mEMORY[0x277D6F380] enabledInputModeIdentifiers];

  if (enabledInputModeIdentifiers)
  {
    v4 = enabledInputModeIdentifiers;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = [_TIMultilingualPreferences inputModesForIdentifiers:v4];

  return v5;
}

- (NSArray)preferredAdditionalInputModes
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = [mEMORY[0x277D6F470] valueForPreferenceKey:*MEMORY[0x277D6F798]];
  stringValue = [v4 stringValue];

  v6 = [stringValue componentsSeparatedByString:{@", "}];
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
        if (v11 && (objc_msgSend_isEqualToString_(*(*(&v14 + 1) + 8 * i)) & 1) == 0)
        {
          v12 = [TIInputMode inputModeWithIdentifier:v11];
          [v2 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v2;
}

- (TIInputMode)preferredSecondaryInputMode
{
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v3 = [mEMORY[0x277D6F470] valueForPreferenceKey:*MEMORY[0x277D6F930]];
  stringValue = [v3 stringValue];

  if (stringValue && (objc_msgSend_isEqualToString_(stringValue) & 1) == 0)
  {
    v5 = [TIInputMode inputModeWithIdentifier:stringValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)inputModesForIdentifiers:(id)identifiers
{
  v17 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [TIInputMode inputModeWithIdentifier:*(*(&v12 + 1) + 8 * i), v12];
        if (v10)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

@end