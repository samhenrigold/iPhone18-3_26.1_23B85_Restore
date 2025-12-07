@interface BMOSAnalyticsHighEngagementDevices
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMOSAnalyticsHighEngagementDevices)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMOSAnalyticsHighEngagementDevices)initWithTopCategory1:(id)category1 topCategory2:(id)category2 topCategory3:(id)category3 highEngagementCategory1:(id)engagementCategory1 highEngagementCategory2:(id)engagementCategory2;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMOSAnalyticsHighEngagementDevices

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    topCategory1 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory1];
    topCategory12 = [v5 topCategory1];
    v8 = topCategory12;
    if (topCategory1 == topCategory12)
    {
    }

    else
    {
      topCategory13 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory1];
      topCategory14 = [v5 topCategory1];
      v11 = [topCategory13 isEqual:topCategory14];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    topCategory2 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory2];
    topCategory22 = [v5 topCategory2];
    v15 = topCategory22;
    if (topCategory2 == topCategory22)
    {
    }

    else
    {
      topCategory23 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory2];
      topCategory24 = [v5 topCategory2];
      v18 = [topCategory23 isEqual:topCategory24];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    topCategory3 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory3];
    topCategory32 = [v5 topCategory3];
    v21 = topCategory32;
    if (topCategory3 == topCategory32)
    {
    }

    else
    {
      topCategory33 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory3];
      topCategory34 = [v5 topCategory3];
      v24 = [topCategory33 isEqual:topCategory34];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    highEngagementCategory1 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory1];
    highEngagementCategory12 = [v5 highEngagementCategory1];
    v27 = highEngagementCategory12;
    if (highEngagementCategory1 == highEngagementCategory12)
    {
    }

    else
    {
      highEngagementCategory13 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory1];
      highEngagementCategory14 = [v5 highEngagementCategory1];
      v30 = [highEngagementCategory13 isEqual:highEngagementCategory14];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    highEngagementCategory2 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory2];
    highEngagementCategory22 = [v5 highEngagementCategory2];
    if (highEngagementCategory2 == highEngagementCategory22)
    {
      v12 = 1;
    }

    else
    {
      highEngagementCategory23 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory2];
      highEngagementCategory24 = [v5 highEngagementCategory2];
      v12 = [highEngagementCategory23 isEqual:highEngagementCategory24];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v22[5] = *MEMORY[0x1E69E9840];
  topCategory1 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory1];
  topCategory2 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory2];
  topCategory3 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory3];
  highEngagementCategory1 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory1];
  highEngagementCategory2 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory2];
  v17 = @"topCategory1";
  null = topCategory1;
  if (!topCategory1)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15 = null;
  v22[0] = null;
  v18 = @"topCategory2";
  null2 = topCategory2;
  if (!topCategory2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = null2;
  v19 = @"topCategory3";
  null3 = topCategory3;
  if (!topCategory3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = null3;
  v20 = @"highEngagementCategory1";
  null4 = highEngagementCategory1;
  if (!highEngagementCategory1)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22[3] = null4;
  v21 = @"highEngagementCategory2";
  null5 = highEngagementCategory2;
  if (!highEngagementCategory2)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v17 count:{5, v15}];
  if (highEngagementCategory2)
  {
    if (highEngagementCategory1)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (highEngagementCategory1)
    {
LABEL_13:
      if (topCategory3)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (topCategory3)
  {
LABEL_14:
    if (topCategory2)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (topCategory1)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!topCategory2)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (topCategory1)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:

  return v13;
}

- (BMOSAnalyticsHighEngagementDevices)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v47[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"topCategory1"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"topCategory2"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v37 = 0;
          v16 = 0;
          goto LABEL_20;
        }

        errorCopy = error;
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"topCategory2"];
        v45 = v35;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v37 = 0;
        v16 = 0;
        *errorCopy = [v21 initWithDomain:v22 code:2 userInfo:v10];
        goto LABEL_19;
      }

      v37 = v9;
    }

    else
    {
      v37 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"topCategory3"];
    v34 = v8;
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v35 = 0;
          v16 = 0;
          goto LABEL_19;
        }

        errorCopy2 = error;
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"topCategory3"];
        v43 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v35 = 0;
        v16 = 0;
        *errorCopy2 = [v24 initWithDomain:v25 code:2 userInfo:v11];
