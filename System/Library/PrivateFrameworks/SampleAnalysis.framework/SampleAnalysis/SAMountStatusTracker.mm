@interface SAMountStatusTracker
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (SAMountStatusTracker)init;
- (void)addMountStatus:(void *)status forTimestamp:;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)enumerateMountsBlockingThread:(uint64_t)thread betweenStartTime:(void *)time endTime:(uint64_t)endTime block:;
- (void)enumerateUnresponsiveMountsBetweenStartTime:(void *)time endTime:(uint64_t)endTime block:;
- (void)fillInThreadsSeen;
- (void)hasUnresponsiveMountsForThreadID:(void *)result;
- (void)iterateAllTimestamps:(void *)result;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)populateReferencesUsingPAStyleSerializedMountStatusTracker:(void *)tracker andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:;
@end

@implementation SAMountStatusTracker

- (SAMountStatusTracker)init
{
  v8.receiver = self;
  v8.super_class = SAMountStatusTracker;
  v2 = [(SAMountStatusTracker *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mountStatusDict = v2->_mountStatusDict;
    v2->_mountStatusDict = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    threadsSeen = v2->_threadsSeen;
    v2->_threadsSeen = v5;
  }

  return v2;
}

- (void)addMountStatus:(void *)status forTimestamp:
{
  v70 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = a2;
    v4 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (!v4)
    {
      goto LABEL_50;
    }

    v6 = *v61;
    *&v5 = 134218754;
    v50 = v5;
    v52 = *v61;
    while (1)
    {
      v7 = 0;
      v57 = v4;
      do
      {
        if (*v61 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v60 + 1) + 8 * v7);
        v9 = *([v8 mount] + 48);
        v10 = *([v8 mount] + 52) + (v9 << 32);
        v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:v10];
        v12 = [*(self + 16) objectForKey:v11];
        if (v12)
        {
          v13 = v12;
          if (*([v8 status] + 516) || *(objc_msgSend(v8, "status") + 520))
          {
            v14 = *__error();
            v15 = _sa_logt();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v55 = v11;
              v44 = v7;
              v45 = [v8 mount] + 88;
              v46 = *([v8 status] + 516);
              v47 = *([v8 status] + 520);
              *v64 = v50;
              *&v64[4] = v10;
              *&v64[12] = 2080;
              *&v64[14] = v45;
              v7 = v44;
              v11 = v55;
              v65 = 1024;
              v66 = v46;
              v6 = v52;
              v67 = 1024;
              v68 = v47;
              _os_log_debug_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_DEBUG, "Existing mount 0x%llx %s unresponsive for %d seconds, blocking %d threads", v64, 0x22u);
            }

            *__error() = v14;
          }

          status = [v8 status];
          goto LABEL_30;
        }

        v58 = v7;
        v17 = SANSStringForCString([v8 mount] + 88);
        v18 = SANSStringForCString([v8 mount] + 72);
        v19 = v18;
        if (v17)
        {
          v20 = v18 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {

          v13 = 0;
          v7 = v58;
          goto LABEL_45;
        }

        if (*([v8 status] + 516) || *(objc_msgSend(v8, "status") + 520))
        {
          v21 = *__error();
          v22 = _sa_logt();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v48 = [v8 mount] + 88;
            v56 = *([v8 status] + 516);
            v49 = *([v8 status] + 520);
            *v64 = v50;
            *&v64[4] = v10;
            *&v64[12] = 2080;
            *&v64[14] = v48;
            v65 = 1024;
            v66 = v56;
            v6 = v52;
            v67 = 1024;
            v68 = v49;
            _os_log_debug_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_DEBUG, "New mount 0x%llx %s unresponsive for %d seconds, blocking %d threads", v64, 0x22u);
          }

          *__error() = v21;
        }

        v23 = [SAMountStatus alloc];
        if (v23)
        {
          *v64 = v23;
          *&v64[8] = SAMountStatus;
          v13 = objc_msgSendSuper2(v64, sel_init);
          if (v13)
          {
            v24 = [v17 copy];
            v25 = *(v13 + 2);
            *(v13 + 2) = v24;

            objc_storeStrong(v13 + 3, v19);
            v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v27 = *(v13 + 1);
            *(v13 + 1) = v26;
          }
        }

        else
        {
          v13 = 0;
        }

        [*(self + 16) setObject:v13 forKey:v11];

        status2 = [v8 status];
        if (v13)
        {
          status = status2;
          v7 = v58;
LABEL_30:
          v29 = *(v13 + 1);
          v30 = [SAMountSnapshot alloc];
          if (v30 && status)
          {
            v59 = v7;
            *v64 = v30;
            *&v64[8] = SAMountSnapshot;
            v31 = objc_msgSendSuper2(v64, sel_init);
            v32 = v31;
            if (v31)
            {
              v54 = v29;
              objc_storeStrong(v31 + 1, status);
              [status machAbsTimeSeconds];
              LODWORD(v33) = *(status + 516);
              v32[2] = v34 - v33;
              v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
              if (*(status + 520))
              {
                v36 = 0;
                do
                {
                  v37 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:*(status + 528 + 8 * v36)];
                  if (([v35 containsObject:v37] & 1) == 0)
                  {
                    [v35 addObject:v37];
                  }

                  ++v36;
                }

                while (v36 < *(status + 520));
              }

              v38 = *(v32 + 3);
              *(v32 + 3) = v35;

              v6 = v52;
              v29 = v54;
            }

            v30 = v32;
            v39 = v30;
            v7 = v59;
          }

          else
          {
            v39 = 0;
          }

          [v29 addObject:v39];
          goto LABEL_42;
        }

        v7 = v58;
