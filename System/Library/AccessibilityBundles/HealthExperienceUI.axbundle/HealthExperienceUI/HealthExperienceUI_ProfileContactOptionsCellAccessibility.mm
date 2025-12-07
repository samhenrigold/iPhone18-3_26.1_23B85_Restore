@interface HealthExperienceUI_ProfileContactOptionsCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation HealthExperienceUI_ProfileContactOptionsCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v17 = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = HealthExperienceUI_ProfileContactOptionsCellAccessibility;
  [(HealthExperienceUI_ProfileContactOptionsCellAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v3 = [(HealthExperienceUI_ProfileContactOptionsCellAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_5];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 _accessibilityFindSubviewDescendant:&__block_literal_global_291_0];
        accessibilityLabel = [v9 accessibilityLabel];
        [v8 setAccessibilityLabel:accessibilityLabel];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HealthExperienceUI_ProfileContactOptionsCellAccessibility;
  [(HealthExperienceUI_ProfileContactOptionsCellAccessibility *)&v3 layoutSubviews];
  [(HealthExperienceUI_ProfileContactOptionsCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end