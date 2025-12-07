@interface AVUnifiedPlayerPlaybackMetadataViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHeaderElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AVUnifiedPlayerPlaybackMetadataViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVUnifiedPlayerPlaybackMetadataViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVUnifiedPlayerPlaybackMetadataViewController" hasInstanceMethod:@"auxiliaryMetadataView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v15 = *MEMORY[0x29EDCA608];
  v13.receiver = self;
  v13.super_class = AVUnifiedPlayerPlaybackMetadataViewControllerAccessibility;
  [(AVUnifiedPlayerPlaybackMetadataViewControllerAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  accessibilityHeaderElements = [(AVUnifiedPlayerPlaybackMetadataViewControllerAccessibility *)self accessibilityHeaderElements];
  v4 = [accessibilityHeaderElements countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    v7 = *MEMORY[0x29EDC7F80];
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(accessibilityHeaderElements);
        }

        [*(*(&v9 + 1) + 8 * v8++) setAccessibilityTraits:v7];
      }

      while (v5 != v8);
      v5 = [accessibilityHeaderElements countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)accessibilityHeaderElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(AVUnifiedPlayerPlaybackMetadataViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  v5 = [v3 axArrayByIgnoringNilElementsWithCount:{1, v4}];
  v6 = [(AVUnifiedPlayerPlaybackMetadataViewControllerAccessibility *)self safeUIViewForKey:@"auxiliaryMetadataView"];
  accessibilityElements = [v6 accessibilityElements];
  v8 = [v3 axArrayWithPossiblyNilArrays:{2, v5, accessibilityElements}];

  return v8;
}

@end