LABEL_42:
        if (*([v8 status] + 520))
        {
          v40 = 0;
          do
          {
            status3 = [v8 status];
            v42 = *(self + 8);
            v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(status3 + 8 * v40 + 528)];
            [v42 addObject:v43];

            ++v40;
          }

          while (v40 < *([v8 status] + 520));
        }

LABEL_45:

        ++v7;
      }

      while (v7 != v57);
      v4 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (!v4)
      {
LABEL_50:

        return;
      }
    }
  }
}

- (void)hasUnresponsiveMountsForThreadID:(void *)result
{
  if (result)
  {
    v2 = result[1];
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v4 = [v2 containsObject:v3];

    return v4;
  }

  return result;
}

- (void)enumerateMountsBlockingThread:(uint64_t)thread betweenStartTime:(void *)time endTime:(uint64_t)endTime block:
{
  v33 = *MEMORY[0x1E69E9840];
  if (self)
  {
    allKeys = [*(self + 16) allKeys];
    v10 = [allKeys sortedArrayUsingComparator:&__block_literal_global_12];

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v11)
    {
      v12 = *v25;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [*(self + 16) objectForKeyedSubscript:*(*(&v24 + 1) + 8 * v13)];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __85__SAMountStatusTracker_enumerateMountsBlockingThread_betweenStartTime_endTime_block___block_invoke_2;
        v19[3] = &unk_1E86F8548;
        v23 = a2;
        endTimeCopy = endTime;
        v15 = v14;
        v20 = v15;
        v22 = &v28;
        [(SAMountStatus *)v15 enumerateSnapshotsBetweenStartTime:thread endTime:time block:v19];
        v16 = *(v29 + 24);

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v28, 8);
  }
}

