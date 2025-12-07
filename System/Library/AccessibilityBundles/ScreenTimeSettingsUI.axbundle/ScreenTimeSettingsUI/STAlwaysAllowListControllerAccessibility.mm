@interface STAlwaysAllowListControllerAccessibility
- (id)specifiers;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation STAlwaysAllowListControllerAccessibility

- (id)specifiers
{
  v15 = *MEMORY[0x29EDCA608];
  v13.receiver = self;
  v13.super_class = STAlwaysAllowListControllerAccessibility;
  specifiers = [(STAlwaysAllowListControllerAccessibility *)&v13 specifiers];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * i) accessibilitySetIdentification:@"AXAlwaysAllowSpecifierIdentification"];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  return specifiers;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = STAlwaysAllowListControllerAccessibility;
  [(STAlwaysAllowListControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(STAlwaysAllowListControllerAccessibility *)self safeValueForKey:@"specifiers"];
}

@end