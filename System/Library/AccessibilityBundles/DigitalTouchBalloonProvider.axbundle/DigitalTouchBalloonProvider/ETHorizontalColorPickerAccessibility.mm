@interface ETHorizontalColorPickerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setDimmed:(BOOL)dimmed excludeSelectedColor:(BOOL)color animated:(BOOL)animated;
@end

@implementation ETHorizontalColorPickerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ETHorizontalColorPicker" hasProperty:@"paletteCircles" withType:"@"];
  [validationsCopy validateClass:@"ETHorizontalColorPicker" hasInstanceMethod:@"setDimmed:excludeSelectedColor:animated:" withFullSignature:{"v", "B", "B", "B", 0}];
}

- (void)setDimmed:(BOOL)dimmed excludeSelectedColor:(BOOL)color animated:(BOOL)animated
{
  dimmedCopy = dimmed;
  v21 = *MEMORY[0x29EDCA608];
  v19.receiver = self;
  v19.super_class = ETHorizontalColorPickerAccessibility;
  [(ETHorizontalColorPickerAccessibility *)&v19 setDimmed:dimmed excludeSelectedColor:color animated:animated];
  v18 = 0;
  objc_opt_class();
  v7 = [(ETHorizontalColorPickerAccessibility *)self safeValueForKey:@"paletteCircles"];
  v8 = __UIAccessibilityCastAsClass();

  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * i) setIsAccessibilityElement:{!dimmedCopy, v14}];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v11);
  }
}

@end