void __85__SAMountStatusTracker_enumerateMountsBlockingThread_betweenStartTime_endTime_block___block_invoke_2(void *a1, uint64_t a2, _BYTE *a3)
{
  if (a2)
  {
    v5 = *(a2 + 24);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[7]];
    LODWORD(v5) = [v5 containsObject:v6];

    if (v5)
    {
      Property = a1[4];
      v9 = a1[5];
      if (Property)
      {
        Property = objc_getProperty(Property, v7, 16, 1);
      }

      v11 = Property;
      v12 = a1[4];
      if (v12)
      {
        v13 = objc_getProperty(v12, v10, 24, 1);
      }

      else
      {
        v13 = 0;
      }

      (*(v9 + 16))(v9, v11, v13, *(a1[6] + 8) + 24);

      *a3 = 1;
    }
  }
}

- (void)enumerateUnresponsiveMountsBetweenStartTime:(void *)time endTime:(uint64_t)endTime block:
{
  v39 = *MEMORY[0x1E69E9840];
  if (self)
  {
    allKeys = [*(self + 16) allKeys];
    v6 = [allKeys sortedArrayUsingComparator:&__block_literal_global_37];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v7)
    {
      v8 = *v35;
      v17 = endTime + 16;
      do
      {
        v9 = 0;
        do
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [*(self + 16) objectForKeyedSubscript:{*(*(&v34 + 1) + 8 * v9), v17}];
          v28 = 0;
          v29 = &v28;
          v30 = 0x3032000000;
          v31 = __Block_byref_object_copy__6;
          v32 = __Block_byref_object_dispose__6;
          v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v24 = 0;
          v25 = &v24;
          v26 = 0x2020000000;
          v27 = 0;
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __82__SAMountStatusTracker_enumerateUnresponsiveMountsBetweenStartTime_endTime_block___block_invoke_38;
          v23[3] = &unk_1E86F8570;
          v23[4] = &v24;
          v23[5] = &v28;
          [(SAMountStatus *)v10 enumerateSnapshotsBetweenStartTime:a2 endTime:time block:v23];
          if (*(v25 + 24) == 1)
          {
            v22 = 0;
            if (v10)
            {
              v12 = objc_getProperty(v10, v11, 16, 1);
              Property = objc_getProperty(v10, v13, 24, 1);
            }

            else
            {
              v12 = 0;
              Property = 0;
            }

            v15 = Property;
            (*(endTime + 16))(endTime, v12, v15, v29[5], &v22);

            if (v22)
            {
              _Block_object_dispose(&v24, 8);
              _Block_object_dispose(&v28, 8);

              goto LABEL_17;
            }
          }

          _Block_object_dispose(&v24, 8);
          _Block_object_dispose(&v28, 8);

          ++v9;
        }

        while (v7 != v9);
        v16 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        v7 = v16;
      }

      while (v16);
    }

LABEL_17:
  }
}

void __82__SAMountStatusTracker_enumerateUnresponsiveMountsBetweenStartTime_endTime_block___block_invoke_38(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ([*(a2 + 24) count])
    {
      v4 = *(a2 + 16);
      [*(a2 + 8) machAbsTimeSeconds];
      if (v4 < v6)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v7 = objc_getProperty(a2, v5, 24, 1);
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v14;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v14 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v13 + 1) + 8 * i);
              if (([*(*(*(a1 + 40) + 8) + 40) containsObject:{v12, v13}] & 1) == 0)
              {
                [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
          }

          while (v9);
        }
      }
    }
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(SAMountStatusTracker *)self sizeInBytesForSerializedVersion]!= length)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SAMountStatusTracker *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v13 UTF8String];
      v25 = 2048;
      sizeInBytesForSerializedVersion = [(SAMountStatusTracker *)self sizeInBytesForSerializedVersion];
      v27 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SAMountStatusTracker *)self debugDescription];
    _SASetCrashLogMessage(456, "%s: size %lu != buffer length %lu", [v14 UTF8String], -[SAMountStatusTracker sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
LABEL_7:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(SAMountStatusTracker *)self debugDescription];
      uTF8String2 = [v17 UTF8String];
      v19 = [(NSMutableDictionary *)self->_mountStatusDict count];
      *buf = 136315394;
      uTF8String = uTF8String2;
      v25 = 2048;
      sizeInBytesForSerializedVersion = v19;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "%s: %lu mountStatuDicts", buf, 0x16u);
    }

    *__error() = v15;
    v20 = [(SAMountStatusTracker *)self debugDescription];
    _SASetCrashLogMessage(461, "%s: %lu mountStatuDicts", [v20 UTF8String], -[NSMutableDictionary count](self->_mountStatusDict, "count"));

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  if ([(NSMutableDictionary *)self->_mountStatusDict count]>= 0xFFFF)
  {
    goto LABEL_7;
  }

  buffer->var2 = [(NSMutableDictionary *)self->_mountStatusDict count];
  mountStatusDict = self->_mountStatusDict;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __105__SAMountStatusTracker_Serialization__addSelfToBuffer_bufferLength_withCompletedSerializationDictionary___block_invoke;
  v21[3] = &unk_1E86F8598;
  v22 = 0;
  v21[4] = dictionary;
  v21[5] = buffer + 1;
  [(NSMutableDictionary *)mountStatusDict enumerateKeysAndObjectsUsingBlock:v21];
  return 1;
}

