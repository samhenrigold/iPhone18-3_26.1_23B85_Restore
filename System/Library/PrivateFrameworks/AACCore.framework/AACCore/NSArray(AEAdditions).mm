@interface NSArray(AEAdditions)
- (id)ae_adding:()AEAdditions;
- (id)ae_addingItems:()AEAdditions;
- (id)ae_filter:()AEAdditions;
- (id)ae_firstMatching:()AEAdditions;
- (id)ae_map:()AEAdditions;
- (id)ae_poppingFirstItem:()AEAdditions;
- (id)ae_split:()AEAdditions includeBlock:;
- (void)ae_forEach:()AEAdditions;
@end

@implementation NSArray(AEAdditions)

- (id)ae_map:()AEAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)ae_filter:()AEAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)ae_adding:()AEAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 addObject:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)ae_poppingFirstItem:()AEAdditions
{
  if ([self count])
  {
    v5 = [self objectAtIndexedSubscript:0];
    v6 = [self mutableCopy];
    [v6 removeObjectAtIndex:0];
    v7 = v5;
    *a3 = v5;
    selfCopy = [v6 copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)ae_addingItems:()AEAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 addObjectsFromArray:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)ae_split:()AEAdditions includeBlock:
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  v10 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(selfCopy);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (v6[2](v6, v14))
        {
          v15 = v8;
        }

        else
        {
          v15 = v7;
        }

        [v15 addObject:{v14, v18}];
      }

      v11 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  *a3 = [v8 copy];
  v16 = [v7 copy];

  return v16;
}

- (void)ae_forEach:()AEAdditions
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)ae_firstMatching:()AEAdditions
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__NSArray_AEAdditions__ae_firstMatching___block_invoke;
  v9[3] = &unk_278BB6B58;
  v5 = v4;
  v10 = v5;
  v6 = [self indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [self objectAtIndexedSubscript:v6];
  }

  return v7;
}

@end