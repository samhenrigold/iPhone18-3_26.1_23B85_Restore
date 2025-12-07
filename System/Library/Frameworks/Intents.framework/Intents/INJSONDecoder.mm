@interface INJSONDecoder
- (id)_decodeObjectOfClass:(Class)class withCodableDescription:(id)description from:(id)from outCodableDescription:(id *)codableDescription;
- (id)_decodeWithCodableAttribute:(id)attribute from:(id)from;
- (id)decodeObjectsOfClass:(Class)class from:(id)from;
- (id)decodeWithCodableAttribute:(id)attribute from:(id)from;
- (void)decodeObject:(id)object withCodableDescription:(id)description from:(id)from;
@end

@implementation INJSONDecoder

- (id)_decodeWithCodableAttribute:(id)attribute from:(id)from
{
  v59 = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = attributeCopy;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
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

    v14 = v9;

    if ([v14 type] == 8 || objc_msgSend(v14, "type") == 7)
    {
      v15 = [(INJSONDecoder *)self decodeObjectOfClass:objc_opt_class() from:fromCopy];
    }

    else
    {
      v15 = fromCopy;
    }

    v18 = v15;
LABEL_27:

    goto LABEL_70;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = attributeCopy;
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v41 = v17;

        v42 = +[INSchema systemSchema];
        _types = [v42 _types];
        typeName = [v41 typeName];
        v45 = INIntentDefinitionNamespacedName(@"System", typeName);
        v46 = [_types objectForKeyedSubscript:v45];

        objectClass = [v41 objectClass];
        v18 = [(INJSONDecoder *)self _decodeObjectOfClass:objectClass withCodableDescription:v46 from:fromCopy outCodableDescription:0];
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_70;
    }

    v12 = attributeCopy;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    codableDescription = [v14 codableDescription];
    v53 = 0;
    v18 = -[INJSONDecoder _decodeObjectOfClass:withCodableDescription:from:outCodableDescription:](self, "_decodeObjectOfClass:withCodableDescription:from:outCodableDescription:", [v14 objectClass], codableDescription, fromCopy, &v53);
    v29 = v53;
    v30 = v29;
    if (v29 && v29 != codableDescription)
    {
      [v14 setCodableDescription:v29];
      typeName2 = [v30 typeName];
      [v14 setObjectTypeName:typeName2];
    }

    goto LABEL_27;
  }

  v10 = attributeCopy;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = v11;

  codableEnum = [v19 codableEnum];
  type = [codableEnum type];
  v22 = fromCopy;
  v23 = v22;
  if (type == 2)
  {
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v51 = codableEnum;
    v52 = attributeCopy;
    v32 = v24;

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v33 = v32;
    v34 = [v33 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v37 = *v55;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v55 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v39 = *(*(&v54 + 1) + 8 * i);
          if (v39)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = [v19 valueWithName:v39];
              v36 |= 1 << [v40 index];
            }
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v35);
    }

    else
    {
      v36 = 0;
    }

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v36];

    attributeCopy = v52;
    codableEnum = v51;
  }

  else
  {
    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v25 = v10;
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }

      v48 = v26;

      v49 = [v48 valueWithName:v23];

      if (v49)
      {
        index = [v49 index];
      }

      else
      {
        index = 0;
      }
    }

    else
    {
      index = 0;
    }

    v18 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  }

LABEL_70:

  return v18;
}

- (id)_decodeObjectOfClass:(Class)class withCodableDescription:(id)description from:(id)from outCodableDescription:(id *)codableDescription
{
  v30 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  fromCopy = from;
  if (!fromCopy)
  {
LABEL_26:
    v12 = 0;
    goto LABEL_27;
  }

  if (objc_opt_class() != class && [(objc_class *)class conformsToProtocol:&unk_1F02E9CC0]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = [(objc_class *)class _intents_decodeWithJSONDecoder:self codableDescription:descriptionCopy from:fromCopy];
    goto LABEL_27;
  }

  if (!descriptionCopy)
  {
    v13 = +[INSchema systemSchema];
    descriptionCopy = [v13 _objectDescriptionForTypeOfClass:class];

    if (!descriptionCopy)
    {
      if ([(objc_class *)class conformsToProtocol:&unk_1F02E9CC0]& 1) != 0 || (objc_opt_respondsToSelector())
      {
        v12 = [(objc_class *)class _intents_decodeWithJSONDecoder:self codableDescription:0 from:fromCopy];
        descriptionCopy = 0;
        goto LABEL_27;
      }

      v22 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v24 = v22;
        v25 = NSStringFromClass(class);
        v26 = 136315394;
        v27 = "[INJSONDecoder _decodeObjectOfClass:withCodableDescription:from:outCodableDescription:]";
        v28 = 2112;
        v29 = v25;
        _os_log_error_impl(&dword_18E991000, v24, OS_LOG_TYPE_ERROR, "%s %@ is not JSON decodable", &v26, 0x16u);
      }

      descriptionCopy = 0;
      goto LABEL_26;
    }
  }

  if (objc_opt_class() == class)
  {
    v14 = fromCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [v16 objectForKeyedSubscript:@"_type"];

    if (v17)
    {
      _nullable_schema = [descriptionCopy _nullable_schema];
      v19 = [_nullable_schema _objectDescriptionWithSemanticKeypath:v17];

      if (v19)
      {
        v20 = v19;

        descriptionCopy = v20;
      }
    }

    v12 = [[INCustomObject alloc] initWithObject:0 codableDescription:descriptionCopy];
  }

  else
  {
    v12 = objc_alloc_init(class);
  }

  [(INJSONDecoder *)self decodeObject:v12 withCodableDescription:descriptionCopy from:fromCopy];
  if (codableDescription)
  {
    v21 = descriptionCopy;
    *codableDescription = descriptionCopy;
  }

