@interface CCToolKitToolAppDefinition
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolAppDefinition)initWithId:(id)id name:(id)name bundleId:(id)bundleId bundleVersion:(id)version teamId:(id)teamId device:(id)device origin:(unsigned int)origin synonyms:(id)self0 error:(id *)self1;
- (CCToolKitToolAppDefinition)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolAppDefinitionDevice)device;
- (NSArray)synonyms;
- (NSString)bundleId;
- (NSString)bundleVersion;
- (NSString)id;
- (NSString)name;
- (NSString)teamId;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolAppDefinition

- (CCToolKitToolAppDefinition)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v29[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  v9 = v8;
  if (IsInstanceOfExpectedClass)
  {
    v27 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"bundleVersion"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"teamId"];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"device"];
    selfCopy = self;
    if (v15)
    {
      v16 = v10;
      v17 = v11;
      v29[0] = 0;
      v18 = [[CCToolKitToolAppDefinitionDevice alloc] initWithJSONDictionary:v15 error:v29];
      v19 = v29[0];
      v20 = v19;
      if (!v18 || v19)
      {
        CCSetError();
        v23 = 0;
LABEL_12:

        v9 = v27;
        self = selfCopy;
        goto LABEL_13;
      }

      v15 = v18;
      v11 = v17;
      v10 = v16;
    }

    v26 = v14;
    v16 = v10;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"origin"];
    v20 = v21;
    v17 = v11;
    if (v21)
    {
      unsignedIntegerValue = [v21 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"synonyms"];
    LODWORD(v25) = unsignedIntegerValue;
    v14 = v26;
    v23 = [[CCToolKitToolAppDefinition alloc] initWithId:v16 name:v17 bundleId:v12 bundleVersion:v13 teamId:v26 device:v15 origin:v25 synonyms:v18 error:error];
    goto LABEL_12;
  }

  CCSetError();
  v23 = 0;
LABEL_13:

  return v23;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_id)
  {
    v4 = [(CCToolKitToolAppDefinition *)self id];
    [v3 setObject:v4 forKeyedSubscript:@"id"];
  }

  if (self->_name)
  {
    name = [(CCToolKitToolAppDefinition *)self name];
    [v3 setObject:name forKeyedSubscript:@"name"];
  }

  if (self->_bundleId)
  {
    bundleId = [(CCToolKitToolAppDefinition *)self bundleId];
    [v3 setObject:bundleId forKeyedSubscript:@"bundleId"];
  }

  if (self->_bundleVersion)
  {
    bundleVersion = [(CCToolKitToolAppDefinition *)self bundleVersion];
    [v3 setObject:bundleVersion forKeyedSubscript:@"bundleVersion"];
  }

  if (self->_teamId)
  {
    teamId = [(CCToolKitToolAppDefinition *)self teamId];
    [v3 setObject:teamId forKeyedSubscript:@"teamId"];
  }

  if (self->_device)
  {
    device = [(CCToolKitToolAppDefinition *)self device];
    jsonDictionary = [device jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"device"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolAppDefinition origin](self, "origin")}];
  [v3 setObject:v11 forKeyedSubscript:@"origin"];

  if (self->_synonyms)
  {
    synonyms = [(CCToolKitToolAppDefinition *)self synonyms];
    [v3 setObject:synonyms forKeyedSubscript:@"synonyms"];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v17 = blockCopy;
  if (self->_id)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_id];
    v17[2](v17, v7);
  }

  if (self->_name)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_name];
    v17[2](v17, v8);
  }

  if (self->_bundleId)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_bundleId];
    v17[2](v17, v9);
  }

  if (self->_bundleVersion)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_bundleVersion];
    v17[2](v17, v10);
  }

  if (self->_teamId)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_teamId];
    v17[2](v17, v11);
  }

  if (self->_device)
  {
    v12 = objc_alloc(MEMORY[0x1E69939F0]);
    v13 = *v6;
    v14 = [v12 initWithFieldType:v13 subMessageValue:self->_device];
    v17[2](v17, v14);
  }

  else
  {
    v13 = *v6;
  }

  v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v13 enumValue:self->_origin];
  v17[2](v17, v15);

  if (self->_synonyms)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v13 repeatedStringValue:self->_synonyms];
    v17[2](v17, v16);
  }
}

