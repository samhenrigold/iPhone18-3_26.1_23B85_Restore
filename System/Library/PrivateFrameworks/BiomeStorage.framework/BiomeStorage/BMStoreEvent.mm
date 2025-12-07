@interface BMStoreEvent
+ (id)eventWithEventType:(Class)type eventData:(id)data dataVersion:(unsigned int)version;
- (BMStoreEvent)initWithCoder:(id)coder;
- (BMStoreEvent)initWithEventBody:(id)body timestamp:(double)timestamp;
- (BMStoreEvent)initWithFrame:(id)frame segmentName:(id)name error:(unsigned __int8)error eventCategory:(unint64_t)category metadata:(id)metadata dataType:(Class)type;
- (BMStoreEvent)initWithFrame:(id)frame segmentName:(id)name frameOffset:(unint64_t)offset eventBodyData:(id)data eventBodyDataVersion:(unsigned int)version dataType:(Class)type eventCategory:(unint64_t)category timestamp:(double)self0 metadata:(id)self1 error:(unsigned __int8)self2;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)bookmark;
- (id)eventBodyKeepingBackingData:(BOOL)data;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMStoreEvent

- (id)bookmark
{
  metadata = [(BMStoreEvent *)self metadata];
  streamId = [metadata streamId];
  if (!streamId)
  {
    v8 = 0;
    goto LABEL_5;
  }

  segmentName = self->_segmentName;

  if (segmentName)
  {
    v6 = [BMStoreBookmark alloc];
    metadata = [(BMStoreEvent *)self metadata];
    streamId2 = [metadata streamId];
    v8 = [(BMStoreBookmark *)v6 initWithStream:streamId2 segment:self->_segmentName iterationStartTime:self->_frameOffset offset:CFAbsoluteTimeGetCurrent()];

LABEL_5:
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)eventBodyKeepingBackingData:(BOOL)data
{
  v40 = *MEMORY[0x1E69E9840];
  eventBody = self->_eventBody;
  if (!eventBody)
  {
    v8 = objc_autoreleasePoolPush();
    if (self->_dataType)
    {
      if (objc_opt_respondsToSelector())
      {
        frame = self->_frame;
        if (frame && [(BMFrame *)frame state]!= 1)
        {
          v17 = __biome_log_for_category();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            state = [(BMFrame *)self->_frame state];
            if (state >= 6)
            {
              v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BMFrameStateUnknown(%lu)", state];
            }

            else
            {
              v19 = off_1E8338B48[state];
            }

            *buf = 138543362;
            v31 = v19;
            _os_log_impl(&dword_1C928A000, v17, OS_LOG_TYPE_INFO, "Frame is in state %{public}@, unable to decode", buf, 0xCu);
          }

          goto LABEL_26;
        }

        eventBodyData = self->_eventBodyData;
        if (eventBodyData)
        {
          v11 = [(objc_class *)self->_dataType eventWithData:eventBodyData dataVersion:self->_eventBodyDataVersion];
          v12 = self->_eventBody;
          self->_eventBody = v11;

          v13 = self->_eventBody;
          if (v13)
          {
            if (!data)
            {
              v14 = self->_eventBodyData;
              self->_eventBodyData = 0;

              v13 = self->_eventBody;
            }

            v6 = v13;
            goto LABEL_27;
          }

          v21 = __biome_log_for_category();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            segmentName = self->_segmentName;
            offset = [(BMFrame *)self->_frame offset];
            v27 = [(NSData *)self->_eventBodyData length];
            dataType = self->_dataType;
            eventBodyDataVersion = self->_eventBodyDataVersion;
            *buf = 138544386;
            v31 = segmentName;
            v32 = 2048;
            v33 = offset;
            v34 = 2048;
            v35 = v27;
            v36 = 2114;
            v37 = dataType;
            v38 = 1024;
            v39 = eventBodyDataVersion;
            _os_log_error_impl(&dword_1C928A000, v21, OS_LOG_TYPE_ERROR, "Failed to deserialize event segment '%{public}@' offset '%lu' length '%lu' class '%{public}@' version '%u'", buf, 0x30u);
          }

          null = [MEMORY[0x1E695DFB0] null];
          v23 = self->_eventBody;
          self->_eventBody = null;

          v24 = self->_eventBodyData;
          self->_eventBodyData = 0;

LABEL_26:
          v6 = 0;
LABEL_27:
          objc_autoreleasePoolPop(v8);
          goto LABEL_28;
        }

        v16 = __biome_log_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [BMStoreEvent eventBodyKeepingBackingData:];
        }
      }

      else
      {
        v16 = __biome_log_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [BMStoreEvent eventBodyKeepingBackingData:];
        }
      }
    }

    else
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [BMStoreEvent eventBodyKeepingBackingData:];
      }
    }

    goto LABEL_26;
  }

  null2 = [MEMORY[0x1E695DFB0] null];

  if (eventBody == null2)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BMStoreEvent eventBodyKeepingBackingData:];
    }

    v6 = 0;
  }

  else
  {
    v6 = self->_eventBody;
  }

