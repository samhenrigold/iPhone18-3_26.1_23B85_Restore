@interface VideosUI_EpicInlineViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation VideosUI_EpicInlineViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.EpicInlineView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"VideosUI.VerticalStackView"];
  [validationsCopy validateClass:@"VUILabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v16 = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = VideosUI_EpicInlineViewAccessibility;
  [(VideosUI_EpicInlineViewAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v3 = [(VideosUI_EpicInlineViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_9];
  v4 = [v3 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_299];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    v8 = *MEMORY[0x29EDC7F80];
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v9) setAccessibilityTraits:{v8 | objc_msgSend(*(*(&v10 + 1) + 8 * v9), "accessibilityTraits")}];
        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VideosUI_EpicInlineViewAccessibility;
  [(VideosUI_EpicInlineViewAccessibility *)&v3 layoutSubviews];
  [(VideosUI_EpicInlineViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end