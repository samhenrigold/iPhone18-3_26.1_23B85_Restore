@interface WFContextualActionMetricEvent
+ (id)serializablePropertyTransformers;
@end

@implementation WFContextualActionMetricEvent

+ (id)serializablePropertyTransformers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"itemCount";
  v2 = objc_alloc_init(WFEventSignificantFigureValueTransformer);
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end