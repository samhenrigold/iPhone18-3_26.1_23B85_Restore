@interface BMSiriUI
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriUI)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriUI)initWithSessionID:(id)d uuid:(id)uuid viewMode:(id)mode dismissalReason:(id)reason starting:(id)starting absoluteTimestamp:(id)timestamp turnID:(id)iD carplayPPID:(id)self0;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriUI

+ (id)columns
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uuid" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewMode" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dismissalReason" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:1];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"turnID" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"carplayPPID" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriUI *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    sessionID = [(BMSiriUI *)self sessionID];
    sessionID2 = [v5 sessionID];
    v8 = sessionID2;
    if (sessionID == sessionID2)
    {
    }

    else
    {
      sessionID3 = [(BMSiriUI *)self sessionID];
      sessionID4 = [v5 sessionID];
      v11 = [sessionID3 isEqual:sessionID4];

      if (!v11)
      {
        goto LABEL_30;
      }
    }

    uuid = [(BMSiriUI *)self uuid];
    uuid2 = [v5 uuid];
    v15 = uuid2;
    if (uuid == uuid2)
    {
    }

    else
    {
      uuid3 = [(BMSiriUI *)self uuid];
      uuid4 = [v5 uuid];
      v18 = [uuid3 isEqual:uuid4];

      if (!v18)
      {
        goto LABEL_30;
      }
    }

    viewMode = [(BMSiriUI *)self viewMode];
    viewMode2 = [v5 viewMode];
    v21 = viewMode2;
    if (viewMode == viewMode2)
    {
    }

    else
    {
      viewMode3 = [(BMSiriUI *)self viewMode];
      viewMode4 = [v5 viewMode];
      v24 = [viewMode3 isEqual:viewMode4];

      if (!v24)
      {
        goto LABEL_30;
      }
    }

    dismissalReason = [(BMSiriUI *)self dismissalReason];
    dismissalReason2 = [v5 dismissalReason];
    v27 = dismissalReason2;
    if (dismissalReason == dismissalReason2)
    {
    }

    else
    {
      dismissalReason3 = [(BMSiriUI *)self dismissalReason];
      dismissalReason4 = [v5 dismissalReason];
      v30 = [dismissalReason3 isEqual:dismissalReason4];

      if (!v30)
      {
        goto LABEL_30;
      }
    }

    if (-[BMSiriUI hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMSiriUI *)self hasStarting])
      {
        goto LABEL_30;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_30;
      }

      starting = [(BMSiriUI *)self starting];
      if (starting != [v5 starting])
      {
        goto LABEL_30;
      }
    }

    absoluteTimestamp = [(BMSiriUI *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v34 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMSiriUI *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v37 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v37)
      {
        goto LABEL_30;
      }
    }

    turnID = [(BMSiriUI *)self turnID];
    turnID2 = [v5 turnID];
    v40 = turnID2;
    if (turnID == turnID2)
    {
    }

    else
    {
      turnID3 = [(BMSiriUI *)self turnID];
      turnID4 = [v5 turnID];
      v43 = [turnID3 isEqual:turnID4];

      if (!v43)
      {
LABEL_30:
        v12 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    carplayPPID = [(BMSiriUI *)self carplayPPID];
    carplayPPID2 = [v5 carplayPPID];
    if (carplayPPID == carplayPPID2)
    {
      v12 = 1;
    }

    else
    {
      carplayPPID3 = [(BMSiriUI *)self carplayPPID];
      carplayPPID4 = [v5 carplayPPID];
      v12 = [carplayPPID3 isEqual:carplayPPID4];
    }

    goto LABEL_31;
  }

  v12 = 0;
LABEL_32:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v31[8] = *MEMORY[0x1E69E9840];
  sessionID = [(BMSiriUI *)self sessionID];
  uuid = [(BMSiriUI *)self uuid];
  viewMode = [(BMSiriUI *)self viewMode];
  dismissalReason = [(BMSiriUI *)self dismissalReason];
  if ([(BMSiriUI *)self hasStarting])
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriUI starting](self, "starting")}];
  }

  else
  {
    v28 = 0;
  }

  absoluteTimestamp = [(BMSiriUI *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v7 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMSiriUI *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  turnID = [(BMSiriUI *)self turnID];
  carplayPPID = [(BMSiriUI *)self carplayPPID];
  v30[0] = @"sessionID";
  null = sessionID;
  if (!sessionID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v31[0] = null;
  v30[1] = @"uuid";
  null2 = uuid;
  if (!uuid)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null2;
  v31[1] = null2;
  v30[2] = @"viewMode";
  null3 = viewMode;
  if (!viewMode)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null3;
  v31[2] = null3;
  v30[3] = @"dismissalReason";
  null4 = dismissalReason;
  if (!dismissalReason)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = sessionID;
  v31[3] = null4;
  v30[4] = @"starting";
  null5 = v28;
  if (!v28)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = uuid;
  v31[4] = null5;
  v30[5] = @"absoluteTimestamp";
  null6 = v9;
  if (!v9)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = viewMode;
  v31[5] = null6;
  v30[6] = @"turnID";
  null7 = turnID;
  if (!turnID)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v31[6] = null7;
  v30[7] = @"carplayPPID";
  null8 = carplayPPID;
  if (!carplayPPID)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v31[7] = null8;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];
  if (carplayPPID)
  {
    if (turnID)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if (turnID)
    {
      goto LABEL_25;
    }
  }

LABEL_25:
  if (!v9)
  {
  }

  if (!v28)
  {
  }

  if (dismissalReason)
  {
    if (v18)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if (v18)
    {
LABEL_31:
      if (v26)
      {
        goto LABEL_32;
      }

LABEL_40:

      if (v27)
      {
        goto LABEL_33;
      }

      goto LABEL_41;
    }
  }

  if (!v26)
  {
    goto LABEL_40;
  }

LABEL_32:
  if (v27)
  {
    goto LABEL_33;
  }

LABEL_41:

LABEL_33:

  return v21;
}

- (BMSiriUI)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v89[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"sessionID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          goto LABEL_61;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uuid"];
        v87 = v31;
        v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v32 = [v29 initWithDomain:v30 code:2 userInfo:?];
        v10 = 0;
        error = 0;
        *errorCopy = v32;
        goto LABEL_60;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"viewMode"];
    v73 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        error = errorCopy;
        if (!errorCopy)
        {
          v31 = 0;
          goto LABEL_60;
        }

        v69 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"viewMode"];
        v85 = v71;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v35 = [v69 initWithDomain:v33 code:2 userInfo:v34];
        v31 = 0;
        error = 0;
        *errorCopy = v35;
        v13 = v34;
