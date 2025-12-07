@interface BMGeneratedImageFailureReason
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMGeneratedImageFailureReason)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMGeneratedImageFailureReason)initWithTimestamp:(id)timestamp identifier:(id)identifier userInterfaceLanguage:(id)language userSetRegionFormat:(id)format reason:(int)reason feature:(int)feature;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (NSUUID)identifier;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMGeneratedImageFailureReason

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:6 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:3];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userInterfaceLanguage" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userSetRegionFormat" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reason" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"feature" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
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
    timestamp = [(BMGeneratedImageFailureReason *)self timestamp];
    timestamp2 = [v5 timestamp];
    v8 = timestamp2;
    if (timestamp == timestamp2)
    {
    }

    else
    {
      timestamp3 = [(BMGeneratedImageFailureReason *)self timestamp];
      timestamp4 = [v5 timestamp];
      v11 = [timestamp3 isEqual:timestamp4];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    identifier = [(BMGeneratedImageFailureReason *)self identifier];
    identifier2 = [v5 identifier];
    v15 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMGeneratedImageFailureReason *)self identifier];
      identifier4 = [v5 identifier];
      v18 = [identifier3 isEqual:identifier4];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    userInterfaceLanguage = [(BMGeneratedImageFailureReason *)self userInterfaceLanguage];
    userInterfaceLanguage2 = [v5 userInterfaceLanguage];
    v21 = userInterfaceLanguage2;
    if (userInterfaceLanguage == userInterfaceLanguage2)
    {
    }

    else
    {
      userInterfaceLanguage3 = [(BMGeneratedImageFailureReason *)self userInterfaceLanguage];
      userInterfaceLanguage4 = [v5 userInterfaceLanguage];
      v24 = [userInterfaceLanguage3 isEqual:userInterfaceLanguage4];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    userSetRegionFormat = [(BMGeneratedImageFailureReason *)self userSetRegionFormat];
    userSetRegionFormat2 = [v5 userSetRegionFormat];
    v27 = userSetRegionFormat2;
    if (userSetRegionFormat == userSetRegionFormat2)
    {
    }

    else
    {
      userSetRegionFormat3 = [(BMGeneratedImageFailureReason *)self userSetRegionFormat];
      userSetRegionFormat4 = [v5 userSetRegionFormat];
      v30 = [userSetRegionFormat3 isEqual:userSetRegionFormat4];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    reason = [(BMGeneratedImageFailureReason *)self reason];
    if (reason == [v5 reason])
    {
      feature = [(BMGeneratedImageFailureReason *)self feature];
      v12 = feature == [v5 feature];
LABEL_22:

      goto LABEL_23;
    }

LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

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
  v26[6] = *MEMORY[0x1E69E9840];
  timestamp = [(BMGeneratedImageFailureReason *)self timestamp];
  if (timestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMGeneratedImageFailureReason *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  identifier = [(BMGeneratedImageFailureReason *)self identifier];
  uUIDString = [identifier UUIDString];

  userInterfaceLanguage = [(BMGeneratedImageFailureReason *)self userInterfaceLanguage];
  userSetRegionFormat = [(BMGeneratedImageFailureReason *)self userSetRegionFormat];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageFailureReason reason](self, "reason")}];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageFailureReason feature](self, "feature")}];
  v25[0] = @"timestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null;
  v24 = v6;
  v26[0] = null;
  v25[1] = @"identifier";
  null2 = uUIDString;
  if (!uUIDString)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null2;
  v26[1] = null2;
  v25[2] = @"userInterfaceLanguage";
  null3 = userInterfaceLanguage;
  if (!userInterfaceLanguage)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v25[3] = @"userSetRegionFormat";
  null4 = userSetRegionFormat;
  if (!userSetRegionFormat)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25[4] = @"reason";
  null5 = v11;
  if (!v11)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"feature";
  null6 = v12;
  if (!v12)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:{6, v21}];
  if (v12)
  {
    if (v11)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v11)
    {
LABEL_18:
      if (userSetRegionFormat)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  if (userSetRegionFormat)
  {
LABEL_19:
    if (userInterfaceLanguage)
    {
      goto LABEL_20;
    }

LABEL_29:

    if (uUIDString)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!userInterfaceLanguage)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (uUIDString)
  {
    goto LABEL_21;
  }

LABEL_30:

LABEL_21:
  if (!v24)
  {
  }

  return v19;
}

