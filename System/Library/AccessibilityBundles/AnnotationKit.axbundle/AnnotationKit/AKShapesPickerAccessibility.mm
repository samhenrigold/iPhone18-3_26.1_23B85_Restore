@interface AKShapesPickerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setShapes:(id)shapes;
@end

@implementation AKShapesPickerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKShapesPicker" hasInstanceMethod:@"setShapes:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"AKShapesPicker" isKindOfClass:@"AKModernToolbarPicker"];
  [validationsCopy validateClass:@"AKModernToolbarPicker" hasInstanceMethod:@"stackview" withFullSignature:{"@", 0}];
}

- (void)setShapes:(id)shapes
{
  v4.receiver = self;
  v4.super_class = AKShapesPickerAccessibility;
  [(AKShapesPickerAccessibility *)&v4 setShapes:shapes];
  [(AKShapesPickerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v18 = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = AKShapesPickerAccessibility;
  [(AKShapesPickerAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(AKShapesPickerAccessibility *)self safeUIViewForKey:@"stackview", 0];
  subviews = [v3 subviews];

  v5 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 tag] - 764000;
        if (v10 <= 7 && ((0xA5u >> v10) & 1) != 0)
        {
          v11 = accessibilityLocalizedString(off_29F29D510[v10]);
          [v9 setAccessibilityLabel:v11];
        }
      }

      v6 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }
}

@end