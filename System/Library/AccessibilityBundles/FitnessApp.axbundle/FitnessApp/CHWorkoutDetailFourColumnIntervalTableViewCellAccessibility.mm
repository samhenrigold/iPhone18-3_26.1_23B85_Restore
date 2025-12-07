@interface CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)configureWithInterval:(id)interval index:(int64_t)index workout:(id)workout activityType:(id)type activityMoveMode:(int64_t)mode isLastCell:(BOOL)cell formattingManager:(id)manager;
@end

@implementation CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnIntervalTableViewCell" hasInstanceMethod:@"configureWithInterval:index:workout:activityType:activityMoveMode:isLastCell:formattingManager:" withFullSignature:{"v", "@", "q", "@", "@", "q", "B", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnIntervalTableViewCell" isKindOfClass:@"CHWorkoutDetailFourColumnTableViewCell"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnOneLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnTwoLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnThreeLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnFourLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"supportsDistanceForWorkout:workoutActivity:" withFullSignature:{"B", "@", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"fitnessUIFormattingManager" withFullSignature:{"@", 0}];
}

- (void)configureWithInterval:(id)interval index:(int64_t)index workout:(id)workout activityType:(id)type activityMoveMode:(int64_t)mode isLastCell:(BOOL)cell formattingManager:(id)manager
{
  cellCopy = cell;
  intervalCopy = interval;
  workoutCopy = workout;
  typeCopy = type;
  managerCopy = manager;
  v58.receiver = self;
  v58.super_class = CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility;
  [(CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility *)&v58 configureWithInterval:intervalCopy index:index workout:workoutCopy activityType:typeCopy activityMoveMode:mode isLastCell:cellCopy formattingManager:managerCopy];
  if (intervalCopy)
  {
    v51 = workoutCopy;
    LOBYTE(v54) = 0;
    objc_opt_class();
    v19 = [(CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnOneLabel"];
    v20 = __UIAccessibilityCastAsClass();

    v21 = typeCopy;
    v22 = accessibilityLocalizedString(@"interval.number");
    text = [v20 text];
    v24 = [NSString localizedStringWithFormat:v22, text];
    v50 = v20;
    [v20 setAccessibilityLabel:v24];

    LOBYTE(v54) = 0;
    objc_opt_class();
    v25 = [(CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnThreeLabel"];
    v26 = __UIAccessibilityCastAsClass();

    v27 = accessibilityLocalizedString(@"time.value");
    text2 = [v26 text];
    v29 = [NSString localizedStringWithFormat:v27, text2];
    v49 = v26;
    [v26 setAccessibilityLabel:v29];

    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    LOBYTE(v57) = 0;
    v30 = managerCopy;
    workoutCopy = v51;
    v53 = v51;
    AXPerformSafeBlock();
    LODWORD(v29) = *(v55 + 24);

    _Block_object_dispose(&v54, 8);
    typeCopy = v21;
    if (v29 == 1)
    {
      LOBYTE(v54) = 0;
      objc_opt_class();
      v31 = [(CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
      v32 = __UIAccessibilityCastAsClass();

      if (v54 != 1)
      {
        v33 = accessibilityLocalizedString(@"distance.value");
        text3 = [v32 text];
        v35 = [NSString localizedStringWithFormat:v33, text3];
        [v32 setAccessibilityLabel:v35];

        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v57 = 0;
        v52 = v21;
        AXPerformSafeBlock();
        v36 = *(v55 + 6);

        _Block_object_dispose(&v54, 8);
        v37 = v36 ? @"average.speed.value" : @"pace.value";
        localizedLongActiveEnergyUnitString = accessibilityLocalizedString(v37);
        LOBYTE(v54) = 0;
        v39 = objc_opt_class();
        v40 = [(CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnFourLabel"];
        v41 = __UIAccessibilityCastAsClass();

        if (v54 != 1)
        {
          if (v36 || ([v41 text], v39 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v39, "containsString:", @"--")))
          {
            text4 = [v41 text];
            if (v36)
            {
LABEL_19:
              text5 = [NSString localizedStringWithFormat:localizedLongActiveEnergyUnitString, text4];
              [v41 setAccessibilityLabel:text5];
              goto LABEL_20;
            }
          }

          else
          {
            text4 = accessibilityLocalizedString(@"no.data");
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      v43 = v49;
      v44 = v50;
      if (mode != 1)
      {
LABEL_21:

        goto LABEL_22;
      }

      LOBYTE(v54) = 0;
      objc_opt_class();
      v45 = [v30 safeValueForKey:@"fitnessUIFormattingManager"];
      v32 = __UIAccessibilityCastAsClass();

      if (v54 != 1)
      {
        localizedLongActiveEnergyUnitString = [v32 localizedLongActiveEnergyUnitString];
        LOBYTE(v54) = 0;
        objc_opt_class();
        v46 = [(CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
        v41 = __UIAccessibilityCastAsClass();

        if (v54 != 1)
        {
          text4 = accessibilityLocalizedString(@"energy.value");
          text5 = [v41 text];
          v48 = [NSString localizedStringWithFormat:text4, localizedLongActiveEnergyUnitString, text5];
          [v41 setAccessibilityLabel:v48];

LABEL_20:
          v43 = v49;
          v44 = v50;
          workoutCopy = v51;
          goto LABEL_21;
        }
      }
    }

    abort();
  }

LABEL_22:
}

id __158__CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility_configureWithInterval_index_workout_activityType_activityMoveMode_isLastCell_formattingManager___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) supportsDistanceForWorkout:*(a1 + 40) workoutActivity:0];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __158__CHWorkoutDetailFourColumnIntervalTableViewCellAccessibility_configureWithInterval_index_workout_activityType_activityMoveMode_isLastCell_formattingManager___block_invoke_2(uint64_t a1)
{
  result = FIUIPaceFormatForWorkoutActivityType();
  *(*(*(a1 + 40) + 8) + 24) = result == 4;
  return result;
}

@end