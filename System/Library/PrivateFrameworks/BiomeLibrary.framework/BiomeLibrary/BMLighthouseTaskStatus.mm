@interface BMLighthouseTaskStatus
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLighthouseTaskStatus)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMLighthouseTaskStatus)initWithVersion:(id)version taskName:(id)name taskState:(id)state taskSource:(id)source pushMetadata:(id)metadata pullMetadata:(id)pullMetadata;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMLighthouseTaskStatus

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskState" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskSource" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"pushMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_62302];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"pullMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_185_62303];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMLighthouseTaskStatus hasVersion](self, "hasVersion") || [v5 hasVersion])
    {
      if (![(BMLighthouseTaskStatus *)self hasVersion])
      {
        goto LABEL_22;
      }

      if (![v5 hasVersion])
      {
        goto LABEL_22;
      }

      version = [(BMLighthouseTaskStatus *)self version];
      if (version != [v5 version])
      {
        goto LABEL_22;
      }
    }

    taskName = [(BMLighthouseTaskStatus *)self taskName];
    taskName2 = [v5 taskName];
    v9 = taskName2;
    if (taskName == taskName2)
    {
    }

    else
    {
      taskName3 = [(BMLighthouseTaskStatus *)self taskName];
      taskName4 = [v5 taskName];
      v12 = [taskName3 isEqual:taskName4];

      if (!v12)
      {
        goto LABEL_22;
      }
    }

    taskState = [(BMLighthouseTaskStatus *)self taskState];
    taskState2 = [v5 taskState];
    v16 = taskState2;
    if (taskState == taskState2)
    {
    }

    else
    {
      taskState3 = [(BMLighthouseTaskStatus *)self taskState];
      taskState4 = [v5 taskState];
      v19 = [taskState3 isEqual:taskState4];

      if (!v19)
      {
        goto LABEL_22;
      }
    }

    taskSource = [(BMLighthouseTaskStatus *)self taskSource];
    taskSource2 = [v5 taskSource];
    v22 = taskSource2;
    if (taskSource == taskSource2)
    {
    }

    else
    {
      taskSource3 = [(BMLighthouseTaskStatus *)self taskSource];
      taskSource4 = [v5 taskSource];
      v25 = [taskSource3 isEqual:taskSource4];

      if (!v25)
      {
        goto LABEL_22;
      }
    }

    pushMetadata = [(BMLighthouseTaskStatus *)self pushMetadata];
    pushMetadata2 = [v5 pushMetadata];
    v28 = pushMetadata2;
    if (pushMetadata == pushMetadata2)
    {
    }

    else
    {
      pushMetadata3 = [(BMLighthouseTaskStatus *)self pushMetadata];
      pushMetadata4 = [v5 pushMetadata];
      v31 = [pushMetadata3 isEqual:pushMetadata4];

      if (!v31)
      {
LABEL_22:
        v13 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    pullMetadata = [(BMLighthouseTaskStatus *)self pullMetadata];
    pullMetadata2 = [v5 pullMetadata];
    if (pullMetadata == pullMetadata2)
    {
      v13 = 1;
    }

    else
    {
      pullMetadata3 = [(BMLighthouseTaskStatus *)self pullMetadata];
      pullMetadata4 = [v5 pullMetadata];
      v13 = [pullMetadata3 isEqual:pullMetadata4];
    }

    goto LABEL_23;
  }

  v13 = 0;
LABEL_24:

  return v13;
}

