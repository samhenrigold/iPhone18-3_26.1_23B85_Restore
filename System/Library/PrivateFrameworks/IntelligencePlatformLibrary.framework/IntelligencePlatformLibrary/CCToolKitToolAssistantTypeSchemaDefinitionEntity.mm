@interface CCToolKitToolAssistantTypeSchemaDefinitionEntity
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolAssistantSchemaIdentifier)identifier;
- (CCToolKitToolAssistantTypeSchemaDefinitionEntity)initWithIdentifier:(id)identifier properties:(id)properties displayRepresentation:(id)representation error:(id *)error;
- (CCToolKitToolAssistantTypeSchemaDefinitionEntity)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypeDisplayRepresentation)displayRepresentation;
- (NSArray)properties;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolAssistantTypeSchemaDefinitionEntity

- (CCToolKitToolAssistantTypeSchemaDefinitionEntity)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v44[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    if (v9)
    {
      v44[0] = 0;
      v10 = [[CCToolKitToolAssistantSchemaIdentifier alloc] initWithJSONDictionary:v9 error:v44];
      v11 = v44[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();

        v33 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v9 = v10;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"properties"];
    if (v13)
    {
      v14 = v13;
      objc_opt_class();
      v43 = v8;
      v15 = CCValidateIsInstanceOfExpectedClass();
      v16 = v8;

      if ((v15 & 1) == 0)
      {
        CCSetError();
        v33 = 0;
        v12 = v14;
LABEL_33:
        v8 = v16;
        goto LABEL_34;
      }

      v35 = v16;
      errorCopy = error;
      v12 = objc_opt_new();
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v17 = v14;
      v18 = [v17 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v40;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v40 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v39 + 1) + 8 * i);
            v23 = [CCToolKitToolTypeDefinitionVersion1EntityProperty alloc];
            v38 = 0;
            v24 = [(CCToolKitToolTypeDefinitionVersion1EntityProperty *)v23 initWithJSONDictionary:v22 error:&v38];
            v25 = v38;
            if (v24)
            {
              v26 = v25 == 0;
            }

            else
            {
              v26 = 0;
            }

            if (!v26)
            {
              v32 = v25;
              CCSetError();

              v33 = 0;
              v12 = v17;
              v8 = v35;
              goto LABEL_34;
            }

            [v12 addObject:v24];
          }

          v19 = [v17 countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v19);
      }

      error = errorCopy;
      v16 = v35;
    }

    else
    {
      v12 = 0;
      v16 = v8;
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"displayRepresentation"];
    if (v27)
    {
      v28 = v27;
      v37 = 0;
      v29 = [[CCToolKitToolTypeDisplayRepresentation alloc] initWithJSONDictionary:v27 error:&v37];
      v30 = v37;
      v31 = v30;
      if (!v29 || v30)
      {
        CCSetError();

        v33 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v29 = 0;
    }

    v33 = [[CCToolKitToolAssistantTypeSchemaDefinitionEntity alloc] initWithIdentifier:v9 properties:v12 displayRepresentation:v29 error:error];
    v28 = v29;
LABEL_32:

    goto LABEL_33;
  }

  CCSetError();
  v33 = 0;
LABEL_35:

  return v33;
}

- (id)jsonDictionary
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_identifier)
  {
    identifier = [(CCToolKitToolAssistantTypeSchemaDefinitionEntity *)self identifier];
    jsonDictionary = [identifier jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"identifier"];
  }

  if (self->_properties)
  {
    v6 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    properties = [(CCToolKitToolAssistantTypeSchemaDefinitionEntity *)self properties];
    v8 = [properties countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(properties);
          }

          jsonDictionary2 = [*(*(&v17 + 1) + 8 * i) jsonDictionary];
          [v6 addObject:jsonDictionary2];
        }

        v9 = [properties countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"properties"];
  }

  if (self->_displayRepresentation)
  {
    displayRepresentation = [(CCToolKitToolAssistantTypeSchemaDefinitionEntity *)self displayRepresentation];
    jsonDictionary3 = [displayRepresentation jsonDictionary];
    [v3 setObject:jsonDictionary3 forKeyedSubscript:@"displayRepresentation"];
  }

  v15 = [v3 copy];

  return v15;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v11 = blockCopy;
  if (self->_identifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_identifier];
    v11[2](v11, v7);
  }

  if (self->_properties)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_properties];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_displayRepresentation)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_displayRepresentation];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (CCToolKitToolTypeDisplayRepresentation)displayRepresentation
{
  v2 = [(CCToolKitToolTypeDisplayRepresentation *)self->_displayRepresentation copy];

  return v2;
}

