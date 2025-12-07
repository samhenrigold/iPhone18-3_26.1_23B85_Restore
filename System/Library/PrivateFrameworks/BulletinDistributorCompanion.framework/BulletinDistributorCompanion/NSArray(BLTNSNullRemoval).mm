@interface NSArray(BLTNSNullRemoval)
- (id)objectWithNSNulls:()BLTNSNullRemoval;
- (id)objectWithNoNSNulls:()BLTNSNullRemoval;
@end

@implementation NSArray(BLTNSNullRemoval)

- (id)objectWithNoNSNulls:()BLTNSNullRemoval
{
  if (a3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    *a3 = dictionary;
  }

  else
  {
    dictionary = 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __49__NSArray_BLTNSNullRemoval__objectWithNoNSNulls___block_invoke;
  v16 = &unk_278D330B8;
  v7 = array;
  v17 = v7;
  v8 = dictionary;
  v18 = v8;
  [self enumerateObjectsUsingBlock:&v13];
  v9 = [v8 count];
  if (a3 && !v9)
  {
    *a3 = 0;
  }

  v10 = v18;
  v11 = v7;

  return v7;
}

- (id)objectWithNSNulls:()BLTNSNullRemoval
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  selfCopy = self;
  if ([v4 count])
  {
    v6 = [selfCopy mutableCopy];

    allKeys = [v4 allKeys];
    array = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = allKeys;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(obj);
          }

          [array insertObject:*(*(&v31 + 1) + 8 * i) atIndex:{objc_msgSend(array, "indexOfObject:inSortedRange:options:usingComparator:", *(*(&v31 + 1) + 8 * i), 0, objc_msgSend(array, "count"), 1024, &__block_literal_global_18)}];
        }

        v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = array;
    v13 = [v25 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v25);
          }

          v17 = *(*(&v27 + 1) + 8 * j);
          v18 = [v4 objectForKeyedSubscript:v17];
          integerValue = [v17 integerValue];
          objectSentinelNull = [v18 objectSentinelNull];
          if (objectSentinelNull)
          {
            [v6 insertObject:objectSentinelNull atIndex:integerValue];
          }

          else
          {
            [v6 objectAtIndexedSubscript:integerValue];
            v22 = v21 = v4;
            v23 = [v22 objectWithNSNulls:v18];
            [v6 setObject:v23 atIndexedSubscript:integerValue];

            v4 = v21;
          }
        }

        v14 = [v25 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v6 = selfCopy;
  }

  return v6;
}

@end