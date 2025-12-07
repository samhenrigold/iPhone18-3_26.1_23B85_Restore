@interface BMKeyboardTokenFrequency
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMKeyboardTokenFrequency)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMKeyboardTokenFrequency)initWithTokenFrequencies:(id)frequencies locale:(id)locale tokenType:(int)type;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_tokenFrequenciesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMKeyboardTokenFrequency

+ (id)columns
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"tokenFrequencies_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_168];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locale" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tokenType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    tokenFrequencies = [(BMKeyboardTokenFrequency *)self tokenFrequencies];
    tokenFrequencies2 = [v5 tokenFrequencies];
    v8 = tokenFrequencies2;
    if (tokenFrequencies == tokenFrequencies2)
    {
    }

    else
    {
      tokenFrequencies3 = [(BMKeyboardTokenFrequency *)self tokenFrequencies];
      tokenFrequencies4 = [v5 tokenFrequencies];
      v11 = [tokenFrequencies3 isEqual:tokenFrequencies4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    locale = [(BMKeyboardTokenFrequency *)self locale];
    locale2 = [v5 locale];
    v15 = locale2;
    if (locale == locale2)
    {
    }

    else
    {
      locale3 = [(BMKeyboardTokenFrequency *)self locale];
      locale4 = [v5 locale];
      v18 = [locale3 isEqual:locale4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    tokenType = [(BMKeyboardTokenFrequency *)self tokenType];
    v12 = tokenType == [v5 tokenType];
    goto LABEL_12;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (id)jsonDictionary
{
  v12[3] = *MEMORY[0x1E69E9840];
  _tokenFrequenciesJSONArray = [(BMKeyboardTokenFrequency *)self _tokenFrequenciesJSONArray];
  locale = [(BMKeyboardTokenFrequency *)self locale];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMKeyboardTokenFrequency tokenType](self, "tokenType")}];
  v11[0] = @"tokenFrequencies";
  null = _tokenFrequenciesJSONArray;
  if (!_tokenFrequenciesJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v11[1] = @"locale";
  null2 = locale;
  if (!locale)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v11[2] = @"tokenType";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (v5)
  {
    if (locale)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (_tokenFrequenciesJSONArray)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!locale)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (_tokenFrequenciesJSONArray)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:

  return v9;
}

- (id)_tokenFrequenciesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  tokenFrequencies = [(BMKeyboardTokenFrequency *)self tokenFrequencies];
  v5 = [tokenFrequencies countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(tokenFrequencies);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [tokenFrequencies countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMKeyboardTokenFrequency)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v66[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"tokenFrequencies"];
  null = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:null];

  if (v9)
  {
    errorCopy2 = error;
    v47 = dictionaryCopy;
    selfCopy2 = self;

    v7 = 0;
  }

  else
  {
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v32 = *MEMORY[0x1E698F240];
          v65 = *MEMORY[0x1E696A578];
          v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"tokenFrequencies"];
          v66[0] = v50;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
          v19 = v33 = error;
          selfCopy3 = 0;
          *v33 = [v31 initWithDomain:v32 code:2 userInfo:v19];
          goto LABEL_48;
        }

        selfCopy3 = 0;
        goto LABEL_49;
      }
    }

    errorCopy2 = error;
    v47 = dictionaryCopy;
    selfCopy2 = self;
  }

  v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = v7;
  v10 = [v7 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = *v53;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v53 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v52 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = errorCopy2;
        if (errorCopy2)
        {
          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = *MEMORY[0x1E698F240];
          v62 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"tokenFrequencies"];
          v63 = v15;
          v25 = MEMORY[0x1E695DF20];
          v26 = &v63;
          v27 = &v62;
LABEL_26:
          v21 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
          v28 = [v23 initWithDomain:v24 code:2 userInfo:v21];
          selfCopy3 = 0;
          *v22 = v28;
LABEL_30:
          v19 = v7;
          dictionaryCopy = v47;
          self = selfCopy2;
          goto LABEL_46;
        }

