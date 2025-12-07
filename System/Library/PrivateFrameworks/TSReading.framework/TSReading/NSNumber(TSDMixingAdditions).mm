@interface NSNumber(TSDMixingAdditions)
- (uint64_t)mixedObjectWithFraction:()TSDMixingAdditions ofObject:;
- (uint64_t)mixingTypeWithObject:()TSDMixingAdditions;
@end

@implementation NSNumber(TSDMixingAdditions)

- (uint64_t)mixingTypeWithObject:()TSDMixingAdditions
{
  objc_opt_class();
  if ([self isEqualToNumber:TSUCheckedDynamicCast()])
  {
    return 5;
  }

  else
  {
    return 3;
  }
}

- (uint64_t)mixedObjectWithFraction:()TSDMixingAdditions ofObject:
{
  objc_opt_class();
  v3 = TSUCheckedDynamicCast();
  v4 = MEMORY[0x277CCABB0];
  [self doubleValue];
  [v3 doubleValue];
  TSUMixFloats();

  return [v4 numberWithDouble:?];
}

@end