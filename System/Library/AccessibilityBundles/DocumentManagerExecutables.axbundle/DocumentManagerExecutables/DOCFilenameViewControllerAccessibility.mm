@interface DOCFilenameViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation DOCFilenameViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCFilenameViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCFilenameViewController" hasInstanceMethod:@"filenameView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCFilenameViewController" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCFilenameView" hasInstanceMethod:@"textField" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = DOCFilenameViewControllerAccessibility;
  [(DOCFilenameViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(DOCFilenameViewControllerAccessibility *)self safeValueForKey:@"filenameView"];
  v4 = [v3 safeValueForKey:@"textField"];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __84__DOCFilenameViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2BBB98;
  objc_copyWeak(&v6, &location);
  [v4 _setAccessibilityLabelBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __84__DOCFilenameViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained safeValueForKey:@"item"];
  v5 = __UIAccessibilityCastAsClass();

  if ([v5 isFolder])
  {
    v6 = @"folder.name";
  }

  else
  {
    v6 = @"file.name";
  }

  v7 = accessibilityLocalizedString(v6);

  return v7;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = DOCFilenameViewControllerAccessibility;
  [(DOCFilenameViewControllerAccessibility *)&v3 loadView];
  [(DOCFilenameViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end