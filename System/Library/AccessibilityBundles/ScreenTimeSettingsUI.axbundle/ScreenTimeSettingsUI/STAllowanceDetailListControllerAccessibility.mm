@interface STAllowanceDetailListControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkSelectedSpecifier;
- (void)_showOrHidePickerSpecifierForSpecifier:(id)specifier highlight:(BOOL)highlight;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation STAllowanceDetailListControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STAllowanceDetailListController" hasInstanceMethod:@"_showOrHidePickerSpecifierForSpecifier:highlight:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"STAllowanceDetailListController" hasInstanceMethod:@"timeSpecifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STAllowanceDetailListController" hasInstanceMethod:@"selectedTimeSpecifier" withFullSignature:{"@", 0}];
}

- (void)_accessibilityMarkSelectedSpecifier
{
  objc_opt_class();
  v3 = [(STAllowanceDetailListControllerAccessibility *)self safeValueForKey:@"timeSpecifier"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  objc_opt_class();
  v5 = [(STAllowanceDetailListControllerAccessibility *)self safeValueForKey:@"selectedTimeSpecifier"];
  v6 = __UIAccessibilityCastAsSafeCategory();

  [v4 _accessibilitySetIsExpandedSTUICell:v4 == v6];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = STAllowanceDetailListControllerAccessibility;
  [(STAllowanceDetailListControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(STAllowanceDetailListControllerAccessibility *)self safeValueForKey:@"timeSpecifier"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  [v4 _accessibilitySetIsExpandableSTUICell:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = STAllowanceDetailListControllerAccessibility;
  [(STAllowanceDetailListControllerAccessibility *)&v4 viewDidAppear:appear];
  [(STAllowanceDetailListControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_showOrHidePickerSpecifierForSpecifier:(id)specifier highlight:(BOOL)highlight
{
  v5.receiver = self;
  v5.super_class = STAllowanceDetailListControllerAccessibility;
  [(STAllowanceDetailListControllerAccessibility *)&v5 _showOrHidePickerSpecifierForSpecifier:specifier highlight:highlight];
  [(STAllowanceDetailListControllerAccessibility *)self _accessibilityMarkSelectedSpecifier];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end