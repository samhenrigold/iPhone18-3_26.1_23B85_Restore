@interface BMIntelligenceFlowIdentifiers
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMIntelligenceFlowIdentifiers)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMIntelligenceFlowIdentifiers)initWithSessionId:(id)id spanId:(id)spanId clientRequestId:(id)requestId clientSessionId:(id)sessionId clientApplicationId:(id)applicationId clientGroupIdentifier:(id)identifier;
- (BMIntelligenceFlowIdentifiers)initWithSessionId:(id)id spanId:(id)spanId clientRequestId:(id)requestId clientSessionId:(id)sessionId clientApplicationId:(id)applicationId clientGroupIdentifier:(id)identifier requestEventId:(id)eventId;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSUUID)requestEventId;
- (NSUUID)sessionId;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMIntelligenceFlowIdentifiers

- (id)jsonDictionary
{
  v27[7] = *MEMORY[0x1E69E9840];
  sessionId = [(BMIntelligenceFlowIdentifiers *)self sessionId];
  uUIDString = [sessionId UUIDString];

  if ([(BMIntelligenceFlowIdentifiers *)self hasSpanId])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMIntelligenceFlowIdentifiers spanId](self, "spanId")}];
  }

  else
  {
    v5 = 0;
  }

  clientRequestId = [(BMIntelligenceFlowIdentifiers *)self clientRequestId];
  clientSessionId = [(BMIntelligenceFlowIdentifiers *)self clientSessionId];
  clientApplicationId = [(BMIntelligenceFlowIdentifiers *)self clientApplicationId];
  clientGroupIdentifier = [(BMIntelligenceFlowIdentifiers *)self clientGroupIdentifier];
  requestEventId = [(BMIntelligenceFlowIdentifiers *)self requestEventId];
  uUIDString2 = [requestEventId UUIDString];

  v26[0] = @"sessionId";
  null = uUIDString;
  if (!uUIDString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null;
  v27[0] = null;
  v26[1] = @"spanId";
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null2;
  v27[1] = null2;
  v26[2] = @"clientRequestId";
  null3 = clientRequestId;
  if (!clientRequestId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = uUIDString;
  v21 = null3;
  v27[2] = null3;
  v26[3] = @"clientSessionId";
  null4 = clientSessionId;
  if (!clientSessionId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v5;
  v27[3] = null4;
  v26[4] = @"clientApplicationId";
  null5 = clientApplicationId;
  if (!clientApplicationId)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = null5;
  v26[5] = @"clientGroupIdentifier";
  null6 = clientGroupIdentifier;
  if (!clientGroupIdentifier)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v27[5] = null6;
  v26[6] = @"requestEventId";
  null7 = uUIDString2;
  if (!uUIDString2)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = null7;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:7];
  if (uUIDString2)
  {
    if (clientGroupIdentifier)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (clientApplicationId)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (!clientGroupIdentifier)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (clientApplicationId)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!clientSessionId)
  {
  }

  if (clientRequestId)
  {
    if (v24)
    {
      goto LABEL_25;
    }

LABEL_33:

    if (v25)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (!v24)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v25)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:

  return v19;
}

- (NSUUID)sessionId
{
  raw_sessionId = self->_raw_sessionId;
  if (raw_sessionId)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_sessionId toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)requestEventId
{
  raw_requestEventId = self->_raw_requestEventId;
  if (raw_requestEventId)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_requestEventId toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BMIntelligenceFlowIdentifiers)initWithSessionId:(id)id spanId:(id)spanId clientRequestId:(id)requestId clientSessionId:(id)sessionId clientApplicationId:(id)applicationId clientGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  applicationIdCopy = applicationId;
  sessionIdCopy = sessionId;
  requestIdCopy = requestId;
  spanIdCopy = spanId;
  idCopy = id;
  v20 = [[BMIntelligenceFlowIdentifiers alloc] initWithSessionId:idCopy spanId:spanIdCopy clientRequestId:requestIdCopy clientSessionId:sessionIdCopy clientApplicationId:applicationIdCopy clientGroupIdentifier:identifierCopy requestEventId:0];

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    sessionId = [(BMIntelligenceFlowIdentifiers *)self sessionId];
    sessionId2 = [v5 sessionId];
    v8 = sessionId2;
    if (sessionId == sessionId2)
    {
    }

    else
    {
      sessionId3 = [(BMIntelligenceFlowIdentifiers *)self sessionId];
      sessionId4 = [v5 sessionId];
      v11 = [sessionId3 isEqual:sessionId4];

      if (!v11)
      {
        goto LABEL_26;
      }
    }

    if (-[BMIntelligenceFlowIdentifiers hasSpanId](self, "hasSpanId") || [v5 hasSpanId])
    {
      if (![(BMIntelligenceFlowIdentifiers *)self hasSpanId])
      {
        goto LABEL_26;
      }

      if (![v5 hasSpanId])
      {
        goto LABEL_26;
      }

      spanId = [(BMIntelligenceFlowIdentifiers *)self spanId];
      if (spanId != [v5 spanId])
      {
        goto LABEL_26;
      }
    }

    clientRequestId = [(BMIntelligenceFlowIdentifiers *)self clientRequestId];
    clientRequestId2 = [v5 clientRequestId];
    v16 = clientRequestId2;
    if (clientRequestId == clientRequestId2)
    {
    }

    else
    {
      clientRequestId3 = [(BMIntelligenceFlowIdentifiers *)self clientRequestId];
      clientRequestId4 = [v5 clientRequestId];
      v19 = [clientRequestId3 isEqual:clientRequestId4];

      if (!v19)
      {
        goto LABEL_26;
      }
    }

    clientSessionId = [(BMIntelligenceFlowIdentifiers *)self clientSessionId];
    clientSessionId2 = [v5 clientSessionId];
    v22 = clientSessionId2;
    if (clientSessionId == clientSessionId2)
    {
    }

    else
    {
      clientSessionId3 = [(BMIntelligenceFlowIdentifiers *)self clientSessionId];
      clientSessionId4 = [v5 clientSessionId];
      v25 = [clientSessionId3 isEqual:clientSessionId4];

      if (!v25)
      {
        goto LABEL_26;
      }
    }

    clientApplicationId = [(BMIntelligenceFlowIdentifiers *)self clientApplicationId];
    clientApplicationId2 = [v5 clientApplicationId];
    v28 = clientApplicationId2;
    if (clientApplicationId == clientApplicationId2)
    {
    }

    else
    {
      clientApplicationId3 = [(BMIntelligenceFlowIdentifiers *)self clientApplicationId];
      clientApplicationId4 = [v5 clientApplicationId];
      v31 = [clientApplicationId3 isEqual:clientApplicationId4];

      if (!v31)
      {
        goto LABEL_26;
      }
    }

    clientGroupIdentifier = [(BMIntelligenceFlowIdentifiers *)self clientGroupIdentifier];
    clientGroupIdentifier2 = [v5 clientGroupIdentifier];
    v34 = clientGroupIdentifier2;
    if (clientGroupIdentifier == clientGroupIdentifier2)
    {
    }

    else
    {
      clientGroupIdentifier3 = [(BMIntelligenceFlowIdentifiers *)self clientGroupIdentifier];
      clientGroupIdentifier4 = [v5 clientGroupIdentifier];
      v37 = [clientGroupIdentifier3 isEqual:clientGroupIdentifier4];

      if (!v37)
      {
LABEL_26:
        v12 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    requestEventId = [(BMIntelligenceFlowIdentifiers *)self requestEventId];
    requestEventId2 = [v5 requestEventId];
    if (requestEventId == requestEventId2)
    {
      v12 = 1;
    }

    else
    {
      requestEventId3 = [(BMIntelligenceFlowIdentifiers *)self requestEventId];
      requestEventId4 = [v5 requestEventId];
      v12 = [requestEventId3 isEqual:requestEventId4];
    }

    goto LABEL_27;
  }

  v12 = 0;
LABEL_28:

  return v12;
}

- (BMIntelligenceFlowIdentifiers)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v98[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"spanId"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v21 = 0;
          goto LABEL_31;
        }

        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v93 = *MEMORY[0x1E696A578];
        errorCopy = error;
        error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"spanId"];
        errorCopy2 = error;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy2 forKeys:&v93 count:1];
        v34 = [v32 initWithDomain:v33 code:2 userInfo:v23];
        v10 = 0;
        v21 = 0;
        *errorCopy = v34;
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"clientRequestId"];
    v79 = v11;
    selfCopy = self;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v21 = 0;
          v23 = v79;
          goto LABEL_30;
        }

        errorCopy3 = error;
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = v10;
        v40 = *MEMORY[0x1E698F240];
        v91 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientRequestId"];
        v92 = v22;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        v42 = v38;
        v14 = v41;
        v43 = v40;
        v10 = v39;
        error = 0;
        v21 = 0;
        *errorCopy3 = [v42 initWithDomain:v43 code:2 userInfo:v41];
        goto LABEL_29;
      }

      v78 = v12;
    }

    else
    {
      v78 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"clientSessionId"];
    v72 = v13;
    if (v13 && (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v22 = 0;
          v21 = 0;
          goto LABEL_28;
        }

        v44 = v10;
        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy4 = error;
        v47 = *MEMORY[0x1E698F240];
        v89 = *MEMORY[0x1E696A578];
        v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientSessionId"];
        v90 = v76;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v48 = v45;
        v10 = v44;
        v22 = 0;
        v21 = 0;
        *errorCopy4 = [v48 initWithDomain:v47 code:2 userInfo:v15];
        v14 = v72;
LABEL_27:

LABEL_28:
        error = v78;
LABEL_29:

        v23 = v79;
        self = selfCopy;
        goto LABEL_30;
      }

      v75 = v14;
    }

    else
    {
      v75 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"clientApplicationId"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v31 = v10;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v76 = 0;
          v21 = 0;
          v14 = v72;
          goto LABEL_26;
        }

        v77 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = *MEMORY[0x1E698F240];
        v87 = *MEMORY[0x1E696A578];
        v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientApplicationId"];
        v88 = v73;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        v16 = v50 = error;
        v51 = [v77 initWithDomain:v49 code:2 userInfo:v16];
        v76 = 0;
        v21 = 0;
        *v50 = v51;
        goto LABEL_74;
      }

      errorCopy6 = error;
      v76 = v15;
    }

    else
    {
      errorCopy6 = error;
      v76 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"clientGroupIdentifier"];
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v73 = 0;
LABEL_19:
      v17 = [dictionaryCopy objectForKeyedSubscript:@"requestEventId"];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy6)
          {
            v68 = objc_alloc(MEMORY[0x1E696ABC0]);
            v65 = *MEMORY[0x1E698F240];
            v81 = *MEMORY[0x1E696A578];
            v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requestEventId"];
            v82 = v63;
            v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
            *errorCopy6 = [v68 initWithDomain:v65 code:2 userInfo:v60];
          }

          v21 = 0;
          goto LABEL_24;
        }

        v18 = v9;
        v19 = v7;
        v35 = v17;
        v36 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v35];
        if (!v36)
        {
          if (errorCopy6)
          {
            v66 = objc_alloc(MEMORY[0x1E696ABC0]);
            v64 = *MEMORY[0x1E698F240];
            v83 = *MEMORY[0x1E696A578];
            v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"requestEventId"];
            v84 = v61;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
            v62 = v69 = v35;
            *errorCopy6 = [v66 initWithDomain:v64 code:2 userInfo:v62];

            v35 = v69;
          }

          v17 = v35;
          v21 = 0;
          goto LABEL_23;
        }

        v20 = v36;
      }

      else
      {
        v18 = v9;
        v19 = v7;
        v20 = 0;
      }

      v21 = [(BMIntelligenceFlowIdentifiers *)selfCopy initWithSessionId:v8 spanId:v10 clientRequestId:v78 clientSessionId:v75 clientApplicationId:v76 clientGroupIdentifier:v73 requestEventId:v20];

      selfCopy = v21;