uint64_t __105__SAMountStatusTracker_Serialization__addSelfToBuffer_bufferLength_withCompletedSerializationDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  *(*(a1 + 40) + 16 * *(a1 + 48)) = [a2 unsignedLongLongValue];
  result = SASerializableIndexForPointerFromSerializationDictionary(a3, *(a1 + 32));
  *(*(a1 + 40) + 16 * *(a1 + 48) + 8) = result;
  return result;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    mountStatusDict = self->_mountStatusDict;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__SAMountStatusTracker_Serialization__addSelfToSerializationDictionary___block_invoke;
    v8[3] = &unk_1E86F85C0;
    v8[4] = dictionary;
    [(NSMutableDictionary *)mountStatusDict enumerateKeysAndObjectsUsingBlock:v8];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v16 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_13;
  }

  if (length <= 3)
  {
    v7 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v14 = 2048;
      v15 = 4;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatusTracker struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(494, "bufferLength %lu < serialized SAMountStatusTracker struct %lu", length, 4);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  bufferCopy = buffer;
  if (((8 * *(buffer + 1)) | 4uLL) > length)
  {
LABEL_10:
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(bufferCopy + 2);
      *buf = 134218240;
      lengthCopy2 = length;
      v14 = 2048;
      v15 = v10;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu mounts", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(495, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu mounts", length, *(bufferCopy + 2));
    _os_crash();
    __break(1u);
LABEL_13:
    v11 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMountStatusTracker version" userInfo:0];
    objc_exception_throw(v11);
  }

  return objc_alloc_init(SAMountStatusTracker);
}

- (void)fillInThreadsSeen
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  threadsSeen = self->_threadsSeen;
  self->_threadsSeen = v3;

  mountStatusDict = self->_mountStatusDict;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__SAMountStatusTracker_Serialization__fillInThreadsSeen__block_invoke;
  v6[3] = &unk_1E86F85C0;
  v6[4] = self;
  [(NSMutableDictionary *)mountStatusDict enumerateKeysAndObjectsUsingBlock:v6];
}

