@interface UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar
@end

@implementation UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar

void ___UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar_block_invoke()
{
  v0 = _UIKitUserDefaults();
  v3 = [v0 objectForKey:@"FloatingTabBarExtendBarHeight"];

  if (v3)
  {
    _UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar_wantsNavigationBarExtensionForFloatingTabBar = [v3 BOOLValue];
  }

  v1 = _UIMainBundleIdentifier();
  isEqualToString = objc_msgSend_isEqualToString_(v1);

  if (isEqualToString)
  {
    _UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar_wantsNavigationBarExtensionForFloatingTabBar = _UIDocumentViewControllerWantsUIPDocumentLanding();
  }
}

@end