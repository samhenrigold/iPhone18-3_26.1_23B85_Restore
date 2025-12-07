@interface PXPhotosDetailsUIViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)widgetComposition:(id)composition requestViewControllerDismissalAnimated:(BOOL)animated;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetDetailsDismissedBlock:(id)block;
- (void)_ensureScrollViewController;
- (void)_loadWidgets;
- (void)_setAXDetailsDismissedBlock:(id)block;
@end

@implementation PXPhotosDetailsUIViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXUIScrollViewController"];
  [validationsCopy validateClass:@"PXPhotosDetailsUIViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PXPhotosDetailsUIViewController" hasInstanceMethod:@"_scrollViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXPhotosDetailsUIViewController" hasInstanceMethod:@"_widgets" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXUIScrollViewController" hasInstanceVariable:@"_scrollView" withType:"_PXUIScrollView"];
  [validationsCopy validateClass:@"PXPhotosDetailsUIViewController" hasInstanceMethod:@"_loadWidgets" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PXPhotosDetailsUIViewController" hasInstanceMethod:@"_ensureScrollViewController" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PXPhotosDetailsUIViewController" hasInstanceMethod:@"widgetComposition:requestViewControllerDismissalAnimated:" withFullSignature:{"@", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v21 = *MEMORY[0x29EDCA608];
  v19.receiver = self;
  v19.super_class = PXPhotosDetailsUIViewControllerAccessibility;
  [(PXPhotosDetailsUIViewControllerAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v3 = [(PXPhotosDetailsUIViewControllerAccessibility *)self safeValueForKey:@"_scrollViewController"];
  MEMORY[0x29C2E6930](@"PXUIScrollViewController");
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 safeValueForKey:@"_scrollView"];
    [v5 accessibilitySetIdentification:@"AXPhotoDetailsScrollView"];
    [v4 accessibilitySetIdentification:@"AXPhotosDetailsUIViewController"];
    v18 = 0;
    objc_opt_class();
    v6 = [(PXPhotosDetailsUIViewControllerAccessibility *)self safeValueForKey:@"navigationController"];
    v7 = __UIAccessibilityCastAsClass();

    [v4 _axAdjustScrollViewInsetsWithNavController:v7];
  }

  v8 = [(PXPhotosDetailsUIViewControllerAccessibility *)self safeArrayForKey:@"_widgets"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([v13 conformsToProtocol:&unk_2A2292AE0])
        {
          [v13 _accessibilityLoadAccessibilityInformation];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)_loadWidgets
{
  v3.receiver = self;
  v3.super_class = PXPhotosDetailsUIViewControllerAccessibility;
  [(PXPhotosDetailsUIViewControllerAccessibility *)&v3 _loadWidgets];
  [(PXPhotosDetailsUIViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_ensureScrollViewController
{
  v3.receiver = self;
  v3.super_class = PXPhotosDetailsUIViewControllerAccessibility;
  [(PXPhotosDetailsUIViewControllerAccessibility *)&v3 _ensureScrollViewController];
  [(PXPhotosDetailsUIViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_setAXDetailsDismissedBlock:(id)block
{
  v3 = MEMORY[0x29C2E6DD0](block, a2);
  __UIAccessibilitySetAssociatedObject();
}

- (void)_axSetDetailsDismissedBlock:(id)block
{
  v4 = [block copy];
  [(PXPhotosDetailsUIViewControllerAccessibility *)self _setAXDetailsDismissedBlock:v4];
}

- (BOOL)widgetComposition:(id)composition requestViewControllerDismissalAnimated:(BOOL)animated
{
  v9.receiver = self;
  v9.super_class = PXPhotosDetailsUIViewControllerAccessibility;
  v5 = [(PXPhotosDetailsUIViewControllerAccessibility *)&v9 widgetComposition:composition requestViewControllerDismissalAnimated:animated];
  _axDetailsDismissedBlock = [(PXPhotosDetailsUIViewControllerAccessibility *)self _axDetailsDismissedBlock];
  v7 = _axDetailsDismissedBlock;
  if (_axDetailsDismissedBlock && v5)
  {
    (*(_axDetailsDismissedBlock + 16))(_axDetailsDismissedBlock);
  }

  return v5;
}

@end