@interface SAModelLoadedChange
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (SAModelLoadedChange)initWithTimestamp:(id)timestamp endTime:(id)time userInitiated:(BOOL)initiated loadedRequesters:(id)requesters inMemory:(BOOL)memory;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SAModelLoadedChange

- (SAModelLoadedChange)initWithTimestamp:(id)timestamp endTime:(id)time userInitiated:(BOOL)initiated loadedRequesters:(id)requesters inMemory:(BOOL)memory
{
  v18.receiver = self;
  v18.super_class = SAModelLoadedChange;
  v12 = [(SAModelLoadedChange *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timestamp, timestamp);
    objc_storeStrong(&v13->_endTime, time);
    v13->_userInitiated = initiated;
    v14 = [requesters copy];
    loadedRequesters = v13->_loadedRequesters;
    v13->_loadedRequesters = v14;

    v13->_inMemory = memory;
    v16 = v13;
  }

  return v13;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  loaded = [(SAModelLoadedChange *)self loaded];
  userInitiated = [(SAModelLoadedChange *)self userInitiated];
  loadedRequesters = [(SAModelLoadedChange *)self loadedRequesters];
  v7 = [loadedRequesters componentsJoinedByString:{@", "}];
  timestamp = [(SAModelLoadedChange *)self timestamp];
  v9 = [timestamp debugDescription];
  v10 = [v3 initWithFormat:@"load change (loaded:%d UI:%d) requested by %@ at %@", loaded, userInitiated, v7, v9];

  return v10;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SAModelLoadedChange loaded](self, "loaded")}];
  SAJSONWriteDictionaryFirstEntry(stream, @"loaded", v5);

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[SAModelLoadedChange userInitiated](self, "userInitiated")}];
  SAJSONWriteDictionaryEntry(stream, @"userInitiated", v6);

  timestamp = self->_timestamp;
  if (timestamp)
  {
    SAJSONWriteDictionaryEntry(stream, @"timestamp", timestamp);
  }

  if ([(NSArray *)self->_loadedRequesters count])
  {
    loadedRequesters = self->_loadedRequesters;

    SAJSONWriteDictionaryEntry(stream, @"loadedRequesters", loadedRequesters);
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  lengthCopy = length;
  v36 = *MEMORY[0x1E69E9840];
  if ([(SAModelLoadedChange *)self sizeInBytesForSerializedVersion]!= length)
  {
    v13 = *__error();
    v14 = _sa_logt();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(SAModelLoadedChange *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v15 UTF8String];
      v30 = 2048;
      sizeInBytesForSerializedVersion = [(SAModelLoadedChange *)self sizeInBytesForSerializedVersion];
      v32 = 2048;
      v33 = lengthCopy;
      _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v13;
    v16 = [(SAModelLoadedChange *)self debugDescription];
    uTF8String2 = [v16 UTF8String];
    _SASetCrashLogMessage(306, "%s: size %lu != buffer length %lu", uTF8String2, [(SAModelLoadedChange *)self sizeInBytesForSerializedVersion], lengthCopy);

    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_timestamp, dictionary);
  BYTE2(buffer->var2) = BYTE2(buffer->var2) & 0xFE | [(SAModelLoadedChange *)self loaded];
  if ([(SAModelLoadedChange *)self userInitiated])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  BYTE2(buffer->var2) = BYTE2(buffer->var2) & 0xFD | v10;
  if ([(NSArray *)self->_loadedRequesters count]>= 0xFFFFFFFF)
  {
LABEL_11:
    v17 = *__error();
    v18 = _sa_logt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [(SAModelLoadedChange *)self debugDescription];
      uTF8String2 = [v19 UTF8String];
      v20 = [(NSArray *)self->_loadedRequesters count];
      *buf = 136315394;
      uTF8String = uTF8String2;
      v30 = 2048;
      sizeInBytesForSerializedVersion = v20;
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "%s has %lu requesters", buf, 0x16u);
    }

    *__error() = v17;
    lengthCopy = [(SAModelLoadedChange *)self debugDescription];
    buffer = [lengthCopy UTF8String];
    _SASetCrashLogMessage(315, "%s has %lu requesters", buffer, [(NSArray *)self->_loadedRequesters count]);

    _os_crash();
    __break(1u);
