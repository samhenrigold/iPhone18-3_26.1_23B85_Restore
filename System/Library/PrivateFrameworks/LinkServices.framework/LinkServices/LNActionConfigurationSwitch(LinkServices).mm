@interface LNActionConfigurationSwitch(LinkServices)
- (id)actionConfigurationByEvaluatingAction:()LinkServices context:;
- (id)valueForAction:()LinkServices context:;
@end

@implementation LNActionConfigurationSwitch(LinkServices)

- (id)valueForAction:()LinkServices context:
{
  v6 = a3;
  v7 = a4;
  parameterIdentifier = [self parameterIdentifier];
  if ([parameterIdentifier isEqualToString:*MEMORY[0x1E69AC180]])
  {
    widgetFamily = [v7 widgetFamily];

    if (widgetFamily)
    {
      v10 = objc_alloc(MEMORY[0x1E69ACA88]);
      widgetFamily2 = [v7 widgetFamily];
      stringValueType = [MEMORY[0x1E69AC940] stringValueType];
      value = [v10 initWithValue:widgetFamily2 valueType:stringValueType];

      goto LABEL_11;
    }
  }

  else
  {
  }

  parameterIdentifier2 = [self parameterIdentifier];
  v15 = [parameterIdentifier2 isEqualToString:*MEMORY[0x1E69AC148]];

  if (v15)
  {
    origin = [v7 origin];
    v17 = origin;
    v18 = *MEMORY[0x1E69AC150];
    if (origin)
    {
      v18 = origin;
    }

    v19 = v18;

    v20 = objc_alloc(MEMORY[0x1E69ACA88]);
    stringValueType2 = [MEMORY[0x1E69AC940] stringValueType];
    value = [v20 initWithValue:v19 valueType:stringValueType2];
  }

  else
  {
    parameters = [v6 parameters];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __68__LNActionConfigurationSwitch_LinkServices__valueForAction_context___block_invoke;
    v24[3] = &unk_1E74B26A8;
    v24[4] = self;
    stringValueType2 = [parameters if_firstObjectPassingTest:v24];

    value = [stringValueType2 value];
  }

LABEL_11:

  return value;
}

- (id)actionConfigurationByEvaluatingAction:()LinkServices context:
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v34 = v6;
  v8 = [self valueForAction:v6 context:v7];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  cases = [self cases];
  v10 = [cases countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v40;
    v31 = v7;
    v33 = cases;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v40 != v13)
      {
        objc_enumerationMutation(cases);
      }

      v15 = *(*(&v39 + 1) + 8 * v14);
      if ([v15 isDefaultCase])
      {
        v16 = v12;
        v12 = v15;
      }

      else
      {
        value = [v15 value];
        v17Value = [value value];

        if (!v17Value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          if (!v8)
          {
            value2 = [v15 value];
            if (!value2)
            {
LABEL_36:
              v17Value = [v15 configuration];
              v27 = v34;
              v7 = v31;
              v28 = [v17Value actionConfigurationByEvaluatingAction:v34 context:v31];
LABEL_38:

              goto LABEL_39;
            }
          }

          value3 = [v15 value];
          v25 = [v8 isEqual:value3];

          if (v8)
          {
            if (v25)
            {
              goto LABEL_36;
            }
          }

          else
          {

            if (v25)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_30;
        }

        if ([v17Value count])
        {
          v19 = 0;
        }

        else
        {
          v19 = v8 == 0;
        }

        if (v19)
        {
          configuration = [v15 configuration];
          v27 = v34;
          v7 = v31;
          v28 = [configuration actionConfigurationByEvaluatingAction:v34 context:v31];

          goto LABEL_38;
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v16 = v17Value;
        v20 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v36;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v36 != v22)
              {
                objc_enumerationMutation(v16);
              }

              if ([v8 isEqual:*(*(&v35 + 1) + 8 * i)])
              {
                configuration2 = [v15 configuration];
                v27 = v34;
                v7 = v31;
                v28 = [configuration2 actionConfigurationByEvaluatingAction:v34 context:v31];

                cases = v33;
                goto LABEL_39;
              }
            }

            v21 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        cases = v33;
      }

LABEL_30:
      if (++v14 == v11)
      {
        v11 = [cases countByEnumeratingWithState:&v39 objects:v44 count:16];
        v7 = v31;
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_35;
      }
    }
  }

  v12 = 0;
LABEL_35:

  cases = [v12 configuration];
  v27 = v34;
  v28 = [cases actionConfigurationByEvaluatingAction:v34 context:v7];
LABEL_39:

  return v28;
}

@end