@interface SAFanSpeed
+ (_DWORD)fanSpeedWithPAStyleSerializedFanSpeed:(uint64_t)speed;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (SAFanSpeed)init;
- (SAFanSpeed)initWithTimestamp:(id)timestamp;
- (id)initEmpty;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAFanSpeed

- (SAFanSpeed)init
{
  v3 = +[SATimestamp timestamp];
  v4 = [(SAFanSpeed *)self initWithTimestamp:v3];

  return v4;
}

- (SAFanSpeed)initWithTimestamp:(id)timestamp
{
  objc_opt_self();
  if (numFans_onceToken != -1)
  {
    dispatch_once(&numFans_onceToken, &__block_literal_global_15);
  }

  return 0;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(SAFanSpeed *)self sizeInBytesForSerializedVersion]!= length)
  {
    v10 = *__error();
    v11 = _sa_logt();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(SAFanSpeed *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v12 UTF8String];
      v16 = 2048;
      sizeInBytesForSerializedVersion = [(SAFanSpeed *)self sizeInBytesForSerializedVersion];
      v18 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v10;
    v13 = [(SAFanSpeed *)self debugDescription];
    _SASetCrashLogMessage(207, "%s: size %lu != buffer length %lu", [v13 UTF8String], -[SAFanSpeed sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = self->_fanSpeed;
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

- (id)initEmpty
{
  v3.receiver = self;
  v3.super_class = SAFanSpeed;
  return [(SAFanSpeed *)&v3 init];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v14 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_7;
  }

  if (length <= 0xD)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v12 = 2048;
      v13 = 14;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFanSpeed struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(236, "bufferLength %lu < serialized SAFanSpeed struct %lu", length, 14);
    _os_crash();
    __break(1u);
LABEL_7:
    v9 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAFanSpeed version" userInfo:0];
    objc_exception_throw(v9);
  }

  result = [[SAFanSpeed alloc] initEmpty];
  *(result + 2) = *(buffer + 2);
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0xD)
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v19 = 2048;
      v20 = 14;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAFanSpeed struct %lu", buf, 0x16u);
    }

    *__error() = v14;
    _SASetCrashLogMessage(249, "bufferLength %lu < serialized SAFanSpeed struct %lu", length, 14);
    _os_crash();
    __break(1u);
LABEL_9:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAFanSpeed version" userInfo:0];
    objc_exception_throw(v16);
  }

  v10 = *(buffer + 6);
  v11 = objc_opt_class();
  v12 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, dictionary, bufferDictionary, v11);
  timestamp = self->_timestamp;
  self->_timestamp = v12;
}

+ (_DWORD)fanSpeedWithPAStyleSerializedFanSpeed:(uint64_t)speed
{
  objc_opt_self();
  initEmpty = [[SAFanSpeed alloc] initEmpty];
  initEmpty[2] = *(a2 + 16);
  v4 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:*(a2 + 8) machContTimeSec:0.0 wallTime:0.0];
  v5 = *(initEmpty + 2);
  *(initEmpty + 2) = v4;

  return initEmpty;
}

@end