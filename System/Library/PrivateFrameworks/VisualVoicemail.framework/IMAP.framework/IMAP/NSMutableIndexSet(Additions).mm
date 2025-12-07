@interface NSMutableIndexSet(Additions)
- (void)mf_intersectIndexes:()Additions;
@end

@implementation NSMutableIndexSet(Additions)

- (void)mf_intersectIndexes:()Additions
{
  v10[64] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([self count])
  {
    firstIndex = [self firstIndex];
    lastIndex = [self lastIndex];
    if ([v4 firstIndex] <= lastIndex && objc_msgSend(v4, "lastIndex") >= firstIndex)
    {
      v9[0] = firstIndex;
      v9[1] = lastIndex - firstIndex + 1;
      v7 = [self getIndexes:v10 maxCount:64 inIndexRange:v9];
      if (v7)
      {
        v8 = v7;
        while (1)
        {
          if (([v4 containsIndex:v10[--v8]] & 1) == 0)
          {
            [self removeIndex:v10[v8]];
          }

          if (!v8)
          {
            v8 = [self getIndexes:v10 maxCount:64 inIndexRange:v9];
            if (!v8)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      [self removeAllIndexes];
    }
  }
}

@end