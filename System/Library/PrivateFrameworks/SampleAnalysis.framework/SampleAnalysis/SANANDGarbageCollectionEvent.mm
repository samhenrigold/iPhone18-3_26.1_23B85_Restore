@interface SANANDGarbageCollectionEvent
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (void)parseKTrace:(void *)trace findingGarbageCollectionEvents:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (NSString)reason;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SANANDGarbageCollectionEvent

+ (void)parseKTrace:(void *)trace findingGarbageCollectionEvents:
{
  traceCopy = trace;
  objc_opt_self();
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__9;
  v5[4] = __Block_byref_object_dispose__9;
  v6 = 0;
  v4 = traceCopy;
  ktrace_events_single();

  _Block_object_dispose(v5, 8);
}

void __75__SANANDGarbageCollectionEvent_parseKTrace_findingGarbageCollectionEvents___block_invoke(void *a1, uint64_t a2)
{
  newValue = [SATimestamp timestampWithKTraceEvent:a2 fromSession:a1[6]];
  if (*(a2 + 48))
  {
    v8 = objc_alloc_init(SANANDGarbageCollectionEvent);
    v10 = v8;
    if (v8)
    {
      objc_setProperty_atomic(v8, v9, newValue, 8);
      v10->_reasonCode = *(a2 + 24);
    }

    (*(a1[4] + 16))();
    v11 = *(a1[5] + 8);
    v7 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v5 = *(*(a1[5] + 8) + 40);
    if (v5)
    {
      objc_setProperty_atomic(v5, v4, newValue, 16);
      v6 = *(a1[5] + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;
    }

    else
    {
      v12 = objc_alloc_init(SANANDGarbageCollectionEvent);
      v7 = v12;
      if (v12)
      {
        objc_setProperty_atomic(v12, v13, newValue, 16);
      }

      (*(a1[4] + 16))();
    }
  }
}

- (NSString)reason
{
  reasonCode = self->_reasonCode;
  if (reasonCode >= 0xB)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown(%llu)", self->_reasonCode];
  }

  else
  {
    v4 = qword_1E86F8B50[reasonCode];
  }

  return v4;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  reason = [(SANANDGarbageCollectionEvent *)self reason];
  reasonCode = self->_reasonCode;
  v6 = [(SATimestamp *)self->_startTimestamp debugDescription];
  v7 = [(SATimestamp *)self->_endTimestamp debugDescription];
  v8 = [v3 initWithFormat:@"GC reason:%@(%llu) %@ - %@", reason, reasonCode, v6, v7];

  return v8;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if ([(SANANDGarbageCollectionEvent *)self sizeInBytesForSerializedVersion]!= length)
  {
    v10 = *__error();
    v11 = _sa_logt();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(SANANDGarbageCollectionEvent *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v12 UTF8String];
      v16 = 2048;
      sizeInBytesForSerializedVersion = [(SANANDGarbageCollectionEvent *)self sizeInBytesForSerializedVersion];
      v18 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v10;
    v13 = [(SANANDGarbageCollectionEvent *)self debugDescription];
    _SASetCrashLogMessage(128, "%s: size %lu != buffer length %lu", [v13 UTF8String], -[SANANDGarbageCollectionEvent sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_startTimestamp, dictionaryCopy);
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_endTimestamp, dictionaryCopy);
  *(&buffer->var3 + 2) = self->_reasonCode;

  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v5 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionaryCopy, self, classDictionaryKey);

  if (v5)
  {
    [(SATimestamp *)self->_startTimestamp addSelfToSerializationDictionary:dictionaryCopy];
    [(SATimestamp *)self->_endTimestamp addSelfToSerializationDictionary:dictionaryCopy];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v14 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x19)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v12 = 2048;
      v13 = 26;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAIOEvent struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(154, "bufferLength %lu < serialized SAIOEvent struct %lu", length, 26);
    _os_crash();
    __break(1u);
LABEL_9:
    v9 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SANANDGarbageCollectionEvent version" userInfo:0];
    objc_exception_throw(v9);
  }

  result = objc_alloc_init(SANANDGarbageCollectionEvent);
  if (result)
  {
    *(result + 3) = *(buffer + 18);
  }

  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  bufferDictionaryCopy = bufferDictionary;
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x19)
  {
    v20 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v26 = 2048;
      v27 = 26;
      _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SANANDGarbageCollectionEvent struct %lu", buf, 0x16u);
    }

    *__error() = v20;
    _SASetCrashLogMessage(168, "bufferLength %lu < serialized SANANDGarbageCollectionEvent struct %lu", length, 26);
    _os_crash();
    __break(1u);
LABEL_9:
    v22 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SANANDGarbageCollectionEvent version" userInfo:0];
    objc_exception_throw(v22);
  }

  v11 = bufferDictionaryCopy;
  v12 = *(buffer + 2);
  v13 = objc_opt_class();
  v14 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, dictionaryCopy, v11, v13, 0);
  startTimestamp = self->_startTimestamp;
  self->_startTimestamp = v14;

  v16 = *(buffer + 10);
  v17 = objc_opt_class();
  v18 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v16, dictionaryCopy, v11, v17, 0);
  endTimestamp = self->_endTimestamp;
  self->_endTimestamp = v18;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  streamCopy = stream;
  startTimestamp = self->_startTimestamp;
  v9 = streamCopy;
  if (startTimestamp)
  {
    SAJSONWriteDictionaryFirstEntry(streamCopy, @"startTimestamp", startTimestamp);
    endTimestamp = self->_endTimestamp;
    if (endTimestamp)
    {
      SAJSONWriteDictionaryEntry(v9, @"endTimestamp", endTimestamp);
    }
  }

  else
  {
    v7 = self->_endTimestamp;
    if (v7)
    {
      SAJSONWriteDictionaryFirstEntry(streamCopy, @"endTimestamp", v7);
    }
  }

  reason = [(SANANDGarbageCollectionEvent *)self reason];
  if (reason)
  {
    SAJSONWriteDictionaryEntry(v9, @"reason", reason);
  }
}

@end