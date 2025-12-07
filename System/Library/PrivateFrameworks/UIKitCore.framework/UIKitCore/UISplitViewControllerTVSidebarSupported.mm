@interface UISplitViewControllerTVSidebarSupported
@end

@implementation UISplitViewControllerTVSidebarSupported

void ___UISplitViewControllerTVSidebarSupported_block_invoke()
{
  v1 = _UIMainBundleIdentifier();
  if ((objc_msgSend_isEqualToString_(v1) & 1) == 0)
  {
    v0 = _UIKitUserDefaults();
    [v0 BOOLForKey:@"ForceSupportTVSidebar"];
  }
}

@end