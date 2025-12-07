@interface IP_HK_MO_yue_Hant_migrator
- (id)performMigrationForPreferences:(id)preferences;
@end

@implementation IP_HK_MO_yue_Hant_migrator

- (id)performMigrationForPreferences:(id)preferences
{
  v34 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  if ([(ISMigrator *)self previousSchemaVersion]>= 0x3E8)
  {
    v17 = preferencesCopy;
  }

  else
  {
    v5 = [preferencesCopy objectForKeyedSubscript:@"AppleLocale"];
    v6 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v5];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBE690]];
    if ([v7 isEqualToString:@"HK"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"MO"))
    {
      v23 = v7;
      v24 = v6;
      v25 = v5;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = preferencesCopy;
      v8 = [preferencesCopy objectForKeyedSubscript:@"AppleLanguages"];
      v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v30;
        v12 = *MEMORY[0x277CBE6C8];
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v14 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:*(*(&v29 + 1) + 8 * i)];
            v15 = [v14 objectForKeyedSubscript:v12];
            v16 = [v15 isEqualToString:@"yue"];

            if (v16)
            {
              preferencesCopy = v26;
              v17 = v26;

              goto LABEL_15;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      preferencesCopy = v26;
      v17 = [v26 mutableCopy];
      v18 = [v26 objectForKeyedSubscript:v22];
      v19 = [v18 mutableCopy];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __61__IP_HK_MO_yue_Hant_migrator_performMigrationForPreferences___block_invoke;
      v27[3] = &unk_2787A9060;
      v28 = v19;
      v20 = v19;
      [v20 enumerateObjectsUsingBlock:v27];
      [v17 setObject:v20 forKeyedSubscript:v22];

LABEL_15:
      v6 = v24;
      v5 = v25;
      v7 = v23;
    }

    else
    {
      v17 = preferencesCopy;
    }
  }

  return v17;
}

@end