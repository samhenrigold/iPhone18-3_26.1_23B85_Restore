@interface MPMediaControlsConfiguration(Surface)
- (char)mru_surface;
@end

@implementation MPMediaControlsConfiguration(Surface)

- (char)mru_surface
{
  result = [self surface];
  if ((result - 1) >= 0xB)
  {
    return 0;
  }

  return result;
}

@end