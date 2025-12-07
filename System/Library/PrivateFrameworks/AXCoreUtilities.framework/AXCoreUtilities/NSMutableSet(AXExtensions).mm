@interface NSMutableSet(AXExtensions)
- (void)axSafelyAddObject:()AXExtensions;
- (void)axSafelyAddObjectsFromArray:()AXExtensions;
@end

@implementation NSMutableSet(AXExtensions)

- (void)axSafelyAddObjectsFromArray:()AXExtensions
{
  if (a3)
  {
    return [result addObjectsFromArray:?];
  }

  return result;
}

- (void)axSafelyAddObject:()AXExtensions
{
  if (a3)
  {
    return [result addObject:?];
  }

  return result;
}

@end