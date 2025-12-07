@interface WFLinkNotesPinNotesAction
- (id)localizedNameWithContext:(id)context;
- (id)overrideLabelsByParameter;
- (id)parameterSummary;
@end

@implementation WFLinkNotesPinNotesAction

- (id)overrideLabelsByParameter
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = WFLinkNotesPinNotesAction;
  overrideLabelsByParameter = [(WFLinkFavoriteEntityAction *)&v8 overrideLabelsByParameter];
  v9 = @"operation";
  v3 = WFLocalizedStringResourceWithKey(@"Operation (operation)", @"Operation");
  v10[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  if (overrideLabelsByParameter)
  {
    v5 = [overrideLabelsByParameter if_dictionaryByAddingEntriesFromDictionary:v4];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (id)parameterSummary
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = [WFActionParameterSummary alloc];
  v3 = [WFActionParameterSummaryValue alloc];
  v4 = WFLocalizedStringResourceWithKey(@"${operation} ${entities} to pinned notes", @"${operation} ${entities} to pinned notes");
  v5 = [(WFActionParameterSummaryValue *)v3 initWithKey:@"operation(add)" summaryString:v4];
  v12[0] = v5;
  v6 = [WFActionParameterSummaryValue alloc];
  v7 = WFLocalizedStringResourceWithKey(@"${operation} ${entities} from pinned notes", @"${operation} ${entities} from pinned notes");
  v8 = [(WFActionParameterSummaryValue *)v6 initWithKey:@"operation(remove)" summaryString:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v10 = [(WFActionParameterSummary *)v2 initWithValues:v9];

  return v10;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"WFLinkNotesPinNotesAction - Action Name", @"Pin Notes");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end