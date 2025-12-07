@interface SAKernelCache
+ (id)kernelCacheWithUUID:(id)d loadAddress:(unint64_t)address;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (void)_doKernelCachesWork:(uint64_t)work;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)matchesUUID:(unsigned __int8)d[16] loadAddress:(unint64_t)address;
- (NSString)debugDescription;
- (unint64_t)endAddress;
- (unint64_t)startAddress;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SAKernelCache

+ (void)_doKernelCachesWork:(uint64_t)work
{
  objc_opt_self();
  if (qword_1EDD03218 != -1)
  {
    dispatch_once(&qword_1EDD03218, &__block_literal_global_424);
  }

  obj = qword_1EDD03210;
  objc_sync_enter(obj);
  (*(a2 + 16))(a2, qword_1EDD03210);
  objc_sync_exit(obj);
}

void __37__SAKernelCache__doKernelCachesWork___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v1 = qword_1EDD03210;
  qword_1EDD03210 = v0;
}

+ (id)kernelCacheWithUUID:(id)d loadAddress:(unint64_t)address
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__SAKernelCache_kernelCacheWithUUID_loadAddress___block_invoke;
  v6[3] = &unk_1E86F68D8;
  v6[5] = &v7;
  v6[6] = address;
  v6[4] = d;
  [(SAKernelCache *)self _doKernelCachesWork:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __49__SAKernelCache_kernelCacheWithUUID_loadAddress___block_invoke(void *a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:a1[4]];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [a2 setObject:v3 forKeyedSubscript:a1[4]];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v46;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v46 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v45 + 1) + 8 * i);
        if ([v9 loadAddress] == a1[6])
        {
          objc_storeStrong((*(a1[5] + 8) + 40), v9);
          v18 = v4;
          goto LABEL_30;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = [SAKernelCache alloc];
  if (v10)
  {
    v11 = a1[4];
    v12 = a1[6];
    v49.receiver = v10;
    v49.super_class = SAKernelCache;
    v13 = objc_msgSendSuper2(&v49, sel_init);
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 1, v11);
      v14[3] = v12;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1[5] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = [v4 firstObject];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 binaryLoadInfos];
    if ([v19 count])
    {
      v37 = v4;
      v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v19, "count")}];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v36 = v19;
      obj = v19;
      v20 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v42;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v42 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v41 + 1) + 8 * j);
            v25 = [v24 loadAddress];
            v26 = v18;
            v27 = v25 - [v18 loadAddress];
            v28 = [*(*(a1[5] + 8) + 40) loadAddress];
            v29 = [v24 segment];

            if (v29)
            {
              v30 = [v24 segment];
              v31 = [v24 isInKernelAddressSpace];
              v32 = [v24 exclave];
              [SABinaryLoadInfo binaryLoadInfoWithSegment:v30 loadAddress:v28 + v27 isInKernelAddressSpace:v31 exclave:v32];
            }

            else
            {
              v30 = [v24 binary];
              v33 = [v24 isInKernelAddressSpace];
              v32 = [v24 exclave];
              [SABinaryLoadInfo binaryLoadInfoWithBinary:v30 loadAddress:v28 + v27 isInKernelAddressSpace:v33 exclave:v32];
            }
            v34 = ;

            [v39 addObject:v34];
            v18 = v26;
          }

          v21 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
        }

        while (v21);
      }

      v35 = [v39 copy];
      [*(*(a1[5] + 8) + 40) setBinaryLoadInfos:v35];

      v19 = v36;
      v4 = v37;
    }
  }

  [v4 addObject:*(*(a1[5] + 8) + 40)];
LABEL_30:
}

- (BOOL)matchesUUID:(unsigned __int8)d[16] loadAddress:(unint64_t)address
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_loadAddress != address)
  {
    return 0;
  }

  *uu1 = 0;
  v7 = 0;
  [(NSUUID *)self->_uuid getUUIDBytes:uu1];
  return uuid_compare(uu1, d) == 0;
}

- (unint64_t)startAddress
{
  firstObject = [(NSArray *)self->_binaryLoadInfos firstObject];
  v3 = firstObject;
  if (firstObject)
  {
    loadAddress = [firstObject loadAddress];
  }

  else
  {
    loadAddress = -1;
  }

  return loadAddress;
}

