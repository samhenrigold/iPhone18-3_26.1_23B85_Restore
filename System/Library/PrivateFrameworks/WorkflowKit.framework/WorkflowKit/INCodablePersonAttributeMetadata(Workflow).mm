@interface INCodablePersonAttributeMetadata(Workflow)
- (WFEmailAddressSubstitutableState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (id)wf_contentItemForValue:()Workflow;
- (id)wf_parameterClass;
@end

@implementation INCodablePersonAttributeMetadata(Workflow)

- (id)wf_contentItemForValue:()Workflow
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E6996D58];
    v6 = [MEMORY[0x1E6996D00] cnContactWithINPerson:v4];

    v7 = [v5 itemWithObject:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = &off_1F4B0F560;
    v7 = objc_msgSendSuper2(&v9, sel_wf_contentItemForValue_, v4);
  }

  return v7;
}

- (WFEmailAddressSubstitutableState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v33[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_23;
    }

    v9 = [v7 if_compactMap:&__block_literal_global_67071];
  }

  v10 = v9;
  if (v9)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v11 = getCNContactStoreClass_softClass_67072;
    v32 = getCNContactStoreClass_softClass_67072;
    if (!getCNContactStoreClass_softClass_67072)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __getCNContactStoreClass_block_invoke_67073;
      v28[3] = &unk_1E837FAC0;
      v28[4] = &v29;
      __getCNContactStoreClass_block_invoke_67073(v28);
      v11 = v30[3];
    }

    v12 = v11;
    _Block_object_dispose(&v29, 8);
    v13 = objc_alloc_init(v11);
    requiredKeysToFetch = [MEMORY[0x1E6996CC8] requiredKeysToFetch];
    IsAuthorizedToAccessContact = WFCNContactIsAuthorizedToAccessContact();
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __98__INCodablePersonAttributeMetadata_Workflow__wf_parameterStateForIntentValue_parameterDefinition___block_invoke_2;
    v24[3] = &unk_1E837E4E0;
    v27 = IsAuthorizedToAccessContact;
    v16 = v13;
    v25 = v16;
    v17 = requiredKeysToFetch;
    v26 = v17;
    v18 = [v10 if_map:v24];
    type = [self type];
    if (type <= 1)
    {
      if (type)
      {
        if (type != 1)
        {
          goto LABEL_27;
        }

        v20 = [(WFMultipleValueParameterState *)[WFEmailAddressSubstitutableState alloc] initWithParameterStates:v18];
      }

      else
      {
        v20 = [(WFMultipleValueParameterState *)[WFContactSubstitutableState alloc] initWithParameterStates:v18];
      }
    }

    else
    {
      switch(type)
      {
        case 2:
          v20 = [(WFMultipleValueParameterState *)[WFPhoneNumberSubstitutableState alloc] initWithParameterStates:v18];
          break;
        case 3:
          v20 = [(WFMultipleValueParameterState *)[WFContactHandleSubstitutableState alloc] initWithParameterStates:v18];
          break;
        case 4:
          v4 = 0;
LABEL_21:
          v21 = 0;
          goto LABEL_22;
        default:
LABEL_27:
          v21 = 1;
LABEL_22:

          if (!v21)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
      }
    }

    v4 = v20;
    goto LABEL_21;
  }

LABEL_23:
  v23.receiver = self;
  v23.super_class = &off_1F4B0F560;
  v4 = objc_msgSendSuper2(&v23, sel_wf_parameterStateForIntentValue_parameterDefinition_, v7, v8);
LABEL_24:

  return v4;
}

- (id)wf_parameterClass
{
  if ([self type] > 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = objc_opt_class();
  }

  return v1;
}

@end