@interface NSValue(IntegerByBand)
- (uint64_t)integerByBandValue;
@end

@implementation NSValue(IntegerByBand)

- (uint64_t)integerByBandValue
{
  *a2 = 0u;
  a2[1] = 0u;
  return [self getValue:a2];
}

@end