@interface NSArray(_DASAdditions)
+ (id)array:()_DASAdditions withItemsIn:;
+ (id)arrayWithIntersectionOf:()_DASAdditions and:;
+ (id)arrayWithObjectsFrom:()_DASAdditions;
+ (id)arrayWithUnionOf:()_DASAdditions and:;
- (double)cooccurrencesWith:()_DASAdditions;
- (double)correlationWith:()_DASAdditions;
- (double)mean;
- (double)standardDeviation;
- (double)standardDeviationWithMean:()_DASAdditions;
- (uint64_t)anyItemsIntersectArray:()_DASAdditions;
@end

@implementation NSArray(_DASAdditions)

+ (id)arrayWithIntersectionOf:()_DASAdditions and:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v6 containsObject:{v14, v17}])
        {
          [array addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [array copy];
  objc_autoreleasePoolPop(v7);

  return v15;
}

+ (id)arrayWithUnionOf:()_DASAdditions and:
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        if (([array containsObject:v14] & 1) == 0)
        {
          [array addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        if (([array containsObject:{v20, v23}] & 1) == 0)
        {
          [array addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  v21 = [array copy];
  objc_autoreleasePoolPop(v7);

  return v21;
}

+ (id)array:()_DASAdditions withItemsIn:
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if ([v6 count])
    {
      v8 = v5;
      v9 = objc_autoreleasePoolPush();
      array = [MEMORY[0x1E695DF70] array];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            if ([v7 containsObject:{v16, v20}])
            {
              [array addObject:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }

      v17 = [array count];
      if (v17 != [v11 count])
      {
        v18 = [array copy];

        v11 = v18;
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)arrayWithObjectsFrom:()_DASAdditions
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [v10 count];
  v12 = [MEMORY[0x1E695DFA8] setWithObject:v10];
  v39 = &a10;
  v13 = a9;
  if (v13)
  {
    v14 = v13;
    while ([v14 conformsToProtocol:&unk_1F2EDE9E0])
    {
      v11 += [v14 count];
      [v12 addObject:v14];
      v15 = v39++;
      v16 = *v15;

      v14 = v16;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v18 = 0;
  }

  else
  {
LABEL_5:
    v17 = 2;
    if (v11 > 2)
    {
      v17 = v11;
    }

    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:1 << (log2((v17 - 1)) + 1)];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v12;
    v19 = [v14 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v30 = v10;
      v21 = *v36;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v14);
          }

          v23 = *(*(&v35 + 1) + 8 * i);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v32;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v32 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                [v18 addObject:*(*(&v31 + 1) + 8 * j)];
              }

              v26 = [v24 countByEnumeratingWithState:&v31 objects:v40 count:16];
            }

            while (v26);
          }
        }

        v20 = [v14 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v20);
      v10 = v30;
    }
  }

  return v18;
}

- (uint64_t)anyItemsIntersectArray:()_DASAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([self containsObject:{*(*(&v13 + 1) + 8 * i), v13}])
          {
            v11 = 1;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)mean
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = 0.0;
  if ([self count])
  {
    firstObject = [self firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      selfCopy = self;
      v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          v9 = 0;
          do
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(selfCopy);
            }

            [*(*(&v12 + 1) + 8 * v9) doubleValue];
            v2 = v2 + v10;
            ++v9;
          }

          while (v7 != v9);
          v7 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }

      return v2 / [selfCopy count];
    }
  }

  return v2;
}

- (double)standardDeviationWithMean:()_DASAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        [*(*(&v11 + 1) + 8 * i) doubleValue];
        v7 = v7 + (v9 - a2) * (v9 - a2);
      }

      v5 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return sqrt(v7 / ([selfCopy count] - 1));
}

- (double)standardDeviation
{
  if ([self count] < 2)
  {
    return 0.0;
  }

  firstObject = [self firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0.0;
  }

  [self mean];

  [self standardDeviationWithMean:?];
  return result;
}

- (double)cooccurrencesWith:()_DASAdditions
{
  v4 = a3;
  firstObject = [self firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_11:
    v14 = 1.79769313e308;
    goto LABEL_12;
  }

  firstObject2 = [v4 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = [v4 count];
  if (v8 != [self count])
  {
    goto LABEL_11;
  }

  if ([self count])
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v11 = [self objectAtIndexedSubscript:v9];
      v12 = [v4 objectAtIndexedSubscript:v9];
      v13 = [v11 isEqual:v12];

      if (v13)
      {
        v10 = v10 + 1.0;
      }

      ++v9;
    }

    while (v9 < [self count]);
  }

  else
  {
    v10 = 0.0;
  }

  v14 = v10 / [self count];
LABEL_12:

  return v14;
}

- (double)correlationWith:()_DASAdditions
{
  v4 = a3;
  firstObject = [self firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_11:
    v14 = 1.79769313e308;
    goto LABEL_12;
  }

  firstObject2 = [v4 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = [v4 count];
  if (v8 != [self count])
  {
    goto LABEL_11;
  }

  v9 = [self count];
  if (v9 < 2)
  {
    goto LABEL_11;
  }

  v10 = v9;
  [self mean];
  v12 = v11;
  [self standardDeviationWithMean:?];
  v14 = 0.0;
  if (v13 != 0.0)
  {
    v15 = v13;
    [v4 mean];
    v17 = v16;
    [v4 standardDeviationWithMean:?];
    if (v18 != 0.0)
    {
      v19 = v18;
      for (i = 0; i != v10; ++i)
      {
        v21 = [self objectAtIndexedSubscript:i];
        [v21 doubleValue];
        v23 = v22 - v12;
        v24 = [v4 objectAtIndexedSubscript:i];
        [v24 doubleValue];
        v14 = v14 + v23 * (v25 - v17);
      }

      v14 = 1.0 / (v10 - 1) * (v14 / (v15 * v19));
    }
  }

LABEL_12:

  return v14;
}

@end