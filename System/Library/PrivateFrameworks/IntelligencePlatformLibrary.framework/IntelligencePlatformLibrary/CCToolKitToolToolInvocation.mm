@interface CCToolKitToolToolInvocation
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolContainerDefinitionDevice)target;
- (CCToolKitToolToolInvocation)initWithIdentifier:(id)identifier toolIdentifier:(id)toolIdentifier target:(id)target parameterValues:(id)values options:(id)options error:(id *)error;
- (CCToolKitToolToolInvocation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolToolInvocationOptions)options;
- (NSArray)parameterValues;
- (NSString)identifier;
- (NSString)toolIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolToolInvocation

- (CCToolKitToolToolInvocation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v48[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"toolIdentifier"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"target"];
    if (v11)
    {
      v48[0] = 0;
      v12 = [[CCToolKitToolContainerDefinitionDevice alloc] initWithJSONDictionary:v11 error:v48];
      v13 = v48[0];
      v14 = v13;
      if (!v12 || v13)
      {
        CCSetError();

        v35 = 0;
        goto LABEL_33;
      }

      v11 = v12;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"parameterValues"];
    if (!v15)
    {
      v14 = 0;
      v40 = v8;
      goto LABEL_24;
    }

    v16 = v15;
    objc_opt_class();
    v47 = v8;
    v17 = CCValidateIsInstanceOfExpectedClass();
    v18 = v8;

    if (v17)
    {
      v40 = v18;
      errorCopy = error;
      v38 = v10;
      v39 = v9;
      v14 = objc_opt_new();
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v44;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v44 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v43 + 1) + 8 * i);
            v25 = [CCToolKitToolToolInvocationParameterValuesEntry alloc];
            v42 = 0;
            v26 = [(CCToolKitToolToolInvocationParameterValuesEntry *)v25 initWithJSONDictionary:v24 error:&v42];
            v27 = v42;
            if (v26)
            {
              v28 = v27 == 0;
            }

            else
            {
              v28 = 0;
            }

            if (!v28)
            {
              v34 = v27;
              CCSetError();

              v35 = 0;
              v14 = v19;
              v8 = v40;
              v10 = v38;
              v9 = v39;
              goto LABEL_33;
            }

            [v14 addObject:v26];
          }

          v21 = [v19 countByEnumeratingWithState:&v43 objects:v49 count:16];
        }

        while (v21);
      }

      error = errorCopy;
      v10 = v38;
LABEL_24:
      v29 = [dictionaryCopy objectForKeyedSubscript:@"options"];
      if (v29)
      {
        v30 = v29;
        v41 = 0;
        v31 = [[CCToolKitToolToolInvocationOptions alloc] initWithJSONDictionary:v29 error:&v41];
        v32 = v41;
        v33 = v32;
        if (!v31 || v32)
        {
          CCSetError();

          v35 = 0;
          goto LABEL_32;
        }
      }

      else
      {
        v31 = 0;
      }

      v35 = [[CCToolKitToolToolInvocation alloc] initWithIdentifier:v9 toolIdentifier:v10 target:v11 parameterValues:v14 options:v31 error:error];
      v30 = v31;
LABEL_32:

      v8 = v40;
      goto LABEL_33;
    }

    CCSetError();
    v35 = 0;
    v8 = v18;
    v14 = v16;
LABEL_33:

    goto LABEL_34;
  }

  CCSetError();
  v35 = 0;
LABEL_34:

  return v35;
}

- (id)jsonDictionary
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_identifier)
  {
    identifier = [(CCToolKitToolToolInvocation *)self identifier];
    [v3 setObject:identifier forKeyedSubscript:@"identifier"];
  }

  if (self->_toolIdentifier)
  {
    toolIdentifier = [(CCToolKitToolToolInvocation *)self toolIdentifier];
    [v3 setObject:toolIdentifier forKeyedSubscript:@"toolIdentifier"];
  }

  if (self->_target)
  {
    target = [(CCToolKitToolToolInvocation *)self target];
    jsonDictionary = [target jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"target"];
  }

  if (self->_parameterValues)
  {
    v8 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    parameterValues = [(CCToolKitToolToolInvocation *)self parameterValues];
    v10 = [parameterValues countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(parameterValues);
          }

          jsonDictionary2 = [*(*(&v19 + 1) + 8 * i) jsonDictionary];
          [v8 addObject:jsonDictionary2];
        }

        v11 = [parameterValues countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"parameterValues"];
  }

  if (self->_options)
  {
    options = [(CCToolKitToolToolInvocation *)self options];
    jsonDictionary3 = [options jsonDictionary];
    [v3 setObject:jsonDictionary3 forKeyedSubscript:@"options"];
  }

  v17 = [v3 copy];

  return v17;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v13 = blockCopy;
  if (self->_identifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_identifier];
    v13[2](v13, v7);
  }

  if (self->_toolIdentifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_toolIdentifier];
    v13[2](v13, v8);
  }

  if (self->_target)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_target];
    v13[2](v13, v9);
  }

  if (self->_parameterValues)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_parameterValues];
    v13[2](v13, v10);
  }

  v11 = v13;
  if (self->_options)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_options];
    v13[2](v13, v12);

    v11 = v13;
  }
}

- (CCToolKitToolToolInvocationOptions)options
{
  v2 = [(CCToolKitToolToolInvocationOptions *)self->_options copy];

  return v2;
}

- (NSArray)parameterValues
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_parameterValues copyItems:1];

  return v2;
}

- (CCToolKitToolContainerDefinitionDevice)target
{
  v2 = [(CCToolKitToolContainerDefinitionDevice *)self->_target copy];

  return v2;
}

