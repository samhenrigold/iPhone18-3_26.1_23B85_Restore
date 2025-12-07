@interface NSMutableSet(FCAdditions)
- (void)fc_removeObjectsFromArray:()FCAdditions;
- (void)fc_safelyAddObject:()FCAdditions;
- (void)fc_safelyAddObjects:()FCAdditions;
- (void)fc_safelyIntersectSet:()FCAdditions;
- (void)fc_safelyMinusSet:()FCAdditions;
- (void)fc_safelyRemoveObject:()FCAdditions;
- (void)fc_safelyUnionSet:()FCAdditions;
@end

@implementation NSMutableSet(FCAdditions)

- (void)fc_safelyAddObject:()FCAdditions
{
  if (a3)
  {
    return [result addObject:?];
  }

  return result;
}

- (void)fc_safelyAddObjects:()FCAdditions
{
  if (a3)
  {
    return [result addObjectsFromArray:?];
  }

  return result;
}

- (void)fc_safelyUnionSet:()FCAdditions
{
  if (a3)
  {
    return [result unionSet:?];
  }

  return result;
}

- (void)fc_safelyIntersectSet:()FCAdditions
{
  if (a3)
  {
    return [result intersectSet:?];
  }

  return result;
}

- (void)fc_safelyMinusSet:()FCAdditions
{
  if (a3)
  {
    return [result minusSet:?];
  }

  return result;
}

- (void)fc_safelyRemoveObject:()FCAdditions
{
  if (a3)
  {
    return [result removeObject:?];
  }

  return result;
}

- (void)fc_removeObjectsFromArray:()FCAdditions
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [self removeObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end