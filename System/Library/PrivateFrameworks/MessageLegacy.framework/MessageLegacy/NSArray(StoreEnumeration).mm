@interface NSArray(StoreEnumeration)
- (void)mf_enumerateByStoreUsingBlock:()StoreEnumeration;
@end

@implementation NSArray(StoreEnumeration)

- (void)mf_enumerateByStoreUsingBlock:()StoreEnumeration
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [(NSArray(StoreEnumeration) *)a2 mf_enumerateByStoreUsingBlock:self];
  }

  mf_dictionaryWithMessagesSortedByStore = [self mf_dictionaryWithMessagesSortedByStore];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [mf_dictionaryWithMessagesSortedByStore allKeys];
  result = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        (*(a3 + 16))(a3, *(*(&v11 + 1) + 8 * v10), [mf_dictionaryWithMessagesSortedByStore objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v10)]);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

@end