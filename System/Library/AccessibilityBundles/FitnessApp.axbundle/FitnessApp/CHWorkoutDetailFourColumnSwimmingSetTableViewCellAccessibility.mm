@interface CHWorkoutDetailFourColumnSwimmingSetTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)configureWithSwimmingSet:(id)set index:(int64_t)index isLastCell:(BOOL)cell formattingManager:(id)manager;
@end

@implementation CHWorkoutDetailFourColumnSwimmingSetTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnSwimmingSetTableViewCell" hasInstanceMethod:@"configureWithSwimmingSet:index:isLastCell:formattingManager:" withFullSignature:{"v", "@", "q", "B", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnSwimmingSetTableViewCell" isKindOfClass:@"CHWorkoutDetailFourColumnTableViewCell"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnOneLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnTwoLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnThreeLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnFourLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (void)configureWithSwimmingSet:(id)set index:(int64_t)index isLastCell:(BOOL)cell formattingManager:(id)manager
{
  cellCopy = cell;
  setCopy = set;
  managerCopy = manager;
  v32.receiver = self;
  v32.super_class = CHWorkoutDetailFourColumnSwimmingSetTableViewCellAccessibility;
  [(CHWorkoutDetailFourColumnSwimmingSetTableViewCellAccessibility *)&v32 configureWithSwimmingSet:setCopy index:index isLastCell:cellCopy formattingManager:managerCopy];
  if (setCopy)
  {
    objc_opt_class();
    v12 = [(CHWorkoutDetailFourColumnSwimmingSetTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnOneLabel"];
    v13 = __UIAccessibilityCastAsClass();

    v14 = accessibilityLocalizedString(@"set.number");
    text = [v13 text];
    v16 = [NSString localizedStringWithFormat:v14, text];
    [v13 setAccessibilityLabel:v16];

    objc_opt_class();
    v17 = [(CHWorkoutDetailFourColumnSwimmingSetTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
    v18 = __UIAccessibilityCastAsClass();

    v19 = accessibilityLocalizedString(@"stroke.value");
    text2 = [v18 text];
    v21 = [NSString localizedStringWithFormat:v19, text2];
    [v18 setAccessibilityLabel:v21];

    objc_opt_class();
    v22 = [(CHWorkoutDetailFourColumnSwimmingSetTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnThreeLabel"];
    v23 = __UIAccessibilityCastAsClass();

    v24 = accessibilityLocalizedString(@"distance.value");
    text3 = [v23 text];
    v26 = [NSString localizedStringWithFormat:v24, text3];
    [v23 setAccessibilityLabel:v26];

    objc_opt_class();
    v27 = [(CHWorkoutDetailFourColumnSwimmingSetTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnFourLabel"];
    v28 = __UIAccessibilityCastAsClass();

    v29 = accessibilityLocalizedString(@"pace.value");
    text4 = [v28 text];
    v31 = [NSString localizedStringWithFormat:v29, text4];
    [v28 setAccessibilityLabel:v31];
  }
}

@end