@interface ACSportsBaseballScoreboardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation ACSportsBaseballScoreboardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ACSportsBaseballScoreboardView" isKindOfClass:@"ACSportsPeriodicScoreboardView"];
  [validationsCopy validateClass:@"ACSportsBaseballScoreboardView" hasInstanceVariable:@"_hitsLineScoreView" withType:"ACSportsMatchupLineScoreView"];
  [validationsCopy validateClass:@"ACSportsBaseballScoreboardView" hasInstanceVariable:@"_errorsLineScoreView" withType:"ACSportsMatchupLineScoreView"];
  [validationsCopy validateClass:@"ACSportsBaseballScoreboardView" hasInstanceMethod:@"matchup" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v20 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = ACSportsBaseballScoreboardViewAccessibility;
  accessibilityElements = [(ACSportsBaseballScoreboardViewAccessibility *)&v18 accessibilityElements];
  v4 = [accessibilityElements mutableCopy];

  v5 = [(ACSportsBaseballScoreboardViewAccessibility *)self safeValueForKey:@"_hitsLineScoreView"];
  v6 = [(ACSportsBaseballScoreboardViewAccessibility *)self safeValueForKey:@"_errorsLineScoreView"];
  [v5 _accessibilitySetRetainedValue:@"hits" forKey:@"AXSportsScorePeriodType"];
  [v6 _accessibilitySetRetainedValue:@"errors" forKey:@"AXSportsScorePeriodType"];
  [v4 axSafelyAddObject:v5];
  [v4 axSafelyAddObject:v6];
  v7 = [(ACSportsBaseballScoreboardViewAccessibility *)self safeValueForKey:@"matchup"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * i) _accessibilitySetRetainedValue:v7 forKey:{@"AXSportsMatchup", v14}];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

  return v8;
}

@end