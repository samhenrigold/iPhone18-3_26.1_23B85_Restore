@interface INTimeIntervalResolutionResult
+ (INTimeIntervalResolutionResult)confirmationRequiredWithTimeIntervalToConfirm:(NSTimeInterval)timeIntervalToConfirm;
+ (INTimeIntervalResolutionResult)successWithResolvedTimeInterval:(NSTimeInterval)resolvedTimeInterval;
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
@end

@implementation INTimeIntervalResolutionResult

+ (INTimeIntervalResolutionResult)confirmationRequiredWithTimeIntervalToConfirm:(NSTimeInterval)timeIntervalToConfirm
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:timeIntervalToConfirm];
  v5 = [self resolutionResultConfirmationRequiredWithItemToConfirm:v4];

  return v5;
}

+ (INTimeIntervalResolutionResult)successWithResolvedTimeInterval:(NSTimeInterval)resolvedTimeInterval
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:resolvedTimeInterval];
  v5 = [self resolutionResultSuccessWithResolvedValue:v4];

  return v5;
}

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  systemLocale = [MEMORY[0x1E695DF58] systemLocale];
  groupingSeparator = [systemLocale groupingSeparator];
  if ([descriptionCopy valueType] == 21 || objc_msgSend(descriptionCopy, "valueType") == 4 || objc_msgSend(descriptionCopy, "valueType") == 3)
  {
    if ([descriptionCopy valueStyle] != 3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_11;
      }

      stringValue = [objectCopy stringValue];
      goto LABEL_10;
    }
  }

  else if ([descriptionCopy valueType] != 22)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [objectCopy firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [objectCopy valueForKey:@"stringValue"];
      stringValue = [v12 if_escapedComponentsJoinedByString:groupingSeparator forLocale:systemLocale];

      v7 = v12;
LABEL_10:

      v7 = stringValue;
    }
  }

LABEL_11:

  return v7;
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  v41 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] == 21)
  {
    [(_INPBIntentSlotValue *)v7 setType:2];
    if ([descriptionCopy valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(objectCopy, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
    {
      v10 = objectCopy;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v36;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v36 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = INIntentSlotValueTransformToDouble(*(*(&v35 + 1) + 8 * i));
            values = [v15 values];
            firstObject = [values firstObject];
            [(_INPBIntentSlotValue *)v7 addPayloadDoubleValue:firstObject];
          }

          v12 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v12);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_33;
      }

      v10 = INIntentSlotValueTransformToDouble(objectCopy);
      values2 = [v10 values];
      firstObject2 = [values2 firstObject];
      [(_INPBIntentSlotValue *)v7 addPayloadDoubleValue:firstObject2];
    }
  }

  else if ([descriptionCopy valueType] == 22)
  {
    [(_INPBIntentSlotValue *)v7 setType:51];
    if ([descriptionCopy valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        firstObject3 = [objectCopy firstObject];
        objc_opt_class();
        v19 = objc_opt_isKindOfClass();

        if (v19)
        {
          v20 = objectCopy;
          v21 = objc_alloc_init(_INPBDoubleList);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v22 = v20;
          v23 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v32;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v32 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = INIntentSlotValueTransformToDouble(*(*(&v31 + 1) + 8 * j));
                [(_INPBDoubleList *)v21 addDataString:v27, v31];
              }

              v24 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v24);
          }

          [(_INPBIntentSlotValue *)v7 addPayloadDoubleList:v21];
        }
      }
    }
  }

  else if ([descriptionCopy valueType] == 4 || objc_msgSend(descriptionCopy, "valueType") == 3)
  {
    [(_INPBIntentSlotValue *)v7 setType:103];
    if ([descriptionCopy valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [objectCopy doubleValue];
        [(_INPBIntentSlotValue *)v7 addPayloadPrimitiveDouble:?];
      }
    }
  }

LABEL_33:

  return v7;
}

@end