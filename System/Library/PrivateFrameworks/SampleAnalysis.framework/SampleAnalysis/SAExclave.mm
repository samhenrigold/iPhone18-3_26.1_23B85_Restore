@interface SAExclave
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (uint64_t)fixupFrameInstructionsWithNewInstructions:(_BYTE *)instructions foundNewBinaryInfo:;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)enumerateFrames:(uint64_t)frames;
- (void)fillInName:(id)self textLayout:(uint64_t)layout dataGatheringOptions:;
- (void)initWithIdentifier:(void *)identifier;
- (void)initWithKCData:(const char *)data name:(void *)name textLayout:(uint64_t)layout dataGatheringOptions:;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAExclave

- (void)initWithIdentifier:(void *)identifier
{
  if (!identifier)
  {
    return 0;
  }

  v8.receiver = identifier;
  v8.super_class = SAExclave;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[2] = a2;
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = v4[6];
    v4[6] = v5;
  }

  return v4;
}

- (void)initWithKCData:(const char *)data name:(void *)name textLayout:(uint64_t)layout dataGatheringOptions:
{
  if (!self)
  {
    return 0;
  }

  v8 = [(SAExclave *)self initWithIdentifier:?];
  v9 = v8;
  if (v8)
  {
    [(SAExclave *)v8 fillInName:data textLayout:name dataGatheringOptions:layout];
  }

  return v9;
}

