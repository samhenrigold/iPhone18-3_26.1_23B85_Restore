@interface PKPaletteContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation PKPaletteContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaletteContentView" hasInstanceMethod:@"undoRedoView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPaletteContentView" hasInstanceMethod:@"toolPickerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPaletteContentView" hasInstanceMethod:@"colorPickerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPaletteContentView" hasInstanceMethod:@"additionalOptionsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPaletteContentView" hasInstanceMethod:@"contextualEditingView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPaletteContentView" hasInstanceMethod:@"toolAndColorPickerContainerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPaletteToolPickerAndColorPickerView" hasInstanceMethod:@"lassoToolEditingContainerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPaletteContentView" hasInstanceMethod:@"paletteInputAssistantView" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v25 = *MEMORY[0x29EDCA608];
  if (AXDoesRequestingClientDeserveAutomation())
  {
    v23.receiver = self;
    v23.super_class = PKPaletteContentViewAccessibility;
    accessibilityElements = [(PKPaletteContentViewAccessibility *)&v23 accessibilityElements];
  }

  else
  {
    v4 = [(PKPaletteContentViewAccessibility *)self safeValueForKey:@"undoRedoView"];
    v5 = [(PKPaletteContentViewAccessibility *)self safeValueForKey:@"toolPickerView"];
    v6 = [(PKPaletteContentViewAccessibility *)self safeValueForKey:@"paletteInputAssistantView"];
    v7 = [(PKPaletteContentViewAccessibility *)self safeValueForKey:@"colorPickerView"];
    v8 = [(PKPaletteContentViewAccessibility *)self safeValueForKey:@"additionalOptionsView"];
    v9 = [(PKPaletteContentViewAccessibility *)self safeValueForKey:@"contextualEditingView"];
    v10 = [(PKPaletteContentViewAccessibility *)self safeValueForKey:@"toolAndColorPickerContainerView"];
    v11 = [v10 safeValueForKey:@"lassoToolEditingContainerView"];
    v17 = v5;
    v18 = v4;
    accessibilityElements = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{7, v4, v5, v9, v6, v7, v11, v8}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [accessibilityElements countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(accessibilityElements);
          }

          [*(*(&v19 + 1) + 8 * i) setShouldGroupAccessibilityChildren:1];
        }

        v13 = [accessibilityElements countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v13);
    }
  }

  return accessibilityElements;
}

@end