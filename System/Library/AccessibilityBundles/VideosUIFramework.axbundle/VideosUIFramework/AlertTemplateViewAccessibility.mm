@interface AlertTemplateViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation AlertTemplateViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.AlertTemplateView" hasSwiftField:@"collectionView" withSwiftType:"VUILegacyCollectionView"];
  [validationsCopy validateClass:@"VideosUI.AlertTemplateView" hasSwiftField:@"aboveCollectionComponents" withSwiftType:{"Array<(UIView, ViewLayout)>"}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v18 = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = AlertTemplateViewAccessibility;
  [(AlertTemplateViewAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  v3 = [(AlertTemplateViewAccessibility *)self safeSwiftArrayForKey:@"aboveCollectionComponents"];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __76__AlertTemplateViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v15[3] = &unk_29F31C3C8;
  v15[4] = self;
  v4 = [v3 axMapObjectsUsingBlock:v15];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    v9 = *MEMORY[0x29EDC7F80];
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v10) setAccessibilityTraits:{v9 | objc_msgSend(*(*(&v11 + 1) + 8 * v10), "accessibilityTraits", v11)}];
        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v7);
  }
}

id __76__AlertTemplateViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [*(a1 + 32) safeSwiftValueForKey:@"obj"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AlertTemplateViewAccessibility;
  [(AlertTemplateViewAccessibility *)&v3 layoutSubviews];
  [(AlertTemplateViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end