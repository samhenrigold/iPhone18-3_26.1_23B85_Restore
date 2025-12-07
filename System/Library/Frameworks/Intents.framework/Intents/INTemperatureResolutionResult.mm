@interface INTemperatureResolutionResult
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
@end

@implementation INTemperatureResolutionResult

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  v45 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  systemLocale = [MEMORY[0x1E695DF58] systemLocale];
  groupingSeparator = [systemLocale groupingSeparator];
  if ([descriptionCopy valueType] == 32 || objc_msgSend(descriptionCopy, "valueType") == 33)
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
  v37 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] == 32)
  {
    [(_INPBIntentSlotValue *)v7 setType:10];
    if ([descriptionCopy valueStyle] == 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = objectCopy;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v32;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v32 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = INIntentSlotValueTransformToTemperatureValue(*(*(&v31 + 1) + 8 * i));
              [(_INPBIntentSlotValue *)v7 addPayloadTemperatureValue:v13];
            }

            v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
          }

          while (v10);
        }

        goto LABEL_26;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unit = [objectCopy unit];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
LABEL_25:
        v8 = INIntentSlotValueTransformToTemperatureValue(objectCopy);
        [(_INPBIntentSlotValue *)v7 addPayloadTemperatureValue:v8];
LABEL_26:
      }
    }
  }

  else if ([descriptionCopy valueType] == 33)
  {
    [(_INPBIntentSlotValue *)v7 setType:59];
    if ([descriptionCopy valueStyle] != 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = objectCopy;
        v15 = objc_alloc_init(_INPBTemperatureList);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v28;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v28 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = INIntentSlotValueTransformToTemperature(*(*(&v27 + 1) + 8 * j));
              [(_INPBTemperatureList *)v15 addTemperature:v21, v27];
            }

            v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v18);
        }

        [(_INPBIntentSlotValue *)v7 addPayloadTemperatureList:v15];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unit2 = [objectCopy unit];
          objc_opt_class();
          v26 = objc_opt_isKindOfClass();

          if (v26)
          {
            [(_INPBIntentSlotValue *)v7 setType:10];
            goto LABEL_25;
          }
        }
      }
    }
  }

  return v7;
}

@end