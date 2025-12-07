@interface SATaskState
+ (SATaskState)stateWithKCDataDeltaTask:(unint64_t *)task terminatedThreadsInstructionCycles:(int *)cycles memoryStatus:(unint64_t)status machTimebase:(void *)timebase donatingUniquePids:(uint64_t)pids startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)self0 endSampleIndex:;
+ (SATaskState)stateWithKCDataTask:(unint64_t *)task terminatedThreadsInstructionCycles:(int *)cycles memoryStatus:(unint64_t)status machTimebase:(void *)timebase donatingUniquePids:(uint64_t)pids startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)self0 endSampleIndex:;
+ (SATaskState)stateWithPAStyleTaskPrivateData:(void *)data donatingUniquePids:;
+ (SATaskState)stateWithStackshotTaskV1:(unint64_t)v1 machTimebase:(unsigned int)timebase hwPageSize:(uint64_t)size startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)index endSampleIndex:;
+ (SATaskState)stateWithStartTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex;
+ (SATaskStateInTransition)stateWithKCDataTransitioningTask:(uint64_t)task terminatedThreadsInstructionCycles:(uint64_t)cycles memoryStatus:(uint64_t)status machTimebase:(uint64_t)timebase donatingUniquePids:(uint64_t)pids startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)self0 endSampleIndex:;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (SATaskState)initWithStartTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex;
- (_DWORD)correspondsToKCDataDeltaTask:(void *)task terminatedThreadsInstructionCycles:(_DWORD *)cycles memoryStatus:(unint64_t)status machTimebase:(void *)timebase donatingUniquePids:;
- (_DWORD)correspondsToKCDataTask:(void *)task terminatedThreadsInstructionCycles:(_DWORD *)cycles memoryStatus:(unint64_t)status machTimebase:(void *)timebase donatingUniquePids:;
- (id)debugDescriptionWithTask:(uint64_t)task;
- (unint64_t)sampleCountInSampleIndexRangeStart:(unint64_t)start end:(unint64_t)end;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)correspondsToKCDataTransitioningTask:(void *)task terminatedThreadsInstructionCycles:(_DWORD *)cycles memoryStatus:(uint64_t)status machTimebase:(void *)timebase donatingUniquePids:;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SATaskState

