@interface VCSleepHomeAccessoryAction
- (VCSleepHomeAccessoryAction)initWithTriggerActionSetsBuilder:(id)builder;
@end

@implementation VCSleepHomeAccessoryAction

- (VCSleepHomeAccessoryAction)initWithTriggerActionSetsBuilder:(id)builder
{
  v29[2] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCSleepHomeAccessoryAction.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"triggerActionSetsBuilder"}];
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = WFLocalizedString(@"Set %@");
  actionSetsSummary = [builderCopy actionSetsSummary];
  summaryText = [actionSetsSummary summaryText];
  v24 = [v6 stringWithFormat:v7, summaryText];

  home = [builderCopy home];
  allActionSets = [builderCopy allActionSets];
  v12 = [allActionSets if_map:&__block_literal_global_10403];
  v28[0] = @"WFHFTriggerActionSetsBuilderParameterStateActionSets";
  v28[1] = @"WFHFTriggerActionSetsBuilderParameterStateHome";
  v29[0] = v12;
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  v29[1] = uUIDString;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

  v26 = @"WFHomeTriggerActionSets";
  v27 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v17 = [VCSleepAction identifierForWorkflowActionIdentifier:@"is.workflow.actions.homeaccessory" serializedParameters:v16];
  name = [home name];
  v25.receiver = self;
  v25.super_class = VCSleepHomeAccessoryAction;
  v19 = [(VCSleepAction *)&v25 initWithIdentifier:v17 workflowActionIdentifier:@"is.workflow.actions.homeaccessory" sourceAppBundleIdentifier:@"com.apple.Home" bundleIdentifierForDisplay:@"com.apple.Home" title:v24 subtitle:name serializedParameters:v16 shortcutAvailability:0];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  return v20;
}

@end