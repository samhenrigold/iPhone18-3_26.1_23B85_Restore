@interface BMSiriOnDeviceDigestSegmentsCohorts
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriOnDeviceDigestSegmentsCohorts)initWithEventMetadata:(id)metadata deviceSegmentsReported:(id)reported deviceCohortsReported:(id)cohortsReported;
- (BMSiriOnDeviceDigestSegmentsCohorts)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_deviceCohortsReportedJSONArray;
- (id)_deviceSegmentsReportedJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriOnDeviceDigestSegmentsCohorts

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    eventMetadata = [(BMSiriOnDeviceDigestSegmentsCohorts *)self eventMetadata];
    eventMetadata2 = [v5 eventMetadata];
    v8 = eventMetadata2;
    if (eventMetadata == eventMetadata2)
    {
    }

    else
    {
      eventMetadata3 = [(BMSiriOnDeviceDigestSegmentsCohorts *)self eventMetadata];
      eventMetadata4 = [v5 eventMetadata];
      v11 = [eventMetadata3 isEqual:eventMetadata4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    deviceSegmentsReported = [(BMSiriOnDeviceDigestSegmentsCohorts *)self deviceSegmentsReported];
    deviceSegmentsReported2 = [v5 deviceSegmentsReported];
    v15 = deviceSegmentsReported2;
    if (deviceSegmentsReported == deviceSegmentsReported2)
    {
    }

    else
    {
      deviceSegmentsReported3 = [(BMSiriOnDeviceDigestSegmentsCohorts *)self deviceSegmentsReported];
      deviceSegmentsReported4 = [v5 deviceSegmentsReported];
      v18 = [deviceSegmentsReported3 isEqual:deviceSegmentsReported4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    deviceCohortsReported = [(BMSiriOnDeviceDigestSegmentsCohorts *)self deviceCohortsReported];
    deviceCohortsReported2 = [v5 deviceCohortsReported];
    if (deviceCohortsReported == deviceCohortsReported2)
    {
      v12 = 1;
    }

    else
    {
      deviceCohortsReported3 = [(BMSiriOnDeviceDigestSegmentsCohorts *)self deviceCohortsReported];
      deviceCohortsReported4 = [v5 deviceCohortsReported];
      v12 = [deviceCohortsReported3 isEqual:deviceCohortsReported4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  eventMetadata = [(BMSiriOnDeviceDigestSegmentsCohorts *)self eventMetadata];
  jsonDictionary = [eventMetadata jsonDictionary];

  _deviceSegmentsReportedJSONArray = [(BMSiriOnDeviceDigestSegmentsCohorts *)self _deviceSegmentsReportedJSONArray];
  _deviceCohortsReportedJSONArray = [(BMSiriOnDeviceDigestSegmentsCohorts *)self _deviceCohortsReportedJSONArray];
  v12[0] = @"eventMetadata";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"deviceSegmentsReported";
  null2 = _deviceSegmentsReportedJSONArray;
  if (!_deviceSegmentsReportedJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"deviceCohortsReported";
  null3 = _deviceCohortsReportedJSONArray;
  if (!_deviceCohortsReportedJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (_deviceCohortsReportedJSONArray)
  {
    if (_deviceSegmentsReportedJSONArray)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (jsonDictionary)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!_deviceSegmentsReportedJSONArray)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (jsonDictionary)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:

  return v10;
}

- (id)_deviceCohortsReportedJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  deviceCohortsReported = [(BMSiriOnDeviceDigestSegmentsCohorts *)self deviceCohortsReported];
  v5 = [deviceCohortsReported countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(deviceCohortsReported);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [deviceCohortsReported countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_deviceSegmentsReportedJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  deviceSegmentsReported = [(BMSiriOnDeviceDigestSegmentsCohorts *)self deviceSegmentsReported];
  v5 = [deviceSegmentsReported countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(deviceSegmentsReported);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [deviceSegmentsReported countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMSiriOnDeviceDigestSegmentsCohorts)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v91[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
  v63 = v6;
  if (v6 && (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v90 = *MEMORY[0x1E696A578];
        v91[0] = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"eventMetadata"];
        v8 = v91[0];
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:&v90 count:1];
        v27 = 0;
        *error = [v25 initWithDomain:v26 code:2 userInfo:v9];
        goto LABEL_68;
      }

      v27 = 0;
      goto LABEL_69;
    }

    v9 = v7;
    v75 = 0;
    v8 = [[BMSiriOnDeviceDigestSegmentsCohortsEventMetadata alloc] initWithJSONDictionary:v9 error:&v75];
    v24 = v75;
    if (v24)
    {
      if (error)
      {
        v24 = v24;
        *error = v24;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"deviceSegmentsReported"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  selfCopy = self;
  if (!v11)
  {
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v59 = v8;
      goto LABEL_9;
    }

    if (error)
    {
      v45 = objc_alloc(MEMORY[0x1E696ABC0]);
      v46 = *MEMORY[0x1E698F240];
      v88 = *MEMORY[0x1E696A578];
      v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"deviceSegmentsReported"];
      v89 = v64;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v27 = 0;
      *error = [v45 initWithDomain:v46 code:2 userInfo:v21];
      goto LABEL_67;
    }

LABEL_51:
    v27 = 0;
    goto LABEL_68;
  }

  v59 = v8;

  v9 = 0;
LABEL_9:
  v64 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v9 = v9;
  v12 = [v9 countByEnumeratingWithState:&v71 objects:v87 count:16];
  v60 = dictionaryCopy;
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = *v72;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v72 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v71 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (error)
        {
          v28 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v85 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"deviceSegmentsReported"];
          v86 = v17;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
          *error = [v28 initWithDomain:v29 code:2 userInfo:v30];

LABEL_32:
          v27 = 0;
          v21 = v9;
          v8 = v59;
          dictionaryCopy = v60;
          goto LABEL_66;
        }

LABEL_52:
        v27 = 0;
        v21 = v9;
        v8 = v59;
        dictionaryCopy = v60;
        goto LABEL_67;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v32 = *MEMORY[0x1E698F240];
          v83 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"deviceSegmentsReported"];
          v84 = v17;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          *error = [v31 initWithDomain:v32 code:2 userInfo:v33];

          goto LABEL_32;
        }

        goto LABEL_52;
      }

      v17 = v16;
      v18 = [BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments alloc];
      v70 = 0;
      v19 = [(BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments *)v18 initWithJSONDictionary:v17 error:&v70];
      v20 = v70;
      if (v20)
      {
        v34 = v20;
        dictionaryCopy = v60;
        if (error)
        {
          v35 = v20;
          *error = v34;
        }

        v27 = 0;
        v21 = v9;
        v8 = v59;
        goto LABEL_66;
      }

      [v64 addObject:v19];
    }

    v13 = [v9 countByEnumeratingWithState:&v71 objects:v87 count:16];
    dictionaryCopy = v60;
  }

  while (v13);
LABEL_19:

  v21 = [dictionaryCopy objectForKeyedSubscript:@"deviceCohortsReported"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v23 = [v21 isEqual:null2];

  if (v23)
  {

    v21 = 0;
LABEL_38:
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v21, "count")}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v21 = v21;
    v36 = [v21 countByEnumeratingWithState:&v66 objects:v80 count:16];
    if (!v36)
    {
      goto LABEL_48;
    }

    v37 = v36;
    v38 = *v67;
LABEL_40:
    v39 = 0;
    while (1)
    {
      if (*v67 != v38)
      {
        objc_enumerationMutation(v21);
      }

      v40 = *(*(&v66 + 1) + 8 * v39);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = v59;
        dictionaryCopy = v60;
        errorCopy2 = error;
        if (!error)
        {
          goto LABEL_64;
        }

        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = *MEMORY[0x1E698F240];
        v76 = *MEMORY[0x1E696A578];
        v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"deviceCohortsReported"];
        v77 = v41;
        v50 = MEMORY[0x1E695DF20];
        v51 = &v77;
        v52 = &v76;
        goto LABEL_59;
      }

      v41 = v40;
      v42 = [BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts alloc];
      v65 = 0;
      v43 = [(BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts *)v42 initWithJSONDictionary:v41 error:&v65];
      v44 = v65;
      if (v44)
      {
        v53 = v44;
        if (error)
        {
          v54 = v44;
          *error = v53;
        }

        v8 = v59;
        dictionaryCopy = v60;
LABEL_63:

LABEL_64:
        goto LABEL_65;
      }

      [v17 addObject:v43];

      if (v37 == ++v39)
      {
        v37 = [v21 countByEnumeratingWithState:&v66 objects:v80 count:16];
        if (v37)
        {
          goto LABEL_40;
        }

LABEL_48:

        v8 = v59;
        v27 = [(BMSiriOnDeviceDigestSegmentsCohorts *)selfCopy initWithEventMetadata:v59 deviceSegmentsReported:v64 deviceCohortsReported:v17];
        selfCopy = v27;
        dictionaryCopy = v60;
LABEL_66:

        goto LABEL_67;
      }
    }

    v8 = v59;
    dictionaryCopy = v60;
    errorCopy2 = error;
    if (!error)
    {
      goto LABEL_64;
    }

    v48 = objc_alloc(MEMORY[0x1E696ABC0]);
    v49 = *MEMORY[0x1E698F240];
    v78 = *MEMORY[0x1E696A578];
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"deviceCohortsReported"];
    v79 = v41;
    v50 = MEMORY[0x1E695DF20];
    v51 = &v79;
    v52 = &v78;
