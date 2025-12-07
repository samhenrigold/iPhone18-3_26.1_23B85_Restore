@interface SAHIDEvent
+ (id)hidEventWithoutReferencesFromPAStyleSerializedHIDEvent:(uint64_t)event;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (void)hidEventWithHIDEventType:(void *)type atTimestamp:;
+ (void)parseKTrace:(ktrace_session *)trace findingHIDEvents:(id)events;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (NSString)hidEventTypeString;
- (void)addKTraceEvent:(uint64_t)event fromSession:;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAHIDEvent

- (NSString)hidEventTypeString
{
  hidEventType = self->_hidEventType;
  if (hidEventType <= 0x1C && ((0x1FC0FFFFu >> hidEventType) & 1) != 0)
  {
    v3 = *(&off_1E86F88A0 + hidEventType);
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UNKNOWN(%d)", self->_hidEventType];
  }

  return v3;
}

+ (void)hidEventWithHIDEventType:(void *)type atTimestamp:
{
  objc_opt_self();
  v5 = objc_alloc(objc_opt_class());
  if (v5)
  {
    v11.receiver = v5;
    v11.super_class = SAHIDEvent;
    v6 = objc_msgSendSuper2(&v11, sel_init);
    v7 = v6;
    if (v6)
    {
      *(v6 + 4) = a2;
      objc_storeStrong(v6 + 3, type);
      v8 = [MEMORY[0x1E695E0F0] mutableCopy];
      v9 = v7[1];
      v7[1] = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addKTraceEvent:(uint64_t)event fromSession:
{
  if (!self)
  {
    return;
  }

  objc_opt_self();
  v6 = [SAHIDStep alloc];
  if (v6)
  {
    v7 = v6;
    v8 = [SATimestamp timestampWithKTraceEvent:a2 fromSession:event];
    v9 = *(a2 + 48);
    pid_for_thread = -1;
    if (v9 > 736428035)
    {
      if ((v9 - 736428036) <= 0x1C)
      {
        if (((1 << (v9 - 4)) & 0x1111111) != 0)
        {
          goto LABEL_18;
        }

        if (v9 == 736428064)
        {
          v11 = 0;
          pid_for_thread = *(a2 + 24);
          goto LABEL_34;
        }
      }

      if ((v9 - 736493572) > 0xC)
      {
        v13 = *(a2 + 48);
        goto LABEL_20;
      }

      v13 = *(a2 + 48);
      if (((1 << (v9 - 4)) & 0x1111) == 0)
      {
LABEL_20:
        v11 = 0;
        if (v13 > 736428035)
        {
          if ((v13 - 736428036) > 0x18 || ((1 << (v13 - 4)) & 0x1111111) == 0)
          {
            v14 = v13 - 736493572;
            if (v14 > 0xC || ((1 << v14) & 0x1111) == 0)
            {
              goto LABEL_34;
            }
          }

          goto LABEL_33;
        }

        if (v13 > 730268059)
        {
          if ((v13 - 735576101) >= 2)
          {
            v15 = 412;
LABEL_32:
            if (v13 != (v15 | 0x2B870000))
            {
              goto LABEL_34;
            }
          }
        }

        else if ((v13 - 730267892) > 0x10 || ((1 << (v13 + 12)) & 0x10011) == 0)
        {
          v15 = 408;
          goto LABEL_32;
        }

LABEL_33:
        v11 = *(a2 + 40);
LABEL_34:
        v20.receiver = v7;
        v20.super_class = SAHIDStep;
        v16 = objc_msgSendSuper2(&v20, sel_init);
        v17 = v16;
        if (v16)
        {
          *(v16 + 2) = v9;
          objc_storeStrong(v16 + 2, v8);
          *(v17 + 3) = pid_for_thread;
          v17[3] = v11;
          v19 = v17;

          [*(self + 8) addObject:v19];
          v6 = v19;
        }

        else
        {
          v18 = 0;

          v6 = 0;
        }

        goto LABEL_37;
      }

LABEL_18:
      pid_for_thread = *(a2 + 88);
      v13 = *(a2 + 48);
      if (pid_for_thread < 0)
      {
        pid_for_thread = ktrace_get_pid_for_thread();
        v13 = *(a2 + 48);
      }

      goto LABEL_20;
    }

    if (v9 > 730268059)
    {
      if ((v9 - 735576101) < 2)
      {
        goto LABEL_18;
      }

      v12 = 412;
    }

    else
    {
      if ((v9 - 730267892) <= 0x10 && ((1 << (v9 + 12)) & 0x10011) != 0)
      {
        goto LABEL_18;
      }

      v12 = 408;
    }

    v13 = *(a2 + 48);
    if (v9 != (v12 | 0x2B870000))
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_37:
}

+ (void)parseKTrace:(ktrace_session *)trace findingHIDEvents:(id)events
{
  v6 = [MEMORY[0x1E695E0F8] mutableCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__SAHIDEvent_parseKTrace_findingHIDEvents___block_invoke;
  v9[3] = &unk_1E86F52E0;
  eventsCopy = events;
  traceCopy = trace;
  v10 = v6;
  v7 = v6;
  v8 = MEMORY[0x1E12EBE50](v9);
  ktrace_events_range();
  ktrace_events_range();
  ktrace_events_range();
  ktrace_events_range();
  ktrace_events_range();
}

void __43__SAHIDEvent_parseKTrace_findingHIDEvents___block_invoke(void *a1, uint64_t a2)
{
  v4 = HIDEventTimestampForKTraceEvent(a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a2 + 48);
    v7 = (v6 - 736428036) > 0x1C || ((1 << (v6 - 4)) & 0x11111111) == 0;
    if (!v7 || ((v6 - 736493572) <= 0xC ? (v8 = ((1 << (v6 - 4)) & 0x1111) == 0) : (v8 = 1), (v9 = v6 - 735576101, v8) ? (v10 = v9 >= 2) : (v10 = 0), !v10))
    {
      v11 = *(a2 + 16);
      if (v11)
      {
        v12 = a1[4];
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v23 = [v12 objectForKeyedSubscript:v13];

        v14 = v23;
        if (!v23)
        {
          if (*(a2 + 48) == 735576102)
          {
            v15 = 0;
LABEL_27:

            return;
          }

          v16 = [SATimestamp timestampWithMachAbsTime:v5 fromKtraceSession:a1[6]];
          v24 = [SAHIDEvent hidEventWithHIDEventType:v11 atTimestamp:v16];
          v17 = a1[4];
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
          [v17 setObject:v24 forKeyedSubscript:v18];

          (*(a1[5] + 16))();
          v14 = v24;
        }

        v25 = v14;
        [(SAHIDEvent *)v14 addKTraceEvent:a2 fromSession:a1[6]];
        v19 = *(a2 + 48);
        if (v19 == 730267896 || v19 == 730268060 || v19 == 736493584 && (v20 = *(a2 + 80)) != 0 && strcmp(v20, "UIKitHostApp"))
        {
          v21 = a1[4];
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
          [v21 setObject:0 forKeyedSubscript:v22];
        }

        v15 = v25;
        goto LABEL_27;
      }
    }
  }
}

- (NSString)debugDescription
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = [(SATimestamp *)self->_hidEventTimestamp debugDescription];
  v5 = [v3 initWithFormat:@"%@ HID event type %d\n", v4, self->_hidEventType];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_steps;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) debugDescription];
        [v5 appendFormat:@"%@\n", v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v37 = *MEMORY[0x1E69E9840];
  if ([(SAHIDEvent *)self sizeInBytesForSerializedVersion]!= length)
  {
    v5 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(SAHIDEvent *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v22 UTF8String];
      v35 = 2048;
      *v36 = [(SAHIDEvent *)self sizeInBytesForSerializedVersion];
      *&v36[8] = 2048;
      *&v36[10] = length;
      _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v5;
    v23 = [(SAHIDEvent *)self debugDescription];
    _SASetCrashLogMessage(856, "%s: size %lu != buffer length %lu", [v23 UTF8String], -[SAHIDEvent sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  *&buffer->var0 = 513;
  buffer->var3 = self->_hidEventType;
  buffer->var4 = SASerializableIndexForPointerFromSerializationDictionary(self->_hidEventTimestamp, dictionary);
  if ([(NSMutableArray *)self->_steps count]>= 0xFFFF)
  {
LABEL_13:
    v24 = *__error();
    buffer = _sa_logt();
    if (os_log_type_enabled(buffer, OS_LOG_TYPE_ERROR))
    {
      v25 = [(NSMutableArray *)self->_steps count];
      *buf = 134217984;
      uTF8String = v25;
      _os_log_error_impl(&dword_1E0E2F000, buffer, OS_LOG_TYPE_ERROR, "hid event with %lu steps", buf, 0xCu);
    }

    *__error() = v24;
    _SASetCrashLogMessage(864, "hid event with %lu steps", [(NSMutableArray *)self->_steps count]);
    _os_crash();
    __break(1u);
LABEL_16:
    v26 = *__error();
    v27 = _sa_logt();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [(SAHIDEvent *)self debugDescription];
      uTF8String2 = [v28 UTF8String];
      var2 = buffer->var2;
      sizeInBytesForSerializedVersion = [(SAHIDEvent *)self sizeInBytesForSerializedVersion];
      *buf = 136315906;
      uTF8String = uTF8String2;
      v35 = 1024;
      *v36 = var2;
      *&v36[4] = 2048;
      *&v36[6] = v5;
      *&v36[14] = 2048;
      *&v36[16] = sizeInBytesForSerializedVersion;
      _os_log_error_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_ERROR, "%s: after serializing (with %u steps), ended with length %ld, should be %lu", buf, 0x26u);
    }

    *__error() = v26;
    v32 = [(SAHIDEvent *)self debugDescription];
    _SASetCrashLogMessage(875, "%s: after serializing (with %u steps), ended with length %ld, should be %lu", [v32 UTF8String], buffer->var2, v5, -[SAHIDEvent sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"));

    _os_crash();
    __break(1u);
  }

  v10 = [(NSMutableArray *)self->_steps count];
  buffer->var2 = v10;
  if (v10)
  {
    v11 = 0;
    v12 = buffer + 2;
    do
    {
      v13 = [(NSMutableArray *)self->_steps objectAtIndexedSubscript:v11];
      *&v12[-1].var0 = [v13 debugid];

      v14 = [(NSMutableArray *)self->_steps objectAtIndexedSubscript:v11];
      v12[-1].var3 = [v14 pid];

      v15 = [(NSMutableArray *)self->_steps objectAtIndexedSubscript:v11];
      v12[-1].var4 = [v15 tid];

      v16 = [(NSMutableArray *)self->_steps objectAtIndexedSubscript:v11];
      timestamp = [v16 timestamp];
      *&v12->var0 = SASerializableIndexForPointerFromSerializationDictionary(timestamp, dictionary);
      v12 = (v12 + 24);

      ++v11;
      v18 = buffer->var2;
    }

    while (v11 < v18);
  }

  else
  {
    LODWORD(v18) = 0;
  }

  v19 = &buffer[1].var0 + 24 * v18;
  v5 = 24 * v18 + 18;
  if (v5 != [(SAHIDEvent *)self sizeInBytesForSerializedVersion])
  {
    goto LABEL_16;
  }

  objc_opt_class();
  *v19 = *v19 & 0xFE | objc_opt_isKindOfClass() & 1;
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v18 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(SATimestamp *)self->_hidEventTimestamp addSelfToSerializationDictionary:dictionary];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_steps;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          timestamp = [*(*(&v13 + 1) + 8 * v11) timestamp];
          [timestamp addSelfToSerializationDictionary:dictionary];

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  *&v29[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 3u)
  {
    goto LABEL_23;
  }

  if (length <= 0xF)
  {
    v18 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy3 = length;
      v28 = 2048;
      *v29 = 16;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAHIDEvent struct %lu", buf, 0x16u);
    }

    *__error() = v18;
    _SASetCrashLogMessage(898, "bufferLength %lu < serialized SAHIDEvent struct %lu", length, 16);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 1) + 16 > length)
  {
LABEL_17:
    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(bufferCopy + 2);
      *buf = 134218496;
      lengthCopy3 = length;
      v28 = 1024;
      *v29 = v21;
      v29[2] = 2048;
      *&v29[3] = 8 * v21 + 16;
      _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAHIDEvent struct plus %u children %lu", buf, 0x1Cu);
    }

    *__error() = v19;
    _SASetCrashLogMessage(899, "bufferLength %lu < serialized SAHIDEvent struct plus %u children %lu", length, *(bufferCopy + 2), 8 * *(bufferCopy + 2) + 16);
    _os_crash();
    __break(1u);
LABEL_20:
    v22 = *__error();
    v23 = _sa_logt();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(bufferCopy + 2);
      *buf = 134218240;
      lengthCopy3 = length;
      v28 = 1024;
      *v29 = v24;
      _os_log_error_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread v2 struct with %u thread states", buf, 0x12u);
    }

    *__error() = v22;
    _SASetCrashLogMessage(906, "bufferLength %lu < serialized SAThread v2 struct with %u thread states", length, *(bufferCopy + 2));
    _os_crash();
    __break(1u);
LABEL_23:
    v25 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAHIDEvent version" userInfo:0];
    objc_exception_throw(v25);
  }

  if (*(buffer + 1) < 2u)
  {
    if ((*gSASerializationEncodedDataIsEmbedded() & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (24 * *(buffer + 1) + 18 > length)
  {
    goto LABEL_20;
  }

  if ((*(buffer + 24 * *(buffer + 1) + 16) & 1) == 0)
  {
LABEL_7:
    v6 = off_1E86F4CE8;
    goto LABEL_10;
  }

LABEL_9:
  v6 = off_1E86F4CF0;
LABEL_10:
  v7 = objc_alloc_init(*v6);
  v7[4] = *(bufferCopy + 4);
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(bufferCopy + 2)];
  v9 = *(v7 + 1);
  *(v7 + 1) = v8;

  if (*(bufferCopy + 2))
  {
    v10 = 0;
    v11 = (bufferCopy + 24);
    do
    {
      v12 = *(v7 + 1);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      v11 += 3;
      v16 = [SAHIDStep hidStepWithDebugId:v13 pid:v14 tid:v15];
      [v12 addObject:v16];

      ++v10;
    }

    while (v10 < *(bufferCopy + 2));
  }

  return v7;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  *&v31[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 3u)
  {
    goto LABEL_16;
  }

  if (length <= 0xF)
  {
    v23 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v30 = 2048;
      *v31 = 16;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAHIDEvent struct %lu", buf, 0x16u);
    }

    *__error() = v23;
    _SASetCrashLogMessage(937, "bufferLength %lu < serialized SAHIDEvent struct %lu", length, 16);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 1) + 16 > length)
  {
LABEL_13:
    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(bufferCopy + 2);
      *buf = 134218496;
      lengthCopy2 = length;
      v30 = 1024;
      *v31 = v26;
      v31[2] = 2048;
      *&v31[3] = 8 * v26 + 16;
      _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAHIDEvent struct plus %u children %lu", buf, 0x1Cu);
    }

    *__error() = v24;
    _SASetCrashLogMessage(938, "bufferLength %lu < serialized SAHIDEvent struct plus %u children %lu", length, *(bufferCopy + 2), 8 * *(bufferCopy + 2) + 16);
    _os_crash();
    __break(1u);
LABEL_16:
    v27 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAHIDEvent version" userInfo:0];
    objc_exception_throw(v27);
  }

  v11 = *(buffer + 1);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  hidEventTimestamp = self->_hidEventTimestamp;
  self->_hidEventTimestamp = v13;

  if (*(bufferCopy + 2))
  {
    v15 = 0;
    v16 = (bufferCopy + 32);
    do
    {
      v17 = *v16;
      v16 += 3;
      v18 = objc_opt_class();
      v19 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v17, dictionary, bufferDictionary, v18);
      v20 = [(NSMutableArray *)self->_steps objectAtIndexedSubscript:v15];
      v22 = v20;
      if (v20)
      {
        objc_setProperty_atomic(v20, v21, v19, 16);
      }

      ++v15;
    }

    while (v15 < *(bufferCopy + 2));
  }
}

