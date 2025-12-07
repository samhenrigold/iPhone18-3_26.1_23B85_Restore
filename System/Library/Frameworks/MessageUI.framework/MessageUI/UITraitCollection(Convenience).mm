@interface UITraitCollection(Convenience)
- (void)mf_hasCompactDimension;
- (void)mf_supportsPopoverPresentation;
@end

@implementation UITraitCollection(Convenience)

- (void)mf_supportsPopoverPresentation
{
  result = [self userInterfaceIdiom];
  if (result)
  {
    return ([self horizontalSizeClass] == 2);
  }

  return result;
}

- (void)mf_hasCompactDimension
{
  result = [self horizontalSizeClass];
  if (result != 1)
  {
    return ([self verticalSizeClass] == 1);
  }

  return result;
}

@end