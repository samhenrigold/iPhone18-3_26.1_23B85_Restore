@interface CCToolKitToolToolDefinitionVersion1Parameter
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolToolDefinitionVersion1Parameter)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolToolDefinitionVersion1Parameter)initWithKey:(id)key name:(id)name description:(id)description valueType:(id)type relationships:(id)relationships sampleInvocations:(id)invocations flags:(id)flags parentToolMetadata:(id)self0 BOOLeanMetadata:(id)self1 error:(id *)self2;
- (CCToolKitToolToolDefinitionVersion1ParameterBooleanMetadata)BOOLeanMetadata;
- (CCToolKitToolToolDefinitionVersion1ParameterToolMetadata)parentToolMetadata;
- (CCToolKitToolTypeInstance)valueType;
- (NSArray)relationships;
- (NSArray)sampleInvocations;
- (NSString)description;
- (NSString)key;
- (NSString)name;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolToolDefinitionVersion1Parameter

- (CCToolKitToolToolDefinitionVersion1Parameter)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v102 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v98[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"key"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"description"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"valueType"];
    if (v12)
    {
      v98[0] = 0;
      v13 = [[CCToolKitToolTypeInstance alloc] initWithJSONDictionary:v12 error:v98];
      v14 = v98[0];
      v15 = v14;
      if (!v13 || v14)
      {
        CCSetError();

        v44 = 0;
LABEL_74:

        goto LABEL_75;
      }

      v12 = v13;
    }

    v76 = v11;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"relationships"];
    v77 = v12;
    if (v16)
    {
      v17 = v16;
      objc_opt_class();
      v97 = v8;
      v18 = CCValidateIsInstanceOfExpectedClass();
      v19 = v8;

      if ((v18 & 1) == 0)
      {
        CCSetError();
        v44 = 0;
        v15 = v17;
        v8 = v19;
LABEL_40:
        v11 = v76;
        v12 = v77;
        goto LABEL_74;
      }

      v67 = v9;
      v70 = v10;
      selfCopy = self;
      v15 = objc_opt_new();
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v20 = v17;
      v21 = [v20 countByEnumeratingWithState:&v93 objects:v101 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v94;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v94 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v93 + 1) + 8 * i);
            v26 = [CCToolKitToolToolDefinitionVersion1ParameterRelationship alloc];
            v92 = 0;
            v27 = [(CCToolKitToolToolDefinitionVersion1ParameterRelationship *)v26 initWithJSONDictionary:v25 error:&v92];
            v28 = v92;
            if (v27)
            {
              v29 = v28 == 0;
            }

            else
            {
              v29 = 0;
            }

            if (!v29)
            {
              v43 = v28;
              CCSetError();

              v44 = 0;
              v15 = v20;
              v8 = v19;
              v10 = v70;
              self = selfCopy;
              v9 = v67;
              goto LABEL_40;
            }

            [v15 addObject:v27];
          }

          v22 = [v20 countByEnumeratingWithState:&v93 objects:v101 count:16];
        }

        while (v22);
      }

      self = selfCopy;
      v9 = v67;
      v12 = v77;
    }

    else
    {
      v15 = 0;
      v19 = v8;
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"sampleInvocations"];
    if (v30)
    {
      v31 = v30;
      objc_opt_class();
      v91 = v19;
      v32 = CCValidateIsInstanceOfExpectedClass();
      v8 = v19;

      if ((v32 & 1) == 0)
      {
        CCSetError();
        v44 = 0;
LABEL_54:
        v11 = v76;
        v12 = v77;
        goto LABEL_73;
      }

      v68 = v9;
      v71 = v10;
      selfCopy2 = self;
      v78 = objc_opt_new();
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v33 = v31;
      v34 = [v33 countByEnumeratingWithState:&v87 objects:v100 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v88;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v88 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v87 + 1) + 8 * j);
            v39 = [CCToolKitToolSampleInvocationDefinition alloc];
            v86 = 0;
            v40 = [(CCToolKitToolSampleInvocationDefinition *)v39 initWithJSONDictionary:v38 error:&v86];
            v41 = v86;
            if (v40)
            {
              v42 = v41 == 0;
            }

            else
            {
              v42 = 0;
            }

            if (!v42)
            {
              v56 = v41;
              CCSetError();

              v44 = 0;
              v31 = v33;
              v10 = v71;
              self = selfCopy2;
              v9 = v68;
              goto LABEL_54;
            }

            [v78 addObject:v40];
          }

          v35 = [v33 countByEnumeratingWithState:&v87 objects:v100 count:16];
        }

        while (v35);
      }

      self = selfCopy2;
      v9 = v68;
      v12 = v77;
    }

    else
    {
      v78 = 0;
      v8 = v19;
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"flags"];
    v72 = v10;
    if (v45)
    {
      v46 = v45;
      objc_opt_class();
      v85 = v8;
      v47 = CCValidateIsInstanceOfExpectedClass();
      v48 = v8;

      if ((v47 & 1) == 0)
      {
        CCSetError();
        v44 = 0;
        v8 = v48;
LABEL_72:

        v10 = v72;
        v11 = v76;
        v31 = v78;
LABEL_73:

        goto LABEL_74;
      }

      errorCopy = error;
      v69 = v9;
      v75 = objc_opt_new();
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      obj = v46;
      v49 = [obj countByEnumeratingWithState:&v81 objects:v99 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v82;
        while (2)
        {
          v52 = 0;
          v53 = v48;
          do
          {
            if (*v82 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v54 = *(*(&v81 + 1) + 8 * v52);
            objc_opt_class();
            v80[1] = v53;
            v55 = CCValidateIsInstanceOfExpectedClass();
            v48 = v53;

            if (!v55)
            {
              CCSetError();
              v46 = obj;

              v44 = 0;
              v8 = v48;
              v9 = v69;
              v12 = v77;
              goto LABEL_72;
            }

            [v75 appendEnumValue:{objc_msgSend(v54, "unsignedIntValue")}];
            ++v52;
            v53 = v48;
          }

          while (v50 != v52);
          v50 = [obj countByEnumeratingWithState:&v81 objects:v99 count:16];
          if (v50)
          {
            continue;
          }

          break;
        }
      }

      v8 = v48;
      error = errorCopy;
      v9 = v69;
    }

    else
    {
      v75 = 0;
    }

    v57 = [dictionaryCopy objectForKeyedSubscript:@"parentToolMetadata"];
    if (v57)
    {
      v80[0] = 0;
      v58 = [[CCToolKitToolToolDefinitionVersion1ParameterToolMetadata alloc] initWithJSONDictionary:v57 error:v80];
      v59 = v80[0];
      v60 = v59;
      if (!v58 || v59)
      {
        CCSetError();
        goto LABEL_70;
      }

      v57 = v58;
    }

    v61 = [dictionaryCopy objectForKeyedSubscript:@"BOOLeanMetadata"];
    if (!v61)
    {
      v62 = 0;
      goto LABEL_68;
    }

    v60 = v61;
    v79 = 0;
    v62 = [[CCToolKitToolToolDefinitionVersion1ParameterBooleanMetadata alloc] initWithJSONDictionary:v61 error:&v79];
    v63 = v79;
    v58 = v63;
    if (v62 && !v63)
    {

LABEL_68:
      v12 = v77;
      v44 = [[CCToolKitToolToolDefinitionVersion1Parameter alloc] initWithKey:v9 name:v72 description:v76 valueType:v77 relationships:v15 sampleInvocations:v78 flags:v75 parentToolMetadata:v57 BOOLeanMetadata:v62 error:error];
      v60 = v62;
LABEL_71:

      v46 = v75;
      goto LABEL_72;
    }

    CCSetError();

LABEL_70:
    v44 = 0;
    v12 = v77;
    goto LABEL_71;
  }

  CCSetError();
  v44 = 0;
