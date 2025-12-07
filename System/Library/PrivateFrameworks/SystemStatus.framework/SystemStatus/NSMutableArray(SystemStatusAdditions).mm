@interface NSMutableArray(SystemStatusAdditions)
- (void)st_removeFirstOccurrenceOfObject:()SystemStatusAdditions;
- (void)st_subtractArray:()SystemStatusAdditions;
@end

@implementation NSMutableArray(SystemStatusAdditions)

- (void)st_removeFirstOccurrenceOfObject:()SystemStatusAdditions
{
  result = [self indexOfObject:?];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {

    return [self removeObjectAtIndex:result];
  }

  return result;
}

- (void)st_subtractArray:()SystemStatusAdditions
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

        [self st_removeFirstOccurrenceOfObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end