- (id)debugDescriptionWithTask:(uint64_t)task
{
  if (task)
  {
    v4 = *(task + 48);
    v5 = *(task + 56);
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [a2 debugDescription];
    v8 = *(task + 64);
    if (v4 == v5)
    {
      v10 = [*(task + 48) debugDescription];
      v12 = [v6 initWithFormat:@"%@ @ sample index %lu\n%@", v7, v8, v10];
    }

    else
    {
      v9 = *(task + 72);
      v10 = [*(task + 48) debugDescription];
      v11 = [*(task + 56) debugDescription];
      v12 = [v6 initWithFormat:@"%@ @ sample indexes %lu-%lu\nstart:%@\n  end:%@", v7, v8, v9, v10, v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)debugDescription
{
  startTimestamp = self->_startTimestamp;
  endTimestamp = self->_endTimestamp;
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  startSampleIndex = self->_startSampleIndex;
  if (startTimestamp == endTimestamp)
  {
    v8 = [(SATimestamp *)self->_startTimestamp debugDescription];
    v10 = [v5 initWithFormat:@"Task state @ sample index %lu\n%@", startSampleIndex, v8];
  }

  else
  {
    endSampleIndex = self->_endSampleIndex;
    v8 = [(SATimestamp *)self->_startTimestamp debugDescription];
    v9 = [(SATimestamp *)self->_endTimestamp debugDescription];
    v10 = [v5 initWithFormat:@"Task state @ sample indexes %lu-%lu\nstart:%@\n  end:%@", startSampleIndex, endSampleIndex, v8, v9];
  }

  return v10;
}

- (unint64_t)sampleCountInSampleIndexRangeStart:(unint64_t)start end:(unint64_t)end
{
  v24 = *MEMORY[0x1E69E9840];
  if (start != 0x7FFFFFFFFFFFFFFFLL && end != 0x7FFFFFFFFFFFFFFFLL && start > end)
  {
    v16 = *__error();
    p_super = _sa_logt();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      startCopy = start;
      v22 = 2048;
      endCopy = end;
      _os_log_error_impl(&dword_1E0E2F000, p_super, OS_LOG_TYPE_ERROR, "startSampleIndexCap %lu > endSampleIndexCap %lu", buf, 0x16u);
    }

    *__error() = v16;
    _SASetCrashLogMessage(2413, "startSampleIndexCap %lu > endSampleIndexCap %lu", start, end);
    _os_crash();
    __break(1u);
    goto LABEL_27;
  }

  p_super = &self->super;
  startSampleIndex = self->_startSampleIndex;
  endSampleIndex = self->_endSampleIndex;
  if (startSampleIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return endSampleIndex == 0x7FFFFFFFFFFFFFFFLL;
  }

  if (endSampleIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_27:
    v17 = *__error();
    v18 = _sa_logt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      isa = p_super[8].isa;
      *buf = 134217984;
      startCopy = isa;
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "_startSampleIndex %lu, end NSNotFound", buf, 0xCu);
    }

    *__error() = v17;
    _SASetCrashLogMessage(2416, "_startSampleIndex %lu, end NSNotFound", p_super[8].isa);
    _os_crash();
    __break(1u);
  }

  if (endSampleIndex >= end)
  {
    endCopy2 = end;
  }

  else
  {
    endCopy2 = self->_endSampleIndex;
  }

  if (end != 0x7FFFFFFFFFFFFFFFLL)
  {
    endSampleIndex = endCopy2;
  }

  if (startSampleIndex <= start)
  {
    startCopy2 = start;
  }

  else
  {
    startCopy2 = self->_startSampleIndex;
  }

  if (start != 0x7FFFFFFFFFFFFFFFLL)
  {
    startSampleIndex = startCopy2;
  }

  v14 = endSampleIndex >= startSampleIndex;
  v15 = endSampleIndex - startSampleIndex;
  if (v14)
  {
    return v15 + 1;
  }

  else
  {
    return 0;
  }
}

