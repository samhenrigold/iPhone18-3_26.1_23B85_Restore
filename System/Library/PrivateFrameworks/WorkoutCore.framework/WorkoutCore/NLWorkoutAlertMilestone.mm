@interface NLWorkoutAlertMilestone
+ (id)milestoneAlertWithDistanceType:(unint64_t)type alertType:(int64_t)alertType distanceValue:(double)value distanceSinceLastAlert:(double)alert elapsedTimeValue:(double)timeValue timeIntervalSinceLastAlert:(double)lastAlert;
- (double)_distanceIncrement:(id)increment;
- (id)_localizedDescriptionForProModeWithUnitStyle:(unint64_t)style paceUnitStyle:(unint64_t)unitStyle formattingManager:(id)manager;
- (id)_paceStringWithFormattingManager:(id)manager unitStyle:(unint64_t)style;
- (id)description;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (unint64_t)optimalUnitStyleFittingWidth:(double)width withFont:(id)font formattingManager:(id)manager;
@end

@implementation NLWorkoutAlertMilestone

+ (id)milestoneAlertWithDistanceType:(unint64_t)type alertType:(int64_t)alertType distanceValue:(double)value distanceSinceLastAlert:(double)alert elapsedTimeValue:(double)timeValue timeIntervalSinceLastAlert:(double)lastAlert
{
  selfCopy = self;
  v18 = a2;
  typeCopy = type;
  alertTypeCopy = alertType;
  valueCopy = value;
  alertCopy = alert;
  timeValueCopy = timeValue;
  lastAlertCopy = lastAlert;
  v11 = objc_alloc_init(NLWorkoutAlertMilestone);
  [(NLWorkoutAlert *)v11 setType:alertTypeCopy];
  [(NLWorkoutAlertMilestone *)v11 setDistanceType:typeCopy];
  [(NLWorkoutAlertMilestone *)v11 setDistanceValue:valueCopy + 1.0];
  [(NLWorkoutAlertMilestone *)v11 setDistanceSinceLastAlert:alertCopy];
  [(NLWorkoutAlertMilestone *)v11 setElapsedTimeValue:timeValueCopy];
  [(NLWorkoutAlertMilestone *)v11 setTimeIntervalSinceLastAlert:lastAlertCopy];
  date = [MEMORY[0x277CBEAA8] date];
  [(NLWorkoutAlert *)v11 setEventDate:?];
  MEMORY[0x277D82BD8](date);
  v10 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);

  return v10;
}

