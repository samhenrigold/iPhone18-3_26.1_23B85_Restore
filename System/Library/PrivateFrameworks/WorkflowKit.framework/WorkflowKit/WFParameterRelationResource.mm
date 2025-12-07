@interface WFParameterRelationResource
- (NSArray)comparedValues;
- (NSString)parameterKey;
- (NSString)relation;
- (WFAction)action;
- (WFParameter)parameter;
- (WFParameterRelationResource)initWithParameterKey:(id)key parameterValues:(id)values relation:(id)relation;
- (void)action:(id)action parameterStateDidChangeForKey:(id)key;
- (void)refreshAvailability;
- (void)setupWithAction:(id)action parameter:(id)parameter;
@end

@implementation WFParameterRelationResource

- (WFParameter)parameter
{
  WeakRetained = objc_loadWeakRetained(&self->_parameter);

  return WeakRetained;
}

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (void)action:(id)action parameterStateDidChangeForKey:(id)key
{
  keyCopy = key;
  parameterKey = [(WFParameterRelationResource *)self parameterKey];
  isEqualToString = objc_msgSend_isEqualToString_(keyCopy);

  if (isEqualToString)
  {

    [(WFResource *)self refreshAvailabilityWithNotification];
  }
}

- (void)refreshAvailability
{
  v56 = *MEMORY[0x1E69E9840];
  action = [(WFParameterRelationResource *)self action];
  v4 = action;
  if (!action)
  {
    [(WFResource *)self updateAvailability:0 withError:0];
    goto LABEL_79;
  }

  if ([action isRunning] && (objc_msgSend(v4, "processedParameters"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    processedParameters = [v4 processedParameters];
    parameterKey = [(WFParameterRelationResource *)self parameterKey];
    v8 = [processedParameters objectForKey:parameterKey];
  }

  else
  {
    processedParameters = [(WFParameterRelationResource *)self parameterKey];
    v9 = [v4 serializedParameterStateForKey:processedParameters];
    if (!v9)
    {
      parameter = [(WFParameterRelationResource *)self parameter];
      defaultSerializedRepresentation = [parameter defaultSerializedRepresentation];

      parameterKey = 0;
      goto LABEL_10;
    }

    v8 = v9;
    parameterKey = v8;
  }

  defaultSerializedRepresentation = v8;
LABEL_10:

  parameter2 = [(WFParameterRelationResource *)self parameter];
  v13 = defaultSerializedRepresentation;
  v14 = parameter2;
  v15 = v14;
  if (v14)
  {
    if ([v14 conformsToProtocol:&unk_1F4AD41D0])
    {
      v14 = v15;
    }

    else
    {
      v14 = 0;
    }
  }

  codableAttribute = [v14 codableAttribute];
  if (codableAttribute && (v17 = codableAttribute, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v17, (isKindOfClass & 1) != 0))
  {
    v19 = [v13 valueForKeyPath:@"identifier"];
  }

  else
  {
    v19 = v13;
  }

  v20 = v19;

  relation = [(WFParameterRelationResource *)self relation];
  if (objc_msgSend_isEqualToString_(relation))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v20 length] == 0;
    }

    else
    {
      v22 = v20 == 0;
    }

    v29 = !v22;
    goto LABEL_35;
  }

  if (objc_msgSend_isEqualToString_(relation))
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    comparedValues = [(WFParameterRelationResource *)self comparedValues];
    v24 = [comparedValues countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v51;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v51 != v26)
          {
            objc_enumerationMutation(comparedValues);
          }

          if ([v20 isEqual:*(*(&v50 + 1) + 8 * i)])
          {
            selfCopy4 = self;
            v31 = 0;
            goto LABEL_77;
          }
        }

        v25 = [comparedValues countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    selfCopy5 = self;
    v29 = 1;
    goto LABEL_36;
  }

  if (objc_msgSend_isEqualToString_(relation))
  {
    v29 = v20 == 0;
LABEL_35:
    selfCopy5 = self;
    goto LABEL_36;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  comparedValues = [(WFParameterRelationResource *)self comparedValues];
  v32 = [comparedValues countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (!v32)
  {
    goto LABEL_75;
  }

  v33 = v32;
  v34 = *v47;
  while (2)
  {
    for (j = 0; j != v33; ++j)
    {
      if (*v47 != v34)
      {
        objc_enumerationMutation(comparedValues);
      }

      v36 = *(*(&v46 + 1) + 8 * j);
      if (objc_msgSend_isEqualToString_(relation, v43))
      {
        if ([v20 compare:v36] == 1)
        {
          goto LABEL_76;
        }

        continue;
      }

      if (objc_msgSend_isEqualToString_(relation))
      {
        if ([v20 compare:v36] == 1)
        {
          goto LABEL_76;
        }

LABEL_50:
        if ([v20 isEqual:v36])
        {
          goto LABEL_76;
        }

        continue;
      }

      if (objc_msgSend_isEqualToString_(relation))
      {
        if ([v20 compare:v36] == -1)
        {
          goto LABEL_76;
        }
      }

      else if (objc_msgSend_isEqualToString_(relation))
      {
        if ([v20 compare:v36] == -1 || objc_msgSend(v20, "isEqual:", v36))
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (!objc_msgSend_isEqualToString_(relation))
        {
          goto LABEL_50;
        }

        v37 = v36;
        if (v37)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v38 = v37;
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
        }

        v39 = v38;

        if ([v39 length])
        {
          v43 = v39;
          v40 = v20;
          v44 = v37;
          if (v20)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }
          }

          else
          {
            v41 = 0;
          }

          v42 = v41;

          v45 = [v42 containsString:v44];
          if (v45)
          {
LABEL_76:
            selfCopy4 = self;
            v31 = 1;
LABEL_77:
            [(WFResource *)selfCopy4 updateAvailability:v31 withError:0, v43];

            goto LABEL_78;
          }
        }

        else
        {
        }
      }
    }

    v33 = [comparedValues countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_75:

  selfCopy5 = self;
  v29 = 0;
LABEL_36:
  [(WFResource *)selfCopy5 updateAvailability:v29 withError:0, v43];
LABEL_78:

LABEL_79:
}

