@interface TUIRestrictedLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth;
- (BOOL)groupedContainingIsGrouped;
- (UIEdgeInsets)groupedContainingInsets;
- (void)computeLayout;
@end

@implementation TUIRestrictedLayout

- (UIEdgeInsets)groupedContainingInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)groupedContainingIsGrouped
{
  v2 = objc_msgSend_box(self, a2);
  grouped = [v2 grouped];

  return grouped;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  v3 = objc_msgSend_children(self, a3);
  firstObject = [v3 firstObject];

  computeIntrinsicWidth = [firstObject computeIntrinsicWidth];
  return computeIntrinsicWidth;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  v3 = objc_msgSend_children(self, a3);
  firstObject = [v3 firstObject];

  computeIntrinsicHeight = [firstObject computeIntrinsicHeight];
  return computeIntrinsicHeight;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth
{
  v3 = objc_msgSend_children(self, a3);
  firstObject = [v3 firstObject];

  computedWidth = [firstObject computedWidth];
  return computedWidth;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight
{
  v3 = objc_msgSend_children(self, a3);
  firstObject = [v3 firstObject];

  computedHeight = [firstObject computedHeight];
  return computedHeight;
}

- (void)computeLayout
{
  v3 = objc_msgSend_children(self, a2);
  firstObject = [v3 firstObject];

  [firstObject setContainingWidth:NAN];
  [firstObject setContainingHeight:NAN];
  [firstObject setFlexedWidth:NAN];
  [firstObject setFlexedHeight:NAN];
  objc_msgSend_validateLayout(firstObject);
  [firstObject setComputedOrigin:{CGPointZero.x, CGPointZero.y}];
  objc_msgSend_computedTransformedSize(firstObject);
  [(TUILayout *)self setComputedNaturalSize:?];
}

@end