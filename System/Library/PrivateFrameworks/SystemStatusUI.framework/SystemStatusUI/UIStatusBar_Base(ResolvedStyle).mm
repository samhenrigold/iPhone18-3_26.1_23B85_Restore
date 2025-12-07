@interface UIStatusBar_Base(ResolvedStyle)
- (uint64_t)currentResolvedStyle;
- (uint64_t)requestResolvedStyle:()ResolvedStyle;
@end

@implementation UIStatusBar_Base(ResolvedStyle)

- (uint64_t)currentResolvedStyle
{
  [self currentStyle];

  return _UIStatusBarResolvedStyleFromStyle();
}

- (uint64_t)requestResolvedStyle:()ResolvedStyle
{
  v4 = _UIStatusBarStyleFromResolvedStyle();

  return [self requestStyle:v4];
}

@end