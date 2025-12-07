@interface PlatformListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
@end

@implementation PlatformListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SwiftUI.AccessibilityNode"];
  [validationsCopy validateClass:@"SwiftUI.ListTableViewCell" isKindOfClass:@"UITableViewCell"];
}

- (id)accessibilityLabel
{
  v29 = *MEMORY[0x29EDCA608];
  v27.receiver = self;
  v27.super_class = PlatformListCellAccessibility;
  accessibilityLabel = [(PlatformListCellAccessibility *)&v27 accessibilityLabel];
  if (![accessibilityLabel length])
  {
    v26 = 0;
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    contentView = [v3 contentView];
    subviews = [contentView subviews];
    firstObject = [subviews firstObject];
    v7 = [firstObject _accessibilityFindUnsortedDescendantsPassingTest:&__block_literal_global_0];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      v12 = MEMORY[0x29EDBD918];
      do
      {
        v13 = 0;
        v14 = accessibilityLabel;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v22 + 1) + 8 * v13);
          accessibilityLabel2 = [v15 accessibilityLabel];
          accessibilityLanguage = [v15 accessibilityLanguage];
          if (accessibilityLanguage)
          {
            v18 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityLabel2];

            [v18 setAttribute:accessibilityLanguage forKey:*v12];
            accessibilityLabel2 = v18;
          }

          v20 = accessibilityLabel2;
          v21 = @"__AXStringForVariablesSentinel";
          accessibilityLabel = __UIAXStringForVariables();

          ++v13;
          v14 = accessibilityLabel;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:{16, accessibilityLabel2, @"__AXStringForVariablesSentinel"}];
      }

      while (v10);
    }
  }

  return accessibilityLabel;
}

- (CGPoint)accessibilityActivationPoint
{
  v18 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  contentView = [v3 contentView];
  subviews = [contentView subviews];
  firstObject = [subviews firstObject];
  accessibilityElements = [firstObject accessibilityElements];

  if ([accessibilityElements count] == 1)
  {
    firstObject2 = [accessibilityElements firstObject];
    [firstObject2 accessibilityActivationPoint];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PlatformListCellAccessibility;
    [(PlatformListCellAccessibility *)&v17 accessibilityActivationPoint];
    v10 = v13;
    v12 = v14;
  }

  v15 = v10;
  v16 = v12;
  result.y = v16;
  result.x = v15;
  return result;
}

@end