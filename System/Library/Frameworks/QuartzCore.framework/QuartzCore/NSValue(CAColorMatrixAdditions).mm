@interface NSValue(CAColorMatrixAdditions)
- (uint64_t)CAColorMatrixValue;
@end

@implementation NSValue(CAColorMatrixAdditions)

- (uint64_t)CAColorMatrixValue
{
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return [self getValue:a2 size:80];
}

@end