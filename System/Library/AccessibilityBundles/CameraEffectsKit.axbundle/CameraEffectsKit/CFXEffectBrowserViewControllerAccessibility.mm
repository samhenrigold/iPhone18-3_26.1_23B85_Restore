@interface CFXEffectBrowserViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axHideAppropriateElements:(BOOL)elements;
- (void)didSelectAppWithBundleIdentifier:(id)identifier;
@end

@implementation CFXEffectBrowserViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CFXEffectBrowserViewController" hasInstanceMethod:@"didSelectAppWithBundleIdentifier:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CFXEffectBrowserViewController" hasInstanceMethod:@"selectedAppIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CFXCameraViewController" hasInstanceMethod:@"cameraControlsViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"bottomControlsDrawer" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CFXEffectBrowserViewControllerAccessibility;
  [(CFXEffectBrowserViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CFXEffectBrowserViewControllerAccessibility *)self safeValueForKey:@"selectedAppIdentifier"];
  v4 = v3 != 0;

  [(CFXEffectBrowserViewControllerAccessibility *)self _axHideAppropriateElements:v4];
}

- (void)didSelectAppWithBundleIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = CFXEffectBrowserViewControllerAccessibility;
  [(CFXEffectBrowserViewControllerAccessibility *)&v5 didSelectAppWithBundleIdentifier:?];
  [(CFXEffectBrowserViewControllerAccessibility *)self _axHideAppropriateElements:identifier != 0];
}

- (void)_axHideAppropriateElements:(BOOL)elements
{
  elementsCopy = elements;
  LOBYTE(location) = 0;
  objc_opt_class();
  v5 = [(CFXEffectBrowserViewControllerAccessibility *)self safeValueForKey:@"parentViewController"];
  v6 = __UIAccessibilityCastAsClass();

  MEMORY[0x29C2CEA90](@"CNKFaceTimeInCallControlsViewController");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (AXDeviceIsPad())
    {
      goto LABEL_13;
    }

    v8 = [(CFXEffectBrowserViewControllerAccessibility *)self safeUIViewForKey:@"view"];
    v9 = [v8 _accessibilityFindAncestor:&__block_literal_global_1 startWithSelf:0];
    _accessibilityViewController = [v9 _accessibilityViewController];

    v11 = [v8 _accessibilityFindSubviewDescendant:&__block_literal_global_325];
    [v11 setAccessibilityElementsHidden:elementsCopy];
    if (_accessibilityViewController)
    {
      MEMORY[0x29C2CEA90](@"CFXCameraViewController");
      if (objc_opt_isKindOfClass())
      {
        v12 = [_accessibilityViewController safeValueForKeyPath:@"cameraControlsViewController.view"];
LABEL_11:
        v15 = v12;
        [v12 setAccessibilityElementsHidden:elementsCopy];

        goto LABEL_12;
      }

      MEMORY[0x29C2CEA90](@"CFXPreviewViewController");
      if (objc_opt_isKindOfClass())
      {
        v12 = [_accessibilityViewController safeValueForKey:@"bottomControlsDrawer"];
        goto LABEL_11;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  if (elementsCopy)
  {
    objc_initWeak(&location, v6);
    view = [v6 view];
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __74__CFXEffectBrowserViewControllerAccessibility__axHideAppropriateElements___block_invoke;
    v16[3] = &unk_29F2ABF18;
    objc_copyWeak(&v17, &location);
    [view _setAccessibilityElementsHiddenBlock:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    view2 = [v6 view];
    [view2 _setAccessibilityElementsHiddenBlock:0];

    view3 = [v6 view];
    [view3 setAccessibilityElementsHidden:0];
  }

LABEL_13:
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

uint64_t __74__CFXEffectBrowserViewControllerAccessibility__axHideAppropriateElements___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isExpanded"];

  return v2 ^ 1u;
}

uint64_t __74__CFXEffectBrowserViewControllerAccessibility__axHideAppropriateElements___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 _accessibilityViewController];
  MEMORY[0x29C2CEA90](@"CFXCameraViewController");
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v5 = [v2 _accessibilityViewController];
    MEMORY[0x29C2CEA90](@"CFXPreviewViewController");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t __74__CFXEffectBrowserViewControllerAccessibility__axHideAppropriateElements___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2CEA90](@"CKBrowserSwitcherFooterView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end