- (NSArray)synonyms
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_synonyms copyItems:1];

  return v2;
}

- (CCToolKitToolAppDefinitionDevice)device
{
  v2 = [(CCToolKitToolAppDefinitionDevice *)self->_device copy];

  return v2;
}

- (NSString)teamId
{
  v2 = [(NSString *)self->_teamId copy];

  return v2;
}

- (NSString)bundleVersion
{
  v2 = [(NSString *)self->_bundleVersion copy];

  return v2;
}

- (NSString)bundleId
{
  v2 = [(NSString *)self->_bundleId copy];

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
        goto LABEL_63;
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
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_62;
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
        goto LABEL_62;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 4)
      {
        if (v23 > 6)
        {
          if (v23 == 8)
          {
            v38 = CCPBReaderReadStringNoCopy();
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            if (v38)
            {
              [v9 addObject:v38];
            }

            goto LABEL_46;
          }

          if (v23 == 7)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            while (1)
            {
              v33 = *v6;
              v34 = *&v5[v33];
              v35 = v34 + 1;
              if (v34 == -1 || v35 > *&v5[*v7])
              {
                break;
              }

              v36 = *(*&v5[*v11] + v34);
              *&v5[v33] = v35;
              v32 |= (v36 & 0x7F) << v30;
              if ((v36 & 0x80) == 0)
              {
                goto LABEL_58;
              }

              v30 += 7;
              v20 = v31++ >= 9;
              if (v20)
              {
                LODWORD(v32) = 0;
                goto LABEL_60;
              }
            }

            *&v5[*v10] = 1;
LABEL_58:
            if (*&v5[*v10])
            {
              LODWORD(v32) = 0;
            }

LABEL_60:
            v8 = 0;
            self->_origin = v32;
LABEL_47:
            if (*&v5[*v6] < *&v5[*v7])
            {
              continue;
            }

            goto LABEL_63;
          }
        }

        else
        {
          if (v23 == 5)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v25 = 56;
            goto LABEL_45;
          }

          if (v23 == 6)
          {
            v26 = [CCToolKitToolAppDefinitionDevice alloc];
            v27 = CCPBReaderReadDataNoCopy();
            v49 = 0;
            v28 = [(CCItemMessage *)v26 initWithData:v27 error:&v49];
            v8 = v49;
            device = self->_device;
            self->_device = v28;

LABEL_56:
            goto LABEL_47;
          }
        }
      }

      else if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 40;
          goto LABEL_45;
        }

        if (v23 == 4)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 48;
          goto LABEL_45;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 24;
          goto LABEL_45;
        }

        if (v23 == 2)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 32;
LABEL_45:
          v37 = *(&self->super.super.isa + v25);
          *(&self->super.super.isa + v25) = v24;

LABEL_46:
          v8 = 0;
          goto LABEL_47;
        }
      }

      break;
    }

    if (CCPBReaderSkipValueWithTag())
    {
      goto LABEL_46;
    }

    v39 = objc_opt_class();
    v27 = NSStringFromClass(v39);
    v8 = CCSkipFieldErrorForMessage();
    goto LABEL_56;
  }

  v9 = 0;
LABEL_62:
  v8 = 0;
LABEL_63:
  v40 = [v9 copy];
  synonyms = self->_synonyms;
  self->_synonyms = v40;

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

