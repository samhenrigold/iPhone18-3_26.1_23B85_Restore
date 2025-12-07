@interface CCToolKitToolTriggerDefinitionVersion1
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTriggerDefinitionVersion1)initWithId:(id)id name:(id)name description:(id)description parameters:(id)parameters outputType:(id)type requirements:(id)requirements flags:(id)flags error:(id *)self0;
- (CCToolKitToolTriggerDefinitionVersion1)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypeInstance)outputType;
- (NSArray)parameters;
- (NSArray)requirements;
- (NSString)description;
- (NSString)id;
- (NSString)name;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTriggerDefinitionVersion1

- (CCToolKitToolTriggerDefinitionVersion1)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v99 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v95 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    v75 = [dictionaryCopy objectForKeyedSubscript:@"description"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"parameters"];
    if (v11)
    {
      v12 = v11;
      objc_opt_class();
      v94 = v8;
      v13 = CCValidateIsInstanceOfExpectedClass();
      v14 = v8;

      if ((v13 & 1) == 0)
      {
        CCSetError();
        v30 = 0;
LABEL_59:

        v8 = v14;
        goto LABEL_60;
      }

      errorCopy = error;
      v69 = v10;
      v72 = v9;
      v76 = objc_opt_new();
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v90 objects:v98 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v91;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v91 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v90 + 1) + 8 * i);
            v21 = [CCToolKitToolToolDefinitionVersion1Parameter alloc];
            v89 = 0;
            v22 = [(CCToolKitToolToolDefinitionVersion1Parameter *)v21 initWithJSONDictionary:v20 error:&v89];
            v23 = v89;
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
              v29 = v23;
              CCSetError();

              v30 = 0;
              v12 = v15;
              v10 = v69;
              v9 = v72;
              goto LABEL_59;
            }

            [v76 addObject:v22];
          }

          v17 = [v15 countByEnumeratingWithState:&v90 objects:v98 count:16];
        }

        while (v17);
      }

      v10 = v69;
      error = errorCopy;
    }

    else
    {
      v76 = 0;
      v14 = v8;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"outputType"];
    if (v25)
    {
      v88 = 0;
      v26 = [[CCToolKitToolTypeInstance alloc] initWithJSONDictionary:v25 error:&v88];
      v27 = v88;
      v28 = v27;
      if (!v26 || v27)
      {
        CCSetError();

        v30 = 0;
        goto LABEL_58;
      }

      selfCopy2 = self;

      v25 = v26;
    }

    else
    {
      selfCopy2 = self;
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"requirements"];
    if (!v31)
    {
      v28 = 0;
      self = selfCopy2;
      goto LABEL_42;
    }

    v32 = v31;
    objc_opt_class();
    v87 = v14;
    v33 = CCValidateIsInstanceOfExpectedClass();
    v34 = v14;

    if (v33)
    {
      v65 = v34;
      v61 = v25;
      errorCopy2 = error;
      v70 = v10;
      v73 = v9;
      v28 = objc_opt_new();
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v36 = v32;
      v37 = [v36 countByEnumeratingWithState:&v83 objects:v97 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v84;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v84 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v83 + 1) + 8 * j);
            v42 = [CCToolKitToolRuntimeRequirement alloc];
            v82 = 0;
            v43 = [(CCToolKitToolRuntimeRequirement *)v42 initWithJSONDictionary:v41 error:&v82];
            v44 = v82;
            if (v43)
            {
              v45 = v44 == 0;
            }

            else
            {
              v45 = 0;
            }

            if (!v45)
            {
              v59 = v44;
              CCSetError();

              v30 = 0;
              v28 = v36;
              v14 = v34;
              self = selfCopy2;
              v10 = v70;
              v9 = v73;
              v25 = v61;
              goto LABEL_58;
            }

            [v28 addObject:v43];
          }

          v38 = [v36 countByEnumeratingWithState:&v83 objects:v97 count:16];
        }

        while (v38);
      }

      self = selfCopy2;
      v9 = v73;
      error = errorCopy2;
      v25 = v61;
      v14 = v65;
