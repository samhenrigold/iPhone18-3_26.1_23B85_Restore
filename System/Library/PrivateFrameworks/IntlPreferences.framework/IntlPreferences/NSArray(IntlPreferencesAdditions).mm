@interface NSArray(IntlPreferencesAdditions)
- (id)filteredLanguagesBySearchString:()IntlPreferencesAdditions;
@end

@implementation NSArray(IntlPreferencesAdditions)

- (id)filteredLanguagesBySearchString:()IntlPreferencesAdditions
{
  v42 = *MEMORY[0x277D85DE8];
  v19 = a3;
  if ([v19 length])
  {
    array = [MEMORY[0x277CBEB18] array];
    v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF beginswith[cld] %@", v19];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = self;
    v5 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v5)
    {
      v21 = *v38;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v37 + 1) + 8 * i);
          name = [v7 name];
          localizedStringForName = [v7 localizedStringForName];
          if ([v4 evaluateWithObject:name] || objc_msgSend(v4, "evaluateWithObject:", localizedStringForName))
          {
            [array addObject:v7];
          }

          else
          {
            v33 = 0;
            v34 = &v33;
            v35 = 0x2020000000;
            v36 = 0;
            v10 = [name length];
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __69__NSArray_IntlPreferencesAdditions__filteredLanguagesBySearchString___block_invoke;
            v28[3] = &unk_2787A93D0;
            v11 = v4;
            v29 = v11;
            v12 = array;
            v30 = v12;
            v31 = v7;
            v32 = &v33;
            [name enumerateSubstringsInRange:0 options:v10 usingBlock:{3, v28}];
            if ((v34[3] & 1) == 0)
            {
              v13 = [localizedStringForName length];
              v23[0] = MEMORY[0x277D85DD0];
              v23[1] = 3221225472;
              v23[2] = __69__NSArray_IntlPreferencesAdditions__filteredLanguagesBySearchString___block_invoke_2;
              v23[3] = &unk_2787A93D0;
              v24 = v11;
              v14 = v12;
              v25 = v14;
              v26 = v7;
              v27 = &v33;
              [localizedStringForName enumerateSubstringsInRange:0 options:v13 usingBlock:{3, v23}];
              if ((v34[3] & 1) == 0)
              {
                identifier = [v7 identifier];
                lowercaseString = [v19 lowercaseString];
                v17 = [identifier hasPrefix:lowercaseString];

                if (v17)
                {
                  [v14 addObject:v7];
                }
              }
            }

            _Block_object_dispose(&v33, 8);
          }
        }

        v5 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v5);
    }
  }

  else
  {
    array = [self copy];
  }

  return array;
}

@end