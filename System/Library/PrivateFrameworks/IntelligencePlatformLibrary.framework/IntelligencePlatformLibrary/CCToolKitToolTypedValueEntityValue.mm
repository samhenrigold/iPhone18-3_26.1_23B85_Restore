@interface CCToolKitToolTypedValueEntityValue
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolDisplayRepresentation)displayRepresentation;
- (CCToolKitToolTypeIdentifier)type;
- (CCToolKitToolTypedValueEntityValue)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypedValueEntityValue)initWithType:(id)type identifier:(id)identifier properties:(id)properties displayRepresentation:(id)representation hydratedAppEntity:(id)entity siriKitEntity:(id)kitEntity error:(id *)error;
- (NSArray)properties;
- (NSData)hydratedAppEntity;
- (NSData)siriKitEntity;
- (NSString)identifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValueEntityValue

- (CCToolKitToolTypedValueEntityValue)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v55[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    if (v9)
    {
      v55[0] = 0;
      v10 = [[CCToolKitToolTypeIdentifier alloc] initWithJSONDictionary:v9 error:v55];
      v11 = v55[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v33 = 0;
        goto LABEL_43;
      }

      v9 = v10;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"properties"];
    if (!v13)
    {
      v10 = 0;
      v27 = v8;
      goto LABEL_24;
    }

    v14 = v13;
    objc_opt_class();
    v54 = v8;
    v15 = CCValidateIsInstanceOfExpectedClass();
    v16 = v8;

    if (v15)
    {
      v42 = v16;
      errorCopy = error;
      v45 = v12;
      v10 = objc_opt_new();
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v17 = v14;
      v18 = [(CCToolKitToolTypeIdentifier *)v17 countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v51;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v51 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v50 + 1) + 8 * i);
            v23 = [CCToolKitToolTypedValueEntityValuePropertiesEntry alloc];
            v49 = 0;
            v24 = [(CCToolKitToolTypedValueEntityValuePropertiesEntry *)v23 initWithJSONDictionary:v22 error:&v49];
            v25 = v49;
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
              v10 = v17;
              v8 = v42;
              v12 = v45;
              goto LABEL_43;
            }

            [(CCToolKitToolTypeIdentifier *)v10 addObject:v24];
          }

          v19 = [(CCToolKitToolTypeIdentifier *)v17 countByEnumeratingWithState:&v50 objects:v56 count:16];
        }

        while (v19);
      }

      v12 = v45;
      v27 = v42;
      error = errorCopy;
LABEL_24:
      v28 = [dictionaryCopy objectForKeyedSubscript:@"displayRepresentation"];
      if (v28)
      {
        v48 = 0;
        v29 = [[CCToolKitToolDisplayRepresentation alloc] initWithJSONDictionary:v28 error:&v48];
        v30 = v48;
        v31 = v30;
        if (!v29 || v30)
        {
          CCSetError();

          v33 = 0;
          goto LABEL_42;
        }

        v46 = v12;

        v28 = v29;
      }

      else
      {
        v46 = v12;
      }

      v31 = [dictionaryCopy objectForKeyedSubscript:@"hydratedAppEntity"];
      if (!v31)
      {
        goto LABEL_33;
      }

      objc_opt_class();
      v34 = CCValidateIsInstanceOfExpectedClass();
      v35 = v27;

      if (v34)
      {
        v36 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v31 options:0];

        v31 = v36;
        v27 = v35;
LABEL_33:
        v37 = [dictionaryCopy objectForKeyedSubscript:@"siriKitEntity"];
        if (v37)
        {
          objc_opt_class();
          v47 = v27;
          v38 = v27;
          v39 = CCValidateIsInstanceOfExpectedClass();
          v44 = v47;

          if ((v39 & 1) == 0)
          {
            v27 = v44;
            CCSetError();
            v33 = 0;
            v12 = v46;
            goto LABEL_41;
          }

          v40 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v37 options:0];

          v37 = v40;
          v27 = v44;
          v12 = v46;
        }

        else
        {
          v12 = v46;
        }

        v33 = [[CCToolKitToolTypedValueEntityValue alloc] initWithType:v9 identifier:v12 properties:v10 displayRepresentation:v28 hydratedAppEntity:v31 siriKitEntity:v37 error:error];
LABEL_41:

        goto LABEL_42;
      }

      CCSetError();
      v33 = 0;
      v27 = v35;
      v12 = v46;
LABEL_42:

      v8 = v27;
      goto LABEL_43;
    }

    CCSetError();
    v33 = 0;
    v10 = v14;
    v8 = v16;
LABEL_43:

    goto LABEL_44;
  }

  CCSetError();
  v33 = 0;
LABEL_44:

  return v33;
}

