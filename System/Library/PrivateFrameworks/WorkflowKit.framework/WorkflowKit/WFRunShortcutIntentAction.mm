@interface WFRunShortcutIntentAction
- (id)parameterOverrides;
@end

@implementation WFRunShortcutIntentAction

- (id)parameterOverrides
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = WFRunShortcutIntentAction;
  parameterOverrides = [(WFOverridableLinkAction *)&v8 parameterOverrides];
  v3 = [parameterOverrides mutableCopy];

  v9 = @"Class";
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  WFAddEntriesToDictionary(v3, @"shortcut", v6);

  return v3;
}

@end