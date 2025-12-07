@interface BMDataCollectorTelemetryProcessingTelemetry
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDataCollectorTelemetryProcessingTelemetry)initWithEventsProcessed:(id)processed eventsSkippedRedactedBeforeUpload:(id)upload eventsToUpload:(id)toUpload eventsInBiome:(id)biome;
- (BMDataCollectorTelemetryProcessingTelemetry)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDataCollectorTelemetryProcessingTelemetry

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMDataCollectorTelemetryProcessingTelemetry hasEventsProcessed](self, "hasEventsProcessed") || [v5 hasEventsProcessed])
    {
      if (![(BMDataCollectorTelemetryProcessingTelemetry *)self hasEventsProcessed])
      {
        goto LABEL_23;
      }

      if (![v5 hasEventsProcessed])
      {
        goto LABEL_23;
      }

      eventsProcessed = [(BMDataCollectorTelemetryProcessingTelemetry *)self eventsProcessed];
      if (eventsProcessed != [v5 eventsProcessed])
      {
        goto LABEL_23;
      }
    }

    if (-[BMDataCollectorTelemetryProcessingTelemetry hasEventsSkippedRedactedBeforeUpload](self, "hasEventsSkippedRedactedBeforeUpload") || [v5 hasEventsSkippedRedactedBeforeUpload])
    {
      if (![(BMDataCollectorTelemetryProcessingTelemetry *)self hasEventsSkippedRedactedBeforeUpload])
      {
        goto LABEL_23;
      }

      if (![v5 hasEventsSkippedRedactedBeforeUpload])
      {
        goto LABEL_23;
      }

      eventsSkippedRedactedBeforeUpload = [(BMDataCollectorTelemetryProcessingTelemetry *)self eventsSkippedRedactedBeforeUpload];
      if (eventsSkippedRedactedBeforeUpload != [v5 eventsSkippedRedactedBeforeUpload])
      {
        goto LABEL_23;
      }
    }

    if (-[BMDataCollectorTelemetryProcessingTelemetry hasEventsToUpload](self, "hasEventsToUpload") || [v5 hasEventsToUpload])
    {
      if (![(BMDataCollectorTelemetryProcessingTelemetry *)self hasEventsToUpload])
      {
        goto LABEL_23;
      }

      if (![v5 hasEventsToUpload])
      {
        goto LABEL_23;
      }

      eventsToUpload = [(BMDataCollectorTelemetryProcessingTelemetry *)self eventsToUpload];
      if (eventsToUpload != [v5 eventsToUpload])
      {
        goto LABEL_23;
      }
    }

    if (!-[BMDataCollectorTelemetryProcessingTelemetry hasEventsInBiome](self, "hasEventsInBiome") && ![v5 hasEventsInBiome])
    {
      v10 = 1;
      goto LABEL_24;
    }

    if (-[BMDataCollectorTelemetryProcessingTelemetry hasEventsInBiome](self, "hasEventsInBiome") && [v5 hasEventsInBiome])
    {
      eventsInBiome = [(BMDataCollectorTelemetryProcessingTelemetry *)self eventsInBiome];
      v10 = eventsInBiome == [v5 eventsInBiome];
    }

    else
    {
LABEL_23:
      v10 = 0;
    }

LABEL_24:

    goto LABEL_25;
  }

  v10 = 0;
LABEL_25:

  return v10;
}

- (id)jsonDictionary
{
  v14[4] = *MEMORY[0x1E69E9840];
  if ([(BMDataCollectorTelemetryProcessingTelemetry *)self hasEventsProcessed])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryProcessingTelemetry eventsProcessed](self, "eventsProcessed")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMDataCollectorTelemetryProcessingTelemetry *)self hasEventsSkippedRedactedBeforeUpload])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryProcessingTelemetry eventsSkippedRedactedBeforeUpload](self, "eventsSkippedRedactedBeforeUpload")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMDataCollectorTelemetryProcessingTelemetry *)self hasEventsToUpload])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryProcessingTelemetry eventsToUpload](self, "eventsToUpload")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMDataCollectorTelemetryProcessingTelemetry *)self hasEventsInBiome])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryProcessingTelemetry eventsInBiome](self, "eventsInBiome")}];
  }

  else
  {
    v6 = 0;
  }

  v13[0] = @"eventsProcessed";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"eventsSkippedRedactedBeforeUpload";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"eventsToUpload";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v13[3] = @"eventsInBiome";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (v5)
    {
LABEL_23:
      if (v4)
      {
        goto LABEL_24;
      }

LABEL_30:

      if (v3)
      {
        goto LABEL_25;
      }

      goto LABEL_31;
    }
  }

  if (!v4)
  {
    goto LABEL_30;
  }

