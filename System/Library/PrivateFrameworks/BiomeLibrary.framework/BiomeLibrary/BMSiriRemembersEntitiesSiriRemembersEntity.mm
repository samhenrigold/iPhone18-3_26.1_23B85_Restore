@interface BMSiriRemembersEntitiesSiriRemembersEntity
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriRemembersEntitiesSiriRemembersEntity)initWithIdentifier:(id)identifier type:(id)type fields:(id)fields fieldsTokens:(id)tokens entityHashInfo:(id)info;
- (BMSiriRemembersEntitiesSiriRemembersEntity)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriRemembersEntitiesSiriRemembersEntity

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    type = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self type];
    type2 = [v5 type];
    v15 = type2;
    if (type == type2)
    {
    }

    else
    {
      type3 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self type];
      type4 = [v5 type];
      v18 = [type3 isEqual:type4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    fields = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fields];
    fields2 = [v5 fields];
    v21 = fields2;
    if (fields == fields2)
    {
    }

    else
    {
      fields3 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fields];
      fields4 = [v5 fields];
      v24 = [fields3 isEqual:fields4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    fieldsTokens = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fieldsTokens];
    fieldsTokens2 = [v5 fieldsTokens];
    v27 = fieldsTokens2;
    if (fieldsTokens == fieldsTokens2)
    {
    }

    else
    {
      fieldsTokens3 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fieldsTokens];
      fieldsTokens4 = [v5 fieldsTokens];
      v30 = [fieldsTokens3 isEqual:fieldsTokens4];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    entityHashInfo = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self entityHashInfo];
    entityHashInfo2 = [v5 entityHashInfo];
    if (entityHashInfo == entityHashInfo2)
    {
      v12 = 1;
    }

    else
    {
      entityHashInfo3 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self entityHashInfo];
      entityHashInfo4 = [v5 entityHashInfo];
      v12 = [entityHashInfo3 isEqual:entityHashInfo4];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  identifier = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self identifier];
  type = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self type];
  fields = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fields];
  fieldsTokens = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fieldsTokens];
  entityHashInfo = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self entityHashInfo];
  jsonDictionary = [entityHashInfo jsonDictionary];

  v18 = @"identifier";
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"type";
  null2 = type;
  if (!type)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"fields";
  null3 = fields;
  if (!fields)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"fieldsTokens";
  null4 = fieldsTokens;
  if (!fieldsTokens)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"entityHashInfo";
  null5 = jsonDictionary;
  if (!jsonDictionary)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (jsonDictionary)
  {
    if (fieldsTokens)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (fieldsTokens)
    {
LABEL_13:
      if (fields)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (fields)
  {
LABEL_14:
    if (type)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (identifier)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!type)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (identifier)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:

  return v14;
}

- (BMSiriRemembersEntitiesSiriRemembersEntity)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v51[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v40 = 0;
          v16 = 0;
          goto LABEL_46;
        }

        errorCopy = error;
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v48 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"type"];
        v49 = v24;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v40 = 0;
        v16 = 0;
        *errorCopy = [v22 initWithDomain:v23 code:2 userInfo:v10];
        goto LABEL_45;
      }

      v40 = v9;
    }

    else
    {
      v40 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"fields"];
    v38 = v8;
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v24 = 0;
          v16 = 0;
          goto LABEL_45;
        }

        errorCopy2 = error;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v46 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fields"];
        v47 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v28 = [v26 initWithDomain:v27 code:2 userInfo:v11];
        v24 = 0;
        v16 = 0;
        *errorCopy2 = v28;
LABEL_44:

        v8 = v38;
        self = selfCopy;
LABEL_45:

        goto LABEL_46;
      }

      v36 = v10;
    }

    else
    {
      v36 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"fieldsTokens"];
    errorCopy3 = error;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v13 = 0;
          v16 = 0;
          goto LABEL_43;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fieldsTokens"];
        v45 = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v30 = [v34 initWithDomain:v29 code:2 userInfo:v15];
        v13 = 0;
        v16 = 0;
        *errorCopy3 = v30;
        goto LABEL_41;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"entityHashInfo"];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = 0;
LABEL_16:
      v16 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)selfCopy initWithIdentifier:v38 type:v40 fields:v36 fieldsTokens:v13 entityHashInfo:v15];
      selfCopy = v16;
LABEL_41:

