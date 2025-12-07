@interface SAGesture
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (void)parseKTrace:(char)trace embedded:(uint64_t)embedded findingGestureAndHIDEvents:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (SAGesture)initWithPid:(int)pid type:(id)type startTime:(id)time;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAGesture

- (SAGesture)initWithPid:(int)pid type:(id)type startTime:(id)time
{
  v17.receiver = self;
  v17.super_class = SAGesture;
  v8 = [(SAGesture *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_pid = pid;
    objc_storeStrong(&v8->_gestureType, type);
    v10 = objc_alloc_init(SATimeRange);
    timeRange = v9->_timeRange;
    v9->_timeRange = v10;

    v13 = v9->_timeRange;
    if (v13)
    {
      objc_setProperty_atomic(v13, v12, time, 8);
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    hidEvents = v9->_hidEvents;
    v9->_hidEvents = v14;
  }

  return v9;
}

+ (void)parseKTrace:(char)trace embedded:(uint64_t)embedded findingGestureAndHIDEvents:
{
  objc_opt_self();
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_opt_class();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__SAGesture_parseKTrace_embedded_findingGestureAndHIDEvents___block_invoke;
  v12[3] = &unk_1E86F8858;
  traceCopy = trace;
  v9 = v7;
  v13 = v9;
  embeddedCopy = embedded;
  [v8 parseKTrace:a2 findingHIDEvents:v12];
  v11 = v9;
  ktrace_events_range();
  v10 = v11;
  ktrace_events_range();
}

void __61__SAGesture_parseKTrace_embedded_findingGestureAndHIDEvents___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 48) == 1 && [a2 hidEventType] == 11 && (v4 = *(a1 + 32), v5 = MEMORY[0x1E696AD98], objc_msgSend(a2, "steps"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "lastObject"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "numberWithInt:", objc_msgSend(v7, "pid")), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", v8), v10 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v10))
  {
    [v10[1] addObject:a2];
  }

  else
  {
    v9 = *(*(a1 + 40) + 16);

    v9();
  }
}

void __61__SAGesture_parseKTrace_embedded_findingGestureAndHIDEvents___block_invoke_2(uint64_t a1, uint64_t a2)
{
  pid_for_thread = *(a2 + 88);
  if ((pid_for_thread & 0x80000000) != 0)
  {
    pid_for_thread = ktrace_get_pid_for_thread();
  }

  v5 = [SAGesture alloc];
  v6 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:*(a1 + 40)];
  v9 = [(SAGesture *)v5 initWithPid:pid_for_thread type:@"Scroll View Drag" startTime:v6];

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E696AD98] numberWithInt:pid_for_thread];
  [v7 setObject:v9 forKeyedSubscript:v8];
}

void __61__SAGesture_parseKTrace_embedded_findingGestureAndHIDEvents___block_invoke_3(void *a1, uint64_t a2)
{
  pid_for_thread = *(a2 + 88);
  if ((pid_for_thread & 0x80000000) != 0)
  {
    pid_for_thread = ktrace_get_pid_for_thread();
  }

  v5 = a1[4];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:pid_for_thread];
  self = [v5 objectForKeyedSubscript:v6];

  v7 = self;
  if (self)
  {
    v8 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:a1[6]];
    Property = objc_getProperty(self, v9, 32, 1);
    if (Property)
    {
      objc_setProperty_atomic(Property, v11, v8, 16);
    }

    v12 = a1[4];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:pid_for_thread];
    [v12 setObject:0 forKeyedSubscript:v13];

    (*(a1[5] + 16))();
    v7 = self;
  }
}

