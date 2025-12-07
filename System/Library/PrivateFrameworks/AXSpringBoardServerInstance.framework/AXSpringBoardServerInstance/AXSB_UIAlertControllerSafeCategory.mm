@interface AXSB_UIAlertControllerSafeCategory
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_canDismissWithGestureRecognizer;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_applyAccessibilityLoadAccessibilityInformation;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation AXSB_UIAlertControllerSafeCategory

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIAlertController" hasInstanceMethod:@"_canDismissWithGestureRecognizer" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIAlertController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UIAlertController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"_UIAlertControllerPhoneTVMacView" hasInstanceVariable:@"_mainInterfaceActionsGroupView" withType:"_UIAlertControllerInterfaceActionGroupView"];
  [validationsCopy validateClass:@"UIInterfaceActionGroupView" hasInstanceMethod:@"actionSequenceView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIAlertControllerInterfaceActionGroupView" isKindOfClass:@"UIInterfaceActionGroupView"];
  [validationsCopy validateClass:@"_UIInterfaceActionRepresentationsSequenceView" hasInstanceMethod:@"arrangedActionRepresentationViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIInterfaceActionCustomViewRepresentationView" hasInstanceVariable:@"_actionContentView" withType:"UIView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = AXSB_UIAlertControllerSafeCategory;
  [(AXSB_UIAlertControllerSafeCategory *)&v3 _accessibilityLoadAccessibilityInformation];
  [(AXSB_UIAlertControllerSafeCategory *)self _applyAccessibilityLoadAccessibilityInformation];
}

- (void)_applyAccessibilityLoadAccessibilityInformation
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(AXSB_UIAlertControllerSafeCategory *)self _accessibilityBoolValueForKey:@"IsTripleClick"])
  {
    LOBYTE(location) = 0;
    objc_opt_class();
    v2 = __UIAccessibilityCastAsClass();
    view = [v2 view];
    v12 = [view safeValueForKey:@"_mainInterfaceActionsGroupView"];

    v14 = [v12 safeValueForKey:@"actionSequenceView"];
    v4 = [v14 safeArrayForKey:@"arrangedActionRepresentationViews"];
    v5 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          [v5 axSafelyAddObject:{v9, v12}];
          v10 = [v9 safeValueForKey:@"_actionContentView"];
          if (objc_opt_respondsToSelector())
          {
            [v10 _accessibilitySetViewIsVisible:1];
          }

          objc_initWeak(&location, v9);
          if (objc_opt_respondsToSelector())
          {
            v16[0] = MEMORY[0x277D85DD0];
            v16[1] = 3221225472;
            v16[2] = __85__AXSB_UIAlertControllerSafeCategory__applyAccessibilityLoadAccessibilityInformation__block_invoke;
            v16[3] = &unk_27842BC60;
            objc_copyWeak(&v17, &location);
            [v10 _setAccessibilityFrameBlock:v16];
            objc_destroyWeak(&v17);
          }

          objc_destroyWeak(&location);
        }

        v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    if ([v5 count])
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    [v14 setAccessibilityElements:{v11, v12}];
  }
}

- (BOOL)_canDismissWithGestureRecognizer
{
  if (([(AXSB_UIAlertControllerSafeCategory *)self _accessibilityBoolValueForKey:@"IsTripleClick"]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = AXSB_UIAlertControllerSafeCategory;
  return [(AXSB_UIAlertControllerSafeCategory *)&v4 _canDismissWithGestureRecognizer];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXSB_UIAlertControllerSafeCategory;
  [(AXSB_UIAlertControllerSafeCategory *)&v4 viewDidAppear:appear];
  [(AXSB_UIAlertControllerSafeCategory *)self _applyAccessibilityLoadAccessibilityInformation];
}

@end