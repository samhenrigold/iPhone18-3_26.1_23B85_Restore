@interface DMCModelPayloadBase
+ (id)load:(id)load serializationType:(signed __int16)type error:(id *)error;
+ (id)loadData:(id)data serializationType:(signed __int16)type error:(id *)error;
- (BOOL)_loadObjectOfClass:(Class)class fromDictionary:(id)dictionary usingKey:(id)key isRequired:(BOOL)required defaultValue:(id)value payloadValue:(id *)payloadValue error:(id *)error;
- (BOOL)getModelObjectFromDictionary:(id)dictionary usingKey:(id)key classType:(Class)type isRequired:(BOOL)required defaultValue:(id)value serializationType:(signed __int16)serializationType payloadValue:(id *)payloadValue error:(id *)self0;
- (BOOL)loadArrayFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path classType:(Class)type nested:(BOOL)nested isRequired:(BOOL)required defaultValue:(id)value serializationType:(signed __int16)self0 error:(id *)self1;
- (BOOL)loadArrayFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path validator:(id)validator isRequired:(BOOL)required defaultValue:(id)value error:(id *)error;
- (BOOL)loadBooleanFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path isRequired:(BOOL)required defaultValue:(id)value error:(id *)error;
- (BOOL)loadDataFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path isRequired:(BOOL)required defaultValue:(id)value serializationType:(signed __int16)type error:(id *)error;
- (BOOL)loadDateFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path isRequired:(BOOL)required defaultValue:(id)value serializationType:(signed __int16)type error:(id *)error;
- (BOOL)loadDictionaryFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path classType:(Class)type isRequired:(BOOL)required defaultValue:(id)value serializationType:(signed __int16)serializationType error:(id *)self0;
- (BOOL)loadFloatFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path isRequired:(BOOL)required defaultValue:(id)value error:(id *)error;
- (BOOL)loadIntegerFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path isRequired:(BOOL)required defaultValue:(id)value error:(id *)error;
- (BOOL)loadStringFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path isRequired:(BOOL)required defaultValue:(id)value error:(id *)error;
- (DMCModelPayloadBase)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createNestedObjectWithClass:(Class)class serializationType:(signed __int16)type parentKey:(id)key payload:(id)payload error:(id *)error;
- (id)serializeAsDataWithType:(signed __int16)type error:(id *)error;
- (void)_serializeItemIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required isDefaultValue:(BOOL)defaultValue;
- (void)encodeWithCoder:(id)coder;
- (void)mergeUnknownKeysFrom:(id)from parentKey:(id)key;
- (void)serializeArrayIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value itemSerializer:(id)serializer isRequired:(BOOL)required defaultValue:(id)defaultValue;
- (void)serializeBooleanIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required defaultValue:(id)defaultValue;
- (void)serializeDataIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required defaultValue:(id)defaultValue serializationType:(signed __int16)type;
- (void)serializeDateIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required defaultValue:(id)defaultValue serializationType:(signed __int16)type;
- (void)serializeDictionaryIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value dictSerializer:(id)serializer isRequired:(BOOL)required defaultValue:(id)defaultValue;
- (void)serializeFloatIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required defaultValue:(id)defaultValue;
- (void)serializeIntegerIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required defaultValue:(id)defaultValue;
- (void)serializeStringIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required defaultValue:(id)defaultValue;
@end

@implementation DMCModelPayloadBase

