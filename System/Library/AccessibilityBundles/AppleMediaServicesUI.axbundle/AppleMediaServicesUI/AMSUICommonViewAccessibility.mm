@interface AMSUICommonViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation AMSUICommonViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v16 = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = AMSUICommonViewAccessibility;
  [(AMSUICommonViewAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  if (!MEMORY[0x29C2C92B0](@"StoresDynamicPlugin.ArtworkHeaderComponent"))
  {
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __74__AMSUICommonViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v13[3] = &__block_descriptor_40_e12_B24__0_8_B16lu32l8;
    v13[4] = 0;
    [(AMSUICommonViewAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:v13];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = v12 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v15 count:16];
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

          objc_opt_class();
          v8 = __UIAccessibilityCastAsClass();
          [v8 setIsAccessibilityElementBlock:&__block_literal_global_1];
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v15 count:16];
      }

      while (v5);
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMSUICommonViewAccessibility;
  [(AMSUICommonViewAccessibility *)&v3 layoutSubviews];
  [(AMSUICommonViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end