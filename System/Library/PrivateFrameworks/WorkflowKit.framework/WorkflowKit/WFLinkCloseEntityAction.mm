@interface WFLinkCloseEntityAction
- (id)entityParameterName;
- (id)overrideLabelsByParameter;
- (id)parameterSummary;
@end

@implementation WFLinkCloseEntityAction

- (id)parameterSummary
{
  v11.receiver = self;
  v11.super_class = WFLinkCloseEntityAction;
  parameterSummary = [(WFAppIntentExecutionAction *)&v11 parameterSummary];
  metadata = [(WFAppIntentExecutionAction *)self metadata];
  actionConfiguration = [metadata actionConfiguration];
  v6 = actionConfiguration | parameterSummary;

  if (v6)
  {
    v9 = parameterSummary;
  }

  else
  {
    v7 = [WFActionParameterSummary alloc];
    v8 = WFLocalizedStringResourceWithKey(@"Close ${target}", @"Close ${target}");
    v9 = [(WFActionParameterSummary *)v7 initWithString:v8];
  }

  return v9;
}

- (id)overrideLabelsByParameter
{
  v15[1] = *MEMORY[0x1E69E9840];
  entityParameterName = [(WFLinkCloseEntityAction *)self entityParameterName];
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
        entityParameterName2 = [(WFLinkCloseEntityAction *)self entityParameterName];
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

- (id)entityParameterName
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"entity";
  v6[1] = @"target";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [(WFLinkEntityAction *)self actualEntityParameterNameFromPossibleNames:v3];

  return v4;
}

@end