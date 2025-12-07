@interface SAPowerModeTransition
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (id)initWithLowPowerMode:(void *)mode timestamp:;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SAPowerModeTransition

- (id)initWithLowPowerMode:(void *)mode timestamp:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = SAPowerModeTransition;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    *(v5 + 9) = a2;
    *(v5 + 8) = 1;
    objc_storeStrong(v5 + 2, mode);
  }

  return v6;
}

- (NSString)debugDescription
{
  v2 = MEMORY[0x1E696AEC0];
  if (self->_lowPowerModeChanged)
  {
    if (self->_lowPowerMode)
    {
      v3 = "low";
    }

    else
    {
      v3 = "default";
    }
  }

  else
  {
    v3 = "unknown";
  }

  v4 = [(SATimestamp *)self->_timestamp debugDescription];
  v5 = [v2 stringWithFormat:@"%s power mode at %@", v3, v4];

  return v5;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  if (self->_lowPowerModeChanged)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_lowPowerMode];
    SAJSONWriteDictionaryFirstEntry(stream, @"lowPowerMode", v5);

    timestamp = self->_timestamp;
    if (timestamp)
    {

      SAJSONWriteDictionaryEntry(stream, @"timestamp", timestamp);
    }
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(SAPowerModeTransition *)self sizeInBytesForSerializedVersion]!= length)
  {
    v10 = *__error();
    v11 = _sa_logt();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(SAPowerModeTransition *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v12 UTF8String];
      v16 = 2048;
      sizeInBytesForSerializedVersion = [(SAPowerModeTransition *)self sizeInBytesForSerializedVersion];
      v18 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v10;
    v13 = [(SAPowerModeTransition *)self debugDescription];
    _SASetCrashLogMessage(78, "%s: size %lu != buffer length %lu", [v13 UTF8String], -[SAPowerModeTransition sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = self->_lowPowerMode;
  *(&buffer->var1 + 2) = self->_lowPowerModeChanged;
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_timestamp, dictionary);
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
    goto LABEL_7;
  }

  if (length <= 0x11)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v12 = 2048;
      v13 = 18;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAPowerModeTransition struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(103, "bufferLength %lu < serialized SAPowerModeTransition struct %lu", length, 18);
    _os_crash();
    __break(1u);
LABEL_7:
    v9 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAPowerModeTransition version" userInfo:0];
    objc_exception_throw(v9);
  }

  result = objc_alloc_init(SAPowerModeTransition);
  *(result + 9) = *(buffer + 2);
  *(result + 8) = *(buffer + 3);
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x11)
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v19 = 2048;
      v20 = 18;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAPowerModeTransition struct %lu", buf, 0x16u);
    }

    *__error() = v14;
    _SASetCrashLogMessage(117, "bufferLength %lu < serialized SAPowerModeTransition struct %lu", length, 18);
    _os_crash();
    __break(1u);
LABEL_9:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAPowerModeTransition version" userInfo:0];
    objc_exception_throw(v16);
  }

  v10 = *(buffer + 10);
  v11 = objc_opt_class();
  v12 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, dictionary, bufferDictionary, v11, 0);
  timestamp = self->_timestamp;
  self->_timestamp = v12;
}

@end