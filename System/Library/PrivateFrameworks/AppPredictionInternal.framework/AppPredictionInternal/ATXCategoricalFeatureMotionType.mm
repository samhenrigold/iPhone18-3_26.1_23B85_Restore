@interface ATXCategoricalFeatureMotionType
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
- (id)featureNameForATXMotionType:(int64_t)type;
@end

@implementation ATXCategoricalFeatureMotionType

- (id)featureNameForATXMotionType:(int64_t)type
{
  if (type < 5)
  {
    return off_2785A2098[type];
  }

  v5 = __atxlog_handle_relevance_model(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [ATXCategoricalFeatureMotionType featureNameForATXMotionType:?];
  }

  return @"<Unexpected Category Value>";
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  locationMotionContext = [contextCopy locationMotionContext];

  if (locationMotionContext)
  {
    locationMotionContext2 = [contextCopy locationMotionContext];
    v9 = -[ATXCategoricalFeatureMotionType featureNameForATXMotionType:](self, "featureNameForATXMotionType:", [locationMotionContext2 motionType]);
  }

  else
  {
    v10 = __atxlog_handle_relevance_model(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXCategoricalFeatureMotionType categoricalFeatureValueForContext:? candidate:?];
    }

    v9 = @"<Unexpected Category Value>";
  }

  return v9;
}

- (void)featureNameForATXMotionType:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
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