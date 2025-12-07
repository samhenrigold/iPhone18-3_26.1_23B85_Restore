@interface BMDiagnosticsPanic
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDiagnosticsPanic)initWithCaptureTime:(id)time incidentID:(id)d patternUUID:(id)iD patternType:(id)type;
- (BMDiagnosticsPanic)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDiagnosticsPanic

+ (id)columns
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"captureTime" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"incidentID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"patternUUID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"patternType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMDiagnosticsPanic hasCaptureTime](self, "hasCaptureTime") || [v5 hasCaptureTime])
    {
      if (![(BMDiagnosticsPanic *)self hasCaptureTime])
      {
        goto LABEL_21;
      }

      if (![v5 hasCaptureTime])
      {
        goto LABEL_21;
      }

      [(BMDiagnosticsPanic *)self captureTime];
      v7 = v6;
      [v5 captureTime];
      if (v7 != v8)
      {
        goto LABEL_21;
      }
    }

    incidentID = [(BMDiagnosticsPanic *)self incidentID];
    incidentID2 = [v5 incidentID];
    v11 = incidentID2;
    if (incidentID == incidentID2)
    {
    }

    else
    {
      incidentID3 = [(BMDiagnosticsPanic *)self incidentID];
      incidentID4 = [v5 incidentID];
      v14 = [incidentID3 isEqual:incidentID4];

      if (!v14)
      {
        goto LABEL_21;
      }
    }

    patternUUID = [(BMDiagnosticsPanic *)self patternUUID];
    patternUUID2 = [v5 patternUUID];
    v18 = patternUUID2;
    if (patternUUID == patternUUID2)
    {
    }

    else
    {
      patternUUID3 = [(BMDiagnosticsPanic *)self patternUUID];
      patternUUID4 = [v5 patternUUID];
      v21 = [patternUUID3 isEqual:patternUUID4];

      if (!v21)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMDiagnosticsPanic hasPatternType](self, "hasPatternType") && ![v5 hasPatternType])
    {
      v15 = 1;
      goto LABEL_22;
    }

    if (-[BMDiagnosticsPanic hasPatternType](self, "hasPatternType") && [v5 hasPatternType])
    {
      patternType = [(BMDiagnosticsPanic *)self patternType];
      v15 = patternType == [v5 patternType];
LABEL_22:

      goto LABEL_23;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v15 = 0;
LABEL_23:

  return v15;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  if (![(BMDiagnosticsPanic *)self hasCaptureTime]|| ([(BMDiagnosticsPanic *)self captureTime], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMDiagnosticsPanic *)self captureTime];
    v4 = MEMORY[0x1E696AD98];
    [(BMDiagnosticsPanic *)self captureTime];
    v5 = [v4 numberWithDouble:?];
  }

  incidentID = [(BMDiagnosticsPanic *)self incidentID];
  patternUUID = [(BMDiagnosticsPanic *)self patternUUID];
  if ([(BMDiagnosticsPanic *)self hasPatternType])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDiagnosticsPanic patternType](self, "patternType")}];
  }

  else
  {
    v8 = 0;
  }

  v15[0] = @"captureTime";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"incidentID";
  null2 = incidentID;
  if (!incidentID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"patternUUID";
  null3 = patternUUID;
  if (!patternUUID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v15[3] = @"patternType";
  null4 = v8;
  if (!v8)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (v8)
  {
    if (patternUUID)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (patternUUID)
    {
LABEL_18:
      if (incidentID)
      {
        goto LABEL_19;
      }

LABEL_25:

      if (v5)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  if (!incidentID)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v5)
  {
    goto LABEL_20;
  }

LABEL_26:

LABEL_20:

  return v13;
}

- (BMDiagnosticsPanic)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v39[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"captureTime"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"incidentID"];
    v31 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_16;
        }

        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"incidentID"];
        v37 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v15 = 0;
        *error = [v20 initWithDomain:v21 code:2 userInfo:v10];
        error = 0;
        goto LABEL_15;
      }

      v30 = v9;
    }

    else
    {
      v30 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"patternUUID"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v15 = 0;
          error = v30;
          goto LABEL_15;
        }

        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v23 = *MEMORY[0x1E698F240];
        v34 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"patternUUID"];
        v35 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v24 = [v22 initWithDomain:v23 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        error = v30;
        *errorCopy = v24;
        goto LABEL_14;
      }

      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"patternType"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v29 = objc_alloc(MEMORY[0x1E696ABC0]);
          v27 = *MEMORY[0x1E698F240];
          v32 = *MEMORY[0x1E696A578];
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"patternType"];
          v33 = v25;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          *error = [v29 initWithDomain:v27 code:2 userInfo:v26];
        }

        v14 = 0;
        v15 = 0;
        error = v30;
        goto LABEL_14;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    error = v30;
    v15 = [(BMDiagnosticsPanic *)selfCopy initWithCaptureTime:v8 incidentID:v30 patternUUID:v12 patternType:v14];
    selfCopy = v15;
