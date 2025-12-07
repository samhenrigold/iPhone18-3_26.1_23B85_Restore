@interface INIntentDescription
- (BOOL)isEqual:(id)equal;
- (INIntentDescription)initWithName:(id)name responseName:(id)responseName facadeClass:(Class)class dataClass:(Class)dataClass type:(id)type isPrivate:(BOOL)private handleSelector:(SEL)selector confirmSelector:(SEL)self0 slotsByName:(id)self1;
- (SEL)confirmSelector;
- (SEL)handleSelector;
- (id)slotByName:(id)name;
- (id)slotDescriptions;
- (unint64_t)hash;
@end

@implementation INIntentDescription

uint64_t __39__INIntentDescription_slotDescriptions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 rank];

  if (v7)
  {
    v8 = [v6 rank];

    if (v8)
    {
      v9 = [v5 rank];
      v10 = [v6 rank];
      v11 = [v9 compare:v10];
    }

    else
    {
      v13 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v20 = v13;
        v21 = [v19 name];
        v22 = [v6 facadePropertyName];
        v23 = 136315650;
        v24 = "[INIntentDescription slotDescriptions]_block_invoke";
        v25 = 2112;
        v26 = v21;
        v27 = 2112;
        v28 = v22;
        _os_log_error_impl(&dword_18E991000, v20, OS_LOG_TYPE_ERROR, "%s Slot %@:%@ does not have a valid rank", &v23, 0x20u);
      }

      v11 = 1;
    }
  }

  else
  {
    v12 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = v12;
      v17 = [v15 name];
      v18 = [v5 facadePropertyName];
      v23 = 136315650;
      v24 = "[INIntentDescription slotDescriptions]_block_invoke";
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_error_impl(&dword_18E991000, v16, OS_LOG_TYPE_ERROR, "%s Slot %@:%@ does not have a valid rank", &v23, 0x20u);
    }

    v11 = -1;
  }

  return v11;
}

- (id)slotDescriptions
{
  allValues = [(NSDictionary *)self->_slotsByName allValues];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__INIntentDescription_slotDescriptions__block_invoke;
  v6[3] = &unk_1E7280A88;
  v6[4] = self;
  v4 = [allValues sortedArrayUsingComparator:v6];

  return v4;
}

- (SEL)confirmSelector
{
  if (self->_confirmSelector)
  {
    return self->_confirmSelector;
  }

  else
  {
    return 0;
  }
}

- (SEL)handleSelector
{
  if (self->_handleSelector)
  {
    return self->_handleSelector;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = self->_name;
    v8 = 0;
    if (name == v5[4] || [(NSString *)name isEqualToString:?])
    {
      responseName = self->_responseName;
      if ((responseName == v5[5] || [(NSString *)responseName isEqualToString:?]) && self->_facadeClass == v5[6] && self->_dataClass == v5[7])
      {
        type = self->_type;
        if ((type == v5[8] || [(NSString *)type isEqualToString:?]) && self->_isPrivate == *(v5 + 24))
        {
          v11 = self->_handleSelector ? self->_handleSelector : 0;
          if (v11 == v5[9])
          {
            v12 = self->_confirmSelector ? self->_confirmSelector : 0;
            if (v12 == v5[10])
            {
              slotsByName = self->_slotsByName;
              if (slotsByName == v5[1] || [(NSDictionary *)slotsByName isEqualToDictionary:?])
              {
                v8 = 1;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_responseName hash];
  v5 = NSStringFromClass(self->_facadeClass);
  v6 = [v5 hash];
  v7 = NSStringFromClass(self->_dataClass);
  v8 = [v7 hash];
  v9 = [(NSString *)self->_type hash];
  isPrivate = self->_isPrivate;
  if (self->_handleSelector)
  {
    handleSelector = self->_handleSelector;
  }

  else
  {
    handleSelector = 0;
  }

  v12 = NSStringFromSelector(handleSelector);
  v13 = v4 ^ v3 ^ v6 ^ v8 ^ v9;
  v14 = isPrivate ^ [v12 hash];
  v15 = NSStringFromSelector(self->_confirmSelector);
  v16 = v14 ^ [v15 hash];
  v17 = v16 ^ [(NSDictionary *)self->_slotsByName hash];

  return v13 ^ v17;
}

- (id)slotByName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v5 = [(NSDictionary *)self->_slotsByName objectForKeyedSubscript:nameCopy];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = [(NSDictionary *)self->_alternativeSlotNames objectForKeyedSubscript:nameCopy];
      if (v7 && ([(NSDictionary *)self->_slotsByName objectForKeyedSubscript:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (INIntentDescription)initWithName:(id)name responseName:(id)responseName facadeClass:(Class)class dataClass:(Class)dataClass type:(id)type isPrivate:(BOOL)private handleSelector:(SEL)selector confirmSelector:(SEL)self0 slotsByName:(id)self1
{
  v54 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  responseNameCopy = responseName;
  typeCopy = type;
  byNameCopy = byName;
  v48.receiver = self;
  v48.super_class = INIntentDescription;
  v21 = [(INIntentDescription *)&v48 init];
  if (v21)
  {
    v22 = [nameCopy copy];
    name = v21->_name;
    v21->_name = v22;

    v24 = [responseNameCopy copy];
    responseName = v21->_responseName;
    v21->_responseName = v24;

    v21->_facadeClass = class;
    v21->_dataClass = dataClass;
    v26 = [typeCopy copy];
    type = v21->_type;
    v21->_type = v26;

    v21->_isPrivate = private;
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v21->_handleSelector = selectorCopy;
    v46 = responseNameCopy;
    v47 = nameCopy;
    v45 = typeCopy;
    if (confirmSelector)
    {
      confirmSelectorCopy = confirmSelector;
    }

    else
    {
      confirmSelectorCopy = 0;
    }

    v21->_confirmSelector = confirmSelectorCopy;
    v30 = [byNameCopy copy];
    slotsByName = v21->_slotsByName;
    v21->_slotsByName = v30;

    v44 = byNameCopy;
    v32 = byNameCopy;
    v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v32, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    allKeys = [v32 allKeys];
    v35 = [allKeys countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v50;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v50 != v37)
          {
            objc_enumerationMutation(allKeys);
          }

          v39 = *(*(&v49 + 1) + 8 * i);
          v40 = [v32 objectForKeyedSubscript:{v39, v44}];
          facadePropertyName = [v40 facadePropertyName];
          [(NSDictionary *)v33 setObject:v39 forKey:facadePropertyName];
        }

        v36 = [allKeys countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v36);
    }

    alternativeSlotNames = v21->_alternativeSlotNames;
    v21->_alternativeSlotNames = v33;

    responseNameCopy = v46;
    nameCopy = v47;
    byNameCopy = v44;
    typeCopy = v45;
  }

  return v21;
}

@end