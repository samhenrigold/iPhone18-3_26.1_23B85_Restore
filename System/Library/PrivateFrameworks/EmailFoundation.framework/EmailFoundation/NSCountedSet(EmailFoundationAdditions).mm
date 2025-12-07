@interface NSCountedSet(EmailFoundationAdditions)
- (id)ef_leastCommonObjects;
- (id)ef_mostCommonObjects;
@end

@implementation NSCountedSet(EmailFoundationAdditions)

- (id)ef_mostCommonObjects
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [selfCopy countForObject:{v8, v12}];
        v10 = v9;
        if (v9 <= v5)
        {
          if (v9 == v5)
          {
            [v2 addObject:v8];
          }
        }

        else
        {
          [v2 removeAllObjects];
          [v2 addObject:v8];
          v5 = v10;
        }
      }

      v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return v2;
}

- (id)ef_leastCommonObjects
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    v6 = -1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [selfCopy countForObject:{v8, v12}];
        v10 = v9;
        if (v9 >= v6)
        {
          if (v9 == v6)
          {
            [v2 addObject:v8];
          }
        }

        else
        {
          [v2 removeAllObjects];
          [v2 addObject:v8];
          v6 = v10;
        }
      }

      v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return v2;
}

@end