LABEL_33:
        selfCopy3 = 0;
        v19 = v7;
        dictionaryCopy = v47;
        self = selfCopy2;
        goto LABEL_48;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = errorCopy2;
        if (errorCopy2)
        {
          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = *MEMORY[0x1E698F240];
          v60 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"tokenFrequencies"];
          v61 = v15;
          v25 = MEMORY[0x1E695DF20];
          v26 = &v61;
          v27 = &v60;
          goto LABEL_26;
        }

        goto LABEL_33;
      }

      v15 = v14;
      v16 = [BMKeyboardTokenFrequencyTokenFrequency alloc];
      v51 = 0;
      v17 = [(BMKeyboardTokenFrequencyTokenFrequency *)v16 initWithJSONDictionary:v15 error:&v51];
      v18 = v51;
      if (v18)
      {
        v21 = v18;
        if (errorCopy2)
        {
          v30 = v18;
          *errorCopy2 = v21;
        }

        selfCopy3 = 0;
        goto LABEL_30;
      }

      [v50 addObject:v17];
    }

    v11 = [v7 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_16:

  dictionaryCopy = v47;
  v15 = [v47 objectForKeyedSubscript:@"locale"];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v15;
      goto LABEL_19;
    }

    if (errorCopy2)
    {
      v36 = objc_alloc(MEMORY[0x1E696ABC0]);
      v37 = *MEMORY[0x1E698F240];
      v58 = *MEMORY[0x1E696A578];
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"locale"];
      v59 = v21;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v38 = [v36 initWithDomain:v37 code:2 userInfo:v20];
      v19 = 0;
      selfCopy3 = 0;
      *errorCopy2 = v38;
      self = selfCopy2;
      goto LABEL_45;
    }

    v19 = 0;
    selfCopy3 = 0;
    self = selfCopy2;
  }

  else
  {
    v19 = 0;
LABEL_19:
    v20 = [v47 objectForKeyedSubscript:@"tokenType"];
    if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v21 = 0;
      goto LABEL_44;
    }

    v34 = selfCopy2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v20;
LABEL_43:
      v21 = v35;
LABEL_44:
      self = -[BMKeyboardTokenFrequency initWithTokenFrequencies:locale:tokenType:](selfCopy2, "initWithTokenFrequencies:locale:tokenType:", v50, v19, [v21 intValue]);
      selfCopy3 = self;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = MEMORY[0x1E696AD98];
        v40 = BMKeyboardTokenFrequencyTokenTypeFromString(v20);
        v41 = v39;
        dictionaryCopy = v47;
        v35 = [v41 numberWithInt:v40];
        goto LABEL_43;
      }

      if (errorCopy2)
      {
        v49 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v56 = *MEMORY[0x1E696A578];
        v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"tokenType"];
        v57 = v43;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        *errorCopy2 = [v49 initWithDomain:v45 code:2 userInfo:v44];
      }

      v21 = 0;
      selfCopy3 = 0;
      self = v34;
    }

LABEL_45:

LABEL_46:
  }

LABEL_48:
LABEL_49:

  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMKeyboardTokenFrequency *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_tokenFrequencies;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v34.receiver = self;
  v34.super_class = BMKeyboardTokenFrequency;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_43;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v35[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v35[0] & 0x7F) << v8;
        if ((v35[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 1)
      {
        v35[0] = 0;
        v35[1] = 0;
        if (!PBReaderPlaceMark() || (v26 = [[BMKeyboardTokenFrequencyTokenFrequency alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_45:

          goto LABEL_42;
        }

        v27 = v26;
        [v6 addObject:v26];
        PBReaderRecallMark();
      }

      else if (v16 == 2)
      {
        v24 = PBReaderReadString();
        locale = v5->_locale;
        v5->_locale = v24;
      }

      else if (v16 == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v20 = [fromCopy position] + 1;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v19 |= (v35[0] & 0x7F) << v17;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          if (v18++ > 8)
          {
            goto LABEL_38;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v19 > 4)
        {
LABEL_38:
          LODWORD(v19) = 0;
        }

        v5->_tokenType = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_45;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v29 = [v6 copy];
  tokenFrequencies = v5->_tokenFrequencies;
  v5->_tokenFrequencies = v29;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_42:
    v32 = 0;
  }

  else
  {
LABEL_43:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  tokenFrequencies = [(BMKeyboardTokenFrequency *)self tokenFrequencies];
  locale = [(BMKeyboardTokenFrequency *)self locale];
  v6 = BMKeyboardTokenFrequencyTokenTypeAsString([(BMKeyboardTokenFrequency *)self tokenType]);
  v7 = [v3 initWithFormat:@"BMKeyboardTokenFrequency with tokenFrequencies: %@, locale: %@, tokenType: %@", tokenFrequencies, locale, v6];

  return v7;
}

- (BMKeyboardTokenFrequency)initWithTokenFrequencies:(id)frequencies locale:(id)locale tokenType:(int)type
{
  frequenciesCopy = frequencies;
  localeCopy = locale;
  v13.receiver = self;
  v13.super_class = BMKeyboardTokenFrequency;
  v11 = [(BMEventBase *)&v13 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v11->_tokenFrequencies, frequencies);
    objc_storeStrong(&v11->_locale, locale);
    v11->_tokenType = type;
  }

  return v11;
}

+ (id)protoFields
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tokenFrequencies" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locale" number:2 type:13 subMessageClass:{0, v2}];
  v7[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tokenType" number:3 type:4 subMessageClass:0];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

id __35__BMKeyboardTokenFrequency_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _tokenFrequenciesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMKeyboardTokenFrequency alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end