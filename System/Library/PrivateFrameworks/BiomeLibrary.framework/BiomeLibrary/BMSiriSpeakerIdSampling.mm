@interface BMSiriSpeakerIdSampling
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriSpeakerIdSampling)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriSpeakerIdSampling)initWithTimestamp:(id)timestamp onDeviceSampleIdentifiers:(id)identifiers enrollmentIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (id)_onDeviceSampleIdentifiersJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriSpeakerIdSampling

+ (id)columns
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"onDeviceSampleIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_91178];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"enrollmentIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    timestamp = [(BMSiriSpeakerIdSampling *)self timestamp];
    timestamp2 = [v5 timestamp];
    v8 = timestamp2;
    if (timestamp == timestamp2)
    {
    }

    else
    {
      timestamp3 = [(BMSiriSpeakerIdSampling *)self timestamp];
      timestamp4 = [v5 timestamp];
      v11 = [timestamp3 isEqual:timestamp4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    onDeviceSampleIdentifiers = [(BMSiriSpeakerIdSampling *)self onDeviceSampleIdentifiers];
    onDeviceSampleIdentifiers2 = [v5 onDeviceSampleIdentifiers];
    v15 = onDeviceSampleIdentifiers2;
    if (onDeviceSampleIdentifiers == onDeviceSampleIdentifiers2)
    {
    }

    else
    {
      onDeviceSampleIdentifiers3 = [(BMSiriSpeakerIdSampling *)self onDeviceSampleIdentifiers];
      onDeviceSampleIdentifiers4 = [v5 onDeviceSampleIdentifiers];
      v18 = [onDeviceSampleIdentifiers3 isEqual:onDeviceSampleIdentifiers4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    enrollmentIdentifier = [(BMSiriSpeakerIdSampling *)self enrollmentIdentifier];
    enrollmentIdentifier2 = [v5 enrollmentIdentifier];
    if (enrollmentIdentifier == enrollmentIdentifier2)
    {
      v12 = 1;
    }

    else
    {
      enrollmentIdentifier3 = [(BMSiriSpeakerIdSampling *)self enrollmentIdentifier];
      enrollmentIdentifier4 = [v5 enrollmentIdentifier];
      v12 = [enrollmentIdentifier3 isEqual:enrollmentIdentifier4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
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
  v15[3] = *MEMORY[0x1E69E9840];
  timestamp = [(BMSiriSpeakerIdSampling *)self timestamp];
  if (timestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMSiriSpeakerIdSampling *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  _onDeviceSampleIdentifiersJSONArray = [(BMSiriSpeakerIdSampling *)self _onDeviceSampleIdentifiersJSONArray];
  enrollmentIdentifier = [(BMSiriSpeakerIdSampling *)self enrollmentIdentifier];
  v14[0] = @"timestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"onDeviceSampleIdentifiers";
  null2 = _onDeviceSampleIdentifiersJSONArray;
  if (!_onDeviceSampleIdentifiersJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"enrollmentIdentifier";
  null3 = enrollmentIdentifier;
  if (!enrollmentIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (enrollmentIdentifier)
  {
    if (_onDeviceSampleIdentifiersJSONArray)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (v6)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!_onDeviceSampleIdentifiersJSONArray)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:

  return v12;
}

- (id)_onDeviceSampleIdentifiersJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  onDeviceSampleIdentifiers = [(BMSiriSpeakerIdSampling *)self onDeviceSampleIdentifiers];
  v5 = [onDeviceSampleIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(onDeviceSampleIdentifiers);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [onDeviceSampleIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMSiriSpeakerIdSampling)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v64[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = MEMORY[0x1E695DF00];
      v20 = v6;
      v21 = [v19 alloc];
      [v20 doubleValue];
      v23 = v22;

      v7 = [v21 initWithTimeIntervalSince1970:v23];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v7 = [v33 dateFromString:v6];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v42 = objc_alloc(MEMORY[0x1E696ABC0]);
            v43 = *MEMORY[0x1E698F240];
            v63 = *MEMORY[0x1E696A578];
            v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
            v64[0] = v8;
            v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
            v44 = [v42 initWithDomain:v43 code:2 userInfo:v11];
            v7 = 0;
            selfCopy3 = 0;
            *error = v44;
            goto LABEL_39;
          }

          v7 = 0;
          selfCopy3 = 0;
          goto LABEL_41;
        }

        v7 = v6;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"onDeviceSampleIdentifiers"];
  null = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 isEqual:null];

  if (v10)
  {
    v45 = dictionaryCopy;
    v46 = v7;
    selfCopy2 = self;

    v8 = 0;
  }

  else
  {
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v61 = *MEMORY[0x1E696A578];
          v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"onDeviceSampleIdentifiers"];
          v62 = v11;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          v35 = [v48 initWithDomain:v34 code:2 userInfo:v18];
          selfCopy3 = 0;
          *error = v35;
          goto LABEL_38;
        }

        selfCopy3 = 0;
        goto LABEL_40;
      }
    }

    v45 = dictionaryCopy;
    v46 = v7;
    selfCopy2 = self;
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = v8;
  v12 = [v8 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v12;
  v14 = *v51;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v51 != v14)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v50 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        if (error)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v26 = *MEMORY[0x1E698F240];
          v58 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"onDeviceSampleIdentifiers"];
          v59 = v17;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v28 = v25;
          v29 = v26;
LABEL_27:
          *errorCopy2 = [v28 initWithDomain:v29 code:2 userInfo:v27];

          selfCopy3 = 0;
          v18 = v8;
          v7 = v46;
          self = selfCopy2;
          dictionaryCopy = v45;
          goto LABEL_37;
        }

LABEL_28:
        selfCopy3 = 0;
        v18 = v8;
        v7 = v46;
        self = selfCopy2;
        dictionaryCopy = v45;
        goto LABEL_38;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"onDeviceSampleIdentifiers"];
          v57 = v17;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v28 = v30;
          v29 = v31;
          errorCopy2 = error;
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      [v11 addObject:v16];
    }

    v13 = [v8 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_18:

  dictionaryCopy = v45;
  v17 = [v45 objectForKeyedSubscript:@"enrollmentIdentifier"];
  if (!v17)
  {
    v18 = 0;
    self = selfCopy2;
    goto LABEL_36;
  }

  objc_opt_class();
  self = selfCopy2;
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
LABEL_36:
    v7 = v46;
    self = [(BMSiriSpeakerIdSampling *)self initWithTimestamp:v46 onDeviceSampleIdentifiers:v11 enrollmentIdentifier:v18];
    selfCopy3 = self;
  }

  else
  {
    if (error)
    {
      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      v38 = *MEMORY[0x1E698F240];
      v54 = *MEMORY[0x1E696A578];
      v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"enrollmentIdentifier"];
      v55 = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v41 = v38;
      self = selfCopy2;
      *error = [v37 initWithDomain:v41 code:2 userInfo:v40];
    }

    v18 = 0;
    selfCopy3 = 0;
    v7 = v46;
  }

