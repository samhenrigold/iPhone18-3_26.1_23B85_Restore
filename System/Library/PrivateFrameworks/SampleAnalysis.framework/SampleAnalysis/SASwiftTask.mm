@interface SASwiftTask
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SASwiftTask

- (NSString)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SwiftTask %llu", -[SARecipe identifier](self, "identifier")];

  return v2;
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  states = [(SARecipe *)self states];
  v3 = 8 * [states count];

  return v3 + 14;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v34 = *MEMORY[0x1E69E9840];
  if ([(SASwiftTask *)self sizeInBytesForSerializedVersion]!= length)
  {
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(SASwiftTask *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v17 UTF8String];
      v30 = 2048;
      sizeInBytesForSerializedVersion = [(SASwiftTask *)self sizeInBytesForSerializedVersion];
      v32 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v15;
    v18 = [(SASwiftTask *)self debugDescription];
    _SASetCrashLogMessage(5568, "%s: size %lu != buffer length %lu", [v18 UTF8String], -[SASwiftTask sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
LABEL_7:
    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [(SASwiftTask *)self debugDescription];
      uTF8String2 = [v21 UTF8String];
      states = [(SARecipe *)self states];
      v24 = [states count];
      *buf = 136315394;
      uTF8String = uTF8String2;
      v30 = 2048;
      sizeInBytesForSerializedVersion = v24;
      _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "%s: %lu swiftTaskStates", buf, 0x16u);
    }

    *__error() = v19;
    v25 = [(SASwiftTask *)self debugDescription];
    uTF8String3 = [v25 UTF8String];
    states2 = [(SARecipe *)self states];
    _SASetCrashLogMessage(5575, "%s: %lu swiftTaskStates", uTF8String3, [states2 count]);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = [(SARecipe *)self identifier];
  states3 = [(SARecipe *)self states];
  v10 = [states3 count];

  if (v10 >= 0xFFFFFFFF)
  {
    goto LABEL_7;
  }

  states4 = [(SARecipe *)self states];
  *(&buffer->var2 + 2) = [states4 count];

  v12 = *(&buffer->var2 + 2);
  states5 = [(SARecipe *)self states];
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var2 + 6, v12, states5, dictionary);

  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v17 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    states = [(SARecipe *)self states];
    v8 = [states countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(states);
          }

          [*(*(&v12 + 1) + 8 * v11++) addSelfToSerializationDictionary:dictionary];
        }

        while (v9 != v11);
        v9 = [states countByEnumeratingWithState:&v12 objects:v16 count:16];
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

  if (length <= 0xD)
  {
    v7 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v14 = 2048;
      v15 = 14;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASwiftTask struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(5598, "bufferLength %lu < serialized SASwiftTask struct %lu", length, 14);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 10) + 14 > length)
  {
LABEL_8:
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(bufferCopy + 10);
      *buf = 134218240;
      lengthCopy2 = length;
      v14 = 1024;
      LODWORD(v15) = v10;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASwiftTask struct with %u swiftTaskStates", buf, 0x12u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(5599, "bufferLength %lu < serialized SASwiftTask struct with %u swiftTaskStates", length, *(bufferCopy + 10));
    _os_crash();
    __break(1u);
LABEL_11:
    v11 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SASwiftTask version" userInfo:0];
    objc_exception_throw(v11);
  }

  [(SADispatchQueue *)SASwiftTask dispatchQueueWithId:?];
  return objc_claimAutoreleasedReturnValue();
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  *&v24[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_15;
  }

  if (length <= 0xD)
  {
    v15 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v23 = 2048;
      *v24 = 14;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASwiftTask struct %lu", buf, 0x16u);
    }

    *__error() = v15;
    _SASetCrashLogMessage(5611, "bufferLength %lu < serialized SASwiftTask struct %lu", length, 14);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  bufferCopy = buffer;
  v9 = *(buffer + 10);
  v6 = 8 * v9 + 14;
  if (v6 > length)
  {
LABEL_12:
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(bufferCopy + 10);
      *buf = 134218496;
      lengthCopy2 = length;
      v23 = 1024;
      *v24 = v18;
      v24[2] = 2048;
      *&v24[3] = v6;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASwiftTask struct v1 with %u swiftTaskStates (%llu)", buf, 0x1Cu);
    }

    *__error() = v16;
    _SASetCrashLogMessage(5613, "bufferLength %lu < serialized SASwiftTask struct v1 with %u swiftTaskStates (%llu)", length, *(bufferCopy + 10), v6);
    _os_crash();
    __break(1u);
LABEL_15:
    v19 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SASwiftTask version" userInfo:0];
    objc_exception_throw(v19);
  }

  v13 = objc_opt_class();
  v14 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 14, v9, dictionary, bufferDictionary, v13);
  if (self)
  {
    v20 = v14;
    objc_setProperty_atomic(self, v14, v14, 8);
    v14 = v20;
  }
}

@end