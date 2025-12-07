@interface NSValue(TVMLKitAdditions)
- (uint64_t)tv_cellMetricsValue;
- (uint64_t)tv_rowMetricsValue;
@end

@implementation NSValue(TVMLKitAdditions)

- (uint64_t)tv_cellMetricsValue
{
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return [self getValue:a2];
}

- (uint64_t)tv_rowMetricsValue
{
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return [self getValue:a2];
}

@end