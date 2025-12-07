@interface BMWritingToolsComposeAndAdjust
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWritingToolsComposeAndAdjust)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMWritingToolsComposeAndAdjust)initWithTimestamp:(id)timestamp prompt:(id)prompt identifier:(id)identifier topic:(id)topic userInterfaceLanguage:(id)language userSetRegionFormat:(id)format result:(int)result feature:(int)self0;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (NSUUID)identifier;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWritingToolsComposeAndAdjust

+ (id)columns
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"prompt" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:6 requestOnly:0 fieldNumber:3 protoDataType:14 convertedType:3];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"topic" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userInterfaceLanguage" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userSetRegionFormat" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"result" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"feature" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    timestamp = [(BMWritingToolsComposeAndAdjust *)self timestamp];
    timestamp2 = [v5 timestamp];
    v8 = timestamp2;
    if (timestamp == timestamp2)
    {
    }

    else
    {
      timestamp3 = [(BMWritingToolsComposeAndAdjust *)self timestamp];
      timestamp4 = [v5 timestamp];
      v11 = [timestamp3 isEqual:timestamp4];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    prompt = [(BMWritingToolsComposeAndAdjust *)self prompt];
    prompt2 = [v5 prompt];
    v15 = prompt2;
    if (prompt == prompt2)
    {
    }

    else
    {
      prompt3 = [(BMWritingToolsComposeAndAdjust *)self prompt];
      prompt4 = [v5 prompt];
      v18 = [prompt3 isEqual:prompt4];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    identifier = [(BMWritingToolsComposeAndAdjust *)self identifier];
    identifier2 = [v5 identifier];
    v21 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMWritingToolsComposeAndAdjust *)self identifier];
      identifier4 = [v5 identifier];
      v24 = [identifier3 isEqual:identifier4];

      if (!v24)
      {
        goto LABEL_29;
      }
    }

    topic = [(BMWritingToolsComposeAndAdjust *)self topic];
    topic2 = [v5 topic];
    v27 = topic2;
    if (topic == topic2)
    {
    }

    else
    {
      topic3 = [(BMWritingToolsComposeAndAdjust *)self topic];
      topic4 = [v5 topic];
      v30 = [topic3 isEqual:topic4];

      if (!v30)
      {
        goto LABEL_29;
      }
    }

    userInterfaceLanguage = [(BMWritingToolsComposeAndAdjust *)self userInterfaceLanguage];
    userInterfaceLanguage2 = [v5 userInterfaceLanguage];
    v33 = userInterfaceLanguage2;
    if (userInterfaceLanguage == userInterfaceLanguage2)
    {
    }

    else
    {
      userInterfaceLanguage3 = [(BMWritingToolsComposeAndAdjust *)self userInterfaceLanguage];
      userInterfaceLanguage4 = [v5 userInterfaceLanguage];
      v36 = [userInterfaceLanguage3 isEqual:userInterfaceLanguage4];

      if (!v36)
      {
        goto LABEL_29;
      }
    }

    userSetRegionFormat = [(BMWritingToolsComposeAndAdjust *)self userSetRegionFormat];
    userSetRegionFormat2 = [v5 userSetRegionFormat];
    v39 = userSetRegionFormat2;
    if (userSetRegionFormat == userSetRegionFormat2)
    {
    }

    else
    {
      userSetRegionFormat3 = [(BMWritingToolsComposeAndAdjust *)self userSetRegionFormat];
      userSetRegionFormat4 = [v5 userSetRegionFormat];
      v42 = [userSetRegionFormat3 isEqual:userSetRegionFormat4];

      if (!v42)
      {
        goto LABEL_29;
      }
    }

    result = [(BMWritingToolsComposeAndAdjust *)self result];
    if (result == [v5 result])
    {
      feature = [(BMWritingToolsComposeAndAdjust *)self feature];
      v12 = feature == [v5 feature];
LABEL_30:

      goto LABEL_31;
    }

LABEL_29:
    v12 = 0;
    goto LABEL_30;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