LABEL_75:

  return v44;
}

- (id)jsonDictionary
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_key)
  {
    v4 = [(CCToolKitToolToolDefinitionVersion1Parameter *)self key];
    [v3 setObject:v4 forKeyedSubscript:@"key"];
  }

  if (self->_name)
  {
    name = [(CCToolKitToolToolDefinitionVersion1Parameter *)self name];
    [v3 setObject:name forKeyedSubscript:@"name"];
  }

  if (self->_description)
  {
    v6 = [(CCToolKitToolToolDefinitionVersion1Parameter *)self description];
    [v3 setObject:v6 forKeyedSubscript:@"description"];
  }

  if (self->_valueType)
  {
    valueType = [(CCToolKitToolToolDefinitionVersion1Parameter *)self valueType];
    jsonDictionary = [valueType jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"valueType"];
  }

  if (self->_relationships)
  {
    v9 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    relationships = [(CCToolKitToolToolDefinitionVersion1Parameter *)self relationships];
    v11 = [relationships countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v39;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v39 != v13)
          {
            objc_enumerationMutation(relationships);
          }

          jsonDictionary2 = [*(*(&v38 + 1) + 8 * i) jsonDictionary];
          [v9 addObject:jsonDictionary2];
        }

        v12 = [relationships countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"relationships"];
  }

  if (self->_sampleInvocations)
  {
    v16 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    sampleInvocations = [(CCToolKitToolToolDefinitionVersion1Parameter *)self sampleInvocations];
    v18 = [sampleInvocations countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(sampleInvocations);
          }

          jsonDictionary3 = [*(*(&v34 + 1) + 8 * j) jsonDictionary];
          [v16 addObject:jsonDictionary3];
        }

        v19 = [sampleInvocations countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKeyedSubscript:@"sampleInvocations"];
  }

  if (self->_flags)
  {
    v23 = objc_opt_new();
    flags = [(CCToolKitToolToolDefinitionVersion1Parameter *)self flags];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __62__CCToolKitToolToolDefinitionVersion1Parameter_jsonDictionary__block_invoke;
    v32[3] = &unk_1E73E8EA0;
    v33 = v23;
    v25 = v23;
    [flags enumerateEnumValuesWithBlock:v32];

    [v3 setObject:v25 forKeyedSubscript:@"flags"];
  }

  if (self->_parentToolMetadata)
  {
    parentToolMetadata = [(CCToolKitToolToolDefinitionVersion1Parameter *)self parentToolMetadata];
    jsonDictionary4 = [parentToolMetadata jsonDictionary];
    [v3 setObject:jsonDictionary4 forKeyedSubscript:@"parentToolMetadata"];
  }

  if (self->_BOOLeanMetadata)
  {
    bOOLeanMetadata = [(CCToolKitToolToolDefinitionVersion1Parameter *)self BOOLeanMetadata];
    jsonDictionary5 = [bOOLeanMetadata jsonDictionary];
    [v3 setObject:jsonDictionary5 forKeyedSubscript:@"BOOLeanMetadata"];
  }

  v30 = [v3 copy];

  return v30;
}