LABEL_37:

LABEL_38:
LABEL_39:

LABEL_40:
LABEL_41:

  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriSpeakerIdSampling *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasRaw_timestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_onDeviceSampleIdentifiers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_enrollmentIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v30.receiver = self;
  v30.super_class = BMSiriSpeakerIdSampling;
  v5 = [(BMEventBase *)&v30 init];
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v31 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v31) & 0x7F) << v8;
        if ((LOBYTE(v31) & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        enrollmentIdentifier = v5->_enrollmentIdentifier;
        v5->_enrollmentIdentifier = v21;
      }

      else if (v16 == 2)
      {
        v19 = PBReaderReadString();
        if (!v19)
        {
          goto LABEL_36;
        }

        v20 = v19;
        [v6 addObject:v19];
      }

      else if (v16 == 1)
      {
        v5->_hasRaw_timestamp = 1;
        v31 = 0.0;
        v17 = [fromCopy position] + 8;
        if (v17 >= [fromCopy position] && (v18 = objc_msgSend(fromCopy, "position") + 8, v18 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v31 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_timestamp = v31;
      }

      else if (!PBReaderSkipValueWithTag())
      {
LABEL_36:

        goto LABEL_33;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v25 = [v6 copy];
  onDeviceSampleIdentifiers = v5->_onDeviceSampleIdentifiers;
  v5->_onDeviceSampleIdentifiers = v25;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_33:
    v28 = 0;
  }

  else
  {
LABEL_34:
    v28 = v5;
  }

  return v28;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  timestamp = [(BMSiriSpeakerIdSampling *)self timestamp];
  onDeviceSampleIdentifiers = [(BMSiriSpeakerIdSampling *)self onDeviceSampleIdentifiers];
  enrollmentIdentifier = [(BMSiriSpeakerIdSampling *)self enrollmentIdentifier];
  v7 = [v3 initWithFormat:@"BMSiriSpeakerIdSampling with timestamp: %@, onDeviceSampleIdentifiers: %@, enrollmentIdentifier: %@", timestamp, onDeviceSampleIdentifiers, enrollmentIdentifier];

  return v7;
}

- (BMSiriSpeakerIdSampling)initWithTimestamp:(id)timestamp onDeviceSampleIdentifiers:(id)identifiers enrollmentIdentifier:(id)identifier
{
  timestampCopy = timestamp;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = BMSiriSpeakerIdSampling;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v11->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v11->_hasRaw_timestamp = 0;
      v12 = -1.0;
    }

    v11->_raw_timestamp = v12;
    objc_storeStrong(&v11->_onDeviceSampleIdentifiers, identifiers);
    objc_storeStrong(&v11->_enrollmentIdentifier, identifier);
  }

  return v11;
}

+ (id)protoFields
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"onDeviceSampleIdentifiers" number:2 type:13 subMessageClass:{0, v2}];
  v7[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"enrollmentIdentifier" number:3 type:13 subMessageClass:0];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

id __34__BMSiriSpeakerIdSampling_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _onDeviceSampleIdentifiersJSONArray];
  v5 = BMConvertObjectToJSONString();

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

    v8 = [[BMSiriSpeakerIdSampling alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end