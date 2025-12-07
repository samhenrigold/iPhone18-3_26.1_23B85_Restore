@interface INMassResolutionResult
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
@end

@implementation INMassResolutionResult

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  v45 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  systemLocale = [MEMORY[0x1E695DF58] systemLocale];
  groupingSeparator = [systemLocale groupingSeparator];
  if ([descriptionCopy valueType] == 38)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([objectCopy unit], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass))
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = MEMORY[0x1E696AD98];
      v14 = objectCopy;
      [v14 doubleValue];
      v15 = [v13 numberWithDouble:?];
      v16 = [v15 description];
      unit = [v14 unit];

      symbol = [unit symbol];
      v19 = [v12 stringWithFormat:@"%@ %@", v16, symbol];

      v7 = v19;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = groupingSeparator;
        v35 = v7;
        v36 = systemLocale;
        v37 = descriptionCopy;
        v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v38 = objectCopy;
        obj = objectCopy;
        v21 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v41;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v41 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v40 + 1) + 8 * i);
              v26 = MEMORY[0x1E696AEC0];
              v27 = MEMORY[0x1E696AD98];
              [v25 doubleValue];
              v28 = [v27 numberWithDouble:?];
              v29 = [v28 description];
              unit2 = [v25 unit];
              symbol2 = [unit2 symbol];
              v32 = [v26 stringWithFormat:@"%@ %@", v29, symbol2];

              [v20 addObject:v32];
            }

            v22 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v22);
        }

        groupingSeparator = v34;
        systemLocale = v36;
        v7 = [v20 if_escapedComponentsJoinedByString:v34 forLocale:v36];

        descriptionCopy = v37;
        objectCopy = v38;
      }
    }
  }

  return v7;
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  v22 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] == 38)
  {
    [(_INPBIntentSlotValue *)v7 setType:14];
    if ([descriptionCopy valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(objectCopy, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
    {
      v10 = objectCopy;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = INIntentSlotValueTransformToMassValue(*(*(&v17 + 1) + 8 * i));
            [(_INPBIntentSlotValue *)v7 addPayloadMassValue:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_17;
      }

      v10 = INIntentSlotValueTransformToMassValue(objectCopy);
      if (v10)
      {
        [(_INPBIntentSlotValue *)v7 addPayloadMassValue:v10];
      }
    }
  }

LABEL_17:

  return v7;
}

@end