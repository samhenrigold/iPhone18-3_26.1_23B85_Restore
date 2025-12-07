@interface BMProactiveHarvestingNamedHandle
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingNamedHandle)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingNamedHandle)initWithName:(id)name handle:(id)handle contactIdentifier:(id)identifier handleType:(id)type;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingNamedHandle

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(BMProactiveHarvestingNamedHandle *)self name];
    name2 = [v5 name];
    v8 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(BMProactiveHarvestingNamedHandle *)self name];
      name4 = [v5 name];
      v11 = [name3 isEqual:name4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    handle = [(BMProactiveHarvestingNamedHandle *)self handle];
    handle2 = [v5 handle];
    v15 = handle2;
    if (handle == handle2)
    {
    }

    else
    {
      handle3 = [(BMProactiveHarvestingNamedHandle *)self handle];
      handle4 = [v5 handle];
      v18 = [handle3 isEqual:handle4];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    contactIdentifier = [(BMProactiveHarvestingNamedHandle *)self contactIdentifier];
    contactIdentifier2 = [v5 contactIdentifier];
    v21 = contactIdentifier2;
    if (contactIdentifier == contactIdentifier2)
    {
    }

    else
    {
      contactIdentifier3 = [(BMProactiveHarvestingNamedHandle *)self contactIdentifier];
      contactIdentifier4 = [v5 contactIdentifier];
      v24 = [contactIdentifier3 isEqual:contactIdentifier4];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    handleType = [(BMProactiveHarvestingNamedHandle *)self handleType];
    handleType2 = [v5 handleType];
    if (handleType == handleType2)
    {
      v12 = 1;
    }

    else
    {
      handleType3 = [(BMProactiveHarvestingNamedHandle *)self handleType];
      handleType4 = [v5 handleType];
      v12 = [handleType3 isEqual:handleType4];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v14[4] = *MEMORY[0x1E69E9840];
  name = [(BMProactiveHarvestingNamedHandle *)self name];
  handle = [(BMProactiveHarvestingNamedHandle *)self handle];
  contactIdentifier = [(BMProactiveHarvestingNamedHandle *)self contactIdentifier];
  handleType = [(BMProactiveHarvestingNamedHandle *)self handleType];
  v13[0] = @"name";
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"handle";
  null2 = handle;
  if (!handle)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"contactIdentifier";
  null3 = contactIdentifier;
  if (!contactIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v13[3] = @"handleType";
  null4 = handleType;
  if (!handleType)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (handleType)
  {
    if (contactIdentifier)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (contactIdentifier)
    {
LABEL_11:
      if (handle)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (name)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!handle)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (name)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:

  return v11;
}

- (BMProactiveHarvestingNamedHandle)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v39[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"handle"];
    v31 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_16;
        }

        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"handle"];
        v37 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v15 = 0;
        *error = [v20 initWithDomain:v21 code:2 userInfo:v10];
        error = 0;
        goto LABEL_15;
      }

      v30 = v9;
    }

    else
    {
      v30 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"contactIdentifier"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v15 = 0;
          error = v30;
          goto LABEL_15;
        }

        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v23 = *MEMORY[0x1E698F240];
        v34 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contactIdentifier"];
        v35 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v24 = [v22 initWithDomain:v23 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        error = v30;
        *errorCopy = v24;
        goto LABEL_14;
      }

      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"handleType"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v29 = objc_alloc(MEMORY[0x1E696ABC0]);
          v27 = *MEMORY[0x1E698F240];
          v32 = *MEMORY[0x1E696A578];
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"handleType"];
          v33 = v25;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          *error = [v29 initWithDomain:v27 code:2 userInfo:v26];
        }

        v14 = 0;
        v15 = 0;
        error = v30;
        goto LABEL_14;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    error = v30;
    v15 = [(BMProactiveHarvestingNamedHandle *)selfCopy initWithName:v8 handle:v30 contactIdentifier:v12 handleType:v14];
    selfCopy = v15;
LABEL_14:

    self = selfCopy;
LABEL_15:

    v7 = v31;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v15 = 0;
    goto LABEL_17;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E698F240];
  v38 = *MEMORY[0x1E696A578];
  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
  v39[0] = v19;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v8 = 0;
  v15 = 0;
  *error = [v17 initWithDomain:v18 code:2 userInfo:v9];
  error = v19;
LABEL_16:

LABEL_17:
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingNamedHandle *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_handle)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_contactIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_handleType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMProactiveHarvestingNamedHandle;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v24 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = (v14 >> 3) - 1;
      if (v15 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6E99D70[v15];
        v17 = PBReaderReadString();
        v18 = *v16;
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_23:
    v21 = 0;
  }

  else
  {
LABEL_24:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = [(BMProactiveHarvestingNamedHandle *)self name];
  handle = [(BMProactiveHarvestingNamedHandle *)self handle];
  contactIdentifier = [(BMProactiveHarvestingNamedHandle *)self contactIdentifier];
  handleType = [(BMProactiveHarvestingNamedHandle *)self handleType];
  v8 = [v3 initWithFormat:@"BMProactiveHarvestingNamedHandle with name: %@, handle: %@, contactIdentifier: %@, handleType: %@", name, handle, contactIdentifier, handleType];

  return v8;
}

- (BMProactiveHarvestingNamedHandle)initWithName:(id)name handle:(id)handle contactIdentifier:(id)identifier handleType:(id)type
{
  nameCopy = name;
  handleCopy = handle;
  identifierCopy = identifier;
  typeCopy = type;
  v17.receiver = self;
  v17.super_class = BMProactiveHarvestingNamedHandle;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_name, name);
    objc_storeStrong(&v15->_handle, handle);
    objc_storeStrong(&v15->_contactIdentifier, identifier);
    objc_storeStrong(&v15->_handleType, type);
  }

  return v15;
}

+ (id)protoFields
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:1 type:13 subMessageClass:0];
  v8[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"handle" number:2 type:13 subMessageClass:0];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactIdentifier" number:3 type:13 subMessageClass:0];
  v8[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"handleType" number:4 type:13 subMessageClass:0];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

+ (id)columns
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"handle" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contactIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"handleType" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[4] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end