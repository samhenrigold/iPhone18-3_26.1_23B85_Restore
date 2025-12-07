@interface NLWorkoutAlertRingCompletion
+ (id)ringCompletionAlertWithCompletedRing:(int64_t)ring activitySummary:(id)summary;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (id)spokenUserDataWithFormattingManager:(id)manager;
- (unint64_t)optimalUnitStyleFittingWidth:(double)width withFont:(id)font formattingManager:(id)manager;
@end

@implementation NLWorkoutAlertRingCompletion

+ (id)ringCompletionAlertWithCompletedRing:(int64_t)ring activitySummary:(id)summary
{
  selfCopy = self;
  v11 = a2;
  ringCopy = ring;
  location = 0;
  objc_storeStrong(&location, summary);
  v8 = objc_alloc_init(NLWorkoutAlertRingCompletion);
  date = [MEMORY[0x277CBEAA8] date];
  [(NLWorkoutAlert *)v8 setEventDate:?];
  *&v4 = MEMORY[0x277D82BD8](date).n128_u64[0];
  [(NLWorkoutAlert *)v8 setType:4, v4];
  [(NLWorkoutAlertRingCompletion *)v8 setCompletedRing:ringCopy];
  [(NLWorkoutAlertRingCompletion *)v8 setActivitySummary:location];
  v7 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);

  return v7;
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
  v35[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[2] = a2;
  location[1] = style;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  completedRing = [(NLWorkoutAlertRingCompletion *)selfCopy completedRing];
  if (completedRing)
  {
    if (completedRing == 1)
    {
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v17 localizedStringForKey:@"ACTIVITY_RING_COMPLETION_LINE_1_EXERCISE" value:? table:?];
      v30 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:"stringWithValueString:unitString:" unitString:?];
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v19 localizedStringForKey:@"ACTIVITY_RING_COMPLETION_LINE_2_EXERCISE" value:&stru_28225A4E8 table:@"Localizable"];
      v29 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:"stringWithValueString:unitString:" unitString:?];
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v21 localizedStringForKey:@"ACTIVITY_RING_COMPLETION_LINE_3_EXERCISE" value:&stru_28225A4E8 table:@"Localizable"];
      v28 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:"stringWithValueString:unitString:" unitString:?];
      MEMORY[0x277D82BD8](v20);
      *&v4 = MEMORY[0x277D82BD8](v21).n128_u64[0];
      v22 = v31;
      v35[0] = v30;
      v35[1] = v29;
      v35[2] = v28;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:{3, v4}];
      [v22 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v23);
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v30, 0);
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"ACTIVITY_RING_COMPLETION_LINE_1_MOVE" value:? table:?];
    v27 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:"stringWithValueString:unitString:" unitString:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"ACTIVITY_RING_COMPLETION_LINE_2_MOVE" value:&stru_28225A4E8 table:@"Localizable"];
    v26 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:"stringWithValueString:unitString:" unitString:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v13 localizedStringForKey:@"ACTIVITY_RING_COMPLETION_LINE_3_MOVE" value:&stru_28225A4E8 table:@"Localizable"];
    v25 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:"stringWithValueString:unitString:" unitString:?];
    MEMORY[0x277D82BD8](v12);
    *&v5 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    v14 = v31;
    v34[0] = v27;
    v34[1] = v26;
    v34[2] = v25;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:{3, v5}];
    [v14 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v15);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
  }

  v7 = MEMORY[0x277D82BE0](v31);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  completedRing = [(NLWorkoutAlertRingCompletion *)selfCopy completedRing];
  if (completedRing)
  {
    if (completedRing == 1)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v6 localizedStringForKey:@"EXERCISE_RING_COMPLETION_SPOKEN" value:&stru_28225A4E8 table:@"Localizable"];
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v10 = MEMORY[0x277D82BE0](&stru_28225A4E8);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v5 localizedStringForKey:@"MOVE_RING_COMPLETION_SPOKEN" value:&stru_28225A4E8 table:@"Localizable"];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

- (id)spokenUserDataWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  specialized NLWorkoutAlertRingCompletion.spokenUserData(with:)();

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end