- (NSUUID)identifier
{
  raw_identifier = self->_raw_identifier;
  if (raw_identifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_identifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
    v4 = [v2 convertValue:v3 toType:2];
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
  timestamp = [(BMWritingToolsComposeAndAdjust *)self timestamp];
  if (timestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMWritingToolsComposeAndAdjust *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  prompt = [(BMWritingToolsComposeAndAdjust *)self prompt];
  identifier = [(BMWritingToolsComposeAndAdjust *)self identifier];
  uUIDString = [identifier UUIDString];

  topic = [(BMWritingToolsComposeAndAdjust *)self topic];
  userInterfaceLanguage = [(BMWritingToolsComposeAndAdjust *)self userInterfaceLanguage];
  userSetRegionFormat = [(BMWritingToolsComposeAndAdjust *)self userSetRegionFormat];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWritingToolsComposeAndAdjust result](self, "result")}];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWritingToolsComposeAndAdjust feature](self, "feature")}];
  v30[0] = @"timestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v31[0] = null;
  v30[1] = @"prompt";
  null2 = prompt;
  if (!prompt)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null2;
  v31[1] = null2;
  v30[2] = @"identifier";
  null3 = uUIDString;
  if (!uUIDString)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null3;
  v31[2] = null3;
  v30[3] = @"topic";
  null4 = topic;
  if (!topic)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v6;
  v31[3] = null4;
  v30[4] = @"userInterfaceLanguage";
  null5 = userInterfaceLanguage;
  if (!userInterfaceLanguage)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = prompt;
  v31[4] = null5;
  v30[5] = @"userSetRegionFormat";
  null6 = userSetRegionFormat;
  if (!userSetRegionFormat)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31[5] = null6;
  v30[6] = @"result";
  null7 = v12;
  if (!v12)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v31[6] = null7;
  v30[7] = @"feature";
  null8 = v13;
  if (!v13)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v31[7] = null8;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];
  if (v13)
  {
    if (v12)
    {
      goto LABEL_22;
    }

LABEL_33:

    if (userSetRegionFormat)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

  if (!v12)
  {
    goto LABEL_33;
  }

LABEL_22:
  if (userSetRegionFormat)
  {
    goto LABEL_23;
  }

LABEL_34:

LABEL_23:
  if (!userInterfaceLanguage)
  {
  }

  if (topic)
  {
    if (uUIDString)
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (uUIDString)
    {
LABEL_27:
      if (v27)
      {
        goto LABEL_28;
      }

LABEL_37:

      if (v28)
      {
        goto LABEL_29;
      }

      goto LABEL_38;
    }
  }

  if (!v27)
  {
    goto LABEL_37;
  }

LABEL_28:
  if (v28)
  {
    goto LABEL_29;
  }

LABEL_38:

LABEL_29:

  return v26;
}

- (BMWritingToolsComposeAndAdjust)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v103[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v85 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v7;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSince1970:v12];
LABEL_6:
    v85 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v85 = 0;
        goto LABEL_74;
      }

      v60 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy = error;
      v62 = *MEMORY[0x1E698F240];
      v102 = *MEMORY[0x1E696A578];
      v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
      v103[0] = v63;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:&v102 count:1];
      v64 = v60;
      v16 = v63;
      v65 = [v64 initWithDomain:v62 code:2 userInfo:v15];
      v85 = 0;
      error = 0;
      *errorCopy = v65;
      goto LABEL_73;
    }

    v13 = v7;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v85 = [v14 dateFromString:v7];

LABEL_9:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"prompt"];
  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
LABEL_12:
    v17 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v82 = 0;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      v79 = v16;
      v24 = v17;
      v25 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v24];
      if (!v25)
      {
        if (error)
        {
          v55 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy2 = error;
          v57 = *MEMORY[0x1E698F240];
          v98 = *MEMORY[0x1E696A578];
          v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"identifier"];
          v99 = v58;
          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
          *errorCopy2 = [v55 initWithDomain:v57 code:2 userInfo:v59];

          error = 0;
        }

        v30 = v24;
        v17 = v24;
        v16 = v79;
        self = selfCopy;
        goto LABEL_71;
      }

      v26 = v25;

      v82 = v26;
      v16 = v79;
      self = selfCopy;
LABEL_15:
      v18 = [dictionaryCopy objectForKeyedSubscript:@"topic"];
      errorCopy3 = error;
      v75 = v7;
      v76 = v18;
      if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v81 = 0;
            v30 = v82;
            goto LABEL_70;
          }

          v38 = v16;
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v94 = *MEMORY[0x1E696A578];
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"topic"];
          v95 = v80;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v41 = v39;
          v16 = v38;
          v42 = [v41 initWithDomain:v40 code:2 userInfo:v20];
          v81 = 0;
          error = 0;
          *errorCopy3 = v42;
LABEL_69:

          v7 = v75;
          v30 = v82;
LABEL_70:

          goto LABEL_71;
        }

        v81 = v19;
      }

      else
      {
        v81 = 0;
      }

      v20 = [dictionaryCopy objectForKeyedSubscript:@"userInterfaceLanguage"];
      if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v80 = 0;
            goto LABEL_69;
          }

          v43 = v16;
          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v92 = *MEMORY[0x1E696A578];
          v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userInterfaceLanguage"];
          v93 = v77;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
          v46 = v44;
          v16 = v43;
          v47 = [v46 initWithDomain:v45 code:2 userInfo:v21];
          v80 = 0;
          error = 0;
          *errorCopy3 = v47;
          goto LABEL_68;
        }

        v78 = v16;
        v80 = v20;
      }

      else
      {
        v78 = v16;
        v80 = 0;
      }

      v21 = [dictionaryCopy objectForKeyedSubscript:@"userSetRegionFormat"];
      errorCopy4 = self;
      if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v77 = 0;
            goto LABEL_67;
          }

          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v90 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userSetRegionFormat"];
          v91 = v23;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
          v50 = [v48 initWithDomain:v49 code:2 userInfo:v22];
          v77 = 0;
          error = 0;
          *errorCopy3 = v50;
