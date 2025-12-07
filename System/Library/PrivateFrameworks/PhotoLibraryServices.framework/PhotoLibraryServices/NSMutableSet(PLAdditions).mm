@interface NSMutableSet(PLAdditions)
- (void)pl_addObjectIfNotNil:()PLAdditions;
@end

@implementation NSMutableSet(PLAdditions)

- (void)pl_addObjectIfNotNil:()PLAdditions
{
  if (a3)
  {
    return [result addObject:?];
  }

  return result;
}

@end