LABEL_24:
  if (v3)
  {
    goto LABEL_25;
  }

LABEL_31:

LABEL_25:

  return v11;
}

- (BMDataCollectorTelemetryProcessingTelemetry)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"eventsProcessed"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"eventsSkippedRedactedBeforeUpload"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_34;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v20 = *MEMORY[0x1E698F240];
        v37 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventsSkippedRedactedBeforeUpload"];
        v38 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        error = 0;
        v15 = 0;
        *errorCopy = v21;
        goto LABEL_33;
      }

      v31 = v9;
    }

    else
    {
      v31 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"eventsToUpload"];
    v30 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v15 = 0;
          error = v31;
          goto LABEL_33;
        }

        selfCopy3 = self;
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v35 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventsToUpload"];
        v36 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v23 = [v28 initWithDomain:v22 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        *error = v23;
        goto LABEL_31;
      }

      selfCopy3 = self;
      v12 = v10;
    }

    else
    {
      selfCopy3 = self;
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"eventsInBiome"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      error = v31;
      v15 = [(BMDataCollectorTelemetryProcessingTelemetry *)selfCopy3 initWithEventsProcessed:v8 eventsSkippedRedactedBeforeUpload:v31 eventsToUpload:v12 eventsInBiome:v14];
      selfCopy3 = v15;
LABEL_32:

      self = selfCopy3;
      v7 = v30;
LABEL_33:

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      goto LABEL_13;
    }

    if (error)
    {
      v29 = objc_alloc(MEMORY[0x1E696ABC0]);
      v27 = *MEMORY[0x1E698F240];
      v33 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventsInBiome"];
      v34 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *error = [v29 initWithDomain:v27 code:2 userInfo:v25];
    }

    v14 = 0;
    v15 = 0;
LABEL_31:
    error = v31;
    goto LABEL_32;
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
    goto LABEL_35;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v39 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventsProcessed"];
  v40[0] = v18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v8 = 0;
  v15 = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
  error = v18;
LABEL_34:

