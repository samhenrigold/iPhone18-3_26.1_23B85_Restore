@interface CCToolKitToolToolInvocationSignature
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolToolInvocationSignature)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolToolInvocationSignature)initWithVisibleParameterKeys:(id)keys invisibleParameterKeys:(id)parameterKeys valueConstraints:(id)constraints error:(id *)error;
- (NSArray)invisibleParameterKeys;
- (NSArray)valueConstraints;
- (NSArray)visibleParameterKeys;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolToolInvocationSignature

- (CCToolKitToolToolInvocationSignature)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v37 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"visibleParameterKeys"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"invisibleParameterKeys"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"valueConstraints"];
    if (v11)
    {
      v12 = v11;
      objc_opt_class();
      v36 = v8;
      v13 = CCValidateIsInstanceOfExpectedClass();
      v14 = v8;

      if ((v13 & 1) == 0)
      {
        CCSetError();
        v26 = 0;
        goto LABEL_21;
      }

      v28 = v14;
      v29 = v9;
      selfCopy = self;
      v15 = objc_opt_new();
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v12 = v12;
      v16 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v33;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v33 != v18)
            {
              objc_enumerationMutation(v12);
            }

            v20 = *(*(&v32 + 1) + 8 * i);
            v21 = [CCToolKitToolToolInvocationSignatureValueConstraintsEntry alloc];
            v31 = 0;
            v22 = [(CCToolKitToolToolInvocationSignatureValueConstraintsEntry *)v21 initWithJSONDictionary:v20 error:&v31];
            v23 = v31;
            if (v22)
            {
              v24 = v23 == 0;
            }

            else
            {
              v24 = 0;
            }

            if (!v24)
            {
              v25 = v23;
              CCSetError();

              v26 = 0;
              v9 = v29;
              self = selfCopy;
              v14 = v28;
              goto LABEL_21;
            }

            [v15 addObject:v22];
          }

          v17 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
        }

        while (v17);
      }

      v9 = v29;
      self = selfCopy;
      v14 = v28;
    }

    else
    {
      v15 = 0;
      v14 = v8;
    }

    v26 = [[CCToolKitToolToolInvocationSignature alloc] initWithVisibleParameterKeys:v9 invisibleParameterKeys:v10 valueConstraints:v15 error:error];
    v12 = v15;
LABEL_21:

    v8 = v14;
    goto LABEL_22;
  }

  CCSetError();
  v26 = 0;
LABEL_22:

  return v26;
}

- (id)jsonDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_visibleParameterKeys)
  {
    visibleParameterKeys = [(CCToolKitToolToolInvocationSignature *)self visibleParameterKeys];
    [v3 setObject:visibleParameterKeys forKeyedSubscript:@"visibleParameterKeys"];
  }

  if (self->_invisibleParameterKeys)
  {
    invisibleParameterKeys = [(CCToolKitToolToolInvocationSignature *)self invisibleParameterKeys];
    [v3 setObject:invisibleParameterKeys forKeyedSubscript:@"invisibleParameterKeys"];
  }

  if (self->_valueConstraints)
  {
    v6 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    valueConstraints = [(CCToolKitToolToolInvocationSignature *)self valueConstraints];
    v8 = [valueConstraints countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(valueConstraints);
          }

          jsonDictionary = [*(*(&v15 + 1) + 8 * i) jsonDictionary];
          [v6 addObject:jsonDictionary];
        }

        v9 = [valueConstraints countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"valueConstraints"];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v11 = blockCopy;
  if (self->_visibleParameterKeys)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] repeatedStringValue:self->_visibleParameterKeys];
    v11[2](v11, v7);
  }

  if (self->_invisibleParameterKeys)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedStringValue:self->_invisibleParameterKeys];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_valueConstraints)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_valueConstraints];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (NSArray)valueConstraints
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_valueConstraints copyItems:1];

  return v2;
}

- (NSArray)invisibleParameterKeys
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_invisibleParameterKeys copyItems:1];

  return v2;
}

- (NSArray)visibleParameterKeys
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_visibleParameterKeys copyItems:1];

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
    v44 = 0;
    v45 = 0;
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
        goto LABEL_50;
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
            goto LABEL_49;
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
        goto LABEL_49;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 3)
      {
        v25 = CCPBReaderReadDataNoCopy();
        if (!v44)
        {
          v44 = objc_opt_new();
        }

        v27 = [CCToolKitToolToolInvocationSignatureValueConstraintsEntry alloc];
        v46 = 0;
        v28 = [(CCItemMessage *)v27 initWithData:v25 error:&v46];
        v8 = v46;
        if (!v8 && v28)
        {
          [v44 addObject:v28];
        }

        goto LABEL_45;
      }

      if (v23 != 2)
      {
        if (v23 != 1)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v8 = 0;
            goto LABEL_46;
          }

          v29 = objc_opt_class();
          v25 = NSStringFromClass(v29);
          v8 = CCSkipFieldErrorForMessage();
