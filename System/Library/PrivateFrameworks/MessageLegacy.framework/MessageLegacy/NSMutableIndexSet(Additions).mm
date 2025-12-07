@interface NSMutableIndexSet(Additions)
- (void)mf_intersectIndexes:()Additions;
@end

@implementation NSMutableIndexSet(Additions)

- (void)mf_intersectIndexes:()Additions
{
  v10[64] = *MEMORY[0x277D85DE8];
  result = [self count];
  if (result)
  {
    firstIndex = [self firstIndex];
    lastIndex = [self lastIndex];
    if ([a3 firstIndex] <= lastIndex && objc_msgSend(a3, "lastIndex") >= firstIndex)
    {
      v9[0] = firstIndex;
      v9[1] = lastIndex - firstIndex + 1;
      result = [self getIndexes:v10 maxCount:64 inIndexRange:v9];
      if (result)
      {
        v8 = result;
        while (1)
        {
          v8 = v8 - 1;
          if (([a3 containsIndex:v10[v8]] & 1) == 0)
          {
            [self removeIndex:v10[v8]];
          }

          if (!v8)
          {
            result = [self getIndexes:v10 maxCount:64 inIndexRange:v9];
            v8 = result;
            if (!result)
            {
              break;
            }
          }
        }
      }
    }

    else
    {

      return [self removeAllIndexes];
    }
  }

  return result;
}

@end