@interface NSSet(HealthKit)
+ (id)hk_setByUnioningSet:()HealthKit otherSet:;
- (id)hk_anyObjectPassingTest:()HealthKit;
- (id)hk_filter:()HealthKit;
- (id)hk_firstSortedObjectWithComparison:()HealthKit;
- (id)hk_intersection:()HealthKit;
- (id)hk_map:()HealthKit;
- (id)hk_mapToDictionary:()HealthKit;
- (id)hk_minus:()HealthKit;
- (id)hk_symmetricDifference:()HealthKit;
- (uint64_t)hk_allObjectsPassTestWithError:()HealthKit test:;
- (uint64_t)hk_containsObjectPassingTest:()HealthKit;
@end

@implementation NSSet(HealthKit)

+ (id)hk_setByUnioningSet:()HealthKit otherSet:
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8 = v7;
  if (v5)
  {
    [v7 unionSet:v5];
  }

  if (v6)
  {
    [v8 unionSet:v6];
  }

  v9 = [v8 copy];

  return v9;
}

- (id)hk_map:()HealthKit
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    selfCopy = self;
    v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v19 count:16];
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

          v12 = v5[2](v5, *(*(&v14 + 1) + 8 * i));
          if (v12)
          {
            [v6 addObject:{v12, v14}];
          }
        }

        v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [(NSSet(HealthKit) *)a2 hk_map:self, &v18];
    v6 = v18;
  }

  return v6;
}

- (id)hk_filter:()HealthKit
{
  v4 = a3;
  v5 = MEMORY[0x1E696AE18];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__NSSet_HealthKit__hk_filter___block_invoke;
  v10[3] = &unk_1E737E9D0;
  v11 = v4;
  v6 = v4;
  v7 = [v5 predicateWithBlock:v10];
  v8 = [self filteredSetUsingPredicate:v7];

  return v8;
}

- (id)hk_minus:()HealthKit
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 minusSet:v4];

  return v5;
}

- (id)hk_intersection:()HealthKit
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 intersectSet:v4];

  return v5;
}

- (id)hk_symmetricDifference:()HealthKit
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 unionSet:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__NSSet_HealthKit__hk_symmetricDifference___block_invoke;
  v9[3] = &unk_1E7381FB8;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 hk_filter:v9];

  return v7;
}

- (id)hk_firstSortedObjectWithComparison:()HealthKit
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v8)
        {
          if (v4[2](v4, v8, *(*(&v14 + 1) + 8 * i)) == 1)
          {
            v12 = v11;

            v8 = v12;
          }
        }

        else
        {
          v8 = v11;
        }
      }

      v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hk_anyObjectPassingTest:()HealthKit
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

- (id)hk_mapToDictionary:()HealthKit
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = self;
    v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __39__NSSet_HealthKit__hk_mapToDictionary___block_invoke;
          v14[3] = &unk_1E7379968;
          v15 = v6;
          v5[2](v5, v11, v14);
        }

        v8 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [(NSSet(HealthKit) *)a2 hk_mapToDictionary:self];
    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

- (uint64_t)hk_containsObjectPassingTest:()HealthKit
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (v4[2](v4, *(*(&v10 + 1) + 8 * i)))
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (uint64_t)hk_allObjectsPassTestWithError:()HealthKit test:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    while (2)
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(selfCopy);
        }

        v14 = *(*(&v21 + 1) + 8 * v12);
        v20 = v13;
        v15 = v6[2](v6, v14, &v20);
        v10 = v20;

        if ((v15 & 1) == 0)
        {
          v16 = v10;
          v17 = v16;
          if (v16)
          {
            if (a3)
            {
              v18 = v16;
              *a3 = v17;
            }

            else
            {
              _HKLogDroppedError(v16);
            }
          }

          goto LABEL_16;
        }

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

LABEL_16:
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)hk_map:()HealthKit .cold.1(uint64_t a1, void *a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"NSSet+HealthKit.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"filter"}];

  result = [a2 copy];
  *a3 = result;
  return result;
}

- (void)hk_mapToDictionary:()HealthKit .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSSet+HealthKit.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"map"}];
}

@end