LABEL_42:
      v46 = [dictionaryCopy objectForKeyedSubscript:@"flags"];
      if (v46)
      {
        objc_opt_class();
        v81 = v14;
        v47 = CCValidateIsInstanceOfExpectedClass();
        v48 = v14;
        v49 = v14;
        v14 = v48;

        if ((v47 & 1) == 0)
        {
          CCSetError();
          v30 = 0;
          goto LABEL_57;
        }

        v62 = v25;
        errorCopy3 = error;
        selfCopy3 = self;
        v71 = v10;
        v74 = v9;
        v50 = objc_opt_new();
        v51 = v46;
        v46 = v50;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        obj = v51;
        v52 = [obj countByEnumeratingWithState:&v77 objects:v96 count:16];
        if (v52)
        {
          v53 = v52;
          v54 = *v78;
          while (2)
          {
            v55 = 0;
            v56 = v14;
            do
            {
              if (*v78 != v54)
              {
                objc_enumerationMutation(obj);
              }

              v57 = *(*(&v77 + 1) + 8 * v55);
              objc_opt_class();
              v58 = CCValidateIsInstanceOfExpectedClass();
              v14 = v56;

              if (!v58)
              {
                CCSetError();

                v46 = obj;
                v30 = 0;
                self = selfCopy3;
                v10 = v71;
                v9 = v74;
                v25 = v62;
                goto LABEL_57;
              }

              [v46 appendEnumValue:{objc_msgSend(v57, "unsignedIntValue")}];
              ++v55;
              v56 = v14;
            }

            while (v53 != v55);
            v53 = [obj countByEnumeratingWithState:&v77 objects:v96 count:16];
            if (v53)
            {
              continue;
            }

            break;
          }
        }

        self = selfCopy3;
        v10 = v71;
        v9 = v74;
        error = errorCopy3;
        v25 = v62;
      }

      v30 = [[CCToolKitToolTriggerDefinitionVersion1 alloc] initWithId:v9 name:v10 description:v75 parameters:v76 outputType:v25 requirements:v28 flags:v46 error:error];
LABEL_57:

      goto LABEL_58;
    }

    CCSetError();
    v30 = 0;
    v28 = v32;
    v14 = v34;
    self = selfCopy2;
LABEL_58:

    v12 = v76;
    goto LABEL_59;
  }

  CCSetError();
  v30 = 0;
LABEL_60:

  return v30;
}

- (id)jsonDictionary
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_id)
  {
    v4 = [(CCToolKitToolTriggerDefinitionVersion1 *)self id];
    [v3 setObject:v4 forKeyedSubscript:@"id"];
  }

  if (self->_name)
  {
    name = [(CCToolKitToolTriggerDefinitionVersion1 *)self name];
    [v3 setObject:name forKeyedSubscript:@"name"];
  }

  if (self->_description)
  {
    v6 = [(CCToolKitToolTriggerDefinitionVersion1 *)self description];
    [v3 setObject:v6 forKeyedSubscript:@"description"];
  }

  if (self->_parameters)
  {
    v7 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    parameters = [(CCToolKitToolTriggerDefinitionVersion1 *)self parameters];
    v9 = [parameters countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(parameters);
          }

          jsonDictionary = [*(*(&v34 + 1) + 8 * i) jsonDictionary];
          [v7 addObject:jsonDictionary];
        }

        v10 = [parameters countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"parameters"];
  }

  if (self->_outputType)
  {
    outputType = [(CCToolKitToolTriggerDefinitionVersion1 *)self outputType];
    jsonDictionary2 = [outputType jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"outputType"];
  }

  if (self->_requirements)
  {
    v16 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    requirements = [(CCToolKitToolTriggerDefinitionVersion1 *)self requirements];
    v18 = [requirements countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(requirements);
          }

          jsonDictionary3 = [*(*(&v30 + 1) + 8 * j) jsonDictionary];
          [v16 addObject:jsonDictionary3];
        }

        v19 = [requirements countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKeyedSubscript:@"requirements"];
  }

  if (self->_flags)
  {
    v23 = objc_opt_new();
    flags = [(CCToolKitToolTriggerDefinitionVersion1 *)self flags];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __56__CCToolKitToolTriggerDefinitionVersion1_jsonDictionary__block_invoke;
    v28[3] = &unk_1E73E8EA0;
    v29 = v23;
    v25 = v23;
    [flags enumerateEnumValuesWithBlock:v28];

    [v3 setObject:v25 forKeyedSubscript:@"flags"];
  }

  v26 = [v3 copy];

  return v26;
}

