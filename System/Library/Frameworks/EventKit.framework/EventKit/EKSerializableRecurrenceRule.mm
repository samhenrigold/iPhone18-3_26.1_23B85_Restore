@interface EKSerializableRecurrenceRule
+ (id)classesForKey;
- (EKSerializableRecurrenceRule)initWithRecurrenceRule:(id)rule;
- (id)createRecurrenceRule:(id *)rule;
@end

@implementation EKSerializableRecurrenceRule

+ (id)classesForKey
{
  v25[10] = *MEMORY[0x1E69E9840];
  v24[0] = @"frequency";
  v23 = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v25[0] = v13;
  v24[1] = @"interval";
  v22 = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v25[1] = v2;
  v24[2] = @"recurrenceEnd";
  v21 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v25[2] = v3;
  v24[3] = @"firstDayOfTheWeek";
  v20 = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v25[3] = v4;
  v24[4] = @"daysOfTheWeek";
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v25[4] = v5;
  v24[5] = @"daysOfTheMonth";
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v25[5] = v6;
  v24[6] = @"daysOfTheYear";
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v25[6] = v7;
  v24[7] = @"weeksOfTheYear";
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v25[7] = v8;
  v24[8] = @"monthsOfTheYear";
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v25[8] = v9;
  v24[9] = @"setPositions";
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v25[9] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:10];

  return v11;
}

- (EKSerializableRecurrenceRule)initWithRecurrenceRule:(id)rule
{
  ruleCopy = rule;
  v34.receiver = self;
  v34.super_class = EKSerializableRecurrenceRule;
  v5 = [(EKSerializableRecurrenceRule *)&v34 init];
  if (v5)
  {
    v5->_frequency = [ruleCopy frequency];
    v5->_interval = [ruleCopy interval];
    recurrenceEnd = [ruleCopy recurrenceEnd];
    v7 = [recurrenceEnd copy];
    recurrenceEnd = v5->_recurrenceEnd;
    v5->_recurrenceEnd = v7;

    v5->_firstDayOfTheWeek = [ruleCopy firstDayOfTheWeek];
    v9 = objc_alloc(MEMORY[0x1E695DEC8]);
    daysOfTheWeek = [ruleCopy daysOfTheWeek];
    v11 = [v9 initWithArray:daysOfTheWeek copyItems:1];
    daysOfTheWeek = v5->_daysOfTheWeek;
    v5->_daysOfTheWeek = v11;

    v13 = objc_alloc(MEMORY[0x1E695DEC8]);
    daysOfTheMonth = [ruleCopy daysOfTheMonth];
    v15 = [v13 initWithArray:daysOfTheMonth copyItems:1];
    daysOfTheMonth = v5->_daysOfTheMonth;
    v5->_daysOfTheMonth = v15;

    v17 = objc_alloc(MEMORY[0x1E695DEC8]);
    daysOfTheYear = [ruleCopy daysOfTheYear];
    v19 = [v17 initWithArray:daysOfTheYear copyItems:1];
    daysOfTheYear = v5->_daysOfTheYear;
    v5->_daysOfTheYear = v19;

    v21 = objc_alloc(MEMORY[0x1E695DEC8]);
    weeksOfTheYear = [ruleCopy weeksOfTheYear];
    v23 = [v21 initWithArray:weeksOfTheYear copyItems:1];
    weeksOfTheYear = v5->_weeksOfTheYear;
    v5->_weeksOfTheYear = v23;

    v25 = objc_alloc(MEMORY[0x1E695DEC8]);
    monthsOfTheYear = [ruleCopy monthsOfTheYear];
    v27 = [v25 initWithArray:monthsOfTheYear copyItems:1];
    monthsOfTheYear = v5->_monthsOfTheYear;
    v5->_monthsOfTheYear = v27;

    v29 = objc_alloc(MEMORY[0x1E695DEC8]);
    setPositions = [ruleCopy setPositions];
    v31 = [v29 initWithArray:setPositions copyItems:1];
    setPositions = v5->_setPositions;
    v5->_setPositions = v31;
  }

  return v5;
}

- (id)createRecurrenceRule:(id *)rule
{
  if ([(EKSerializableRecurrenceRule *)self interval]<= 0)
  {
    v14 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKSerializableRecurrenceRule *)v14 createRecurrenceRule:?];
    }

    v13 = 0;
  }

  else
  {
    v16 = [EKRecurrenceRule alloc];
    frequency = [(EKSerializableRecurrenceRule *)self frequency];
    interval = [(EKSerializableRecurrenceRule *)self interval];
    daysOfTheWeek = [(EKSerializableRecurrenceRule *)self daysOfTheWeek];
    daysOfTheMonth = [(EKSerializableRecurrenceRule *)self daysOfTheMonth];
    monthsOfTheYear = [(EKSerializableRecurrenceRule *)self monthsOfTheYear];
    weeksOfTheYear = [(EKSerializableRecurrenceRule *)self weeksOfTheYear];
    daysOfTheYear = [(EKSerializableRecurrenceRule *)self daysOfTheYear];
    setPositions = [(EKSerializableRecurrenceRule *)self setPositions];
    recurrenceEnd = [(EKSerializableRecurrenceRule *)self recurrenceEnd];
    v13 = [(EKRecurrenceRule *)v16 initRecurrenceWithFrequency:frequency interval:interval daysOfTheWeek:daysOfTheWeek daysOfTheMonth:daysOfTheMonth monthsOfTheYear:monthsOfTheYear weeksOfTheYear:weeksOfTheYear daysOfTheYear:daysOfTheYear setPositions:setPositions end:recurrenceEnd];
  }

  return v13;
}

- (void)createRecurrenceRule:(void *)a1 .cold.1(void *a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4[0] = 67109120;
  v4[1] = [a2 interval];
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Serialized recurrence rule has invalid interval (%d). Ignoring.", v4, 8u);
}

@end