- (void)mergeUnknownKeysFrom:(id)from parentKey:(id)key
{
  v27 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  keyCopy = key;
  unknownPayloadKeys = [fromCopy unknownPayloadKeys];
  v9 = [unknownPayloadKeys count];

  if (v9)
  {
    selfCopy = self;
    v10 = MEMORY[0x1E695DFA8];
    unknownPayloadKeys2 = [fromCopy unknownPayloadKeys];
    v12 = [v10 setWithCapacity:{objc_msgSend(unknownPayloadKeys2, "count")}];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    unknownPayloadKeys3 = [fromCopy unknownPayloadKeys];
    v14 = [unknownPayloadKeys3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(unknownPayloadKeys3);
          }

          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", keyCopy, *(*(&v22 + 1) + 8 * v17)];
          [v12 addObject:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [unknownPayloadKeys3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    unknownPayloadKeys4 = [(DMCModelPayloadBase *)selfCopy unknownPayloadKeys];
    v20 = [unknownPayloadKeys4 setByAddingObjectsFromSet:v12];
    [(DMCModelPayloadBase *)selfCopy setUnknownPayloadKeys:v20];
  }
}

- (id)createNestedObjectWithClass:(Class)class serializationType:(signed __int16)type parentKey:(id)key payload:(id)payload error:(id *)error
{
  typeCopy = type;
  v20[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v13 = [(objc_class *)class load:payload serializationType:typeCopy error:error];
  if (v13)
  {
    [(DMCModelPayloadBase *)self mergeUnknownKeysFrom:v13 parentKey:keyCopy];
    v14 = v13;
  }

  else if (error)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wrong nested item, key: %@", keyCopy, *MEMORY[0x1E696A578]];
    v20[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = [v15 errorWithDomain:@"error" code:1 userInfo:v17];
  }

  return v13;
}

+ (id)load:(id)load serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  loadCopy = load;
  v8 = objc_opt_new();
  LODWORD(error) = [v8 loadFromDictionary:loadCopy serializationType:typeCopy error:error];

  if (error)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)loadData:(id)data serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  v20[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (typeCopy == 1)
  {
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:error];
    goto LABEL_5;
  }

  if (!typeCopy)
  {
    v9 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:error];
LABEL_5:
    v10 = v9;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      error = [self load:v10 serializationType:typeCopy error:error];
    }

    else if (error)
    {
      if (!*error)
      {
        v11 = MEMORY[0x1E696ABC0];
        v17 = *MEMORY[0x1E696A578];
        v18 = @"Root item is not a dictionary object";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        *error = [v11 errorWithDomain:@"error" code:1 userInfo:v12];
      }

      error = 0;
    }

    goto LABEL_15;
  }

  if (error)
  {
    v13 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    typeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported serialization type: %d", typeCopy];
    v20[0] = typeCopy;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = [v13 errorWithDomain:@"error" code:1 userInfo:v15];

    error = 0;
  }

  v10 = 0;
LABEL_15:

  return error;
}

- (id)serializeAsDataWithType:(signed __int16)type error:(id *)error
{
  errorCopy = error;
  v14[1] = *MEMORY[0x1E69E9840];
  if (type == 1)
  {
    v8 = MEMORY[0x1E696ACB0];
    v6 = [(DMCModelPayloadBase *)self serializeWithType:?];
    v7 = [v8 dataWithJSONObject:v6 options:1 error:errorCopy];
    goto LABEL_5;
  }

  if (!type)
  {
    v5 = MEMORY[0x1E696AE40];
    v6 = [(DMCModelPayloadBase *)self serializeWithType:?];
    v7 = [v5 dataWithPropertyList:v6 format:200 options:0 error:errorCopy];
LABEL_5:
    errorCopy = v7;

    goto LABEL_8;
  }

  if (error)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported serialization type: %d", type, *MEMORY[0x1E696A578]];
    v14[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *errorCopy = [v9 errorWithDomain:@"error" code:1 userInfo:v11];

    errorCopy = 0;
  }

LABEL_8:

  return errorCopy;
}

