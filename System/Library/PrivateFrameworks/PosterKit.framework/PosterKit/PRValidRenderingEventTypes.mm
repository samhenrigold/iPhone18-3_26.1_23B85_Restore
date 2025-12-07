@interface PRValidRenderingEventTypes
@end

@implementation PRValidRenderingEventTypes

void ____PRValidRenderingEventTypes_block_invoke()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFA8];
  v7[0] = @"PRRenderingEventTypeObscurableContentAppearance";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = __PRValidRenderingEventTypes_validEventTypes;
  __PRValidRenderingEventTypes_validEventTypes = v2;

  v4 = __PRValidRenderingEventTypes_validEventTypes;
  v6 = __PRGrandfatheredRenderingEventTypes(v5);
  [v4 unionSet:v6];
}

@end