@interface INWidgetDescriptor(IntentsUI)
- (double)preferredSize;
@end

@implementation INWidgetDescriptor(IntentsUI)

- (double)preferredSize
{
  preferredSizeClass = [self preferredSizeClass];
  if (preferredSizeClass > 4)
  {
    return 360.0;
  }

  else
  {
    return dbl_22CA489C0[preferredSizeClass];
  }
}

@end