- (_DWORD)correspondsToKCDataTask:(void *)task terminatedThreadsInstructionCycles:(_DWORD *)cycles memoryStatus:(unint64_t)status machTimebase:(void *)timebase donatingUniquePids:
{
  if (result)
  {
    v6 = result;
    if (result[2] != *(a2 + 56) || *(result + 10) != *(a2 + 40) || result[3] != *(a2 + 60) || result[4] != *(a2 + 64) || result[5] != *(a2 + 68) || *(result + 16) != *(a2 + 8) || result[6] != *(a2 + 80))
    {
      return 0;
    }

    v10 = *(result + 11);
    if (HIDWORD(status) && status)
    {
      if (status == HIDWORD(status))
      {
        if (v10 != *(a2 + 16))
        {
          return 0;
        }

        v11 = *(a2 + 24);
      }

      else
      {
        if (v10 != __udivti3())
        {
          return 0;
        }

        v11 = __udivti3();
      }
    }

    else
    {
      if (v10)
      {
        return 0;
      }

      v11 = 0;
    }

    if (*(v6 + 12) == v11)
    {
      if (task)
      {
        if (*task != *(v6 + 13) || task[1] != *(v6 + 14))
        {
          return 0;
        }
      }

      else if (*(v6 + 13) || *(v6 + 14))
      {
        return 0;
      }

      v12 = *(v6 + 15);
      if (timebase)
      {
        if (!v12)
        {
          return 0;
        }

        result = [timebase isEqualToSet:?];
        if (!result)
        {
          return result;
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (cycles)
      {
        if (*cycles == v6[7] && cycles[1] == v6[8] && cycles[2] == v6[9])
        {
          return (cycles[3] == v6[10]);
        }
      }

      else if (v6[7] == 0x80000000 && v6[8] == 0x80000000 && v6[9] == 0x80000000)
      {
        return (v6[10] == 0x80000000);
      }
    }

    return 0;
  }

  return result;
}

- (_DWORD)correspondsToKCDataDeltaTask:(void *)task terminatedThreadsInstructionCycles:(_DWORD *)cycles memoryStatus:(unint64_t)status machTimebase:(void *)timebase donatingUniquePids:
{
  if (result)
  {
    v6 = result;
    if (result[2] != *(a2 + 48) || *(result + 10) != *(a2 + 32) || result[3] != *(a2 + 52) || result[4] != *(a2 + 56) || result[5] != *(a2 + 60) || *(result + 16) != *(a2 + 8) || result[6] != *(a2 + 72))
    {
      return 0;
    }

    v10 = *(result + 11);
    if (HIDWORD(status) && status)
    {
      if (status == HIDWORD(status))
      {
        if (v10 != *(a2 + 16))
        {
          return 0;
        }

        v11 = *(a2 + 24);
      }

      else
      {
        if (v10 != __udivti3())
        {
          return 0;
        }

        v11 = __udivti3();
      }
    }

    else
    {
      if (v10)
      {
        return 0;
      }

      v11 = 0;
    }

    if (*(v6 + 12) == v11)
    {
      if (task)
      {
        if (*task != *(v6 + 13) || task[1] != *(v6 + 14))
        {
          return 0;
        }
      }

      else if (*(v6 + 13) || *(v6 + 14))
      {
        return 0;
      }

      v12 = *(v6 + 15);
      if (timebase)
      {
        if (!v12)
        {
          return 0;
        }

        result = [timebase isEqualToSet:?];
        if (!result)
        {
          return result;
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (cycles)
      {
        if (*cycles == v6[7] && cycles[1] == v6[8] && cycles[2] == v6[9])
        {
          v13 = cycles[3];
          v14 = v6[10];
          return (v13 == v14);
        }
      }

      else if (v6[8] == 0x80000000 && v6[9] == 0x80000000)
      {
        v13 = v6[10];
        v14 = 0x80000000;
        return (v13 == v14);
      }
    }

    return 0;
  }

  return result;
}

- (void)correspondsToKCDataTransitioningTask:(void *)task terminatedThreadsInstructionCycles:(_DWORD *)cycles memoryStatus:(uint64_t)status machTimebase:(void *)timebase donatingUniquePids:
{
  if (result)
  {
    v6 = result;
    if (result[16] != *(a2 + 8) || [result transitionType] != *(a2 + 16))
    {
      return 0;
    }

    if (task)
    {
      if (*task != v6[13] || task[1] != v6[14])
      {
        return 0;
      }
    }

    else if (v6[13] || v6[14])
    {
      return 0;
    }

    v10 = v6[15];
    if (timebase)
    {
      if (!v10)
      {
        return 0;
      }

      result = [timebase isEqualToSet:?];
      if (!result)
      {
        return result;
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (cycles)
    {
      if (*cycles == *(v6 + 7) && cycles[1] == *(v6 + 8) && cycles[2] == *(v6 + 9))
      {
        return (cycles[3] == *(v6 + 10));
      }
    }

    else if (*(v6 + 7) == 0x80000000 && *(v6 + 8) == 0x80000000 && *(v6 + 9) == 0x80000000)
    {
      return (*(v6 + 10) == 0x80000000);
    }

    return 0;
  }

  return result;
}

+ (SATaskState)stateWithKCDataTask:(unint64_t *)task terminatedThreadsInstructionCycles:(int *)cycles memoryStatus:(unint64_t)status machTimebase:(void *)timebase donatingUniquePids:(uint64_t)pids startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)self0 endSampleIndex:
{
  objc_opt_self();
  v17 = [SATaskState alloc];
  if (v17)
  {
    v18 = [(SATaskState *)v17 initWithStartTimestamp:pids endTimestamp:timestamp startSampleIndex:endTimestamp endSampleIndex:index];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong((v18 + 120), timebase);
      *(v19 + 8) = *(a2 + 56);
      *(v19 + 80) = *(a2 + 40);
      *(v19 + 12) = *(a2 + 60);
      *(v19 + 16) = *(a2 + 64);
      *(v19 + 20) = *(a2 + 68);
      *(v19 + 128) = *(a2 + 8);
      *(v19 + 24) = *(a2 + 80);
      if (HIDWORD(status) && status)
      {
        if (status == HIDWORD(status))
        {
          *(v19 + 88) = *(a2 + 16);
          v20 = *(a2 + 24);
        }

        else
        {
          *(v19 + 88) = __udivti3();
          v20 = __udivti3();
        }
      }

      else
      {
        v20 = 0;
        *(v19 + 88) = 0;
      }

      *(v19 + 96) = v20;
      if (task)
      {
        *(v19 + 104) = *task;
        *(v19 + 112) = task[1];
      }

      if (cycles)
      {
        *(v19 + 28) = *cycles;
        *(v19 + 32) = cycles[1];
        *(v19 + 36) = cycles[2];
        v21 = cycles[3];
      }

      else
      {
        *(v19 + 28) = 0x8000000080000000;
        v21 = 0x80000000;
        *(v19 + 36) = 0x80000000;
      }

      *(v19 + 40) = v21;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (SATaskState)stateWithKCDataDeltaTask:(unint64_t *)task terminatedThreadsInstructionCycles:(int *)cycles memoryStatus:(unint64_t)status machTimebase:(void *)timebase donatingUniquePids:(uint64_t)pids startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)self0 endSampleIndex:
{
  objc_opt_self();
  v17 = [SATaskState alloc];
  if (v17)
  {
    v18 = [(SATaskState *)v17 initWithStartTimestamp:pids endTimestamp:timestamp startSampleIndex:endTimestamp endSampleIndex:index];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong((v18 + 120), timebase);
      *(v19 + 8) = *(a2 + 48);
      *(v19 + 80) = *(a2 + 32);
      *(v19 + 12) = *(a2 + 52);
      *(v19 + 16) = *(a2 + 56);
      *(v19 + 20) = *(a2 + 60);
      *(v19 + 128) = *(a2 + 8);
      *(v19 + 24) = *(a2 + 72);
      if (HIDWORD(status) && status)
      {
        if (status == HIDWORD(status))
        {
          *(v19 + 88) = *(a2 + 16);
          v20 = *(a2 + 24);
        }

        else
        {
          *(v19 + 88) = __udivti3();
          v20 = __udivti3();
        }
      }

      else
      {
        v20 = 0;
        *(v19 + 88) = 0;
      }

      *(v19 + 96) = v20;
      if (task)
      {
        *(v19 + 104) = *task;
        *(v19 + 112) = task[1];
      }

      if (cycles)
      {
        *(v19 + 28) = *cycles;
        *(v19 + 32) = cycles[1];
        *(v19 + 36) = cycles[2];
        v21 = cycles[3];
      }

      else
      {
        *(v19 + 28) = 0x8000000080000000;
        v21 = 0x80000000;
        *(v19 + 36) = 0x80000000;
      }

      *(v19 + 40) = v21;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (SATaskStateInTransition)stateWithKCDataTransitioningTask:(uint64_t)task terminatedThreadsInstructionCycles:(uint64_t)cycles memoryStatus:(uint64_t)status machTimebase:(uint64_t)timebase donatingUniquePids:(uint64_t)pids startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)self0 endSampleIndex:
{
  objc_opt_self();
  v17 = [[SATaskStateInTransition alloc] initWithKCDataTransitioningTask:a2 andTerminatedThreadsInstructionCycles:task memoryStatus:cycles machTimebase:status andDonatingUniquePids:timebase startTimestamp:pids endTimestamp:timestamp startSampleIndex:endTimestamp endSampleIndex:index];

  return v17;
}

+ (SATaskState)stateWithStackshotTaskV1:(unint64_t)v1 machTimebase:(unsigned int)timebase hwPageSize:(uint64_t)size startTimestamp:(uint64_t)timestamp endTimestamp:(uint64_t)endTimestamp startSampleIndex:(uint64_t)index endSampleIndex:
{
  objc_opt_self();
  v15 = [SATaskState alloc];
  if (v15)
  {
    v16 = [(SATaskState *)v15 initWithStartTimestamp:size endTimestamp:timestamp startSampleIndex:endTimestamp endSampleIndex:index];
    v17 = v16;
    if (v16)
    {
      *(v16 + 8) = *(a2 + 60);
      v18 = *(a2 + 68);
      *(v16 + 80) = *(a2 + 64) * timebase;
      *(v16 + 12) = v18;
      *(v16 + 16) = *(a2 + 72);
      *(v16 + 20) = *(a2 + 76);
      v19 = *(a2 + 129);
      if (!v19)
      {
        v19 = *(a2 + 80);
      }

      *(v16 + 128) = v19;
      *(v16 + 24) = *(a2 + 125);
      if (HIDWORD(v1) && v1)
      {
        if (v1 == HIDWORD(v1))
        {
          *(v16 + 88) = *(a2 + 16);
          v20 = *(a2 + 24);
        }

        else
        {
          *(v16 + 88) = __udivti3();
          v20 = __udivti3();
        }
      }

      else
      {
        v20 = 0;
        *(v17 + 88) = 0;
      }

      *(v17 + 96) = v20;
      *&v21 = 0x8000000080000000;
      *(&v21 + 1) = 0x8000000080000000;
      *(v17 + 28) = v21;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (SATaskState)initWithStartTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex
{
  v14.receiver = self;
  v14.super_class = SATaskState;
  v10 = [(SATaskState *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_startTimestamp, timestamp);
    objc_storeStrong(&v11->_endTimestamp, endTimestamp);
    v11->_startSampleIndex = index;
    v11->_endSampleIndex = sampleIndex;
    *&v12 = 0x8000000080000000;
    *(&v12 + 1) = 0x8000000080000000;
    *&v11->_memoryLimitMB = v12;
  }

  return v11;
}

+ (SATaskState)stateWithStartTimestamp:(id)timestamp endTimestamp:(id)endTimestamp startSampleIndex:(unint64_t)index endSampleIndex:(unint64_t)sampleIndex
{
  v6 = [[self alloc] initWithStartTimestamp:timestamp endTimestamp:endTimestamp startSampleIndex:index endSampleIndex:sampleIndex];

  return v6;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v48 = *MEMORY[0x1E69E9840];
  if ([(SATaskState *)self sizeInBytesForSerializedVersion]!= length)
  {
    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [(SATaskState *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v21 UTF8String];
      v45 = 2048;
      *v46 = [(SATaskState *)self sizeInBytesForSerializedVersion];
      *&v46[8] = 2048;
      *&v46[10] = length;
      _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v19;
    v22 = [(SATaskState *)self debugDescription];
    _SASetCrashLogMessage(3570, "%s: size %lu != buffer length %lu", [v22 UTF8String], -[SATaskState sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  *&buffer->var0 = 769;
  *(&buffer->var3 + 2) = *&self->_startSampleIndex;
  *(&buffer->var5 + 2) = self->_suspendCount;
  *(&buffer->var5 + 6) = self->_taskSizeInBytes;
  *(&buffer->var6 + 6) = self->_faults;
  *(&buffer->var7 + 2) = self->_pageins;
  *(&buffer->var7 + 6) = self->_cowFaults;
  *(&buffer->var8 + 2) = self->_latencyQos;
  *(&buffer->var9 + 2) = self->_terminatedThreadsUserTimeInNs;
  *(&buffer->var11 + 2) = self->_terminatedThreadsSystemTimeInNs;
  *(&buffer->var12 + 6) = self->_terminatedThreadsInstructions;
  *(&buffer->var13 + 6) = self->_terminatedThreadsCycles;
  *(&buffer->var14 + 7) = self->_ssFlags;
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_startTimestamp, dictionary);
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_endTimestamp, dictionary);
  if ([(NSSet *)self->_donatingUniquePids count]>= 0xFF)
  {
LABEL_18:
    v13 = *__error();
    v23 = _sa_logt();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [(SATaskState *)self debugDescription];
      uTF8String2 = [v24 UTF8String];
      v26 = [(NSSet *)self->_donatingUniquePids count];
      *buf = 136315394;
      uTF8String = uTF8String2;
      v45 = 2048;
      *v46 = v26;
      _os_log_error_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_ERROR, "%s: %lu donatingUniquePids", buf, 0x16u);
    }

    *__error() = v13;
    v27 = [(SATaskState *)self debugDescription];
    _SASetCrashLogMessage(3592, "%s: %lu donatingUniquePids", [v27 UTF8String], -[NSSet count](self->_donatingUniquePids, "count"));

    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v9 = &buffer->var15 + 7;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = self->_donatingUniquePids;
  v11 = [(NSSet *)v10 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    LOBYTE(v13) = 0;
    v14 = *v40;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v10);
        }

        *&v9[8 * v13] = [*(*(&v39 + 1) + 8 * i) unsignedLongLongValue];
        LOBYTE(v13) = v13 + 1;
      }

      v12 = [(NSSet *)v10 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v12);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  if ([(NSSet *)self->_donatingUniquePids count]!= v13)
  {
LABEL_21:
    v17 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [(SATaskState *)self debugDescription];
      uTF8String3 = [v29 UTF8String];
      v31 = [(NSSet *)self->_donatingUniquePids count];
      v13 = v13;
      *buf = 136315650;
      uTF8String = uTF8String3;
      v45 = 2048;
      *v46 = v31;
      *&v46[8] = 1024;
      *&v46[10] = v13;
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "%s: %lu donatingUniquePids, but %u serialized", buf, 0x1Cu);
    }

    else
    {
      v13 = v13;
    }

    *__error() = v17;
    buffer = [(SATaskState *)self debugDescription];
    _SASetCrashLogMessage(3599, "%s: %lu donatingUniquePids, but %u serialized", [($2089E77EEE4A1EB652AD555C69D4CCDC *)buffer UTF8String], [(NSSet *)self->_donatingUniquePids count], v13);

    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  BYTE6(buffer->var14) = v13;
  v16 = &v9[8 * v13];
  v17 = v16 - buffer + 24;
  if (v17 != [(SATaskState *)self sizeInBytesForSerializedVersion])
  {
LABEL_24:
    v32 = *__error();
    v33 = _sa_logt();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [(SATaskState *)self debugDescription];
      uTF8String4 = [v34 UTF8String];
      v36 = BYTE6(buffer->var14);
      sizeInBytesForSerializedVersion = [(SATaskState *)self sizeInBytesForSerializedVersion];
      *buf = 136315906;
      uTF8String = uTF8String4;
      v45 = 1024;
      *v46 = v36;
      *&v46[4] = 2048;
      *&v46[6] = v17;
      *&v46[14] = 2048;
      *&v46[16] = sizeInBytesForSerializedVersion;
      _os_log_error_impl(&dword_1E0E2F000, v33, OS_LOG_TYPE_ERROR, "%s: after serializing (with %u donating uniquepids), ended with length %ld, should be %lu", buf, 0x26u);
    }

    *__error() = v32;
    v38 = [(SATaskState *)self debugDescription];
    _SASetCrashLogMessage(3603, "%s: after serializing (with %u donating uniquepids), ended with length %ld, should be %lu", [v38 UTF8String], BYTE6(buffer->var14), v17, -[SATaskState sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"));

    _os_crash();
    __break(1u);
  }

  *v16 = [(SATaskState *)self transitionType];
  *(v16 + 2) = [(SATaskState *)self memoryLimitMB];
  *(v16 + 3) = [(SATaskState *)self effectiveJetsamPriority];
  *(v16 + 4) = [(SATaskState *)self requestedJetsamPriority];
  *(v16 + 5) = [(SATaskState *)self assertionJetsamPriority];
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
  v42 = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_38;
  }

  lengthCopy2 = length;
  if (length <= 0x66)
  {
    v26 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v39 = lengthCopy2;
      v40 = 2048;
      v41 = 103;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATaskState struct %lu", buf, 0x16u);
    }

    *__error() = v26;
    _SASetCrashLogMessage(3628, "bufferLength %lu < serialized SATaskState struct %lu", lengthCopy2, 103);
    _os_crash();
    __break(1u);
    goto LABEL_29;
  }

  bufferCopy = buffer;
  v6 = *(buffer + 94);
  v7 = 8 * v6;
  if (8 * v6 + 103 > length)
  {
LABEL_29:
    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = *(bufferCopy + 94);
      *buf = 134218240;
      v39 = lengthCopy2;
      v40 = 1024;
      LODWORD(v41) = v29;
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct with %u donatingUniquePids", buf, 0x12u);
    }

    *__error() = v27;
    _SASetCrashLogMessage(3630, "bufferLength %lu < serialized SATask struct with %u donatingUniquePids", lengthCopy2, *(bufferCopy + 94));
    _os_crash();
    __break(1u);
    goto LABEL_32;
  }

  v8 = buffer + 103;
  if (*(buffer + 1) < 2u)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (v7 + 111 > length)
  {
LABEL_32:
    v30 = *__error();
    v31 = _sa_logt();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *(bufferCopy + 94);
      *buf = 134218240;
      v39 = lengthCopy2;
      v40 = 1024;
      LODWORD(v41) = v32;
      _os_log_error_impl(&dword_1E0E2F000, v31, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATaskState struct v2 with %u donating unique pids", buf, 0x12u);
    }

    *__error() = v30;
    _SASetCrashLogMessage(3638, "bufferLength %lu < serialized SATaskState struct v2 with %u donating unique pids", lengthCopy2, *(bufferCopy + 94));
    _os_crash();
    __break(1u);
LABEL_35:
    v33 = *__error();
    v34 = _sa_logt();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = *(bufferCopy + 94);
      *buf = 134218240;
      v39 = lengthCopy2;
      v40 = 1024;
      LODWORD(v41) = v35;
      _os_log_error_impl(&dword_1E0E2F000, v34, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATaskState struct v3 with %u donating unique pids", buf, 0x12u);
    }

    *__error() = v33;
    _SASetCrashLogMessage(3681, "bufferLength %lu < serialized SATaskState struct v3 with %u donating unique pids", lengthCopy2, *(bufferCopy + 94));
    _os_crash();
    __break(1u);
LABEL_38:
    v36 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATaskState version" userInfo:0];
    objc_exception_throw(v36);
  }

  v9 = &v8[8 * v6];
  if (!*v9)
  {
LABEL_9:
    v10 = 0;
    v11 = off_1E86F4DC8;
    goto LABEL_10;
  }

  v10 = 1;
  v11 = off_1E86F4DD0;
LABEL_10:
  v12 = objc_alloc_init(*v11);
  v13 = v12;
  v14 = *(bufferCopy + 18);
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (v14 != 0x7FFFFFFF && v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = *(bufferCopy + 18);
  }

  v12[8] = v15;
  v16 = *(bufferCopy + 26);
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  if (v16 != 0x7FFFFFFF && v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = *(bufferCopy + 26);
  }

  v12[9] = v17;
  *(v12 + 2) = *(bufferCopy + 34);
  v12[10] = *(bufferCopy + 38);
  *(v12 + 3) = *(bufferCopy + 46);
  *(v12 + 4) = *(bufferCopy + 50);
  *(v12 + 5) = *(bufferCopy + 54);
  *(v12 + 6) = *(bufferCopy + 58);
  v12[11] = *(bufferCopy + 62);
  v12[12] = *(bufferCopy + 70);
  v12[13] = *(bufferCopy + 78);
  v12[14] = *(bufferCopy + 86);
  v12[16] = *(bufferCopy + 95);
  v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:*(bufferCopy + 94)];
  if (*(bufferCopy + 94))
  {
    v19 = 0;
    do
    {
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&v8[8 * v19]];
      [v18 addObject:v20];

      ++v19;
    }

    while (v19 < *(bufferCopy + 94));
  }

  v21 = [v18 copy];
  v22 = v13[15];
  v13[15] = v21;

  if (v10)
  {
    v13[17] = *v9;
  }

  if (*(bufferCopy + 1) < 3u)
  {
    *(v13 + 28) = 0x8000000080000000;
    v24 = 0x80000000;
    *(v13 + 9) = 0x80000000;
    goto LABEL_25;
  }

  lengthCopy2 = length;
  if (v7 + 127 > length)
  {
    goto LABEL_35;
  }

  v23 = &v8[8 * *(bufferCopy + 94)];
  *(v13 + 7) = *(v23 + 2);
  *(v13 + 8) = *(v23 + 3);
  *(v13 + 9) = *(v23 + 4);
  v24 = *(v23 + 5);
LABEL_25:
  *(v13 + 10) = v24;

  return v13;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v28 = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_13;
  }

  if (length <= 0x66)
  {
    v19 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v26 = 2048;
      v27 = 103;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATaskState struct %lu", buf, 0x16u);
    }

    *__error() = v19;
    _SASetCrashLogMessage(3704, "bufferLength %lu < serialized SATaskState struct %lu", length, 103);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 94) + 103 > length)
  {
LABEL_10:
    v20 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(bufferCopy + 94);
      *buf = 134218240;
      lengthCopy2 = length;
      v26 = 1024;
      LODWORD(v27) = v22;
      _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct with %u donatingUniquePids", buf, 0x12u);
    }

    *__error() = v20;
    _SASetCrashLogMessage(3705, "bufferLength %lu < serialized SATask struct with %u donatingUniquePids", length, *(bufferCopy + 94));
    _os_crash();
    __break(1u);
LABEL_13:
    v23 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATaskState version" userInfo:0];
    objc_exception_throw(v23);
  }

  v11 = *(buffer + 2);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  startTimestamp = self->_startTimestamp;
  self->_startTimestamp = v13;

  v15 = *(bufferCopy + 10);
  v16 = objc_opt_class();
  v17 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16);
  endTimestamp = self->_endTimestamp;
  self->_endTimestamp = v17;
}

