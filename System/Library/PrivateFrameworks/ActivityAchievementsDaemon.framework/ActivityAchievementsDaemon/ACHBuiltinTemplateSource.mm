@interface ACHBuiltinTemplateSource
- (id)localizationBundleURLForTemplate:(id)template;
- (id)propertyListBundleURLForTemplate:(id)template;
- (id)resourceBundleURLForTemplate:(id)template;
- (void)templatesForDate:(id)date completion:(id)completion;
@end

@implementation ACHBuiltinTemplateSource

- (void)templatesForDate:(id)date completion:(id)completion
{
  v107[16] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  v42 = objc_alloc(MEMORY[0x277CBEB58]);
  v93 = NewMoveGoalAchievedTemplate();
  v95 = DailyMoveRecordTemplate();
  v89 = NewMoveTimeGoalAchievedTemplate();
  v91 = DailyMoveTimeRecordTemplate();
  v85 = DailyExerciseRecordTemplate();
  v87 = LongestMoveStreakTemplate();
  v81 = MoveGoal200PercentTemplate();
  v83 = MoveGoal300PercentTemplate();
  v79 = MoveGoal400PercentTemplate();
  v80 = PerfectWeekMoveTemplate();
  v77 = PerfectWeekExerciseTemplate();
  v78 = PerfectWeekStandTemplate();
  v75 = PerfectWeekAllTemplate();
  v76 = HundredMoveGoals();
  v73 = ThreeHundredSixtyFiveMoveGoals();
  v74 = FiveHundredMoveGoals();
  v71 = ThousandMoveGoals();
  v72 = TwelveFiftyMoveGoals();
  v69 = FifteenHundredMoveGoals();
  v70 = SeventeenFiftyMoveGoals();
  v67 = TwoThousandMoveGoals();
  v68 = TwentyTwoFiftyMoveGoals();
  v65 = TwentyFiveHundredMoveGoals();
  v66 = TwentySevenFiftyMoveGoals();
  v63 = ThreeThousandMoveGoals();
  v64 = ThreeThousandTwoHundredFiftyMoveGoals();
  v61 = ThreeThousandFiveHundredMoveGoals();
  v62 = ThreeThousandSevenHundredFiftyMoveGoals();
  v59 = FourThousandMoveGoals();
  v60 = SevenWorkoutWeekTemplate();
  v58 = FiftyMilesCyclingWorkout();
  v57 = FiftyKilometersCyclingWorkout();
  v56 = OneHundredMilesCyclingWorkout();
  v55 = OneHundredKilometersCyclingWorkout();
  v54 = HalfMarathonWorkout();
  v53 = WheelchairHalfMarathonWorkout();
  v52 = FastestHalfMarathonWorkout();
  v51 = FastestWheelchairHalfMarathonWorkout();
  v50 = MarathonWorkout();
  v49 = WheelchairMarathonWorkout();
  v48 = FastestMarathonWorkout();
  v47 = FastestWheelchairMarathonWorkout();
  v46 = DuathlonWorkout();
  v45 = SprintTriathlonWorkout();
  v5 = FiftyKilometerTriathlonWorkout();
  v6 = HalfDistanceTriathlonWorkout();
  v7 = FullDistanceTriathlonWorkout();
  v8 = Best5KDuration();
  v41 = Best10KDuration();
  v9 = BestWheelchair5KDuration();
  v10 = BestWheelchair10KDuration();
  v11 = FiveKilometerWorkout();
  v12 = TenKilometerWorkout();
  v13 = FiveKilometerWheelchairWorkout();
  v40 = TenKilometerWheelchairWorkout();
  v14 = [v42 initWithObjects:{v93, v95, v89, v91, v85, v87, v81, v83, v79, v80, v77, v78, v75, v76, v73, v74, v71, v72, v69, v70, v67, v68, v65, v66, v63, v64, v61, v62, v59, v60, v58, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v47, v46, v45, v5, v6, v7, v8, v41, v9, v10, v11, v12, v13, v40, 0}];

  if (_os_feature_enabled_impl())
  {
    v96 = HundredAllGoals();
    v107[0] = v96;
    v94 = ThreeHundredSixtyFiveAllGoals();
    v107[1] = v94;
    v92 = FiveHundredAllGoals();
    v107[2] = v92;
    v90 = ThousandAllGoals();
    v107[3] = v90;
    v88 = TwelveFiftyAllGoals();
    v107[4] = v88;
    v86 = FifteenHundredAllGoals();
    v107[5] = v86;
    v84 = SeventeenFiftyAllGoals();
    v107[6] = v84;
    v82 = TwoThousandAllGoals();
    v107[7] = v82;
    v15 = TwentyTwoFiftyAllGoals();
    v107[8] = v15;
    v16 = TwentyFiveHundredAllGoals();
    v107[9] = v16;
    v17 = TwentySevenFiftyAllGoals();
    v107[10] = v17;
    v18 = ThreeThousandAllGoals();
    v107[11] = v18;
    v19 = ThreeThousandTwoHundredFiftyAllGoals();
    v107[12] = v19;
    v20 = ThreeThousandFiveHundredAllGoals();
    v107[13] = v20;
    v21 = ThreeThousandSevenHundredFiftyAllGoals();
    v107[14] = v21;
    v22 = FourThousandAllGoals();
    v107[15] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:16];
    [v14 addObjectsFromArray:v23];
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v24 = *MEMORY[0x277CE8B78];
  v25 = [v24 countByEnumeratingWithState:&v101 objects:v106 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v102;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v102 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v101 + 1) + 8 * i);
        v30 = objc_autoreleasePoolPush();
        [v29 unsignedIntegerValue];
        v31 = FirstWorkoutTemplateForWorkoutActivityType();
        [v14 addObject:v31];

        v32 = BestWorkoutEnergyBurnedTemplateForWorkoutActivityType();
        [v14 addObject:v32];

        objc_autoreleasePoolPop(v30);
      }

      v26 = [v24 countByEnumeratingWithState:&v101 objects:v106 count:16];
    }

    while (v26);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v33 = [&unk_283555C98 countByEnumeratingWithState:&v97 objects:v105 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v98;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v98 != v35)
        {
          objc_enumerationMutation(&unk_283555C98);
        }

        [*(*(&v97 + 1) + 8 * j) unsignedIntegerValue];
        v37 = BestWorkoutDistanceTemplateForWorkoutActivityType();
        [v14 addObject:v37];
      }

      v34 = [&unk_283555C98 countByEnumeratingWithState:&v97 objects:v105 count:16];
    }

    while (v34);
  }

  v38 = BestWorkoutElevationGainedTemplateForWorkoutActivityType();
  [v14 addObject:v38];

  if (completionCopy)
  {
    v39 = [v14 copy];
    (*(completionCopy + 2))(completionCopy, v39, 0, 0);
  }
}

- (id)localizationBundleURLForTemplate:(id)template
{
  uniqueName = [template uniqueName];
  v4 = [*MEMORY[0x277CE8C50] stringByAppendingPathComponent:uniqueName];
  v5 = [v4 stringByAppendingPathComponent:@"localization"];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];

  return v6;
}

- (id)resourceBundleURLForTemplate:(id)template
{
  uniqueName = [template uniqueName];
  v4 = [*MEMORY[0x277CE8C50] stringByAppendingPathComponent:uniqueName];
  v5 = [v4 stringByAppendingPathComponent:@"badgemodel"];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];

  return v6;
}

- (id)propertyListBundleURLForTemplate:(id)template
{
  uniqueName = [template uniqueName];
  v4 = [*MEMORY[0x277CE8C50] stringByAppendingPathComponent:uniqueName];
  v5 = [v4 stringByAppendingPathComponent:@"badgeproperties"];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];

  return v6;
}

@end