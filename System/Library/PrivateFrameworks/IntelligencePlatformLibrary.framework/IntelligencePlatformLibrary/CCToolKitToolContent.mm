@interface CCToolKitToolContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolContent)initWithToolDefinition:(id)definition typeDefinitions:(id)definitions localizedStringsByLocale:(id)locale error:(id *)error;
- (CCToolKitToolToolDefinitionVersion1)toolDefinition;
- (NSArray)localizedStringsByLocale;
- (NSArray)typeDefinitions;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolContent

- (CCToolKitToolContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v63[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"toolDefinition"];
    if (v9)
    {
      v63[0] = 0;
      v10 = [[CCToolKitToolToolDefinitionVersion1 alloc] initWithJSONDictionary:v9 error:v63];
      v11 = v63[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();

        v42 = 0;
        goto LABEL_44;
      }

      v9 = v10;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"typeDefinitions"];
    if (!v13)
    {
      v12 = 0;
      v27 = v8;
      goto LABEL_24;
    }

    v14 = v13;
    objc_opt_class();
    v62 = v8;
    v15 = CCValidateIsInstanceOfExpectedClass();
    v16 = v8;

    if (v15)
    {
      v45 = v16;
      v47 = v9;
      selfCopy = self;
      v12 = objc_opt_new();
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v17 = v14;
      v18 = [v17 countByEnumeratingWithState:&v58 objects:v65 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v59;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v59 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v58 + 1) + 8 * i);
            v23 = [CCToolKitToolTypeDefinitionVersion1 alloc];
            v57 = 0;
            v24 = [(CCToolKitToolTypeDefinitionVersion1 *)v23 initWithJSONDictionary:v22 error:&v57];
            v25 = v57;
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
              v41 = v25;
              CCSetError();

              v42 = 0;
              v12 = v17;
              v8 = v45;
              v9 = v47;
              self = selfCopy;
              goto LABEL_44;
            }

            [v12 addObject:v24];
          }

          v19 = [v17 countByEnumeratingWithState:&v58 objects:v65 count:16];
        }

        while (v19);
      }

      self = selfCopy;
      v27 = v45;
LABEL_24:
      v28 = [dictionaryCopy objectForKeyedSubscript:@"localizedStringsByLocale"];
      if (v28)
      {
        v29 = v28;
        objc_opt_class();
        v56 = v27;
        v30 = CCValidateIsInstanceOfExpectedClass();
        v8 = v27;

        if ((v30 & 1) == 0)
        {
          CCSetError();
          v42 = 0;
          goto LABEL_43;
        }

        errorCopy = error;
        v48 = v9;
        selfCopy2 = self;
        v31 = objc_opt_new();
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v29 = v29;
        v32 = [v29 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v53;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v53 != v34)
              {
                objc_enumerationMutation(v29);
              }

              v36 = *(*(&v52 + 1) + 8 * j);
              v37 = [CCToolKitToolContentLocalizedStringTable alloc];
              v51 = 0;
              v38 = [(CCToolKitToolContentLocalizedStringTable *)v37 initWithJSONDictionary:v36 error:&v51];
              v39 = v51;
              if (v38)
              {
                v40 = v39 == 0;
              }

              else
              {
                v40 = 0;
              }

              if (!v40)
              {
                v43 = v39;
                CCSetError();

                v42 = 0;
                v9 = v48;
                self = selfCopy2;
                goto LABEL_43;
              }

              [v31 addObject:v38];
            }

            v33 = [v29 countByEnumeratingWithState:&v52 objects:v64 count:16];
          }

          while (v33);
        }

        v9 = v48;
        self = selfCopy2;
        error = errorCopy;
      }

      else
      {
        v31 = 0;
        v8 = v27;
      }

      v42 = [[CCToolKitToolContent alloc] initWithToolDefinition:v9 typeDefinitions:v12 localizedStringsByLocale:v31 error:error];
      v29 = v31;
LABEL_43:

      goto LABEL_44;
    }

    CCSetError();
    v42 = 0;
    v12 = v14;
    v8 = v16;
LABEL_44:

    goto LABEL_45;
  }

  CCSetError();
  v42 = 0;
LABEL_45:

  return v42;
}

- (id)jsonDictionary
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_toolDefinition)
  {
    toolDefinition = [(CCToolKitToolContent *)self toolDefinition];
    jsonDictionary = [toolDefinition jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"toolDefinition"];
  }

  if (self->_typeDefinitions)
  {
    v6 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    typeDefinitions = [(CCToolKitToolContent *)self typeDefinitions];
    v8 = [typeDefinitions countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(typeDefinitions);
          }

          jsonDictionary2 = [*(*(&v26 + 1) + 8 * i) jsonDictionary];
          [v6 addObject:jsonDictionary2];
        }

        v9 = [typeDefinitions countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"typeDefinitions"];
  }

  if (self->_localizedStringsByLocale)
  {
    v13 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    localizedStringsByLocale = [(CCToolKitToolContent *)self localizedStringsByLocale];
    v15 = [localizedStringsByLocale countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(localizedStringsByLocale);
          }

          jsonDictionary3 = [*(*(&v22 + 1) + 8 * j) jsonDictionary];
          [v13 addObject:jsonDictionary3];
        }

        v16 = [localizedStringsByLocale countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"localizedStringsByLocale"];
  }

  v20 = [v3 copy];

  return v20;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v11 = blockCopy;
  if (self->_toolDefinition)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_toolDefinition];
    v11[2](v11, v7);
  }

  if (self->_typeDefinitions)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_typeDefinitions];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_localizedStringsByLocale)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_localizedStringsByLocale];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (NSArray)localizedStringsByLocale
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_localizedStringsByLocale copyItems:1];

  return v2;
}

