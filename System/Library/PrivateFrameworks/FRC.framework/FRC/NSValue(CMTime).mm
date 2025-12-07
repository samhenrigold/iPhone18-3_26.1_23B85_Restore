@interface NSValue(CMTime)
- (uint64_t)time;
@end

@implementation NSValue(CMTime)

- (uint64_t)time
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return [self getValue:a2];
}

@end