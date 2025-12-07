@interface SAWSUpdate
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (void)addSelfToSerializationDictionary:(id)dictionary;
@end

@implementation SAWSUpdate

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v5 = +[SAWSUpdate classDictionaryKey];
  SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, v5);
}

- (BOOL)addSelfToBuffer:(void *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(SAWSUpdate *)self sizeInBytesForSerializedVersion]!= length)
  {
    v10 = *__error();
    v11 = _sa_logt();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(SAWSUpdate *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v12 UTF8String];
      v17 = 2048;
      sizeInBytesForSerializedVersion = [(SAWSUpdate *)self sizeInBytesForSerializedVersion];
      v19 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v10;
    v13 = [(SAWSUpdate *)self debugDescription];
    _SASetCrashLogMessage(986, "%s: size %lu != buffer length %lu", [v13 UTF8String], -[SAWSUpdate sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
LABEL_8:
    v14 = [SAException exceptionWithName:@"Encoding failure" reason:@"No buffer or completedSerializationDictionary" userInfo:0];
    objc_exception_throw(v14);
  }

  if (!buffer || !dictionary)
  {
    goto LABEL_8;
  }

  *buffer = 287545748;
  *(buffer + 1) = *&self->_frameStartTime;
  *(buffer + 2) = *&self->_deferStartTime;
  *(buffer + 3) = *&self->_workStartTime;
  *(buffer + 4) = *&self->_workEndTime;
  return 1;
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  if (!buffer)
  {
    v6 = @"NULL buffer";
    goto LABEL_6;
  }

  if (*buffer != 287545748)
  {
    v6 = @"Bad SASerializedWSUpdateMagic magic";
LABEL_6:
    v7 = [SAException exceptionWithName:@"Decoding failure" reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  result = objc_alloc_init(SAWSUpdate);
  *(result + 1) = *(buffer + 1);
  *(result + 2) = *(buffer + 2);
  *(result + 3) = *(buffer + 3);
  *(result + 4) = *(buffer + 4);
  return result;
}

@end