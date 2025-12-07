@interface BMDeviceActivityPrediction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceActivityPrediction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMDeviceActivityPrediction)initWithVersion:(id)version predictionType:(int)type confidenceLevel:(int)level confidenceValue:(id)value predictedDuration:(id)duration outputReason:(int)reason;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceActivityPrediction

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predictionType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidenceLevel" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidenceValue" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predictedDuration" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"outputReason" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
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
    if ((!-[BMDeviceActivityPrediction hasVersion](self, "hasVersion") && ![v5 hasVersion] || -[BMDeviceActivityPrediction hasVersion](self, "hasVersion") && objc_msgSend(v5, "hasVersion") && (v6 = -[BMDeviceActivityPrediction version](self, "version"), v6 == objc_msgSend(v5, "version"))) && (v7 = -[BMDeviceActivityPrediction predictionType](self, "predictionType"), v7 == objc_msgSend(v5, "predictionType")) && (v8 = -[BMDeviceActivityPrediction confidenceLevel](self, "confidenceLevel"), v8 == objc_msgSend(v5, "confidenceLevel")) && (!-[BMDeviceActivityPrediction hasConfidenceValue](self, "hasConfidenceValue") && !objc_msgSend(v5, "hasConfidenceValue") || -[BMDeviceActivityPrediction hasConfidenceValue](self, "hasConfidenceValue") && objc_msgSend(v5, "hasConfidenceValue") && (-[BMDeviceActivityPrediction confidenceValue](self, "confidenceValue"), v10 = v9, objc_msgSend(v5, "confidenceValue"), v10 == v11)) && (!-[BMDeviceActivityPrediction hasPredictedDuration](self, "hasPredictedDuration") && !objc_msgSend(v5, "hasPredictedDuration") || -[BMDeviceActivityPrediction hasPredictedDuration](self, "hasPredictedDuration") && objc_msgSend(v5, "hasPredictedDuration") && (-[BMDeviceActivityPrediction predictedDuration](self, "predictedDuration"), v13 = v12, objc_msgSend(v5, "predictedDuration"), v13 == v14)))
    {
      outputReason = [(BMDeviceActivityPrediction *)self outputReason];
      v16 = outputReason == [v5 outputReason];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)jsonDictionary
{
  v26[6] = *MEMORY[0x1E69E9840];
  if ([(BMDeviceActivityPrediction *)self hasVersion])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceActivityPrediction version](self, "version")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceActivityPrediction predictionType](self, "predictionType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceActivityPrediction confidenceLevel](self, "confidenceLevel")}];
  if (![(BMDeviceActivityPrediction *)self hasConfidenceValue]|| ([(BMDeviceActivityPrediction *)self confidenceValue], fabs(v6) == INFINITY))
  {
    v8 = 0;
  }

  else
  {
    [(BMDeviceActivityPrediction *)self confidenceValue];
    v7 = MEMORY[0x1E696AD98];
    [(BMDeviceActivityPrediction *)self confidenceValue];
    v8 = [v7 numberWithDouble:?];
  }

  if (![(BMDeviceActivityPrediction *)self hasPredictedDuration]|| ([(BMDeviceActivityPrediction *)self predictedDuration], fabs(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMDeviceActivityPrediction *)self predictedDuration];
    v10 = MEMORY[0x1E696AD98];
    [(BMDeviceActivityPrediction *)self predictedDuration];
    v11 = [v10 numberWithDouble:?];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceActivityPrediction outputReason](self, "outputReason")}];
  v24 = v3;
  v25[0] = @"version";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v23 = v4;
  v26[0] = null;
  v25[1] = @"predictionType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v25[2] = @"confidenceLevel";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v25[3] = @"confidenceValue";
  null4 = v8;
  if (!v8)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25[4] = @"predictedDuration";
  null5 = v11;
  if (!v11)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"outputReason";
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
      goto LABEL_26;
    }
  }

  else
  {

    if (v11)
    {
LABEL_26:
      if (v8)
      {
        goto LABEL_27;
      }

LABEL_37:

      if (v5)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }
  }

  if (!v8)
  {
    goto LABEL_37;
  }

LABEL_27:
  if (v5)
  {
    goto LABEL_28;
  }

LABEL_38:

LABEL_28:
  if (!v23)
  {
  }

  if (!v24)
  {
  }

  return v19;
}

- (BMDeviceActivityPrediction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v62[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v7 = 0;
        v19 = 0;
        selfCopy7 = self;
        goto LABEL_25;
      }

      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E698F240];
      v61 = *MEMORY[0x1E696A578];
      v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"version"];
      v62[0] = v48;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
      v23 = [v21 initWithDomain:v22 code:2 userInfo:v9];
      v7 = 0;
      v19 = 0;
      *error = v23;
      goto LABEL_63;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"predictionType"];
  v46 = v8;
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
        goto LABEL_7;
      }

      errorCopy = error;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceActivityPredictionPredictionTypeFromString(v9)];
        goto LABEL_7;
      }

      if (error)
      {
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = v7;
        v34 = *MEMORY[0x1E698F240];
        v59 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"predictionType"];
        v60 = v17;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v35 = v34;
        v7 = v33;
        v48 = 0;
        v19 = 0;
        *errorCopy = [v32 initWithDomain:v35 code:2 userInfo:v11];
        goto LABEL_65;
      }

      v48 = 0;
      v19 = 0;
