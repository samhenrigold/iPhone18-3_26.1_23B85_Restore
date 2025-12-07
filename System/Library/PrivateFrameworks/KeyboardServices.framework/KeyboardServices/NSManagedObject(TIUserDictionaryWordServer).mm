@interface NSManagedObject(TIUserDictionaryWordServer)
- (void)_copyAttributeValuesFromObject:()TIUserDictionaryWordServer;
@end

@implementation NSManagedObject(TIUserDictionaryWordServer)

- (void)_copyAttributeValuesFromObject:()TIUserDictionaryWordServer
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  entity = [v4 entity];
  entity2 = [self entity];
  v7 = [entity isEqual:entity2];

  if (v7)
  {
    entity3 = [self entity];
    attributesByName = [entity3 attributesByName];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = attributesByName;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          [v4 willAccessValueForKey:{v15, v17}];
          v16 = [v4 valueForKey:v15];
          [v4 didAccessValueForKey:v15];
          [self willChangeValueForKey:v15];
          [self setValue:v16 forKey:v15];
          [self didChangeValueForKey:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

@end