- (BOOL)_loadObjectOfClass:(Class)class fromDictionary:(id)dictionary usingKey:(id)key isRequired:(BOOL)required defaultValue:(id)value payloadValue:(id *)payloadValue error:(id *)error
{
  requiredCopy = required;
  v29[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  v15 = [dictionary objectForKey:keyCopy];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    if (requiredCopy)
    {
      if (error)
      {
        v19 = MEMORY[0x1E696ABC0];
        v28 = *MEMORY[0x1E696A578];
        keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required key: %@", keyCopy];
        v29[0] = keyCopy;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        *error = [v19 errorWithDomain:@"error" code:1 userInfo:v21];
      }

      v18 = 0;
      *payloadValue = 0;
      goto LABEL_12;
    }

    v16 = valueCopy;
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  if (objc_opt_isKindOfClass())
  {
LABEL_4:
    v17 = v16;
    *payloadValue = v16;

    v18 = 1;
    goto LABEL_12;
  }

  if (error)
  {
    v22 = MEMORY[0x1E696ABC0];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wrong type, key: %@", keyCopy, *MEMORY[0x1E696A578]];
    v27 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *error = [v22 errorWithDomain:@"error" code:1 userInfo:v24];
  }

  *payloadValue = 0;

  v18 = 0;
LABEL_12:

  return v18;
}

- (BOOL)loadStringFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path isRequired:(BOOL)required defaultValue:(id)value error:(id *)error
{
  requiredCopy = required;
  pathCopy = path;
  valueCopy = value;
  keyCopy = key;
  dictionaryCopy = dictionary;
  v23 = 0;
  v18 = [(DMCModelPayloadBase *)self _loadObjectOfClass:objc_opt_class() fromDictionary:dictionaryCopy usingKey:keyCopy isRequired:requiredCopy defaultValue:valueCopy payloadValue:&v23 error:error];

  v19 = v23;
  v20 = v19;
  if (v18 && v19 != 0)
  {
    [(DMCModelPayloadBase *)self setValue:v19 forKey:pathCopy];
  }

  return v18;
}

- (BOOL)loadIntegerFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path isRequired:(BOOL)required defaultValue:(id)value error:(id *)error
{
  requiredCopy = required;
  pathCopy = path;
  valueCopy = value;
  keyCopy = key;
  dictionaryCopy = dictionary;
  v24 = 0;
  v18 = [(DMCModelPayloadBase *)self _loadObjectOfClass:objc_opt_class() fromDictionary:dictionaryCopy usingKey:keyCopy isRequired:requiredCopy defaultValue:valueCopy payloadValue:&v24 error:error];

  v19 = v24;
  v20 = v19;
  if (v18 && v19 != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v19, "integerValue")}];
    [(DMCModelPayloadBase *)self setValue:v22 forKey:pathCopy];
  }

  return v18;
}

- (BOOL)loadFloatFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path isRequired:(BOOL)required defaultValue:(id)value error:(id *)error
{
  requiredCopy = required;
  pathCopy = path;
  valueCopy = value;
  keyCopy = key;
  dictionaryCopy = dictionary;
  v25 = 0;
  v18 = [(DMCModelPayloadBase *)self _loadObjectOfClass:objc_opt_class() fromDictionary:dictionaryCopy usingKey:keyCopy isRequired:requiredCopy defaultValue:valueCopy payloadValue:&v25 error:error];

  v19 = v25;
  v20 = v19;
  if (v18 && v19 != 0)
  {
    v22 = MEMORY[0x1E696AD98];
    [v19 floatValue];
    v23 = [v22 numberWithFloat:?];
    [(DMCModelPayloadBase *)self setValue:v23 forKey:pathCopy];
  }

  return v18;
}

- (BOOL)loadBooleanFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path isRequired:(BOOL)required defaultValue:(id)value error:(id *)error
{
  requiredCopy = required;
  pathCopy = path;
  valueCopy = value;
  keyCopy = key;
  dictionaryCopy = dictionary;
  v24 = 0;
  v18 = [(DMCModelPayloadBase *)self _loadObjectOfClass:objc_opt_class() fromDictionary:dictionaryCopy usingKey:keyCopy isRequired:requiredCopy defaultValue:valueCopy payloadValue:&v24 error:error];

  v19 = v24;
  v20 = v19;
  if (v18 && v19 != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v19, "BOOLValue")}];
    [(DMCModelPayloadBase *)self setValue:v22 forKey:pathCopy];
  }

  return v18;
}