LABEL_28:

  return v6;
}

- (BMStoreEvent)initWithFrame:(id)frame segmentName:(id)name error:(unsigned __int8)error eventCategory:(unint64_t)category metadata:(id)metadata dataType:(Class)type
{
  metadataCopy = metadata;
  nameCopy = name;
  frameCopy = frame;
  offset = [frameCopy offset];
  data = [frameCopy data];
  dataVersion = [frameCopy dataVersion];
  [frameCopy creationTimestamp];
  LOBYTE(v22) = error;
  v20 = [(BMStoreEvent *)self initWithFrame:frameCopy segmentName:nameCopy frameOffset:offset eventBodyData:data eventBodyDataVersion:dataVersion dataType:type eventCategory:category timestamp:metadataCopy metadata:v22 error:?];

  return v20;
}

- (BMStoreEvent)initWithFrame:(id)frame segmentName:(id)name frameOffset:(unint64_t)offset eventBodyData:(id)data eventBodyDataVersion:(unsigned int)version dataType:(Class)type eventCategory:(unint64_t)category timestamp:(double)self0 metadata:(id)self1 error:(unsigned __int8)self2
{
  frameCopy = frame;
  nameCopy = name;
  dataCopy = data;
  metadataCopy = metadata;
  v31.receiver = self;
  v31.super_class = BMStoreEvent;
  v24 = [(BMStoreEvent *)&v31 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_frame, frame);
    v26 = [nameCopy copy];
    segmentName = v25->_segmentName;
    v25->_segmentName = v26;

    v25->_frameOffset = offset;
    if (dataCopy)
    {
      data = [dataCopy copy];
    }

    else
    {
      data = [frameCopy data];
    }

    eventBodyData = v25->_eventBodyData;
    v25->_eventBodyData = data;

    v25->_eventBodyDataVersion = version;
    v25->_eventCategory = category;
    if (!type)
    {
      type = [metadataCopy eventDataClass];
    }

    v25->_dataType = type;
    v25->_timestamp = timestamp;
    objc_storeStrong(&v25->_metadata, metadata);
    v25->_error = error;
  }

  return v25;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode key %@", keyCopy, *MEMORY[0x1E696A578]];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 errorWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (BMStoreEvent)initWithCoder:(id)coder
{
  v47 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"segmentName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"frameOffset"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classString"];
  if (!v7)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    allowedClasses = [coderCopy allowedClasses];
    v11 = [v9 setByAddingObjectsFromSet:allowedClasses];

    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"metadata"];
    eventDataClass = [v12 eventDataClass];

    if (eventDataClass)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  if (![(BMStoreEvent *)self checkAndReportDecodingFailureIfNeededForid:v7 key:@"classString" coder:coderCopy errorDomain:@"com.apple.Biome.BMStoreEvent" errorCode:-1])
  {
    eventDataClass = NSClassFromString(v7);
    if (objc_opt_respondsToSelector())
    {
      allowedClasses2 = [coderCopy allowedClasses];
      v15 = [allowedClasses2 containsObject:eventDataClass];

      if ((v15 & 1) == 0)
      {
        v16 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v46 = 16;
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __30__BMStoreEvent_initWithCoder___block_invoke_40;
        v42[3] = &unk_1E8338B28;
        v42[4] = buf;
        if (initWithCoder__onceToken_39 != -1)
        {
          dispatch_once(&initWithCoder__onceToken_39, v42);
        }

        v17 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (os_log_type_enabled(v16, v17))
        {
          v18 = objc_opt_class();
          *buf = 138412546;
          *&buf[4] = v7;
          *&buf[12] = 2112;
          *&buf[14] = v18;
          _os_log_impl(&dword_1C928A000, v16, v17, "Event class '%@' missing from %@ allowedClasses", buf, 0x16u);
        }
      }

      v12 = 0;
      if (eventDataClass)
      {
LABEL_14:
        if (!v12)
        {
          v19 = MEMORY[0x1E695DFD8];
          v44[0] = objc_opt_class();
          v44[1] = eventDataClass;
          v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
          v21 = [v19 setWithArray:v20];

          allowedClasses3 = [coderCopy allowedClasses];
          v23 = [v21 setByAddingObjectsFromSet:allowedClasses3];

          v12 = [coderCopy decodeObjectOfClasses:v23 forKey:@"metadata"];
        }

        v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventBody"];
        if (![(BMStoreEvent *)self checkAndReportDecodingFailureIfNeededForid:v24 key:@"eventBody" coder:coderCopy errorDomain:@"com.apple.Biome.BMStoreEvent" errorCode:-1])
        {
          v41 = v6;
          v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventDataVersion"];
          if ([(BMStoreEvent *)self checkAndReportDecodingFailureIfNeededForid:v25 key:@"eventDataVersion" coder:coderCopy errorDomain:@"com.apple.Biome.BMStoreEvent" errorCode:-1])
          {
            selfCopy = 0;
          }

          else
          {
            v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventCategory"];
            v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
            [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeError"];
            v29 = v40 = v25;
            unsignedIntValue = [v41 unsignedIntValue];
            unsignedIntValue2 = [v40 unsignedIntValue];
            v30 = v5;
            unsignedIntValue3 = [v39 unsignedIntValue];
            [v28 doubleValue];
            v33 = v32;
            LOBYTE(v36) = [v29 unsignedIntValue];
            v35 = unsignedIntValue3;
            v5 = v30;
            self = [(BMStoreEvent *)self initWithFrame:0 segmentName:v30 frameOffset:unsignedIntValue eventBodyData:v24 eventBodyDataVersion:unsignedIntValue2 dataType:eventDataClass eventCategory:v33 timestamp:v35 metadata:v12 error:v36];

            v25 = v40;
            selfCopy = self;
          }

          v6 = v41;
          goto LABEL_29;
        }

LABEL_26:
        selfCopy = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      v26 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v46 = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __30__BMStoreEvent_initWithCoder___block_invoke;
      block[3] = &unk_1E8338B28;
      block[4] = buf;
      if (initWithCoder__onceToken != -1)
      {
        dispatch_once(&initWithCoder__onceToken, block);
      }

      v27 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v26, v27))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&dword_1C928A000, v26, v27, "Class %@ doesn't conform to BMStoreData", buf, 0xCu);
      }

      v12 = 0;
    }

