@interface CHWorkoutDetailFourColumnSplitTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)configureWithSwimmingSplit:(id)split splitIndex:(int64_t)index isLastCell:(BOOL)cell formattingManager:(id)manager;
- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity unit:(id)unit split:(id)split splitIndex:(int64_t)index splitDistance:(double)distance includeHeartRate:(BOOL)rate isLastCell:(BOOL)self0 dataCalculator:(id)self1 formattingManager:(id)self2;
@end

@implementation CHWorkoutDetailFourColumnSplitTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnSplitTableViewCell" hasInstanceMethod:@"configureWithWorkout:workoutActivity:unit:split:splitIndex:splitDistance:includeHeartRate:isLastCell:dataCalculator:formattingManager:" withFullSignature:{"v", "@", "@", "@", "@", "q", "d", "B", "B", "@", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnSplitTableViewCell" hasInstanceMethod:@"configureWithSwimmingSplit:splitIndex:isLastCell:formattingManager:" withFullSignature:{"v", "@", "q", "B", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnSplitTableViewCell" isKindOfClass:@"CHWorkoutDetailFourColumnTableViewCell"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnOneLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnTwoLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnThreeLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnFourLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKWorkoutActivity" hasInstanceMethod:@"fiui_activityType" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKWorkout" hasInstanceMethod:@"fiui_activityType" withFullSignature:{"@", 0}];
}

- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity unit:(id)unit split:(id)split splitIndex:(int64_t)index splitDistance:(double)distance includeHeartRate:(BOOL)rate isLastCell:(BOOL)self0 dataCalculator:(id)self1 formattingManager:(id)self2
{
  rateCopy = rate;
  workoutCopy = workout;
  activityCopy = activity;
  unitCopy = unit;
  splitCopy = split;
  calculatorCopy = calculator;
  managerCopy = manager;
  v60.receiver = self;
  v60.super_class = CHWorkoutDetailFourColumnSplitTableViewCellAccessibility;
  v50 = calculatorCopy;
  v51 = splitCopy;
  v52 = unitCopy;
  [(CHWorkoutDetailFourColumnSplitTableViewCellAccessibility *)&v60 configureWithWorkout:workoutCopy workoutActivity:activityCopy unit:unitCopy split:splitCopy splitIndex:index splitDistance:rateCopy includeHeartRate:distance isLastCell:cell dataCalculator:calculatorCopy formattingManager:managerCopy];
  LOBYTE(location) = 0;
  objc_opt_class();
  v25 = [(CHWorkoutDetailFourColumnSplitTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnOneLabel"];
  v53 = __UIAccessibilityCastAsClass();

  v26 = accessibilityLocalizedString(@"split.number");
  text = [v53 text];
  v28 = [NSString localizedStringWithFormat:v26, text];
  [v53 setAccessibilityLabel:v28];

  LOBYTE(location) = 0;
  objc_opt_class();
  v29 = [(CHWorkoutDetailFourColumnSplitTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
  v30 = __UIAccessibilityCastAsClass();

  v31 = accessibilityLocalizedString(@"time.value");
  text2 = [v30 text];
  v33 = [NSString localizedStringWithFormat:v31, text2];
  [v30 setAccessibilityLabel:v33];

  LOBYTE(location) = 0;
  objc_opt_class();
  v34 = [activityCopy safeValueForKey:@"fiui_activityType"];
  if (v34)
  {
    v35 = __UIAccessibilityCastAsClass();
  }

  else
  {
    v36 = [workoutCopy safeValueForKey:@"fiui_activityType"];
    v35 = __UIAccessibilityCastAsClass();
  }

  if (location == 1)
  {
    goto LABEL_20;
  }

  v48 = managerCopy;
  v49 = workoutCopy;
  location = 0;
  p_location = &location;
  v58 = 0x2020000000;
  v59 = 0;
  v55[1] = _NSConcreteStackBlock;
  v55[2] = 3221225472;
  v55[3] = __194__CHWorkoutDetailFourColumnSplitTableViewCellAccessibility_configureWithWorkout_workoutActivity_unit_split_splitIndex_splitDistance_includeHeartRate_isLastCell_dataCalculator_formattingManager___block_invoke;
  v55[4] = &unk_1C420;
  v55[6] = &location;
  v37 = v35;
  v55[5] = v37;
  AXPerformSafeBlock();
  v38 = *(p_location + 6);

  _Block_object_dispose(&location, 8);
  v39 = v38 ? @"average.speed.value" : @"pace.value";
  v40 = accessibilityLocalizedString(v39);
  LOBYTE(location) = 0;
  v41 = objc_opt_class();
  v42 = [(CHWorkoutDetailFourColumnSplitTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnThreeLabel"];
  v43 = __UIAccessibilityCastAsClass();

  if (location == 1)
  {
    goto LABEL_20;
  }

  if (v38 || ([v43 text], v41 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v41, "containsString:", @"--")))
  {
    text3 = [v43 text];
    if (v38)
    {
      goto LABEL_16;
    }
  }

  else
  {
    text3 = accessibilityLocalizedString(@"no.data");
  }

LABEL_16:
  v45 = [NSString localizedStringWithFormat:v40, text3];
  [v43 setAccessibilityLabel:v45];

  if (rateCopy)
  {
    LOBYTE(location) = 0;
    objc_opt_class();
    v46 = [(CHWorkoutDetailFourColumnSplitTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnFourLabel"];
    v47 = __UIAccessibilityCastAsClass();

    if (location != 1)
    {
      objc_initWeak(&location, v47);
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = __194__CHWorkoutDetailFourColumnSplitTableViewCellAccessibility_configureWithWorkout_workoutActivity_unit_split_splitIndex_splitDistance_includeHeartRate_isLastCell_dataCalculator_formattingManager___block_invoke_2;
      v54[3] = &unk_1C448;
      objc_copyWeak(v55, &location);
      [v47 setAccessibilityLabelBlock:v54];
      objc_destroyWeak(v55);
      objc_destroyWeak(&location);

      goto LABEL_19;
    }

LABEL_20:
    abort();
  }

LABEL_19:
}

uint64_t __194__CHWorkoutDetailFourColumnSplitTableViewCellAccessibility_configureWithWorkout_workoutActivity_unit_split_splitIndex_splitDistance_includeHeartRate_isLastCell_dataCalculator_formattingManager___block_invoke(uint64_t a1)
{
  result = FIUIPaceFormatForWorkoutActivityType();
  *(*(*(a1 + 40) + 8) + 24) = result == 4;
  return result;
}

id __194__CHWorkoutDetailFourColumnSplitTableViewCellAccessibility_configureWithWorkout_workoutActivity_unit_split_splitIndex_splitDistance_includeHeartRate_isLastCell_dataCalculator_formattingManager___block_invoke_2(uint64_t a1)
{
  v2 = accessibilityLocalizedString(@"heart.rate.value");
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained text];
  v5 = v4;
  if (v4)
  {
    v6 = [NSString localizedStringWithFormat:v2, v4];
  }

  else
  {
    v7 = accessibilityLocalizedString(@"no.data");
    v6 = [NSString localizedStringWithFormat:v2, v7];
  }

  return v6;
}

- (void)configureWithSwimmingSplit:(id)split splitIndex:(int64_t)index isLastCell:(BOOL)cell formattingManager:(id)manager
{
  cellCopy = cell;
  splitCopy = split;
  managerCopy = manager;
  v27.receiver = self;
  v27.super_class = CHWorkoutDetailFourColumnSplitTableViewCellAccessibility;
  [(CHWorkoutDetailFourColumnSplitTableViewCellAccessibility *)&v27 configureWithSwimmingSplit:splitCopy splitIndex:index isLastCell:cellCopy formattingManager:managerCopy];
  objc_opt_class();
  v12 = [(CHWorkoutDetailFourColumnSplitTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnOneLabel"];
  v13 = __UIAccessibilityCastAsClass();

  v14 = accessibilityLocalizedString(@"split.number");
  text = [v13 text];
  v16 = [NSString localizedStringWithFormat:v14, text];
  [v13 setAccessibilityLabel:v16];

  objc_opt_class();
  v17 = [(CHWorkoutDetailFourColumnSplitTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
  v18 = __UIAccessibilityCastAsClass();

  v19 = accessibilityLocalizedString(@"distance.value");
  text2 = [v18 text];
  v21 = [NSString localizedStringWithFormat:v19, text2];
  [v18 setAccessibilityLabel:v21];

  objc_opt_class();
  v22 = [(CHWorkoutDetailFourColumnSplitTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnThreeLabel"];
  v23 = __UIAccessibilityCastAsClass();

  v24 = accessibilityLocalizedString(@"pace.value");
  text3 = [v23 text];
  v26 = [NSString localizedStringWithFormat:v24, text3];
  [v23 setAccessibilityLabel:v26];
}

@end