- (NSArray)properties
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_properties copyItems:1];

  return v2;
}

- (CCToolKitToolAssistantSchemaIdentifier)identifier
{
  v2 = [(CCToolKitToolAssistantSchemaIdentifier *)self->_identifier copy];

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
        goto LABEL_41;
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
            goto LABEL_40;
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
        goto LABEL_40;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 3)
      {
        v30 = [CCToolKitToolTypeDisplayRepresentation alloc];
        v25 = CCPBReaderReadDataNoCopy();
        v42 = 0;
        v26 = [(CCItemMessage *)v30 initWithData:v25 error:&v42];
        v8 = v42;
        v27 = 32;
      }

      else
      {
        if (v23 == 2)
        {
          v25 = CCPBReaderReadDataNoCopy();
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          v28 = [CCToolKitToolTypeDefinitionVersion1EntityProperty alloc];
          v43 = 0;
          v29 = [(CCItemMessage *)v28 initWithData:v25 error:&v43];
          v8 = v43;
          if (!v8 && v29)
          {
            [v9 addObject:v29];
          }

          goto LABEL_33;
        }

        if (v23 != 1)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v8 = 0;
LABEL_34:
            if (*&v5[*v6] < *&v5[*v7])
            {
              continue;
            }

            goto LABEL_41;
          }

          v32 = objc_opt_class();
          v25 = NSStringFromClass(v32);
          v8 = CCSkipFieldErrorForMessage();
LABEL_33:

          goto LABEL_34;
        }

        v24 = [CCToolKitToolAssistantSchemaIdentifier alloc];
        v25 = CCPBReaderReadDataNoCopy();
        v44 = 0;
        v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v44];
        v8 = v44;
        v27 = 16;
      }

      break;
    }

    v31 = *(&self->super.super.isa + v27);
    *(&self->super.super.isa + v27) = v26;

    goto LABEL_33;
  }

  v9 = 0;
LABEL_40:
  v8 = 0;
LABEL_41:
  v33 = [v9 copy];
  properties = self->_properties;
  self->_properties = v33;

  if (v8)
  {
    CCSetError();
    v35 = 0;
    v36 = dataCopy;
  }

  else
  {
    v36 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }
  }

  return v35;
}

- (CCToolKitToolAssistantTypeSchemaDefinitionEntity)initWithIdentifier:(id)identifier properties:(id)properties displayRepresentation:(id)representation error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  propertiesCopy = properties;
  representationCopy = representation;
  v13 = objc_opt_new();
  if (identifierCopy)
  {
    objc_opt_class();
    v37 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    data = [identifierCopy data];
    CCPBDataWriterWriteDataField();

    if (!propertiesCopy)
    {
LABEL_4:
      v17 = v15;
      if (representationCopy)
      {
        goto LABEL_5;
      }

LABEL_18:
      v15 = v17;
      goto LABEL_19;
    }
  }

  else
  {
    v15 = 0;
    if (!propertiesCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v36 = v15;
  v21 = CCValidateArrayValues();
  v17 = v15;

  if (!v21)
  {
    CCSetError();
    selfCopy2 = 0;
    v15 = v17;
    goto LABEL_21;
  }

  errorCopy = error;
  selfCopy = self;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = propertiesCopy;
  v23 = [v22 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    do
    {
      v26 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v22);
        }

        data2 = [*(*(&v32 + 1) + 8 * v26) data];
        CCPBDataWriterWriteDataField();

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v24);
  }

  error = errorCopy;
  self = selfCopy;
  if (!representationCopy)
  {
    goto LABEL_18;
  }

LABEL_5:
  objc_opt_class();
  v18 = CCValidateIsInstanceOfExpectedClass();
  v15 = v17;

  if (v18)
  {
    data3 = [representationCopy data];
    CCPBDataWriterWriteDataField();

LABEL_19:
    immutableData = [v13 immutableData];
    self = [(CCItemMessage *)self initWithData:immutableData error:error];

    selfCopy2 = self;
    goto LABEL_21;
  }

LABEL_7:
  CCSetError();
  selfCopy2 = 0;
LABEL_21:

  return selfCopy2;
}

@end