- (id)jsonDictionary
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_type)
  {
    type = [(CCToolKitToolTypedValueEntityValue *)self type];
    jsonDictionary = [type jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"type"];
  }

  if (self->_identifier)
  {
    identifier = [(CCToolKitToolTypedValueEntityValue *)self identifier];
    [v3 setObject:identifier forKeyedSubscript:@"identifier"];
  }

  if (self->_properties)
  {
    v7 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    properties = [(CCToolKitToolTypedValueEntityValue *)self properties];
    v9 = [properties countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(properties);
          }

          jsonDictionary2 = [*(*(&v22 + 1) + 8 * i) jsonDictionary];
          [v7 addObject:jsonDictionary2];
        }

        v10 = [properties countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"properties"];
  }

  if (self->_displayRepresentation)
  {
    displayRepresentation = [(CCToolKitToolTypedValueEntityValue *)self displayRepresentation];
    jsonDictionary3 = [displayRepresentation jsonDictionary];
    [v3 setObject:jsonDictionary3 forKeyedSubscript:@"displayRepresentation"];
  }

  if (self->_hydratedAppEntity)
  {
    hydratedAppEntity = [(CCToolKitToolTypedValueEntityValue *)self hydratedAppEntity];
    v17 = [hydratedAppEntity base64EncodedStringWithOptions:0];
    [v3 setObject:v17 forKeyedSubscript:@"hydratedAppEntity"];
  }

  if (self->_siriKitEntity)
  {
    siriKitEntity = [(CCToolKitToolTypedValueEntityValue *)self siriKitEntity];
    v19 = [siriKitEntity base64EncodedStringWithOptions:0];
    [v3 setObject:v19 forKeyedSubscript:@"siriKitEntity"];
  }

  v20 = [v3 copy];

  return v20;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v14 = blockCopy;
  if (self->_type)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_type];
    v14[2](v14, v7);
  }

  if (self->_identifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_identifier];
    v14[2](v14, v8);
  }

  if (self->_properties)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_properties];
    v14[2](v14, v9);
  }

  if (self->_displayRepresentation)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_displayRepresentation];
    v14[2](v14, v10);
  }

  if (self->_hydratedAppEntity)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 bytesValue:self->_hydratedAppEntity];
    v14[2](v14, v11);
  }

  v12 = v14;
  if (self->_siriKitEntity)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 bytesValue:self->_siriKitEntity];
    v14[2](v14, v13);

    v12 = v14;
  }
}

- (NSData)siriKitEntity
{
  v2 = [(NSData *)self->_siriKitEntity copy];

  return v2;
}

- (NSData)hydratedAppEntity
{
  v2 = [(NSData *)self->_hydratedAppEntity copy];

  return v2;
}

- (CCToolKitToolDisplayRepresentation)displayRepresentation
{
  v2 = [(CCToolKitToolDisplayRepresentation *)self->_displayRepresentation copy];

  return v2;
}

- (NSArray)properties
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_properties copyItems:1];

  return v2;
}

- (NSString)identifier
{
  v2 = [(NSString *)self->_identifier copy];

  return v2;
}

- (CCToolKitToolTypeIdentifier)type
{
  v2 = [(CCToolKitToolTypeIdentifier *)self->_type copy];

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
        goto LABEL_49;
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
            goto LABEL_48;
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
        goto LABEL_48;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 3)
      {
        if (v23 != 4)
        {
          if (v23 == 5)
          {
            v27 = CCPBReaderReadData();
            v8 = 0;
            v28 = 48;
          }

          else
          {
            if (v23 != 6)
            {
LABEL_38:
              if (CCPBReaderSkipValueWithTag())
              {
                v8 = 0;
                goto LABEL_44;
              }

              v34 = objc_opt_class();
              v24 = NSStringFromClass(v34);
              v8 = CCSkipFieldErrorForMessage();
LABEL_43:

LABEL_44:
              if (*&v5[*v6] < *&v5[*v7])
              {
                continue;
              }

              goto LABEL_49;
            }

            v27 = CCPBReaderReadData();
            v8 = 0;
            v28 = 56;
          }

LABEL_42:
          v24 = *(&self->super.super.isa + v28);
          *(&self->super.super.isa + v28) = v27;
          goto LABEL_43;
        }

        v32 = [CCToolKitToolDisplayRepresentation alloc];
        v24 = CCPBReaderReadDataNoCopy();
        v44 = 0;
        v30 = [(CCItemMessage *)v32 initWithData:v24 error:&v44];
        v8 = v44;
        v31 = 40;
      }

      else
      {
        if (v23 != 1)
        {
          if (v23 != 2)
          {
            if (v23 == 3)
            {
              v24 = CCPBReaderReadDataNoCopy();
              if (!v9)
              {
                v9 = objc_opt_new();
              }

              v25 = [CCToolKitToolTypedValueEntityValuePropertiesEntry alloc];
              v45 = 0;
              v26 = [(CCItemMessage *)v25 initWithData:v24 error:&v45];
              v8 = v45;
              if (!v8 && v26)
              {
                [v9 addObject:v26];
              }

              goto LABEL_43;
            }

            goto LABEL_38;
          }

          v27 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v28 = 24;
          goto LABEL_42;
        }

        v29 = [CCToolKitToolTypeIdentifier alloc];
        v24 = CCPBReaderReadDataNoCopy();
        v46 = 0;
        v30 = [(CCItemMessage *)v29 initWithData:v24 error:&v46];
        v8 = v46;
        v31 = 16;
      }

      break;
    }

    v33 = *(&self->super.super.isa + v31);
    *(&self->super.super.isa + v31) = v30;

    goto LABEL_43;
  }

  v9 = 0;
