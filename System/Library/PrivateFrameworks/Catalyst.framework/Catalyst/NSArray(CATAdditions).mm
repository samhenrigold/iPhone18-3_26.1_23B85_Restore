@interface NSArray(CATAdditions)
+ (id)cat_arrayFromIndexSet:()CATAdditions;
- (id)cat_flatMapUsingBlock:()CATAdditions;
- (id)cat_map:()CATAdditions;
- (void)cat_forEach:()CATAdditions;
@end

@implementation NSArray(CATAdditions)

- (id)cat_map:()CATAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(self, "count")}];
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

- (void)cat_forEach:()CATAdditions
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

- (id)cat_flatMapUsingBlock:()CATAdditions
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v19 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = v4[2](v4, *(*(&v24 + 1) + 8 * i));
        v10 = v9;
        if (v9)
        {
          if (([v9 conformsToProtocol:&unk_2856186F8] & 1) == 0)
          {
            [v5 addObject:v10];
          }

          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [v5 addObject:*(*(&v20 + 1) + 8 * j)];
              }

              v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v13);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = [v5 copy];

  return v16;
}

+ (id)cat_arrayFromIndexSet:()CATAdditions
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__NSArray_CATAdditions__cat_arrayFromIndexSet___block_invoke;
  v9[3] = &unk_278DA7B20;
  v10 = v5;
  v6 = v5;
  [v4 enumerateIndexesUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

@end