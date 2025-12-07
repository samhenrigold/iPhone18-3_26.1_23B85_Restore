@interface NSValue(GrayColorResult)
- (uint64_t)pi_grayColorResultValue;
@end

@implementation NSValue(GrayColorResult)

- (uint64_t)pi_grayColorResultValue
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return [self getValue:a2];
}

@end