+ (SATaskState)stateWithPAStyleTaskPrivateData:(void *)data donatingUniquePids:
{
  objc_opt_self();
  v5 = objc_alloc_init(SATaskState);
  v6 = v5;
  if (a2)
  {
    v5->_taskSizeInBytes = *(a2 + 32);
    v5->_faults = *(a2 + 12);
    v5->_pageins = *(a2 + 16);
    v5->_cowFaults = *(a2 + 20);
    v5->_suspendCount = *(a2 + 8);
    v5->_latencyQos = *(a2 + 24);
    v5->_terminatedThreadsUserTimeInNs = *(a2 + 48);
    v5->_terminatedThreadsSystemTimeInNs = *(a2 + 56);
    v5->_terminatedThreadsInstructions = *(a2 + 64);
    v5->_terminatedThreadsCycles = *(a2 + 72);
    v7 = *(a2 + 40);
  }

  else
  {
    v7 = 0;
    *&v5->_suspendCount = 0;
    *&v5->_pageins = 0;
    v5->_latencyQos = 0;
    *&v5->_taskSizeInBytes = 0u;
    *&v5->_terminatedThreadsSystemTimeInNs = 0u;
    v5->_terminatedThreadsCycles = 0;
  }

  v5->_ssFlags = v7;
  objc_storeStrong(&v5->_donatingUniquePids, data);
  *&v8 = 0x8000000080000000;
  *(&v8 + 1) = 0x8000000080000000;
  *&v6->_memoryLimitMB = v8;

  return v6;
}

@end