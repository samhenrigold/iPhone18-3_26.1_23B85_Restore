@interface NLWorkoutAlertGoalProgress
+ (id)goalProgressAlertWithGoal:(id)goal distanceType:(unint64_t)type alertType:(int64_t)alertType currentValue:(double)value;
- (id)_localizedDescriptionForProModeWithUnitStyle:(unint64_t)style formattingManager:(id)manager;
- (id)description;
- (id)goalCompletionStringWithUnitStyle:(unint64_t)style decimalTrimmingMode:(unint64_t)mode formattingManager:(id)manager textCase:(unint64_t)case;
- (id)goalProgressString;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (id)spokenUserDataWithFormattingManager:(id)manager;
- (unint64_t)optimalUnitStyleFittingWidth:(double)width withFont:(id)font formattingManager:(id)manager;
@end

@implementation NLWorkoutAlertGoalProgress

+ (id)goalProgressAlertWithGoal:(id)goal distanceType:(unint64_t)type alertType:(int64_t)alertType currentValue:(double)value
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, goal);
  typeCopy = type;
  alertTypeCopy = alertType;
  valueCopy = value;
  v12 = objc_alloc_init(NLWorkoutAlertGoalProgress);
  [(NLWorkoutAlert *)v12 setType:alertType];
  [(NLWorkoutAlertGoalProgress *)v12 setDistanceType:typeCopy];
  [(NLWorkoutAlertGoalProgress *)v12 setCurrentValue:valueCopy];
  [(NLWorkoutAlertGoalProgress *)v12 setGoal:location[0]];
  date = [MEMORY[0x277CBEAA8] date];
  [(NLWorkoutAlert *)v12 setEventDate:?];
  MEMORY[0x277D82BD8](date);
  v11 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (unint64_t)optimalUnitStyleFittingWidth:(double)width withFont:(id)font formattingManager:(id)manager
{
  location[3] = self;
  location[2] = a2;
  location[1] = *&width;
  location[0] = 0;
  objc_storeStrong(location, font);
  v7 = 0;
  objc_storeStrong(&v7, manager);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager
{
  selfCopy = self;
  v8 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, manager);
  v5 = [(NLWorkoutAlertGoalProgress *)selfCopy _localizedDescriptionForProModeWithUnitStyle:styleCopy formattingManager:location];
  objc_storeStrong(&location, 0);

  return v5;
}

