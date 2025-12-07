@interface INCodableMeasurementAttributeMetadata(Workflow)
- (WFQuantityParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (id)wf_measurementType;
- (uint64_t)wf_processParameterValue:()Workflow forParameter:parameterState:codableAttribute:completionHandler:;
- (void)wf_updateWithParameterState:()Workflow;
- (void)wf_updateWithParameterValue:()Workflow;
- (void)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:;
@end

@implementation INCodableMeasurementAttributeMetadata(Workflow)

- (void)wf_updateWithParameterValue:()Workflow
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unit = [v5 unit];
      [self setUnit:unit];
    }
  }
}

- (void)wf_updateWithParameterState:()Workflow
{
  v9 = a3;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      name = [self name];
      v5 = WFUnitTypeFromAttributeName(name);

      v6 = MEMORY[0x1E69E0BE8];
      unitString = [v9 unitString];
      v8 = [v6 unitFromString:unitString unitType:v5 caseSensitive:1];
      [self setUnit:v8];
    }
  }
}

- (WFQuantityParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [WFNumberStringSubstitutableState alloc];
    v10 = MEMORY[0x1E696AD98];
    [v8 doubleValue];
    v11 = [v10 numberWithDouble:?];
    stringValue = [v11 stringValue];
    v13 = [(WFNumberStringSubstitutableState *)v9 initWithValue:stringValue];

    v14 = [WFQuantityParameterState alloc];
    unit = [v8 unit];

    symbol = [unit symbol];
    v17 = [(WFQuantityParameterState *)v14 initWithMagnitudeState:v13 unitString:symbol];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = &off_1F4B0ED28;
    v17 = objc_msgSendSuper2(&v19, sel_wf_parameterStateForIntentValue_parameterDefinition_, v6, v7);
  }

  return v17;
}

- (uint64_t)wf_processParameterValue:()Workflow forParameter:parameterState:codableAttribute:completionHandler:
{
  v9 = a3;
  v10 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v16 = v12;

    measurement = [v16 measurement];
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = v14;

    name = [self name];
    v18 = WFUnitTypeFromAttributeName(name);

    if (v18)
    {
      v19 = MEMORY[0x1E69E0BE8];
      unitString = [v16 unitString];
      v21 = [v19 unitFromString:unitString unitType:v18 caseSensitive:1];

      if (v21)
      {
        v22 = objc_alloc(MEMORY[0x1E696AD28]);
        magnitude = [v16 magnitude];
        [magnitude doubleValue];
        measurement = [v22 initWithDoubleValue:v21 unit:?];
      }

      else
      {
        measurement = 0;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        measurement = 0;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      v24 = v13;
      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v21 = v25;

      measurement = [v21 measurement];
    }

    goto LABEL_28;
  }

  measurement = 0;
LABEL_30:
  v10[2](v10, measurement, 0);

  return 1;
}

- (void)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:
{
  v31[2] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = &off_1F4B0ED28;
  v2 = objc_msgSendSuper2(&v24, sel_wf_updatedParameterDefinition_forCodableAttribute_localizer_);
  name = [self name];
  v4 = WFUnitTypeFromAttributeName(name);

  if (v4)
  {
    v30[0] = @"WFUnitType";
    v30[1] = @"AllowsNegativeNumbers";
    v31[0] = v4;
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "supportsNegativeNumbers")}];
    v31[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v7 = [v2 definitionByAddingEntriesInDictionary:v6];

    unit = [self unit];

    if (unit)
    {
      v28[0] = @"DefaultUnit";
      unit2 = [self unit];
      symbol = [unit2 symbol];
      v29[0] = symbol;
      v28[1] = @"PossibleUnits";
      unit3 = [self unit];
      symbol2 = [unit3 symbol];
      v27 = symbol2;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      v29[1] = v13;
      v28[2] = @"DefaultValue";
      v14 = MEMORY[0x1E696AD98];
      [self defaultValue];
      v15 = [v14 numberWithDouble:?];
      v29[2] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
      v2 = [v7 definitionByAddingEntriesInDictionary:v16];

      v7 = v13;
LABEL_10:

      goto LABEL_11;
    }

    defaultUnits = [self defaultUnits];

    if (defaultUnits)
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      v19 = [currentLocale objectForKey:*MEMORY[0x1E695DA08]];
      bOOLValue = [v19 BOOLValue];

      v25 = @"DefaultUnit";
      defaultUnits2 = [self defaultUnits];
      unit2 = defaultUnits2;
      if (bOOLValue)
      {
        [defaultUnits2 firstObject];
      }

      else
      {
        [defaultUnits2 lastObject];
      }
      symbol = ;
      unit3 = [symbol symbol];
      v26 = unit3;
      symbol2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v2 = [v7 definitionByAddingEntriesInDictionary:symbol2];
      goto LABEL_10;
    }

    v2 = v7;
  }

LABEL_11:
  v22 = v2;

  return v2;
}

- (id)wf_measurementType
{
  name = [self name];
  v2 = WFUnitTypeFromAttributeName(name);

  return v2;
}

@end