@interface BMKeyboardTokenFrequencyTokenFrequency
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMKeyboardTokenFrequencyTokenFrequency)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMKeyboardTokenFrequencyTokenFrequency)initWithToken:(id)token count:(id)count;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMKeyboardTokenFrequencyTokenFrequency

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    token = [(BMKeyboardTokenFrequencyTokenFrequency *)self token];
    token2 = [v5 token];
    v8 = token2;
    if (token == token2)
    {
    }

    else
    {
      token3 = [(BMKeyboardTokenFrequencyTokenFrequency *)self token];
      token4 = [v5 token];
      v11 = [token3 isEqual:token4];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (!-[BMKeyboardTokenFrequencyTokenFrequency hasCount](self, "hasCount") && ![v5 hasCount])
    {
      v12 = 1;
      goto LABEL_13;
    }

    if (-[BMKeyboardTokenFrequencyTokenFrequency hasCount](self, "hasCount") && [v5 hasCount])
    {
      v13 = [(BMKeyboardTokenFrequencyTokenFrequency *)self count];
      v12 = v13 == [v5 count];
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (id)jsonDictionary
{
  v10[2] = *MEMORY[0x1E69E9840];
  token = [(BMKeyboardTokenFrequencyTokenFrequency *)self token];
  if ([(BMKeyboardTokenFrequencyTokenFrequency *)self hasCount])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMKeyboardTokenFrequencyTokenFrequency count](self, "count")}];
  }

  else
  {
    v4 = 0;
  }

  v9[0] = @"token";
  null = token;
  if (!token)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"count";
  v10[0] = null;
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (v4)
  {
    if (token)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (token)
    {
      goto LABEL_10;
    }
  }

LABEL_10:

  return v7;
}

- (BMKeyboardTokenFrequencyTokenFrequency)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"token"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v8 = 0;
        selfCopy = 0;
        goto LABEL_9;
      }

      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v14 = *MEMORY[0x1E698F240];
      v22 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"token"];
      v23[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v15 = [v13 initWithDomain:v14 code:2 userInfo:v9];
      v8 = 0;
      selfCopy = 0;
      *error = v15;
      goto LABEL_8;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"count"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v16 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = *MEMORY[0x1E698F240];
        v20 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"count"];
        v21 = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        *error = [v16 initWithDomain:v17 code:2 userInfo:v19];
      }

      v10 = 0;
      selfCopy = 0;
      goto LABEL_8;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  self = [(BMKeyboardTokenFrequencyTokenFrequency *)self initWithToken:v8 count:v10];
  selfCopy = self;
LABEL_8:

LABEL_9:
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMKeyboardTokenFrequencyTokenFrequency *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_token)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasCount)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v27.receiver = self;
  v27.super_class = BMKeyboardTokenFrequencyTokenFrequency;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_39;
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
        v28 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v28 & 0x7F) << v7;
        if ((v28 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
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

      if ((v14 >> 3) == 2)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v5->_hasCount = 1;
        while (1)
        {
          v28 = 0;
          v20 = [fromCopy position] + 1;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v19 |= (v28 & 0x7F) << v17;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v13 = v18++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_35;
          }
        }

        v23 = [fromCopy hasError] ? 0 : v19;
LABEL_35:
        v5->_count = v23;
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = PBReaderReadString();
        token = v5->_token;
        v5->_token = v15;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_38;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_38:
    v25 = 0;
  }

  else
  {
LABEL_39:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  token = [(BMKeyboardTokenFrequencyTokenFrequency *)self token];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMKeyboardTokenFrequencyTokenFrequency count](self, "count")}];
  v6 = [v3 initWithFormat:@"BMKeyboardTokenFrequencyTokenFrequency with token: %@, count: %@", token, v5];

  return v6;
}

- (BMKeyboardTokenFrequencyTokenFrequency)initWithToken:(id)token count:(id)count
{
  tokenCopy = token;
  countCopy = count;
  v12.receiver = self;
  v12.super_class = BMKeyboardTokenFrequencyTokenFrequency;
  v9 = [(BMEventBase *)&v12 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_token, token);
    if (countCopy)
    {
      v9->_hasCount = 1;
      intValue = [countCopy intValue];
    }

    else
    {
      v9->_hasCount = 0;
      intValue = -1;
    }

    v9->_count = intValue;
  }

  return v9;
}

+ (id)protoFields
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"token" number:1 type:13 subMessageClass:0];
  v6[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"count" number:2 type:2 subMessageClass:0];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)columns
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"token" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"count" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
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

    v8 = [[BMKeyboardTokenFrequencyTokenFrequency alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end