LABEL_18:

        self = selfCopy;
        v8 = v34;
LABEL_19:

        goto LABEL_20;
      }

      v35 = v10;
    }

    else
    {
      v35 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"highEngagementCategory1"];
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
          goto LABEL_18;
        }

        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v40 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"highEngagementCategory1"];
        v41 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v27 = [v32 initWithDomain:v26 code:2 userInfo:v14];
        v13 = 0;
        v16 = 0;
        *errorCopy3 = v27;
        goto LABEL_17;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"highEngagementCategory2"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v38 = *MEMORY[0x1E696A578];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"highEngagementCategory2"];
          v39 = v28;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          *errorCopy3 = [v33 initWithDomain:v30 code:2 userInfo:v29];
        }

        v15 = 0;
        v16 = 0;
        goto LABEL_17;
      }

      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(BMOSAnalyticsHighEngagementDevices *)selfCopy initWithTopCategory1:v34 topCategory2:v37 topCategory3:v35 highEngagementCategory1:v13 highEngagementCategory2:v15];
    selfCopy = v16;
LABEL_17:

    goto LABEL_18;
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
    goto LABEL_21;
  }

  errorCopy4 = error;
  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = *MEMORY[0x1E698F240];
  v46 = *MEMORY[0x1E696A578];
  v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"topCategory1"];
  v47[0] = v37;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  v8 = 0;
  v16 = 0;
  *errorCopy4 = [v19 initWithDomain:v20 code:2 userInfo:v9];
LABEL_20:

LABEL_21:
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOSAnalyticsHighEngagementDevices *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_topCategory1)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_topCategory2)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_topCategory3)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_highEngagementCategory1)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_highEngagementCategory2)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMOSAnalyticsHighEngagementDevices;
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
      if (v15 >= 5)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6E899A8[v15];
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
  topCategory1 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory1];
  topCategory2 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory2];
  topCategory3 = [(BMOSAnalyticsHighEngagementDevices *)self topCategory3];
  highEngagementCategory1 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory1];
  highEngagementCategory2 = [(BMOSAnalyticsHighEngagementDevices *)self highEngagementCategory2];
  v9 = [v3 initWithFormat:@"BMOSAnalyticsHighEngagementDevices with topCategory1: %@, topCategory2: %@, topCategory3: %@, highEngagementCategory1: %@, highEngagementCategory2: %@", topCategory1, topCategory2, topCategory3, highEngagementCategory1, highEngagementCategory2];

  return v9;
}

- (BMOSAnalyticsHighEngagementDevices)initWithTopCategory1:(id)category1 topCategory2:(id)category2 topCategory3:(id)category3 highEngagementCategory1:(id)engagementCategory1 highEngagementCategory2:(id)engagementCategory2
{
  category1Copy = category1;
  category2Copy = category2;
  category3Copy = category3;
  engagementCategory1Copy = engagementCategory1;
  engagementCategory2Copy = engagementCategory2;
  v20.receiver = self;
  v20.super_class = BMOSAnalyticsHighEngagementDevices;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_topCategory1, category1);
    objc_storeStrong(&v17->_topCategory2, category2);
    objc_storeStrong(&v17->_topCategory3, category3);
    objc_storeStrong(&v17->_highEngagementCategory1, engagementCategory1);
    objc_storeStrong(&v17->_highEngagementCategory2, engagementCategory2);
  }

  return v17;
}

+ (id)protoFields
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topCategory1" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topCategory2" number:2 type:13 subMessageClass:{0, v2}];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topCategory3" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highEngagementCategory1" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highEngagementCategory2" number:5 type:13 subMessageClass:0];
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
}

+ (id)columns
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"topCategory1" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"topCategory2" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"topCategory3" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highEngagementCategory1" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highEngagementCategory2" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
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

    v8 = [[BMOSAnalyticsHighEngagementDevices alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end