@interface NSOrderedChangesApply
@end

@implementation NSOrderedChangesApply

void *___NSOrderedChangesApply_block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      v10 = result[4];

      return [v10 replaceObjectAtIndex:a4 withObject:a5];
    }

    else if (a2 == 5)
    {
      v7 = result[4];
      v8 = [NSIndexSet indexSetWithIndex:a3, a4, a5];

      return [v7 moveObjectsAtIndexes:v8 toIndex:a4];
    }
  }

  else if (a2 == 2)
  {
    v9 = result[4];

    return [v9 insertObject:a5 atIndex:?];
  }

  else if (a2 == 3)
  {
    v6 = result[4];

    return [v6 removeObjectAtIndex:a4];
  }

  return result;
}

@end