@interface UIView(NUIContainerViewHack)
- (void)_intrinsicContentSizeInvalidatedForChildView:()NUIContainerViewHack;
@end

@implementation UIView(NUIContainerViewHack)

- (void)_intrinsicContentSizeInvalidatedForChildView:()NUIContainerViewHack
{
  result = [a3 invalidatingIntrinsicContentSizeAlsoInvalidatesSuperview];
  if (result)
  {
    [self invalidateIntrinsicContentSize];

    return [self setNeedsLayout];
  }

  return result;
}

@end