- (void)setupWithAction:(id)action parameter:(id)parameter
{
  obj = action;
  parameterCopy = parameter;
  v8 = parameterCopy;
  if (parameterCopy)
  {
    v9 = [parameterCopy key];
    parameterKey = [(WFParameterRelationResource *)self parameterKey];
    isEqualToString = objc_msgSend_isEqualToString_(v9);

    if ((isEqualToString & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"WFParameterRelationResource.m" lineNumber:83 description:@"Parameter key of relation resource must match the key of the parameter passed to setupWithAction:parameter:"];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_action);
  [WeakRetained removeEventObserver:self];

  objc_storeWeak(&self->_action, obj);
  objc_storeWeak(&self->_parameter, v8);
  [obj addEventObserver:self];
  [(WFResource *)self invalidateAvailability];
}

- (NSString)relation
{
  definition = [(WFResource *)self definition];
  v3 = [definition objectForKey:@"WFParameterRelation"];

  return v3;
}

- (NSString)parameterKey
{
  definition = [(WFResource *)self definition];
  v3 = [definition objectForKey:@"WFParameterKey"];

  return v3;
}

- (NSArray)comparedValues
{
  v10[1] = *MEMORY[0x1E69E9840];
  definition = [(WFResource *)self definition];
  v4 = [definition objectForKey:@"WFParameterValues"];

  definition2 = [(WFResource *)self definition];
  v6 = [definition2 objectForKey:@"WFParameterValue"];

  if (v4)
  {
    v7 = v4;
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  if (v6)
  {
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    goto LABEL_5;
  }

  v8 = MEMORY[0x1E695E0F0];
LABEL_6:

  return v8;
}

- (WFParameterRelationResource)initWithParameterKey:(id)key parameterValues:(id)values relation:(id)relation
{
  v17[2] = *MEMORY[0x1E69E9840];
  relationCopy = relation;
  v16[0] = @"WFParameterKey";
  v16[1] = @"WFParameterValues";
  v17[0] = key;
  v17[1] = values;
  v9 = MEMORY[0x1E695DF20];
  valuesCopy = values;
  keyCopy = key;
  v12 = [v9 dictionaryWithObjects:v17 forKeys:v16 count:2];

  v13 = [v12 mutableCopy];
  if (relationCopy)
  {
    [v13 setObject:relationCopy forKeyedSubscript:@"WFParameterRelation"];
  }

  v14 = [(WFResource *)self initWithDefinition:v13];

  return v14;
}

@end