@interface NSArray(NNMKAdditions)
- (id)nnmk_filter:()NNMKAdditions;
- (id)nnmk_map:()NNMKAdditions;
@end

@implementation NSArray(NNMKAdditions)

- (id)nnmk_map:()NNMKAdditions
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
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

        v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        if (v11)
        {
          [array addObject:{v11, v13}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)nnmk_filter:()NNMKAdditions
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
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

        v11 = *(*(&v13 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [array addObject:{v11, v13}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

@end