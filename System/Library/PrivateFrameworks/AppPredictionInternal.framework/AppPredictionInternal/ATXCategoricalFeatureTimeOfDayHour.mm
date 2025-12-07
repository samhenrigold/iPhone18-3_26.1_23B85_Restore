@interface ATXCategoricalFeatureTimeOfDayHour
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeatureTimeOfDayHour

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  timeContext = [contextCopy timeContext];

  if (timeContext)
  {
    v8 = MEMORY[0x277CCABB0];
    timeContext2 = [contextCopy timeContext];
    v10 = [v8 numberWithInt:{objc_msgSend(timeContext2, "timeOfDay")}];
    stringValue = [v10 stringValue];
  }

  else
  {
    v12 = __atxlog_handle_relevance_model(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [ATXCategoricalFeatureTimeOfDayHour categoricalFeatureValueForContext:? candidate:?];
    }

    stringValue = @"<Unexpected Category Value>";
  }

  return stringValue;
}

- (void)categoricalFeatureValueForContext:(uint64_t)a1 candidate:.cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end