void __62__CCToolKitToolToolDefinitionVersion1Parameter_jsonDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v17 = blockCopy;
  if (self->_key)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_key];
    v17[2](v17, v7);
  }

  if (self->_name)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_name];
    v17[2](v17, v8);
  }

  if (self->_description)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_description];
    v17[2](v17, v9);
  }

  if (self->_valueType)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_valueType];
    v17[2](v17, v10);
  }

  if (self->_relationships)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_relationships];
    v17[2](v17, v11);
  }

  if (self->_sampleInvocations)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_sampleInvocations];
    v17[2](v17, v12);
  }

  if (self->_flags)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedEnumValue:self->_flags];
    v17[2](v17, v13);
  }

  if (self->_parentToolMetadata)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_parentToolMetadata];
    v17[2](v17, v14);
  }

  v15 = v17;
  if (self->_BOOLeanMetadata)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_BOOLeanMetadata];
    v17[2](v17, v16);

    v15 = v17;
  }
}

- (CCToolKitToolToolDefinitionVersion1ParameterBooleanMetadata)BOOLeanMetadata
{
  v2 = [(CCToolKitToolToolDefinitionVersion1ParameterBooleanMetadata *)self->_BOOLeanMetadata copy];

  return v2;
}

- (CCToolKitToolToolDefinitionVersion1ParameterToolMetadata)parentToolMetadata
{
  v2 = [(CCToolKitToolToolDefinitionVersion1ParameterToolMetadata *)self->_parentToolMetadata copy];

  return v2;
}

