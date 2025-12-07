@interface SARecipeState
+ (id)classDictionaryKey;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (id)stateWithThread:(void *)thread threadStateIndex:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (SAThreadState)threadState;
- (id)initWithThread:(void *)thread threadStateIndex:;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SARecipeState

- (SAThreadState)threadState
{
  threadStates = [(SAThread *)self->_thread threadStates];
  v4 = [threadStates objectAtIndexedSubscript:self->_threadStateIndex];

  return v4;
}

+ (id)stateWithThread:(void *)thread threadStateIndex:
{
  v5 = objc_alloc(objc_opt_self());
  v6 = [(SARecipeState *)v5 initWithThread:a2 threadStateIndex:thread];

  return v6;
}

- (id)initWithThread:(void *)thread threadStateIndex:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = SARecipeState;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 1, a2);
    v6[2] = thread;
  }

  return v6;
}

+ (id)classDictionaryKey
{
  v3 = *__error();
  v4 = _sa_logt();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    ClassName = object_getClassName(self);
    _os_log_error_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_ERROR, "SARecipeState classDictionaryKey not overridden by %s", buf, 0xCu);
  }

  *__error() = v3;
  v5 = object_getClassName(self);
  _SASetCrashLogMessage(5646, "SARecipeState classDictionaryKey not overridden by %s", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(SARecipeState *)self sizeInBytesForSerializedVersion]!= length)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SARecipeState *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v13 UTF8String];
      v23 = 2048;
      sizeInBytesForSerializedVersion = [(SARecipeState *)self sizeInBytesForSerializedVersion];
      v25 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SARecipeState *)self debugDescription];
    _SASetCrashLogMessage(5654, "%s: size %lu != buffer length %lu", [v14 UTF8String], -[SARecipeState sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
LABEL_7:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(SARecipeState *)self debugDescription];
      uTF8String2 = [v17 UTF8String];
      threadStateIndex = self->_threadStateIndex;
      *buf = 136315394;
      uTF8String = uTF8String2;
      v23 = 2048;
      sizeInBytesForSerializedVersion = threadStateIndex;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "%s: %lu threadStateIndex", buf, 0x16u);
    }

    *__error() = v15;
    v20 = [(SARecipeState *)self debugDescription];
    _SASetCrashLogMessage(5659, "%s: %lu threadStateIndex", [v20 UTF8String], self->_threadStateIndex);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  v9 = self->_threadStateIndex;
  if (v9 >= 0xFFFFFFFF)
  {
    goto LABEL_7;
  }

  *(&buffer->var2 + 2) = v9;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_thread, dictionary);
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    thread = self->_thread;

    [(SAThread *)thread addSelfToSerializationDictionary:dictionary];
  }
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
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SARecipeState struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(5680, "bufferLength %lu < serialized SARecipeState struct %lu", length, 14);
    _os_crash();
    __break(1u);
LABEL_7:
    v9 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SARecipeState version" userInfo:0];
    objc_exception_throw(v9);
  }

  result = objc_alloc_init(objc_opt_class());
  *(result + 2) = *(buffer + 10);
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
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SARecipeState struct %lu", buf, 0x16u);
    }

    *__error() = v14;
    _SASetCrashLogMessage(5694, "bufferLength %lu < serialized SARecipeState struct %lu", length, 14);
    _os_crash();
    __break(1u);
LABEL_9:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SARecipeState version" userInfo:0];
    objc_exception_throw(v16);
  }

  v10 = *(buffer + 2);
  v11 = objc_opt_class();
  v12 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v10, dictionary, bufferDictionary, v11);
  thread = self->_thread;
  self->_thread = v12;
}

@end