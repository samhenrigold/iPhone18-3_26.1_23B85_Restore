@interface _TVDescriptiveAlertViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setChildViews:(id)views;
@end

@implementation _TVDescriptiveAlertViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVDescriptiveAlertView" hasInstanceVariable:@"_viewsAboveScrollView" withType:"NSArray"];
  [validationsCopy validateClass:@"_TVDescriptiveAlertView" hasInstanceMethod:@"setChildViews:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v19 = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = _TVDescriptiveAlertViewAccessibility;
  [(_TVDescriptiveAlertViewAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  v16 = 0;
  objc_opt_class();
  v3 = [(_TVDescriptiveAlertViewAccessibility *)self safeValueForKey:@"_viewsAboveScrollView"];
  v4 = __UIAccessibilityCastAsClass();

  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    v9 = *MEMORY[0x29EDC7F80];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        NSClassFromString(&cfstr_Tvlabel.isa);
        if (objc_opt_isKindOfClass())
        {
          [v11 setAccessibilityTraits:{v9, v12}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)setChildViews:(id)views
{
  v4.receiver = self;
  v4.super_class = _TVDescriptiveAlertViewAccessibility;
  [(_TVDescriptiveAlertViewAccessibility *)&v4 setChildViews:views];
  [(_TVDescriptiveAlertViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end