- (NSArray)sampleInvocations
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_sampleInvocations copyItems:1];

  return v2;
}

- (NSArray)relationships
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_relationships copyItems:1];

  return v2;
}

- (CCToolKitToolTypeInstance)valueType
{
  v2 = [(CCToolKitToolTypeInstance *)self->_valueType copy];

  return v2;
}

- (NSString)description
{
  v2 = [(NSString *)self->_description copy];

  return v2;
}

- (NSString)name
{
  v2 = [(NSString *)self->_name copy];

  return v2;
}

- (NSString)key
{
  v2 = [(NSString *)self->_key copy];

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
    v52 = 0;
    v53 = 0;
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
        goto LABEL_64;
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
            goto LABEL_63;
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
        goto LABEL_63;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 4)
      {
        if (v23 > 6)
        {
          switch(v23)
          {
            case 7:
              if (!v9)
              {
                v9 = objc_opt_new();
              }

              CCPBReaderAppendRepeatedEnumFieldValues();
              goto LABEL_58;
            case 8:
              v36 = [CCToolKitToolToolDefinitionVersion1ParameterToolMetadata alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v55 = 0;
              v26 = [(CCItemMessage *)v36 initWithData:v25 error:&v55];
              v8 = v55;
              v27 = 72;
              goto LABEL_55;
            case 9:
              v24 = [CCToolKitToolToolDefinitionVersion1ParameterBooleanMetadata alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v54 = 0;
              v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v54];
              v8 = v54;
              v27 = 80;
LABEL_55:
              v37 = *(&self->super.super.isa + v27);
              *(&self->super.super.isa + v27) = v26;

              goto LABEL_56;
          }

          goto LABEL_57;
        }

        if (v23 == 5)
        {
          v25 = CCPBReaderReadDataNoCopy();
          if (!v52)
          {
            v52 = objc_opt_new();
          }

          v35 = [CCToolKitToolToolDefinitionVersion1ParameterRelationship alloc];
          v57 = 0;
          v32 = [(CCItemMessage *)v35 initWithData:v25 error:&v57];
          v8 = v57;
          if (v8 || !v32)
          {
            goto LABEL_53;
          }

          v33 = v52;
          goto LABEL_52;
        }

        if (v23 == 6)
        {
          v25 = CCPBReaderReadDataNoCopy();
          if (!v53)
          {
            v53 = objc_opt_new();
          }

          v31 = [CCToolKitToolSampleInvocationDefinition alloc];
          v56 = 0;
          v32 = [(CCItemMessage *)v31 initWithData:v25 error:&v56];
          v8 = v56;
          if (v8 || !v32)
          {
            goto LABEL_53;
          }

          v33 = v53;
LABEL_52:
          [v33 addObject:v32];
LABEL_53:

LABEL_56:
          goto LABEL_59;
        }

LABEL_57:
        if ((CCPBReaderSkipValueWithTag() & 1) == 0)
        {
          v38 = objc_opt_class();
          v25 = NSStringFromClass(v38);
          v8 = CCSkipFieldErrorForMessage();
          goto LABEL_56;
        }

LABEL_58:
        v8 = 0;
LABEL_59:
        if (*&v5[*v6] < *&v5[*v7])
        {
          continue;
        }

        goto LABEL_64;
      }

      break;
    }

    if (v23 > 2)
    {
      if (v23 != 3)
      {
        if (v23 == 4)
        {
          v30 = [CCToolKitToolTypeInstance alloc];
          v25 = CCPBReaderReadDataNoCopy();
          v58 = 0;
          v26 = [(CCItemMessage *)v30 initWithData:v25 error:&v58];
          v8 = v58;
          v27 = 40;
          goto LABEL_55;
        }

        goto LABEL_57;
      }

      v28 = CCPBReaderReadStringNoCopy();
      v29 = 32;
    }

    else if (v23 == 1)
    {
      v28 = CCPBReaderReadStringNoCopy();
      v29 = 16;
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_57;
      }

      v28 = CCPBReaderReadStringNoCopy();
      v29 = 24;
    }

    v34 = *(&self->super.super.isa + v29);
    *(&self->super.super.isa + v29) = v28;

    goto LABEL_58;
  }

  v9 = 0;
  v52 = 0;
  v53 = 0;
