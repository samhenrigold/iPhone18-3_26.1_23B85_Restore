@interface CTXPCGetVoiceLinkQualityMetricResponse
+ (id)allowedClassesForArguments;
- (CTVoiceLinkQualityMetric)linkQuality;
- (CTXPCGetVoiceLinkQualityMetricResponse)initWithVoiceLinkQualityMetric:(id)metric;
@end

@implementation CTXPCGetVoiceLinkQualityMetricResponse

- (CTXPCGetVoiceLinkQualityMetricResponse)initWithVoiceLinkQualityMetric:(id)metric
{
  v10[1] = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  v9 = @"linkQuality";
  v10[0] = metricCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetVoiceLinkQualityMetricResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (CTVoiceLinkQualityMetric)linkQuality
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"linkQuality"];
  v4 = CTThrowingCastIfClass<CTVoiceLinkQualityMetric>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetVoiceLinkQualityMetricResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end