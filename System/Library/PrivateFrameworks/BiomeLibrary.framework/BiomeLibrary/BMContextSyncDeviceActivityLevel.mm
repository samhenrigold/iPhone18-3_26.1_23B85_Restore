@interface BMContextSyncDeviceActivityLevel
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMContextSyncDeviceActivityLevel)initWithID:(id)d deviceUUID:(id)iD deviceActivityState:(id)state;
- (BMContextSyncDeviceActivityLevel)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_deviceActivityStateJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMContextSyncDeviceActivityLevel

+ (id)columns
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceUUID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"deviceActivityState_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_153_27242];
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
    v6 = [(BMContextSyncDeviceActivityLevel *)self ID];
    v7 = [v5 ID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMContextSyncDeviceActivityLevel *)self ID];
      v10 = [v5 ID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    deviceUUID = [(BMContextSyncDeviceActivityLevel *)self deviceUUID];
    deviceUUID2 = [v5 deviceUUID];
    v15 = deviceUUID2;
    if (deviceUUID == deviceUUID2)
    {
    }

    else
    {
      deviceUUID3 = [(BMContextSyncDeviceActivityLevel *)self deviceUUID];
      deviceUUID4 = [v5 deviceUUID];
      v18 = [deviceUUID3 isEqual:deviceUUID4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    deviceActivityState = [(BMContextSyncDeviceActivityLevel *)self deviceActivityState];
    deviceActivityState2 = [v5 deviceActivityState];
    if (deviceActivityState == deviceActivityState2)
    {
      v12 = 1;
    }

    else
    {
      deviceActivityState3 = [(BMContextSyncDeviceActivityLevel *)self deviceActivityState];
      deviceActivityState4 = [v5 deviceActivityState];
      v12 = [deviceActivityState3 isEqual:deviceActivityState4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMContextSyncDeviceActivityLevel *)self ID];
  deviceUUID = [(BMContextSyncDeviceActivityLevel *)self deviceUUID];
  _deviceActivityStateJSONArray = [(BMContextSyncDeviceActivityLevel *)self _deviceActivityStateJSONArray];
  v11[0] = @"ID";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v11[1] = @"deviceUUID";
  null2 = deviceUUID;
  if (!deviceUUID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v11[2] = @"deviceActivityState";
  null3 = _deviceActivityStateJSONArray;
  if (!_deviceActivityStateJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (_deviceActivityStateJSONArray)
  {
    if (deviceUUID)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!deviceUUID)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:

  return v9;
}

- (id)_deviceActivityStateJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  deviceActivityState = [(BMContextSyncDeviceActivityLevel *)self deviceActivityState];
  v5 = [deviceActivityState countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(deviceActivityState);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [deviceActivityState countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMContextSyncDeviceActivityLevel)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v71[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"ID"];
  v8 = 0x1E695D000uLL;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        selfCopy2 = 0;
        goto LABEL_44;
      }

      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v70 = *MEMORY[0x1E696A578];
      errorCopy = error;
      v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"ID"];
      v71[0] = v30;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
      error = 0;
      selfCopy2 = 0;
      *errorCopy = [v27 initWithDomain:v28 code:2 userInfo:v10];
      v11 = v30;
      goto LABEL_43;
    }

    errorCopy3 = error;
    error = v7;
  }

  else
  {
    errorCopy3 = error;
    error = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"deviceUUID"];
  v54 = v7;
  v55 = v9;
  if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = 0;
LABEL_7:
    v12 = [dictionaryCopy objectForKeyedSubscript:@"deviceActivityState"];
    null = [MEMORY[0x1E695DFB0] null];
    v14 = [v12 isEqual:null];

    if (v14)
    {
      v50 = v11;
      errorCopy5 = error;
      v52 = dictionaryCopy;

      v12 = 0;
LABEL_12:
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v12 = v12;
      v16 = [v12 countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = v16;
      v18 = *v58;
      selfCopy = self;
LABEL_14:
      v19 = 0;
      while (1)
      {
        if (*v58 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v57 + 1) + 8 * v19);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          self = selfCopy;
          error = errorCopy5;
          v36 = errorCopy3;
          if (!errorCopy3)
          {
            goto LABEL_40;
          }

          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v61 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"deviceActivityState"];
          v62 = v22;
          v39 = MEMORY[0x1E695DF20];
          v40 = &v62;
          v41 = &v61;
          goto LABEL_35;
        }

        v21 = v8;
        v22 = v20;
        v23 = [BMContextSyncDeviceActivityLevelDeviceActivityState alloc];
        v56 = 0;
        v24 = [(BMContextSyncDeviceActivityLevelDeviceActivityState *)v23 initWithJSONDictionary:v22 error:&v56];
        v25 = v56;
        if (v25)
        {
          v42 = v25;
          if (errorCopy3)
          {
            v43 = v25;
            *errorCopy3 = v42;
          }

          self = selfCopy;
          error = errorCopy5;
LABEL_39:

LABEL_40:
          selfCopy2 = 0;
          dictionaryCopy = v52;
          v11 = v50;
          goto LABEL_41;
        }

        [v15 addObject:v24];

        ++v19;
        v8 = v21;
        if (v17 == v19)
        {
          v17 = [v12 countByEnumeratingWithState:&v57 objects:v65 count:16];
          self = selfCopy;
          if (v17)
          {
            goto LABEL_14;
          }

LABEL_22:

          v11 = v50;
          error = errorCopy5;
          self = [(BMContextSyncDeviceActivityLevel *)self initWithID:errorCopy5 deviceUUID:v50 deviceActivityState:v15];
          selfCopy2 = self;
          dictionaryCopy = v52;
LABEL_41:

          v7 = v54;
          goto LABEL_42;
        }
      }

      self = selfCopy;
      error = errorCopy5;
      v36 = errorCopy3;
      if (!errorCopy3)
      {
        goto LABEL_40;
      }

      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      v38 = *MEMORY[0x1E698F240];
      v63 = *MEMORY[0x1E696A578];
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"deviceActivityState"];
      v64 = v22;
      v39 = MEMORY[0x1E695DF20];
      v40 = &v64;
      v41 = &v63;
