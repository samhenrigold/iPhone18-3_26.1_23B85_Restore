@interface BMDKEvent
+ (id)eventWithDKEvent:(id)event;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMDKEvent)initWithCoder:(id)coder;
- (BMDKEvent)initWithDKEvent:(id)event;
- (BMDKEvent)initWithData:(id)data dataVersion:(unsigned int)version decodeMetadata:(BOOL)metadata;
- (BMDKEvent)initWithProto:(id)proto;
- (BMDKEvent)initWithProtoData:(id)data;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMDKEvent

- (id)encodeAsProto
{
  v3 = [BMDKEventCodec codecWithVersion:2];
  v4 = [v3 encodeAsProtoData:self];

  return v4;
}

+ (id)eventWithDKEvent:(id)event
{
  eventCopy = event;
  v4 = [[BMDKEvent alloc] initWithDKEvent:eventCopy];

  return v4;
}

- (BMDKEvent)initWithDKEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    [(BMDKEvent *)a2 initWithDKEvent:?];
  }

  v10.receiver = self;
  v10.super_class = BMDKEvent;
  v7 = [(BMDKEvent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dkEvent, event);
  }

  return v8;
}

- (BMDKEvent)initWithData:(id)data dataVersion:(unsigned int)version decodeMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  v6 = *&version;
  dataCopy = data;
  v9 = [BMDKEventCodec codecWithVersion:v6];
  [v9 setDecodeMetadata:metadataCopy];
  v10 = [v9 decodeWithProtoData:dataCopy];

  return v10;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  v4 = *&version;
  dataCopy = data;
  v6 = [BMDKEventCodec codecWithVersion:v4];
  v7 = [v6 decodeWithProtoData:dataCopy];

  return v7;
}

