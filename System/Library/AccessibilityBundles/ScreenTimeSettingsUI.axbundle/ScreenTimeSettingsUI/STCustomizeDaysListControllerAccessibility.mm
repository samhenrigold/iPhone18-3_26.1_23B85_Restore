@interface STCustomizeDaysListControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkSelectedSpecifier;
- (void)_showOrHidePickerSpecifierForSpecifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation STCustomizeDaysListControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STCustomizeDaysListController" hasInstanceMethod:@"selectedDaySpecifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STCustomizeDaysListController" hasInstanceMethod:@"timePickerSpecifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STCustomizeDaysListController" hasInstanceMethod:@"_showOrHidePickerSpecifierForSpecifier:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityMarkSelectedSpecifier
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  specifiers = [v3 specifiers];

  v5 = [specifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(specifiers);
        }

        objc_opt_class();
        v9 = __UIAccessibilityCastAsSafeCategory();
        [v9 _accessibilitySetIsExpandedSTUICell:0];
      }

      v6 = [specifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_opt_class();
  v10 = [(STCustomizeDaysListControllerAccessibility *)self safeValueForKey:@"selectedDaySpecifier"];
  v11 = __UIAccessibilityCastAsSafeCategory();

  [v11 _accessibilitySetIsExpandedSTUICell:1];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v21 = *MEMORY[0x29EDCA608];
  v19.receiver = self;
  v19.super_class = STCustomizeDaysListControllerAccessibility;
  [(STCustomizeDaysListControllerAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v18 = 0;
  objc_opt_class();
  v3 = [(STCustomizeDaysListControllerAccessibility *)self safeValueForKey:@"timePickerSpecifier"];
  v4 = __UIAccessibilityCastAsClass();

  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = v5;
  specifiers = [v5 specifiers];

  v8 = [specifiers countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(specifiers);
        }

        if (*(*(&v14 + 1) + 8 * i) != v4)
        {
          v18 = 0;
          objc_opt_class();
          v12 = __UIAccessibilityCastAsSafeCategory();
          if (v18 == 1)
          {
            abort();
          }

          v13 = v12;
          [v12 _accessibilitySetIsExpandableSTUICell:1];
        }
      }

      v9 = [specifiers countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = STCustomizeDaysListControllerAccessibility;
  [(STCustomizeDaysListControllerAccessibility *)&v4 viewDidAppear:appear];
  [(STCustomizeDaysListControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_showOrHidePickerSpecifierForSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = STCustomizeDaysListControllerAccessibility;
  [(STCustomizeDaysListControllerAccessibility *)&v4 _showOrHidePickerSpecifierForSpecifier:specifier];
  [(STCustomizeDaysListControllerAccessibility *)self _accessibilityMarkSelectedSpecifier];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end