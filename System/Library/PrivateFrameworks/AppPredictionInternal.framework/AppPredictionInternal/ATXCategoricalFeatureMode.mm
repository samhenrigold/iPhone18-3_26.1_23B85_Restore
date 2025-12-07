@interface ATXCategoricalFeatureMode
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
- (id)featureNameForBMUserFocusInferredModeType:(int)type;
@end

@implementation ATXCategoricalFeatureMode

- (id)featureNameForBMUserFocusInferredModeType:(int)type
{
  if ((type - 1) < 0x11)
  {
    return off_2785A1F58[type - 1];
  }

  v5 = __atxlog_handle_relevance_model(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureMode featureNameForBMUserFocusInferredModeType:?];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  inferredModeEvent = [contextCopy inferredModeEvent];

  if (inferredModeEvent)
  {
    inferredModeEvent2 = [contextCopy inferredModeEvent];
    modeType = [inferredModeEvent2 modeType];

    v9 = [(ATXCategoricalFeatureMode *)self featureNameForBMUserFocusInferredModeType:modeType];
  }

  else
  {
    v9 = @"Mode NA";
  }

  return v9;
}

- (void)featureNameForBMUserFocusInferredModeType:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end