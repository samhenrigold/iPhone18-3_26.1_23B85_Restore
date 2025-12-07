@interface SATimeRange
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (id)timeRangeStart:(id)start end:(id)end;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (SATimeRange)initWithStart:(id)start end:(id)end;
- (double)deltaMachAbsTimeSeconds;
- (double)deltaMachContTimeSeconds;
- (double)deltaWallTime;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
- (unint64_t)deltaMachAbsTime;
- (unint64_t)deltaMachContTime;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SATimeRange

- (unint64_t)deltaMachAbsTime
{
  machAbsTime = [(SATimestamp *)self->_startTime machAbsTime];
  machAbsTime2 = [(SATimestamp *)self->_endTime machAbsTime];
  if (machAbsTime)
  {
    v5 = machAbsTime2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return machAbsTime2 - machAbsTime;
  }
}

- (SATimeRange)initWithStart:(id)start end:(id)end
{
  v23 = *MEMORY[0x1E69E9840];
  if (([start le:end] & 1) == 0)
  {
    v10 = *__error();
    v11 = _sa_logt();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [start debugDescription];
      uTF8String = [v12 UTF8String];
      v14 = [end debugDescription];
      *buf = 136315394;
      v20 = uTF8String;
      v21 = 2080;
      uTF8String2 = [v14 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "start time %s > end time %s", buf, 0x16u);
    }

    *__error() = v10;
    v15 = [start debugDescription];
    uTF8String3 = [v15 UTF8String];
    v17 = [end debugDescription];
    _SASetCrashLogMessage(570, "start time %s > end time %s", uTF8String3, [v17 UTF8String]);

    _os_crash();
    __break(1u);
  }

  v18.receiver = self;
  v18.super_class = SATimeRange;
  v7 = [(SATimeRange *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_startTime, start);
    objc_storeStrong(&v8->_endTime, end);
  }

  return v8;
}

+ (id)timeRangeStart:(id)start end:(id)end
{
  v4 = [[self alloc] initWithStart:start end:end];

  return v4;
}

- (int64_t)compare:(id)compare
{
  result = [(SATimestamp *)self->_startTime compare:?];
  if (result == -1)
  {
    if ([(SATimestamp *)self->_endTime compare:compare]== -1)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (double)deltaMachAbsTimeSeconds
{
  [(SATimestamp *)self->_startTime machAbsTimeSeconds];
  v4 = v3;
  [(SATimestamp *)self->_endTime machAbsTimeSeconds];
  v6 = v4 == 0.0 || v5 == 0.0;
  result = v5 - v4;
  if (v6)
  {
    return 0.0;
  }

  return result;
}

- (unint64_t)deltaMachContTime
{
  machContTime = [(SATimestamp *)self->_startTime machContTime];
  machContTime2 = [(SATimestamp *)self->_endTime machContTime];
  if (machContTime)
  {
    v5 = machContTime2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return machContTime2 - machContTime;
  }
}

- (double)deltaMachContTimeSeconds
{
  [(SATimestamp *)self->_startTime machContTimeSeconds];
  v4 = v3;
  [(SATimestamp *)self->_endTime machContTimeSeconds];
  v6 = v4 == 0.0 || v5 == 0.0;
  result = v5 - v4;
  if (v6)
  {
    return 0.0;
  }

  return result;
}

- (double)deltaWallTime
{
  [(SATimestamp *)self->_startTime wallTime];
  v4 = v3;
  [(SATimestamp *)self->_endTime wallTime];
  v6 = v4 == 0.0 || v5 == 0.0;
  result = v5 - v4;
  if (v6)
  {
    return 0.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(SATimestamp *)self->_startTime copy];
  v6 = [(SATimestamp *)self->_endTime copy];
  v7 = [v4 initWithStart:v5 end:v6];

  return v7;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SATimestamp *)self->_startTime debugDescription];
  v5 = [(SATimestamp *)self->_endTime debugDescription];
  v6 = [v3 stringWithFormat:@"start: %@\n  end: %@", v4, v5];

  return v6;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  [stream appendString:@"startTime:{"];
  [(SATimestamp *)self->_startTime writeJSONDictionaryEntriesToStream:stream];
  [stream appendString:{@"}, endTime:{"}];
  [(SATimestamp *)self->_endTime writeJSONDictionaryEntriesToStream:stream];

  [stream appendString:@"}"];
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(SATimeRange *)self sizeInBytesForSerializedVersion]!= length)
  {
    v10 = *__error();
    v11 = _sa_logt();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(SATimeRange *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v12 UTF8String];
      v16 = 2048;
      sizeInBytesForSerializedVersion = [(SATimeRange *)self sizeInBytesForSerializedVersion];
      v18 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v10;
    v13 = [(SATimeRange *)self debugDescription];
    _SASetCrashLogMessage(849, "%s: size %lu != buffer length %lu", [v13 UTF8String], -[SATimeRange sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 257;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_startTime, dictionary);
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_endTime, dictionary);
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(SATimestamp *)self->_startTime addSelfToSerializationDictionary:dictionary];
    endTime = self->_endTime;

    [(SATimestamp *)endTime addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v13 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x11)
  {
    v6 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v11 = 2048;
      v12 = 18;
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATimeRange struct %lu", buf, 0x16u);
    }

    *__error() = v6;
    _SASetCrashLogMessage(874, "bufferLength %lu < serialized SATimeRange struct %lu", length, 18);
    _os_crash();
    __break(1u);
LABEL_9:
    v8 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATimeRange version" userInfo:0];
    objc_exception_throw(v8);
  }

  return objc_alloc_init(SATimeRange);
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v26 = *MEMORY[0x1E69E9840];
  if (*buffer >= 2u)
  {
    goto LABEL_9;
  }

  if (length <= 0x11)
  {
    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v24 = 2048;
      v25 = 18;
      _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATimeRange struct %lu", buf, 0x16u);
    }

    *__error() = v19;
    _SASetCrashLogMessage(884, "bufferLength %lu < serialized SATimeRange struct %lu", length, 18);
    _os_crash();
    __break(1u);
LABEL_9:
    v21 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATimeRange version" userInfo:0];
    objc_exception_throw(v21);
  }

  v11 = *(buffer + 2);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  startTime = self->_startTime;
  self->_startTime = v13;

  v15 = *(buffer + 10);
  v16 = objc_opt_class();
  v17 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16);
  endTime = self->_endTime;
  self->_endTime = v17;
}

@end