LABEL_35:
      v42 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:1];
      *v36 = [v37 initWithDomain:v38 code:2 userInfo:v42];
      goto LABEL_39;
    }

    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v50 = v11;
      errorCopy5 = error;
      v52 = dictionaryCopy;
      goto LABEL_12;
    }

    if (errorCopy3)
    {
      v45 = objc_alloc(MEMORY[0x1E696ABC0]);
      v46 = *MEMORY[0x1E698F240];
      v66 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"deviceActivityState"];
      v67 = v15;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      *errorCopy3 = [v45 initWithDomain:v46 code:2 userInfo:v47];

      selfCopy2 = 0;
      goto LABEL_41;
    }

    selfCopy2 = 0;
LABEL_42:

    v10 = v55;
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    goto LABEL_7;
  }

  if (errorCopy3)
  {
    v31 = objc_alloc(MEMORY[0x1E696ABC0]);
    v32 = *MEMORY[0x1E698F240];
    v68 = *MEMORY[0x1E696A578];
    selfCopy3 = self;
    v34 = objc_alloc(MEMORY[0x1E696AEC0]);
    v48 = objc_opt_class();
    v35 = v34;
    self = selfCopy3;
    v12 = [v35 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v48, @"deviceUUID"];
    v69 = v12;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v11 = 0;
    selfCopy2 = 0;
    *errorCopy3 = [v31 initWithDomain:v32 code:2 userInfo:v15];
    goto LABEL_41;
  }

  v11 = 0;
  selfCopy2 = 0;
LABEL_43:

LABEL_44:
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMContextSyncDeviceActivityLevel *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_ID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceUUID)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_deviceActivityState;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v28.receiver = self;
  v28.super_class = BMContextSyncDeviceActivityLevel;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_31;
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
        LOBYTE(v29[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v29 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v29[0] & 0x7F) << v8;
        if ((v29[0] & 0x80) == 0)
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
        v29[0] = 0;
        v29[1] = 0;
        if (!PBReaderPlaceMark() || (v20 = [[BMContextSyncDeviceActivityLevelDeviceActivityState alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_33:

          goto LABEL_30;
        }

        v21 = v20;
        [v6 addObject:v20];
        PBReaderRecallMark();
      }

      else
      {
        if (v16 == 2)
        {
          v17 = PBReaderReadString();
          v18 = 32;
          goto LABEL_23;
        }

        if (v16 == 1)
        {
          v17 = PBReaderReadString();
          v18 = 24;
LABEL_23:
          v19 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_28;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_33;
        }
      }

LABEL_28:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v23 = [v6 copy];
  deviceActivityState = v5->_deviceActivityState;
  v5->_deviceActivityState = v23;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_30:
    v26 = 0;
  }

  else
  {
LABEL_31:
    v26 = v5;
  }

  return v26;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMContextSyncDeviceActivityLevel *)self ID];
  deviceUUID = [(BMContextSyncDeviceActivityLevel *)self deviceUUID];
  deviceActivityState = [(BMContextSyncDeviceActivityLevel *)self deviceActivityState];
  v7 = [v3 initWithFormat:@"BMContextSyncDeviceActivityLevel with ID: %@, deviceUUID: %@, deviceActivityState: %@", v4, deviceUUID, deviceActivityState];

  return v7;
}

- (BMContextSyncDeviceActivityLevel)initWithID:(id)d deviceUUID:(id)iD deviceActivityState:(id)state
{
  dCopy = d;
  iDCopy = iD;
  stateCopy = state;
  v14.receiver = self;
  v14.super_class = BMContextSyncDeviceActivityLevel;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_ID, d);
    objc_storeStrong(&v12->_deviceUUID, iD);
    objc_storeStrong(&v12->_deviceActivityState, state);
  }

  return v12;
}

+ (id)protoFields
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceUUID" number:2 type:13 subMessageClass:{0, v2}];
  v7[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceActivityState" number:3 type:14 subMessageClass:objc_opt_class()];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

id __43__BMContextSyncDeviceActivityLevel_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _deviceActivityStateJSONArray];
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

    v8 = [[BMContextSyncDeviceActivityLevel alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end