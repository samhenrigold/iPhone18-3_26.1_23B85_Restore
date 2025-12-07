@interface UIView(MTVisualStylingProviderAdditions)
- (id)visualStylingProviderForCategory:()MTVisualStylingProviderAdditions;
@end

@implementation UIView(MTVisualStylingProviderAdditions)

- (id)visualStylingProviderForCategory:()MTVisualStylingProviderAdditions
{
  superview = [self superview];
  subviews = [superview subviews];

  if ([subviews indexOfObject:?])
  {
    superview2 = [subviews objectAtIndex:?];
    subviews2 = [superview2 subviews];
    v8 = [subviews2 count];

    if (v8)
    {
      subviews3 = [superview2 subviews];
      lastObject = [subviews3 lastObject];

      superview2 = lastObject;
    }
  }

  else
  {
    superview2 = [self superview];
  }

  v11 = [superview2 visualStylingProviderForCategory:?];

  return v11;
}

@end