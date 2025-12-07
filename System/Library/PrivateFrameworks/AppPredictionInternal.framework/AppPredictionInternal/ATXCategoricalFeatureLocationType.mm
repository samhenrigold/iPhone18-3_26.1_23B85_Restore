@interface ATXCategoricalFeatureLocationType
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
- (id)featureNameForRTLocationOfInterestType:(int64_t)type;
@end

@implementation ATXCategoricalFeatureLocationType

- (id)featureNameForRTLocationOfInterestType:(int64_t)type
{
  if ((type + 1) < 5)
  {
    return off_2785A2070[type + 1];
  }

  v5 = __atxlog_handle_relevance_model(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureLocationType featureNameForRTLocationOfInterestType:?];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  locationMotionContext = [contextCopy locationMotionContext];
  currentLOI = [locationMotionContext currentLOI];

  if (currentLOI)
  {
    locationMotionContext2 = [contextCopy locationMotionContext];
    currentLOI2 = [locationMotionContext2 currentLOI];
    type = [currentLOI2 type];

    v11 = [(ATXCategoricalFeatureLocationType *)self featureNameForRTLocationOfInterestType:type];
  }

  else
  {
    v11 = @"LOI Type NA";
  }

  return v11;
}

- (void)featureNameForRTLocationOfInterestType:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end