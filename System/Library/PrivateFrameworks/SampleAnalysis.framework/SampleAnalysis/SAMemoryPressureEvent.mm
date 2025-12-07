@interface SAMemoryPressureEvent
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (void)parseKTrace:(uint64_t)trace findingMemoryPressureEvents:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAMemoryPressureEvent

+ (void)parseKTrace:(uint64_t)trace findingMemoryPressureEvents:
{
  objc_opt_self();
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__8;
  v6[4] = __Block_byref_object_dispose__8;
  v7 = 0;
  if (!ktrace_get_machine())
  {
    v3 = *__error();
    v4 = _sa_logt();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_ERROR, "Unable to get machine from ktrace session", buf, 2u);
    }

    goto LABEL_9;
  }

  if (!ktrace_machine_hw_page_size())
  {
    v3 = *__error();
    v4 = _sa_logt();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_ERROR, "Unable to get hw page size from ktrace session", buf, 2u);
    }

LABEL_9:

    *__error() = v3;
    goto LABEL_10;
  }

  ktrace_events_single();
  ktrace_events_single();
LABEL_10:
  _Block_object_dispose(v6, 8);
}

char *__65__SAMemoryPressureEvent_parseKTrace_findingMemoryPressureEvents___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(SAMemoryPressureEvent);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v8 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:*(a1 + 40)];
  v9 = *(*(*(a1 + 32) + 8) + 40);
  if (v9)
  {
    objc_setProperty_atomic(v9, v7, v8, 16);
  }

  v10 = *(*(*(a1 + 32) + 8) + 40);
  v11 = *(a1 + 48);
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  result = [v10 availableBytes];
  if (v10)
  {
    v10[3] = &result[(v13 + v12) * v11];
  }

  return result;
}

void __65__SAMemoryPressureEvent_parseKTrace_findingMemoryPressureEvents___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    *(v2 + 8) = *(a2 + 24);
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = *(a1 + 48);
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = [v4 availableBytes];
    if (v4)
    {
      v4[3] = v8 + (v7 + v6) * v5;
    }

    (*(*(a1 + 32) + 16))();
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(SAMemoryPressureEvent *)self sizeInBytesForSerializedVersion]!= length)
  {
    v10 = *__error();
    v11 = _sa_logt();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(SAMemoryPressureEvent *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v12 UTF8String];
      v16 = 2048;
      sizeInBytesForSerializedVersion = [(SAMemoryPressureEvent *)self sizeInBytesForSerializedVersion];
      v18 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v10;
    v13 = [(SAMemoryPressureEvent *)self debugDescription];
    _SASetCrashLogMessage(116, "%s: size %lu != buffer length %lu", [v13 UTF8String], -[SAMemoryPressureEvent sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_timestamp, dictionary);
  *(&buffer->var2 + 2) = self->_availableBytes;
  BYTE2(buffer->var3) = self->_memoryStatusLevel;
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    timestamp = self->_timestamp;

    [(SATimestamp *)timestamp addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v14 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x12)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v12 = 2048;
      v13 = 19;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAIOEvent struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(141, "bufferLength %lu < serialized SAIOEvent struct %lu", length, 19);
    _os_crash();
    __break(1u);
LABEL_9:
    v9 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMemoryPressureEvent version" userInfo:0];
    objc_exception_throw(v9);
  }

  result = objc_alloc_init(SAMemoryPressureEvent);
  if (result)
  {
    *(result + 3) = *(buffer + 10);
    *(result + 8) = *(buffer + 18);
  }

  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x12)
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v19 = 2048;
      v20 = 19;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMemoryPressureEvent struct %lu", buf, 0x16u);
    }

    *__error() = v14;
    _SASetCrashLogMessage(155, "bufferLength %lu < serialized SAMemoryPressureEvent struct %lu", length, 19);
    _os_crash();
    __break(1u);
LABEL_9:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMemoryPressureEvent version" userInfo:0];
    objc_exception_throw(v16);
  }

  v10 = *(buffer + 2);
  v11 = objc_opt_class();
  v12 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, dictionary, bufferDictionary, v11);
  timestamp = self->_timestamp;
  self->_timestamp = v12;
}

@end