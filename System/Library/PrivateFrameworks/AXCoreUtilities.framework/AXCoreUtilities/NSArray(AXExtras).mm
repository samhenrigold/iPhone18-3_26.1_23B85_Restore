@interface NSArray(AXExtras)
- (BOOL)ax_containsObjectUsingBlock:()AXExtras;
- (id)ax_arrayByRemovingDuplicates;
- (id)ax_filteredArrayUsingBlock:()AXExtras;
- (id)ax_firstObjectUsingBlock:()AXExtras;
- (id)ax_flatMappedArrayUsingBlock:()AXExtras;
- (id)ax_mappedArrayUsingBlock:()AXExtras;
@end

@implementation NSArray(AXExtras)

- (id)ax_firstObjectUsingBlock:()AXExtras
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)ax_filteredArrayUsingBlock:()AXExtras
{
  v2 = [self indexesOfObjectsPassingTest:?];
  if (v2)
  {
    v3 = [self objectsAtIndexes:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)ax_containsObjectUsingBlock:()AXExtras
{
  v1 = [self ax_firstObjectUsingBlock:?];
  v2 = v1 != 0;

  return v2;
}

- (id)ax_mappedArrayUsingBlock:()AXExtras
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self count];
  if (v5)
  {
    selfCopy2 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    selfCopy = self;
    v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(selfCopy);
          }

          v12 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
          [selfCopy2 addObject:{v12, v14}];
        }

        v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)ax_flatMappedArrayUsingBlock:()AXExtras
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self count];
  if (v5)
  {
    selfCopy2 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    selfCopy = self;
    v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(selfCopy);
          }

          v12 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
          if (v12)
          {
            [selfCopy2 addObject:{v12, v14}];
          }
        }

        v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)ax_arrayByRemovingDuplicates
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [self count];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:v2];
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:v2];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v4 containsObject:{v10, v13}] & 1) == 0)
        {
          [v4 addObject:v10];
          [v3 addObject:v10];
        }
      }

      v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v3 copy];

  return v11;
}

@end