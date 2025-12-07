@interface NSValue(DockState)
- (uint64_t)dockStateValue;
@end

@implementation NSValue(DockState)

- (uint64_t)dockStateValue
{
  *(a2 + 128) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 64) = xmmword_25491C2F8;
  *(a2 + 80) = unk_25491C308;
  memset((a2 + 96), 170, 32);
  memset(a2, 170, 64);
  return [self getValue:?];
}

@end