- (BOOL)loadDateFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path isRequired:(BOOL)required defaultValue:(id)value serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  requiredCopy = required;
  v41[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  keyCopy = key;
  pathCopy = path;
  valueCopy = value;
  v19 = dictionaryCopy;
  v20 = v19;
  v21 = v19;
  if (typeCopy == 1)
  {
    v22 = [v19 objectForKeyedSubscript:keyCopy];
    v21 = v20;
    if (!v22)
    {
LABEL_6:

      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rmmodel_sharedRFC3339DateFormatter = [MEMORY[0x1E696AB78] rmmodel_sharedRFC3339DateFormatter];
      v24 = [rmmodel_sharedRFC3339DateFormatter dateFromString:v22];

      if (v24)
      {
        v36 = keyCopy;
        v37 = v24;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

        goto LABEL_6;
      }

      if (error)
      {
        v28 = MEMORY[0x1E696ABC0];
        v38 = *MEMORY[0x1E696A578];
        keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot decode date, key: %@", keyCopy];
        v39 = keyCopy;
        v30 = MEMORY[0x1E695DF20];
        v31 = &v39;
        v32 = &v38;
        goto LABEL_16;
      }
    }

    else if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v40 = *MEMORY[0x1E696A578];
      keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wrong type, key: %@", keyCopy];
      v41[0] = keyCopy;
      v30 = MEMORY[0x1E695DF20];
      v31 = v41;
      v32 = &v40;
LABEL_16:
      v33 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:1];
      *error = [v28 errorWithDomain:@"error" code:1 userInfo:v33];
    }

    LOBYTE(v25) = 0;
    v21 = v20;
    goto LABEL_18;
  }

LABEL_7:
  v35 = 0;
  v25 = [(DMCModelPayloadBase *)self _loadObjectOfClass:objc_opt_class() fromDictionary:v21 usingKey:keyCopy isRequired:requiredCopy defaultValue:valueCopy payloadValue:&v35 error:error];
  v26 = v35;
  v22 = v26;
  if (v25 && v26 != 0)
  {
    [(DMCModelPayloadBase *)self setValue:v26 forKey:pathCopy];
  }

LABEL_18:

  return v25;
}

- (BOOL)loadDataFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path isRequired:(BOOL)required defaultValue:(id)value serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  requiredCopy = required;
  v41[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  keyCopy = key;
  pathCopy = path;
  valueCopy = value;
  v19 = dictionaryCopy;
  v20 = v19;
  v21 = v19;
  if (typeCopy == 1)
  {
    v22 = [v19 objectForKeyedSubscript:keyCopy];
    v21 = v20;
    if (!v22)
    {
LABEL_6:

      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v22 options:0];
      if (v23)
      {
        v24 = v23;
        v36 = keyCopy;
        v37 = v23;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

        goto LABEL_6;
      }

      if (error)
      {
        v28 = MEMORY[0x1E696ABC0];
        v38 = *MEMORY[0x1E696A578];
        keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot decode base64, key: %@", keyCopy];
        v39 = keyCopy;
        v30 = MEMORY[0x1E695DF20];
        v31 = &v39;
        v32 = &v38;
        goto LABEL_16;
      }
    }

    else if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v40 = *MEMORY[0x1E696A578];
      keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wrong type, key: %@", keyCopy];
      v41[0] = keyCopy;
      v30 = MEMORY[0x1E695DF20];
      v31 = v41;
      v32 = &v40;
LABEL_16:
      v33 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:1];
      *error = [v28 errorWithDomain:@"error" code:1 userInfo:v33];
    }

    LOBYTE(v25) = 0;
    v21 = v20;
    goto LABEL_18;
  }