LABEL_23:
      v7 = v19;
      v9 = v18;
LABEL_24:

LABEL_25:
      v14 = v72;

LABEL_26:
      v22 = v75;
      goto LABEL_27;
    }

    v31 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73 = v16;
      goto LABEL_19;
    }

    v21 = errorCopy6;
    if (errorCopy6)
    {
      v74 = objc_alloc(MEMORY[0x1E696ABC0]);
      v67 = *MEMORY[0x1E698F240];
      v85 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientGroupIdentifier"];
      v86 = v17;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      *errorCopy6 = [v74 initWithDomain:v67 code:2 userInfo:v52];

      v73 = 0;
      v21 = 0;
      v10 = v31;
      goto LABEL_24;
    }

    v73 = 0;
LABEL_74:
    v10 = v31;
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      v21 = 0;
      goto LABEL_34;
    }

    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = *MEMORY[0x1E698F240];
    v95 = *MEMORY[0x1E696A578];
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
    v96 = v29;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v30 = v28;
    v8 = v29;
    v21 = 0;
    *error = [v27 initWithDomain:v30 code:2 userInfo:v10];
    goto LABEL_32;
  }

  v8 = v7;
  v25 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
  if (v25)
  {
    v26 = v25;

    v8 = v26;
    goto LABEL_4;
  }

  if (!error)
  {
    v21 = 0;
    goto LABEL_33;
  }

  v53 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy7 = error;
  v55 = v7;
  v56 = v8;
  v57 = *MEMORY[0x1E698F240];
  v97 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"sessionId"];
  v98[0] = v10;
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:&v97 count:1];
  v59 = v57;
  v8 = v56;
  v7 = v55;
  *errorCopy7 = [v53 initWithDomain:v59 code:2 userInfo:v58];

  v21 = 0;
