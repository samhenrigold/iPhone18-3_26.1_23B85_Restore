@interface WFLinkSearchAction
- (id)localizedNameWithContext:(id)context;
- (id)overrideLabelsByParameter;
- (id)parameterOverrides;
- (id)parameterSummary;
@end

@implementation WFLinkSearchAction

- (id)parameterOverrides
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = WFLinkSearchAction;
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

  v11 = @"Prompt";
  v7 = WFLocalizedStringWithKey(@"What do you want to search for? (searchPhrase)", @"What do you want to search for?");
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  WFAddEntriesToDictionary(v6, @"searchPhrase", v8);

  return v6;
}

- (id)overrideLabelsByParameter
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"searchPhrase";
  v2 = WFLocalizedStringResourceWithKey(@"Text (searchPhrase)", @"Text");
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)parameterSummary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"Search ${searchPhrase} in %@");
  appName = [(WFOverridableLinkAction *)self appName];
  v6 = [v3 localizedStringWithFormat:v4, appName];

  v7 = [[WFActionParameterSummary alloc] initWithLocalizedString:v6];

  return v7;
}

- (id)localizedNameWithContext:(id)context
{
  v4 = MEMORY[0x1E696AEC0];
  contextCopy = context;
  v6 = WFLocalizedStringResourceWithKey(@"WFLinkSearchAction - Action Name", @"Search in %@");
  v7 = [contextCopy localize:v6];

  appName = [(WFOverridableLinkAction *)self appName];
  v9 = [v4 localizedStringWithFormat:v7, appName];

  return v9;
}

@end