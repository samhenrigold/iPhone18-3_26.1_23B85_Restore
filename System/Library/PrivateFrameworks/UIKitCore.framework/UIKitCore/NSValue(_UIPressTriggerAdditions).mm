@interface NSValue(_UIPressTriggerAdditions)
- (uint64_t)_UIPressTriggerValue;
@end

@implementation NSValue(_UIPressTriggerAdditions)

- (uint64_t)_UIPressTriggerValue
{
  *a2 = 0u;
  a2[1] = 0u;
  return [self getValue:a2 size:32];
}

@end