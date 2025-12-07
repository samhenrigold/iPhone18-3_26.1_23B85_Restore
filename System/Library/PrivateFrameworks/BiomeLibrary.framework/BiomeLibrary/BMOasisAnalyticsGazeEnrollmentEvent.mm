@interface BMOasisAnalyticsGazeEnrollmentEvent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMOasisAnalyticsGazeEnrollmentEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMOasisAnalyticsGazeEnrollmentEvent)initWithMetadata:(id)metadata payload:(id)payload fixationSamples:(id)samples qualityTrace:(id)trace;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_fixationSamplesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMOasisAnalyticsGazeEnrollmentEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    metadata = [(BMOasisAnalyticsGazeEnrollmentEvent *)self metadata];
    metadata2 = [v5 metadata];
    v8 = metadata2;
    if (metadata == metadata2)
    {
    }

    else
    {
      metadata3 = [(BMOasisAnalyticsGazeEnrollmentEvent *)self metadata];
      metadata4 = [v5 metadata];
      v11 = [metadata3 isEqual:metadata4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    payload = [(BMOasisAnalyticsGazeEnrollmentEvent *)self payload];
    payload2 = [v5 payload];
    v15 = payload2;
    if (payload == payload2)
    {
    }

    else
    {
      payload3 = [(BMOasisAnalyticsGazeEnrollmentEvent *)self payload];
      payload4 = [v5 payload];
      v18 = [payload3 isEqual:payload4];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    fixationSamples = [(BMOasisAnalyticsGazeEnrollmentEvent *)self fixationSamples];
    fixationSamples2 = [v5 fixationSamples];
    v21 = fixationSamples2;
    if (fixationSamples == fixationSamples2)
    {
    }

    else
    {
      fixationSamples3 = [(BMOasisAnalyticsGazeEnrollmentEvent *)self fixationSamples];
      fixationSamples4 = [v5 fixationSamples];
      v24 = [fixationSamples3 isEqual:fixationSamples4];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    qualityTrace = [(BMOasisAnalyticsGazeEnrollmentEvent *)self qualityTrace];
    qualityTrace2 = [v5 qualityTrace];
    if (qualityTrace == qualityTrace2)
    {
      v12 = 1;
    }

    else
    {
      qualityTrace3 = [(BMOasisAnalyticsGazeEnrollmentEvent *)self qualityTrace];
      qualityTrace4 = [v5 qualityTrace];
      v12 = [qualityTrace3 isEqual:qualityTrace4];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  metadata = [(BMOasisAnalyticsGazeEnrollmentEvent *)self metadata];
  jsonDictionary = [metadata jsonDictionary];

  payload = [(BMOasisAnalyticsGazeEnrollmentEvent *)self payload];
  jsonDictionary2 = [payload jsonDictionary];

  _fixationSamplesJSONArray = [(BMOasisAnalyticsGazeEnrollmentEvent *)self _fixationSamplesJSONArray];
  qualityTrace = [(BMOasisAnalyticsGazeEnrollmentEvent *)self qualityTrace];
  jsonDictionary3 = [qualityTrace jsonDictionary];

  v16[0] = @"metadata";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  v16[1] = @"payload";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"fixationSamples";
  null3 = _fixationSamplesJSONArray;
  if (!_fixationSamplesJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v16[3] = @"qualityTrace";
  null4 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = null4;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (jsonDictionary3)
  {
    if (_fixationSamplesJSONArray)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (_fixationSamplesJSONArray)
    {
LABEL_11:
      if (jsonDictionary2)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (jsonDictionary)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!jsonDictionary2)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (jsonDictionary)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:

  return v14;
}

- (id)_fixationSamplesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  fixationSamples = [(BMOasisAnalyticsGazeEnrollmentEvent *)self fixationSamples];
  v5 = [fixationSamples countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(fixationSamples);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [fixationSamples countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMOasisAnalyticsGazeEnrollmentEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v87[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        v28 = v7;
        v29 = objc_alloc(MEMORY[0x1E696AEC0]);
        v57 = objc_opt_class();
        v30 = v29;
        v7 = v28;
        v87[0] = [v30 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v57, @"metadata"];
        v8 = v87[0];
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
        v32 = v27;
        v9 = v31;
        selfCopy3 = 0;
        *error = [v26 initWithDomain:v32 code:2 userInfo:v31];
        goto LABEL_59;
      }

      selfCopy3 = 0;
      goto LABEL_60;
    }

    v9 = v7;
    v74 = 0;
    v8 = [[BMOasisAnalyticsMetadata alloc] initWithJSONDictionary:v9 error:&v74];
    v13 = v74;
    if (v13)
    {
      if (error)
      {
        v13 = v13;
        *error = v13;
      }

      selfCopy3 = 0;
      goto LABEL_59;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"payload"];
  errorCopy = error;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = v9;
        v35 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"payload"];
        v85 = v36;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v37 = v33;
        v38 = v35;
        v9 = v34;
        v39 = v36;
        selfCopy3 = 0;
        *errorCopy = [v37 initWithDomain:v38 code:2 userInfo:v10];
        goto LABEL_58;
      }

      selfCopy3 = 0;
      goto LABEL_59;
    }

    v10 = v9;
    v73 = 0;
    v64 = [[BMGazeEnrollmentSample alloc] initWithJSONDictionary:v10 error:&v73];
    v25 = v73;
    if (v25)
    {
      if (errorCopy)
      {
        v25 = v25;
        *errorCopy = v25;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v64 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"fixationSamples"];
  null = [MEMORY[0x1E695DFB0] null];
  v12 = [v10 isEqual:null];

  if (!v12)
  {
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v60 = v8;
      v61 = v7;
      selfCopy2 = self;
      goto LABEL_17;
    }

    if (errorCopy)
    {
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = *MEMORY[0x1E698F240];
      v82 = *MEMORY[0x1E696A578];
      v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"fixationSamples"];
      v83 = v66;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      v51 = [v49 initWithDomain:v50 code:2 userInfo:v24];
      selfCopy3 = 0;
      *errorCopy = v51;
      goto LABEL_50;
    }

LABEL_51:
    selfCopy3 = 0;
    v39 = v64;
    goto LABEL_58;
  }

  v60 = v8;
  v61 = v7;
  selfCopy2 = self;

  v10 = 0;
LABEL_17:
  v66 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v10 = v10;
  v15 = [v10 countByEnumeratingWithState:&v69 objects:v81 count:16];
  v63 = v9;
  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = v15;
  v17 = *v70;
  v59 = dictionaryCopy;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v70 != v17)
      {
        objc_enumerationMutation(v10);
      }

      v19 = *(*(&v69 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = errorCopy;
        if (errorCopy)
        {
          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = *MEMORY[0x1E698F240];
          v79 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"fixationSamples"];
          v80 = v20;
          v43 = MEMORY[0x1E695DF20];
          v44 = &v80;
          v45 = &v79;
LABEL_43:
          v46 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:1];
          *v40 = [v41 initWithDomain:v42 code:2 userInfo:v46];

          selfCopy3 = 0;
          v24 = v10;
          dictionaryCopy = v59;
          v7 = v61;
          self = selfCopy2;
          goto LABEL_47;
        }

LABEL_52:
        selfCopy3 = 0;
        v24 = v10;
        dictionaryCopy = v59;
        v8 = v60;
        v7 = v61;
        self = selfCopy2;
        v9 = v63;
        v39 = v64;
        goto LABEL_57;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v40 = errorCopy;
        if (errorCopy)
        {
          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = *MEMORY[0x1E698F240];
          v77 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fixationSamples"];
          v78 = v20;
          v43 = MEMORY[0x1E695DF20];
          v44 = &v78;
          v45 = &v77;
          goto LABEL_43;
        }

        goto LABEL_52;
      }

      v20 = v19;
      v21 = [BMOasisAnalyticsGazeSample alloc];
      v68 = 0;
      v22 = [(BMOasisAnalyticsGazeSample *)v21 initWithJSONDictionary:v20 error:&v68];
      v23 = v68;
      if (v23)
      {
        v47 = v23;
        v7 = v61;
        if (errorCopy)
        {
          v48 = v23;
          *errorCopy = v47;
        }

        selfCopy3 = 0;
        v24 = v10;
        dictionaryCopy = v59;
        self = selfCopy2;
        goto LABEL_47;
      }

      [v66 addObject:v22];
    }

    v16 = [v10 countByEnumeratingWithState:&v69 objects:v81 count:16];
    dictionaryCopy = v59;
    v9 = v63;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v24 = [dictionaryCopy objectForKeyedSubscript:@"qualityTrace"];
  if (!v24)
  {
    v20 = 0;
    v7 = v61;
    self = selfCopy2;
LABEL_54:
    v8 = v60;
    v39 = v64;
    goto LABEL_55;
  }

  objc_opt_class();
  v7 = v61;
  self = selfCopy2;
  if (objc_opt_isKindOfClass())
  {
    v20 = 0;
    goto LABEL_54;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy)
    {
      v58 = objc_alloc(MEMORY[0x1E696ABC0]);
      v55 = *MEMORY[0x1E698F240];
      v75 = *MEMORY[0x1E696A578];
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"qualityTrace"];
      v76 = v20;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      *errorCopy = [v58 initWithDomain:v55 code:2 userInfo:v56];

      selfCopy3 = 0;
