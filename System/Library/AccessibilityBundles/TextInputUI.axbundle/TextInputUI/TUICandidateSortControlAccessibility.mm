@interface TUICandidateSortControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)layoutSubviews;
@end

@implementation TUICandidateSortControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TUICandidateSortControl" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"TUICandidateSortControl" hasInstanceMethod:@"segmentedControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UISegmentedControl" hasInstanceVariable:@"_segments" withType:"NSMutableArray"];
}

- (void)layoutSubviews
{
  v16 = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = TUICandidateSortControlAccessibility;
  [(TUICandidateSortControlAccessibility *)&v14 layoutSubviews];
  v3 = UIAccessibilityLanguageForCurrentInputMode();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(TUICandidateSortControlAccessibility *)self safeValueForKey:@"segmentedControl", 0];
  v5 = [v4 safeArrayForKey:@"_segments"];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setAccessibilityLanguage:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

@end