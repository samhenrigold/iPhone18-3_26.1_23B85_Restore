@interface GameLayerPageGrid
- (UIEdgeInsets)centeringInsets;
- (UIEdgeInsets)minimumInsets;
@end

@implementation GameLayerPageGrid

- (UIEdgeInsets)minimumInsets
{
  v2 = PageGrid.minimumInsets.getter();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)centeringInsets
{
  v2 = PageGrid.centeringInsets.getter();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end