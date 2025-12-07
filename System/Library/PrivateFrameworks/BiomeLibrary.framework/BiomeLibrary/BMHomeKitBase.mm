@interface BMHomeKitBase
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMHomeKitBase)initWithAbsoluteTimestamp:(id)timestamp duration:(id)duration homeUniqueIdentifier:(id)identifier homeOccupancy:(id)occupancy source:(id)source clientName:(id)name eventCorrelationIdentifier:(id)correlationIdentifier;
- (BMHomeKitBase)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMHomeKitBase

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMHomeKitBase *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMHomeKitBase *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_27;
      }
    }

    if (-[BMHomeKitBase hasDuration](self, "hasDuration") || [v5 hasDuration])
    {
      if (![(BMHomeKitBase *)self hasDuration])
      {
        goto LABEL_27;
      }

      if (![v5 hasDuration])
      {
        goto LABEL_27;
      }

      [(BMHomeKitBase *)self duration];
      v14 = v13;
      [v5 duration];
      if (v14 != v15)
      {
        goto LABEL_27;
      }
    }

    homeUniqueIdentifier = [(BMHomeKitBase *)self homeUniqueIdentifier];
    homeUniqueIdentifier2 = [v5 homeUniqueIdentifier];
    v18 = homeUniqueIdentifier2;
    if (homeUniqueIdentifier == homeUniqueIdentifier2)
    {
    }

    else
    {
      homeUniqueIdentifier3 = [(BMHomeKitBase *)self homeUniqueIdentifier];
      homeUniqueIdentifier4 = [v5 homeUniqueIdentifier];
      v21 = [homeUniqueIdentifier3 isEqual:homeUniqueIdentifier4];

      if (!v21)
      {
        goto LABEL_27;
      }
    }

    if (-[BMHomeKitBase hasHomeOccupancy](self, "hasHomeOccupancy") || [v5 hasHomeOccupancy])
    {
      if (![(BMHomeKitBase *)self hasHomeOccupancy])
      {
        goto LABEL_27;
      }

      if (![v5 hasHomeOccupancy])
      {
        goto LABEL_27;
      }

      homeOccupancy = [(BMHomeKitBase *)self homeOccupancy];
      if (homeOccupancy != [v5 homeOccupancy])
      {
        goto LABEL_27;
      }
    }

    source = [(BMHomeKitBase *)self source];
    source2 = [v5 source];
    v25 = source2;
    if (source == source2)
    {
    }

    else
    {
      source3 = [(BMHomeKitBase *)self source];
      source4 = [v5 source];
      v28 = [source3 isEqual:source4];

      if (!v28)
      {
        goto LABEL_27;
      }
    }

    clientName = [(BMHomeKitBase *)self clientName];
    clientName2 = [v5 clientName];
    v31 = clientName2;
    if (clientName == clientName2)
    {
    }

    else
    {
      clientName3 = [(BMHomeKitBase *)self clientName];
      clientName4 = [v5 clientName];
      v34 = [clientName3 isEqual:clientName4];

      if (!v34)
      {
LABEL_27:
        v12 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    eventCorrelationIdentifier = [(BMHomeKitBase *)self eventCorrelationIdentifier];
    eventCorrelationIdentifier2 = [v5 eventCorrelationIdentifier];
    if (eventCorrelationIdentifier == eventCorrelationIdentifier2)
    {
      v12 = 1;
    }

    else
    {
      eventCorrelationIdentifier3 = [(BMHomeKitBase *)self eventCorrelationIdentifier];
      eventCorrelationIdentifier4 = [v5 eventCorrelationIdentifier];
      v12 = [eventCorrelationIdentifier3 isEqual:eventCorrelationIdentifier4];
    }

    goto LABEL_28;
  }

  v12 = 0;
LABEL_29:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
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
  v30[7] = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMHomeKitBase *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMHomeKitBase *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  if (![(BMHomeKitBase *)self hasDuration]|| ([(BMHomeKitBase *)self duration], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMHomeKitBase *)self duration];
    v8 = MEMORY[0x1E696AD98];
    [(BMHomeKitBase *)self duration];
    v9 = [v8 numberWithDouble:?];
  }

  homeUniqueIdentifier = [(BMHomeKitBase *)self homeUniqueIdentifier];
  if ([(BMHomeKitBase *)self hasHomeOccupancy])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMHomeKitBase homeOccupancy](self, "homeOccupancy")}];
  }

  else
  {
    v11 = 0;
  }

  source = [(BMHomeKitBase *)self source];
  clientName = [(BMHomeKitBase *)self clientName];
  eventCorrelationIdentifier = [(BMHomeKitBase *)self eventCorrelationIdentifier];
  v29[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null;
  v30[0] = null;
  v29[1] = @"duration";
  null2 = v9;
  if (!v9)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null2;
  v30[1] = null2;
  v29[2] = @"homeUniqueIdentifier";
  null3 = homeUniqueIdentifier;
  if (!homeUniqueIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v6;
  v24 = null3;
  v30[2] = null3;
  v29[3] = @"homeOccupancy";
  null4 = v11;
  if (!v11)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v9;
  v30[3] = null4;
  v29[4] = @"source";
  null5 = source;
  if (!source)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v30[4] = null5;
  v29[5] = @"clientName";
  null6 = clientName;
  if (!clientName)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v30[5] = null6;
  v29[6] = @"eventCorrelationIdentifier";
  null7 = eventCorrelationIdentifier;
  if (!eventCorrelationIdentifier)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v30[6] = null7;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:7];
  if (eventCorrelationIdentifier)
  {
    if (clientName)
    {
      goto LABEL_27;
    }

LABEL_37:

    if (source)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  if (!clientName)
  {
    goto LABEL_37;
  }

LABEL_27:
  if (source)
  {
    goto LABEL_28;
  }

LABEL_38:

LABEL_28:
  if (!v11)
  {
  }

  if (homeUniqueIdentifier)
  {
    if (v27)
    {
      goto LABEL_32;
    }

LABEL_40:

    if (v28)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

  if (!v27)
  {
    goto LABEL_40;
  }

LABEL_32:
  if (v28)
  {
    goto LABEL_33;
  }

LABEL_41:

LABEL_33:

  return v22;
}

- (BMHomeKitBase)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v70[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v16 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
    errorCopy = error;
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v26 = 0;
          v25 = 0;
          goto LABEL_34;
        }

        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v67 = *MEMORY[0x1E696A578];
        v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"duration"];
        v68 = v55;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v26 = 0;
        v25 = 0;
        *errorCopy = [v28 initWithDomain:v29 code:2 userInfo:v17];
        goto LABEL_33;
      }

      v54 = v16;
    }

    else
    {
      v54 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"homeUniqueIdentifier"];
    v50 = v7;
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v55 = 0;
          v25 = 0;
          v26 = v54;
          goto LABEL_33;
        }

        v56 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v65 = *MEMORY[0x1E696A578];
        v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"homeUniqueIdentifier"];
        v66 = v53;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v31 = [v56 initWithDomain:v30 code:2 userInfo:v18];
        v55 = 0;
        v25 = 0;
        *errorCopy = v31;
        goto LABEL_66;
      }

      v55 = v17;
    }

    else
    {
      v55 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"homeOccupancy"];
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v53 = 0;
LABEL_18:
      v19 = [dictionaryCopy objectForKeyedSubscript:@"source"];
      v47 = v16;
      v48 = v8;
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v51 = 0;
            v25 = 0;
            goto LABEL_30;
          }

          selfCopy3 = self;
          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v61 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"source"];
          v62 = v22;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          v36 = [v52 initWithDomain:v35 code:2 userInfo:v20];
          v51 = 0;
          v25 = 0;
          *errorCopy = v36;
