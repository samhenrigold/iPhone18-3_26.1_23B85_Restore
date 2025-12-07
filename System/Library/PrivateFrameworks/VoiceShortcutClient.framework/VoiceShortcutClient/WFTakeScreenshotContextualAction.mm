@interface WFTakeScreenshotContextualAction
- (WFTakeScreenshotContextualAction)initWithIgnoreContextualAssistanceLayersOption:(BOOL)option;
@end

@implementation WFTakeScreenshotContextualAction

- (WFTakeScreenshotContextualAction)initWithIgnoreContextualAssistanceLayersOption:(BOOL)option
{
  optionCopy = option;
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = WFLocalizedString(@"Take Screenshot");
  v6 = [WFContextualActionParameter alloc];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:optionCopy];
  v8 = [(WFContextualActionParameter *)v6 initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:@"WFTakeScreenshotIgnoreContextualAssistanceLayers" wfSerializedRepresentation:v7];
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  LOBYTE(v14) = 0;
  v10 = [(WFContextualAction *)self initWithIdentifier:@"is.workflow.actions.takescreenshot" wfActionIdentifier:@"is.workflow.actions.takescreenshot" type:0 correspondingSystemActionType:0 associatedAppBundleIdentifier:@"com.apple.Preferences" resultFileOperation:1 alternate:v14 filteringBehavior:0 parameters:v9 displayString:v5 title:v5 subtitle:0 icon:0];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  return v11;
}

@end