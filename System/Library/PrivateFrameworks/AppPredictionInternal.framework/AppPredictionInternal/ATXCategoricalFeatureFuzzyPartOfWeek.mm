@interface ATXCategoricalFeatureFuzzyPartOfWeek
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeatureFuzzyPartOfWeek

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  timeContext = [contextCopy timeContext];

  if (timeContext)
  {
    timeContext2 = [contextCopy timeContext];
    timeOfDay = [timeContext2 timeOfDay];

    if (timeOfDay > 17)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      timeContext3 = [contextCopy timeContext];
      date = [timeContext3 date];
      v16 = [date dateByAddingTimeInterval:86400.0];
      dateInWeekend = [currentCalendar isDateInWeekend:v16];
    }

    else
    {
      currentCalendar = [contextCopy timeContext];
      dateInWeekend = [currentCalendar dateInWeekend];
    }

    v17 = @"Weekday";
    if (dateInWeekend)
    {
      v17 = @"Weekend";
    }

    v13 = v17;
  }

  else
  {
    v12 = __atxlog_handle_relevance_model(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [ATXCategoricalFeatureTimeOfDayHour categoricalFeatureValueForContext:? candidate:?];
    }

    v13 = @"<Unexpected Category Value>";
  }

  return v13;
}

@end