LABEL_47:
      v8 = v60;
      v39 = v64;
      goto LABEL_56;
    }

    selfCopy3 = 0;
    v8 = v60;
LABEL_50:
    v39 = v64;
    goto LABEL_57;
  }

  v53 = v24;
  v67 = 0;
  v20 = [[BMOasisAnalyticsQualityTrace alloc] initWithJSONDictionary:v53 error:&v67];
  v54 = v67;
  v8 = v60;
  v39 = v64;
  if (!v54)
  {

LABEL_55:
    self = [(BMOasisAnalyticsGazeEnrollmentEvent *)self initWithMetadata:v8 payload:v39 fixationSamples:v66 qualityTrace:v20];
    selfCopy3 = self;
    goto LABEL_56;
  }

  if (errorCopy)
  {
    v54 = v54;
    *errorCopy = v54;
  }

  selfCopy3 = 0;
  v24 = v53;
LABEL_56:

  v9 = v63;
LABEL_57:

LABEL_58:
LABEL_59:

LABEL_60:
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsGazeEnrollmentEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_metadata)
  {
    v15 = 0;
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsMetadata *)self->_metadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_payload)
  {
    v15 = 0;
    PBDataWriterPlaceMark();
    [(BMGazeEnrollmentSample *)self->_payload writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_fixationSamples;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        v15 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:{toCopy, v11}];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_qualityTrace)
  {
    v15 = 0;
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsQualityTrace *)self->_qualityTrace writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v28.receiver = self;
  v28.super_class = BMOasisAnalyticsGazeEnrollmentEvent;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_39;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v29) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v29 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v29 & 0x7F) << v8;
        if ((v29 & 0x80) == 0)
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
        goto LABEL_39;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      if (v16 != 3)
      {
        if (v16 == 4)
        {
          v29 = 0;
          v30 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_41;
          }

          v17 = [[BMOasisAnalyticsQualityTrace alloc] initByReadFrom:fromCopy];
          if (!v17)
          {
            goto LABEL_41;
          }

          v18 = 48;
          goto LABEL_34;
        }

