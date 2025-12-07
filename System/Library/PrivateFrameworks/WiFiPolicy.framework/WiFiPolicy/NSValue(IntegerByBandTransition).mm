@interface NSValue(IntegerByBandTransition)
- (uint64_t)integerByBandTransitionValue;
@end

@implementation NSValue(IntegerByBandTransition)

- (uint64_t)integerByBandTransitionValue
{
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return [self getValue:a2];
}

@end