LABEL_27:

  return v12;
}

- (id)decodeObjectsOfClass:(Class)class from:(id)from
{
  v25 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (fromCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v8 = fromCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (isKindOfClass)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [(INJSONDecoder *)self decodeObjectOfClass:class from:*(*(&v20 + 1) + 8 * i), v20];
            if (v16)
            {
              [array addObject:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v18 = [(INJSONDecoder *)self decodeObjectOfClass:class from:v8];
      if (v18)
      {
        [array addObject:v18];
      }
    }

    if ([array count])
    {
      v17 = [array copy];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)decodeWithCodableAttribute:(id)attribute from:(id)from
{
  v29 = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  fromCopy = from;
  if (fromCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = fromCopy;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = attributeCopy;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  codableEnum = [v12 codableEnum];

  if (!v9 || codableEnum && [codableEnum type] == 2)
  {
    v14 = [(INJSONDecoder *)self _decodeWithCodableAttribute:v10 from:fromCopy];
  }

  else
  {
    v23 = codableEnum;
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [(INJSONDecoder *)self _decodeWithCodableAttribute:v10 from:*(*(&v24 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v18);
    }

    v14 = [v15 copy];
    codableEnum = v23;
  }

  return v14;
}

- (void)decodeObject:(id)object withCodableDescription:(id)description from:(id)from
{
  v39 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  descriptionCopy = description;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 && [objectCopy conformsToProtocol:&unk_1F02E9CC0] && (objc_opt_respondsToSelector())
  {
    [objectCopy _intents_decodeWithJSONDecoder:self codableDescription:descriptionCopy from:fromCopy];
LABEL_5:

    goto LABEL_23;
  }

  if (descriptionCopy || (+[INSchema systemSchema](INSchema, "systemSchema"), v10 = objc_claimAutoreleasedReturnValue(), [v10 _objectDescriptionForTypeOfClass:objc_opt_class()], descriptionCopy = objc_claimAutoreleasedReturnValue(), v10, descriptionCopy))
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    attributes = [descriptionCopy attributes];
    allValues = [attributes allValues];

    v13 = [allValues countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(allValues);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          propertyName = [v17 propertyName];
          if ([objectCopy _intents_isValidKey:propertyName])
          {
            v19 = fromCopy;
            if (fromCopy)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = v19;
              }

              else
              {
                v20 = 0;
              }
            }

            else
            {
              v20 = 0;
            }

            v21 = v20;

            v22 = [v21 objectForKeyedSubscript:propertyName];

            v23 = [(INJSONDecoder *)self decodeWithCodableAttribute:v17 from:v22];

            v24 = [objectCopy _setterForProperty:propertyName];
            [objectCopy if_setValueIfNonNil:v23 forKey:v24];
          }
        }

        v14 = [allValues countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v14);
    }
  }

  else
  {
    if (([objectCopy conformsToProtocol:&unk_1F02E9CC0] & 1) == 0)
    {
      v25 = INSiriLogContextIntents;
      if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      descriptionCopy = v25;
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 136315394;
      v36 = "[INJSONDecoder decodeObject:withCodableDescription:from:]";
      v37 = 2112;
      v38 = v27;
      _os_log_error_impl(&dword_18E991000, descriptionCopy, OS_LOG_TYPE_ERROR, "%s %@ is not JSON decodable", buf, 0x16u);

      goto LABEL_5;
    }

    if (objc_opt_respondsToSelector())
    {
      [objectCopy _intents_decodeWithJSONDecoder:self codableDescription:0 from:fromCopy];
    }
  }

LABEL_23:
}

@end