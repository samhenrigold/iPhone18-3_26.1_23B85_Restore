@interface SAIOEvent
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (id)typeString:(unsigned int)string;
+ (void)parseKTrace:(uint64_t)trace findingIOEvents:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)isRead;
- (NSString)debugDescription;
- (SAIOEvent)initWithStartTime:(id)time threadID:(unint64_t)d blockNumber:(unint64_t)number size:(unint64_t)size type:(unint64_t)type tier:(unsigned int)tier;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SAIOEvent

- (BOOL)isRead
{
  rawType = self->_rawType;
  LOBYTE(self) = 1;
  if (rawType > 167773439)
  {
    if (rawType > 167773695)
    {
      if (rawType == 167773696)
      {
        return self;
      }

      v3 = 1552;
    }

    else
    {
      if (rawType == 167773440)
      {
        return self;
      }

      v3 = 1296;
    }
  }

  else if (rawType > 167772927)
  {
    if (rawType == 167772928)
    {
      return self;
    }

    v3 = 784;
  }

  else
  {
    if (rawType == 167772672)
    {
      return self;
    }

    v3 = 528;
  }

  if (rawType == (v3 | 0xA000000))
  {
    LOBYTE(self) = 0;
  }

  else
  {
    LODWORD(self) = (rawType >> 3) & 1;
  }

  return self;
}

+ (void)parseKTrace:(uint64_t)trace findingIOEvents:
{
  objc_opt_self();
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  ktrace_events_range();
  v3 = v4;
  ktrace_events_single();
}

void __41__SAIOEvent_parseKTrace_findingIOEvents___block_invoke(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  v5 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:a1[6]];
  v6 = *(a2 + 48);
  if ((v6 & 4) != 0)
  {
    v14 = a1[4];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
    v7 = [v14 objectForKeyedSubscript:v15];

    if (v7)
    {
      [(SAIOEvent *)v7 setEndTimestamp:v5];
      v16 = a1[4];
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
      [v16 removeObjectForKey:v17];

      (*(a1[5] + 16))();
    }
  }

  else
  {
    v7 = [[SAIOEvent alloc] initWithStartTime:v5 threadID:*(a2 + 40) blockNumber:*(a2 + 24) size:*(a2 + 32) type:v6 & 0xFFFFFFF8 tier:(v6 >> 10) & 0xF];
    v8 = a1[4];
    v9 = 0x1E696A000uLL;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
    v11 = [v8 objectForKeyedSubscript:v10];

    if (v11)
    {
      v18 = *__error();
      v19 = _sa_logt();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v20 = a1[4];
        [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v21 = v25 = v18;
        v22 = [v20 objectForKeyedSubscript:v21];
        v23 = [v22 debugDescription];
        v24 = [(SAIOEvent *)v7 debugDescription];
        *buf = 138412546;
        v27 = v23;
        v28 = 2112;
        v29 = v24;
        _os_log_fault_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_FAULT, "Existing IOEvent %@ when adding new event %@", buf, 0x16u);

        v9 = 0x1E696A000;
        v18 = v25;
      }

      *__error() = v18;
    }

    v12 = a1[4];
    v13 = [*(v9 + 3480) numberWithUnsignedLongLong:v4];
    [v12 setObject:v7 forKeyedSubscript:v13];
  }
}

- (SAIOEvent)initWithStartTime:(id)time threadID:(unint64_t)d blockNumber:(unint64_t)number size:(unint64_t)size type:(unint64_t)type tier:(unsigned int)tier
{
  typeCopy = type;
  v17.receiver = self;
  v17.super_class = SAIOEvent;
  v14 = [(SAIOEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startTimestamp, time);
    v15->_size = size;
    v15->_threadID = d;
    v15->_tier = tier;
    v15->_rawType = typeCopy;
    v15->_blockNumber = number;
  }

  return v15;
}

