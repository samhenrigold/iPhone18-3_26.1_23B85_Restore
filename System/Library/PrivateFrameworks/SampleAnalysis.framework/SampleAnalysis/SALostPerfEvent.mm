@interface SALostPerfEvent
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (void)parseKTrace:(uint64_t)trace findingLostPerfEvents:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (SALostPerfEvent)initWithStartTime:(id)time;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SALostPerfEvent

- (SALostPerfEvent)initWithStartTime:(id)time
{
  v8.receiver = self;
  v8.super_class = SALostPerfEvent;
  v4 = [(SALostPerfEvent *)&v8 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_startTime, time);
    v6 = v5;
  }

  return v5;
}

+ (void)parseKTrace:(uint64_t)trace findingLostPerfEvents:
{
  objc_opt_self();
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 1;
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x3032000000;
  v3[3] = __Block_byref_object_copy__5;
  v3[4] = __Block_byref_object_dispose__5;
  v4 = 0;
  ktrace_events_single();
  _Block_object_dispose(v3, 8);

  _Block_object_dispose(v5, 8);
}

void __53__SALostPerfEvent_parseKTrace_findingLostPerfEvents___block_invoke(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a1[5] + 8);
  if (*(v6 + 24) == 1)
  {
    *(v6 + 24) = 0;
    v7 = [[SALostPerfEventV7 alloc] initWithStartTime:0 reason:v4];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    (*(a1[4] + 16))();
  }

  if (v4 != v5)
  {
    newValue = [SATimestamp timestampWithKTraceEvent:a2 fromSession:a1[7]];
    v11 = *(*(a1[6] + 8) + 40);
    if (v11)
    {
      objc_setProperty_atomic(v11, v10, newValue, 16);
    }

    v12 = [[SALostPerfEventV7 alloc] initWithStartTime:newValue reason:v5];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    (*(a1[4] + 16))();
  }
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  lostPerf = [(SALostPerfEvent *)self lostPerf];
  startTime = [(SALostPerfEvent *)self startTime];
  v6 = [startTime debugDescription];
  endTime = [(SALostPerfEvent *)self endTime];
  v8 = [endTime debugDescription];
  v9 = [v3 initWithFormat:@"Lost perf %@ %@ - %@", lostPerf, v6, v8];

  return v9;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  lostPerf = [(SALostPerfEvent *)self lostPerf];
  v6 = lostPerf;
  if (lostPerf)
  {
    v7 = lostPerf;
  }

  else
  {
    v7 = @"NOTSET";
  }

  SAJSONWriteDictionaryFirstEntry(stream, @"lostPerf", v7);

  startTime = self->_startTime;
  if (startTime)
  {
    SAJSONWriteDictionaryEntry(stream, @"startTime", startTime);
  }

  endTime = self->_endTime;
  if (endTime)
  {
    SAJSONWriteDictionaryEntry(stream, @"endTime", endTime);
  }

  domain = [(SALostPerfEvent *)self domain];
  if (domain)
  {
    SAJSONWriteDictionaryEntry(stream, @"domain", domain);
  }

  type = [(SALostPerfEvent *)self type];
  if (type)
  {
    SAJSONWriteDictionaryEntry(stream, @"type", type);
  }

  mode = [(SALostPerfEvent *)self mode];
  if (mode)
  {
    SAJSONWriteDictionaryEntry(stream, @"mode", mode);
  }

  source = [(SALostPerfEvent *)self source];
  if (source)
  {
    SAJSONWriteDictionaryEntry(stream, @"source", source);
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(SALostPerfEvent *)self sizeInBytesForSerializedVersion]!= length)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SALostPerfEvent *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v13 UTF8String];
      v17 = 2048;
      sizeInBytesForSerializedVersion = [(SALostPerfEvent *)self sizeInBytesForSerializedVersion];
      v19 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SALostPerfEvent *)self debugDescription];
    _SASetCrashLogMessage(269, "%s: size %lu != buffer length %lu", [v14 UTF8String], -[SALostPerfEvent sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_startTime, dictionary);
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_endTime, dictionary);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isa = self[1].super.isa;
  }

  else
  {
    isa = 0;
  }

  *(&buffer->var3 + 2) = isa;
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(SATimestamp *)self->_startTime addSelfToSerializationDictionary:dictionary];
    endTime = self->_endTime;

    [(SATimestamp *)endTime addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v16 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_13;
  }

  if (length <= 0x15)
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v14 = 2048;
      v15 = 22;
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SALostPerfEvent struct %lu", buf, 0x16u);
    }

    *__error() = v9;
    _SASetCrashLogMessage(301, "bufferLength %lu < serialized SALostPerfEvent struct %lu", length, 22);
    _os_crash();
    __break(1u);
LABEL_13:
    v11 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SALostPerfEvent version" userInfo:0];
    objc_exception_throw(v11);
  }

  if (*(buffer + 18))
  {
    v6 = [SALostPerfEventV7 alloc];
    v7 = *(buffer + 18);

    return [(SALostPerfEventV7 *)v6 initWithStartTime:0 reason:v7];
  }

  else
  {

    return objc_alloc_init(SALostPerfEvent);
  }
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v26 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x15)
  {
    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v24 = 2048;
      v25 = 22;
      _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SALostPerfEvent struct %lu", buf, 0x16u);
    }

    *__error() = v19;
    _SASetCrashLogMessage(318, "bufferLength %lu < serialized SALostPerfEvent struct %lu", length, 22);
    _os_crash();
    __break(1u);
LABEL_9:
    v21 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SALostPerfEvent version" userInfo:0];
    objc_exception_throw(v21);
  }

  v11 = *(buffer + 2);
  v12 = objc_opt_class();
  v13 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12, 0);
  startTime = self->_startTime;
  self->_startTime = v13;

  v15 = *(buffer + 10);
  v16 = objc_opt_class();
  v17 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16, 0);
  endTime = self->_endTime;
  self->_endTime = v17;
}

@end