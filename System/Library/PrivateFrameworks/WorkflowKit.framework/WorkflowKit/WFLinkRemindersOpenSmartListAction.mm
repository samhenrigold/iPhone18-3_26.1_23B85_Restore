@interface WFLinkRemindersOpenSmartListAction
- (id)parameterOverrides;
@end

@implementation WFLinkRemindersOpenSmartListAction

- (id)parameterOverrides
{
  v10[3] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = WFLinkRemindersOpenSmartListAction;
  parameterOverrides = [(WFOverridableLinkAction *)&v8 parameterOverrides];
  v3 = [parameterOverrides mutableCopy];

  v9[0] = @"Class";
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10[0] = v5;
  v10[1] = @"targetEntity";
  v9[1] = @"KeyForSerialization";
  v9[2] = @"LegacyKey";
  v10[2] = @"target";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  WFAddEntriesToDictionary(v3, @"target", v6);

  return v3;
}

@end