LABEL_29:

          self = selfCopy3;
          v8 = v48;
LABEL_30:
          v16 = v47;
LABEL_31:
          v26 = v54;

LABEL_32:
          v7 = v50;
LABEL_33:

          goto LABEL_34;
        }

        v51 = v19;
      }

      else
      {
        v51 = 0;
      }

      v20 = [dictionaryCopy objectForKeyedSubscript:@"clientName"];
      if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        selfCopy3 = self;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v22 = 0;
            v25 = 0;
            goto LABEL_29;
          }

          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v59 = *MEMORY[0x1E696A578];
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientName"];
          v60 = v24;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v39 = [v37 initWithDomain:v38 code:2 userInfo:v23];
          v22 = 0;
          v25 = 0;
          *errorCopy = v39;
          goto LABEL_28;
        }

        v22 = v20;
      }

      else
      {
        selfCopy3 = self;
        v22 = 0;
      }

      v23 = [dictionaryCopy objectForKeyedSubscript:@"eventCorrelationIdentifier"];
      if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy)
          {
            v46 = objc_alloc(MEMORY[0x1E696ABC0]);
            v45 = *MEMORY[0x1E698F240];
            v57 = *MEMORY[0x1E696A578];
            v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"eventCorrelationIdentifier"];
            v58 = v40;
            v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
            *errorCopy = [v46 initWithDomain:v45 code:2 userInfo:v41];
          }

          v24 = 0;
          v25 = 0;
          goto LABEL_28;
        }

        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = [(BMHomeKitBase *)selfCopy3 initWithAbsoluteTimestamp:v48 duration:v54 homeUniqueIdentifier:v55 homeOccupancy:v53 source:v51 clientName:v22 eventCorrelationIdentifier:v24];
      selfCopy3 = v25;
