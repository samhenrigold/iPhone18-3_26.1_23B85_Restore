@interface SAKPerfTrigger
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SAKPerfTrigger

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_type];
  SAJSONWriteDictionaryFirstEntry(stream, @"type", v5);

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kperfSamplers];
  SAJSONWriteDictionaryEntry(stream, @"samplers", v6);

  if (self->_timerPeriodNs)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    SAJSONWriteDictionaryEntry(stream, @"timerPeriodNs", v7);
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(SAKPerfTrigger *)self sizeInBytesForSerializedVersion:buffer]!= length)
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(SAKPerfTrigger *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v11 UTF8String];
      v16 = 2048;
      sizeInBytesForSerializedVersion = [(SAKPerfTrigger *)self sizeInBytesForSerializedVersion];
      v18 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v9;
    v12 = [(SAKPerfTrigger *)self debugDescription];
    v13 = v12;
    _SASetCrashLogMessage(5346, "%s: size %lu != buffer length %lu", [v12 UTF8String], -[SAKPerfTrigger sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = self->_type;
  *(&buffer->var2 + 2) = self->_timerPeriodNs;
  *(&buffer->var3 + 2) = self->_kperfSamplers;
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v14 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_7;
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
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAKPerfTrigger struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(5371, "bufferLength %lu < serialized SAKPerfTrigger struct %lu", length, 26);
    _os_crash();
    __break(1u);
LABEL_7:
    v9 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAKPerfTrigger version" userInfo:0];
    objc_exception_throw(v9);
  }

  result = objc_alloc_init(SAKPerfTrigger);
  *(result + 8) = *(buffer + 2);
  *(result + 3) = *(buffer + 18);
  return result;
}

@end