- (unint64_t)optimalUnitStyleFittingWidth:(double)width withFont:(id)font formattingManager:(id)manager
{
  selfCopy = self;
  v19 = a2;
  widthCopy = width;
  location = 0;
  objc_storeStrong(&location, font);
  v16 = 0;
  objc_storeStrong(&v16, manager);
  if ([(NLWorkoutAlert *)selfCopy type]== 6)
  {
    v10 = v16;
    [(NLWorkoutAlertMilestone *)selfCopy distanceValue];
    v9 = v5;
    unitManager = [v16 unitManager];
    v15 = [v10 localizedStringWithDistanceInMeters:objc_msgSend(unitManager distanceUnit:"userDistanceUnitForDistanceType:" unitStyle:selfCopy->_distanceType) decimalPrecision:3 roundingMode:3 decimalTrimmingMode:{2, v9}];
    MEMORY[0x277D82BD8](unitManager);
    v14 = [location fu_fontWithSizeFittingString:v15 withinWidth:widthCopy];
    [v14 pointSize];
    v12 = v6;
    [location pointSize];
    if (v12 >= v7)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v21 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
  return v21;
}

- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager
{
  selfCopy = self;
  v8 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, manager);
  v5 = [(NLWorkoutAlertMilestone *)selfCopy _localizedDescriptionForProModeWithUnitStyle:styleCopy paceUnitStyle:2 formattingManager:location];
  objc_storeStrong(&location, 0);

  return v5;
}

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v41 = selfCopy;
  unitManager = [location[0] unitManager];
  [(NLWorkoutAlertMilestone *)v41 _distanceIncrement:?];
  v43 = v3;
  MEMORY[0x277D82BD8](unitManager);
  v51[1] = v43;
  unitManager2 = [location[0] unitManager];
  v51[0] = [unitManager2 userDistanceHKUnitForDistanceType:{-[NLWorkoutAlertMilestone distanceType](selfCopy, "distanceType")}];
  MEMORY[0x277D82BD8](unitManager2);
  v50 = [MEMORY[0x277CCD7E8] quantityWithUnit:v51[0] doubleValue:*&v43];
  v49 = 0;
  v48 = 0;
  v4 = *&v43;
  if (*&v43 == 1.0 && [(NLWorkoutAlert *)selfCopy type]== 6)
  {
    unitManager3 = [location[0] unitManager];
    [(NLWorkoutAlertMilestone *)selfCopy distanceValue];
    [unitManager3 distanceInUserDistanceUnitForDistanceInMeters:-[NLWorkoutAlertMilestone distanceType](selfCopy distanceType:{"distanceType"), v5}];
    v32 = v6;
    *&v7 = MEMORY[0x277D82BD8](unitManager3).n128_u64[0];
    v47 = v32;
    unitManager4 = [location[0] unitManager];
    v33 = [unitManager4 userDistanceHKUnitForDistanceType:{-[NLWorkoutAlertMilestone distanceType](selfCopy, "distanceType")}];
    _isMetricDistance = [v33 _isMetricDistance];
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](unitManager4);
    v46 = _isMetricDistance;
    if (_isMetricDistance)
    {
      v8 = @"SPOKEN_MILESTONE_METRIC";
    }

    else
    {
      v8 = @"SPOKEN_MILESTONE_IMPERIAL";
    }

    v45 = MEMORY[0x277D82BE0](v8);
    v36 = MEMORY[0x277CCACA8];
    v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v37 = [v38 localizedStringForKey:v45 value:&stru_28225A4E8 table:@"Localizable"];
    v9 = [v36 localizedStringWithFormat:v47];
    v10 = v49;
    v49 = v9;
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v37);
    *&v11 = MEMORY[0x277D82BD8](v38).n128_u64[0];
    v39 = v50;
    distanceType = [(NLWorkoutAlertMilestone *)selfCopy distanceType];
    [(NLWorkoutAlertMilestone *)selfCopy timeIntervalSinceLastAlert];
    v12 = [WOSpokenUtilities spokenPaceForSingleDistanceUnitWithDistance:v39 distanceType:distanceType duration:location[0] formattingManager:?];
    v13 = v48;
    v48 = v12;
    MEMORY[0x277D82BD8](v13);
    objc_storeStrong(&v45, 0);
  }

  else
  {
    if ([(NLWorkoutAlert *)selfCopy type]== 6)
    {
      v28 = location[0];
      [(NLWorkoutAlertMilestone *)selfCopy distanceValue];
      v27 = v14;
      unitManager5 = [location[0] unitManager];
      v15 = [v28 localizedStringWithDistanceInMeters:objc_msgSend(unitManager5 distanceUnit:"userDistanceUnitForDistanceType:" unitStyle:selfCopy->_distanceType) decimalPrecision:3 roundingMode:3 decimalTrimmingMode:{2, v27}];
      v16 = v49;
      v49 = v15;
      MEMORY[0x277D82BD8](v16);
      *&v17 = MEMORY[0x277D82BD8](unitManager5).n128_u64[0];
      distanceType2 = [(NLWorkoutAlertMilestone *)selfCopy distanceType];
      [(NLWorkoutAlertMilestone *)selfCopy timeIntervalSinceLastAlert];
      v18 = [WOSpokenUtilities spokenPaceWithDistance:v50 distanceType:distanceType2 duration:8 metricType:location[0] formattingManager:?];
      v19 = v48;
      v48 = v18;
      v20 = MEMORY[0x277D82BD8](v19).n128_u64[0];
    }

    else if ([(NLWorkoutAlert *)selfCopy type]== 5)
    {
      v21 = [location[0] stringWithDuration:6 durationFormat:selfCopy->_elapsedTimeValue];
      v22 = v49;
      v49 = v21;
      v20 = MEMORY[0x277D82BD8](v22).n128_u64[0];
    }

    v23 = [WOSpokenUtilities appendEndPhrasePunctuationWithPhrase:v49, *&v20];
    v24 = v49;
    v49 = v23;
    MEMORY[0x277D82BD8](v24);
  }

  if (v48)
  {
    v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v49, v48];
  }

  else
  {
    v54 = MEMORY[0x277D82BE0](v49);
  }

  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(v51, 0);
  objc_storeStrong(location, 0);
  v25 = v54;

  return v25;
}