- (NSArray)typeDefinitions
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_typeDefinitions copyItems:1];

  return v2;
}

- (CCToolKitToolToolDefinitionVersion1)toolDefinition
{
  v2 = [(CCToolKitToolToolDefinitionVersion1 *)self->_toolDefinition copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  errorCopy = error;
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
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
        goto LABEL_45;
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
            goto LABEL_44;
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
        goto LABEL_44;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 3)
      {
        v25 = CCPBReaderReadDataNoCopy();
        if (!v9)
        {
          v9 = objc_opt_new();
        }

        v31 = [CCToolKitToolContentLocalizedStringTable alloc];
        v46 = 0;
        v29 = [(CCItemMessage *)v31 initWithData:v25 error:&v46];
        v8 = v46;
        if (v8 || !v29)
        {
          goto LABEL_36;
        }

        v30 = v9;
      }

      else
      {
        if (v23 != 2)
        {
          if (v23 == 1)
          {
            v24 = [CCToolKitToolToolDefinitionVersion1 alloc];
            v25 = CCPBReaderReadDataNoCopy();
            v48 = 0;
            v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v48];
            v8 = v48;
            toolDefinition = self->_toolDefinition;
            self->_toolDefinition = v26;
          }

          else
          {
            if (CCPBReaderSkipValueWithTag())
            {
              v8 = 0;
LABEL_38:
              if (*&v5[*v6] < *&v5[*v7])
              {
                continue;
              }

              goto LABEL_45;
            }

            v32 = objc_opt_class();
            v25 = NSStringFromClass(v32);
            v8 = CCSkipFieldErrorForMessage();
          }

LABEL_37:

          goto LABEL_38;
        }

        v25 = CCPBReaderReadDataNoCopy();
        if (!v45)
        {
          v45 = objc_opt_new();
        }

        v28 = [CCToolKitToolTypeDefinitionVersion1 alloc];
        v47 = 0;
        v29 = [(CCItemMessage *)v28 initWithData:v25 error:&v47];
        v8 = v47;
        if (v8 || !v29)
        {
LABEL_36:

          goto LABEL_37;
        }

        v30 = v45;
      }

      break;
    }

    [v30 addObject:{v29, errorCopy}];
    goto LABEL_36;
  }

  v9 = 0;
  v45 = 0;
LABEL_44:
  v8 = 0;
LABEL_45:
  v33 = [v45 copy];
  typeDefinitions = self->_typeDefinitions;
  self->_typeDefinitions = v33;

  v35 = [v9 copy];
  localizedStringsByLocale = self->_localizedStringsByLocale;
  self->_localizedStringsByLocale = v35;

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

- (CCToolKitToolContent)initWithToolDefinition:(id)definition typeDefinitions:(id)definitions localizedStringsByLocale:(id)locale error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  definitionsCopy = definitions;
  localeCopy = locale;
  v13 = objc_opt_new();
  if (definitionCopy)
  {
    objc_opt_class();
    v47 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_14;
    }

    data = [definitionCopy data];
    CCPBDataWriterWriteDataField();

    if (!definitionsCopy)
    {
LABEL_4:
      v17 = v15;
      if (localeCopy)
      {
        goto LABEL_5;
      }

LABEL_25:
      v15 = v17;
LABEL_26:
      immutableData = [v13 immutableData];
      self = [(CCItemMessage *)self initWithData:immutableData error:error];

      selfCopy = self;
      goto LABEL_28;
    }
  }

  else
  {
    v15 = 0;
    if (!definitionsCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v46 = v15;
  v26 = CCValidateArrayValues();
  v17 = v15;

  if (!v26)
  {
    CCSetError();
    selfCopy = 0;
    v15 = v17;
    goto LABEL_28;
  }

  errorCopy2 = error;
  selfCopy3 = self;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v27 = definitionsCopy;
  v28 = [v27 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v43;
    do
    {
      v31 = 0;
      do
      {
        if (*v43 != v30)
        {
          objc_enumerationMutation(v27);
        }

        data2 = [*(*(&v42 + 1) + 8 * v31) data];
        CCPBDataWriterWriteDataField();

        ++v31;
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v29);
  }

  error = errorCopy2;
  self = selfCopy3;
  if (!localeCopy)
  {
    goto LABEL_25;
  }

LABEL_5:
  objc_opt_class();
  v41 = v17;
  v18 = CCValidateArrayValues();
  v15 = v17;

  if (v18)
  {
    errorCopy2 = error;
    selfCopy3 = self;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = localeCopy;
    v20 = [v19 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        v23 = 0;
        do
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v19);
          }

          data3 = [*(*(&v37 + 1) + 8 * v23) data];
          CCPBDataWriterWriteDataField();

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v21);
    }

    error = errorCopy2;
    self = selfCopy3;
    goto LABEL_26;
  }

LABEL_14:
  CCSetError();
  selfCopy = 0;
LABEL_28:

  return selfCopy;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if (identifier == 7556)
  {
    return @"ToolKitTool";
  }

  else
  {
    return 0;
  }
}

@end