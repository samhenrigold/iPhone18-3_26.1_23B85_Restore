@interface SAModelExecution
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SAModelExecution

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  requester = [(SAModelExecution *)self requester];
  useCaseID = [(SAModelExecution *)self useCaseID];
  instructions = [(SAModelExecution *)self instructions];
  startTime = [(SAModelExecution *)self startTime];
  v8 = [startTime debugDescription];
  endTime = [(SAModelExecution *)self endTime];
  v10 = [endTime debugDescription];
  v11 = [v3 initWithFormat:@"execution on behalf of %@ use case %@, %llu instructions, from %@-%@", requester, useCaseID, instructions, v8, v10];

  return v11;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  requester = self->_requester;
  if (requester)
  {
    SAJSONWriteDictionaryFirstEntry(stream, @"requester", requester);
    useCaseID = self->_useCaseID;
    if (useCaseID)
    {
      SAJSONWriteDictionaryEntry(stream, @"useCaseID", useCaseID);
    }

    goto LABEL_6;
  }

  v7 = self->_useCaseID;
  if (v7)
  {
    SAJSONWriteDictionaryFirstEntry(stream, @"useCaseID", v7);
LABEL_6:
    startTime = self->_startTime;
    if (startTime)
    {
      SAJSONWriteDictionaryEntry(stream, @"startTime", startTime);
    }

    goto LABEL_8;
  }

  v10 = self->_startTime;
  if (v10)
  {
    SAJSONWriteDictionaryFirstEntry(stream, @"startTime", v10);
LABEL_8:
    endTime = self->_endTime;
    if (endTime)
    {
      SAJSONWriteDictionaryEntry(stream, @"endTime", endTime);
    }

    goto LABEL_10;
  }

  v11 = self->_endTime;
  if (v11)
  {
    SAJSONWriteDictionaryFirstEntry(stream, @"endTime", v11);
LABEL_10:
    if (!self->_instructions)
    {
      return;
    }

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    SAJSONWriteDictionaryEntry(stream, @"instructions", v12);
    goto LABEL_12;
  }

  if (!self->_instructions)
  {
    return;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  SAJSONWriteDictionaryFirstEntry(stream, @"instructions", v12);
LABEL_12:
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(SAModelExecution *)self sizeInBytesForSerializedVersion]!= length)
  {
    v10 = *__error();
    v11 = _sa_logt();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(SAModelExecution *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v12 UTF8String];
      v16 = 2048;
      sizeInBytesForSerializedVersion = [(SAModelExecution *)self sizeInBytesForSerializedVersion];
      v18 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v10;
    v13 = [(SAModelExecution *)self debugDescription];
    _SASetCrashLogMessage(432, "%s: size %lu != buffer length %lu", [v13 UTF8String], -[SAModelExecution sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 771;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_requester, dictionary);
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_startTime, dictionary);
  *(&buffer->var3 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_endTime, dictionary);
  *(&buffer->var4 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_useCaseID, dictionary);
  *(&buffer->var5 + 2) = self->_instructions;
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(NSString *)self->_requester addSelfToSerializationDictionary:dictionary];
    [(SATimestamp *)self->_startTime addSelfToSerializationDictionary:dictionary];
    [(SATimestamp *)self->_endTime addSelfToSerializationDictionary:dictionary];
    useCaseID = self->_useCaseID;

    [(NSString *)useCaseID addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v14 = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_7;
  }

  if (length <= 0x21)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v12 = 2048;
      v13 = 34;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelExecution struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(462, "bufferLength %lu < serialized SAModelExecution struct %lu", length, 34);
    _os_crash();
    __break(1u);
LABEL_7:
    v9 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAModelExecution version" userInfo:0];
    objc_exception_throw(v9);
  }

  result = objc_alloc_init(SAModelExecution);
  *(result + 5) = *(buffer + 26);
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v36 = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_15;
  }

  if (length <= 0x21)
  {
    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v34 = 2048;
      v35 = 34;
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelExecution struct %lu", buf, 0x16u);
    }

    *__error() = v27;
    _SASetCrashLogMessage(475, "bufferLength %lu < serialized SAModelExecution struct %lu", length, 34);
    _os_crash();
    __break(1u);
LABEL_12:
    v29 = *__error();
    v30 = _sa_logt();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      lengthCopy2 = length;
      _os_log_error_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAModelExecution v2 struct", buf, 0xCu);
    }

    *__error() = v29;
    _SASetCrashLogMessage(484, "bufferLength %lu < serialized SAModelExecution v2 struct", length);
    _os_crash();
    __break(1u);
LABEL_15:
    v31 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAModelExecution version" userInfo:0];
    objc_exception_throw(v31);
  }

  v11 = *(buffer + 2);
  v12 = objc_opt_class();
  v13 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12, 0);
  requester = self->_requester;
  self->_requester = v13;

  v15 = *(buffer + 10);
  v16 = objc_opt_class();
  v17 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16, 0);
  startTime = self->_startTime;
  self->_startTime = v17;

  v19 = *(buffer + 18);
  v20 = objc_opt_class();
  v21 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v19, dictionary, bufferDictionary, v20, 0);
  endTime = self->_endTime;
  self->_endTime = v21;

  if (*(buffer + 1) < 3u)
  {
    return;
  }

  if (length <= 0x29)
  {
    goto LABEL_12;
  }

  v23 = *(buffer + 26);
  v24 = objc_opt_class();
  v25 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v23, dictionary, bufferDictionary, v24, 0);
  useCaseID = self->_useCaseID;
  self->_useCaseID = v25;
}

@end