LABEL_59:

LABEL_60:
        goto LABEL_61;
      }

      v68 = v12;
    }

    else
    {
      v68 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"dismissalReason"];
    v66 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      selfCopy = self;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        error = errorCopy;
        if (!errorCopy)
        {
          v71 = 0;
          v31 = v68;
          goto LABEL_59;
        }

        v72 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v82 = *MEMORY[0x1E696A578];
        v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"dismissalReason"];
        v83 = v67;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v38 = v36;
        v39 = v37;
        v40 = [v72 initWithDomain:v38 code:2 userInfo:v37];
        v71 = 0;
        error = 0;
        v31 = v68;
        *errorCopy = v40;
        goto LABEL_58;
      }

      v15 = v9;
      v16 = v7;
      v71 = v13;
      selfCopy2 = selfCopy;
    }

    else
    {
      selfCopy2 = self;
      v15 = v9;
      v16 = v7;
      v71 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
    v65 = v10;
    v62 = v13;
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v67 = 0;
          error = 0;
          v31 = v68;
          v39 = v17;
          v7 = v16;
          v9 = v15;
          self = selfCopy2;
          v8 = v66;
          goto LABEL_58;
        }

        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v80 = *MEMORY[0x1E696A578];
        v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
        v81 = v63;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v43 = [v41 initWithDomain:v42 code:2 userInfo:v18];
        v67 = 0;
        error = 0;
        *errorCopy = v43;
        v13 = v62;
        v39 = v17;
        v7 = v16;
        v9 = v15;
        self = selfCopy2;
        v8 = v66;
