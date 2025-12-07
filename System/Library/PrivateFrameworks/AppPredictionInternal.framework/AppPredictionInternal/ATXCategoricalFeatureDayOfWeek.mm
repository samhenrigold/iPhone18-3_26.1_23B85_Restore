@interface ATXCategoricalFeatureDayOfWeek
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
- (id)featureNameForDayOfWeek:(int)week;
@end

@implementation ATXCategoricalFeatureDayOfWeek

- (id)featureNameForDayOfWeek:(int)week
{
  if (week < 7)
  {
    return off_2785A2038[week];
  }

  v5 = __atxlog_handle_relevance_model(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureDayOfWeek featureNameForDayOfWeek:?];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  timeContext = [contextCopy timeContext];

  if (timeContext)
  {
    timeContext2 = [contextCopy timeContext];
    v9 = -[ATXCategoricalFeatureDayOfWeek featureNameForDayOfWeek:](self, "featureNameForDayOfWeek:", [timeContext2 dayOfWeek]);
  }

  else
  {
    v10 = __atxlog_handle_relevance_model(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXCategoricalFeatureTimeOfDayHour categoricalFeatureValueForContext:? candidate:?];
    }

    v9 = @"<Unexpected Category Value>";
  }

  return v9;
}

- (void)featureNameForDayOfWeek:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
}

@end