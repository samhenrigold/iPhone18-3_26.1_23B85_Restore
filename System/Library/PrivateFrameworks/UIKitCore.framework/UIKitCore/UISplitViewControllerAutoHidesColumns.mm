@interface UISplitViewControllerAutoHidesColumns
@end

@implementation UISplitViewControllerAutoHidesColumns

void *___UISplitViewControllerAutoHidesColumns_block_invoke()
{
  result = _resolvedPrefValue_0(@"UISplitViewControllerForceAutoHidesColumns", 0);
  byte_1ED49D881 = result;
  if ((result & 1) == 0)
  {
    result = _resolvedPrefValue_0(@"UISplitViewControllerAllowAutoHidesColumns", 1);
    _MergedGlobals_1058 = result;
  }

  return result;
}

@end