LABEL_57:

        v10 = v65;
        v31 = v68;
LABEL_58:

        goto LABEL_59;
      }

      v61 = v17;
      v67 = v17;
    }

    else
    {
      v61 = v17;
      v67 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
    v7 = v16;
    if (v18)
    {
      objc_opt_class();
      v9 = v15;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        self = selfCopy2;
        if (objc_opt_isKindOfClass())
        {
          v23 = MEMORY[0x1E695DF00];
          v24 = v18;
          v25 = [v23 alloc];
          [v24 doubleValue];
          v27 = v26;

          v28 = [v25 initWithTimeIntervalSinceReferenceDate:v27];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v44 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v63 = [v44 dateFromString:v18];

            goto LABEL_46;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy)
            {
              v63 = 0;
              error = 0;
              goto LABEL_56;
            }

            v55 = objc_alloc(MEMORY[0x1E696ABC0]);
            v56 = *MEMORY[0x1E698F240];
            v78 = *MEMORY[0x1E696A578];
            v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
            v79 = v47;
            v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
            v57 = [v55 initWithDomain:v56 code:2 userInfo:v45];
            v63 = 0;
            error = 0;
            *errorCopy = v57;
LABEL_55:

LABEL_56:
            v8 = v66;
            v39 = v61;
            v13 = v62;
            goto LABEL_57;
          }

          v28 = v18;
        }

        v63 = v28;
LABEL_46:
        v45 = [dictionaryCopy objectForKeyedSubscript:@"turnID"];
        errorCopy2 = self;
        if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy)
            {
              v47 = 0;
              error = 0;
              goto LABEL_54;
            }

            v59 = objc_alloc(MEMORY[0x1E696ABC0]);
            v51 = *MEMORY[0x1E698F240];
            v76 = *MEMORY[0x1E696A578];
            v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"turnID"];
            v77 = v49;
            v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
            v52 = [v59 initWithDomain:v51 code:2 userInfo:v48];
            v47 = 0;
            error = 0;
            *errorCopy = v52;
            goto LABEL_53;
          }

          v47 = v45;
        }

        else
        {
          v47 = 0;
        }

        v48 = [dictionaryCopy objectForKeyedSubscript:@"carplayPPID"];
        if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy)
            {
              v60 = objc_alloc(MEMORY[0x1E696ABC0]);
              v58 = *MEMORY[0x1E698F240];
              v74 = *MEMORY[0x1E696A578];
              v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"carplayPPID"];
              v75 = v53;
              v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
              *errorCopy = [v60 initWithDomain:v58 code:2 userInfo:v54];
            }

            v49 = 0;
            error = 0;
            goto LABEL_53;
          }

          v49 = v48;
        }

        else
        {
          v49 = 0;
        }

        error = [(BMSiriUI *)errorCopy2 initWithSessionID:v66 uuid:v65 viewMode:v68 dismissalReason:v71 starting:v67 absoluteTimestamp:v63 turnID:v47 carplayPPID:v49];
        errorCopy2 = error;
LABEL_53:

LABEL_54:
        self = errorCopy2;
        goto LABEL_55;
      }

      v63 = 0;
    }

    else
    {
      v63 = 0;
      v9 = v15;
    }

    self = selfCopy2;
    goto LABEL_46;
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
    goto LABEL_62;
  }

  errorCopy3 = error;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v88 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionID"];
  v89[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:&v88 count:1];
  v22 = [v20 initWithDomain:v21 code:2 userInfo:v9];
  v8 = 0;
  error = 0;
  *errorCopy3 = v22;
LABEL_61:

LABEL_62:
  return error;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_viewMode)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_dismissalReason)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasStarting)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_turnID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_carplayPPID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMSiriUI;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_58;
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
        LOBYTE(v33) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v33) & 0x7F) << v7;
        if ((LOBYTE(v33) & 0x80) == 0)
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
      if ((v14 >> 3) > 4)
      {
        if (v15 > 6)
        {
          if (v15 == 7)
          {
            v16 = PBReaderReadString();
            v17 = 72;
            goto LABEL_47;
          }

          if (v15 == 8)
          {
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_47;
          }
        }

        else
        {
          if (v15 == 5)
          {
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v5->_hasStarting = 1;
            while (1)
            {
              LOBYTE(v33) = 0;
              v23 = [fromCopy position] + 1;
              if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v22 |= (LOBYTE(v33) & 0x7F) << v20;
              if ((LOBYTE(v33) & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v13 = v21++ >= 9;
              if (v13)
              {
                LOBYTE(v26) = 0;
                goto LABEL_53;
              }
            }

            v26 = (v22 != 0) & ~[fromCopy hasError];
LABEL_53:
            v5->_starting = v26;
            goto LABEL_48;
          }

          if (v15 == 6)
          {
            v5->_hasRaw_absoluteTimestamp = 1;
            v33 = 0.0;
            v18 = [fromCopy position] + 8;
            if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v5->_raw_absoluteTimestamp = v33;
            goto LABEL_48;
          }
        }
      }

      else if (v15 > 2)
      {
        if (v15 == 3)
        {
          v16 = PBReaderReadString();
          v17 = 56;
          goto LABEL_47;
        }

        if (v15 == 4)
        {
          v16 = PBReaderReadString();
          v17 = 64;
          goto LABEL_47;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v16 = PBReaderReadString();
          v17 = 40;
          goto LABEL_47;
        }

        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 48;
LABEL_47:
          v27 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          goto LABEL_48;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_57;
      }

LABEL_48:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_57:
    v30 = 0;
  }

  else
  {
LABEL_58:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  sessionID = [(BMSiriUI *)self sessionID];
  uuid = [(BMSiriUI *)self uuid];
  viewMode = [(BMSiriUI *)self viewMode];
  dismissalReason = [(BMSiriUI *)self dismissalReason];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriUI starting](self, "starting")}];
  absoluteTimestamp = [(BMSiriUI *)self absoluteTimestamp];
  turnID = [(BMSiriUI *)self turnID];
  carplayPPID = [(BMSiriUI *)self carplayPPID];
  v12 = [v3 initWithFormat:@"BMSiriUI with sessionID: %@, uuid: %@, viewMode: %@, dismissalReason: %@, starting: %@, absoluteTimestamp: %@, turnID: %@, carplayPPID: %@", sessionID, uuid, viewMode, dismissalReason, v8, absoluteTimestamp, turnID, carplayPPID];

  return v12;
}

- (BMSiriUI)initWithSessionID:(id)d uuid:(id)uuid viewMode:(id)mode dismissalReason:(id)reason starting:(id)starting absoluteTimestamp:(id)timestamp turnID:(id)iD carplayPPID:(id)self0
{
  dCopy = d;
  uuidCopy = uuid;
  modeCopy = mode;
  reasonCopy = reason;
  startingCopy = starting;
  timestampCopy = timestamp;
  iDCopy = iD;
  pIDCopy = pID;
  v28.receiver = self;
  v28.super_class = BMSiriUI;
  v20 = [(BMEventBase *)&v28 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_sessionID, d);
    objc_storeStrong(&v20->_uuid, uuid);
    objc_storeStrong(&v20->_viewMode, mode);
    objc_storeStrong(&v20->_dismissalReason, reason);
    if (startingCopy)
    {
      v20->_hasStarting = 1;
      v20->_starting = [startingCopy BOOLValue];
    }

    else
    {
      v20->_hasStarting = 0;
      v20->_starting = 0;
    }

    if (timestampCopy)
    {
      v20->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v20->_hasRaw_absoluteTimestamp = 0;
      v21 = -1.0;
    }

    v20->_raw_absoluteTimestamp = v21;
    objc_storeStrong(&v20->_turnID, iD);
    objc_storeStrong(&v20->_carplayPPID, pID);
  }

  return v20;
}

+ (id)protoFields
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionID" number:1 type:13 subMessageClass:0];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uuid" number:2 type:13 subMessageClass:0];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewMode" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dismissalReason" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:5 type:12 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:6 type:0 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"turnID" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"carplayPPID" number:8 type:13 subMessageClass:0];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
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

    v8 = [[BMSiriUI alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end