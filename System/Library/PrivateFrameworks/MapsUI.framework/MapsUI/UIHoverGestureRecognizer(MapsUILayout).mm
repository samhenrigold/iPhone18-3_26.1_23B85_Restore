@interface UIHoverGestureRecognizer(MapsUILayout)
- (void)_mapsui_isHovering;
@end

@implementation UIHoverGestureRecognizer(MapsUILayout)

- (void)_mapsui_isHovering
{
  result = [self state];
  if (result != 1)
  {
    return ([self state] == 2);
  }

  return result;
}

@end