- (id)jsonDict
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  metadata = [(_DKEvent *)self->_dkEvent metadata];
  v5 = [metadata countByEnumeratingWithState:&v71 objects:v77 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v72;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v72 != v7)
        {
          objc_enumerationMutation(metadata);
        }

        v9 = *(*(&v71 + 1) + 8 * i);
        metadata2 = [(_DKEvent *)self->_dkEvent metadata];
        v11 = [metadata2 objectForKeyedSubscript:v9];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = [v11 description];

            v11 = v12;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 setObject:v11 forKeyedSubscript:v9];
        }

        else
        {
          v13 = [v9 description];
          [v3 setObject:v11 forKeyedSubscript:v13];
        }
      }

      v6 = [metadata countByEnumeratingWithState:&v71 objects:v77 count:16];
    }

    while (v6);
  }

  v14 = objc_opt_new();
  source = [(_DKEvent *)self->_dkEvent source];

  if (source)
  {
    source2 = [(_DKEvent *)self->_dkEvent source];
    sourceID = [source2 sourceID];
    if (sourceID)
    {
      [v14 setObject:sourceID forKeyedSubscript:@"sourceID"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v14 setObject:null forKeyedSubscript:@"sourceID"];
    }

    source3 = [(_DKEvent *)self->_dkEvent source];
    bundleID = [source3 bundleID];
    if (bundleID)
    {
      [v14 setObject:bundleID forKeyedSubscript:@"bundleID"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [v14 setObject:null2 forKeyedSubscript:@"bundleID"];
    }

    source4 = [(_DKEvent *)self->_dkEvent source];
    itemID = [source4 itemID];
    if (itemID)
    {
      [v14 setObject:itemID forKeyedSubscript:@"itemID"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [v14 setObject:null3 forKeyedSubscript:@"itemID"];
    }

    source5 = [(_DKEvent *)self->_dkEvent source];
    groupID = [source5 groupID];
    if (groupID)
    {
      [v14 setObject:groupID forKeyedSubscript:@"groupID"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [v14 setObject:null4 forKeyedSubscript:@"groupID"];
    }

    source6 = [(_DKEvent *)self->_dkEvent source];
    deviceID = [source6 deviceID];
    if (deviceID)
    {
      [v14 setObject:deviceID forKeyedSubscript:@"deviceID"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [v14 setObject:null5 forKeyedSubscript:@"deviceID"];
    }

    source7 = [(_DKEvent *)self->_dkEvent source];
    userID = [source7 userID];
    if (userID)
    {
      [v14 setObject:userID forKeyedSubscript:@"userID"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [v14 setObject:null6 forKeyedSubscript:@"userID"];
    }
  }

  value = [(_DKEvent *)self->_dkEvent value];

  if (value)
  {
    value2 = [(_DKEvent *)self->_dkEvent value];
    stringValue = [value2 stringValue];
    v37 = stringValue;
    if (stringValue)
    {
      v38 = stringValue;
    }

    else
    {
      v38 = [(_DKEvent *)self->_dkEvent description];
    }

    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v75[0] = @"UUID";
  uUID = [(_DKEvent *)self->_dkEvent UUID];
  uUIDString = [uUID UUIDString];
  v41 = uUIDString;
  if (!uUIDString)
  {
    uUIDString = [MEMORY[0x1E695DFB0] null];
  }

  v61 = uUIDString;
  v76[0] = uUIDString;
  v75[1] = @"startDate";
  startDate = [(_DKEvent *)self->_dkEvent startDate];
  null7 = [startDate description];
  v65 = null7;
  if (!null7)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null7;
  v76[1] = null7;
  v75[2] = @"endDate";
  endDate = [(_DKEvent *)self->_dkEvent endDate];
  null8 = [endDate description];
  v44 = null8;
  if (!null8)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null8;
  v76[2] = null8;
  v75[3] = @"timeZone";
  timeZone = [(_DKEvent *)self->_dkEvent timeZone];
  null9 = [timeZone description];
  v46 = null9;
  if (!null9)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null9;
  v76[3] = null9;
  v75[4] = @"value";
  null10 = v39;
  v69 = v39;
  if (!v39)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v41;
  v76[4] = null10;
  v76[5] = v3;
  v75[5] = @"metadata";
  v75[6] = @"confidence";
  v48 = MEMORY[0x1E696AD98];
  [(_DKEvent *)self->_dkEvent confidence];
  v49 = [v48 numberWithDouble:?];
  v76[6] = v49;
  v76[7] = v14;
  v70 = v14;
  v75[7] = @"source";
  v75[8] = @"creationDate";
  creationDate = [(_DKEvent *)self->_dkEvent creationDate];
  v51 = [creationDate description];
  null11 = v51;
  if (!v51)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v76[8] = null11;
  v75[9] = @"localCreationDate";
  localCreationDate = [(_DKEvent *)self->_dkEvent localCreationDate];
  v54 = [localCreationDate description];
  null12 = v54;
  if (!v54)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v76[9] = null12;
  v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:10];
  if (!v54)
  {
  }

  if (!v51)
  {
  }

  if (!v69)
  {
  }

  if (!v46)
  {
  }

  if (!v44)
  {
  }

  if (!v65)
  {
  }

  if (!v67)
  {
  }

  return v62;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMDKEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:3 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMDKEvent *)v5 json];
    }
  }

  return v4;
}

- (BMDKEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  v5 = [BMDKEventCodec codecWithVersion:2];
  v6 = [v5 decodeWithProto:protoCopy];

  return v6;
}

- (BMDKEvent)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [BMDKEventCodec codecWithVersion:2];
  v6 = [v5 decodeWithProtoData:dataCopy];

  return v6;
}

- (id)proto
{
  v3 = [BMDKEventCodec codecWithVersion:2];
  v4 = [v3 encodeAsProto:self];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMDKEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMDKEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMDKEvent *)self initWithProtoData:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    proto = [(BMDKEvent *)self proto];
    proto2 = [v5 proto];

    v8 = [proto isEqual:proto2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  dkEvent = self->_dkEvent;
  if (error && !dkEvent)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
  }

  return dkEvent != 0;
}

@end