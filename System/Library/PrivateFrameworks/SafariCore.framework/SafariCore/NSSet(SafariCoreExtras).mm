@interface NSSet(SafariCoreExtras)
- (BOOL)safari_containsObjectPassingTest:()SafariCoreExtras;
- (id)safari_anyObjectPassingTest:()SafariCoreExtras;
- (id)safari_arrayByMappingObjectsUsingBlock:()SafariCoreExtras;
- (id)safari_dictionaryByMappingObjectsToValuesUsingBlock:()SafariCoreExtras;
- (id)safari_mapAndFilterObjectsUsingBlock:()SafariCoreExtras;
- (id)safari_setByRemovingObject:()SafariCoreExtras;
- (id)safari_setBySubtractingSet:()SafariCoreExtras;
- (id)safari_smallestObject:()SafariCoreExtras;
- (id)safari_sortedArrayUsingFinderLikeSorting;
- (uint64_t)safari_allObjectsPassTest:()SafariCoreExtras;
@end

@implementation NSSet(SafariCoreExtras)

- (id)safari_arrayByMappingObjectsUsingBlock:()SafariCoreExtras
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([self count])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
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
            [v5 addObject:{v11, v13}];
          }
        }

        v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)safari_dictionaryByMappingObjectsToValuesUsingBlock:()SafariCoreExtras
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([self count])
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(self, "count")}];
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
          v12 = v4[2](v4, v11);
          [v5 setObject:v12 forKeyedSubscript:{v11, v14}];
        }

        v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  return v5;
}

- (id)safari_mapAndFilterObjectsUsingBlock:()SafariCoreExtras
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([self count])
  {
    v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(self, "count")}];
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
            [v5 addObject:{v11, v13}];
          }
        }

        v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  return v5;
}

- (id)safari_smallestObject:()SafariCoreExtras
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([self count] > 1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    selfCopy = self;
    v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      anyObject = 0;
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
          if (anyObject)
          {
            if (v4[2](v4, anyObject, *(*(&v14 + 1) + 8 * i)) >= 1)
            {
              v12 = v11;

              anyObject = v12;
            }
          }

          else
          {
            anyObject = v11;
          }
        }

        v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    else
    {
      anyObject = 0;
    }
  }

  else
  {
    anyObject = [self anyObject];
  }

  return anyObject;
}

- (id)safari_anyObjectPassingTest:()SafariCoreExtras
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

- (BOOL)safari_containsObjectPassingTest:()SafariCoreExtras
{
  v1 = [self safari_anyObjectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)safari_allObjectsPassTest:()SafariCoreExtras
{
  v4 = a3;
  allObjects = [self allObjects];
  v6 = [allObjects safari_allObjectsPassTest:v4];

  return v6;
}

- (id)safari_setByRemovingObject:()SafariCoreExtras
{
  v4 = a3;
  if ([self containsObject:v4])
  {
    v5 = [self mutableCopy];
    [v5 removeObject:v4];
    selfCopy = [v5 copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)safari_sortedArrayUsingFinderLikeSorting
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1 selector:sel_localizedStandardCompare_];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = [self sortedArrayUsingDescriptors:v3];

  return v4;
}

- (id)safari_setBySubtractingSet:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 minusSet:v4];

  v6 = [v5 copy];

  return v6;
}

@end