LABEL_66:

          self = errorCopy4;
LABEL_67:
          v16 = v78;
LABEL_68:

          goto LABEL_69;
        }

        v77 = v21;
      }

      else
      {
        v77 = 0;
      }

      v22 = [dictionaryCopy objectForKeyedSubscript:@"result"];
      if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = v22;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v23 = 0;
              goto LABEL_66;
            }

            v71 = objc_alloc(MEMORY[0x1E696ABC0]);
            v66 = *MEMORY[0x1E698F240];
            v88 = *MEMORY[0x1E696A578];
            v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"result"];
            v89 = v52;
            v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
            v67 = [v71 initWithDomain:v66 code:2 userInfo:v51];
            v23 = 0;
            error = 0;
            *errorCopy3 = v67;
            goto LABEL_65;
          }

          v37 = [MEMORY[0x1E696AD98] numberWithInt:BMWritingToolsComposeAndAdjustResultFromString(v22)];
        }

        v23 = v37;
      }

      else
      {
        v23 = 0;
      }

      v51 = [dictionaryCopy objectForKeyedSubscript:@"feature"];
      if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v53 = v51;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v72 = objc_alloc(MEMORY[0x1E696ABC0]);
              v70 = *MEMORY[0x1E698F240];
              v86 = *MEMORY[0x1E696A578];
              v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"feature"];
              v87 = v68;
              v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
              *errorCopy3 = [v72 initWithDomain:v70 code:2 userInfo:v69];
            }

            v52 = 0;
            error = 0;
            goto LABEL_65;
          }

          v53 = [MEMORY[0x1E696AD98] numberWithInt:BMWritingToolsComposeAndAdjustFeatureFromString(v51)];
        }

        v52 = v53;
      }

      else
      {
        v52 = 0;
      }

      error = -[BMWritingToolsComposeAndAdjust initWithTimestamp:prompt:identifier:topic:userInterfaceLanguage:userSetRegionFormat:result:feature:](errorCopy4, "initWithTimestamp:prompt:identifier:topic:userInterfaceLanguage:userSetRegionFormat:result:feature:", v85, v78, v82, v81, v80, v77, __PAIR64__([v52 intValue], objc_msgSend(v23, "intValue")));
      errorCopy4 = error;
LABEL_65:

      goto LABEL_66;
    }

    if (!error)
    {
LABEL_72:

      goto LABEL_73;
    }

    v32 = v16;
    v33 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy5 = error;
    v34 = *MEMORY[0x1E698F240];
    v96 = *MEMORY[0x1E696A578];
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
    v97 = v30;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    v36 = v33;
    v16 = v32;
    *errorCopy5 = [v36 initWithDomain:v34 code:2 userInfo:v35];

    error = 0;
LABEL_71:

    goto LABEL_72;
  }

  if (error)
  {
    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy6 = error;
    v29 = *MEMORY[0x1E698F240];
    v100 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"prompt"];
    v101 = v17;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v31 = [v27 initWithDomain:v29 code:2 userInfo:v30];
    v16 = 0;
    error = 0;
    *errorCopy6 = v31;
    goto LABEL_71;
  }

  v16 = 0;
LABEL_73:

