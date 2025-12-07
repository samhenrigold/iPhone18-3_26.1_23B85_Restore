@interface SKUIChartColumnHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation SKUIChartColumnHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIChartColumnHeaderView" hasInstanceVariable:@"_buttons" withType:"NSArray"];
  [validationsCopy validateClass:@"SKUIChartColumnHeaderView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v16 = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = SKUIChartColumnHeaderViewAccessibility;
  [(SKUIChartColumnHeaderViewAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(SKUIChartColumnHeaderViewAccessibility *)self safeValueForKey:@"_buttons", 0];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = *MEMORY[0x29EDC7F80];
    v8 = *MEMORY[0x29EDC7F70];
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v9++) setAccessibilityTraits:v8 | v7];
      }

      while (v5 != v9);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SKUIChartColumnHeaderViewAccessibility;
  [(SKUIChartColumnHeaderViewAccessibility *)&v3 layoutSubviews];
  [(SKUIChartColumnHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end