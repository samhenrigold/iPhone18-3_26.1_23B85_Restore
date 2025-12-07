@interface BMAppDocumentInteractionRemoteUserNameComponents
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppDocumentInteractionRemoteUserNameComponents)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAppDocumentInteractionRemoteUserNameComponents)initWithNamePrefix:(id)prefix givenName:(id)name middleName:(id)middleName familyName:(id)familyName nameSuffix:(id)suffix nickname:(id)nickname;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppDocumentInteractionRemoteUserNameComponents

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    namePrefix = [(BMAppDocumentInteractionRemoteUserNameComponents *)self namePrefix];
    namePrefix2 = [v5 namePrefix];
    v8 = namePrefix2;
    if (namePrefix == namePrefix2)
    {
    }

    else
    {
      namePrefix3 = [(BMAppDocumentInteractionRemoteUserNameComponents *)self namePrefix];
      namePrefix4 = [v5 namePrefix];
      v11 = [namePrefix3 isEqual:namePrefix4];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    givenName = [(BMAppDocumentInteractionRemoteUserNameComponents *)self givenName];
    givenName2 = [v5 givenName];
    v15 = givenName2;
    if (givenName == givenName2)
    {
    }

    else
    {
      givenName3 = [(BMAppDocumentInteractionRemoteUserNameComponents *)self givenName];
      givenName4 = [v5 givenName];
      v18 = [givenName3 isEqual:givenName4];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    middleName = [(BMAppDocumentInteractionRemoteUserNameComponents *)self middleName];
    middleName2 = [v5 middleName];
    v21 = middleName2;
    if (middleName == middleName2)
    {
    }

    else
    {
      middleName3 = [(BMAppDocumentInteractionRemoteUserNameComponents *)self middleName];
      middleName4 = [v5 middleName];
      v24 = [middleName3 isEqual:middleName4];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    familyName = [(BMAppDocumentInteractionRemoteUserNameComponents *)self familyName];
    familyName2 = [v5 familyName];
    v27 = familyName2;
    if (familyName == familyName2)
    {
    }

    else
    {
      familyName3 = [(BMAppDocumentInteractionRemoteUserNameComponents *)self familyName];
      familyName4 = [v5 familyName];
      v30 = [familyName3 isEqual:familyName4];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    nameSuffix = [(BMAppDocumentInteractionRemoteUserNameComponents *)self nameSuffix];
    nameSuffix2 = [v5 nameSuffix];
    v33 = nameSuffix2;
    if (nameSuffix == nameSuffix2)
    {
    }

    else
    {
      nameSuffix3 = [(BMAppDocumentInteractionRemoteUserNameComponents *)self nameSuffix];
      nameSuffix4 = [v5 nameSuffix];
      v36 = [nameSuffix3 isEqual:nameSuffix4];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    nickname = [(BMAppDocumentInteractionRemoteUserNameComponents *)self nickname];
    nickname2 = [v5 nickname];
    if (nickname == nickname2)
    {
      v12 = 1;
    }

    else
    {
      nickname3 = [(BMAppDocumentInteractionRemoteUserNameComponents *)self nickname];
      nickname4 = [v5 nickname];
      v12 = [nickname3 isEqual:nickname4];
    }

    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v22[6] = *MEMORY[0x1E69E9840];
  namePrefix = [(BMAppDocumentInteractionRemoteUserNameComponents *)self namePrefix];
  givenName = [(BMAppDocumentInteractionRemoteUserNameComponents *)self givenName];
  middleName = [(BMAppDocumentInteractionRemoteUserNameComponents *)self middleName];
  familyName = [(BMAppDocumentInteractionRemoteUserNameComponents *)self familyName];
  nameSuffix = [(BMAppDocumentInteractionRemoteUserNameComponents *)self nameSuffix];
  nickname = [(BMAppDocumentInteractionRemoteUserNameComponents *)self nickname];
  v21[0] = @"namePrefix";
  null = namePrefix;
  if (!namePrefix)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v22[0] = null;
  v21[1] = @"givenName";
  null2 = givenName;
  if (!givenName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null2;
  v22[1] = null2;
  v21[2] = @"middleName";
  null3 = middleName;
  if (!middleName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = namePrefix;
  v22[2] = null3;
  v21[3] = @"familyName";
  null4 = familyName;
  if (!familyName)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22[3] = null4;
  v21[4] = @"nameSuffix";
  null5 = nameSuffix;
  if (!nameSuffix)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = null5;
  v21[5] = @"nickname";
  null6 = nickname;
  if (!nickname)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v22[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:{6, v17}];
  if (nickname)
  {
    if (nameSuffix)
    {
      goto LABEL_15;
    }

LABEL_23:

    if (familyName)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (!nameSuffix)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (familyName)
  {
    goto LABEL_16;
  }

LABEL_24:

LABEL_16:
  if (middleName)
  {
    if (givenName)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (v20)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (!givenName)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:

  return v15;
}

- (BMAppDocumentInteractionRemoteUserNameComponents)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v64[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"namePrefix"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"givenName"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v17 = 0;
          v16 = 0;
          goto LABEL_25;
        }

        v23 = v8;
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v25 = *MEMORY[0x1E698F240];
        v61 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"givenName"];
        v62 = v26;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v27 = v24;
        v8 = v23;
        v28 = v25;
        error = v26;
        v17 = 0;
        v16 = 0;
        *errorCopy = [v27 initWithDomain:v28 code:2 userInfo:v10];
        goto LABEL_24;
      }

      v51 = v9;
    }

    else
    {
      v51 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"middleName"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v16 = 0;
          v17 = v51;
          goto LABEL_24;
        }

        v29 = v8;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v31 = *MEMORY[0x1E698F240];
        v59 = *MEMORY[0x1E696A578];
        v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"middleName"];
        v60 = v50;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v32 = v30;
        v8 = v29;
        v33 = [v32 initWithDomain:v31 code:2 userInfo:v11];
        error = 0;
        v16 = 0;
        *errorCopy2 = v33;
        goto LABEL_22;
      }

      v47 = v10;
    }

    else
    {
      v47 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"familyName"];
    v48 = v7;
    v49 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v50 = 0;
          v16 = 0;
          v17 = v51;
          error = v47;
          goto LABEL_23;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v57 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"familyName"];
        v58 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v36 = [v34 initWithDomain:v35 code:2 userInfo:v12];
        v50 = 0;
        v16 = 0;
        *error = v36;
        goto LABEL_57;
      }

      v50 = v11;
    }

    else
    {
      v50 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"nameSuffix"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
LABEL_16:
      v14 = [dictionaryCopy objectForKeyedSubscript:@"nickname"];
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v46 = objc_alloc(MEMORY[0x1E696ABC0]);
            v42 = *MEMORY[0x1E698F240];
            v53 = *MEMORY[0x1E696A578];
            v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"nickname"];
            v54 = v40;
            v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
            *error = [v46 initWithDomain:v42 code:2 userInfo:v41];
          }

          v15 = 0;
          v16 = 0;
          error = v47;
          goto LABEL_20;
        }

        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      error = v47;
      v16 = [(BMAppDocumentInteractionRemoteUserNameComponents *)selfCopy initWithNamePrefix:v49 givenName:v51 middleName:v47 familyName:v50 nameSuffix:v13 nickname:v15];
      selfCopy = v16;
