@interface IP_unsupportedVariantsAddedByKeyboards_migrator
- (id)migrateForPreferences:(id)preferences keyboards:(id)keyboards;
- (id)performMigrationForPreferences:(id)preferences;
@end

@implementation IP_unsupportedVariantsAddedByKeyboards_migrator

- (id)migrateForPreferences:(id)preferences keyboards:(id)keyboards
{
  v51 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  keyboardsCopy = keyboards;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = keyboardsCopy;
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = IPUIKeyboardInputModeGetLanguageWithRegion(*(*(&v45 + 1) + 8 * i));
        v14 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:v13];
        [orderedSet addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v10);
  }

  v38 = orderedSet;
  v35 = v8;

  v34 = [preferencesCopy mutableCopy];
  v15 = [preferencesCopy objectForKeyedSubscript:?];
  v37 = [MEMORY[0x277CBEB40] orderedSetWithArray:v15];
  v16 = MEMORY[0x277CBEAF8];
  v36 = preferencesCopy;
  v17 = [preferencesCopy objectForKeyedSubscript:@"AppleLocale"];
  v18 = [v16 componentsFromLocaleIdentifier:v17];
  v19 = *MEMORY[0x277CBE690];
  v20 = [v18 objectForKeyedSubscript:*MEMORY[0x277CBE690]];

  v21 = [IPLanguageListManager effectiveSystemLanguagesWithUnsupportedVariant:1 forPreferredLanguages:v15];
  firstObject = [v21 firstObject];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v15;
  v22 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v42;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v41 + 1) + 8 * j);
        v27 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v26];
        v28 = [v27 objectForKeyedSubscript:v19];

        if (([v28 isEqualToString:v20] & 1) == 0 && (objc_msgSend(v26, "isEqualToString:", firstObject) & 1) == 0)
        {
          systemLanguages = [MEMORY[0x277CBEAF8] systemLanguages];
          v30 = [systemLanguages containsObject:v26];

          if ((v30 & 1) == 0)
          {
            if ([v38 containsObject:v26])
            {
              v31 = [MEMORY[0x277CBEAF8] languageFromLanguage:v26 byReplacingRegion:v20];
              if ([v37 containsObject:v31])
              {
                [v37 removeObject:v26];
              }

              else
              {
                [v37 replaceObjectAtIndex:objc_msgSend(v37 withObject:{"indexOfObject:", v26), v31}];
              }
            }
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v23);
  }

  array = [v37 array];
  [v34 setObject:array forKeyedSubscript:@"AppleLanguages"];

  return v34;
}

- (id)performMigrationForPreferences:(id)preferences
{
  preferencesCopy = preferences;
  previousSchemaVersion = [(ISMigrator *)self previousSchemaVersion];
  if (previousSchemaVersion >= 0x7D0)
  {
    v9 = preferencesCopy;
  }

  else
  {
    iPUIKeyboardInputModeController = [(objc_class *)IPUIKeyboardInputModeController(previousSchemaVersion sharedInputModeController];
    enabledInputModeIdentifiers = [iPUIKeyboardInputModeController enabledInputModeIdentifiers];

    v9 = [(IP_unsupportedVariantsAddedByKeyboards_migrator *)self migrateForPreferences:preferencesCopy keyboards:enabledInputModeIdentifiers];
  }

  return v9;
}

@end