- (id)goalCompletionStringWithUnitStyle:(unint64_t)style decimalTrimmingMode:(unint64_t)mode formattingManager:(id)manager textCase:(unint64_t)case
{
  selfCopy = self;
  v60 = a2;
  styleCopy = style;
  modeCopy = mode;
  location = 0;
  objc_storeStrong(&location, manager);
  caseCopy = case;
  v55 = MEMORY[0x277D82BE0](&stru_28225A4E8);
  v54 = 0;
  goal = [(NLWorkoutAlertGoalProgress *)selfCopy goal];
  goalTypeIdentifier = [(NLSessionActivityGoal *)goal goalTypeIdentifier];
  v6 = MEMORY[0x277D82BD8](goal).n128_u64[0];
  if (goalTypeIdentifier)
  {
    switch(goalTypeIdentifier)
    {
      case 1:
        v43 = location;
        [(NLWorkoutAlertGoalProgress *)selfCopy currentValue];
        v42 = v7;
        unitManager = [location unitManager];
        v8 = [unitManager userDistanceUnitForDistanceType:selfCopy->_distanceType];
        v9 = [v43 localizedStringWithDistanceInMeters:v8 distanceUnit:0 unitStyle:3 decimalPrecision:4 roundingMode:modeCopy decimalTrimmingMode:v42];
        v10 = v55;
        v55 = v9;
        MEMORY[0x277D82BD8](v10);
        *&v11 = MEMORY[0x277D82BD8](unitManager).n128_u64[0];
        unitManager2 = [location unitManager];
        v46 = [unitManager2 userDistanceUnitForDistanceType:selfCopy->_distanceType];
        *&v12 = MEMORY[0x277D82BD8](unitManager2).n128_u64[0];
        v53 = v46;
        if (styleCopy == 3)
        {
          v37 = MEMORY[0x277CCD7E8];
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          v52 = [v37 quantityWithUnit:selfCopy->_currentValue doubleValue:?];
          v13 = MEMORY[0x277D82BD8](meterUnit);
          v39 = v52;
          v40 = MEMORY[0x20F2E8320](v53, v13);
          [v39 doubleValueForUnit:?];
          v41 = v14;
          MEMORY[0x277D82BD8](v40);
          v51[1] = v41;
          v15 = [location localizedLongUnitStringForDistanceUnit:v53 distanceInUnit:caseCopy textCase:*&v41];
          v16 = v54;
          v54 = v15;
          MEMORY[0x277D82BD8](v16);
          objc_storeStrong(&v52, 0);
        }

        else
        {
          v17 = [location localizedShortUnitStringForDistanceUnit:v53 textCase:{caseCopy, v12}];
          v18 = v54;
          v54 = v17;
          v6 = MEMORY[0x277D82BD8](v18).n128_u64[0];
        }

        break;
      case 2:
        if (styleCopy == 3)
        {
          v36 = location;
          [(NLWorkoutAlertGoalProgress *)selfCopy currentValue];
          v19 = [v36 stringWithDuration:6 durationFormat:?];
        }

        else
        {
          v35 = location;
          [(NLWorkoutAlertGoalProgress *)selfCopy currentValue];
          v19 = [v35 stringWithDuration:2 durationFormat:?];
        }

        v20 = v55;
        v55 = v19;
        v6 = MEMORY[0x277D82BD8](v20).n128_u64[0];
        break;
      case 3:
        v33 = MEMORY[0x277CCD7E8];
        kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
        [(NLWorkoutAlertGoalProgress *)selfCopy currentValue];
        v51[0] = [v33 quantityWithUnit:kilocalorieUnit doubleValue:?];
        *&v21 = MEMORY[0x277D82BD8](kilocalorieUnit).n128_u64[0];
        v22 = [location localizedStringWithActiveEnergy:v51[0] unitStyle:{0, v21}];
        v23 = v55;
        v55 = v22;
        *&v24 = MEMORY[0x277D82BD8](v23).n128_u64[0];
        if (styleCopy == 3)
        {
          v25 = [location localizedLongActiveEnergyUnitStringWithTextCase:{caseCopy, v24}];
          v26 = v54;
          v54 = v25;
          MEMORY[0x277D82BD8](v26);
        }

        else
        {
          v31 = location;
          localizedShortActiveEnergyUnitString = [location localizedShortActiveEnergyUnitString];
          v27 = [v31 applyTextCase:caseCopy toString:?];
          v28 = v54;
          v54 = v27;
          MEMORY[0x277D82BD8](v28);
          MEMORY[0x277D82BD8](localizedShortActiveEnergyUnitString);
        }

        objc_storeStrong(v51, 0);
        break;
    }
  }

  v50 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:v55 unitString:v54, *&v6];
  v30 = MEMORY[0x277D82BE0](v50);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&location, 0);

  return v30;
}

- (id)_localizedDescriptionForProModeWithUnitStyle:(unint64_t)style formattingManager:(id)manager
{
  selfCopy = self;
  v13 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, manager);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  goalProgressString = [(NLWorkoutAlertGoalProgress *)selfCopy goalProgressString];
  v8 = [NLWorkoutAlertGoalProgress splitStringOnNewlines:goalProgressString];
  [v10 addObjectsFromArray:v8];
  v5 = v10;
  v6 = [(NLWorkoutAlertGoalProgress *)selfCopy goalCompletionStringWithUnitStyle:styleCopy decimalTrimmingMode:1 formattingManager:location textCase:?];
  [v5 addObject:?];
  MEMORY[0x277D82BD8](v6);
  v7 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&goalProgressString, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);

  return v7;
}

- (id)goalProgressString
{
  type = [(NLWorkoutAlert *)self type];
  if (type == 7)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v4 localizedStringForKey:@"GOAL_PROGRESS_HALFWAY" value:&stru_28225A4E8 table:@"Localizable"];
    MEMORY[0x277D82BD8](v4);
  }

  else if (type == 13)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v3 localizedStringForKey:@"GOAL_PROGRESS_COMPLETION" value:&stru_28225A4E8 table:@"Localizable"];
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    v6 = MEMORY[0x277D82BE0](&stru_28225A4E8);
  }

  return v6;
}

- (id)description
{
  selfCopy = self;
  v7 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = NLWorkoutAlertTypeString([(NLWorkoutAlert *)self type]);
  v6 = [v4 stringWithFormat:@"NLWorkoutAlertGoalProgress(eventType=%@, currentValue=%f)", v5, *&selfCopy->_currentValue];
  MEMORY[0x277D82BD8](v5);
  v2 = v6;

  return v2;
}

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  v6 = NLWorkoutAlertGoalProgress.spokenDescription(with:)(managerCopy);
  v8 = v7;

  v9 = MEMORY[0x20F2E6C00](v6, v8);

  return v9;
}

- (id)spokenUserDataWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  NLWorkoutAlertGoalProgress.spokenUserData(with:)(managerCopy);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end