LABEL_74:
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWritingToolsComposeAndAdjust *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasRaw_timestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_prompt)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_raw_identifier)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_topic)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userInterfaceLanguage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userSetRegionFormat)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v39.receiver = self;
  v39.super_class = BMWritingToolsComposeAndAdjust;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_74;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_72;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v40) & 0x7F) << v7;
        if ((LOBYTE(v40) & 0x80) == 0)
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
        goto LABEL_72;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 4)
      {
        break;
      }

      if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v16 = PBReaderReadString();
          v17 = 72;
        }

        else
        {
          if (v15 != 6)
          {
            goto LABEL_58;
          }

          v16 = PBReaderReadString();
          v17 = 80;
        }

        goto LABEL_45;
      }

      if (v15 == 7)
      {
        v29 = 0;
        v30 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v40) = 0;
          v31 = [fromCopy position] + 1;
          if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v20 |= (LOBYTE(v40) & 0x7F) << v29;
          if ((LOBYTE(v40) & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v24 = v30++ > 8;
          if (v24)
          {
            goto LABEL_62;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v20 > 3)
        {
LABEL_62:
          LODWORD(v20) = 0;
        }

        v34 = 44;
      }

      else
      {
        if (v15 != 8)
        {
LABEL_58:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_73;
          }

          goto LABEL_71;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v40) = 0;
          v21 = [fromCopy position] + 1;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v20 |= (LOBYTE(v40) & 0x7F) << v18;
          if ((LOBYTE(v40) & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v24 = v19++ > 8;
          if (v24)
          {
            goto LABEL_66;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v20 > 2)
        {
LABEL_66:
          LODWORD(v20) = 0;
        }

        v34 = 48;
      }

      *(&v5->super.super.isa + v34) = v20;
LABEL_71:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_72;
      }
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v28 = PBReaderReadData();
        if ([(NSData *)v28 length]!= 16)
        {

          goto LABEL_73;
        }

        raw_identifier = v5->_raw_identifier;
        v5->_raw_identifier = v28;
        goto LABEL_46;
      }

      if (v15 != 4)
      {
        goto LABEL_58;
      }

      v16 = PBReaderReadString();
      v17 = 64;
    }

    else
    {
      if (v15 == 1)
      {
        v5->_hasRaw_timestamp = 1;
        v40 = 0.0;
        v25 = [fromCopy position] + 8;
        if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 8, v26 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_timestamp = v40;
        goto LABEL_71;
      }

      if (v15 != 2)
      {
        goto LABEL_58;
      }

      v16 = PBReaderReadString();
      v17 = 56;
    }

LABEL_45:
    raw_identifier = *(&v5->super.super.isa + v17);
    *(&v5->super.super.isa + v17) = v16;
LABEL_46:

    goto LABEL_71;
  }

LABEL_72:
  if ([fromCopy hasError])
  {
LABEL_73:
    v37 = 0;
  }

  else
  {
LABEL_74:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  timestamp = [(BMWritingToolsComposeAndAdjust *)self timestamp];
  prompt = [(BMWritingToolsComposeAndAdjust *)self prompt];
  identifier = [(BMWritingToolsComposeAndAdjust *)self identifier];
  topic = [(BMWritingToolsComposeAndAdjust *)self topic];
  userInterfaceLanguage = [(BMWritingToolsComposeAndAdjust *)self userInterfaceLanguage];
  userSetRegionFormat = [(BMWritingToolsComposeAndAdjust *)self userSetRegionFormat];
  v10 = BMWritingToolsComposeAndAdjustResultAsString([(BMWritingToolsComposeAndAdjust *)self result]);
  v11 = BMWritingToolsComposeAndAdjustFeatureAsString([(BMWritingToolsComposeAndAdjust *)self feature]);
  v12 = [v3 initWithFormat:@"BMWritingToolsComposeAndAdjust with timestamp: %@, prompt: %@, identifier: %@, topic: %@, userInterfaceLanguage: %@, userSetRegionFormat: %@, result: %@, feature: %@", timestamp, prompt, identifier, topic, userInterfaceLanguage, userSetRegionFormat, v10, v11];

  return v12;
}

- (BMWritingToolsComposeAndAdjust)initWithTimestamp:(id)timestamp prompt:(id)prompt identifier:(id)identifier topic:(id)topic userInterfaceLanguage:(id)language userSetRegionFormat:(id)format result:(int)result feature:(int)self0
{
  v28[2] = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  promptCopy = prompt;
  identifierCopy = identifier;
  topicCopy = topic;
  languageCopy = language;
  formatCopy = format;
  v27.receiver = self;
  v27.super_class = BMWritingToolsComposeAndAdjust;
  v21 = [(BMEventBase *)&v27 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v21->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v21->_hasRaw_timestamp = 0;
      v22 = -1.0;
    }

    v21->_raw_timestamp = v22;
    objc_storeStrong(&v21->_prompt, prompt);
    if (identifierCopy)
    {
      v28[0] = 0;
      v28[1] = 0;
      [identifierCopy getUUIDBytes:v28];
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v28 length:16];
      raw_identifier = v21->_raw_identifier;
      v21->_raw_identifier = v23;
    }

    else
    {
      raw_identifier = v21->_raw_identifier;
      v21->_raw_identifier = 0;
    }

    objc_storeStrong(&v21->_topic, topic);
    objc_storeStrong(&v21->_userInterfaceLanguage, language);
    objc_storeStrong(&v21->_userSetRegionFormat, format);
    v21->_result = result;
    v21->_feature = feature;
  }

  return v21;
}

+ (id)protoFields
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:1 type:0 subMessageClass:0];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"prompt" number:2 type:13 subMessageClass:0];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:3 type:14 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topic" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userInterfaceLanguage" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userSetRegionFormat" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"result" number:7 type:4 subMessageClass:0];
  v12[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feature" number:8 type:4 subMessageClass:0];
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

    v8 = [[BMWritingToolsComposeAndAdjust alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end