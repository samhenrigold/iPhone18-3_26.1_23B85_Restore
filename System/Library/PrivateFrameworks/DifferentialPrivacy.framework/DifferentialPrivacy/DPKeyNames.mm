@interface DPKeyNames
@end

@implementation DPKeyNames

void __39___DPKeyNames_propertiesFromNamesFile___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"override.keynames" ofType:@"plist"];

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = [MEMORY[0x277CBEBF8] mutableCopy];
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39___DPKeyNames_propertiesFromNamesFile___block_invoke_6;
  v9[3] = &unk_27858AB90;
  v9[4] = &v10;
  v5 = [_DPPListHelper loadPropertyListFromPath:v4 overridePath:v3 usingBlock:v9];
  v6 = allKeys;
  allKeys = v5;

  v7 = [v11[5] copy];
  v8 = allKeyNamePatterns;
  allKeyNamePatterns = v7;

  _Block_object_dispose(&v10, 8);
}

id __39___DPKeyNames_propertiesFromNamesFile___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"PropertiesName"];
  if (v6)
  {
    v7 = [_DPKeyProperties keyPropertiesForName:v6];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __44___DPKeyNames_keyNamesGroupedByPropertyName__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = +[_DPStrings keyNamesPath];
  v3 = [v1 propertiesFromNamesFile:v2];

  v4 = [MEMORY[0x277CBEC10] mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:v10];
        v12 = [v11 propertiesName];

        v13 = [v4 objectForKeyedSubscript:v12];
        v14 = [v13 mutableCopy];

        if (!v14)
        {
          v14 = [MEMORY[0x277CBEBF8] mutableCopy];
        }

        [v14 addObject:v10];
        v15 = [v14 copy];
        [v4 setObject:v15 forKeyedSubscript:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = [v4 copy];
  v17 = allKeysGroupedByPropertyName;
  allKeysGroupedByPropertyName = v16;
}

@end