- (void)fillInName:(id)self textLayout:(uint64_t)layout dataGatheringOptions:
{
  v64 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (a2 && !*(self + 8))
    {
      v21 = SANSStringForCString(a2);
      v22 = *(self + 8);
      *(self + 8) = v21;

      if (!self)
      {
        return;
      }
    }

    else if (!self)
    {
      return;
    }

    v6 = [objc_getProperty(self a2];
    v7 = [*(self + 24) count];
    v9 = *(self + 32) ? v7 + 1 : v7;
    if (v6 > v9)
    {
      v10 = *(*(self + 1) + 8);
      *(self + 40) = v10;
      if ((v10 & 4) != 0)
      {
        v11 = *(*(self + 1) + 16);
        if (v11 != -1)
        {
          if ([objc_getProperty(self v8] > v11)
          {
            v13 = [objc_getProperty(self v12];
            if (!v13)
            {
              uuidForBytes(0);
              objc_claimAutoreleasedReturnValue();
              __break(1u);
              return;
            }

            v14 = v13;
            v15 = uuidForBytes(*(v13 + 8));
            v16 = *(v14[1] + 16);
            v17 = objc_opt_self();
            v18 = [(SASharedCache *)v17 sharedCacheWithUUID:v15 slide:-1 slidBaseAddress:v16 dataGatheringOptions:layout];
            v19 = *(self + 32);
            *(self + 32) = v18;

            v20 = *(self + 32);
            if (v20)
            {
              *(v20 + 25) = 1;
            }

            goto LABEL_22;
          }

          v23 = *__error();
          v24 = _sa_logt();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v48 = [self debugDescription];
            *buf = 138412802;
            v59 = v48;
            v60 = 1024;
            v61 = v11;
            v62 = 2048;
            v63 = [objc_getProperty(self v49];
            _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "Exclave %@ has shared cache index %u, but only %lu load infos", buf, 0x1Cu);
          }

          *__error() = v23;
        }
      }

      LODWORD(v11) = -1;
LABEL_22:
      if ([objc_getProperty(self v8])
      {
        v25 = objc_alloc(MEMORY[0x1E695DF70]);
        v27 = [v25 initWithCapacity:{objc_msgSend(objc_getProperty(self, v26, 16, 1), "count") - (v11 != -1)}];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v29 = objc_getProperty(self, v28, 16, 1);
        v30 = [v29 countByEnumeratingWithState:&v53 objects:v57 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = 0;
          v33 = *v54;
          v50 = v11;
          do
          {
            v34 = v32;
            v35 = 0;
            v51 = v34;
            v36 = v11 - v34;
            do
            {
              if (*v54 != v33)
              {
                objc_enumerationMutation(v29);
              }

              if (v36 != v35)
              {
                v37 = *(*(&v53 + 1) + 8 * v35);
                if (v37)
                {
                  v38 = *(v37 + 8);
                  v39 = v38 + 16;
                }

                else
                {
                  v38 = 0;
                  v39 = 16;
                }

                v40 = *v39;
                v41 = uuidForBytes(v38);
                v42 = [SABinary binaryWithUUID:v41 absolutePath:0];
                v43 = [(SABinary *)v42 segmentWithCleanName:0 length:0x7FFFFFFFFFFFFFFFLL offsetIntoBinary:?];
                v44 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v43 loadAddress:v40 isInKernelAddressSpace:1 exclave:self];
                [v27 addObject:v44];
              }

              ++v35;
            }

            while (v31 != v35);
            v32 = v51 + v31;
            v45 = [v29 countByEnumeratingWithState:&v53 objects:v57 count:16];
            v31 = v45;
            LODWORD(v11) = v50;
          }

          while (v45);
        }

        objc_opt_self();
        [v27 sortUsingComparator:&__block_literal_global_361];
        v46 = [v27 copy];
        v47 = *(self + 24);
        *(self + 24) = v46;
      }
    }
  }
}

- (void)enumerateFrames:(uint64_t)frames
{
  if (frames)
  {
    v3 = *(frames + 48);
    if (v3)
    {
      [SAFrame enumerateFrameTree:v3 block:a2];
    }
  }
}

- (uint64_t)fixupFrameInstructionsWithNewInstructions:(_BYTE *)instructions foundNewBinaryInfo:
{
  if (result)
  {
    if (instructions)
    {
      *instructions = 0;
    }

    v4 = result[6];
    if (v4)
    {
      return [SAFrame fixupLoadInfosInFrameTree:v4 binaryLoadInfos:result[3] libraryCache:result[4] uuidsWithNewInstructions:a2];
    }
  }

  return result;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(SAExclave *)self identifier];
  name = [(SAExclave *)self name];
  v6 = [v3 initWithFormat:@"exclave 0x%llx %@", identifier, name];

  return v6;
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
  }

  v3 = [(SAExclave *)self count];
  loadInfos = [(SAExclave *)selfCopy loadInfos];
  v5 = 8 * ([loadInfos count] + v3);

  return v5 + 42;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  lengthCopy = length;
  selfCopy = self;
  v46 = *MEMORY[0x1E69E9840];
  if ([(SAExclave *)self sizeInBytesForSerializedVersion]!= length)
  {
    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [selfCopy debugDescription];
      uTF8String = [v21 UTF8String];
      *buf = 136315650;
      v40 = uTF8String;
      v41 = 2048;
      *v42 = [selfCopy sizeInBytesForSerializedVersion];
      *&v42[8] = 2048;
      *v43 = lengthCopy;
      _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v19;
    v22 = [selfCopy debugDescription];
    _SASetCrashLogMessage(376, "%s: size %lu != buffer length %lu", [v22 UTF8String], objc_msgSend(selfCopy, "sizeInBytesForSerializedVersion"), lengthCopy);

    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  *&buffer->var0 = 513;
  name = [selfCopy name];
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(name, dictionary);

  *(&buffer->var2 + 2) = [selfCopy identifier];
  if (!selfCopy)
  {
    goto LABEL_20;
  }

  *(&buffer->var3 + 2) = selfCopy[5];
  for (i = objc_getProperty(selfCopy, v11, 48, 1); ; i = 0)
  {
    lengthCopy = i;
    if ([lengthCopy count] >= 0xFFFFFFFF)
    {
LABEL_11:
      v23 = *__error();
      v24 = _sa_logt();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [selfCopy debugDescription];
        uTF8String = [v25 UTF8String];
        v26 = [lengthCopy count];
        *buf = 136315394;
        v40 = uTF8String;
        v41 = 2048;
        *v42 = v26;
        _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "%s: %lu rootFrames", buf, 0x16u);
      }

      *__error() = v23;
      selfCopy = [selfCopy debugDescription];
      _SASetCrashLogMessage(386, "%s: %lu rootFrames", [selfCopy UTF8String], objc_msgSend(lengthCopy, "count"));

      _os_crash();
      __break(1u);
LABEL_14:
      v17 = *__error();
      v27 = _sa_logt();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [selfCopy debugDescription];
        uTF8String2 = [v28 UTF8String];
        v30 = [uTF8String count];
        *buf = 136315394;
        v40 = uTF8String2;
        v41 = 2048;
        *v42 = v30;
        _os_log_error_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_ERROR, "%s: %lu loadInfos", buf, 0x16u);
      }

      *__error() = v17;
      selfCopy = [selfCopy debugDescription];
      buffer = [selfCopy UTF8String];
      _SASetCrashLogMessage(392, "%s: %lu loadInfos", buffer, [uTF8String count]);

      _os_crash();
      __break(1u);
      goto LABEL_17;
    }

    v13 = [lengthCopy count];
    *(&buffer->var4 + 2) = v13;
    SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var5 + 2, v13, lengthCopy, dictionary);
    uTF8String = [selfCopy loadInfos];
    if ([uTF8String count] >= 0xFFFFFFFF)
    {
      goto LABEL_14;
    }

    v14 = [uTF8String count];
    *(&buffer->var4 + 6) = v14;
    v15 = &buffer->var5 + 8 * *(&buffer->var4 + 2) + 2;
    SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v15, v14, uTF8String, dictionary);
    v16 = &v15[8 * *(&buffer->var4 + 6)];
    v17 = v16 - buffer + 8;
    if (v17 <= [selfCopy sizeInBytesForSerializedVersion])
    {
      break;
    }