LABEL_32:

LABEL_33:
LABEL_34:

  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligenceFlowIdentifiers *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_raw_sessionId)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_hasSpanId)
  {
    PBDataWriterWriteUint64Field();
    toCopy = v5;
  }

  if (self->_clientRequestId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_clientSessionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_clientApplicationId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_clientGroupIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_raw_requestEventId)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMIntelligenceFlowIdentifiers;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_57;
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
        v32 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v32 & 0x7F) << v7;
        if ((v32 & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        if (v15 != 1)
        {
          if (v15 == 2)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v5->_hasSpanId = 1;
            while (1)
            {
              v32 = 0;
              v25 = [fromCopy position] + 1;
              if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v24 |= (v32 & 0x7F) << v22;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v13 = v23++ >= 9;
              if (v13)
              {
                v28 = 0;
                goto LABEL_54;
              }
            }

            if ([fromCopy hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_54:
            v5->_spanId = v28;
            goto LABEL_40;
          }

          if (v15 != 3)
          {
            goto LABEL_34;
          }

          v16 = PBReaderReadString();
          v17 = 48;
          goto LABEL_38;
        }

        v18 = PBReaderReadData();
        if ([v18 length] != 16)
        {
LABEL_59:

          goto LABEL_56;
        }

        v19 = 16;
      }

      else
      {
        if (v15 <= 5)
        {
          if (v15 == 4)
          {
            v16 = PBReaderReadString();
            v17 = 56;
          }

          else
          {
            if (v15 != 5)
            {
              goto LABEL_34;
            }

            v16 = PBReaderReadString();
            v17 = 64;
          }

          goto LABEL_38;
        }

        if (v15 == 6)
        {
          v16 = PBReaderReadString();
          v17 = 72;
LABEL_38:
          v20 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;
          goto LABEL_39;
        }

        if (v15 != 7)
        {
LABEL_34:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_40;
        }

        v18 = PBReaderReadData();
        if ([v18 length] != 16)
        {
          goto LABEL_59;
        }

        v19 = 24;
      }

      v20 = *(&v5->super.super.isa + v19);
      *(&v5->super.super.isa + v19) = v18;
LABEL_39:

LABEL_40:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_56:
    v29 = 0;
  }

  else
  {
LABEL_57:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  sessionId = [(BMIntelligenceFlowIdentifiers *)self sessionId];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMIntelligenceFlowIdentifiers spanId](self, "spanId")}];
  clientRequestId = [(BMIntelligenceFlowIdentifiers *)self clientRequestId];
  clientSessionId = [(BMIntelligenceFlowIdentifiers *)self clientSessionId];
  clientApplicationId = [(BMIntelligenceFlowIdentifiers *)self clientApplicationId];
  clientGroupIdentifier = [(BMIntelligenceFlowIdentifiers *)self clientGroupIdentifier];
  requestEventId = [(BMIntelligenceFlowIdentifiers *)self requestEventId];
  v11 = [v3 initWithFormat:@"BMIntelligenceFlowIdentifiers with sessionId: %@, spanId: %@, clientRequestId: %@, clientSessionId: %@, clientApplicationId: %@, clientGroupIdentifier: %@, requestEventId: %@", sessionId, v5, clientRequestId, clientSessionId, clientApplicationId, clientGroupIdentifier, requestEventId];

  return v11;
}

