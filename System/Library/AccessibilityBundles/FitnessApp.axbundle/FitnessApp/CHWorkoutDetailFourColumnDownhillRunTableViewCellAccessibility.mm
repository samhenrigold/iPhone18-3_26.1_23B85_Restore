@interface CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)configureWithDownhillRun:(id)run downhillRunIndex:(int64_t)index activityType:(id)type isLastCell:(BOOL)cell formattingManager:(id)manager;
- (void)configureWithDownhillRunsStats:(id)stats activityType:(id)type formattingManager:(id)manager;
@end

@implementation CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnDownhillRunTableViewCell" hasInstanceMethod:@"configureWithDownhillRunsStats:activityType:formattingManager:" withFullSignature:{"v", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnDownhillRunTableViewCell" hasInstanceMethod:@"configureWithDownhillRun:downhillRunIndex:activityType:isLastCell:formattingManager:" withFullSignature:{"v", "@", "q", "@", "B", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnDownhillRunTableViewCell" isKindOfClass:@"CHWorkoutDetailFourColumnTableViewCell"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnOneLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnTwoLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnThreeLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnFourLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (void)configureWithDownhillRunsStats:(id)stats activityType:(id)type formattingManager:(id)manager
{
  statsCopy = stats;
  typeCopy = type;
  managerCopy = manager;
  v27.receiver = self;
  v27.super_class = CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility;
  [(CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility *)&v27 configureWithDownhillRunsStats:statsCopy activityType:typeCopy formattingManager:managerCopy];
  objc_opt_class();
  v11 = [(CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
  v12 = __UIAccessibilityCastAsClass();

  v26 = statsCopy;
  v13 = accessibilityLocalizedString(@"time.value");
  text = [v12 text];
  v15 = [NSString localizedStringWithFormat:v13, text];
  [v12 setAccessibilityLabel:v15];

  objc_opt_class();
  v16 = [(CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnThreeLabel"];
  v17 = __UIAccessibilityCastAsClass();

  v18 = accessibilityLocalizedString(@"distance.value");
  text2 = [v17 text];
  v20 = [NSString localizedStringWithFormat:v18, text2];
  [v17 setAccessibilityLabel:v20];

  objc_opt_class();
  v21 = [(CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnFourLabel"];
  v22 = __UIAccessibilityCastAsClass();

  v23 = accessibilityLocalizedString(@"vertical.value");
  text3 = [v22 text];
  v25 = [NSString localizedStringWithFormat:v23, text3];
  [v22 setAccessibilityLabel:v25];
}

- (void)configureWithDownhillRun:(id)run downhillRunIndex:(int64_t)index activityType:(id)type isLastCell:(BOOL)cell formattingManager:(id)manager
{
  cellCopy = cell;
  runCopy = run;
  typeCopy = type;
  managerCopy = manager;
  v35.receiver = self;
  v35.super_class = CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility;
  [(CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility *)&v35 configureWithDownhillRun:runCopy downhillRunIndex:index activityType:typeCopy isLastCell:cellCopy formattingManager:managerCopy];
  if (runCopy)
  {
    objc_opt_class();
    v15 = [(CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnOneLabel"];
    v16 = __UIAccessibilityCastAsClass();

    v17 = accessibilityLocalizedString(@"run.number");
    text = [v16 text];
    v19 = [NSString localizedStringWithFormat:v17, text];
    [v16 setAccessibilityLabel:v19];

    objc_opt_class();
    v20 = [(CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
    v21 = __UIAccessibilityCastAsClass();

    v22 = accessibilityLocalizedString(@"time.value");
    text2 = [v21 text];
    v24 = [NSString localizedStringWithFormat:v22, text2];
    [v21 setAccessibilityLabel:v24];

    objc_opt_class();
    v25 = [(CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnThreeLabel"];
    v26 = __UIAccessibilityCastAsClass();

    v27 = accessibilityLocalizedString(@"distance.value");
    text3 = [v26 text];
    v29 = [NSString localizedStringWithFormat:v27, text3];
    [v26 setAccessibilityLabel:v29];

    objc_opt_class();
    v30 = [(CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnFourLabel"];
    v31 = __UIAccessibilityCastAsClass();

    v32 = accessibilityLocalizedString(@"vertical.value");
    text4 = [v31 text];
    v34 = [NSString localizedStringWithFormat:v32, text4];
    [v31 setAccessibilityLabel:v34];
  }
}

@end