LABEL_17:
    v31 = *__error();
    v32 = _sa_logt();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [selfCopy debugDescription];
      uTF8String3 = [v33 UTF8String];
      v35 = *(&buffer->var4 + 2);
      v36 = *(&buffer->var4 + 6);
      sizeInBytesForSerializedVersion = [selfCopy sizeInBytesForSerializedVersion];
      *buf = 136316162;
      v40 = uTF8String3;
      v41 = 1024;
      *v42 = v35;
      *&v42[4] = 1024;
      *&v42[6] = v36;
      *v43 = 2048;
      *&v43[2] = v17;
      v44 = 2048;
      v45 = sizeInBytesForSerializedVersion;
      _os_log_error_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_ERROR, "%s: after serializing (with %u rootFrames, %u loadInfos), ended with length %ld, should be %lu", buf, 0x2Cu);
    }

    *__error() = v31;
    v38 = [selfCopy debugDescription];
    dictionary = [v38 UTF8String];
    uTF8String = *(&buffer->var4 + 2);
    buffer = *(&buffer->var4 + 6);
    _SASetCrashLogMessage(399, "%s: after serializing (with %u rootFrames, %u loadInfos), ended with length %ld, should be %lu", dictionary, uTF8String, buffer, v17, [selfCopy sizeInBytesForSerializedVersion]);

    _os_crash();
    __break(1u);
