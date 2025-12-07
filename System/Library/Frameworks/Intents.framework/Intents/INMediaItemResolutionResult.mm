@interface INMediaItemResolutionResult
+ (NSArray)successesWithResolvedMediaItems:(NSArray *)resolvedMediaItems;
- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description;
- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description;
@end

@implementation INMediaItemResolutionResult

+ (NSArray)successesWithResolvedMediaItems:(NSArray *)resolvedMediaItems
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = resolvedMediaItems;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self resolutionResultSuccessWithResolvedValue:{*(*(&v13 + 1) + 8 * i), v13}];
        [v5 addObject:v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_vocabularyValueForObject:(id)object slotDescription:(id)description
{
  objectCopy = object;
  descriptionCopy = description;
  v7 = [objectCopy description];
  systemLocale = [MEMORY[0x1E695DF58] systemLocale];
  groupingSeparator = [systemLocale groupingSeparator];
  if ([descriptionCopy valueType] == 153)
  {
    if ([descriptionCopy valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(objectCopy, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) != 0))
    {
      v12 = [objectCopy valueForKey:@"spokenPhrase"];
      spokenPhrase = [v12 if_escapedComponentsJoinedByString:groupingSeparator forLocale:systemLocale];

      v7 = v12;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_9;
      }

      spokenPhrase = [objectCopy spokenPhrase];
    }

    v7 = spokenPhrase;
  }

LABEL_9:

  return v7;
}

- (id)_intentSlotValueForObject:(id)object slotDescription:(id)description
{
  v22 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  if ([descriptionCopy valueType] == 153)
  {
    [(_INPBIntentSlotValue *)v7 setType:1000];
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

            v15 = INIntentSlotValueTransformToMediaItemValue(*(*(&v17 + 1) + 8 * i));
            [(_INPBIntentSlotValue *)v7 addPayloadMediaItemValue:v15];
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

      v10 = INIntentSlotValueTransformToMediaItemValue(objectCopy);
      if (v10)
      {
        [(_INPBIntentSlotValue *)v7 addPayloadMediaItemValue:v10];
      }
    }
  }

LABEL_17:

  return v7;
}

@end