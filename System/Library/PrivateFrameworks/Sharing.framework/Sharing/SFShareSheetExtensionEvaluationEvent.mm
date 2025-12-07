@interface SFShareSheetExtensionEvaluationEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFShareSheetExtensionEvaluationEvent

- (NSDictionary)eventPayload
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"activityType";
  activityType = [(SFShareSheetExtensionEvaluationEvent *)self activityType];
  v4 = activityType;
  if (activityType)
  {
    v5 = activityType;
  }

  else
  {
    v5 = &stru_1F1D30528;
  }

  v13[0] = v5;
  v12[1] = @"cacheKey";
  cacheKey = [(SFShareSheetExtensionEvaluationEvent *)self cacheKey];
  v7 = cacheKey;
  if (cacheKey)
  {
    v8 = cacheKey;
  }

  else
  {
    v8 = &stru_1F1D30528;
  }

  v13[1] = v8;
  v12[2] = @"evaluationMs";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SFShareSheetExtensionEvaluationEvent evaluationMs](self, "evaluationMs")}];
  v13[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

- (void)submitEvent
{
  v4 = +[SFShareSheetExtensionEvaluationEvent eventName];
  eventPayload = [(SFShareSheetExtensionEvaluationEvent *)self eventPayload];
  SFMetricsLog(v4, eventPayload);
}

@end