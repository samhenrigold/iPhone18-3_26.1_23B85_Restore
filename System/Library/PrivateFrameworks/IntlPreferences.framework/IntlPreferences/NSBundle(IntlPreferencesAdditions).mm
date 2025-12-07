@interface NSBundle(IntlPreferencesAdditions)
- (id)normalizedLocalizations;
@end

@implementation NSBundle(IntlPreferencesAdditions)

- (id)normalizedLocalizations
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  localizations = [self localizations];
  v4 = [localizations countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(localizations);
        }

        v8 = [IntlUtility normalizedLanguageIDFromString:*(*(&v12 + 1) + 8 * i)];
        [v8 UTF8String];
        ISO3Language = uloc_getISO3Language();
        if (ISO3Language && *ISO3Language)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [localizations countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [v2 removeObject:@"base"];
  allObjects = [v2 allObjects];

  return allObjects;
}

@end