@interface SUUIProductPageFeaturesViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation SUUIProductPageFeaturesViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIProductPageFeaturesView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SUUIProductPageFeaturesView" hasInstanceVariable:@"_featureViews" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"SUUIProductPageFeaturesView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
}

- (id)accessibilityElements
{
  v22 = *MEMORY[0x29EDCA608];
  array = [(SUUIProductPageFeaturesViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v4 = [(SUUIProductPageFeaturesViewAccessibility *)self safeValueForKey:@"_titleLabel"];
    [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
    v14 = v4;
    [array axSafelyAddObject:v4];
    selfCopy = self;
    [(SUUIProductPageFeaturesViewAccessibility *)self safeValueForKey:@"_featureViews"];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = v20 = 0u;
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 safeValueForKey:@"title"];
          v11 = [v9 safeValueForKey:@"subtitle"];
          v12 = __UIAXStringForVariables();
          [v9 setIsAccessibilityElement:{1, v11, @"__AXStringForVariablesSentinel"}];
          [v9 setAccessibilityLabel:v12];
          [array addObject:v9];
        }

        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    [(SUUIProductPageFeaturesViewAccessibility *)selfCopy _accessibilitySetRetainedValue:array forKey:*MEMORY[0x29EDC7620]];
  }

  return array;
}

@end