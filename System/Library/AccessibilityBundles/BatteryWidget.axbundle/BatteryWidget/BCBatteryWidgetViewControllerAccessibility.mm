@interface BCBatteryWidgetViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_updateRowView:(id)view withDevice:(id)device animated:(BOOL)animated;
@end

@implementation BCBatteryWidgetViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BCBatteryWidgetViewController" hasInstanceMethod:@"_updateRowView:withDevice:animated:" withFullSignature:{"v", "@", "@", "B", 0}];
  [validationsCopy validateClass:@"BCBatteryWidgetRowView" hasInstanceMethod:@"glyphImage" withFullSignature:{"@", 0}];
}

- (void)_updateRowView:(id)view withDevice:(id)device animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = BCBatteryWidgetViewControllerAccessibility;
  [(BCBatteryWidgetViewControllerAccessibility *)&v16 _updateRowView:viewCopy withDevice:deviceCopy animated:animatedCopy];
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  parts = [v10 parts];
  if (!parts)
  {
    goto LABEL_12;
  }

  v12 = parts & 3;
  if (v12 == 1)
  {
    v13 = @"battery.center.left.airpod";
    goto LABEL_10;
  }

  if (v12 != 2)
  {
    if ((parts & 4) != 0)
    {
      v13 = @"battery.center.case.airpod";
      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v13 = @"battery.center.combined.airpod";
      goto LABEL_10;
    }

    if ((parts & 8) != 0)
    {
      v13 = @"battery.center.single.headphone";
      goto LABEL_10;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v13 = @"battery.center.right.airpod";
LABEL_10:
  v14 = accessibilityLocalizedString(v13);
LABEL_13:
  v15 = [viewCopy safeValueForKey:@"glyphImage"];
  [v15 setAccessibilityLabel:v14];
}

@end