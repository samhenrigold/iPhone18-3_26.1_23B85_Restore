@interface NSValue(HKGraphSeriesDataBlockPath)
- (uint64_t)HKGraphSeriesDataBlockPathValue;
@end

@implementation NSValue(HKGraphSeriesDataBlockPath)

- (uint64_t)HKGraphSeriesDataBlockPathValue
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return [self getValue:a2];
}

@end