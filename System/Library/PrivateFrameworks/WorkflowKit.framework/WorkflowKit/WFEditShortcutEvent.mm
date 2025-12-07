@interface WFEditShortcutEvent
+ (id)serializablePropertyTransformers;
@end

@implementation WFEditShortcutEvent

+ (id)serializablePropertyTransformers
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"actionCount";
  v2 = objc_alloc_init(WFEventSignificantFigureValueTransformer);
  v6[1] = @"startingActionCount";
  v7[0] = v2;
  v3 = objc_alloc_init(WFEventSignificantFigureValueTransformer);
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end