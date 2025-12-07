@interface FitDayCellLayerAccessibility
+ (id)activityCellImageWithDiameter:(double)diameter thickness:(double)thickness calories:(double)calories briskMinutes:(double)minutes hourlyBreak:(double)break fadeInnerRings:(BOOL)rings fadeAll:(BOOL)all;
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation FitDayCellLayerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FitDayCellLayer" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FitDayCellLayer" hasInstanceMethod:@"isToday" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MonthWeekView"];
  [validationsCopy validateClass:@"FitDayCellLayer" hasClassMethod:@"activityCellImageWithDiameter: thickness: calories: briskMinutes: hourlyBreak: fadeInnerRings: fadeAll:" withFullSignature:{"@", "d", "d", "d", "d", "d", "B", "B", 0}];
}

+ (id)activityCellImageWithDiameter:(double)diameter thickness:(double)thickness calories:(double)calories briskMinutes:(double)minutes hourlyBreak:(double)break fadeInnerRings:(BOOL)rings fadeAll:(BOOL)all
{
  allCopy = all;
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___FitDayCellLayerAccessibility;
  v10 = objc_msgSendSuper2(&v13, "activityCellImageWithDiameter:thickness:calories:briskMinutes:hourlyBreak:fadeInnerRings:fadeAll:", rings, diameter, thickness, calories, minutes, break);
  if (allCopy)
  {
    v11 = accessibilityLocalizedString(@"no.data");
    [v10 setAccessibilityLabel:v11];
  }

  return v10;
}

- (id)accessibilityLabel
{
  if ([(FitDayCellLayerAccessibility *)self safeBoolForKey:@"isToday"])
  {
    v3 = accessibilityLocalizedString(@"today");
  }

  else
  {
    v3 = 0;
  }

  v4 = [(FitDayCellLayerAccessibility *)self safeValueForKey:@"date"];
  v5 = __UIAccessibilitySafeClass();

  accessibilityContainer = [(FitDayCellLayerAccessibility *)self accessibilityContainer];
  AXSafeClassFromString();
  objc_opt_isKindOfClass();

  v9 = AXDateStringForFormat();
  v7 = __UIAXStringForVariables();

  return v7;
}

- (id)accessibilityValue
{
  v2 = [(FitDayCellLayerAccessibility *)self safeValueForKey:@"ringLayer"];
  v3 = __UIAccessibilitySafeClass();

  contents = [v3 contents];
  accessibilityLabel = [contents accessibilityLabel];

  return accessibilityLabel;
}

@end