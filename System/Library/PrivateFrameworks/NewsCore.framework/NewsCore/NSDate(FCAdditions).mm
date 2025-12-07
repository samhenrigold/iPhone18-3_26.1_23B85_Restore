@interface NSDate(FCAdditions)
+ (id)_fr_sharedYearAndMonthDateFormatter;
+ (id)fc_dateFromString:()FCAdditions possibleFormats:;
+ (id)fc_dateFromStringWithHTTPHeaderFormat:()FCAdditions;
+ (id)fc_dateFromStringWithISO8601Format:()FCAdditions;
+ (id)fc_dateRoundedToNearestDayForDate:()FCAdditions;
+ (id)fc_dateRoundedToNearestMinuteForDate:()FCAdditions;
+ (id)fc_earlierDateAllowingNilWithDate:()FCAdditions andDate:;
+ (id)fc_laterDateAllowingNilWithDate:()FCAdditions andDate:;
- (BOOL)fc_isEarlierThan:()FCAdditions withPrecision:;
- (BOOL)fc_isLaterThan:()FCAdditions withPrecision:;
- (BOOL)fc_isWeekend;
- (id)fc_adjustToRecentDate;
- (id)fc_dateByRoundingDownToNearestQuarterHour;
- (id)fc_dateOfEarliestGregorianCalendarDay;
- (id)fc_stringWithISO8601Format;
- (id)fc_stringWithYearAndMonthFormat;
- (uint64_t)fc_GregorianCalendarDaysSinceDate:()FCAdditions;
- (uint64_t)fc_isSameDayAs:()FCAdditions;
- (uint64_t)isInFuture;
- (uint64_t)isToday;
- (unint64_t)fc_millisecondTimeIntervalSinceDate:()FCAdditions;
- (unint64_t)fc_millisecondTimeIntervalUntilNow;
@end

@implementation NSDate(FCAdditions)

- (unint64_t)fc_millisecondTimeIntervalUntilNow
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:self];
  v4 = (fmax(v3, 0.0) * 1000.0);

  return v4;
}

+ (id)fc_dateFromString:()FCAdditions possibleFormats:
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "string != nil"];
    *buf = 136315906;
    v25 = "+[NSDate(FCAdditions) fc_dateFromString:possibleFormats:]";
    v26 = 2080;
    v27 = "NSDate+FCAdditions.m";
    v28 = 1024;
    v29 = 56;
    v30 = 2114;
    v31 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "formats != nil"];
    *buf = 136315906;
    v25 = "+[NSDate(FCAdditions) fc_dateFromString:possibleFormats:]";
    v26 = 2080;
    v27 = "NSDate+FCAdditions.m";
    v28 = 1024;
    v29 = 57;
    v30 = 2114;
    v31 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
LABEL_8:
    v11 = 0;
    while (1)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v19 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = [MEMORY[0x1E696AB78] dateFormatterWithFormat:v12 forReuse:0];
      v15 = [v14 dateFromString:v5];

      objc_autoreleasePoolPop(v13);
      if (v15)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v15 = 0;
  }

  return v15;
}

+ (id)fc_dateFromStringWithISO8601Format:()FCAdditions
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = @"yyyy-MM-dd'T'HH:mm:ssZZ";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];
  v7 = [self fc_dateFromString:v5 possibleFormats:{v6, v9, v10}];

  return v7;
}

+ (id)fc_dateFromStringWithHTTPHeaderFormat:()FCAdditions
{
  v9[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"EEE, dd MMM yyyy HH:mm:ss z";
  v9[1] = @"EEEE, dd-MMM-yy HH:mm:ss z";
  v9[2] = @"EEE MMM d HH:mm:ss yyyy";
  v9[3] = @"EEE MMM dd HH:mm:ss z yyyy";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v9 count:4];
  v7 = [self fc_dateFromString:v5 possibleFormats:v6];

  return v7;
}

- (BOOL)fc_isEarlierThan:()FCAdditions withPrecision:
{
  v6 = a3;
  [self timeIntervalSinceReferenceDate];
  v8 = v7;
  [v6 timeIntervalSinceReferenceDate];
  v10 = v9;

  if (v8 >= v10)
  {
    return 0;
  }

  v11 = 0.001;
  if (a4 != 1)
  {
    v11 = 0.0;
  }

  if (a4 == 2)
  {
    v11 = 1.0;
  }

  return vabdd_f64(v8, v10) >= v11;
}

- (BOOL)fc_isLaterThan:()FCAdditions withPrecision:
{
  v6 = a3;
  [self timeIntervalSinceReferenceDate];
  v8 = v7;
  [v6 timeIntervalSinceReferenceDate];
  v10 = v9;

  if (v8 <= v10)
  {
    return 0;
  }

  v11 = 0.001;
  if (a4 != 1)
  {
    v11 = 0.0;
  }

  if (a4 == 2)
  {
    v11 = 1.0;
  }

  return vabdd_f64(v8, v10) >= v11;
}