- (CCToolKitToolAppDefinition)initWithId:(id)id name:(id)name bundleId:(id)bundleId bundleVersion:(id)version teamId:(id)teamId device:(id)device origin:(unsigned int)origin synonyms:(id)self0 error:(id *)self1
{
  v62 = *MEMORY[0x1E69E9840];
  idCopy = id;
  nameCopy = name;
  bundleIdCopy = bundleId;
  versionCopy = version;
  teamIdCopy = teamId;
  deviceCopy = device;
  synonymsCopy = synonyms;
  v22 = objc_opt_new();
  if (!idCopy)
  {
    errorCopy2 = error;
    v24 = 0;
    if (!nameCopy)
    {
      goto LABEL_4;
    }

LABEL_11:
    objc_opt_class();
    v59 = v24;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v25 = v24;

    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_20;
    }

    CCPBDataWriterWriteStringField();
    if (bundleIdCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  objc_opt_class();
  v60 = 0;
  v23 = CCValidateIsInstanceOfExpectedClass();
  v24 = 0;
  if (!v23)
  {
    goto LABEL_28;
  }

  errorCopy2 = error;
  CCPBDataWriterWriteStringField();
  if (nameCopy)
  {
    goto LABEL_11;
  }

LABEL_4:
  v25 = v24;
  if (bundleIdCopy)
  {
LABEL_5:
    objc_opt_class();
    v58 = v25;
    v26 = CCValidateIsInstanceOfExpectedClass();
    v24 = v25;

    if (!v26)
    {
      goto LABEL_28;
    }

    CCPBDataWriterWriteStringField();
    if (!versionCopy)
    {
LABEL_7:
      v25 = v24;
      if (teamIdCopy)
      {
LABEL_8:
        objc_opt_class();
        v56 = v25;
        v27 = CCValidateIsInstanceOfExpectedClass();
        v24 = v25;

        if (!v27)
        {
          goto LABEL_28;
        }

        v45 = synonymsCopy;
        CCPBDataWriterWriteStringField();
        goto LABEL_17;
      }

LABEL_16:
      v45 = synonymsCopy;
      v24 = v25;
LABEL_17:
      if (deviceCopy)
      {
        objc_opt_class();
        v55 = v24;
        v30 = CCValidateIsInstanceOfExpectedClass();
        v31 = v24;

        if (!v30)
        {
          CCSetError();
          v33 = 0;
          v24 = v31;
          selfCopy2 = self;
LABEL_43:
          synonymsCopy = v45;
          goto LABEL_30;
        }

        data = [deviceCopy data];
        CCPBDataWriterWriteDataField();
      }

      else
      {
        v31 = v24;
      }

      synonymsCopy = v45;
      if (!origin)
      {
        v24 = v31;
        if (!v45)
        {
LABEL_42:
          immutableData = [v22 immutableData];
          selfCopy2 = [(CCItemMessage *)self initWithData:immutableData error:errorCopy2];

          v33 = selfCopy2;
          goto LABEL_43;
        }

        goto LABEL_33;
      }

      v54 = v31;
      v43 = CCValidateEnumField();
      v24 = v31;

      if (v43)
      {
        CCPBDataWriterWriteUint32Field();
        if (!v45)
        {
          goto LABEL_42;
        }

LABEL_33:
        objc_opt_class();
        v53 = v24;
        v36 = CCValidateArrayValues();
        v25 = v24;

        if (v36)
        {
          v44 = v25;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v37 = v45;
          v38 = [v37 countByEnumeratingWithState:&v49 objects:v61 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v50;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v50 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                CCPBDataWriterWriteStringField();
              }

              v39 = [v37 countByEnumeratingWithState:&v49 objects:v61 count:16];
            }

            while (v39);
          }

          v24 = v44;
          goto LABEL_42;
        }

        CCSetError();
        synonymsCopy = v45;
        goto LABEL_21;
      }

LABEL_28:
      CCSetError();
      v33 = 0;
      goto LABEL_29;
    }

    goto LABEL_14;
  }

LABEL_13:
  v24 = v25;
  if (!versionCopy)
  {
    goto LABEL_7;
  }

LABEL_14:
  objc_opt_class();
  v57 = v24;
  v29 = CCValidateIsInstanceOfExpectedClass();
  v25 = v24;

  if (v29)
  {
    CCPBDataWriterWriteStringField();
    if (teamIdCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_20:
  CCSetError();
LABEL_21:
  v33 = 0;
  v24 = v25;
LABEL_29:
  selfCopy2 = self;
LABEL_30:

  return v33;
}

@end