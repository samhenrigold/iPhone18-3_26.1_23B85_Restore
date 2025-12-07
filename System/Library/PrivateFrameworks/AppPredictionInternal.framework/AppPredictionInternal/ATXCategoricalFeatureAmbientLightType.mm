@interface ATXCategoricalFeatureAmbientLightType
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
- (id)featureNameForAWDProactiveAppPredictionAmbientLightType:(int)type;
@end

@implementation ATXCategoricalFeatureAmbientLightType

- (id)featureNameForAWDProactiveAppPredictionAmbientLightType:(int)type
{
  if (type < 8)
  {
    return off_2785A20C0[type];
  }

  v5 = __atxlog_handle_relevance_model(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureAmbientLightType featureNameForAWDProactiveAppPredictionAmbientLightType:?];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  ambientLightContext = [contextCopy ambientLightContext];

  if (ambientLightContext)
  {
    ambientLightContext2 = [contextCopy ambientLightContext];
    ambientLightType = [ambientLightContext2 ambientLightType];

    v10 = [(ATXCategoricalFeatureAmbientLightType *)self featureNameForAWDProactiveAppPredictionAmbientLightType:ambientLightType];
  }

  else
  {
    v11 = __atxlog_handle_relevance_model(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXCategoricalFeatureAmbientLightType categoricalFeatureValueForContext:? candidate:?];
    }

    v10 = @"<Unexpected Category Value>";
  }

  return v10;
}

- (void)featureNameForAWDProactiveAppPredictionAmbientLightType:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x12u);
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