void __56__CCToolKitToolTriggerDefinitionVersion1_jsonDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v15 = blockCopy;
  if (self->_id)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_id];
    v15[2](v15, v7);
  }

  if (self->_name)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_name];
    v15[2](v15, v8);
  }

  if (self->_description)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_description];
    v15[2](v15, v9);
  }

  if (self->_parameters)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_parameters];
    v15[2](v15, v10);
  }

  if (self->_outputType)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_outputType];
    v15[2](v15, v11);
  }

  if (self->_requirements)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_requirements];
    v15[2](v15, v12);
  }

  v13 = v15;
  if (self->_flags)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedEnumValue:self->_flags];
    v15[2](v15, v14);

    v13 = v15;
  }
}

- (NSArray)requirements
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_requirements copyItems:1];

  return v2;
}

- (CCToolKitToolTypeInstance)outputType
{
  v2 = [(CCToolKitToolTypeInstance *)self->_outputType copy];

  return v2;
}

- (NSArray)parameters
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_parameters copyItems:1];

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

- (NSString)id
{
  v2 = [(NSString *)self->_id copy];

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
    v49 = 0;
    v50 = 0;
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
        goto LABEL_58;
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
            goto LABEL_57;
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
        goto LABEL_57;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) <= 3)
      {
        switch(v23)
        {
          case 1:
            v28 = CCPBReaderReadStringNoCopy();
            v29 = 16;
            break;
          case 2:
            v28 = CCPBReaderReadStringNoCopy();
            v29 = 24;
            break;
          case 3:
            v28 = CCPBReaderReadStringNoCopy();
            v29 = 32;
            break;
          default:
LABEL_36:
            if ((CCPBReaderSkipValueWithTag() & 1) == 0)
            {
              v30 = objc_opt_class();
              v25 = NSStringFromClass(v30);
              v8 = CCSkipFieldErrorForMessage();
              goto LABEL_50;
            }

LABEL_53:
            v8 = 0;
LABEL_54:
            if (*&v5[*v6] < *&v5[*v7])
            {
              continue;
            }

            goto LABEL_58;
        }

        v35 = *(&self->super.super.isa + v29);
        *(&self->super.super.isa + v29) = v28;

        goto LABEL_53;
      }

      break;
    }

    if (v23 > 5)
    {
      if (v23 != 6)
      {
        if (v23 == 7)
        {
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          CCPBReaderAppendRepeatedEnumFieldValues();
          goto LABEL_53;
        }

        goto LABEL_36;
      }

      v25 = CCPBReaderReadDataNoCopy();
      if (!v50)
      {
        v50 = objc_opt_new();
      }

      v34 = [CCToolKitToolRuntimeRequirement alloc];
      v51 = 0;
      v32 = [(CCItemMessage *)v34 initWithData:v25 error:&v51];
      v8 = v51;
      if (!v8 && v32)
      {
        v33 = v50;
        goto LABEL_48;
      }
    }

    else
    {
      if (v23 != 4)
      {
        if (v23 == 5)
        {
          v24 = [CCToolKitToolTypeInstance alloc];
          v25 = CCPBReaderReadDataNoCopy();
          v52 = 0;
          v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v52];
          v8 = v52;
          outputType = self->_outputType;
          self->_outputType = v26;

LABEL_50:
          goto LABEL_54;
        }

        goto LABEL_36;
      }

      v25 = CCPBReaderReadDataNoCopy();
      if (!v49)
      {
        v49 = objc_opt_new();
      }

      v31 = [CCToolKitToolToolDefinitionVersion1Parameter alloc];
      v53 = 0;
      v32 = [(CCItemMessage *)v31 initWithData:v25 error:&v53];
      v8 = v53;
      if (!v8 && v32)
      {
        v33 = v49;
LABEL_48:
        [v33 addObject:v32];
      }
    }

    goto LABEL_50;
  }

  v9 = 0;
  v49 = 0;
  v50 = 0;
LABEL_57:
  v8 = 0;
LABEL_58:
  v36 = [v49 copy];
  parameters = self->_parameters;
  self->_parameters = v36;

  v38 = [v50 copy];
  requirements = self->_requirements;
  self->_requirements = v38;

  v40 = [v9 copy];
  flags = self->_flags;
  self->_flags = v40;

  if (v8)
  {
    CCSetError();
    v42 = 0;
    v43 = dataCopy;
  }

  else
  {
    v43 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }
  }

  return v42;
}

