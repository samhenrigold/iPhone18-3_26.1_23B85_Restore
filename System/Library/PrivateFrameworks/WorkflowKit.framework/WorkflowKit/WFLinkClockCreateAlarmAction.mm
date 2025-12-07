@interface WFLinkClockCreateAlarmAction
- (id)overrideDefaultValuesByParameter;
- (id)parameterOverrides;
@end

@implementation WFLinkClockCreateAlarmAction

- (id)overrideDefaultValuesByParameter
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"OpenWhenRun";
  v5[0] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)parameterOverrides
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = WFLinkClockCreateAlarmAction;
  parameterOverrides = [(WFOverridableLinkAction *)&v10 parameterOverrides];
  v3 = [parameterOverrides mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  v11 = @"Placeholder";
  v7 = WFLocalizedStringWithKey(@"Alarm (placeholderOverride)", @"Alarm");
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  WFAddEntriesToDictionary(v6, @"name", v8);

  return v6;
}

@end