LABEL_59:
    v53 = [v50 dictionaryWithObjects:v51 forKeys:v52 count:1];
    *errorCopy2 = [v48 initWithDomain:v49 code:2 userInfo:v53];
    goto LABEL_63;
  }

  if (!v21)
  {
    goto LABEL_38;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_38;
  }

  v8 = v59;
  if (error)
  {
    v56 = objc_alloc(MEMORY[0x1E696ABC0]);
    v57 = *MEMORY[0x1E698F240];
    v81 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"deviceCohortsReported"];
    v82 = v17;
    v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    *error = [v56 initWithDomain:v57 code:2 userInfo:v58];

LABEL_65:
    v27 = 0;
    goto LABEL_66;
  }

  v27 = 0;
LABEL_67:

  self = selfCopy;
LABEL_68:

LABEL_69:
  return v27;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriOnDeviceDigestSegmentsCohorts *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_eventMetadata)
  {
    v25 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriOnDeviceDigestSegmentsCohortsEventMetadata *)self->_eventMetadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_deviceSegmentsReported;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v25 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_deviceCohortsReported;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        v25 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:{toCopy, v17}];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v13);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMSiriOnDeviceDigestSegmentsCohorts;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_33;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (v33 & 0x7F) << v9;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        if (v10++ >= 9)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        goto LABEL_33;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) == 3)
      {
        break;
      }

      if (v17 == 2)
      {
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_35;
        }

        v20 = [[BMSiriOnDeviceDigestSegmentsCohortsDeviceSegments alloc] initByReadFrom:fromCopy];
        if (!v20)
        {
          goto LABEL_35;
        }

        v21 = v20;
        v22 = v6;