LABEL_14:
    v21 = *__error();
    v22 = _sa_logt();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [(SAModelLoadedChange *)self debugDescription];
      uTF8String3 = [v23 UTF8String];
      v25 = [(NSArray *)self->_loadedRequesters count];
      v26 = [(NSArray *)self->_loadedRequesters count];
      *buf = 136315906;
      uTF8String = uTF8String3;
      v30 = 2048;
      sizeInBytesForSerializedVersion = v25;
      v32 = 2048;
      v33 = &uTF8String2[8 * v26] - buffer;
      v34 = 2048;
      v35 = lengthCopy;
      _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "%s: after serializing (with %lu loadedRequesters), ended with length %ld, should be %lu", buf, 0x2Au);
    }

    *__error() = v21;
    v27 = [(SAModelLoadedChange *)self debugDescription];
    _SASetCrashLogMessage(320, "%s: after serializing (with %lu loadedRequesters), ended with length %ld, should be %lu", [v27 UTF8String], -[NSArray count](self->_loadedRequesters, "count"), &uTF8String2[8 * -[NSArray count](self->_loadedRequesters, "count")] - buffer, lengthCopy);

    _os_crash();
    __break(1u);
  }

  uTF8String2 = &buffer->var2 + 7;
  if ((8 * [(NSArray *)self->_loadedRequesters count]+ 15) != lengthCopy)
  {
    goto LABEL_14;
  }

  v11 = [(NSArray *)self->_loadedRequesters count];
  *(&buffer->var2 + 3) = v11;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var2 + 7, v11, self->_loadedRequesters, dictionary);
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v17 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(SATimestamp *)self->_timestamp addSelfToSerializationDictionary:dictionary];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_loadedRequesters;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v16 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_11;
  }

  if (length <= 0xE)
  {
    v7 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v14 = 2048;
      v15 = 15;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelLoadedChange struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(344, "bufferLength %lu < serialized SAModelLoadedChange struct %lu", length, 15);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 11) + 15 > length)
  {
LABEL_8:
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(bufferCopy + 11);
      *buf = 134218240;
      lengthCopy2 = length;
      v14 = 1024;
      LODWORD(v15) = v10;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelLoadedChange struct with %u requesters", buf, 0x12u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(345, "bufferLength %lu < serialized SAModelLoadedChange struct with %u requesters", length, *(bufferCopy + 11));
    _os_crash();
    __break(1u);
LABEL_11:
    v11 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAModelLoadedChange version" userInfo:0];
    objc_exception_throw(v11);
  }

  result = objc_alloc_init(SAModelLoadedChange);
  *(result + 9) = (*(bufferCopy + 10) & 2) != 0;
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v28 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_15;
  }

  if (length <= 0xE)
  {
    v19 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v26 = 2048;
      v27 = 15;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelLoadedChange struct %lu", buf, 0x16u);
    }

    *__error() = v19;
    _SASetCrashLogMessage(358, "bufferLength %lu < serialized SAModelLoadedChange struct %lu", length, 15);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 11) + 15 > length)
  {
LABEL_12:
    v20 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(bufferCopy + 11);
      *buf = 134218240;
      lengthCopy2 = length;
      v26 = 1024;
      LODWORD(v27) = v22;
      _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelLoadedChange struct with %u requesters", buf, 0x12u);
    }

    *__error() = v20;
    _SASetCrashLogMessage(359, "bufferLength %lu < serialized SAModelLoadedChange struct with %u requesters", length, *(bufferCopy + 11));
    _os_crash();
    __break(1u);
LABEL_15:
    v23 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAModelLoadedChange version" userInfo:0];
    objc_exception_throw(v23);
  }

  v11 = *(buffer + 2);
  v12 = objc_opt_class();
  v13 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12, 0);
  timestamp = self->_timestamp;
  self->_timestamp = v13;

  if (*(bufferCopy + 10))
  {
    v15 = *(bufferCopy + 11);
    v16 = objc_opt_class();
    v17 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 15, v15, dictionary, bufferDictionary, v16);
    loadedRequesters = self->_loadedRequesters;
    self->_loadedRequesters = v17;
  }
}

@end