LABEL_28:

      goto LABEL_29;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = v18;
      goto LABEL_18;
    }

    if (error)
    {
      v32 = objc_alloc(MEMORY[0x1E696ABC0]);
      v33 = *MEMORY[0x1E698F240];
      v63 = *MEMORY[0x1E696A578];
      v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"homeOccupancy"];
      v64 = v51;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v34 = [v32 initWithDomain:v33 code:2 userInfo:v19];
      v53 = 0;
      v25 = 0;
      *errorCopy = v34;
      goto LABEL_31;
    }

    v53 = 0;
    v25 = 0;
LABEL_66:
    v26 = v54;
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x1E695DF00];
    v10 = v7;
    v11 = [v9 alloc];
    [v10 doubleValue];
    v13 = v12;

    v14 = [v11 initWithTimeIntervalSince1970:v13];
LABEL_6:
    v8 = v14;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v8 = [v15 dateFromString:v7];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v7;
    goto LABEL_6;
  }

  if (!error)
  {
    v8 = 0;
    v25 = 0;
    goto LABEL_35;
  }

  v42 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy2 = error;
  v44 = *MEMORY[0x1E698F240];
  v69 = *MEMORY[0x1E696A578];
  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
  v70[0] = v26;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
  v8 = 0;
  v25 = 0;
  *errorCopy2 = [v42 initWithDomain:v44 code:2 userInfo:v16];
LABEL_34:

LABEL_35:
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMHomeKitBase *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_hasDuration)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_homeUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasHomeOccupancy)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_clientName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_eventCorrelationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v37.receiver = self;
  v37.super_class = BMHomeKitBase;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_61;
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
        LOBYTE(v38) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v38 & 0x7F) << v7;
        if ((v38 & 0x80) == 0)
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
        if (v15 == 1)
        {
          v5->_hasRaw_absoluteTimestamp = 1;
          v38 = 0;
          v18 = [fromCopy position] + 8;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 = v38;
          v32 = 24;
          goto LABEL_57;
        }

        if (v15 == 2)
        {
          v5->_hasDuration = 1;
          v38 = 0;
          v28 = [fromCopy position] + 8;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 8, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 = v38;
          v32 = 48;
LABEL_57:
          *(&v5->super.super.isa + v32) = v31;
          goto LABEL_58;
        }

        if (v15 != 3)
        {
          goto LABEL_33;
        }

        v16 = PBReaderReadString();
        v17 = 56;
      }

      else if (v15 > 5)
      {
        if (v15 == 6)
        {
          v16 = PBReaderReadString();
          v17 = 72;
        }

        else
        {
          if (v15 != 7)
          {
LABEL_33:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_60;
            }

            goto LABEL_58;
          }

          v16 = PBReaderReadString();
          v17 = 80;
        }
      }

      else
      {
        if (v15 == 4)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v5->_hasHomeOccupancy = 1;
          while (1)
          {
            LOBYTE(v38) = 0;
            v23 = [fromCopy position] + 1;
            if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v22 |= (v38 & 0x7F) << v20;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v13 = v21++ >= 9;
            if (v13)
            {
              v26 = 0;
              goto LABEL_52;
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

LABEL_52:
          v5->_homeOccupancy = v26;
          goto LABEL_58;
        }

        if (v15 != 5)
        {
          goto LABEL_33;
        }

        v16 = PBReaderReadString();
        v17 = 64;
      }

      v27 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_58:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_60:
    v35 = 0;
  }

  else
  {
LABEL_61:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMHomeKitBase *)self absoluteTimestamp];
  v5 = MEMORY[0x1E696AD98];
  [(BMHomeKitBase *)self duration];
  v6 = [v5 numberWithDouble:?];
  homeUniqueIdentifier = [(BMHomeKitBase *)self homeUniqueIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMHomeKitBase homeOccupancy](self, "homeOccupancy")}];
  source = [(BMHomeKitBase *)self source];
  clientName = [(BMHomeKitBase *)self clientName];
  eventCorrelationIdentifier = [(BMHomeKitBase *)self eventCorrelationIdentifier];
  v12 = [v3 initWithFormat:@"BMHomeKitBase with absoluteTimestamp: %@, duration: %@, homeUniqueIdentifier: %@, homeOccupancy: %@, source: %@, clientName: %@, eventCorrelationIdentifier: %@", absoluteTimestamp, v6, homeUniqueIdentifier, v8, source, clientName, eventCorrelationIdentifier];

  return v12;
}

- (BMHomeKitBase)initWithAbsoluteTimestamp:(id)timestamp duration:(id)duration homeUniqueIdentifier:(id)identifier homeOccupancy:(id)occupancy source:(id)source clientName:(id)name eventCorrelationIdentifier:(id)correlationIdentifier
{
  timestampCopy = timestamp;
  durationCopy = duration;
  identifierCopy = identifier;
  occupancyCopy = occupancy;
  sourceCopy = source;
  nameCopy = name;
  correlationIdentifierCopy = correlationIdentifier;
  v27.receiver = self;
  v27.super_class = BMHomeKitBase;
  v20 = [(BMEventBase *)&v27 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v20->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_absoluteTimestamp = 0;
      v21 = -1.0;
    }

    v20->_raw_absoluteTimestamp = v21;
    if (durationCopy)
    {
      v20->_hasDuration = 1;
      [durationCopy doubleValue];
    }

    else
    {
      v20->_hasDuration = 0;
      v22 = -1.0;
    }

    v20->_duration = v22;
    objc_storeStrong(&v20->_homeUniqueIdentifier, identifier);
    if (occupancyCopy)
    {
      v20->_hasHomeOccupancy = 1;
      intValue = [occupancyCopy intValue];
    }

    else
    {
      v20->_hasHomeOccupancy = 0;
      intValue = -1;
    }

    v20->_homeOccupancy = intValue;
    objc_storeStrong(&v20->_source, source);
    objc_storeStrong(&v20->_clientName, name);
    objc_storeStrong(&v20->_eventCorrelationIdentifier, correlationIdentifier);
  }

  return v20;
}

+ (id)protoFields
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"duration" number:2 type:0 subMessageClass:{0, v2}];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"homeUniqueIdentifier" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"homeOccupancy" number:4 type:2 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"source" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientName" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventCorrelationIdentifier" number:7 type:13 subMessageClass:0];
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

+ (id)columns
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"duration" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"homeUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"homeOccupancy" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"source" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientName" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventCorrelationIdentifier" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
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

    v8 = [[BMHomeKitBase alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end