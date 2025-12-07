@interface NSValue(PVTransformAnimation)
- (uint64_t)PVTransformAnimationInfoValue;
@end

@implementation NSValue(PVTransformAnimation)

- (uint64_t)PVTransformAnimationInfoValue
{
  v4 = MEMORY[0x277CC08F0];
  *a2 = *MEMORY[0x277CC08F0];
  v5 = *(v4 + 16);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = v5;
  *(a2 + 40) = xmmword_2603426F0;
  return [self getValue:? size:?];
}

@end