LABEL_7:
  v35 = 0;
  v25 = [(DMCModelPayloadBase *)self _loadObjectOfClass:objc_opt_class() fromDictionary:v21 usingKey:keyCopy isRequired:requiredCopy defaultValue:valueCopy payloadValue:&v35 error:error];
  v26 = v35;
  v22 = v26;
  if (v25 && v26 != 0)
  {
    [(DMCModelPayloadBase *)self setValue:v26 forKey:pathCopy];
  }

LABEL_18:

  return v25;
}

- (BOOL)loadArrayFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path validator:(id)validator isRequired:(BOOL)required defaultValue:(id)value error:(id *)error
{
  requiredCopy = required;
  v52 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  keyCopy = key;
  pathCopy = path;
  validatorCopy = validator;
  valueCopy = value;
  v48 = 0;
  v20 = [(DMCModelPayloadBase *)self _loadObjectOfClass:objc_opt_class() fromDictionary:dictionaryCopy usingKey:keyCopy isRequired:requiredCopy defaultValue:valueCopy payloadValue:&v48 error:error];
  v21 = v48;
  v22 = v21;
  if (v20)
  {
    selfCopy = self;
    v39 = v21;
    v41 = dictionaryCopy;
    v42 = pathCopy;
    v40 = keyCopy;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = *v45;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(v23);
          }

          if (validatorCopy)
          {
            v29 = *(*(&v44 + 1) + 8 * i);
            v43 = v26;
            v30 = validatorCopy[2](validatorCopy, v29, &v43);
            v31 = v43;

            if ((v30 & 1) == 0)
            {
              keyCopy = v40;
              dictionaryCopy = v41;
              pathCopy = v42;
              v22 = v39;
              if (error)
              {
                if (v31)
                {
                  v33 = v31;
                  *error = v31;
                }

                else
                {
                  v38 = MEMORY[0x1E696ABC0];
                  v49 = *MEMORY[0x1E696A578];
                  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wrong array item type, key: %@", v40];
                  v50 = v34;
                  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
                  *error = [v38 errorWithDomain:@"error" code:1 userInfo:v35];

                  pathCopy = v42;
                }
              }

              v32 = 0;
              goto LABEL_24;
            }

            v26 = v31;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v44 objects:v51 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v26 = 0;
    }

    if (v23)
    {
      pathCopy = v42;
      [(DMCModelPayloadBase *)selfCopy setValue:v23 forKey:v42];
      v32 = 1;
      v31 = v26;
      keyCopy = v40;
      dictionaryCopy = v41;
    }

    else
    {
      v32 = 1;
      v31 = v26;
      keyCopy = v40;
      dictionaryCopy = v41;
      pathCopy = v42;
    }

    v22 = v39;
LABEL_24:
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (BOOL)loadArrayFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path classType:(Class)type nested:(BOOL)nested isRequired:(BOOL)required defaultValue:(id)value serializationType:(signed __int16)self0 error:(id *)self1
{
  requiredCopy = required;
  nestedCopy = nested;
  v60 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  keyCopy = key;
  pathCopy = path;
  valueCopy = value;
  v55 = 0;
  v46 = keyCopy;
  LODWORD(requiredCopy) = [(DMCModelPayloadBase *)self _loadObjectOfClass:objc_opt_class() fromDictionary:dictionaryCopy usingKey:keyCopy isRequired:requiredCopy defaultValue:valueCopy payloadValue:&v55 error:error];
  v20 = v55;
  v21 = v20;
  if (requiredCopy)
  {
    v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v20, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v21;
    v39 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v39)
    {
      serializationTypeCopy = serializationType;
      v40 = *v52;
      v37 = pathCopy;
      v38 = dictionaryCopy;
      v35 = v21;
      v36 = valueCopy;
      while (2)
      {
        v23 = 0;
        do
        {
          if (*v52 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v51 + 1) + 8 * v23);
          v41 = v23;
          if (nestedCopy)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (error)
              {
                v34 = MEMORY[0x1E696ABC0];
                v57 = *MEMORY[0x1E696A578];
                requiredCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wrong array item type, key: %@", v46];
                v58 = requiredCopy;
                v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
                *error = [v34 errorWithDomain:@"error" code:1 userInfo:v25];
LABEL_25:
              }

              LOBYTE(requiredCopy) = 0;
LABEL_27:

              goto LABEL_28;
            }

            requiredCopy = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v24, "count")}];
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v25 = v24;
            v26 = [v25 countByEnumeratingWithState:&v47 objects:v56 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v48;
              while (2)
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v48 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = [(DMCModelPayloadBase *)self createNestedObjectWithClass:type serializationType:serializationTypeCopy parentKey:v46 payload:*(*(&v47 + 1) + 8 * i) error:error];
                  if (!v30)
                  {
                    pathCopy = v37;
                    dictionaryCopy = v38;
                    v21 = v35;
                    valueCopy = v36;
                    goto LABEL_25;
                  }

                  v31 = v30;
                  [requiredCopy addObject:v30];
                }

                v27 = [v25 countByEnumeratingWithState:&v47 objects:v56 count:16];
                if (v27)
                {
                  continue;
                }

                break;
              }
            }

            v32 = [requiredCopy copy];
            [v44 addObject:v32];

            pathCopy = v37;
            dictionaryCopy = v38;
            v21 = v35;
            valueCopy = v36;
          }

          else
          {
            requiredCopy = [(DMCModelPayloadBase *)self createNestedObjectWithClass:type serializationType:serializationTypeCopy parentKey:v46 payload:v24 error:error];
            if (!requiredCopy)
            {
              goto LABEL_27;
            }

            [v44 addObject:requiredCopy];
          }

          v23 = v41 + 1;
        }

        while (v41 + 1 != v39);
        v39 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

    if (obj)
    {
      obja = [v44 copy];
      [DMCModelPayloadBase setValue:"setValue:forKey:" forKey:?];
      LOBYTE(requiredCopy) = 1;
    }

    else
    {
      LOBYTE(requiredCopy) = 1;
    }