LABEL_24:
    v24 = __biome_log_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [BMStoreEvent initWithCoder:];
    }

    goto LABEL_26;
  }

  selfCopy = 0;
LABEL_30:

  return selfCopy;
}

+ (id)eventWithEventType:(Class)type eventData:(id)data dataVersion:(unsigned int)version
{
  v5 = *&version;
  dataCopy = data;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(objc_class *)type eventWithData:dataCopy dataVersion:v5];
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMStoreEvent eventWithEventType:type eventData:v9 dataVersion:?];
    }

    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventBodyData = self->_eventBodyData;
  v13 = coderCopy;
  if (eventBodyData)
  {
    [coderCopy encodeObject:eventBodyData forKey:@"eventBody"];
  }

  else
  {
    serialize = [(BMStoreData *)self->_eventBody serialize];
    [v13 encodeObject:serialize forKey:@"eventBody"];
  }

  v7 = NSStringFromClass(self->_dataType);
  [v13 encodeObject:v7 forKey:@"classString"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_eventBodyDataVersion];
  [v13 encodeObject:v8 forKey:@"eventDataVersion"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  [v13 encodeObject:v9 forKey:@"timestamp"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_error];
  [v13 encodeObject:v10 forKey:@"storeError"];

  [v13 encodeObject:self->_metadata forKey:@"metadata"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_eventCategory];
  [v13 encodeObject:v11 forKey:@"eventCategory"];

  [v13 encodeObject:self->_segmentName forKey:@"segmentName"];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_frameOffset];
  [v13 encodeObject:v12 forKey:@"frameOffset"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_24;
  }

  v7 = equalCopy;
  eventBody = [(BMStoreEvent *)self eventBody];
  if (!eventBody)
  {
    eventBody2 = [v7 eventBody];
    if (!eventBody2)
    {
      v10 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  eventBody3 = [(BMStoreEvent *)self eventBody];
  eventBody4 = [v7 eventBody];
  v10 = [eventBody3 isEqual:eventBody4];

  if (!eventBody)
  {
    goto LABEL_8;
  }

LABEL_9:

  metadata = [(BMStoreEvent *)self metadata];
  if (!metadata)
  {
    eventBody3 = [v7 metadata];
    if (!eventBody3)
    {
      v15 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  metadata2 = [(BMStoreEvent *)self metadata];
  metadata3 = [v7 metadata];
  v15 = [metadata2 isEqual:metadata3];

  if (!metadata)
  {
    goto LABEL_14;
  }

LABEL_15:

  segmentName = self->_segmentName;
  if (segmentName | v7[3])
  {
    v17 = [(NSString *)segmentName isEqualToString:?];
  }

  else
  {
    v17 = 1;
  }

  if ((v10 & v15) == 1 && (-[BMStoreEvent timestamp](self, "timestamp"), v19 = v18, [v7 timestamp], v19 == v20) && (v21 = -[BMStoreEvent eventCategory](self, "eventCategory"), v21 == objc_msgSend(v7, "eventCategory")))
  {
    v11 = (self->_frameOffset == v7[4]) & v17;
  }

  else
  {
    v11 = 0;
  }

LABEL_24:
  return v11;
}

- (unint64_t)hash
{
  eventBody = [(BMStoreEvent *)self eventBody];
  v4 = [eventBody hash];
  v5 = MEMORY[0x1E696AD98];
  [(BMStoreEvent *)self timestamp];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 hash];
  metadata = [(BMStoreEvent *)self metadata];
  v9 = v7 ^ v4 ^ [metadata hash];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BMStoreEvent eventCategory](self, "eventCategory")}];
  v11 = [v10 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_frameOffset];
  v13 = v9 ^ v11 ^ [v12 hash];
  v14 = [(NSString *)self->_segmentName hash];

  return v13 ^ v14;
}

- (BMStoreEvent)initWithEventBody:(id)body timestamp:(double)timestamp
{
  bodyCopy = body;
  v8 = objc_opt_new();
  v9 = [(BMStoreEvent *)self initWithFrame:v8 error:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventBody, body);
    v10->_timestamp = timestamp;
    v10->_dataType = objc_opt_class();
  }

  return v10;
}

+ (void)eventWithEventType:(objc_class *)a1 eventData:(NSObject *)a2 dataVersion:.cold.1(objc_class *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromClass(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1C928A000, a2, OS_LOG_TYPE_ERROR, "Event class - %@ doesn't - conform to BMStoreData protocol or Maybe the framework containing the event class isn't linked. We can't deserialize", &v4, 0xCu);
}

@end