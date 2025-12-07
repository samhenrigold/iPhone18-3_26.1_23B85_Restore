@interface WFLinkVoiceMemosPlayRecordingAction
- (id)localizedCategoryWithContext:(id)context;
- (id)overrideLabelsByParameter;
@end

@implementation WFLinkVoiceMemosPlayRecordingAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"VoiceMemosSubcategoryRecordings", @"Recordings");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)overrideLabelsByParameter
{
  v15[1] = *MEMORY[0x1E69E9840];
  entityParameterName = [(WFLinkVoiceMemosPlayRecordingAction *)self entityParameterName];
  if (entityParameterName)
  {
    v4 = entityParameterName;
    entityName = [(WFLinkEntityAction *)self entityName];
    if (entityName)
    {
      v6 = entityName;
      entityName2 = [(WFLinkEntityAction *)self entityName];
      v8 = [entityName2 key];
      v9 = [v8 length];

      if (v9)
      {
        entityParameterName2 = [(WFLinkVoiceMemosPlayRecordingAction *)self entityParameterName];
        v14 = entityParameterName2;
        entityName3 = [(WFLinkEntityAction *)self entityName];
        v15[0] = entityName3;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_7:

  return v12;
}

@end