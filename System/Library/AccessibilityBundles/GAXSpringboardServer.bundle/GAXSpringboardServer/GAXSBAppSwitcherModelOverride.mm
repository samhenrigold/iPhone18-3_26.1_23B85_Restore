@interface GAXSBAppSwitcherModelOverride
- (id)appLayoutsIncludingHiddenAppLayouts:(BOOL)layouts;
@end

@implementation GAXSBAppSwitcherModelOverride

- (id)appLayoutsIncludingHiddenAppLayouts:(BOOL)layouts
{
  v8.receiver = self;
  v8.super_class = GAXSBAppSwitcherModelOverride;
  v4 = [(GAXSBAppSwitcherModelOverride *)&v8 appLayoutsIncludingHiddenAppLayouts:layouts];
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  if ([v5 count] && -[GAXSBAppSwitcherModelOverride _gaxShouldLimitAppLayoutsToCurrentApp](self, "_gaxShouldLimitAppLayoutsToCurrentApp"))
  {
    v6 = [v5 ax_filteredArrayUsingBlock:&stru_2CF58];

    v5 = v6;
    v4 = v5;
  }

  return v4;
}

@end