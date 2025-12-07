@interface NSArray(RTExtensions)
- (id)flatten;
- (id)shuffle;
@end

@implementation NSArray(RTExtensions)

- (id)flatten
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [self copy];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = objc_opt_class();
        if ([v10 isSubclassOfClass:{objc_opt_class(), v16}])
        {
          flatten = [v9 flatten];
          [v3 addObjectsFromArray:flatten];
LABEL_13:

          goto LABEL_14;
        }

        if (objc_opt_respondsToSelector())
        {
          allObjects = [v9 allObjects];
LABEL_12:
          flatten = allObjects;
          flatten2 = [allObjects flatten];
          [v3 addObjectsFromArray:flatten2];

          goto LABEL_13;
        }

        if (objc_opt_respondsToSelector())
        {
          allObjects = [v9 allValues];
          goto LABEL_12;
        }

        [v3 addObject:v9];
LABEL_14:
        ++v8;
      }

      while (v6 != v8);
      v14 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v6 = v14;
    }

    while (v14);
  }

  return v3;
}

- (id)shuffle
{
  v1 = [MEMORY[0x277CBEB18] arrayWithArray:self];
  v2 = [v1 count];
  if (v2 >= 2)
  {
    do
    {
      v3 = v2 - 1;
      [v1 exchangeObjectAtIndex:v2 - 1 withObjectAtIndex:arc4random_uniform(v2)];
      v2 = v3;
    }

    while (v3 > 1);
  }

  return v1;
}

@end