- (id)_localizedDescriptionForProModeWithUnitStyle:(unint64_t)style paceUnitStyle:(unint64_t)unitStyle formattingManager:(id)manager
{
  selfCopy = self;
  v39 = a2;
  styleCopy = style;
  unitStyleCopy = unitStyle;
  location = 0;
  objc_storeStrong(&location, manager);
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0;
  if ([(NLWorkoutAlert *)selfCopy type]== 6)
  {
    v28 = location;
    [(NLWorkoutAlertMilestone *)selfCopy distanceValue];
    v27 = v5;
    unitManager = [location unitManager];
    v6 = [unitManager userDistanceUnitForDistanceType:selfCopy->_distanceType];
    v7 = [v28 localizedStringWithDistanceInMeters:v6 distanceUnit:styleCopy unitStyle:3 decimalPrecision:2 roundingMode:v27 decimalTrimmingMode:?];
    v8 = v34;
    v34 = v7;
    MEMORY[0x277D82BD8](v8);
    v9 = MEMORY[0x277D82BD8](unitManager).n128_u64[0];
  }

  else
  {
    v10 = [location stringWithDuration:2 durationFormat:selfCopy->_elapsedTimeValue];
    v11 = v34;
    v34 = v10;
    v9 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  }

  v33 = [NLWorkoutAlert splitStringOnNewlines:v34, *&v9];
  [v35 addObjectsFromArray:v33];
  if ([(NLWorkoutAlert *)selfCopy type]== 6)
  {
    unitManager2 = [location unitManager];
    v23 = [unitManager2 paceDistanceUnitForDistanceType:{-[NLWorkoutAlertMilestone distanceType](selfCopy, "distanceType")}];
    v12 = MEMORY[0x277D82BD8](unitManager2);
    v32 = v23;
    v31 = MEMORY[0x20F2E8410](selfCopy->_distanceType, v12);
    v30 = MEMORY[0x277D82BE0](&stru_28225A4E8);
    v24 = selfCopy;
    unitManager3 = [location unitManager];
    [(NLWorkoutAlertMilestone *)v24 _distanceIncrement:?];
    v26 = v13;
    MEMORY[0x277D82BD8](unitManager3);
    v14 = v26;
    if (v26 != 1.0)
    {
      v15 = [location localizedDistinguishingPaceUnitStringWithMetricType:8 distanceType:-[NLWorkoutAlertMilestone distanceType](selfCopy distanceUnit:"distanceType" paceFormat:v26) abbreviated:v32 multiline:v31, 0, 1];
      v16 = v30;
      v30 = v15;
      *&v14 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    }

    v19 = v35;
    v21 = [(NLWorkoutAlertMilestone *)selfCopy _paceStringWithFormattingManager:location unitStyle:unitStyleCopy, v14];
    v20 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:"stringWithValueString:unitString:" unitString:?];
    [v19 addObject:?];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    objc_storeStrong(&v30, 0);
  }

  v18 = MEMORY[0x277D82BE0](v35);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);

  return v18;
}

- (id)description
{
  selfCopy = self;
  v7 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = NLWorkoutAlertTypeString([(NLWorkoutAlert *)self type]);
  v6 = [v4 stringWithFormat:@"NLWorkoutAlertMilestone(eventType=%@, distanceValue=%f, timeIntervalSinceLastAlert=%f)", v5, *&selfCopy->_distanceValue, *&selfCopy->_timeIntervalSinceLastAlert];
  MEMORY[0x277D82BD8](v5);
  v2 = v6;

  return v2;
}

- (id)_paceStringWithFormattingManager:(id)manager unitStyle:(unint64_t)style
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  styleCopy = style;
  [(NLWorkoutAlertMilestone *)selfCopy timeIntervalSinceLastAlert];
  if (v4 <= 2.22044605e-16)
  {
    v24 = MEMORY[0x277D82BE0](&stru_28225A4E8);
  }

  else
  {
    v9 = selfCopy;
    unitManager = [location[0] unitManager];
    [(NLWorkoutAlertMilestone *)v9 _distanceIncrement:?];
    v11 = v5;
    MEMORY[0x277D82BD8](unitManager);
    v20 = v11;
    unitManager2 = [location[0] unitManager];
    v19 = [unitManager2 userDistanceHKUnitForDistanceType:{-[NLWorkoutAlertMilestone distanceType](selfCopy, "distanceType")}];
    MEMORY[0x277D82BD8](unitManager2);
    v18 = [MEMORY[0x277CCD7E8] quantityWithUnit:v19 doubleValue:v20];
    v17 = MEMORY[0x20F2E8410]([(NLWorkoutAlertMilestone *)selfCopy distanceType]);
    v14 = location[0];
    v13 = v18;
    [(NLWorkoutAlertMilestone *)selfCopy timeIntervalSinceLastAlert];
    v16 = [v14 localizedPaceStringWithDistance:v13 overDuration:v17 paceFormat:styleCopy unitStyle:1 decimalTrimmingMode:-[NLWorkoutAlertMilestone distanceType](selfCopy distanceType:"distanceType"), v6];
    v24 = MEMORY[0x277D82BE0](v16);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(location, 0);
  v7 = v24;

  return v7;
}

- (double)_distanceIncrement:(id)increment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, increment);
  [(NLWorkoutAlertMilestone *)selfCopy distanceSinceLastAlert];
  if (v3 == 2.22044605e-16)
  {
    v8 = NLDistanceNotificationIntervalForDistanceType([(NLWorkoutAlertMilestone *)selfCopy distanceType]);
  }

  else
  {
    v7 = location[0];
    [(NLWorkoutAlertMilestone *)selfCopy distanceSinceLastAlert];
    [v7 distanceInUserDistanceUnitForDistanceInMeters:-[NLWorkoutAlertMilestone distanceType](selfCopy distanceType:{"distanceType"), v4}];
    v8 = v5;
  }

  objc_storeStrong(location, 0);
  return v8;
}

@end