- (id)jsonDictionary
{
  v24[6] = *MEMORY[0x1E69E9840];
  if ([(BMLighthouseTaskStatus *)self hasVersion])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseTaskStatus version](self, "version")}];
  }

  else
  {
    v3 = 0;
  }

  taskName = [(BMLighthouseTaskStatus *)self taskName];
  taskState = [(BMLighthouseTaskStatus *)self taskState];
  taskSource = [(BMLighthouseTaskStatus *)self taskSource];
  pushMetadata = [(BMLighthouseTaskStatus *)self pushMetadata];
  jsonDictionary = [pushMetadata jsonDictionary];

  pullMetadata = [(BMLighthouseTaskStatus *)self pullMetadata];
  jsonDictionary2 = [pullMetadata jsonDictionary];

  v23[0] = @"version";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v22 = v3;
  v24[0] = null;
  v23[1] = @"taskName";
  null2 = taskName;
  if (!taskName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null2;
  v24[1] = null2;
  v23[2] = @"taskState";
  null3 = taskState;
  if (!taskState)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = null3;
  v23[3] = @"taskSource";
  null4 = taskSource;
  if (!taskSource)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null4;
  v23[4] = @"pushMetadata";
  null5 = jsonDictionary;
  if (!jsonDictionary)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null5;
  v23[5] = @"pullMetadata";
  null6 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v24[5] = null6;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:{6, v19}];
  if (jsonDictionary2)
  {
    if (jsonDictionary)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (jsonDictionary)
    {
LABEL_18:
      if (taskSource)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  if (taskSource)
  {
LABEL_19:
    if (taskState)
    {
      goto LABEL_20;
    }

LABEL_29:

    if (taskName)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!taskState)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (taskName)
  {
    goto LABEL_21;
  }

LABEL_30:

LABEL_21:
  if (!v22)
  {
  }

  return v17;
}

- (BMLighthouseTaskStatus)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v68[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"taskName"];
    v52 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v22 = 0;
          v16 = 0;
          goto LABEL_59;
        }

        v24 = v8;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v27 = *MEMORY[0x1E698F240];
        v65 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"taskName"];
        v66 = v28;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v29 = v25;
        v8 = v24;
        v30 = v27;
        error = v28;
        v22 = 0;
        v16 = 0;
        *errorCopy = [v29 initWithDomain:v30 code:2 userInfo:v10];
        goto LABEL_58;
      }

      v53 = v9;
    }

    else
    {
      v53 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"taskState"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v16 = 0;
          goto LABEL_57;
        }

        v33 = v8;
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v36 = *MEMORY[0x1E698F240];
        v63 = *MEMORY[0x1E696A578];
        v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"taskState"];
        v64 = v51;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v37 = v34;
        v8 = v33;
        v38 = [v37 initWithDomain:v36 code:2 userInfo:v11];
        error = 0;
        v16 = 0;
        *errorCopy2 = v38;
LABEL_56:

        self = selfCopy;
LABEL_57:
        v22 = v53;
LABEL_58:

        v7 = v52;
        goto LABEL_59;
      }

      v49 = v10;
    }

    else
    {
      v49 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"taskSource"];
    v50 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v51 = 0;
          v16 = 0;
          error = v49;
          goto LABEL_56;
        }

        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v61 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"taskSource"];
        v62 = v17;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v41 = v39;
        v8 = v50;
        v42 = [v41 initWithDomain:v40 code:2 userInfo:v13];
        v51 = 0;
        v16 = 0;
        *error = v42;
        goto LABEL_46;
      }

      v51 = v11;
    }

    else
    {
      v51 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"pushMetadata"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = 0;
LABEL_16:
      v14 = [dictionaryCopy objectForKeyedSubscript:@"pullMetadata"];
      if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v15 = 0;
LABEL_19:
        error = v49;
        v16 = [(BMLighthouseTaskStatus *)selfCopy initWithVersion:v50 taskName:v53 taskState:v49 taskSource:v51 pushMetadata:v13 pullMetadata:v15];
        selfCopy = v16;
LABEL_52:

LABEL_53:
        v17 = v12;
        v8 = v50;
        goto LABEL_54;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v14;
        v55 = 0;
        v15 = [[BMLighthouseTaskStatusPullMetadata alloc] initWithJSONDictionary:v31 error:&v55];
        v32 = v55;
        if (!v32)
        {

          goto LABEL_19;
        }

        if (error)
        {
          v32 = v32;
          *error = v32;
        }
      }

      else
      {
        if (!error)
        {
          v16 = 0;
          error = v49;
          goto LABEL_53;
        }

        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = *MEMORY[0x1E698F240];
        v57 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"pullMetadata"];
        v58 = v15;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        *error = [v48 initWithDomain:v46 code:2 userInfo:v31];
      }

      v16 = 0;
      error = v49;
      goto LABEL_52;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v16 = 0;
        error = v49;
        goto LABEL_55;
      }

      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v43 = *MEMORY[0x1E698F240];
      v59 = *MEMORY[0x1E696A578];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"pushMetadata"];
      v60 = v13;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      *error = [v47 initWithDomain:v43 code:2 userInfo:v44];

      v16 = 0;
      v17 = v12;
      error = v49;
      v8 = v50;
LABEL_54:

      v12 = v17;
LABEL_55:

      goto LABEL_56;
    }

    v17 = v12;
    v56 = 0;
    v13 = [[BMLighthouseTaskStatusPushMetadata alloc] initWithJSONDictionary:v17 error:&v56];
    v18 = v56;
    if (!v18)
    {

      goto LABEL_16;
    }

    if (error)
    {
      v18 = v18;
      *error = v18;
    }

    v16 = 0;
