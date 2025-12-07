@interface NSArray(StoreEnumeration)
- (void)mf_enumerateByStoreUsingBlock:()StoreEnumeration;
@end

@implementation NSArray(StoreEnumeration)

- (void)mf_enumerateByStoreUsingBlock:()StoreEnumeration
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  mf_dictionaryWithMessagesSortedByStore = [self mf_dictionaryWithMessagesSortedByStore];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [mf_dictionaryWithMessagesSortedByStore allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [mf_dictionaryWithMessagesSortedByStore objectForKeyedSubscript:v11];
        v4[2](v4, v11, v12);
      }

      v8 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

@end