+ (id)typeString:(unsigned int)string
{
  if (string > 167773439)
  {
    if (string > 167773695)
    {
      if (string == 167773696)
      {
        return @"ReadMigration";
      }

      if (string == 167773712)
      {
        return @"WriteMigration";
      }
    }

    else
    {
      if (string == 167773440)
      {
        return @"ReadTransform";
      }

      if (string == 167773456)
      {
        return @"WriteTransform";
      }
    }
  }

  else if (string > 167772927)
  {
    if (string == 167772928)
    {
      return @"ReadMeta";
    }

    if (string == 167772944)
    {
      return @"WriteMeta";
    }
  }

  else
  {
    if (string == 167772672)
    {
      return @"ReadChunk";
    }

    if (string == 167772688)
    {
      return @"WriteChunk";
    }
  }

  v4 = (string & 0x3020068) - 50462720;
  if (v4 > 0x4F)
  {
    return @"Other";
  }

  else
  {
    return *(off_1E86F5328 + v4);
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  threadID = self->_threadID;
  type = [(SAIOEvent *)self type];
  size = self->_size;
  tier = self->_tier;
  v8 = [(SATimestamp *)self->_startTimestamp debugDescription];
  v9 = [(SATimestamp *)self->_endTimestamp debugDescription];
  v10 = [v3 stringWithFormat:@"IO Event [thread:0x%llx, type:%@, size 0x%llx tier:%d]\nstart:%@\n  end:%@", threadID, type, size, tier, v8, v9];

  return v10;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  type = [(SAIOEvent *)self type];
  SAJSONWriteDictionaryFirstEntry(stream, @"type", type);

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_size];
  SAJSONWriteDictionaryEntry(stream, @"size", v6);

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_tier];
  SAJSONWriteDictionaryEntry(stream, @"tier", v7);

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_threadID];
  SAJSONWriteDictionaryEntry(stream, @"threadID", v8);

  SAJSONWriteDictionaryEntry(stream, @"startTime", self->_startTimestamp);
  endTimestamp = self->_endTimestamp;

  SAJSONWriteDictionaryEntry(stream, @"endTime", endTimestamp);
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(SAIOEvent *)self sizeInBytesForSerializedVersion]!= length)
  {
    v10 = *__error();
    v11 = _sa_logt();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(SAIOEvent *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v12 UTF8String];
      v16 = 2048;
      sizeInBytesForSerializedVersion = [(SAIOEvent *)self sizeInBytesForSerializedVersion];
      v18 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v10;
    v13 = [(SAIOEvent *)self debugDescription];
    _SASetCrashLogMessage(224, "%s: size %lu != buffer length %lu", [v13 UTF8String], -[SAIOEvent sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 513;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_startTimestamp, dictionary);
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_endTimestamp, dictionary);
  *(&buffer->var3 + 2) = self->_size;
  *(&buffer->var7 + 2) = self->_threadID;
  *(&buffer->var5 + 2) = self->_blockNumber;
  *(&buffer->var6 + 2) = self->_rawType;
  *(&buffer->var6 + 6) = self->_tier;
  *(&buffer->var4 + 2) = 0;
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(SATimestamp *)self->_startTimestamp addSelfToSerializationDictionary:dictionary];
    endTimestamp = self->_endTimestamp;

    [(SATimestamp *)endTimestamp addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v16 = *MEMORY[0x1E69E9840];
  if (*buffer >= 3u)
  {
    goto LABEL_13;
  }

  if (length <= 0x31)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v14 = 2048;
      v15 = 50;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAIOEvent struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(256, "bufferLength %lu < serialized SAIOEvent struct %lu", length, 50);
    _os_crash();
    __break(1u);
LABEL_10:
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v14 = 2048;
      v15 = 58;
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAIOEvent_v2 struct %lu", buf, 0x16u);
    }

    *__error() = v9;
    _SASetCrashLogMessage(266, "bufferLength %lu < serialized SAIOEvent_v2 struct %lu", length, 58);
    _os_crash();
    __break(1u);
LABEL_13:
    v11 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAIOEvent version" userInfo:0];
    objc_exception_throw(v11);
  }

  result = objc_alloc_init(SAIOEvent);
  *(result + 6) = *(buffer + 34);
  *(result + 4) = *(buffer + 18);
  *(result + 3) = *(buffer + 42);
  *(result + 2) = *(buffer + 46);
  if (*(buffer + 1) < 2u)
  {
    return result;
  }

  if (length <= 0x39)
  {
    goto LABEL_10;
  }

  *(result + 5) = *(buffer + 50);
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v26 = *MEMORY[0x1E69E9840];
  if (*buffer >= 3u)
  {
    goto LABEL_9;
  }

  if (length <= 0x31)
  {
    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v24 = 2048;
      v25 = 50;
      _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAIOEvent struct %lu", buf, 0x16u);
    }

    *__error() = v19;
    _SASetCrashLogMessage(279, "bufferLength %lu < serialized SAIOEvent struct %lu", length, 50);
    _os_crash();
    __break(1u);
LABEL_9:
    v21 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAIOEvent version" userInfo:0];
    objc_exception_throw(v21);
  }

  v11 = *(buffer + 2);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  startTimestamp = self->_startTimestamp;
  self->_startTimestamp = v13;

  v15 = *(buffer + 10);
  v16 = objc_opt_class();
  v17 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16);
  endTimestamp = self->_endTimestamp;
  self->_endTimestamp = v17;
}

@end