LABEL_28:
  }

  return requiredCopy;
}

- (BOOL)loadDictionaryFromDictionary:(id)dictionary usingKey:(id)key forKeyPath:(id)path classType:(Class)type isRequired:(BOOL)required defaultValue:(id)value serializationType:(signed __int16)serializationType error:(id *)self0
{
  requiredCopy = required;
  pathCopy = path;
  v22 = 0;
  v17 = [(DMCModelPayloadBase *)self getModelObjectFromDictionary:dictionary usingKey:key classType:type isRequired:requiredCopy defaultValue:value serializationType:serializationType payloadValue:&v22 error:error];
  v18 = v22;
  v19 = v18;
  if (v17 && v18 != 0)
  {
    [(DMCModelPayloadBase *)self setValue:v18 forKey:pathCopy];
  }

  return v17;
}

- (BOOL)getModelObjectFromDictionary:(id)dictionary usingKey:(id)key classType:(Class)type isRequired:(BOOL)required defaultValue:(id)value serializationType:(signed __int16)serializationType payloadValue:(id *)payloadValue error:(id *)self0
{
  serializationTypeCopy = serializationType;
  requiredCopy = required;
  keyCopy = key;
  valueCopy = value;
  dictionaryCopy = dictionary;
  v25 = 0;
  v19 = [(DMCModelPayloadBase *)self _loadObjectOfClass:objc_opt_class() fromDictionary:dictionaryCopy usingKey:keyCopy isRequired:requiredCopy defaultValue:valueCopy payloadValue:&v25 error:error];

  v20 = v25;
  v21 = v20;
  if (v19)
  {
    if (v20)
    {
      v22 = [(DMCModelPayloadBase *)self createNestedObjectWithClass:type serializationType:serializationTypeCopy parentKey:keyCopy payload:v20 error:error];
      v23 = v22 != 0;
      if (v22)
      {
        v22 = v22;
      }

      *payloadValue = v22;
    }

    else
    {
      *payloadValue = 0;
      v23 = !requiredCopy;
    }
  }

  else
  {
    v23 = 0;
    *payloadValue = 0;
  }

  return v23;
}

