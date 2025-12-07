@interface UICollectionViewCell(AccessibilityBridging)
- (id)ttriAccessibilityAXOutermostContainingViewOfType:()AccessibilityBridging;
- (uint64_t)_accessibilityScrollToVisible;
- (uint64_t)ttriAccessibilityAdjustScrollOffsetForFocus;
@end

@implementation UICollectionViewCell(AccessibilityBridging)

- (uint64_t)_accessibilityScrollToVisible
{
  NSClassFromString(&cfstr_Uicalendardate.isa);
  if (objc_opt_isKindOfClass())
  {

    return [self ttriAccessibilityAdjustScrollOffsetForFocus];
  }

  else
  {

    return [self _accessibilityBaseScrollToVisible];
  }
}

- (uint64_t)ttriAccessibilityAdjustScrollOffsetForFocus
{
  v3 = [self ttriAccessibilityAXOutermostContainingViewOfType:objc_opt_class()];
  v4 = [self ttriAccessibilityAXOutermostContainingViewOfType:objc_opt_class()];
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    [self bounds];
    [self convertPoint:v4 toView:?];
    v7 = v6;
    [v3 contentOffset];
    v9 = v8;
    [v4 frame];
    v11 = v7 + v10;
    [v3 adjustedContentInset];
    [v3 setContentOffset:1 animated:{v9, v11 - v12}];
  }

  return 0;
}

- (id)ttriAccessibilityAXOutermostContainingViewOfType:()AccessibilityBridging
{
  selfCopy = self;
  if (selfCopy)
  {
    v4 = selfCopy;
    v5 = 0;
    do
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v4;

        v5 = v6;
      }

      superview = [v4 superview];

      v4 = superview;
    }

    while (superview);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end