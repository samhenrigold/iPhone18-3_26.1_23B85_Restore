@interface NSValue(PXSimpleIndexPath)
- (uint64_t)px_simpleIndexPathValue;
@end

@implementation NSValue(PXSimpleIndexPath)

- (uint64_t)px_simpleIndexPathValue
{
  *a2 = 0u;
  a2[1] = 0u;
  return [self getValue:a2];
}

@end