LABEL_35:
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDataCollectorTelemetryProcessingTelemetry *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasEventsProcessed)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasEventsSkippedRedactedBeforeUpload)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasEventsToUpload)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasEventsInBiome)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v43.receiver = self;
  v43.super_class = BMDataCollectorTelemetryProcessingTelemetry;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_72;
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
        v44 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v44 & 0x7F) << v7;
        if ((v44 & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v35 = 0;
          v36 = 0;
          v18 = 0;
          v5->_hasEventsToUpload = 1;
          while (1)
          {
            v44 = 0;
            v37 = [fromCopy position] + 1;
            if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 = (((v44 & 0x7F) << v35) | v18);
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v22 = v36++ > 8;
            if (v22)
            {
              v23 = 0;
              v24 = &OBJC_IVAR___BMDataCollectorTelemetryProcessingTelemetry__eventsToUpload;
              goto LABEL_68;
            }
          }

          v24 = &OBJC_IVAR___BMDataCollectorTelemetryProcessingTelemetry__eventsToUpload;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_41:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_71;
            }

            goto LABEL_69;
          }

          v25 = 0;
          v26 = 0;
          v18 = 0;
          v5->_hasEventsInBiome = 1;
          while (1)
          {
            v44 = 0;
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 = (((v44 & 0x7F) << v25) | v18);
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v22 = v26++ > 8;
            if (v22)
            {
              v23 = 0;
              v24 = &OBJC_IVAR___BMDataCollectorTelemetryProcessingTelemetry__eventsInBiome;
              goto LABEL_68;
            }
          }

          v24 = &OBJC_IVAR___BMDataCollectorTelemetryProcessingTelemetry__eventsInBiome;
        }
      }

      else if (v15 == 1)
      {
        v30 = 0;
        v31 = 0;
        v18 = 0;
        v5->_hasEventsProcessed = 1;
        while (1)
        {
          v44 = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 = (((v44 & 0x7F) << v30) | v18);
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v22 = v31++ > 8;
          if (v22)
          {
            v23 = 0;
            v24 = &OBJC_IVAR___BMDataCollectorTelemetryProcessingTelemetry__eventsProcessed;
            goto LABEL_68;
          }
        }

        v24 = &OBJC_IVAR___BMDataCollectorTelemetryProcessingTelemetry__eventsProcessed;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_41;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasEventsSkippedRedactedBeforeUpload = 1;
        while (1)
        {
          v44 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 = (((v44 & 0x7F) << v16) | v18);
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v22 = v17++ > 8;
          if (v22)
          {
            v23 = 0;
            v24 = &OBJC_IVAR___BMDataCollectorTelemetryProcessingTelemetry__eventsSkippedRedactedBeforeUpload;
            goto LABEL_68;
          }
        }

        v24 = &OBJC_IVAR___BMDataCollectorTelemetryProcessingTelemetry__eventsSkippedRedactedBeforeUpload;
      }

      if ([fromCopy hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v18;
      }

LABEL_68:
      *(&v5->super.super.isa + *v24) = v23;
LABEL_69:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_71:
    v41 = 0;
  }

  else
  {
LABEL_72:
    v41 = v5;
  }

  return v41;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryProcessingTelemetry eventsProcessed](self, "eventsProcessed")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryProcessingTelemetry eventsSkippedRedactedBeforeUpload](self, "eventsSkippedRedactedBeforeUpload")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryProcessingTelemetry eventsToUpload](self, "eventsToUpload")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMDataCollectorTelemetryProcessingTelemetry eventsInBiome](self, "eventsInBiome")}];
  v8 = [v3 initWithFormat:@"BMDataCollectorTelemetryProcessingTelemetry with eventsProcessed: %@, eventsSkippedRedactedBeforeUpload: %@, eventsToUpload: %@, eventsInBiome: %@", v4, v5, v6, v7];

  return v8;
}

- (BMDataCollectorTelemetryProcessingTelemetry)initWithEventsProcessed:(id)processed eventsSkippedRedactedBeforeUpload:(id)upload eventsToUpload:(id)toUpload eventsInBiome:(id)biome
{
  processedCopy = processed;
  uploadCopy = upload;
  toUploadCopy = toUpload;
  biomeCopy = biome;
  v20.receiver = self;
  v20.super_class = BMDataCollectorTelemetryProcessingTelemetry;
  v14 = [(BMEventBase *)&v20 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (processedCopy)
    {
      v14->_hasEventsProcessed = 1;
      unsignedLongLongValue = [processedCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v14->_hasEventsProcessed = 0;
    }

    v14->_eventsProcessed = unsignedLongLongValue;
    if (uploadCopy)
    {
      v14->_hasEventsSkippedRedactedBeforeUpload = 1;
      unsignedLongLongValue2 = [uploadCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue2 = 0;
      v14->_hasEventsSkippedRedactedBeforeUpload = 0;
    }

    v14->_eventsSkippedRedactedBeforeUpload = unsignedLongLongValue2;
    if (toUploadCopy)
    {
      v14->_hasEventsToUpload = 1;
      unsignedLongLongValue3 = [toUploadCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue3 = 0;
      v14->_hasEventsToUpload = 0;
    }

    v14->_eventsToUpload = unsignedLongLongValue3;
    if (biomeCopy)
    {
      v14->_hasEventsInBiome = 1;
      unsignedLongLongValue4 = [biomeCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue4 = 0;
      v14->_hasEventsInBiome = 0;
    }

    v14->_eventsInBiome = unsignedLongLongValue4;
  }

  return v14;
}

+ (id)protoFields
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventsProcessed" number:1 type:5 subMessageClass:0];
  v8[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventsSkippedRedactedBeforeUpload" number:2 type:5 subMessageClass:0];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventsToUpload" number:3 type:5 subMessageClass:0];
  v8[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventsInBiome" number:4 type:5 subMessageClass:0];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

+ (id)columns
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventsProcessed" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventsSkippedRedactedBeforeUpload" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:5 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventsToUpload" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:5 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventsInBiome" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:5 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
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

    v8 = [[BMDataCollectorTelemetryProcessingTelemetry alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end