- (NSString)debugDescription
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    v5 = objc_getProperty(self, v3, 24, 1);
    Property = objc_getProperty(self, v6, 32, 1);
  }

  else
  {
    v5 = 0;
    Property = 0;
  }

  v8 = Property;
  v10 = [v8 debugDescription];
  if (self)
  {
    v11 = objc_getProperty(self, v9, 8, 1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v4 initWithFormat:@"%@ %@ (%lu hid events)", v5, v10, objc_msgSend(v11, "count")];

  return v12;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(SAGesture *)self sizeInBytesForSerializedVersion]!= length)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SAGesture *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v13 UTF8String];
      v20 = 2048;
      sizeInBytesForSerializedVersion = [(SAGesture *)self sizeInBytesForSerializedVersion];
      v22 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SAGesture *)self debugDescription];
    _SASetCrashLogMessage(1009, "%s: size %lu != buffer length %lu", [v14 UTF8String], -[SAGesture sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
LABEL_7:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(NSMutableArray *)self->_hidEvents count];
      *buf = 134217984;
      uTF8String = v17;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "gesture with %lu hid events", buf, 0xCu);
    }

    *__error() = v15;
    _SASetCrashLogMessage(1018, "gesture with %lu hid events", [(NSMutableArray *)self->_hidEvents count]);
    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = self->_pid;
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_gestureType, dictionary);
  *(&buffer->var3 + 6) = SASerializableIndexForPointerFromSerializationDictionary(self->_timeRange, dictionary);
  if ([(NSMutableArray *)self->_hidEvents count]>= 0xFFFF)
  {
    goto LABEL_7;
  }

  v9 = [(NSMutableArray *)self->_hidEvents count];
  HIWORD(buffer->var4) = v9;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var5, v9, self->_hidEvents, dictionary);
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v17 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(SATimeRange *)self->_timeRange addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_gestureType addSelfToSerializationDictionary:dictionary];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_hidEvents;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) addSelfToSerializationDictionary:{dictionary, v12}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  *&v15[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_11;
  }

  if (length <= 0x17)
  {
    v7 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v14 = 2048;
      *v15 = 24;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAGesture struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(1043, "bufferLength %lu < serialized SAGesture struct %lu", length, 24);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 11) + 24 > length)
  {
LABEL_8:
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(bufferCopy + 22);
      *buf = 134218496;
      lengthCopy2 = length;
      v14 = 1024;
      *v15 = v10;
      v15[2] = 2048;
      *&v15[3] = 8 * v10 + 24;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAGesture struct plus %u children %lu", buf, 0x1Cu);
    }

    *__error() = v8;
    _SASetCrashLogMessage(1044, "bufferLength %lu < serialized SAGesture struct plus %u children %lu", length, *(bufferCopy + 22), 8 * *(bufferCopy + 22) + 24);
    _os_crash();
    __break(1u);
LABEL_11:
    v11 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAGesture version" userInfo:0];
    objc_exception_throw(v11);
  }

  result = objc_alloc_init(objc_opt_class());
  *(result + 4) = *(bufferCopy + 2);
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  *&v30[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_16;
  }

  if (length <= 0x17)
  {
    v22 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v29 = 2048;
      *v30 = 24;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAGesture struct %lu", buf, 0x16u);
    }

    *__error() = v22;
    _SASetCrashLogMessage(1057, "bufferLength %lu < serialized SAGesture struct %lu", length, 24);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 11) + 24 > length)
  {
LABEL_13:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(bufferCopy + 22);
      *buf = 134218496;
      lengthCopy2 = length;
      v29 = 1024;
      *v30 = v25;
      v30[2] = 2048;
      *&v30[3] = 8 * v25 + 24;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAGesture struct plus %u children %lu", buf, 0x1Cu);
    }

    *__error() = v23;
    _SASetCrashLogMessage(1058, "bufferLength %lu < serialized SAGesture struct plus %u children %lu", length, *(bufferCopy + 22), 8 * *(bufferCopy + 22) + 24);
    _os_crash();
    __break(1u);
LABEL_16:
    v26 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAGesture version" userInfo:0];
    objc_exception_throw(v26);
  }

  v11 = *(buffer + 14);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  timeRange = self->_timeRange;
  self->_timeRange = v13;

  v15 = *(bufferCopy + 6);
  v16 = objc_opt_class();
  v17 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16);
  gestureType = self->_gestureType;
  self->_gestureType = v17;

  objc_opt_class();
  if (*gSASerializationEncodedVersionBeingDecoded() <= 33 && *gSASerializationEncodedDataIsEmbedded() == 1)
  {
    v19 = objc_opt_class();
  }

  v20 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 24, *(bufferCopy + 22), dictionary, bufferDictionary, v19);
  hidEvents = self->_hidEvents;
  self->_hidEvents = v20;
}

@end