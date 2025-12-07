@interface SAMountSnapshot
+ (SAMountSnapshot)mountSnapshotWithoutReferencesFromPAStyleMountSnapshot:(uint64_t)snapshot;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAMountSnapshot

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v37 = *MEMORY[0x1E69E9840];
  if ([(SAMountSnapshot *)self sizeInBytesForSerializedVersion]!= length)
  {
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(SAMountSnapshot *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v18 UTF8String];
      v33 = 2048;
      sizeInBytesForSerializedVersion = [(SAMountSnapshot *)self sizeInBytesForSerializedVersion];
      v35 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v16;
    v19 = [(SAMountSnapshot *)self debugDescription];
    _SASetCrashLogMessage(683, "%s: size %lu != buffer length %lu", [v19 UTF8String], -[SAMountSnapshot sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
LABEL_14:
    v20 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(SAMountSnapshot *)self debugDescription];
      uTF8String2 = [v22 UTF8String];
      v24 = [(NSArray *)self->_blockedThreadIDs count];
      *buf = 136315394;
      uTF8String = uTF8String2;
      v33 = 2048;
      sizeInBytesForSerializedVersion = v24;
      _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "%s: %lu blockedThreadIDs", buf, 0x16u);
    }

    *__error() = v20;
    v25 = [(SAMountSnapshot *)self debugDescription];
    _SASetCrashLogMessage(692, "%s: %lu blockedThreadIDs", [v25 UTF8String], -[NSArray count](self->_blockedThreadIDs, "count"));

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var3 + 6) = *&self->_timestampOfLastResponse;
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_timeWhenMeasured, dictionary);
  if ([(NSArray *)self->_blockedThreadIDs count]>= 0xFFFFFFFF)
  {
    goto LABEL_14;
  }

  *(&buffer->var1 + 1) = [(NSArray *)self->_blockedThreadIDs count];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = self->_blockedThreadIDs;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = (&buffer->var4 + 6);
    v13 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v9);
        }

        *v12++ = [*(*(&v26 + 1) + 8 * i) unsignedLongLongValue];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    timeWhenMeasured = self->_timeWhenMeasured;

    [(SATimestamp *)timeWhenMeasured addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v22 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_14;
  }

  if (length <= 0x15)
  {
    v13 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v20 = 2048;
      v21 = 22;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountSnapshot struct %lu", buf, 0x16u);
    }

    *__error() = v13;
    _SASetCrashLogMessage(718, "bufferLength %lu < serialized SAMountSnapshot struct %lu", length, 22);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 2) + 22 > length)
  {
LABEL_11:
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(bufferCopy + 2);
      *buf = 134218240;
      lengthCopy2 = length;
      v20 = 2048;
      v21 = v16;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu blockedThreads", buf, 0x16u);
    }

    *__error() = v14;
    _SASetCrashLogMessage(719, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu blockedThreads", length, *(bufferCopy + 2));
    _os_crash();
    __break(1u);
LABEL_14:
    v17 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMountSnapshot version" userInfo:0];
    objc_exception_throw(v17);
  }

  v6 = objc_alloc_init(SAMountSnapshot);
  v6->_timestampOfLastResponse = *(bufferCopy + 14);
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(bufferCopy + 2)];
  if (*(bufferCopy + 2))
  {
    v8 = 0;
    do
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(bufferCopy + 22 + 8 * v8)];
      [v7 addObject:v9];

      ++v8;
    }

    while (v8 < *(bufferCopy + 2));
  }

  v10 = [v7 copy];
  blockedThreadIDs = v6->_blockedThreadIDs;
  v6->_blockedThreadIDs = v10;

  return v6;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v24 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_13;
  }

  if (length <= 0x15)
  {
    v15 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v22 = 2048;
      v23 = 22;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountSnapshot struct %lu", buf, 0x16u);
    }

    *__error() = v15;
    _SASetCrashLogMessage(739, "bufferLength %lu < serialized SAMountSnapshot struct %lu", length, 22);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 2) + 22 > length)
  {
LABEL_10:
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(bufferCopy + 2);
      *buf = 134218240;
      lengthCopy2 = length;
      v22 = 2048;
      v23 = v18;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu blockedThreads", buf, 0x16u);
    }

    *__error() = v16;
    _SASetCrashLogMessage(740, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu blockedThreads", length, *(bufferCopy + 2));
    _os_crash();
    __break(1u);
LABEL_13:
    v19 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMountSnapshot version" userInfo:0];
    objc_exception_throw(v19);
  }

  v11 = *(buffer + 6);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  timeWhenMeasured = self->_timeWhenMeasured;
  self->_timeWhenMeasured = v13;
}

+ (SAMountSnapshot)mountSnapshotWithoutReferencesFromPAStyleMountSnapshot:(uint64_t)snapshot
{
  objc_opt_self();
  v3 = objc_alloc_init(SAMountSnapshot);
  v3->_timestampOfLastResponse = *(a2 + 16);
  v4 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:*(a2 + 8) machContTimeSec:0.0 wallTime:0.0];
  timeWhenMeasured = v3->_timeWhenMeasured;
  v3->_timeWhenMeasured = v4;

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (*(a2 + 24))
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a2 + 28 + 8 * v7)];
      [v6 addObject:v8];

      ++v7;
    }

    while (v7 < *(a2 + 24));
  }

  v9 = [v6 copy];
  blockedThreadIDs = v3->_blockedThreadIDs;
  v3->_blockedThreadIDs = v9;

  return v3;
}

@end