LABEL_63:
      selfCopy7 = self;
      goto LABEL_24;
    }
  }

  v10 = 0;
LABEL_7:
  v11 = [dictionaryCopy objectForKeyedSubscript:@"confidenceLevel"];
  v45 = v6;
  v48 = v10;
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = v11;
        goto LABEL_10;
      }

      errorCopy2 = error;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceActivityPredictionConfidenceLevelFromString(v11)];
        goto LABEL_10;
      }

      if (error)
      {
        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = v7;
        v38 = *MEMORY[0x1E698F240];
        v57 = *MEMORY[0x1E696A578];
        v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"confidenceLevel"];
        v58 = v49;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v39 = v38;
        v7 = v37;
        v17 = 0;
        v19 = 0;
        *errorCopy2 = [v36 initWithDomain:v39 code:2 userInfo:v12];
        selfCopy7 = self;
        goto LABEL_22;
      }

      v17 = 0;
      v19 = 0;
LABEL_65:
      selfCopy7 = self;
      goto LABEL_23;
    }
  }

  v44 = 0;
LABEL_10:
  v12 = [dictionaryCopy objectForKeyedSubscript:@"confidenceValue"];
  v47 = v7;
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v49 = 0;
        v19 = 0;
        selfCopy7 = self;
        v17 = v44;
        goto LABEL_22;
      }

      v26 = objc_alloc(MEMORY[0x1E696ABC0]);
      v27 = *MEMORY[0x1E698F240];
      v55 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidenceValue"];
      v56 = v14;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v49 = 0;
      v19 = 0;
      *error = [v26 initWithDomain:v27 code:2 userInfo:v13];
      goto LABEL_61;
    }

    v49 = v12;
  }

  else
  {
    v49 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"predictedDuration"];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
        goto LABEL_16;
      }

      if (error)
      {
        errorCopy3 = error;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v53 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"predictedDuration"];
        v54 = v16;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v31 = [v29 initWithDomain:v30 code:2 userInfo:v15];
        v14 = 0;
        v19 = 0;
        *errorCopy3 = v31;
        goto LABEL_59;
      }

      v14 = 0;
      v19 = 0;
LABEL_61:
      selfCopy7 = self;
      v17 = v44;
      goto LABEL_21;
    }
  }

  v14 = 0;
LABEL_16:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"outputReason"];
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceActivityPredictionOutputReasonFromString(v15)];
        goto LABEL_19;
      }

      if (error)
      {
        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v51 = *MEMORY[0x1E696A578];
        v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"outputReason"];
        v52 = v41;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        *error = [v40 initWithDomain:v43 code:2 userInfo:v42];
      }

      v16 = 0;
      v19 = 0;
LABEL_59:
      selfCopy7 = self;
      v17 = v44;
      goto LABEL_20;
    }
  }

  v16 = 0;
LABEL_19:
  v17 = v44;
  selfCopy7 = -[BMDeviceActivityPrediction initWithVersion:predictionType:confidenceLevel:confidenceValue:predictedDuration:outputReason:](self, "initWithVersion:predictionType:confidenceLevel:confidenceValue:predictedDuration:outputReason:", v47, [v10 intValue], objc_msgSend(v44, "intValue"), v49, v14, objc_msgSend(v16, "intValue"));
  v19 = selfCopy7;
LABEL_20:

LABEL_21:
  v7 = v47;
LABEL_22:

  v6 = v45;
LABEL_23:

  v9 = v46;
LABEL_24:

LABEL_25:
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceActivityPrediction *)self writeTo:v3];
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

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  if (self->_hasConfidenceValue)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasPredictedDuration)
  {
    PBDataWriterWriteDoubleField();
  }

  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v52.receiver = self;
  v52.super_class = BMDeviceActivityPrediction;
  v5 = [(BMEventBase *)&v52 init];
  if (!v5)
  {
    goto LABEL_94;
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
        LOBYTE(v53) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v53 & 0x7F) << v7;
        if ((v53 & 0x80) == 0)
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
      if ((v14 >> 3) > 3)
      {
        if (v15 == 4)
        {
          v5->_hasConfidenceValue = 1;
          v53 = 0;
          v35 = [fromCopy position] + 8;
          if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 8, v36 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v46 = v53;
          v47 = 40;
          goto LABEL_90;
        }

        if (v15 == 5)
        {
          v5->_hasPredictedDuration = 1;
          v53 = 0;
          v42 = [fromCopy position] + 8;
          if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 8, v43 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v46 = v53;
          v47 = 48;
LABEL_90:
          *(&v5->super.super.isa + v47) = v46;
          goto LABEL_91;
        }

        if (v15 != 6)
        {
LABEL_55:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_93;
          }

          goto LABEL_91;
        }

        v23 = 0;
        v24 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v53) = 0;
          v25 = [fromCopy position] + 1;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v53 & 0x7F) << v23;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v22 = v24++ > 8;
          if (v22)
          {
            goto LABEL_79;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 5)
        {
LABEL_79:
          LODWORD(v18) = 0;
        }

        v44 = 36;
      }

      else
      {
        switch(v15)
        {
          case 1:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v5->_hasVersion = 1;
            while (1)
            {
              LOBYTE(v53) = 0;
              v31 = [fromCopy position] + 1;
              if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
              {
                data5 = [fromCopy data];
                [data5 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v30 |= (v53 & 0x7F) << v28;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v13 = v29++ >= 9;
              if (v13)
              {
                v34 = 0;
                goto LABEL_72;
              }
            }

            if ([fromCopy hasError])
            {
              v34 = 0;
            }

            else
            {
              v34 = v30;
            }

LABEL_72:
            v5->_version = v34;
            goto LABEL_91;
          case 2:
            v37 = 0;
            v38 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v53) = 0;
              v39 = [fromCopy position] + 1;
              if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 1, v40 <= objc_msgSend(fromCopy, "length")))
              {
                data6 = [fromCopy data];
                [data6 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v53 & 0x7F) << v37;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v22 = v38++ > 8;
              if (v22)
              {
                goto LABEL_83;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 2)
            {
LABEL_83:
              LODWORD(v18) = 0;
            }

            v44 = 28;
            break;
          case 3:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v53) = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data7 = [fromCopy data];
                [data7 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v53 & 0x7F) << v16;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v22 = v17++ > 8;
              if (v22)
              {
                goto LABEL_75;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 3)
            {
LABEL_75:
              LODWORD(v18) = 0;
            }

            v44 = 32;
            break;
          default:
            goto LABEL_55;
        }
      }

      *(&v5->super.super.isa + v44) = v18;
LABEL_91:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_93:
    v50 = 0;
  }

  else
  {
LABEL_94:
    v50 = v5;
  }

  return v50;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceActivityPrediction version](self, "version")}];
  v5 = BMDeviceActivityPredictionPredictionTypeAsString([(BMDeviceActivityPrediction *)self predictionType]);
  v6 = BMDeviceActivityPredictionConfidenceLevelAsString([(BMDeviceActivityPrediction *)self confidenceLevel]);
  v7 = MEMORY[0x1E696AD98];
  [(BMDeviceActivityPrediction *)self confidenceValue];
  v8 = [v7 numberWithDouble:?];
  v9 = MEMORY[0x1E696AD98];
  [(BMDeviceActivityPrediction *)self predictedDuration];
  v10 = [v9 numberWithDouble:?];
  v11 = BMDeviceActivityPredictionOutputReasonAsString([(BMDeviceActivityPrediction *)self outputReason]);
  v12 = [v3 initWithFormat:@"BMDeviceActivityPrediction with version: %@, predictionType: %@, confidenceLevel: %@, confidenceValue: %@, predictedDuration: %@, outputReason: %@", v4, v5, v6, v8, v10, v11];

  return v12;
}

- (BMDeviceActivityPrediction)initWithVersion:(id)version predictionType:(int)type confidenceLevel:(int)level confidenceValue:(id)value predictedDuration:(id)duration outputReason:(int)reason
{
  versionCopy = version;
  valueCopy = value;
  durationCopy = duration;
  v22.receiver = self;
  v22.super_class = BMDeviceActivityPrediction;
  v17 = [(BMEventBase *)&v22 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (versionCopy)
    {
      v17->_hasVersion = 1;
      intValue = [versionCopy intValue];
    }

    else
    {
      v17->_hasVersion = 0;
      intValue = -1;
    }

    v17->_version = intValue;
    v17->_predictionType = type;
    v17->_confidenceLevel = level;
    if (valueCopy)
    {
      v17->_hasConfidenceValue = 1;
      [valueCopy doubleValue];
    }

    else
    {
      v17->_hasConfidenceValue = 0;
      v19 = -1.0;
    }

    v17->_confidenceValue = v19;
    if (durationCopy)
    {
      v17->_hasPredictedDuration = 1;
      [durationCopy doubleValue];
    }

    else
    {
      v17->_hasPredictedDuration = 0;
      v20 = -1.0;
    }

    v17->_predictedDuration = v20;
    v17->_outputReason = reason;
  }

  return v17;
}

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:1 type:2 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictionType" number:2 type:4 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidenceLevel" number:3 type:4 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidenceValue" number:4 type:0 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictedDuration" number:5 type:0 subMessageClass:0];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"outputReason" number:6 type:4 subMessageClass:0];
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

    v8 = [[BMDeviceActivityPrediction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end