- (unint64_t)fc_millisecondTimeIntervalSinceDate:()FCAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "date"];
    *buf = 136315906;
    v10 = "[NSDate(FCAdditions) fc_millisecondTimeIntervalSinceDate:]";
    v11 = 2080;
    v12 = "NSDate+FCAdditions.m";
    v13 = 1024;
    v14 = 176;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [self timeIntervalSinceDate:v4];
  v6 = v5;

  return (fmax(v6, 0.0) * 1000.0);
}

- (id)fc_dateOfEarliestGregorianCalendarDay
{
  v2 = objc_alloc(MEMORY[0x1E695DEE8]);
  v3 = [v2 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];

  v8 = 0;
  [v3 rangeOfUnit:16 startDate:&v8 interval:0 forDate:self];
  v5 = v8;
  v6 = v8;

  return v5;
}

- (uint64_t)fc_GregorianCalendarDaysSinceDate:()FCAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "date"];
    *buf = 136315906;
    v15 = "[NSDate(FCAdditions) fc_GregorianCalendarDaysSinceDate:]";
    v16 = 2080;
    v17 = "NSDate+FCAdditions.m";
    v18 = 1024;
    v19 = 201;
    v20 = 2114;
    v21 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_alloc(MEMORY[0x1E695DEE8]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v7 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v6 setTimeZone:v7];

  fc_dateOfEarliestGregorianCalendarDay = [v4 fc_dateOfEarliestGregorianCalendarDay];
  fc_dateOfEarliestGregorianCalendarDay2 = [self fc_dateOfEarliestGregorianCalendarDay];
  v10 = [v6 components:16 fromDate:fc_dateOfEarliestGregorianCalendarDay toDate:fc_dateOfEarliestGregorianCalendarDay2 options:0];
  v11 = [v10 day];

  return v11;
}

- (uint64_t)isToday
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar isDateInToday:self];

  return v3;
}

- (uint64_t)isInFuture
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [self fc_isLaterThan:date];

  return v3;
}

- (BOOL)fc_isWeekend
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [currentLocale objectForKey:*MEMORY[0x1E695D958]];
  v4 = [v3 components:524 fromDate:self];

  v5 = [v4 weekday] == 1 || objc_msgSend(v4, "weekday") == 7;
  return v5;
}

- (uint64_t)fc_isSameDayAs:()FCAdditions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar components:28 fromDate:self];

  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [currentCalendar2 components:28 fromDate:v5];

  v10 = [v7 isEqual:v9];
  return v10;
}

+ (id)fc_earlierDateAllowingNilWithDate:()FCAdditions andDate:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v8 = v6;
    goto LABEL_5;
  }

  if (v6)
  {
    v8 = [v5 earlierDate:v6];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)fc_laterDateAllowingNilWithDate:()FCAdditions andDate:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v8 = v6;
    goto LABEL_5;
  }

  if (v6)
  {
    v8 = [v5 laterDate:v6];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)fc_dateRoundedToNearestMinuteForDate:()FCAdditions
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:124 fromDate:v4];

  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [currentCalendar2 dateFromComponents:v6];

  return v8;
}

+ (id)fc_dateRoundedToNearestDayForDate:()FCAdditions
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:28 fromDate:v4];

  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [currentCalendar2 dateFromComponents:v6];

  return v8;
}

- (id)fc_dateByRoundingDownToNearestQuarterHour
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar components:124 fromDate:self];

  [v3 setMinute:{(floor(objc_msgSend(v3, "minute") / 15.0) * 15.0)}];
  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [currentCalendar2 dateFromComponents:v3];

  return v5;
}

- (id)fc_stringWithISO8601Format
{
  v2 = [MEMORY[0x1E696AB78] dateFormatterWithFormat:@"yyyy-MM-dd'T'HH:mm:ssZZ" forReuse:0];
  v3 = [v2 stringFromDate:self];

  return v3;
}

- (id)fc_stringWithYearAndMonthFormat
{
  _fr_sharedYearAndMonthDateFormatter = [objc_opt_class() _fr_sharedYearAndMonthDateFormatter];
  v4 = [_fr_sharedYearAndMonthDateFormatter stringFromDate:self];

  return v4;
}

- (id)fc_adjustToRecentDate
{
  selfCopy = self;
  [selfCopy fc_timeIntervalUntilNow];
  if (v2 > 86400.0)
  {
    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-(v2 % 86400)];

    selfCopy = v3;
  }

  return selfCopy;
}

+ (id)_fr_sharedYearAndMonthDateFormatter
{
  if (_MergedGlobals_194 != -1)
  {
    dispatch_once(&_MergedGlobals_194, &__block_literal_global_148);
  }

  v1 = qword_1EDB27830;

  return v1;
}

@end