LABEL_48:
  v8 = 0;
LABEL_49:
  v35 = [v9 copy];
  properties = self->_properties;
  self->_properties = v35;

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

- (CCToolKitToolTypedValueEntityValue)initWithType:(id)type identifier:(id)identifier properties:(id)properties displayRepresentation:(id)representation hydratedAppEntity:(id)entity siriKitEntity:(id)kitEntity error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  identifierCopy = identifier;
  propertiesCopy = properties;
  representationCopy = representation;
  entityCopy = entity;
  kitEntityCopy = kitEntity;
  v21 = objc_opt_new();
  if (!typeCopy)
  {
    v23 = 0;
LABEL_5:
    v47 = kitEntityCopy;
    if (identifierCopy)
    {
      objc_opt_class();
      v53 = v23;
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v26 = v23;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_11;
      }

      CCPBDataWriterWriteStringField();
      if (!propertiesCopy)
      {
LABEL_8:
        v23 = v26;
        if (representationCopy)
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v26 = v23;
      if (!propertiesCopy)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    v52 = v26;
    v30 = CCValidateArrayValues();
    v23 = v26;

    if (!v30)
    {
LABEL_28:
      CCSetError();
      selfCopy2 = 0;
      goto LABEL_29;
    }

    selfCopy = self;
    v45 = entityCopy;
    v43 = representationCopy;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v31 = propertiesCopy;
    v32 = [v31 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v49;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v49 != v34)
          {
            objc_enumerationMutation(v31);
          }

          data = [*(*(&v48 + 1) + 8 * i) data];
          CCPBDataWriterWriteDataField();
        }

        v33 = [v31 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v33);
    }

    representationCopy = v43;
    self = selfCopy;
    entityCopy = v45;
    if (v43)
    {
LABEL_9:
      objc_opt_class();
      v27 = CCValidateIsInstanceOfExpectedClass();
      v26 = v23;

      if (v27)
      {
        data2 = [representationCopy data];
        CCPBDataWriterWriteDataField();

LABEL_24:
        if (!entityCopy)
        {
          v46 = 0;
          v23 = v26;
          kitEntityCopy = v47;
          if (!v47)
          {
LABEL_34:
            entityCopy = v46;
            immutableData = [v21 immutableData];
            self = [(CCItemMessage *)self initWithData:immutableData error:error];

            selfCopy2 = self;
            goto LABEL_30;
          }

LABEL_32:
          objc_opt_class();
          v39 = CCValidateIsInstanceOfExpectedClass();
          v40 = kitEntityCopy;
          v41 = v23;

          if (!v39)
          {
            CCSetError();
            selfCopy2 = 0;
            v23 = v41;
            kitEntityCopy = v40;
            entityCopy = v46;
            goto LABEL_30;
          }

          CCPBDataWriterWriteDataField();
          v23 = v41;
          kitEntityCopy = v40;
          goto LABEL_34;
        }

        objc_opt_class();
        v37 = CCValidateIsInstanceOfExpectedClass();
        v23 = v26;

        if (v37)
        {
          v46 = entityCopy;
          CCPBDataWriterWriteDataField();
          kitEntityCopy = v47;
          if (!v47)
          {
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        goto LABEL_28;
      }

LABEL_11:
      CCSetError();
      selfCopy2 = 0;
      v23 = v26;
LABEL_29:
      kitEntityCopy = v47;
      goto LABEL_30;
    }

LABEL_23:
    v26 = v23;
    goto LABEL_24;
  }

  objc_opt_class();
  v54 = 0;
  v22 = CCValidateIsInstanceOfExpectedClass();
  v23 = 0;
  if (v22)
  {
    data3 = [typeCopy data];
    CCPBDataWriterWriteDataField();

    goto LABEL_5;
  }

  CCSetError();
  selfCopy2 = 0;
LABEL_30:

  return selfCopy2;
}

@end