- (BMGeneratedImageFailureReason)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v82[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = MEMORY[0x1E695DF00];
      v10 = v7;
      v11 = [v9 alloc];
      [v10 doubleValue];
      v13 = v12;

      v14 = [v11 initWithTimeIntervalSince1970:v13];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v8 = [v15 dateFromString:v7];

        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v8 = 0;
          v32 = 0;
          goto LABEL_58;
        }

        v52 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v54 = *MEMORY[0x1E698F240];
        v81 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
        v82[0] = v16;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:&v81 count:1];
        v56 = v52;
        v17 = v55;
        v8 = 0;
        v32 = 0;
        *errorCopy = [v56 initWithDomain:v54 code:2 userInfo:v55];
        goto LABEL_56;
      }

      v14 = v7;
    }

    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v68 = v8;
    v17 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v23 = v16;
    v24 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v23];
    if (!v24)
    {
      if (error)
      {
        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v47 = *MEMORY[0x1E698F240];
        v79 = *MEMORY[0x1E696A578];
        v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"identifier"];
        v80 = v48;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        *errorCopy2 = [v45 initWithDomain:v47 code:2 userInfo:v49];
      }

      v32 = 0;
      v17 = v23;
      v16 = v23;
      self = selfCopy;
      goto LABEL_56;
    }

    v17 = v24;
    v68 = v8;

    self = selfCopy;
LABEL_12:
    v18 = [dictionaryCopy objectForKeyedSubscript:@"userInterfaceLanguage"];
    errorCopy3 = error;
    v63 = v7;
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v66 = 0;
          v32 = 0;
          goto LABEL_55;
        }

        selfCopy2 = self;
        v34 = v17;
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v75 = *MEMORY[0x1E696A578];
        v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userInterfaceLanguage"];
        v76 = v65;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        v37 = v35;
        v17 = v34;
        self = selfCopy2;
        v66 = 0;
        v32 = 0;
        *errorCopy3 = [v37 initWithDomain:v36 code:2 userInfo:v19];
LABEL_54:

        v7 = v63;
LABEL_55:

        v8 = v68;
        goto LABEL_56;
      }

      v66 = v18;
    }

    else
    {
      v66 = 0;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"userSetRegionFormat"];
    v64 = v17;
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v65 = 0;
          v32 = 0;
          goto LABEL_53;
        }

        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userSetRegionFormat"];
        v74 = v22;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v40 = [v38 initWithDomain:v39 code:2 userInfo:v20];
        v65 = 0;
        v32 = 0;
        *errorCopy3 = v40;
LABEL_52:

LABEL_53:
        v17 = v64;
        goto LABEL_54;
      }

      v65 = v19;
    }

    else
    {
      v65 = 0;
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      selfCopy4 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v20;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy3)
          {
            v22 = 0;
            v32 = 0;
            goto LABEL_51;
          }

          v60 = objc_alloc(MEMORY[0x1E696ABC0]);
          v50 = *MEMORY[0x1E698F240];
          v71 = *MEMORY[0x1E696A578];
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"reason"];
          v72 = v42;
          v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
          v51 = [v60 initWithDomain:v50 code:2 userInfo:v41];
          v22 = 0;
          v32 = 0;
          *errorCopy3 = v51;
          goto LABEL_50;
        }

        v25 = [MEMORY[0x1E696AD98] numberWithInt:BMGeneratedImageFailureReasonReasonFromString(v20)];
      }

      v22 = v25;
    }

    else
    {
      selfCopy4 = self;
      v22 = 0;
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:@"feature"];
    if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = v41;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy3)
          {
            v61 = objc_alloc(MEMORY[0x1E696ABC0]);
            v59 = *MEMORY[0x1E698F240];
            v69 = *MEMORY[0x1E696A578];
            v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"feature"];
            v70 = v57;
            v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
            *errorCopy3 = [v61 initWithDomain:v59 code:2 userInfo:v58];
          }

          v42 = 0;
          v32 = 0;
          goto LABEL_50;
        }

        v43 = [MEMORY[0x1E696AD98] numberWithInt:BMGeneratedImageFailureReasonFeatureFromString(v41)];
      }

      v42 = v43;
    }

    else
    {
      v42 = 0;
    }

    v32 = -[BMGeneratedImageFailureReason initWithTimestamp:identifier:userInterfaceLanguage:userSetRegionFormat:reason:feature:](selfCopy4, "initWithTimestamp:identifier:userInterfaceLanguage:userSetRegionFormat:reason:feature:", v68, v64, v66, v65, [v22 intValue], objc_msgSend(v42, "intValue"));
    selfCopy4 = v32;