LABEL_30:
        [v22 addObject:v21];
        PBReaderRecallMark();

        goto LABEL_32;
      }

      if (v17 == 1)
      {
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_35;
        }

        v18 = [[BMSiriOnDeviceDigestSegmentsCohortsEventMetadata alloc] initByReadFrom:fromCopy];
        if (!v18)
        {
          goto LABEL_35;
        }

        eventMetadata = v5->_eventMetadata;
        v5->_eventMetadata = v18;

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_32:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_33;
      }
    }

    v33 = 0;
    v34 = 0;
    if (!PBReaderPlaceMark() || (v23 = [[BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts alloc] initByReadFrom:fromCopy]) == 0)
    {
LABEL_35:

      goto LABEL_36;
    }

    v21 = v23;
    v22 = v7;
    goto LABEL_30;
  }

LABEL_33:
  v25 = [v6 copy];
  deviceSegmentsReported = v5->_deviceSegmentsReported;
  v5->_deviceSegmentsReported = v25;

  v27 = [v7 copy];
  deviceCohortsReported = v5->_deviceCohortsReported;
  v5->_deviceCohortsReported = v27;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_36:
    v30 = 0;
  }

  else
  {
LABEL_34:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  eventMetadata = [(BMSiriOnDeviceDigestSegmentsCohorts *)self eventMetadata];
  deviceSegmentsReported = [(BMSiriOnDeviceDigestSegmentsCohorts *)self deviceSegmentsReported];
  deviceCohortsReported = [(BMSiriOnDeviceDigestSegmentsCohorts *)self deviceCohortsReported];
  v7 = [v3 initWithFormat:@"BMSiriOnDeviceDigestSegmentsCohorts with eventMetadata: %@, deviceSegmentsReported: %@, deviceCohortsReported: %@", eventMetadata, deviceSegmentsReported, deviceCohortsReported];

  return v7;
}

- (BMSiriOnDeviceDigestSegmentsCohorts)initWithEventMetadata:(id)metadata deviceSegmentsReported:(id)reported deviceCohortsReported:(id)cohortsReported
{
  metadataCopy = metadata;
  reportedCopy = reported;
  cohortsReportedCopy = cohortsReported;
  v14.receiver = self;
  v14.super_class = BMSiriOnDeviceDigestSegmentsCohorts;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_eventMetadata, metadata);
    objc_storeStrong(&v12->_deviceSegmentsReported, reported);
    objc_storeStrong(&v12->_deviceCohortsReported, cohortsReported);
  }

  return v12;
}

+ (id)protoFields
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventMetadata" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceSegmentsReported" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v7[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceCohortsReported" number:3 type:14 subMessageClass:objc_opt_class()];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

+ (id)columns
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"eventMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_343];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"deviceSegmentsReported_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_345];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"deviceCohortsReported_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_347];
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

id __46__BMSiriOnDeviceDigestSegmentsCohorts_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _deviceCohortsReportedJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __46__BMSiriOnDeviceDigestSegmentsCohorts_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _deviceSegmentsReportedJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __46__BMSiriOnDeviceDigestSegmentsCohorts_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 eventMetadata];
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

    v8 = [[BMSiriOnDeviceDigestSegmentsCohorts alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end