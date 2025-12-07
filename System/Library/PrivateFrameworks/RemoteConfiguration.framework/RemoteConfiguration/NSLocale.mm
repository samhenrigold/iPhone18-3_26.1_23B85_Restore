@interface NSLocale
@end

@implementation NSLocale

void __50__NSLocale_RCAdditions__rc_preferredLanguageCodes__block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB40] orderedSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    v5 = *MEMORY[0x277CBE6C8];
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:*(*(&v11 + 1) + 8 * v6)];
        v8 = [v7 objectForKey:v5];

        if (v8)
        {
          [v0 addObject:v8];
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v9 = [v0 array];
  v10 = rc_preferredLanguageCodes_s_languageCodes;
  rc_preferredLanguageCodes_s_languageCodes = v9;
}

@end