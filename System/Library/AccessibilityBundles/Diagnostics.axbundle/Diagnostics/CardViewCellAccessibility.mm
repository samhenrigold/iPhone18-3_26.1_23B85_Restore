@interface CardViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation CardViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Diagnostics.CardViewCell" hasInstanceMethod:@"stackView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Diagnostics.CardStackSubviewContainer"];
  [validationsCopy validateClass:@"Diagnostics.CardStackSubviewContainer" hasInstanceMethod:@"containedView" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = 0;
  objc_opt_class();
  v3 = [(CardViewCellAccessibility *)self safeValueForKey:@"stackView"];
  v4 = __UIAccessibilityCastAsClass();

  array = [MEMORY[0x29EDB8DE8] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = v4;
  arrangedSubviews = [v4 arrangedSubviews];
  v7 = [arrangedSubviews countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        MEMORY[0x29C2D3B90](@"Diagnostics.CardStackSubviewContainer");
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 safeValueForKey:@"containedView"];
          if (objc_opt_respondsToSelector())
          {
            subviewsForStackViewElement = [v12 subviewsForStackViewElement];
            [array axSafelyAddObjectsFromArray:subviewsForStackViewElement];
          }
        }
      }

      v8 = [arrangedSubviews countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  return array;
}

@end