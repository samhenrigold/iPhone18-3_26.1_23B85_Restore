@interface WFLinkWritingToolsRewriteAction
- (id)parameterOverrides;
@end

@implementation WFLinkWritingToolsRewriteAction

- (id)parameterOverrides
{
  v8[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = WFLinkWritingToolsRewriteAction;
  parameterOverrides = [(WFOverridableLinkAction *)&v6 parameterOverrides];
  v3 = [parameterOverrides mutableCopy];

  v7 = @"Hidden";
  v8[0] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  WFAddEntriesToDictionary(v3, @"processInstanceIdentifier", v4);

  return v3;
}

@end