- (CCToolKitToolTriggerDefinitionVersion1)initWithId:(id)id name:(id)name description:(id)description parameters:(id)parameters outputType:(id)type requirements:(id)requirements flags:(id)flags error:(id *)self0
{
  v72 = *MEMORY[0x1E69E9840];
  idCopy = id;
  nameCopy = name;
  descriptionCopy = description;
  parametersCopy = parameters;
  typeCopy = type;
  requirementsCopy = requirements;
  flagsCopy = flags;
  v21 = objc_opt_new();
  if (!idCopy)
  {
    v23 = 0;
LABEL_5:
    selfCopy = self;
    if (nameCopy)
    {
      objc_opt_class();
      v68 = v23;
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v25 = v23;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_36;
      }

      CCPBDataWriterWriteStringField();
      if (!descriptionCopy)
      {
LABEL_8:
        v23 = v25;
        if (parametersCopy)
        {
LABEL_9:
          objc_opt_class();
          v66 = v23;
          v26 = CCValidateArrayValues();
          v25 = v23;

          if (!v26)
          {
            goto LABEL_36;
          }

          v48 = parametersCopy;
          v50 = typeCopy;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v27 = parametersCopy;
          v28 = [v27 countByEnumeratingWithState:&v62 objects:v71 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v63;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v63 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                data = [*(*(&v62 + 1) + 8 * i) data];
                CCPBDataWriterWriteDataField();
              }

              v29 = [v27 countByEnumeratingWithState:&v62 objects:v71 count:16];
            }

            while (v29);
          }

          parametersCopy = v48;
          typeCopy = v50;
          if (!v50)
          {
            goto LABEL_18;
          }

LABEL_24:
          objc_opt_class();
          v61 = v25;
          v35 = CCValidateIsInstanceOfExpectedClass();
          v23 = v25;

          if (v35)
          {
            data2 = [typeCopy data];
            CCPBDataWriterWriteDataField();

            goto LABEL_26;
          }

LABEL_41:
          CCSetError();
          selfCopy2 = 0;
          goto LABEL_42;
        }

LABEL_23:
        v25 = v23;
        if (!typeCopy)
        {
LABEL_18:
          v23 = v25;
LABEL_26:
          if (!requirementsCopy)
          {
            v25 = v23;
LABEL_38:
            if (!flagsCopy)
            {
              v52 = typeCopy;
              v45 = parametersCopy;
              v23 = v25;
              goto LABEL_45;
            }

            objc_opt_class();
            v44 = CCValidateIsInstanceOfExpectedClass();
            v23 = v25;

            if (v44)
            {
              v52 = typeCopy;
              v45 = parametersCopy;
              CCPBDataWriterWriteRepeatedUInt32Field();
LABEL_45:
              immutableData = [v21 immutableData];
              self = [(CCItemMessage *)selfCopy initWithData:immutableData error:error];

              selfCopy2 = self;
              parametersCopy = v45;
              typeCopy = v52;
              goto LABEL_43;
            }

            goto LABEL_41;
          }

          objc_opt_class();
          v60 = v23;
          v37 = CCValidateArrayValues();
          v25 = v23;

          if (v37)
          {
            v49 = parametersCopy;
            v51 = typeCopy;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v38 = requirementsCopy;
            v39 = [v38 countByEnumeratingWithState:&v56 objects:v70 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v57;
              do
              {
                for (j = 0; j != v40; ++j)
                {
                  if (*v57 != v41)
                  {
                    objc_enumerationMutation(v38);
                  }

                  data3 = [*(*(&v56 + 1) + 8 * j) data];
                  CCPBDataWriterWriteDataField();
                }

                v40 = [v38 countByEnumeratingWithState:&v56 objects:v70 count:16];
              }

              while (v40);
            }

            parametersCopy = v49;
            typeCopy = v51;
            goto LABEL_38;
          }

LABEL_36:
          CCSetError();
          selfCopy2 = 0;
          v23 = v25;
LABEL_42:
          self = selfCopy;
          goto LABEL_43;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v25 = v23;
      if (!descriptionCopy)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    v67 = v25;
    v34 = CCValidateIsInstanceOfExpectedClass();
    v23 = v25;

    if (!v34)
    {
      goto LABEL_41;
    }

    CCPBDataWriterWriteStringField();
    if (parametersCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  objc_opt_class();
  v69 = 0;
  v22 = CCValidateIsInstanceOfExpectedClass();
  v23 = 0;
  if (v22)
  {
    CCPBDataWriterWriteStringField();
    goto LABEL_5;
  }

  CCSetError();
  selfCopy2 = 0;
LABEL_43:

  return selfCopy2;
}

@end