LABEL_14:

    self = selfCopy;
LABEL_15:

    v7 = v31;
    goto LABEL_16;
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
    v15 = 0;
    goto LABEL_17;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E698F240];
  v38 = *MEMORY[0x1E696A578];
  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"captureTime"];
  v39[0] = v19;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v8 = 0;
  v15 = 0;
  *error = [v17 initWithDomain:v18 code:2 userInfo:v9];
  error = v19;
LABEL_16:

LABEL_17:
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDiagnosticsPanic *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasCaptureTime)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_incidentID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_patternUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPatternType)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMDiagnosticsPanic;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_49;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_47;
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
        goto LABEL_47;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 == 3)
      {
        v16 = PBReaderReadString();
        v17 = 48;
LABEL_39:
        v27 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        goto LABEL_46;
      }

      if (v15 != 4)
      {
LABEL_33:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      v5->_hasPatternType = 1;
      while (1)
      {
        LOBYTE(v33) = 0;
        v21 = [fromCopy position] + 1;
        if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v20 |= (LOBYTE(v33) & 0x7F) << v18;
        if ((LOBYTE(v33) & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v13 = v19++ >= 9;
        if (v13)
        {
          v24 = 0;
          goto LABEL_43;
        }
      }

      if ([fromCopy hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v20;
      }

LABEL_43:
      v5->_patternType = v24;
LABEL_46:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_47;
      }
    }

    if (v15 == 1)
    {
      v5->_hasCaptureTime = 1;
      v33 = 0.0;
      v25 = [fromCopy position] + 8;
      if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 8, v26 <= objc_msgSend(fromCopy, "length")))
      {
        data3 = [fromCopy data];
        [data3 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 8}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
      }

      else
      {
        [fromCopy _setError];
      }

      v5->_captureTime = v33;
      goto LABEL_46;
    }

    if (v15 != 2)
    {
      goto LABEL_33;
    }

    v16 = PBReaderReadString();
    v17 = 40;
    goto LABEL_39;
  }

LABEL_47:
  if ([fromCopy hasError])
  {
LABEL_48:
    v30 = 0;
  }

  else
  {
LABEL_49:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMDiagnosticsPanic *)self captureTime];
  v5 = [v4 numberWithDouble:?];
  incidentID = [(BMDiagnosticsPanic *)self incidentID];
  patternUUID = [(BMDiagnosticsPanic *)self patternUUID];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDiagnosticsPanic patternType](self, "patternType")}];
  v9 = [v3 initWithFormat:@"BMDiagnosticsPanic with captureTime: %@, incidentID: %@, patternUUID: %@, patternType: %@", v5, incidentID, patternUUID, v8];

  return v9;
}

- (BMDiagnosticsPanic)initWithCaptureTime:(id)time incidentID:(id)d patternUUID:(id)iD patternType:(id)type
{
  timeCopy = time;
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  v18.receiver = self;
  v18.super_class = BMDiagnosticsPanic;
  v14 = [(BMEventBase *)&v18 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timeCopy)
    {
      v14->_hasCaptureTime = 1;
      [timeCopy doubleValue];
    }

    else
    {
      v14->_hasCaptureTime = 0;
      v15 = -1.0;
    }

    v14->_captureTime = v15;
    objc_storeStrong(&v14->_incidentID, d);
    objc_storeStrong(&v14->_patternUUID, iD);
    if (typeCopy)
    {
      v14->_hasPatternType = 1;
      unsignedIntValue = [typeCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v14->_hasPatternType = 0;
    }

    v14->_patternType = unsignedIntValue;
  }

  return v14;
}

+ (id)protoFields
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"captureTime" number:1 type:0 subMessageClass:0];
  v8[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"incidentID" number:2 type:13 subMessageClass:0];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"patternUUID" number:3 type:13 subMessageClass:0];
  v8[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"patternType" number:4 type:4 subMessageClass:0];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

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

    v8 = [[BMDiagnosticsPanic alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end