LABEL_20:

LABEL_21:
      v7 = v48;
      v8 = v49;
LABEL_22:
      v17 = v51;
LABEL_23:

      self = selfCopy;
LABEL_24:

      goto LABEL_25;
    }

    if (error)
    {
      errorCopy3 = error;
      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      v38 = *MEMORY[0x1E698F240];
      v55 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"nameSuffix"];
      v56 = v15;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v39 = [v37 initWithDomain:v38 code:2 userInfo:v14];
      v13 = 0;
      v16 = 0;
      error = v47;
      *errorCopy3 = v39;
      goto LABEL_20;
    }

    v13 = 0;
    v16 = 0;
LABEL_57:
    error = v47;
    goto LABEL_21;
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
    goto LABEL_26;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy4 = error;
  v21 = *MEMORY[0x1E698F240];
  v63 = *MEMORY[0x1E696A578];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"namePrefix"];
  v64[0] = v17;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
  v22 = [v19 initWithDomain:v21 code:2 userInfo:v9];
  v8 = 0;
  v16 = 0;
  *errorCopy4 = v22;
LABEL_25:

LABEL_26:
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppDocumentInteractionRemoteUserNameComponents *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_namePrefix)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_givenName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_middleName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_familyName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_nameSuffix)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_nickname)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMAppDocumentInteractionRemoteUserNameComponents;
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
      if (v15 >= 6)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6EA03D8[v15];
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
  namePrefix = [(BMAppDocumentInteractionRemoteUserNameComponents *)self namePrefix];
  givenName = [(BMAppDocumentInteractionRemoteUserNameComponents *)self givenName];
  middleName = [(BMAppDocumentInteractionRemoteUserNameComponents *)self middleName];
  familyName = [(BMAppDocumentInteractionRemoteUserNameComponents *)self familyName];
  nameSuffix = [(BMAppDocumentInteractionRemoteUserNameComponents *)self nameSuffix];
  nickname = [(BMAppDocumentInteractionRemoteUserNameComponents *)self nickname];
  v10 = [v3 initWithFormat:@"BMAppDocumentInteractionRemoteUserNameComponents with namePrefix: %@, givenName: %@, middleName: %@, familyName: %@, nameSuffix: %@, nickname: %@", namePrefix, givenName, middleName, familyName, nameSuffix, nickname];

  return v10;
}

- (BMAppDocumentInteractionRemoteUserNameComponents)initWithNamePrefix:(id)prefix givenName:(id)name middleName:(id)middleName familyName:(id)familyName nameSuffix:(id)suffix nickname:(id)nickname
{
  prefixCopy = prefix;
  nameCopy = name;
  middleNameCopy = middleName;
  familyNameCopy = familyName;
  suffixCopy = suffix;
  nicknameCopy = nickname;
  v23.receiver = self;
  v23.super_class = BMAppDocumentInteractionRemoteUserNameComponents;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_namePrefix, prefix);
    objc_storeStrong(&v18->_givenName, name);
    objc_storeStrong(&v18->_middleName, middleName);
    objc_storeStrong(&v18->_familyName, familyName);
    objc_storeStrong(&v18->_nameSuffix, suffix);
    objc_storeStrong(&v18->_nickname, nickname);
  }

  return v18;
}

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"namePrefix" number:1 type:13 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"givenName" number:2 type:13 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"middleName" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"familyName" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nameSuffix" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nickname" number:6 type:13 subMessageClass:0];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"namePrefix" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"givenName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"middleName" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"familyName" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nameSuffix" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nickname" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
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

    v8 = [[BMAppDocumentInteractionRemoteUserNameComponents alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end