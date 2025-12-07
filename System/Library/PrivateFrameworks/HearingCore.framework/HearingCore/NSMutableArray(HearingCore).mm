@interface NSMutableArray(HearingCore)
- (void)hcSafeAddObject:()HearingCore;
@end

@implementation NSMutableArray(HearingCore)

- (void)hcSafeAddObject:()HearingCore
{
  if (a3)
  {
    return [result addObject:?];
  }

  return result;
}

@end