- (void)_serializeItemIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required isDefaultValue:(BOOL)defaultValue
{
  v7 = !defaultValue;
  if (!value)
  {
    v7 = 0;
  }

  if (v7 || required)
  {
    [dictionary setObject:value forKeyedSubscript:key];
  }
}

- (void)serializeStringIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required defaultValue:(id)defaultValue
{
  requiredCopy = required;
  valueCopy = value;
  keyCopy = key;
  dictionaryCopy = dictionary;
  -[DMCModelPayloadBase _serializeItemIntoDictionary:usingKey:value:isRequired:isDefaultValue:](self, "_serializeItemIntoDictionary:usingKey:value:isRequired:isDefaultValue:", dictionaryCopy, keyCopy, valueCopy, requiredCopy, [valueCopy isEqual:defaultValue]);
}

- (void)serializeIntegerIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required defaultValue:(id)defaultValue
{
  requiredCopy = required;
  dictionaryCopy = dictionary;
  keyCopy = key;
  valueCopy = value;
  defaultValueCopy = defaultValue;
  if (valueCopy)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(valueCopy, "integerValue")}];
  }

  else
  {
    v15 = 0;
  }

  -[DMCModelPayloadBase _serializeItemIntoDictionary:usingKey:value:isRequired:isDefaultValue:](self, "_serializeItemIntoDictionary:usingKey:value:isRequired:isDefaultValue:", dictionaryCopy, keyCopy, v15, requiredCopy, [valueCopy isEqual:defaultValueCopy]);
}

- (void)serializeFloatIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required defaultValue:(id)defaultValue
{
  requiredCopy = required;
  dictionaryCopy = dictionary;
  keyCopy = key;
  valueCopy = value;
  defaultValueCopy = defaultValue;
  if (valueCopy)
  {
    v15 = MEMORY[0x1E696AD98];
    [valueCopy floatValue];
    v16 = [v15 numberWithFloat:?];
  }

  else
  {
    v16 = 0;
  }

  -[DMCModelPayloadBase _serializeItemIntoDictionary:usingKey:value:isRequired:isDefaultValue:](self, "_serializeItemIntoDictionary:usingKey:value:isRequired:isDefaultValue:", dictionaryCopy, keyCopy, v16, requiredCopy, [valueCopy isEqual:defaultValueCopy]);
}

- (void)serializeBooleanIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required defaultValue:(id)defaultValue
{
  requiredCopy = required;
  dictionaryCopy = dictionary;
  keyCopy = key;
  valueCopy = value;
  defaultValueCopy = defaultValue;
  if (valueCopy)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(valueCopy, "BOOLValue")}];
  }

  else
  {
    v15 = 0;
  }

  -[DMCModelPayloadBase _serializeItemIntoDictionary:usingKey:value:isRequired:isDefaultValue:](self, "_serializeItemIntoDictionary:usingKey:value:isRequired:isDefaultValue:", dictionaryCopy, keyCopy, v15, requiredCopy, [valueCopy isEqual:defaultValueCopy]);
}

- (void)serializeDateIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required defaultValue:(id)defaultValue serializationType:(signed __int16)type
{
  typeCopy = type;
  requiredCopy = required;
  dictionaryCopy = dictionary;
  keyCopy = key;
  valueCopy = value;
  defaultValueCopy = defaultValue;
  v17 = valueCopy;
  v18 = v17;
  v19 = v17;
  if (v17)
  {
    v19 = v17;
    if (typeCopy == 1)
    {
      rmmodel_sharedRFC3339DateFormatter = [MEMORY[0x1E696AB78] rmmodel_sharedRFC3339DateFormatter];
      v19 = [rmmodel_sharedRFC3339DateFormatter stringFromDate:v18];
    }
  }

  -[DMCModelPayloadBase _serializeItemIntoDictionary:usingKey:value:isRequired:isDefaultValue:](self, "_serializeItemIntoDictionary:usingKey:value:isRequired:isDefaultValue:", dictionaryCopy, keyCopy, v19, requiredCopy, [v18 isEqual:defaultValueCopy]);
}