LABEL_45:

LABEL_46:
          if (*&v5[*v6] < *&v5[*v7])
          {
            continue;
          }

          goto LABEL_50;
        }

        v24 = CCPBReaderReadStringNoCopy();
        v25 = v24;
        if (v45)
        {
          if (!v24)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        }

        v45 = objc_opt_new();
        if (v25)
        {
LABEL_42:
          v30 = v45;
          goto LABEL_43;
        }

LABEL_44:
        v8 = 0;
        goto LABEL_45;
      }

      break;
    }

    v26 = CCPBReaderReadStringNoCopy();
    v25 = v26;
    if (v9)
    {
      if (!v26)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v9 = objc_opt_new();
      if (!v25)
      {
        goto LABEL_44;
      }
    }

    v30 = v9;
LABEL_43:
    [v30 addObject:v25];
    goto LABEL_44;
  }

  v44 = 0;
  v45 = 0;
  v9 = 0;
LABEL_49:
  v8 = 0;
LABEL_50:
  v31 = [v45 copy];
  visibleParameterKeys = self->_visibleParameterKeys;
  self->_visibleParameterKeys = v31;

  v33 = [v9 copy];
  invisibleParameterKeys = self->_invisibleParameterKeys;
  self->_invisibleParameterKeys = v33;

  v35 = [v44 copy];
  valueConstraints = self->_valueConstraints;
  self->_valueConstraints = v35;

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

- (CCToolKitToolToolInvocationSignature)initWithVisibleParameterKeys:(id)keys invisibleParameterKeys:(id)parameterKeys valueConstraints:(id)constraints error:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  parameterKeysCopy = parameterKeys;
  constraintsCopy = constraints;
  v13 = objc_opt_new();
  if (keysCopy)
  {
    objc_opt_class();
    v57 = 0;
    v14 = CCValidateArrayValues();
    v15 = 0;
    if (!v14)
    {
      goto LABEL_21;
    }

    selfCopy4 = self;
    errorCopy = error;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v16 = keysCopy;
    v17 = [v16 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v54;
      do
      {
        v20 = 0;
        do
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(v16);
          }

          CCPBDataWriterWriteStringField();
          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v18);
    }

    self = selfCopy4;
    error = errorCopy;
    if (!parameterKeysCopy)
    {
LABEL_11:
      v21 = v15;
      if (constraintsCopy)
      {
        goto LABEL_12;
      }

LABEL_32:
      v15 = v21;
LABEL_33:
      immutableData = [v13 immutableData];
      self = [(CCItemMessage *)self initWithData:immutableData error:error];

      selfCopy2 = self;
      goto LABEL_35;
    }
  }

  else
  {
    v15 = 0;
    if (!parameterKeysCopy)
    {
      goto LABEL_11;
    }
  }

  objc_opt_class();
  v52 = v15;
  v30 = CCValidateArrayValues();
  v21 = v15;

  if (!v30)
  {
    CCSetError();
    selfCopy2 = 0;
    v15 = v21;
    goto LABEL_35;
  }

  errorCopy2 = error;
  selfCopy3 = self;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v32 = parameterKeysCopy;
  v33 = [v32 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v49;
    do
    {
      v36 = 0;
      do
      {
        if (*v49 != v35)
        {
          objc_enumerationMutation(v32);
        }

        CCPBDataWriterWriteStringField();
        ++v36;
      }

      while (v34 != v36);
      v34 = [v32 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v34);
  }

  self = selfCopy3;
  error = errorCopy2;
  if (!constraintsCopy)
  {
    goto LABEL_32;
  }

LABEL_12:
  objc_opt_class();
  v47 = v21;
  v22 = CCValidateArrayValues();
  v15 = v21;

  if (v22)
  {
    selfCopy4 = self;
    errorCopy3 = error;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v23 = constraintsCopy;
    v24 = [v23 countByEnumeratingWithState:&v43 objects:v58 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v44;
      do
      {
        v27 = 0;
        do
        {
          if (*v44 != v26)
          {
            objc_enumerationMutation(v23);
          }

          data = [*(*(&v43 + 1) + 8 * v27) data];
          CCPBDataWriterWriteDataField();

          ++v27;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v43 objects:v58 count:16];
      }

      while (v25);
    }

    self = selfCopy4;
    error = errorCopy3;
    goto LABEL_33;
  }

LABEL_21:
  CCSetError();
  selfCopy2 = 0;
LABEL_35:

  return selfCopy2;
}

@end