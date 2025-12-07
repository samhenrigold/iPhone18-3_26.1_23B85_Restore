@interface INObjectResolutionResult
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
- (void)transformResolutionResultForIntent:(id)intent intentSlotDescription:(id)description withOptionsProvider:(id)provider completion:(id)completion;
@end

@implementation INObjectResolutionResult

- (void)transformResolutionResultForIntent:(id)intent intentSlotDescription:(id)description withOptionsProvider:(id)provider completion:(id)completion
{
  intentCopy = intent;
  descriptionCopy = description;
  providerCopy = provider;
  completionCopy = completion;
  _codableDescription = [intentCopy _codableDescription];
  if (_codableDescription)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = _codableDescription;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  resolvedValue = [(INIntentResolutionResult *)self resolvedValue];
  _referencedCodableDescriptionsByClassName = [v16 _referencedCodableDescriptionsByClassName];
  v19 = [INCodableDescription _codableDescriptionForTypedObject:resolvedValue inDictionary:_referencedCodableDescriptionsByClassName];

  if (v19)
  {
    name = [descriptionCopy name];
    v21 = [v16 attributeByName:name];

    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    [v23 setCodableDescription:v19];
    codableAttribute = [descriptionCopy codableAttribute];
    if (codableAttribute)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = codableAttribute;
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

    v26 = v25;

    [v26 setCodableDescription:v19];
  }

  v27.receiver = self;
  v27.super_class = INObjectResolutionResult;
  [(INIntentResolutionResult *)&v27 transformResolutionResultForIntent:intentCopy intentSlotDescription:descriptionCopy withOptionsProvider:providerCopy completion:completionCopy];
}

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  systemLocale = [MEMORY[0x1E695DF58] systemLocale];
  groupingSeparator = [systemLocale groupingSeparator];
  if ([descriptionCopy valueType] == 225)
  {
    if ([descriptionCopy valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(objectCopy, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) != 0))
    {
      v12 = [objectCopy valueForKey:@"displayString"];
      displayString = [v12 if_escapedComponentsJoinedByString:groupingSeparator forLocale:systemLocale];

      v7 = v12;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_9;
      }

      displayString = [objectCopy displayString];
    }

    v7 = displayString;
  }

LABEL_9:

  return v7;
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  v33 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] == 225)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
    codableAttribute = [descriptionCopy codableAttribute];
    if (codableAttribute)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = codableAttribute;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    valueTransformer = [v10 valueTransformer];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __70__INObjectResolutionResult__intentSlotValueForObject_slotDescription___block_invoke;
    v28[3] = &unk_1E7283450;
    v12 = valueTransformer;
    v29 = v12;
    v30 = v7;
    v13 = v10;
    v31 = v13;
    v14 = MEMORY[0x193AD7780](v28);
    if ([descriptionCopy valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(objectCopy, "firstObject"), v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) != 0))
    {
      v23 = v12;
      v17 = objectCopy;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v14[2](v14, *(*(&v24 + 1) + 8 * i));
          }

          v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v19);
      }

      v12 = v23;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        (v14)[2](v14, objectCopy);
      }
    }
  }

  return v7;
}

void __70__INObjectResolutionResult__intentSlotValueForObject_slotDescription___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [objc_opt_class() transformedValueClass];
  if (v3 == objc_opt_class())
  {
    v5 = INIntentSlotValueTransformToCustomObject(v12);
    [*(a1 + 40) addPayloadCustomObject:v5];
  }

  else
  {
    v4 = [*(a1 + 48) valueTransformer];
    v5 = [v4 transformedValue:v12];

    v6 = [INArchivedObject alloc];
    v7 = [*(a1 + 48) typeName];
    v8 = [v5 data];
    v9 = [(INArchivedObject *)v6 initWithTypeName:v7 messageData:v8];

    v10 = *(a1 + 40);
    v11 = INIntentSlotValueTransformToArchivedObject(v9);
    [v10 addPayloadArchivedObject:v11];
  }
}

@end