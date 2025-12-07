@interface NSValue(CACornerRadiiAdditions)
- (uint64_t)CACornerRadiiValue;
@end

@implementation NSValue(CACornerRadiiAdditions)

- (uint64_t)CACornerRadiiValue
{
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return [self getValue:a2 size:64];
}

@end