LABEL_20:
    *(&buffer->var3 + 2) = 0;
  }

  *v16 = SASerializableIndexForPointerFromSerializationDictionary(selfCopy[4], dictionary);

  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v30 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    name = [(SAExclave *)self name];
    [name addSelfToSerializationDictionary:dictionary];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    if (self)
    {
      Property = objc_getProperty(self, v8, 48, 1);
    }

    else
    {
      Property = 0;
    }

    v10 = Property;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v24 + 1) + 8 * v14++) addSelfToSerializationDictionary:dictionary];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v12);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    loadInfos = [(SAExclave *)self loadInfos];
    v16 = [loadInfos countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(loadInfos);
          }

          [*(*(&v20 + 1) + 8 * v19++) addSelfToSerializationDictionary:dictionary];
        }

        while (v17 != v19);
        v17 = [loadInfos countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v17);
    }

    [(SASharedCache *)self->_sharedCache addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v14 = *MEMORY[0x1E69E9840];
  if (*buffer >= 3u)
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
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAExclave struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(429, "bufferLength %lu < serialized SAExclave struct %lu", length, 34);
    _os_crash();
    __break(1u);
LABEL_7:
    v9 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAExclave version" userInfo:0];
    objc_exception_throw(v9);
  }

  result = objc_alloc_init(SAExclave);
  *(result + 2) = *(buffer + 10);
  *(result + 5) = *(buffer + 18);
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  *&v43[5] = *MEMORY[0x1E69E9840];
  if (*buffer >= 3u)
  {
    goto LABEL_18;
  }

  if (length <= 0x21)
  {
    v30 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy3 = length;
      v42 = 2048;
      *v43 = 34;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAExclave struct %lu", buf, 0x16u);
    }

    *__error() = v30;
    _SASetCrashLogMessage(444, "bufferLength %lu < serialized SAExclave struct %lu", length, 34);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  bufferCopy = buffer;
  v8 = 8 * (*(buffer + 30) + *(buffer + 26));
  if (v8 + 34 > length)
  {
LABEL_12:
    v31 = *__error();
    v32 = _sa_logt();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = *(bufferCopy + 26);
      v34 = *(bufferCopy + 30);
      *buf = 134218496;
      lengthCopy3 = length;
      v42 = 1024;
      *v43 = v33;
      v43[2] = 1024;
      *&v43[3] = v34;
      _os_log_error_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAExclave struct with %u root frames, %u image infos", buf, 0x18u);
    }

    *__error() = v31;
    _SASetCrashLogMessage(446, "bufferLength %lu < serialized SAExclave struct with %u root frames, %u image infos", length, *(bufferCopy + 26), *(bufferCopy + 30));
    _os_crash();
    __break(1u);
LABEL_15:
    v35 = *__error();
    v36 = _sa_logt();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = *(bufferCopy + 26);
      v38 = *(bufferCopy + 30);
      *buf = 134218496;
      lengthCopy3 = length;
      v42 = 1024;
      *v43 = v37;
      v43[2] = 1024;
      *&v43[3] = v38;
      _os_log_error_impl(&dword_1E0E2F000, v36, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAExclave struct v2 with %u root frames, %u image infos", buf, 0x18u);
    }

    *__error() = v35;
    _SASetCrashLogMessage(462, "bufferLength %lu < serialized SAExclave struct v2 with %u root frames, %u image infos", length, *(bufferCopy + 26), *(bufferCopy + 30));
    _os_crash();
    __break(1u);
LABEL_18:
    v39 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAExclave version" userInfo:0];
    objc_exception_throw(v39);
  }

  v12 = *(buffer + 2);
  v13 = objc_opt_class();
  v14 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, dictionary, bufferDictionary, v13, 0);
  name = self->_name;
  self->_name = v14;

  v16 = bufferCopy + 34 + 8 * *(bufferCopy + 26);
  v17 = *(bufferCopy + 30);
  v18 = objc_opt_class();
  v19 = SASerializableNewMutableArrayFromIndexList(v16, v17, dictionary, bufferDictionary, v18);
  v20 = [v19 copy];
  loadInfos = self->_loadInfos;
  self->_loadInfos = v20;

  v22 = *(bufferCopy + 26);
  v23 = objc_opt_class();
  v24 = SASerializableNewMutableSetFromIndexList(bufferCopy + 34, v22, dictionary, bufferDictionary, v23);
  rootFrames = self->_rootFrames;
  self->_rootFrames = v24;

  if (*(bufferCopy + 1) < 2u)
  {
    return;
  }

  if (v8 + 42 > length)
  {
    goto LABEL_15;
  }

  v26 = *(v16 + 8 * *(bufferCopy + 30));
  v27 = objc_opt_class();
  v28 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v26, dictionary, bufferDictionary, v27, 0);
  sharedCache = self->_sharedCache;
  self->_sharedCache = v28;
}

@end