- (BMIntelligenceFlowIdentifiers)initWithSessionId:(id)id spanId:(id)spanId clientRequestId:(id)requestId clientSessionId:(id)sessionId clientApplicationId:(id)applicationId clientGroupIdentifier:(id)identifier requestEventId:(id)eventId
{
  v32 = *MEMORY[0x1E69E9840];
  idCopy = id;
  spanIdCopy = spanId;
  requestIdCopy = requestId;
  sessionIdCopy = sessionId;
  applicationIdCopy = applicationId;
  identifierCopy = identifier;
  eventIdCopy = eventId;
  v29.receiver = self;
  v29.super_class = BMIntelligenceFlowIdentifiers;
  v19 = [(BMEventBase *)&v29 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (idCopy)
    {
      v30 = 0;
      v31 = 0;
      [idCopy getUUIDBytes:&v30];
      v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v30 length:16];
      raw_sessionId = v19->_raw_sessionId;
      v19->_raw_sessionId = v20;
    }

    else
    {
      idCopy = 0;
      raw_sessionId = v19->_raw_sessionId;
      v19->_raw_sessionId = 0;
    }

    unsignedLongLongValue = spanIdCopy;
    if (spanIdCopy)
    {
      v19->_hasSpanId = 1;
      unsignedLongLongValue = [spanIdCopy unsignedLongLongValue];
    }

    else
    {
      v19->_hasSpanId = 0;
    }

    v19->_spanId = unsignedLongLongValue;
    objc_storeStrong(&v19->_clientRequestId, requestId);
    objc_storeStrong(&v19->_clientSessionId, sessionId);
    objc_storeStrong(&v19->_clientApplicationId, applicationId);
    objc_storeStrong(&v19->_clientGroupIdentifier, identifier);
    if (eventIdCopy)
    {
      v30 = 0;
      v31 = 0;
      [eventIdCopy getUUIDBytes:&v30];
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v30 length:16];
      raw_requestEventId = v19->_raw_requestEventId;
      v19->_raw_requestEventId = v23;
    }

    else
    {
      raw_requestEventId = v19->_raw_requestEventId;
      v19->_raw_requestEventId = 0;
    }
  }

  return v19;
}

+ (id)protoFields
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:1 type:14 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"spanId" number:2 type:5 subMessageClass:{0, v2}];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientRequestId" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientSessionId" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientApplicationId" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientGroupIdentifier" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestEventId" number:7 type:14 subMessageClass:0];
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

+ (id)columns
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"spanId" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:5 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientRequestId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientSessionId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientApplicationId" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientGroupIdentifier" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestEventId" dataType:6 requestOnly:0 fieldNumber:7 protoDataType:14 convertedType:3];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
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

    v8 = [[BMIntelligenceFlowIdentifiers alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end