LABEL_29:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v29 = 0;
      v30 = 0;
      if (!PBReaderPlaceMark() || (v20 = [[BMOasisAnalyticsGazeSample alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_41:

        goto LABEL_42;
      }

      v21 = v20;
      [v6 addObject:v20];
      PBReaderRecallMark();

LABEL_38:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_39;
      }
    }

    if (v16 == 1)
    {
      v29 = 0;
      v30 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_41;
      }

      v17 = [[BMOasisAnalyticsMetadata alloc] initByReadFrom:fromCopy];
      if (!v17)
      {
        goto LABEL_41;
      }

      v18 = 24;
      goto LABEL_34;
    }

    if (v16 == 2)
    {
      v29 = 0;
      v30 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_41;
      }

      v17 = [[BMGazeEnrollmentSample alloc] initByReadFrom:fromCopy];
      if (!v17)
      {
        goto LABEL_41;
      }

      v18 = 32;
LABEL_34:
      v19 = *(&v5->super.super.isa + v18);
      *(&v5->super.super.isa + v18) = v17;

      PBReaderRecallMark();
      goto LABEL_38;
    }

    goto LABEL_29;
  }

LABEL_39:
  v23 = [v6 copy];
  fixationSamples = v5->_fixationSamples;
  v5->_fixationSamples = v23;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_42:
    v26 = 0;
  }

  else
  {
LABEL_40:
    v26 = v5;
  }

  return v26;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  metadata = [(BMOasisAnalyticsGazeEnrollmentEvent *)self metadata];
  payload = [(BMOasisAnalyticsGazeEnrollmentEvent *)self payload];
  fixationSamples = [(BMOasisAnalyticsGazeEnrollmentEvent *)self fixationSamples];
  qualityTrace = [(BMOasisAnalyticsGazeEnrollmentEvent *)self qualityTrace];
  v8 = [v3 initWithFormat:@"BMOasisAnalyticsGazeEnrollmentEvent with metadata: %@, payload: %@, fixationSamples: %@, qualityTrace: %@", metadata, payload, fixationSamples, qualityTrace];

  return v8;
}

- (BMOasisAnalyticsGazeEnrollmentEvent)initWithMetadata:(id)metadata payload:(id)payload fixationSamples:(id)samples qualityTrace:(id)trace
{
  metadataCopy = metadata;
  payloadCopy = payload;
  samplesCopy = samples;
  traceCopy = trace;
  v17.receiver = self;
  v17.super_class = BMOasisAnalyticsGazeEnrollmentEvent;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_metadata, metadata);
    objc_storeStrong(&v15->_payload, payload);
    objc_storeStrong(&v15->_fixationSamples, samples);
    objc_storeStrong(&v15->_qualityTrace, trace);
  }

  return v15;
}

+ (id)protoFields
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadata" number:1 type:14 subMessageClass:objc_opt_class()];
  v8[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"payload" number:2 type:14 subMessageClass:objc_opt_class()];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fixationSamples" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qualityTrace" number:4 type:14 subMessageClass:objc_opt_class()];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

+ (id)columns
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"metadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_138];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"payload_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_140];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"fixationSamples_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_142_94408];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"qualityTrace_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_144_94409];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

id __46__BMOasisAnalyticsGazeEnrollmentEvent_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 qualityTrace];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __46__BMOasisAnalyticsGazeEnrollmentEvent_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _fixationSamplesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __46__BMOasisAnalyticsGazeEnrollmentEvent_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 payload];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __46__BMOasisAnalyticsGazeEnrollmentEvent_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 metadata];
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

    v8 = [[BMOasisAnalyticsGazeEnrollmentEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end