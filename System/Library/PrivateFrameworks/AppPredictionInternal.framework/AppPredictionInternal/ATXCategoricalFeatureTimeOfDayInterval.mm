@interface ATXCategoricalFeatureTimeOfDayInterval
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeatureTimeOfDayInterval

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  timeContext = [contextCopy timeContext];

  if (timeContext)
  {
    timeContext2 = [contextCopy timeContext];
    timeOfDay = [timeContext2 timeOfDay];

    v10 = @"6_to_12";
    v11 = @"18_to_24";
    if (timeOfDay < 0x12)
    {
      v11 = @"12_to_18";
    }

    if (timeOfDay >= 0xC)
    {
      v10 = v11;
    }

    if (timeOfDay >= 6)
    {
      v12 = v10;
    }

    else
    {
      v12 = @"0_to_6";
    }
  }

  else
  {
    v13 = __atxlog_handle_relevance_model(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [ATXCategoricalFeatureTimeOfDayHour categoricalFeatureValueForContext:? candidate:?];
    }

    v12 = @"<Unexpected Category Value>";
  }

  return v12;
}

@end