LABEL_63:
  v8 = 0;
LABEL_64:
  v39 = [v52 copy];
  relationships = self->_relationships;
  self->_relationships = v39;

  v41 = [v53 copy];
  sampleInvocations = self->_sampleInvocations;
  self->_sampleInvocations = v41;

  v43 = [v9 copy];
  flags = self->_flags;
  self->_flags = v43;

  if (v8)
  {
    CCSetError();
    v45 = 0;
    v46 = dataCopy;
  }

  else
  {
    v46 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      v49 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }
  }

  return v45;
}

- (CCToolKitToolToolDefinitionVersion1Parameter)initWithKey:(id)key name:(id)name description:(id)description valueType:(id)type relationships:(id)relationships sampleInvocations:(id)invocations flags:(id)flags parentToolMetadata:(id)self0 BOOLeanMetadata:(id)self1 error:(id *)self2
{
  v82 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  nameCopy = name;
  descriptionCopy = description;
  typeCopy = type;
  relationshipsCopy = relationships;
  invocationsCopy = invocations;
  flagsCopy = flags;
  metadataCopy = metadata;
  leanMetadataCopy = leanMetadata;
  v21 = objc_opt_new();
  if (keyCopy)
  {
    objc_opt_class();
    v79 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v23 = 0;
    if (!IsInstanceOfExpectedClass)
    {
LABEL_37:
      CCSetError();
      v47 = 0;
      v37 = invocationsCopy;
      goto LABEL_42;
    }

    errorCopy2 = error;
    CCPBDataWriterWriteStringField();
  }

  else
  {
    errorCopy2 = error;
    v23 = 0;
  }

  if (!nameCopy)
  {
    v25 = v23;
    if (!descriptionCopy)
    {
LABEL_8:
      v58 = descriptionCopy;
      v23 = v25;
      if (typeCopy)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  objc_opt_class();
  v78 = v23;
  v24 = CCValidateIsInstanceOfExpectedClass();
  v25 = v23;

  if (v24)
  {
    CCPBDataWriterWriteStringField();
    if (!descriptionCopy)
    {
      goto LABEL_8;
    }

LABEL_14:
    objc_opt_class();
    v77 = v25;
    v29 = CCValidateIsInstanceOfExpectedClass();
    v23 = v25;

    if (v29)
    {
      v58 = descriptionCopy;
      CCPBDataWriterWriteStringField();
      if (typeCopy)
      {
LABEL_9:
        objc_opt_class();
        v76 = v23;
        v26 = CCValidateIsInstanceOfExpectedClass();
        v27 = v23;

        if (!v26)
        {
          goto LABEL_38;
        }

        data = [typeCopy data];
        CCPBDataWriterWriteDataField();

        if (!relationshipsCopy)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }

LABEL_16:
      v27 = v23;
      if (!relationshipsCopy)
      {
LABEL_11:
        v23 = v27;
LABEL_26:
        v37 = invocationsCopy;
        if (invocationsCopy)
        {
          objc_opt_class();
          v70 = v23;
          v38 = CCValidateArrayValues();
          v39 = v23;

          if (!v38)
          {
            CCSetError();
            v47 = 0;
            v23 = v39;
            goto LABEL_41;
          }

          v57 = relationshipsCopy;
          v40 = typeCopy;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v41 = invocationsCopy;
          v42 = [v41 countByEnumeratingWithState:&v66 objects:v80 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v67;
            do
            {
              for (i = 0; i != v43; ++i)
              {
                if (*v67 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                data2 = [*(*(&v66 + 1) + 8 * i) data];
                CCPBDataWriterWriteDataField();
              }

              v43 = [v41 countByEnumeratingWithState:&v66 objects:v80 count:16];
            }

            while (v43);
          }

          typeCopy = v40;
          relationshipsCopy = v57;
          v37 = invocationsCopy;
        }

        else
        {
          v39 = v23;
        }

        if (flagsCopy)
        {
          objc_opt_class();
          v49 = CCValidateIsInstanceOfExpectedClass();
          v23 = v39;

          if (!v49)
          {
            CCSetError();
            v47 = 0;
            goto LABEL_41;
          }

          CCPBDataWriterWriteRepeatedUInt32Field();
        }

        else
        {
          v23 = v39;
        }

        if (!metadataCopy)
        {
          v27 = v23;
          goto LABEL_54;
        }

        objc_opt_class();
        v50 = CCValidateIsInstanceOfExpectedClass();
        v27 = v23;

        if (v50)
        {
          data3 = [metadataCopy data];
          CCPBDataWriterWriteDataField();

LABEL_54:
          if (!leanMetadataCopy)
          {
            v23 = v27;
            goto LABEL_59;
          }

          objc_opt_class();
          v52 = CCValidateIsInstanceOfExpectedClass();
          v23 = v27;

          if (v52)
          {
            data4 = [leanMetadataCopy data];
            CCPBDataWriterWriteDataField();

LABEL_59:
            v37 = invocationsCopy;
            immutableData = [v21 immutableData];
            v47 = [(CCItemMessage *)self initWithData:immutableData error:errorCopy2];

            self = v47;
            goto LABEL_41;
          }

          goto LABEL_39;
        }

LABEL_38:
        CCSetError();
        v47 = 0;
        v23 = v27;
LABEL_40:
        v37 = invocationsCopy;
LABEL_41:
        descriptionCopy = v58;
        goto LABEL_42;
      }

LABEL_17:
      objc_opt_class();
      v75 = v27;
      v30 = CCValidateArrayValues();
      v23 = v27;

      if (!v30)
      {
LABEL_39:
        CCSetError();
        v47 = 0;
        goto LABEL_40;
      }

      v55 = typeCopy;
      v56 = relationshipsCopy;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v31 = relationshipsCopy;
      v32 = [v31 countByEnumeratingWithState:&v71 objects:v81 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v72;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v72 != v34)
            {
              objc_enumerationMutation(v31);
            }

            data5 = [*(*(&v71 + 1) + 8 * j) data];
            CCPBDataWriterWriteDataField();
          }

          v33 = [v31 countByEnumeratingWithState:&v71 objects:v81 count:16];
        }

        while (v33);
      }

      typeCopy = v55;
      relationshipsCopy = v56;
      goto LABEL_26;
    }

    goto LABEL_37;
  }

  CCSetError();
  v47 = 0;
  v23 = v25;
  v37 = invocationsCopy;
LABEL_42:

  return v47;
}

@end