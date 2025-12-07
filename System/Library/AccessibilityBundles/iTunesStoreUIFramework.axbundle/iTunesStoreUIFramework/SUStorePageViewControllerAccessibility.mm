@interface SUStorePageViewControllerAccessibility
- (BOOL)reloadForSectionsWithGroup:(id)group;
- (void)_handleViewControllerBecameReady:(id)ready;
- (void)_setActiveChildViewController:(id)controller shouldTearDown:(BOOL)down;
@end

@implementation SUStorePageViewControllerAccessibility

- (void)_handleViewControllerBecameReady:(id)ready
{
  v3.receiver = self;
  v3.super_class = SUStorePageViewControllerAccessibility;
  [(SUStorePageViewControllerAccessibility *)&v3 _handleViewControllerBecameReady:ready];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (BOOL)reloadForSectionsWithGroup:(id)group
{
  v8.receiver = self;
  v8.super_class = SUStorePageViewControllerAccessibility;
  v4 = [(SUStorePageViewControllerAccessibility *)&v8 reloadForSectionsWithGroup:group];
  v5 = [(SUStorePageViewControllerAccessibility *)self safeValueForKey:@"_segmentedControl"];
  v6 = [*MEMORY[0x29EDC8008] safeValueForKey:@"_accessibilityContentLanguage"];
  [v5 setAccessibilityLanguage:v6];

  return v4;
}

- (void)_setActiveChildViewController:(id)controller shouldTearDown:(BOOL)down
{
  downCopy = down;
  controllerCopy = controller;
  v7 = [(SUStorePageViewControllerAccessibility *)self safeValueForKey:@"_activeChildViewController"];
  NSClassFromString(&cfstr_Suplaceholderv.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  v9.receiver = self;
  v9.super_class = SUStorePageViewControllerAccessibility;
  [(SUStorePageViewControllerAccessibility *)&v9 _setActiveChildViewController:controllerCopy shouldTearDown:downCopy];

  if (v7 != controllerCopy && (isKindOfClass & 1) != 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end