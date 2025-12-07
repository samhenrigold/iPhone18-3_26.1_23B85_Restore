@interface NLWorkoutAlert
+ (id)splitStringOnNewlines:(id)newlines;
+ (id)spokenDescriptionForUnitAnnotatedStrings:(id)strings;
- (BOOL)isMoreImportantThanAlert:(id)alert;
- (BOOL)isNonVisualAlert;
- (BOOL)isPowerAlert;
- (BOOL)isTrainerTimerAlert;
- (id)description;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (id)spokenUserDataWithFormattingManager:(id)manager;
- (unint64_t)optimalUnitStyleFittingWidth:(double)width withFont:(id)font formattingManager:(id)manager;
@end

@implementation NLWorkoutAlert

- (BOOL)isMoreImportantThanAlert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v9 = 0;
  if (location[0])
  {
    type = selfCopy->_type;
    if (type <= [location[0] type])
    {
      v7 = selfCopy->_type;
      if (v7 == [location[0] type])
      {
        eventDate = selfCopy->_eventDate;
        eventDate = [location[0] eventDate];
        v6 = [(NSDate *)eventDate compare:?];
        MEMORY[0x277D82BD8](eventDate);
        v9 = v6 == 1;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  objc_storeStrong(location, 0);
  return v9;
}

- (BOOL)isTrainerTimerAlert
{
  v3 = 1;
  if (self->_type != 1)
  {
    return self->_type == 2;
  }

  return v3;
}

- (BOOL)isNonVisualAlert
{
  v3 = 1;
  if (self->_type != 3)
  {
    return self->_type == 25;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v5 = [objc_opt_class() description];
  v4 = NLWorkoutAlertTypeString([(NLWorkoutAlert *)self type]);
  v6 = [v3 stringWithFormat:@"%@(alertType=%@)", v5, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

+ (id)splitStringOnNewlines:(id)newlines
{
  v21 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, newlines);
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = [location[0] componentsSeparatedByString:@"\n"];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v17);
  v14 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v14)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(__b[1] + 8 * v11);
      v7 = v18;
      v8 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:v16 unitString:0];
      [v7 addObject:?];
      *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obj countByEnumeratingWithState:__b objects:v20 count:{16, v3}];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  *&v4 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  v6 = [v18 copy];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)spokenDescriptionForUnitAnnotatedStrings:(id)strings
{
  v24 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, strings);
  v21 = MEMORY[0x277D82BE0](&stru_28225A4E8);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v18 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
  if (v18)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v18;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v15);
      v11 = v21;
      spokenString = [v20 spokenString];
      v3 = [v11 stringByAppendingFormat:@"%@ ", spokenString];
      v4 = v21;
      v21 = v3;
      MEMORY[0x277D82BD8](v4);
      *&v5 = MEMORY[0x277D82BD8](spokenString).n128_u64[0];
      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [obj countByEnumeratingWithState:__b objects:v23 count:{16, v5}];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  *&v6 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  v8 = v21;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:?];
  MEMORY[0x277D82BD8](whitespaceAndNewlineCharacterSet);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager
{
  location[3] = self;
  location[2] = a2;
  location[1] = style;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v5 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
  objc_storeStrong(location, 0);

  return v5;
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

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v4 = MEMORY[0x277D82BE0](&stru_28225A4E8);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)spokenUserDataWithFormattingManager:(id)manager
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v4 = MEMORY[0x277D82BE0](MEMORY[0x277CBEC10]);
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)isPowerAlert
{
  type metadata accessor for WorkoutAlertZone();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
    v4 = v2;
    swift_beginAccess();
    LOBYTE(v2) = [*(v4 + v3) primaryType] == 3;
  }

  return v2;
}

@end