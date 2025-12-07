@interface HKMonthWeekViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation HKMonthWeekViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HKCalendarWeekView" hasInstanceMethod:@"monthTitleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKMonthWeekView" isKindOfClass:@"HKCalendarWeekView"];
  [validationsCopy validateClass:@"_HKMonthTitleView" hasInstanceMethod:@"monthTitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = [(HKMonthWeekViewAccessibility *)self safeValueForKey:@"monthTitleView"];
  v5 = [v4 safeValueForKey:@"monthTitle"];

  if ([v5 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v5];
    [v5 setAccessibilityContainer:self];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(HKMonthWeekViewAccessibility *)self safeValueForKey:@"layer", 0];
  v7 = [v6 safeValueForKey:@"sublayers"];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        MEMORY[0x29C2D9130](@"HKMonthDayCell");
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v12];
          [v12 setAccessibilityContainer:self];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v3;
}

@end