@interface NSOrderedSet(GKCollectionUtils)
- (id)_gkDistinctValuesForKeyPath:()GKCollectionUtils;
- (id)_gkMapDictionaryWithKeyPath:()GKCollectionUtils valueKeyPath:;
- (id)_gkValuesForKeyPath:()GKCollectionUtils;
@end

@implementation NSOrderedSet(GKCollectionUtils)

- (id)_gkMapDictionaryWithKeyPath:()GKCollectionUtils valueKeyPath:
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(self, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 valueForKeyPath:{v6, v21}];
        if (v7)
        {
          v14 = [v12 valueForKeyPath:v7];
        }

        else
        {
          v14 = v12;
        }

        v15 = v14;
        if (v13)
        {
          null = [MEMORY[0x277CBEB68] null];
          v17 = null;
          if (v13 == null || v15 == 0)
          {
          }

          else
          {
            null2 = [MEMORY[0x277CBEB68] null];

            if (v15 != null2)
            {
              [v21 setObject:v15 forKey:v13];
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  return v21;
}

- (id)_gkValuesForKeyPath:()GKCollectionUtils
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) valueForKeyPath:{v4, v13}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_gkDistinctValuesForKeyPath:()GKCollectionUtils
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(self, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) valueForKeyPath:{v4, v13}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

@end