- (void)serializeDataIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value isRequired:(BOOL)required defaultValue:(id)defaultValue serializationType:(signed __int16)type
{
  typeCopy = type;
  requiredCopy = required;
  dictionaryCopy = dictionary;
  keyCopy = key;
  valueCopy = value;
  defaultValueCopy = defaultValue;
  v17 = valueCopy;
  v18 = v17;
  v19 = v17;
  if (v17)
  {
    v19 = v17;
    if (typeCopy == 1)
    {
      v19 = [v17 base64EncodedStringWithOptions:0];
    }
  }

  -[DMCModelPayloadBase _serializeItemIntoDictionary:usingKey:value:isRequired:isDefaultValue:](self, "_serializeItemIntoDictionary:usingKey:value:isRequired:isDefaultValue:", dictionaryCopy, keyCopy, v19, requiredCopy, [v18 isEqual:defaultValueCopy]);
}

- (void)serializeArrayIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value itemSerializer:(id)serializer isRequired:(BOOL)required defaultValue:(id)defaultValue
{
  v35 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  keyCopy = key;
  valueCopy = value;
  serializerCopy = serializer;
  defaultValueCopy = defaultValue;
  v18 = defaultValueCopy;
  if (valueCopy)
  {
    v27 = defaultValueCopy;
    requiredCopy = required;
    v29 = dictionaryCopy;
    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(valueCopy, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = valueCopy;
    v21 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        v24 = 0;
        do
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = serializerCopy[2](serializerCopy, *(*(&v30 + 1) + 8 * v24));
          [v19 addObject:v25];

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v22);
    }

    dictionaryCopy = v29;
    v18 = v27;
    if (requiredCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    if (required)
    {
LABEL_13:
      v26 = [v19 copy];
      [dictionaryCopy setObject:v26 forKeyedSubscript:keyCopy];

      goto LABEL_14;
    }
  }

  if (v19)
  {
    goto LABEL_13;
  }

LABEL_14:
}

- (void)serializeDictionaryIntoDictionary:(id)dictionary usingKey:(id)key value:(id)value dictSerializer:(id)serializer isRequired:(BOOL)required defaultValue:(id)defaultValue
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  valueCopy = value;
  serializerCopy = serializer;
  defaultValueCopy = defaultValue;
  if (valueCopy)
  {
    v17 = serializerCopy[2](serializerCopy, valueCopy);
    if (required)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (!v17)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = 0;
  if (!required)
  {
    goto LABEL_5;
  }

LABEL_6:
  [dictionaryCopy setObject:v17 forKeyedSubscript:keyCopy];
LABEL_7:
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DMCModelPayloadBase *)self serializeWithType:0];
  [coderCopy encodeObject:v5 forKey:@"payload"];
}

- (DMCModelPayloadBase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = DMCModelPayloadBase;
  v5 = [(DMCModelPayloadBase *)&v22 init];
  if (!v5 || (v20 = MEMORY[0x1E695DFD8], v19 = objc_opt_class(), v18 = objc_opt_class(), v6 = objc_opt_class(), v7 = objc_opt_class(), v8 = objc_opt_class(), v9 = objc_opt_class(), v10 = objc_opt_class(), v11 = objc_opt_class(), v12 = objc_opt_class(), v13 = objc_opt_class(), [v20 setWithObjects:{v19, v18, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(coderCopy, "decodeObjectOfClasses:forKey:", v14, @"payload"), v15 = objc_claimAutoreleasedReturnValue(), v21 = 0, LODWORD(v13) = -[DMCModelPayloadBase loadFromDictionary:serializationType:error:](v5, "loadFromDictionary:serializationType:error:", v15, 0, &v21), v15, v14, v16 = 0, v13))
  {
    v16 = v5;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();

  return objc_opt_new();
}

@end