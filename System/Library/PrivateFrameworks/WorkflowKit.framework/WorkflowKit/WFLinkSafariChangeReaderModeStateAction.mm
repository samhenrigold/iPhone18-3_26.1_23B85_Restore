@interface WFLinkSafariChangeReaderModeStateAction
- (id)localizedCategoryWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (id)overrideDefaultValuesByParameter;
- (id)parameterOverrides;
- (id)parameterSummary;
@end

@implementation WFLinkSafariChangeReaderModeStateAction

- (id)parameterOverrides
{
  v16[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = WFLinkSafariChangeReaderModeStateAction;
  parameterOverrides = [(WFOverridableLinkAction *)&v11 parameterOverrides];
  v3 = [parameterOverrides mutableCopy];

  v15 = @"ItemDisplayNames";
  v4 = WFLocalizedStringResourceWithKey(@"Hide (changeOperation)", @"Hide");
  v14[0] = v4;
  v5 = WFLocalizedStringResourceWithKey(@"Show (changeOperation)", @"Show");
  v14[1] = v5;
  v6 = WFLocalizedStringResourceWithKey(@"Toggle (changeOperation)", @"Toggle");
  v14[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v16[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  WFAddEntriesToDictionary(v3, @"changeOperation", v8);

  v12 = @"Hidden";
  v13 = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  WFAddEntriesToDictionary(v3, @"setting", v9);

  return v3;
}

- (id)overrideDefaultValuesByParameter
{
  v8[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = WFLinkSafariChangeReaderModeStateAction;
  overrideDefaultValuesByParameter = [(WFLinkChangeBinarySettingAction *)&v6 overrideDefaultValuesByParameter];
  v7 = @"setting";
  v8[0] = @"reader";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [overrideDefaultValuesByParameter if_dictionaryByAddingEntriesFromDictionary:v3];

  return v4;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"WFLinkSafariChangeReaderModeStateAction - Action Name", @"Show/Hide Reader in Safari");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategorySafariReader", @"Safari Reader");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)parameterSummary
{
  v2 = [WFActionParameterSummary alloc];
  v3 = WFLocalizedStringResourceWithKey(@"${changeOperation} Safari Reader", @"${changeOperation} Safari Reader");
  v4 = [(WFActionParameterSummary *)v2 initWithString:v3];

  return v4;
}

@end