- (NSString)toolIdentifier
{
  v2 = [(NSString *)self->_toolIdentifier copy];

  return v2;
}

- (NSString)identifier
{
  v2 = [(NSString *)self->_identifier copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E6993AA8];
    v11 = MEMORY[0x1E6993AA0];
    while (2)
    {
      if (*&v5[*v10])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (!v12)
      {
        goto LABEL_47;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v5[*v7])
        {
          break;
        }

        v19 = *(*&v5[*v11] + v17);
        *&v5[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_46;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v22 = *&v5[*v10];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v22)
      {
        goto LABEL_46;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 2)
      {
        switch(v23)
        {
          case 3:
            v30 = [CCToolKitToolContainerDefinitionDevice alloc];
            v25 = CCPBReaderReadDataNoCopy();
            v46 = 0;
            v26 = [(CCItemMessage *)v30 initWithData:v25 error:&v46];
            v8 = v46;
            v27 = 32;
            goto LABEL_30;
          case 4:
            v25 = CCPBReaderReadDataNoCopy();
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            v32 = [CCToolKitToolToolInvocationParameterValuesEntry alloc];
            v45 = 0;
            v33 = [(CCItemMessage *)v32 initWithData:v25 error:&v45];
            v8 = v45;
            if (!v8 && v33)
            {
              [v9 addObject:v33];
            }

            goto LABEL_39;
          case 5:
            v24 = [CCToolKitToolToolInvocationOptions alloc];
            v25 = CCPBReaderReadDataNoCopy();
            v44 = 0;
            v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v44];
            v8 = v44;
            v27 = 48;
LABEL_30:
            v31 = *(&self->super.super.isa + v27);
            *(&self->super.super.isa + v27) = v26;

            goto LABEL_39;
        }

LABEL_42:
        if (CCPBReaderSkipValueWithTag())
        {
          v8 = 0;
LABEL_40:
          if (*&v5[*v6] < *&v5[*v7])
          {
            continue;
          }

          goto LABEL_47;
        }

        v34 = objc_opt_class();
        v25 = NSStringFromClass(v34);
        v8 = CCSkipFieldErrorForMessage();
LABEL_39:

        goto LABEL_40;
      }

      break;
    }

    if (v23 == 1)
    {
      v28 = CCPBReaderReadStringNoCopy();
      v8 = 0;
      v29 = 16;
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_42;
      }

      v28 = CCPBReaderReadStringNoCopy();
      v8 = 0;
      v29 = 24;
    }

    v25 = *(&self->super.super.isa + v29);
    *(&self->super.super.isa + v29) = v28;
    goto LABEL_39;
  }

  v9 = 0;
LABEL_46:
  v8 = 0;
LABEL_47:
  v35 = [v9 copy];
  parameterValues = self->_parameterValues;
  self->_parameterValues = v35;

  if (v8)
  {
    CCSetError();
    v37 = 0;
    v38 = dataCopy;
  }

  else
  {
    v38 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }
  }

  return v37;
}

- (CCToolKitToolToolInvocation)initWithIdentifier:(id)identifier toolIdentifier:(id)toolIdentifier target:(id)target parameterValues:(id)values options:(id)options error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  toolIdentifierCopy = toolIdentifier;
  targetCopy = target;
  valuesCopy = values;
  optionsCopy = options;
  v18 = objc_opt_new();
  if (identifierCopy)
  {
    objc_opt_class();
    v50 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v20 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_26;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v20 = 0;
  }

  selfCopy = self;
  if (toolIdentifierCopy)
  {
    objc_opt_class();
    v49 = v20;
    v21 = CCValidateIsInstanceOfExpectedClass();
    v22 = v20;

    if (!v21)
    {
      CCSetError();
      selfCopy2 = 0;
      v20 = v22;
LABEL_29:
      self = selfCopy;
      goto LABEL_31;
    }

    CCPBDataWriterWriteStringField();
    if (!targetCopy)
    {
LABEL_8:
      v20 = v22;
      goto LABEL_12;
    }
  }

  else
  {
    v22 = v20;
    if (!targetCopy)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v48 = v22;
  v23 = CCValidateIsInstanceOfExpectedClass();
  v20 = v22;

  if (!v23)
  {
    CCSetError();
    selfCopy2 = 0;
    goto LABEL_29;
  }

  data = [targetCopy data];
  CCPBDataWriterWriteDataField();

LABEL_12:
  self = selfCopy;
  if (valuesCopy)
  {
    objc_opt_class();
    v47 = v20;
    v25 = CCValidateArrayValues();
    v26 = v20;

    if (!v25)
    {
      CCSetError();
      selfCopy2 = 0;
      v20 = v26;
      goto LABEL_31;
    }

    v39 = v26;
    v40 = optionsCopy;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v27 = valuesCopy;
    v28 = [v27 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v44;
      do
      {
        v31 = 0;
        do
        {
          if (*v44 != v30)
          {
            objc_enumerationMutation(v27);
          }

          data2 = [*(*(&v43 + 1) + 8 * v31) data];
          CCPBDataWriterWriteDataField();

          ++v31;
        }

        while (v29 != v31);
        v29 = [v27 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v29);
    }

    optionsCopy = v40;
    self = selfCopy;
    v20 = v39;
  }

  if (!optionsCopy)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  v33 = v20;
  v34 = CCValidateIsInstanceOfExpectedClass();
  v20 = v20;

  if (!v34)
  {
LABEL_26:
    CCSetError();
    selfCopy2 = 0;
    goto LABEL_31;
  }

  data3 = [optionsCopy data];
  CCPBDataWriterWriteDataField();

LABEL_25:
  immutableData = [v18 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy2 = self;
LABEL_31:

  return selfCopy2;
}

@end