LABEL_42:
LABEL_43:
      v24 = v36;
      goto LABEL_44;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v14;
      v41 = 0;
      v15 = [[BMSiriEntityInfo alloc] initWithJSONDictionary:v17 error:&v41];
      v18 = v41;
      if (!v18)
      {

        goto LABEL_16;
      }

      if (errorCopy3)
      {
        v18 = v18;
        *errorCopy3 = v18;
      }

      v14 = v17;
    }

    else
    {
      if (!errorCopy3)
      {
        v16 = 0;
        goto LABEL_42;
      }

      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v33 = *MEMORY[0x1E698F240];
      v42 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"entityHashInfo"];
      v43 = v15;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *errorCopy3 = [v35 initWithDomain:v33 code:2 userInfo:v31];
    }

    v16 = 0;
    goto LABEL_41;
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
    v16 = 0;
    goto LABEL_47;
  }

  errorCopy4 = error;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v50 = *MEMORY[0x1E696A578];
  v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
  v51[0] = v40;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  v8 = 0;
  v16 = 0;
  *errorCopy4 = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_46:

LABEL_47:
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriRemembersEntitiesSiriRemembersEntity *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fields)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fieldsTokens)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_entityHashInfo)
  {
    PBDataWriterPlaceMark();
    [(BMSiriEntityInfo *)self->_entityHashInfo writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v24.receiver = self;
  v24.super_class = BMSiriRemembersEntitiesSiriRemembersEntity;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_38;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_36;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v25 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v25[0] & 0x7F) << v7;
        if ((v25[0] & 0x80) == 0)
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
        goto LABEL_36;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      if (v15 == 4)
      {
        v18 = PBReaderReadString();
        v19 = 40;
        goto LABEL_31;
      }

      if (v15 == 5)
      {
        v18 = PBReaderReadString();
        v19 = 48;
        goto LABEL_31;
      }

      if (v15 != 6)
      {
        goto LABEL_34;
      }

      v25[0] = 0;
      v25[1] = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_37;
      }

      v16 = [[BMSiriEntityInfo alloc] initByReadFrom:fromCopy];
      if (!v16)
      {
        goto LABEL_37;
      }

      entityHashInfo = v5->_entityHashInfo;
      v5->_entityHashInfo = v16;

      PBReaderRecallMark();
LABEL_32:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_36;
      }
    }

    if (v15 == 1)
    {
      v18 = PBReaderReadString();
      v19 = 24;
      goto LABEL_31;
    }

    if (v15 == 2)
    {
      v18 = PBReaderReadString();
      v19 = 32;
LABEL_31:
      v20 = *(&v5->super.super.isa + v19);
      *(&v5->super.super.isa + v19) = v18;

      goto LABEL_32;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

LABEL_36:
  if ([fromCopy hasError])
  {
LABEL_37:
    v22 = 0;
  }

  else
  {
LABEL_38:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self identifier];
  type = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self type];
  fields = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fields];
  fieldsTokens = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fieldsTokens];
  entityHashInfo = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self entityHashInfo];
  v9 = [v3 initWithFormat:@"BMSiriRemembersEntitiesSiriRemembersEntity with identifier: %@, type: %@, fields: %@, fieldsTokens: %@, entityHashInfo: %@", identifier, type, fields, fieldsTokens, entityHashInfo];

  return v9;
}

- (BMSiriRemembersEntitiesSiriRemembersEntity)initWithIdentifier:(id)identifier type:(id)type fields:(id)fields fieldsTokens:(id)tokens entityHashInfo:(id)info
{
  identifierCopy = identifier;
  typeCopy = type;
  fieldsCopy = fields;
  tokensCopy = tokens;
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = BMSiriRemembersEntitiesSiriRemembersEntity;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(&v17->_type, type);
    objc_storeStrong(&v17->_fields, fields);
    objc_storeStrong(&v17->_fieldsTokens, tokens);
    objc_storeStrong(&v17->_entityHashInfo, info);
  }

  return v17;
}

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:2 type:13 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entityFields" number:3 type:14 subMessageClass:objc_opt_class()];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fields" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fieldsTokens" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entityHashInfo" number:6 type:14 subMessageClass:objc_opt_class()];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"entityFields_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_24209];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fields" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fieldsTokens" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"entityHashInfo_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_39_24210];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

id __53__BMSiriRemembersEntitiesSiriRemembersEntity_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 entityHashInfo];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMSiriRemembersEntitiesSiriRemembersEntity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end