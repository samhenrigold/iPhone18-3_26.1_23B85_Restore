@interface NSArray(AFCollectionUtilities)
- (id)_af_lenient:()AFCollectionUtilities map:;
- (id)af_firstObjectPassingTest:()AFCollectionUtilities;
- (id)af_lenientMappedDictionary:()AFCollectionUtilities;
- (id)af_objectsPassingTest:()AFCollectionUtilities;
@end

@implementation NSArray(AFCollectionUtilities)

- (id)af_objectsPassingTest:()AFCollectionUtilities
{
  v2 = [self indexesOfObjectsPassingTest:?];
  v3 = [self objectsAtIndexes:v2];

  return v3;
}

- (id)af_firstObjectPassingTest:()AFCollectionUtilities
{
  v2 = [self indexOfObjectPassingTest:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [self objectAtIndexedSubscript:v2];
  }

  return v3;
}

- (id)af_lenientMappedDictionary:()AFCollectionUtilities
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
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
          [v5 addEntriesFromDictionary:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)_af_lenient:()AFCollectionUtilities map:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        v12 = v5[2](v5, *(*(&v15 + 1) + 8 * i));
        if (v12)
        {
          [v6 addObject:{v12, v15}];
        }
      }

      v9 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];

  return v13;
}

@end