LABEL_46:
    error = v49;
    goto LABEL_54;
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
    goto LABEL_60;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy3 = error;
  v21 = *MEMORY[0x1E698F240];
  v67 = *MEMORY[0x1E696A578];
  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"version"];
  v68[0] = v22;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
  v23 = [v19 initWithDomain:v21 code:2 userInfo:v9];
  v8 = 0;
  v16 = 0;
  *errorCopy3 = v23;
LABEL_59:

LABEL_60:
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLighthouseTaskStatus *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasVersion)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_taskName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_taskState)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_taskSource)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_pushMetadata)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseTaskStatusPushMetadata *)self->_pushMetadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_pullMetadata)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseTaskStatusPullMetadata *)self->_pullMetadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMLighthouseTaskStatus;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_54;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_52;
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

        v9 |= (v33 & 0x7F) << v7;
        if ((v33 & 0x80) == 0)
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
        goto LABEL_52;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      switch(v15)
      {
        case 4:
          v16 = PBReaderReadString();
          v17 = 48;
LABEL_42:
          v27 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          goto LABEL_51;
        case 5:
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_53;
          }

          v18 = [[BMLighthouseTaskStatusPushMetadata alloc] initByReadFrom:fromCopy];
          if (!v18)
          {
            goto LABEL_53;
          }

          v19 = 56;
          break;
        case 6:
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_53;
          }

          v18 = [[BMLighthouseTaskStatusPullMetadata alloc] initByReadFrom:fromCopy];
          if (!v18)
          {
            goto LABEL_53;
          }

          v19 = 64;
          break;
        default:
LABEL_39:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_51;
      }

      v28 = *(&v5->super.super.isa + v19);
      *(&v5->super.super.isa + v19) = v18;

      PBReaderRecallMark();
LABEL_51:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_52;
      }
    }

    switch(v15)
    {
      case 1:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v5->_hasVersion = 1;
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

          v22 |= (v33 & 0x7F) << v20;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v13 = v21++ >= 9;
          if (v13)
          {
            v26 = 0;
            goto LABEL_50;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v22;
        }

LABEL_50:
        v5->_version = v26;
        goto LABEL_51;
      case 2:
        v16 = PBReaderReadString();
        v17 = 32;
        break;
      case 3:
        v16 = PBReaderReadString();
        v17 = 40;
        break;
      default:
        goto LABEL_39;
    }

    goto LABEL_42;
  }

LABEL_52:
  if ([fromCopy hasError])
  {
LABEL_53:
    v30 = 0;
  }

  else
  {
LABEL_54:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseTaskStatus version](self, "version")}];
  taskName = [(BMLighthouseTaskStatus *)self taskName];
  taskState = [(BMLighthouseTaskStatus *)self taskState];
  taskSource = [(BMLighthouseTaskStatus *)self taskSource];
  pushMetadata = [(BMLighthouseTaskStatus *)self pushMetadata];
  pullMetadata = [(BMLighthouseTaskStatus *)self pullMetadata];
  v10 = [v3 initWithFormat:@"BMLighthouseTaskStatus with version: %@, taskName: %@, taskState: %@, taskSource: %@, pushMetadata: %@, pullMetadata: %@", v4, taskName, taskState, taskSource, pushMetadata, pullMetadata];

  return v10;
}

- (BMLighthouseTaskStatus)initWithVersion:(id)version taskName:(id)name taskState:(id)state taskSource:(id)source pushMetadata:(id)metadata pullMetadata:(id)pullMetadata
{
  versionCopy = version;
  nameCopy = name;
  stateCopy = state;
  sourceCopy = source;
  metadataCopy = metadata;
  pullMetadataCopy = pullMetadata;
  v23.receiver = self;
  v23.super_class = BMLighthouseTaskStatus;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (versionCopy)
    {
      v18->_hasVersion = 1;
      intValue = [versionCopy intValue];
    }

    else
    {
      v18->_hasVersion = 0;
      intValue = -1;
    }

    v18->_version = intValue;
    objc_storeStrong(&v18->_taskName, name);
    objc_storeStrong(&v18->_taskState, state);
    objc_storeStrong(&v18->_taskSource, source);
    objc_storeStrong(&v18->_pushMetadata, metadata);
    objc_storeStrong(&v18->_pullMetadata, pullMetadata);
  }

  return v18;
}

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:1 type:2 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskName" number:2 type:13 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskState" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskSource" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pushMetadata" number:5 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pullMetadata" number:6 type:14 subMessageClass:objc_opt_class()];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

id __33__BMLighthouseTaskStatus_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 pullMetadata];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __33__BMLighthouseTaskStatus_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 pushMetadata];
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

    v8 = [[BMLighthouseTaskStatus alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end