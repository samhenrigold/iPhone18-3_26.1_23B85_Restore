@interface ATXCategoricalFeatureUserFocusComputedMode
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
- (id)featureNameForBMUserFocusComputedModeSemanticType:(int)type;
@end

@implementation ATXCategoricalFeatureUserFocusComputedMode

- (id)featureNameForBMUserFocusComputedModeSemanticType:(int)type
{
  if ((type - 1) < 0xB)
  {
    return off_2785A1FE0[type - 1];
  }

  v5 = __atxlog_handle_relevance_model(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureUserFocusComputedMode featureNameForBMUserFocusComputedModeSemanticType:?];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  userFocusComputedModeEvent = [contextCopy userFocusComputedModeEvent];

  if (userFocusComputedModeEvent)
  {
    userFocusComputedModeEvent2 = [contextCopy userFocusComputedModeEvent];
    semanticType = [userFocusComputedModeEvent2 semanticType];

    v9 = [(ATXCategoricalFeatureUserFocusComputedMode *)self featureNameForBMUserFocusComputedModeSemanticType:semanticType];
  }

  else
  {
    v9 = @"Mode NA";
  }

  return v9;
}

- (void)featureNameForBMUserFocusComputedModeSemanticType:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end