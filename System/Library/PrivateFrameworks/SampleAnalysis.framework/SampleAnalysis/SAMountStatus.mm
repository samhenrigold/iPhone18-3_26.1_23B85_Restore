@interface SAMountStatus
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)enumerateSnapshotsBetweenStartTime:(void *)time endTime:(uint64_t)endTime block:;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)populateReferencesUsingPAStyleSerializedMountStatus:(void *)status andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:;
@end

@implementation SAMountStatus

- (void)enumerateSnapshotsBetweenStartTime:(void *)time endTime:(uint64_t)endTime block:
{
  v24 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = *(self + 8);
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v20;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        if (!a2 || (!v13 ? (Property = 0) : (Property = objc_getProperty(*(*(&v19 + 1) + 8 * v12), v9, 8, 1)), ([Property lt:a2] & 1) == 0))
        {
          if (time)
          {
            if (v13)
            {
              v15 = *(v13 + 16);
              [time machAbsTimeSeconds];
              if (v15 > v16)
              {
                break;
              }
            }
          }

          v18 = 0;
          (*(endTime + 16))(endTime, v13, &v18);
          if (v18)
          {
            break;
          }
        }

        if (v10 == ++v12)
        {
          v17 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
          v10 = v17;
          if (v17)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(SAMountStatus *)self sizeInBytesForSerializedVersion]!= length)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SAMountStatus *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v13 UTF8String];
      v23 = 2048;
      sizeInBytesForSerializedVersion = [(SAMountStatus *)self sizeInBytesForSerializedVersion];
      v25 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SAMountStatus *)self debugDescription];
    _SASetCrashLogMessage(580, "%s: size %lu != buffer length %lu", [v14 UTF8String], -[SAMountStatus sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
LABEL_7:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(SAMountStatus *)self debugDescription];
      uTF8String2 = [v17 UTF8String];
      v19 = [(NSMutableArray *)self->_snapshots count];
      *buf = 136315394;
      uTF8String = uTF8String2;
      v23 = 2048;
      sizeInBytesForSerializedVersion = v19;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "%s: %lu snapshot", buf, 0x16u);
    }

    *__error() = v15;
    v20 = [(SAMountStatus *)self debugDescription];
    _SASetCrashLogMessage(588, "%s: %lu snapshot", [v20 UTF8String], -[NSMutableArray count](self->_snapshots, "count"));

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var2 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_path, dictionary);
  *(&buffer->var3 + 4) = SASerializableIndexForPointerFromSerializationDictionary(self->_type, dictionary);
  if ([(NSMutableArray *)self->_snapshots count]>= 0xFFFF)
  {
    goto LABEL_7;
  }

  v9 = [(NSMutableArray *)self->_snapshots count];
  buffer->var2 = v9;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var4 + 4, v9, self->_snapshots, dictionary);
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
    v7 = self->_snapshots;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [(NSString *)self->_path addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_type addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v16 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_13;
  }

  if (length <= 0x13)
  {
    v7 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v14 = 2048;
      v15 = 20;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatus struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(616, "bufferLength %lu < serialized SAMountStatus struct %lu", length, 20);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 1) + 20 > length)
  {
LABEL_10:
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(bufferCopy + 2);
      *buf = 134218240;
      lengthCopy2 = length;
      v14 = 1024;
      LODWORD(v15) = v10;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatus struct with %u snapshots", buf, 0x12u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(617, "bufferLength %lu < serialized SAMountStatus struct with %u snapshots", length, *(bufferCopy + 2));
    _os_crash();
    __break(1u);
LABEL_13:
    v11 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMountStatus version" userInfo:0];
    objc_exception_throw(v11);
  }

  return objc_alloc_init(SAMountStatus);
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v37 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_17;
  }

  if (length <= 0x13)
  {
    v23 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v35 = 2048;
      v36 = 20;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatus struct %lu", buf, 0x16u);
    }

    *__error() = v23;
    _SASetCrashLogMessage(629, "bufferLength %lu < serialized SAMountStatus struct %lu", length, 20);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 1) + 20 > length)
  {
LABEL_11:
    v24 = *__error();
    self = _sa_logt();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_ERROR))
    {
      v25 = *(bufferCopy + 2);
      *buf = 134218240;
      lengthCopy2 = length;
      v35 = 1024;
      LODWORD(v36) = v25;
      _os_log_error_impl(&dword_1E0E2F000, &self->super, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatus struct with %u snapshots", buf, 0x12u);
    }

    *__error() = v24;
    _SASetCrashLogMessage(630, "bufferLength %lu < serialized SAMountStatus struct with %u snapshots", length, *(bufferCopy + 2));
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v11 = *(buffer + 4);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  path = self->_path;
  self->_path = v13;

  v15 = *(bufferCopy + 12);
  v16 = objc_opt_class();
  v17 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16);
  type = self->_type;
  self->_type = v17;

  v19 = *(bufferCopy + 2);
  if (v19 == 0xFFFF)
  {
LABEL_14:
    v26 = *__error();
    v27 = _sa_logt();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [(SAMountStatus *)self debugDescription];
      uTF8String = [v28 UTF8String];
      v30 = *(bufferCopy + 2);
      *buf = 136315394;
      lengthCopy2 = uTF8String;
      v35 = 1024;
      LODWORD(v36) = v30;
      _os_log_error_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_ERROR, "%s: %u snapshots", buf, 0x12u);
    }

    *__error() = v26;
    v31 = [(SAMountStatus *)self debugDescription];
    _SASetCrashLogMessage(635, "%s: %u snapshots", [v31 UTF8String], *(bufferCopy + 2));

    _os_crash();
    __break(1u);
LABEL_17:
    v32 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMountStatus version" userInfo:0];
    objc_exception_throw(v32);
  }

  v20 = objc_opt_class();
  v21 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 20, v19, dictionary, bufferDictionary, v20);
  snapshots = self->_snapshots;
  self->_snapshots = v21;
}

- (void)populateReferencesUsingPAStyleSerializedMountStatus:(void *)status andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:
{
  v35 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = *(a2 + 8);
    v9 = objc_opt_class();
    v10 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v8, status, dictionary, v9);
    v11 = self[2];
    self[2] = v10;

    v12 = *(a2 + 16);
    v13 = objc_opt_class();
    v14 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, status, dictionary, v13);
    v15 = self[3];
    self[3] = v14;

    v16 = *(a2 + 24);
    v17 = objc_opt_class();
    v18 = SASerializableNewMutableArrayFromIndexList(a2 + 28, v16, status, dictionary, v17);
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 24)];
    v20 = self[1];
    self[1] = v19;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v22)
    {
      v24 = v22;
      v25 = *v31;
      do
      {
        v26 = 0;
        do
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v21);
          }

          Property = *(*(&v30 + 1) + 8 * v26);
          v28 = self[1];
          if (Property)
          {
            Property = objc_getProperty(Property, v23, 8, 1);
          }

          v29 = Property;
          [v28 addObject:{v29, v30}];

          ++v26;
        }

        while (v24 != v26);
        v24 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v24);
    }
  }
}

@end