- (unint64_t)endAddress
{
  lastObject = [(NSArray *)self->_binaryLoadInfos lastObject];
  v3 = lastObject;
  if (lastObject)
  {
    v4 = [lastObject length];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x10000000;
    }

    v6 = v5 + [v3 loadAddress];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"0x%llx Kernel cache <%@> (%lu binaries)", self->_loadAddress, self->_uuid, -[NSArray count](self->_binaryLoadInfos, "count")];

  return v2;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  SAJSONWriteDictionaryFirstEntry(stream, @"uuid", uUIDString);

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_loadAddress];
  SAJSONWriteDictionaryEntry(stream, @"loadAddress", v6);

  if (self->_binaryLoadInfos)
  {
    [stream appendString:{@", binaryLoadInfos:"}];
    binaryLoadInfos = self->_binaryLoadInfos;

    SAJSONWriteArray(stream, binaryLoadInfos);
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  *&buffer->var0 = 257;
  *(&buffer->var3 + 1) = self->_loadAddress;
  [(NSUUID *)self->_uuid getUUIDBytes:buffer->var2];
  if ([(SAKernelCache *)self sizeInBytesForSerializedVersion]== length)
  {
    if ([(NSArray *)self->_binaryLoadInfos count]< 0xFFFF)
    {
      v10 = [(NSArray *)self->_binaryLoadInfos count];
      buffer->var3 = v10;
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var4 + 4, v10, self->_binaryLoadInfos, dictionary);
      return 1;
    }

    length = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      dictionary = [(SAKernelCache *)self debugDescription];
      *buf = 136315394;
      lengthCopy = [dictionary UTF8String];
      v19 = 1024;
      LODWORD(v20) = 0xFFFF;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "%s: more than %d binaries", buf, 0x12u);
    }

    *__error() = length;
    v16 = [(SAKernelCache *)self debugDescription];
    _SASetCrashLogMessage(5434, "%s: more than %d binaries", [v16 UTF8String], 0xFFFF);

    v11 = _os_crash();
    __break(1u);
LABEL_12:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v19 = 2048;
      v20 = 28;
      _os_log_error_impl(&dword_1E0E2F000, dictionary, OS_LOG_TYPE_ERROR, "bufferLength %lu != serialized SAKernelCache struct %lu", buf, 0x16u);
    }

    *__error() = v5;
    _SASetCrashLogMessage(5440, "bufferLength %lu != serialized SAKernelCache struct %lu", length, 28);
    _os_crash();
    __break(1u);
  }

  v5 = *__error();
  v11 = _sa_logt();
  dictionary = v11;
  if (length != 28)
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(SAKernelCache *)self debugDescription];
    v13 = [(NSArray *)self->_binaryLoadInfos count];
    *buf = 138412546;
    lengthCopy = v12;
    v19 = 2048;
    v20 = v13;
    _os_log_impl(&dword_1E0E2F000, dictionary, OS_LOG_TYPE_DEFAULT, "WARNING: SAKernelCache %@ got its %lu binaries after starting serialization!", buf, 0x16u);
  }

  *__error() = v5;
  buffer->var3 = 0;
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
    v7 = self->_binaryLoadInfos;
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
  *&v17[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_11;
  }

  if (length <= 0x1B)
  {
    v9 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v16 = 2048;
      *v17 = 28;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAKernelCache struct %lu", buf, 0x16u);
    }

    *__error() = v9;
    _SASetCrashLogMessage(5463, "bufferLength %lu < serialized SAKernelCache struct %lu", length, 28);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 9) + 28 > length)
  {
LABEL_8:
    v10 = *__error();
    v11 = _sa_logt();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(bufferCopy + 18);
      *buf = 134218496;
      lengthCopy2 = length;
      v16 = 1024;
      *v17 = v12;
      v17[2] = 2048;
      *&v17[3] = 8 * v12 + 28;
      _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAKernelCache struct plus %u load infos %lu", buf, 0x1Cu);
    }

    *__error() = v10;
    _SASetCrashLogMessage(5464, "bufferLength %lu < serialized SAKernelCache struct plus %u load infos %lu", length, *(bufferCopy + 18), 8 * *(bufferCopy + 18) + 28);
    _os_crash();
    __break(1u);
LABEL_11:
    v13 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAKernelCache version" userInfo:0];
    objc_exception_throw(v13);
  }

  v6 = uuidForBytes(buffer + 2);
  v7 = [SAKernelCache kernelCacheWithUUID:v6 loadAddress:*(bufferCopy + 20)];

  return v7;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  *&v24[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_16;
  }

  if (length <= 0x1B)
  {
    v15 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v23 = 2048;
      *v24 = 28;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAKernelCache struct %lu", buf, 0x16u);
    }

    *__error() = v15;
    _SASetCrashLogMessage(5478, "bufferLength %lu < serialized SAKernelCache struct %lu", length, 28);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 9) + 28 > length)
  {
LABEL_13:
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(bufferCopy + 18);
      *buf = 134218496;
      lengthCopy2 = length;
      v23 = 1024;
      *v24 = v18;
      v24[2] = 2048;
      *&v24[3] = 8 * v18 + 28;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAKernelCache struct plus %u load infos %lu", buf, 0x1Cu);
    }

    *__error() = v16;
    _SASetCrashLogMessage(5479, "bufferLength %lu < serialized SAKernelCache struct plus %u load infos %lu", length, *(bufferCopy + 18), 8 * *(bufferCopy + 18) + 28);
    _os_crash();
    __break(1u);
LABEL_16:
    v19 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAInstruction version" userInfo:0];
    objc_exception_throw(v19);
  }

  if (![(NSArray *)self->_binaryLoadInfos count])
  {
    v11 = *(bufferCopy + 18);
    if (*(bufferCopy + 18))
    {
      v12 = objc_opt_class();
      v20 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 28, v11, dictionary, bufferDictionary, v12);
      v13 = [v20 copy];
      binaryLoadInfos = self->_binaryLoadInfos;
      self->_binaryLoadInfos = v13;
    }
  }
}

@end