LABEL_50:

LABEL_51:
    self = selfCopy4;
    goto LABEL_52;
  }

  if (!error)
  {
    v32 = 0;
    goto LABEL_57;
  }

  v26 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy4 = error;
  v28 = *MEMORY[0x1E698F240];
  v77 = *MEMORY[0x1E696A578];
  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
  v78 = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  v31 = v26;
  v17 = v29;
  *errorCopy4 = [v31 initWithDomain:v28 code:2 userInfo:v30];

  v32 = 0;
LABEL_56:

LABEL_57:
LABEL_58:

  return v32;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMGeneratedImageFailureReason *)self writeTo:v3];
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

  if (self->_raw_identifier)
  {
    PBDataWriterWriteDataField();
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
  v39.super_class = BMGeneratedImageFailureReason;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_68;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_66;
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
        goto LABEL_66;
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
          v17 = 64;
          goto LABEL_39;
        case 5:
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
              goto LABEL_60;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 0xE)
          {
LABEL_60:
            LODWORD(v20) = 0;
          }

          v34 = 44;
          break;
        case 6:
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
              goto LABEL_56;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 3)
          {
LABEL_56:
            LODWORD(v20) = 0;
          }

          v34 = 48;
          break;
        default:
LABEL_40:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_65;
      }

      *(&v5->super.super.isa + v34) = v20;
LABEL_65:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_66;
      }
    }

    switch(v15)
    {
      case 1:
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
        goto LABEL_65;
      case 2:
        v28 = PBReaderReadData();
        if ([(NSData *)v28 length]!= 16)
        {

          goto LABEL_67;
        }

        raw_identifier = v5->_raw_identifier;
        v5->_raw_identifier = v28;
        break;
      case 3:
        v16 = PBReaderReadString();
        v17 = 56;
LABEL_39:
        raw_identifier = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_65;
  }

LABEL_66:
  if ([fromCopy hasError])
  {
LABEL_67:
    v37 = 0;
  }

  else
  {
LABEL_68:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  timestamp = [(BMGeneratedImageFailureReason *)self timestamp];
  identifier = [(BMGeneratedImageFailureReason *)self identifier];
  userInterfaceLanguage = [(BMGeneratedImageFailureReason *)self userInterfaceLanguage];
  userSetRegionFormat = [(BMGeneratedImageFailureReason *)self userSetRegionFormat];
  v8 = BMGeneratedImageFailureReasonReasonAsString([(BMGeneratedImageFailureReason *)self reason]);
  v9 = BMGeneratedImageFailureReasonFeatureAsString([(BMGeneratedImageFailureReason *)self feature]);
  v10 = [v3 initWithFormat:@"BMGeneratedImageFailureReason with timestamp: %@, identifier: %@, userInterfaceLanguage: %@, userSetRegionFormat: %@, reason: %@, feature: %@", timestamp, identifier, userInterfaceLanguage, userSetRegionFormat, v8, v9];

  return v10;
}

- (BMGeneratedImageFailureReason)initWithTimestamp:(id)timestamp identifier:(id)identifier userInterfaceLanguage:(id)language userSetRegionFormat:(id)format reason:(int)reason feature:(int)feature
{
  v24[2] = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  identifierCopy = identifier;
  languageCopy = language;
  formatCopy = format;
  v23.receiver = self;
  v23.super_class = BMGeneratedImageFailureReason;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v18->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v18->_hasRaw_timestamp = 0;
      v19 = -1.0;
    }

    v18->_raw_timestamp = v19;
    if (identifierCopy)
    {
      v24[0] = 0;
      v24[1] = 0;
      [identifierCopy getUUIDBytes:v24];
      v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v24 length:16];
      raw_identifier = v18->_raw_identifier;
      v18->_raw_identifier = v20;
    }

    else
    {
      raw_identifier = v18->_raw_identifier;
      v18->_raw_identifier = 0;
    }

    objc_storeStrong(&v18->_userInterfaceLanguage, language);
    objc_storeStrong(&v18->_userSetRegionFormat, format);
    v18->_reason = reason;
    v18->_feature = feature;
  }

  return v18;
}

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:1 type:0 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:2 type:14 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userInterfaceLanguage" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userSetRegionFormat" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reason" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feature" number:6 type:4 subMessageClass:0];
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

    v8 = [[BMGeneratedImageFailureReason alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end