void __56__SAMountStatusTracker_Serialization__fillInThreadsSeen__block_invoke(uint64_t a1, const char *a2, id self)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  if (self)
  {
    Property = objc_getProperty(self, a2, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        if (v11)
        {
          v11 = objc_getProperty(v11, v7, 24, 1);
        }

        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v18;
          do
          {
            v16 = 0;
            do
            {
              if (*v18 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(a1 + 32) + 8) addObject:{*(*(&v17 + 1) + 8 * v16++), v17}];
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v14);
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v29 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_16;
  }

  if (length <= 3)
  {
    v20 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v27 = 2048;
      v28 = 4;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatusTracker struct %lu", buf, 0x16u);
    }

    *__error() = v20;
    _SASetCrashLogMessage(518, "bufferLength %lu < serialized SAMountStatusTracker struct %lu", length, 4);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  bufferCopy = buffer;
  if (((8 * *(buffer + 1)) | 4uLL) > length)
  {
LABEL_13:
    v21 = *__error();
    v22 = _sa_logt();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(bufferCopy + 2);
      *buf = 134218240;
      lengthCopy2 = length;
      v27 = 2048;
      v28 = v23;
      _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu mounts", buf, 0x16u);
    }

    *__error() = v21;
    _SASetCrashLogMessage(519, "bufferLength %lu < serialized SAMountStatusTracker struct with %lu mounts", length, *(bufferCopy + 2));
    _os_crash();
    __break(1u);
LABEL_16:
    v24 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAMountStatusTracker version" userInfo:0];
    objc_exception_throw(v24);
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:*(buffer + 1)];
  mountStatusDict = self->_mountStatusDict;
  self->_mountStatusDict = v11;

  if (*(bufferCopy + 2))
  {
    v13 = 0;
    v14 = (bufferCopy + 12);
    do
    {
      v15 = *v14;
      v16 = objc_opt_class();
      v17 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16, 0);
      v18 = self->_mountStatusDict;
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v14 - 1)];
      [(NSMutableDictionary *)v18 setObject:v17 forKeyedSubscript:v19];

      ++v13;
      v14 += 2;
    }

    while (v13 < *(bufferCopy + 2));
  }

  [(SAMountStatusTracker *)self fillInThreadsSeen];
}

- (void)populateReferencesUsingPAStyleSerializedMountStatusTracker:(void *)tracker andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:
{
  v30 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if (*(a2 + 8) >= 0xFFFFu)
    {
      v20 = *__error();
      v21 = _sa_logt();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [v5 debugDescription];
        uTF8String = [v22 UTF8String];
        v24 = *(a2 + 8);
        *buf = 136315394;
        v27 = uTF8String;
        v28 = 1024;
        v29 = v24;
        _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "%s: %u mounts", buf, 0x12u);
      }

      *__error() = v20;
      v25 = [v5 debugDescription];
      _SASetCrashLogMessage(532, "%s: %u mounts", [v25 UTF8String], *(a2 + 8));

      result = _os_crash();
      __break(1u);
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:*(a2 + 8)];
      v9 = v5[2];
      v5[2] = v8;

      if (*(a2 + 8))
      {
        v10 = 0;
        do
        {
          v11 = (a2 + 12 + 16 * v10);
          v12 = v11[1];
          v13 = objc_opt_class();
          Property = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, tracker, dictionary, v13, 0);
          v16 = Property;
          if (Property)
          {
            Property = objc_getProperty(Property, v15, 8, 1);
          }

          v17 = Property;
          v18 = v5[2];
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v11];
          [v18 setObject:v17 forKeyedSubscript:v19];

          ++v10;
        }

        while (*(a2 + 8) > v10);
      }

      return [v5 fillInThreadsSeen];
    }
  }

  return result;
}

- (void)iterateAllTimestamps:(void *)result
{
  if (result)
  {
    v2 = result[2];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __60__SAMountStatusTracker_Serialization__iterateAllTimestamps___block_invoke;
    v3[3] = &unk_1E86F85E8;
    v3[4] = a2;
    return [v2 enumerateKeysAndObjectsUsingBlock:v3];
  }

  return result;
}

void __60__SAMountStatusTracker_Serialization__iterateAllTimestamps___block_invoke(uint64_t a1, const char *a2, id self)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (self)
  {
    Property = objc_getProperty(self, a2, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = *(a1 + 32);
        if (v11)
        {
          v13 = objc_getProperty(v11, v7, 8, 1);
        }

        else
        {
          v13 = 0;
        }

        (*(v12 + 16))(v12, v13);
        ++v10;
      }

      while (v8 != v10);
      v14 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v8 = v14;
    }

    while (v14);
  }
}

@end