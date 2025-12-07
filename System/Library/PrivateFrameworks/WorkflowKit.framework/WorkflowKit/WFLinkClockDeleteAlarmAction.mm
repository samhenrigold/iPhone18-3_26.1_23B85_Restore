@interface WFLinkClockDeleteAlarmAction
- (id)overrideDefaultValuesByParameter;
@end

@implementation WFLinkClockDeleteAlarmAction

- (id)overrideDefaultValuesByParameter
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"OpenWhenRun";
  v5[0] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

@end