+ (id)hidEventWithoutReferencesFromPAStyleSerializedHIDEvent:(uint64_t)event
{
  v19 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = [SATimestamp timestampWithMachAbsTime:*(a2 + 16) machAbsTimeSec:0 machContTime:*(a2 + 8) machContTimeSec:0.0 wallTime:0.0];
  v4 = [SAHIDEvent hidEventWithHIDEventType:v3 atTimestamp:?];
  if (*(a2 + 28) >= 0xFFFFu)
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a2 + 28);
      *buf = 67109120;
      v18 = v16;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "hid event with %u steps", buf, 8u);
    }

    *__error() = v14;
    _SASetCrashLogMessage(952, "hid event with %u steps", *(a2 + 28));
    _os_crash();
    __break(1u);
  }

  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 28)];
  v7 = v5[1];
  v5[1] = v6;

  if (*(a2 + 28))
  {
    v8 = 0;
    v9 = (a2 + 52);
    do
    {
      v10 = [SAHIDStep hidStepWithDebugId:*(v9 - 1) pid:*(v9 - 3) tid:?];
      v12 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:*(a2 + 32) machContTimeSec:0.0 wallTime:0.0];
      if (v10)
      {
        objc_setProperty_atomic(v10, v11, v12, 16);
      }

      v9 += 6;

      [v5[1] addObject:v10];
      ++v8;
    }

    while (v8 < *(a2 + 28));
  }

  return v5;
}

@end