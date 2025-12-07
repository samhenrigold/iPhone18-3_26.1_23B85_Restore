@interface NSMutableArray(HealthKit)
- (char)hk_shuffle;
- (id)hk_dequeue;
- (void)hk_addNonNilObject:()HealthKit;
- (void)hk_addObjectsFromArray:()HealthKit passingTest:;
- (void)hk_addUniqueObjectsFromArray:()HealthKit;
- (void)hk_removeObjectsPassingTest:()HealthKit;
@end

@implementation NSMutableArray(HealthKit)

- (id)hk_dequeue
{
  firstObject = [self firstObject];
  if (firstObject)
  {
    [self removeObjectAtIndex:0];
  }

  return firstObject;
}

- (void)hk_addObjectsFromArray:()HealthKit passingTest:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (v7[2](v7, v12))
        {
          [self addObject:v12];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)hk_addUniqueObjectsFromArray:()HealthKit
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([self containsObject:v9] & 1) == 0)
        {
          [self addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)hk_removeObjectsPassingTest:()HealthKit
{
  v8 = a3;
  v4 = [self count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = [self objectAtIndexedSubscript:v6];
      if (v8[2](v8, v7))
      {
        [self removeObjectAtIndex:v6];
        --v5;
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < v5);
  }
}

- (void)hk_addNonNilObject:()HealthKit
{
  if (a3)
  {
    return [result addObject:?];
  }

  return result;
}

- (char)hk_shuffle
{
  result = [self count];
  if ((result - 1) >= 1)
  {
    do
    {
      v3 = result - 1;
      [self exchangeObjectAtIndex:result - 1 withObjectAtIndex:arc4random_uniform(result)];
      result = v3;
    }

    while (v3 > 1);
  }

  return result;
}

@end