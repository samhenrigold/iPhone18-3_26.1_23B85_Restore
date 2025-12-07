@interface BMASRContextualReplayRecordJoinIds
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMASRContextualReplayRecordJoinIds)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMASRContextualReplayRecordJoinIds)initWithRequestId:(id)id asrId:(id)asrId dictationInteractionID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMASRContextualReplayRecordJoinIds

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    requestId = [(BMASRContextualReplayRecordJoinIds *)self requestId];
    requestId2 = [v5 requestId];
    v8 = requestId2;
    if (requestId == requestId2)
    {
    }

    else
    {
      requestId3 = [(BMASRContextualReplayRecordJoinIds *)self requestId];
      requestId4 = [v5 requestId];
      v11 = [requestId3 isEqual:requestId4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    asrId = [(BMASRContextualReplayRecordJoinIds *)self asrId];
    asrId2 = [v5 asrId];
    v15 = asrId2;
    if (asrId == asrId2)
    {
    }

    else
    {
      asrId3 = [(BMASRContextualReplayRecordJoinIds *)self asrId];
      asrId4 = [v5 asrId];
      v18 = [asrId3 isEqual:asrId4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    dictationInteractionID = [(BMASRContextualReplayRecordJoinIds *)self dictationInteractionID];
    dictationInteractionID2 = [v5 dictationInteractionID];
    if (dictationInteractionID == dictationInteractionID2)
    {
      v12 = 1;
    }

    else
    {
      dictationInteractionID3 = [(BMASRContextualReplayRecordJoinIds *)self dictationInteractionID];
      dictationInteractionID4 = [v5 dictationInteractionID];
      v12 = [dictationInteractionID3 isEqual:dictationInteractionID4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v12[3] = *MEMORY[0x1E69E9840];
  requestId = [(BMASRContextualReplayRecordJoinIds *)self requestId];
  asrId = [(BMASRContextualReplayRecordJoinIds *)self asrId];
  dictationInteractionID = [(BMASRContextualReplayRecordJoinIds *)self dictationInteractionID];
  v11[0] = @"requestId";
  null = requestId;
  if (!requestId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v11[1] = @"asrId";
  null2 = asrId;
  if (!asrId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v11[2] = @"dictationInteractionID";
  null3 = dictationInteractionID;
  if (!dictationInteractionID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (dictationInteractionID)
  {
    if (asrId)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (requestId)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!asrId)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (requestId)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:

  return v9;
}

- (BMASRContextualReplayRecordJoinIds)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"asrId"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_12;
        }

        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = *MEMORY[0x1E698F240];
        v26 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"asrId"];
        v27 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v18 = [v22 initWithDomain:v17 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v18;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"dictationInteractionID"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          v21 = *MEMORY[0x1E698F240];
          v24 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"dictationInteractionID"];
          v25 = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
          *error = [v23 initWithDomain:v21 code:2 userInfo:v20];
        }

        v12 = 0;
        selfCopy = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMASRContextualReplayRecordJoinIds *)self initWithRequestId:v8 asrId:v10 dictationInteractionID:v12];
    selfCopy = self;
LABEL_11:

    goto LABEL_12;
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
    selfCopy = 0;
    goto LABEL_13;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v28 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requestId"];
  v29[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v15 initWithDomain:v16 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMASRContextualReplayRecordJoinIds *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_asrId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_dictationInteractionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMASRContextualReplayRecordJoinIds;
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
      if (v15 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6EA0A70[v15];
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
  requestId = [(BMASRContextualReplayRecordJoinIds *)self requestId];
  asrId = [(BMASRContextualReplayRecordJoinIds *)self asrId];
  dictationInteractionID = [(BMASRContextualReplayRecordJoinIds *)self dictationInteractionID];
  v7 = [v3 initWithFormat:@"BMASRContextualReplayRecordJoinIds with requestId: %@, asrId: %@, dictationInteractionID: %@", requestId, asrId, dictationInteractionID];

  return v7;
}

- (BMASRContextualReplayRecordJoinIds)initWithRequestId:(id)id asrId:(id)asrId dictationInteractionID:(id)d
{
  idCopy = id;
  asrIdCopy = asrId;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = BMASRContextualReplayRecordJoinIds;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_requestId, id);
    objc_storeStrong(&v12->_asrId, asrId);
    objc_storeStrong(&v12->_dictationInteractionID, d);
  }

  return v12;
}

+ (id)protoFields
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestId" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"asrId" number:2 type:13 subMessageClass:{0, v2}];
  v7[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dictationInteractionID" number:3 type:13 subMessageClass:0];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

+ (id)columns
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"asrId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dictationInteractionID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

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

    v8 = [[BMASRContextualReplayRecordJoinIds alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end