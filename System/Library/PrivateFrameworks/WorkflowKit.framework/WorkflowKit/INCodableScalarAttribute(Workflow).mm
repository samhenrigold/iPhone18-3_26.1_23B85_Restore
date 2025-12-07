@interface INCodableScalarAttribute(Workflow)
- (WFVariableStringParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (id)wf_objectClass;
- (id)wf_parameterClass;
- (void)wf_updatedParameterDefinition:()Workflow parameterClass:localizer:;
@end

@implementation INCodableScalarAttribute(Workflow)

- (WFVariableStringParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v6 = a3;
  v7 = a4;
  if ([self type] != 7)
  {
    v16.receiver = self;
    v16.super_class = &off_1F4B05710;
    v12 = objc_msgSendSuper2(&v16, sel_wf_parameterStateForIntentValue_parameterDefinition_, v6, v7);
    goto LABEL_11;
  }

  if (![self modifier])
  {
    v13 = objc_opt_class();
    v9 = WFEnforceClass_1501(v6, v13);
    if (v9)
    {
      v14 = [WFMultipleValueParameterState alloc];
      v10 = [v9 if_compactMap:&__block_literal_global_42508];
      v11 = [(WFMultipleValueParameterState *)v14 initWithParameterStates:v10];
      goto LABEL_8;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v8 = objc_opt_class();
  v9 = WFEnforceClass_1501(v6, v8);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [[WFVariableString alloc] initWithString:v9];
  v11 = [[WFVariableStringParameterState alloc] initWithVariableString:v10];
LABEL_8:
  v12 = v11;

LABEL_10:
LABEL_11:

  return v12;
}

- (void)wf_updatedParameterDefinition:()Workflow parameterClass:localizer:
{
  v33[1] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = &off_1F4B05710;
  v2 = objc_msgSendSuper2(&v25, sel_wf_updatedParameterDefinition_parameterClass_localizer_);
  if (([self supportsDynamicEnumeration] & 1) == 0 && objc_msgSend(self, "type") == 7)
  {
    metadata = [self metadata];
    v4 = objc_opt_class();
    v5 = WFEnforceClass_1501(metadata, v4);

    v32 = @"TextAlignment";
    isMultiline = [v5 isMultiline];
    v7 = @"Right";
    if (isMultiline)
    {
      v7 = @"Left";
    }

    v33[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v9 = [v2 definitionByAddingEntriesInDictionary:v8];

    localizedDefaultValue = [v5 localizedDefaultValue];
    v11 = localizedDefaultValue;
    if (localizedDefaultValue)
    {
      v30 = @"DefaultValue";
      v31 = localizedDefaultValue;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v13 = [v9 definitionByAddingEntriesInDictionary:v12];

      v9 = v13;
    }

    v28[0] = @"Multiline";
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isMultiline")}];
    v29[0] = v14;
    v28[1] = @"DisableAutocorrection";
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "disableAutocorrect")}];
    v29[1] = v15;
    v28[2] = @"DisableSmartDashes";
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "disableSmartDashes")}];
    v29[2] = v16;
    v28[3] = @"DisableSmartQuotes";
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "disableSmartQuotes")}];
    v29[3] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];
    v2 = [v9 definitionByAddingEntriesInDictionary:v18];

    capitalization = [v5 capitalization];
    if (capitalization <= 3)
    {
      v20 = off_1E8379D48[capitalization];
      v26 = @"AutocapitalizationType";
      v27 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v22 = [v2 definitionByAddingEntriesInDictionary:v21];

      v2 = v22;
    }
  }

  v23 = v2;

  return v2;
}

- (id)wf_parameterClass
{
  if ([self type] == 7)
  {
    v1 = objc_opt_class();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)wf_objectClass
{
  type = [self type];
  v2 = 0;
  if (type <= 5)
  {
    if (type >= 6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (type == 6)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v2 = objc_opt_class();
  }

  else if (type == 7 || type == 8)
  {
LABEL_3:
    v2 = objc_opt_class();
  }

LABEL_4:

  return v2;
}

@end