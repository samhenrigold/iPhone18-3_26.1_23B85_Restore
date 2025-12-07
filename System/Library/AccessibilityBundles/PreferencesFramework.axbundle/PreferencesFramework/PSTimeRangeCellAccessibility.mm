@interface PSTimeRangeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PSTimeRangeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PSTimeRangeCell" hasInstanceVariable:@"_fromTitle" withType:"UILabel"];
  [validationsCopy validateClass:@"PSTimeRangeCell" hasInstanceVariable:@"_fromTime" withType:"UILabel"];
  [validationsCopy validateClass:@"PSTimeRangeCell" hasInstanceVariable:@"_toTitle" withType:"UILabel"];
  [validationsCopy validateClass:@"PSTimeRangeCell" hasInstanceVariable:@"_toTime" withType:"UILabel"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PSTimeRangeCellAccessibility;
  [(PSTimeRangeCellAccessibility *)&v3 accessibilityTraits];
  return _AXTraitsRemoveTrait();
}

- (id)accessibilityLabel
{
  v3 = [(PSTimeRangeCellAccessibility *)self safeValueForKey:@"_fromTitle"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(PSTimeRangeCellAccessibility *)self safeValueForKey:@"_fromTime"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v7 = [(PSTimeRangeCellAccessibility *)self safeValueForKey:@"_toTitle"];
  accessibilityLabel3 = [v7 accessibilityLabel];
  v9 = [(PSTimeRangeCellAccessibility *)self safeValueForKey:@"_toTime"];
  accessibilityLabel4 = [v9 accessibilityLabel];
  v10 = __UIAXStringForVariables();

  return v10;
}

@end