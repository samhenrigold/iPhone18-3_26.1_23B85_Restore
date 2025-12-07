@interface NSValue(DAAvailableVersionUpgrade)
- (uint64_t)availableVersionUpgradeValue;
@end

@implementation NSValue(DAAvailableVersionUpgrade)

- (uint64_t)availableVersionUpgradeValue
{
  *a2 = 0u;
  a2[1] = 0u;
  return [self getValue:a2 size:32];
}

@end