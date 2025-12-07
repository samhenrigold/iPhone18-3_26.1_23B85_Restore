@interface SAThread
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (id)threadWithId:(uint64_t)id;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)isProcessorIdleThread;
- (NSString)debugDescription;
- (SAThread)initWithId:(unint64_t)id;
- (id)firstThreadStateOnOrAfterTime:(id)time sampleIndex:(unint64_t)index;
- (id)firstThreadStateOnOrAfterTime:(id)time withSampleIndex:(BOOL)index;
- (id)lastThreadStateOnOrBeforeTime:(id)time sampleIndex:(unint64_t)index;
- (id)lastThreadStateOnOrBeforeTime:(id)time withSampleIndex:(BOOL)index;
- (id)patchedStackForTruncatedStack:(id)stack;
- (unint64_t)indexOfFirstThreadStateOnOrAfterTime:(id)time sampleIndex:(unint64_t)index;
- (unint64_t)indexOfFirstThreadStateOnOrAfterTime:(id)time withSampleIndex:(BOOL)index;
- (unint64_t)indexOfLastThreadStateOnOrBeforeTime:(id)time sampleIndex:(unint64_t)index;
- (unint64_t)indexOfLastThreadStateOnOrBeforeTime:(id)time withSampleIndex:(BOOL)index;
- (unint64_t)sampleCountInTimestampRangeStart:(id)start end:(id)end;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)cpuTimeForThreadStateIndex:(uint64_t)index@<X2> inTimestampRangeStart:(uint64_t)start@<X3> end:(void *)end@<X8>;
- (void)enumerateThreadStatesBetweenStartTime:(id)time endTime:(id)endTime reverseOrder:(BOOL)order withSampleIndex:(BOOL)index block:(id)block;
- (void)enumerateThreadStatesBetweenStartTime:(id)time startSampleIndex:(unint64_t)index endTime:(id)endTime endSampleIndex:(unint64_t)sampleIndex reverseOrder:(BOOL)order block:(id)block;
- (void)forwardFillMonotonicallyIncreasingData;
- (void)insertState:(void *)state atIndex:;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAThread

- (BOOL)isProcessorIdleThread
{
  lastObject = [(NSMutableArray *)self->_threadStates lastObject];
  if (lastObject)
  {
    v3 = lastObject[40] >> 7;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (SAThread)initWithId:(unint64_t)id
{
  v9.receiver = self;
  v9.super_class = SAThread;
  v4 = [(SAThread *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_threadId = id;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    threadStates = v5->_threadStates;
    v5->_threadStates = v6;
  }

  return v5;
}

+ (id)threadWithId:(uint64_t)id
{
  v2 = [objc_alloc(objc_opt_self()) initWithId:a2];

  return v2;
}

- (unint64_t)indexOfFirstThreadStateOnOrAfterTime:(id)time sampleIndex:(unint64_t)index
{
  if (![(NSMutableArray *)self->_threadStates count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (time)
  {
    threadStates = self->_threadStates;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__SAThread_indexOfFirstThreadStateOnOrAfterTime_sampleIndex___block_invoke;
    v12[3] = &unk_1E86F7040;
    v12[4] = time;
    time = SABinarySearchArray(threadStates, 1280, v12);
  }

  if (index != 0x7FFFFFFFFFFFFFFFLL && time < [(NSMutableArray *)self->_threadStates count])
  {
    do
    {
      v8 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:time];
      if ([v8 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      else
      {
        v9 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:time];
        endSampleIndex = [v9 endSampleIndex];

        if (endSampleIndex >= index)
        {
          break;
        }
      }

      time = time + 1;
    }

    while (time < [(NSMutableArray *)self->_threadStates count]);
  }

  if (time >= [(NSMutableArray *)self->_threadStates count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return time;
  }
}

uint64_t __61__SAThread_indexOfFirstThreadStateOnOrAfterTime_sampleIndex___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 startTimestamp];
  LOBYTE(v4) = [v4 lt:v5];

  if (v4)
  {
    return -1;
  }

  v7 = *(a1 + 32);
  v8 = [a2 endTimestamp];
  LODWORD(v7) = [v7 gt:v8];

  return v7;
}

- (id)firstThreadStateOnOrAfterTime:(id)time sampleIndex:(unint64_t)index
{
  v5 = [(SAThread *)self indexOfFirstThreadStateOnOrAfterTime:time sampleIndex:index];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (unint64_t)indexOfLastThreadStateOnOrBeforeTime:(id)time sampleIndex:(unint64_t)index
{
  if (![(NSMutableArray *)self->_threadStates count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  threadStates = self->_threadStates;
  if (time)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__SAThread_indexOfLastThreadStateOnOrBeforeTime_sampleIndex___block_invoke;
    v14[3] = &unk_1E86F7040;
    v14[4] = time;
    v8 = SABinarySearchArray(threadStates, 1536, v14);
    if (!v8)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v8 = [(NSMutableArray *)threadStates count];
  }

  v9 = v8 - 1;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v9;
  }

  while (1)
  {
    v11 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:v9];
    if ([v11 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    else
    {
      v12 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:v9];
      startSampleIndex = [v12 startSampleIndex];

      if (startSampleIndex <= index)
      {
        return v9;
      }
    }

    if (!v9)
    {
      break;
    }

    --v9;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t __61__SAThread_indexOfLastThreadStateOnOrBeforeTime_sampleIndex___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 startTimestamp];
  LOBYTE(v4) = [v4 lt:v5];

  if (v4)
  {
    return -1;
  }

  v7 = *(a1 + 32);
  v8 = [a2 endTimestamp];
  LODWORD(v7) = [v7 gt:v8];

  return v7;
}

- (id)lastThreadStateOnOrBeforeTime:(id)time sampleIndex:(unint64_t)index
{
  v5 = [(SAThread *)self indexOfLastThreadStateOnOrBeforeTime:time sampleIndex:index];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (id)firstThreadStateOnOrAfterTime:(id)time withSampleIndex:(BOOL)index
{
  if (index)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SAThread *)self firstThreadStateOnOrAfterTime:time sampleIndex:v4];
}

- (unint64_t)indexOfFirstThreadStateOnOrAfterTime:(id)time withSampleIndex:(BOOL)index
{
  if (index)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SAThread *)self indexOfFirstThreadStateOnOrAfterTime:time sampleIndex:v4];
}

- (id)lastThreadStateOnOrBeforeTime:(id)time withSampleIndex:(BOOL)index
{
  v5 = [(SAThread *)self indexOfLastThreadStateOnOrBeforeTime:time withSampleIndex:index];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (unint64_t)indexOfLastThreadStateOnOrBeforeTime:(id)time withSampleIndex:(BOOL)index
{
  indexCopy = index;
  lastObject = [(NSMutableArray *)self->_threadStates lastObject];
  v8 = lastObject;
  if (lastObject)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (!indexCopy || (v10 = 0x7FFFFFFFFFFFFFFFLL, v9 = [lastObject endSampleIndex], v9 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v10 = [(SAThread *)self indexOfLastThreadStateOnOrBeforeTime:time sampleIndex:v9];
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (void)enumerateThreadStatesBetweenStartTime:(id)time startSampleIndex:(unint64_t)index endTime:(id)endTime endSampleIndex:(unint64_t)sampleIndex reverseOrder:(BOOL)order block:(id)block
{
  v13 = [(SAThread *)self indexOfFirstThreadStateOnOrAfterTime:time sampleIndex:index];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v13;
    v15 = [(SAThread *)self indexOfLastThreadStateOnOrBeforeTime:endTime sampleIndex:sampleIndex];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15;
      if (v14 <= v15)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __109__SAThread_enumerateThreadStatesBetweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke;
        v19[3] = &unk_1E86F7068;
        v19[4] = self;
        v19[5] = block;
        v17 = MEMORY[0x1E12EBE50](v19);
        if (order)
        {
          do
          {
            if (v16 + 1 <= v14)
            {
              break;
            }

            v18 = v17[2](v17, v16--);
          }

          while ((v18 & 1) == 0);
        }

        else
        {
          do
          {
            if (v17[2](v17, v14))
            {
              break;
            }

            ++v14;
          }

          while (v14 <= v16);
        }
      }
    }
  }
}

uint64_t __109__SAThread_enumerateThreadStatesBetweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:a2];
  (*(v3 + 16))(v3, v4, a2, &v6);

  return v6;
}

- (void)enumerateThreadStatesBetweenStartTime:(id)time endTime:(id)endTime reverseOrder:(BOOL)order withSampleIndex:(BOOL)index block:(id)block
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__SAThread_enumerateThreadStatesBetweenStartTime_endTime_reverseOrder_withSampleIndex_block___block_invoke;
  v7[3] = &unk_1E86F7090;
  indexCopy = index;
  v7[4] = block;
  [(SAThread *)self enumerateThreadStatesBetweenStartTime:time startSampleIndex:0x7FFFFFFFFFFFFFFFLL endTime:endTime endSampleIndex:0x7FFFFFFFFFFFFFFFLL reverseOrder:order block:v7];
}

void *__93__SAThread_enumerateThreadStatesBetweenStartTime_endTime_reverseOrder_withSampleIndex_block___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40) != 1 || (result = [a2 startSampleIndex], result != 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

- (unint64_t)sampleCountInTimestampRangeStart:(id)start end:(id)end
{
  v24 = *MEMORY[0x1E69E9840];
  if (start && end && ([start le:end] & 1) == 0)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [start debugDescription];
      uTF8String = [v14 UTF8String];
      v16 = [end debugDescription];
      *buf = 136315394;
      v21 = uTF8String;
      v22 = 2080;
      uTF8String2 = [v16 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "start time %s after end time %s", buf, 0x16u);
    }

    *__error() = v12;
    v17 = [start debugDescription];
    uTF8String3 = [v17 UTF8String];
    v19 = [end debugDescription];
    _SASetCrashLogMessage(259, "start time %s after end time %s", uTF8String3, [v19 UTF8String]);

    _os_crash();
    __break(1u);
  }

  result = [(NSMutableArray *)self->_threadStates count];
  if (result)
  {
    v8 = [(SAThread *)self indexOfFirstThreadStateOnOrAfterTime:start sampleIndex:0x7FFFFFFFFFFFFFFFLL];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v9 = v8;
      v10 = [(SAThread *)self indexOfLastThreadStateOnOrBeforeTime:end sampleIndex:0x7FFFFFFFFFFFFFFFLL];
      if (v10 >= v9)
      {
        v11 = v10 - v9 + 1;
      }

      else
      {
        v11 = 0;
      }

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      else
      {
        return v11;
      }
    }
  }

  return result;
}

- (void)cpuTimeForThreadStateIndex:(uint64_t)index@<X2> inTimestampRangeStart:(uint64_t)start@<X3> end:(void *)end@<X8>
{
  *end = 0;
  end[1] = 0;
  end[2] = 0;
  if (!self)
  {
    return;
  }

  threadStates = [self threadStates];
  v11 = [threadStates count];

  if (v11 < a2)
  {
    return;
  }

  threadStates2 = [self threadStates];
  v43 = [threadStates2 objectAtIndexedSubscript:a2];

  endSampleIndex = [v43 endSampleIndex];
  if (!a2)
  {
    goto LABEL_19;
  }

  startTimestamp = [v43 startTimestamp];
  v15 = [startTimestamp gt:index];

  if (!v15)
  {
    goto LABEL_19;
  }

  threadStates3 = [self threadStates];
  v17 = [threadStates3 objectAtIndexedSubscript:a2 - 1];

  if (endSampleIndex == 0x7FFFFFFFFFFFFFFFLL || [v17 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    creationTimestamp = v17;
  }

  else
  {
    v18 = a2 - 2;
    while (v18 != -1)
    {
      threadStates4 = [self threadStates];
      creationTimestamp = [threadStates4 objectAtIndexedSubscript:v18];

      --v18;
      v17 = creationTimestamp;
      if ([creationTimestamp startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_13;
      }
    }

    creationTimestamp = 0;
  }

LABEL_13:
  endTimestamp = [creationTimestamp endTimestamp];
  v22 = [endTimestamp lt:index];

  if (v22)
  {

LABEL_19:
    creationTimestamp = [self creationTimestamp];
    if (!creationTimestamp)
    {
      goto LABEL_24;
    }

    creationTimestamp2 = [self creationTimestamp];
    v28 = [creationTimestamp2 ge:index];

    if (v28)
    {
      *end = [v43 cpuTimeNs];
      end[1] = [v43 instructions];
      cycles = [v43 cycles];
      creationTimestamp = 0;
      goto LABEL_22;
    }

    creationTimestamp = 0;
    goto LABEL_24;
  }

  if (!creationTimestamp)
  {
    goto LABEL_19;
  }

  if (![v43 isIdleWorkQueue] || objc_msgSend(creationTimestamp, "isIdleWorkQueue"))
  {
    cpuTimeNs = [v43 cpuTimeNs];
    *end = cpuTimeNs - [creationTimestamp cpuTimeNs];
    instructions = [v43 instructions];
    end[1] = instructions - [creationTimestamp instructions];
    cycles2 = [v43 cycles];
    cycles = cycles2 - [creationTimestamp cycles];
LABEL_22:
    end[2] = cycles;
  }

LABEL_24:
  if (([v43 isIdleWorkQueue] & 1) == 0)
  {
    threadStates5 = [self threadStates];
    if ([threadStates5 count] - 1 <= a2)
    {
LABEL_42:

      goto LABEL_43;
    }

    endTimestamp2 = [v43 endTimestamp];
    v31 = [endTimestamp2 lt:start];

    if (v31)
    {
      threadStates6 = [self threadStates];
      threadStates5 = [threadStates6 objectAtIndexedSubscript:a2 + 1];

      if (endSampleIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([threadStates5 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v33 = a2 + 2;
          while (1)
          {
            threadStates7 = [self threadStates];
            v35 = [threadStates7 count] - 1;

            if ((v33 - 1) >= v35)
            {
              break;
            }

            threadStates8 = [self threadStates];
            v37 = [threadStates8 objectAtIndexedSubscript:v33];

            ++v33;
            threadStates5 = v37;
            if ([v37 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_36;
            }
          }

          v37 = 0;
        }

        else
        {
          v37 = threadStates5;
        }

LABEL_36:
        startTimestamp2 = [v37 startTimestamp];
        v39 = [startTimestamp2 gt:start];

        if (v39)
        {

          threadStates5 = 0;
          goto LABEL_42;
        }

        threadStates5 = v37;
      }

      if (threadStates5 && [threadStates5 isIdleWorkQueue])
      {
        cpuTimeNs2 = [threadStates5 cpuTimeNs];
        *end += cpuTimeNs2 - [v43 cpuTimeNs];
        instructions2 = [threadStates5 instructions];
        end[1] += instructions2 - [v43 instructions];
        cycles3 = [threadStates5 cycles];
        end[2] += cycles3 - [v43 cycles];
      }

      goto LABEL_42;
    }
  }

LABEL_43:
}

- (void)forwardFillMonotonicallyIncreasingData
{
  v77 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    threadStates = [self threadStates];
    v3 = [threadStates countByEnumeratingWithState:&v42 objects:v76 count:16];
    if (v3)
    {
      v4 = v3;
      selfCopy = self;
      v5 = 0;
      v6 = 0;
      v7 = *v43;
      v27 = threadStates;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          v9 = v6;
          if (*v43 != v7)
          {
            objc_enumerationMutation(threadStates);
          }

          v10 = *(*(&v42 + 1) + 8 * i);
          if (v6)
          {
            if ([*(*(&v42 + 1) + 8 * i) userTimeInNs] && (v11 = objc_msgSend(v10, "userTimeInNs"), v11 < objc_msgSend(v6, "userTimeInNs")) || objc_msgSend(v10, "systemTimeInNs") && (v12 = objc_msgSend(v10, "systemTimeInNs"), v12 < objc_msgSend(v6, "systemTimeInNs")) || objc_msgSend(v10, "instructions") && (v13 = objc_msgSend(v10, "instructions"), v13 < objc_msgSend(v6, "instructions")) || objc_msgSend(v10, "cycles") && (v14 = objc_msgSend(v10, "cycles"), v14 < objc_msgSend(v6, "cycles")))
            {
              v15 = *__error();
              v16 = _sa_logt();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                threadId = [selfCopy threadId];
                threadStates2 = [selfCopy threadStates];
                v25 = [threadStates2 count];
                v39 = [v9 debugDescription];
                v38 = [v10 debugDescription];
                cpuTimeNs = [v9 cpuTimeNs];
                userTimeInNs = [v9 userTimeInNs];
                systemTimeInNs = [v9 systemTimeInNs];
                cpuTimeNs2 = [v10 cpuTimeNs];
                userTimeInNs2 = [v10 userTimeInNs];
                systemTimeInNs2 = [v10 systemTimeInNs];
                instructions = [v9 instructions];
                instructions2 = [v10 instructions];
                cycles = [v9 cycles];
                cycles2 = [v10 cycles];
                *buf = 134221570;
                v47 = threadId;
                v48 = 2048;
                v49 = v5;
                v50 = 2048;
                v51 = v25;
                v52 = 2112;
                v53 = v39;
                v54 = 2112;
                v55 = v38;
                v56 = 2048;
                v57 = cpuTimeNs;
                v58 = 2048;
                v59 = userTimeInNs;
                v60 = 2048;
                v61 = systemTimeInNs;
                v62 = 2048;
                v63 = cpuTimeNs2;
                v64 = 2048;
                v65 = userTimeInNs2;
                v66 = 2048;
                v67 = systemTimeInNs2;
                v68 = 2048;
                v69 = instructions;
                v70 = 2048;
                v71 = instructions2;
                v72 = 2048;
                v73 = cycles;
                v74 = 2048;
                v75 = cycles2;
                _os_log_debug_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_DEBUG, "Thread 0x%llx monotonically increasing data decreased at index %lu of %lu between %@ and %@:\ncpu time %llu (%llu + %llu) -> %llu (%llu + %llu)\ninstructions %llu -> %llu\ncycles %llu -> %llu", buf, 0x98u);

                threadStates = v27;
              }

              *__error() = v15;
            }

            userTimeInNs3 = [v10 userTimeInNs];
            if (userTimeInNs3 < [v9 userTimeInNs])
            {
              userTimeInNs4 = [v9 userTimeInNs];
              if (v10)
              {
                v10[17] = userTimeInNs4;
              }
            }

            systemTimeInNs3 = [v10 systemTimeInNs];
            if (systemTimeInNs3 < [v9 systemTimeInNs])
            {
              systemTimeInNs4 = [v9 systemTimeInNs];
              if (v10)
              {
                v10[18] = systemTimeInNs4;
              }
            }

            instructions3 = [v10 instructions];
            if (instructions3 < [v9 instructions])
            {
              instructions4 = [v9 instructions];
              if (v10)
              {
                v10[19] = instructions4;
              }
            }

            cycles3 = [v10 cycles];
            if (cycles3 < [v9 cycles])
            {
              cycles4 = [v9 cycles];
              if (v10)
              {
                v10[20] = cycles4;
              }
            }
          }

          v6 = v10;

          ++v5;
        }

        v4 = [threadStates countByEnumeratingWithState:&v42 objects:v76 count:16];
      }

      while (v4);
    }
  }
}

- (void)insertState:(void *)state atIndex:
{
  v52 = *MEMORY[0x1E69E9840];
  if (self)
  {
    stateCopy = state;
    v4 = a2;
    selfCopy = self;
    [self[1] insertObject:a2 atIndex:state];
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{stateCopy, objc_msgSend(selfCopy[1], "count") - stateCopy}];
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = selfCopy[1];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __32__SAThread_insertState_atIndex___block_invoke;
    v44[3] = &unk_1E86F70B8;
    v10 = v7;
    v45 = v10;
    v11 = v8;
    v46 = v11;
    [v9 enumerateObjectsAtIndexes:v6 options:0 usingBlock:v44];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __32__SAThread_insertState_atIndex___block_invoke_2;
    v43[3] = &unk_1E86F7108;
    v43[4] = selfCopy;
    v43[5] = stateCopy;
    v12 = MEMORY[0x1E12EBE50](v43);
    (v12)[2](v12, v10);
    dispatchQueue = [v4 dispatchQueue];
    if (dispatchQueue)
    {
      v14 = [(SARecipeState *)SADispatchQueueState stateWithThread:selfCopy threadStateIndex:stateCopy];
      v15 = (dispatchQueue + 24);
      v16 = *(dispatchQueue + 24);
      if (v16)
      {
        v15 = 0;
      }

      v40 = v15;
      v41 = v14;
      [*(dispatchQueue + 8) addObject:v14];
      [*(dispatchQueue + 8) sortUsingComparator:&__block_literal_global_6];
      if ((v16 & 1) == 0)
      {
        v33 = v12;
        v34 = v11;
        v35 = v10;
        v36 = v4;
        v37 = selfCopy;
        v38 = stateCopy;
        v39 = v6;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v32 = dispatchQueue;
        obj = *(dispatchQueue + 8);
        v17 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v48;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v48 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v47 + 1) + 8 * i);
              thread = [0 thread];
              thread2 = [v21 thread];
              v24 = thread2;
              if (thread == thread2)
              {
              }

              else
              {
                threadState = [0 threadState];
                endTimestamp = [threadState endTimestamp];
                threadState2 = [v21 threadState];
                startTimestamp = [threadState2 startTimestamp];
                v29 = [endTimestamp ge:startTimestamp];

                if (v29)
                {
                  *v40 = 1;
                  goto LABEL_17;
                }
              }
            }

            v18 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
          }

          while (v18);
        }

LABEL_17:

        stateCopy = v38;
        v6 = v39;
        v4 = v36;
        selfCopy = v37;
        v11 = v34;
        v10 = v35;
        dispatchQueue = v32;
        v12 = v33;
      }
    }

    (v12)[2](v12, v11);
    swiftTask = [v4 swiftTask];
    if (swiftTask)
    {
      v31 = [(SARecipeState *)SASwiftTaskState stateWithThread:selfCopy threadStateIndex:stateCopy];
      [swiftTask[1] addObject:v31];
      [swiftTask[1] sortUsingComparator:&__block_literal_global_6];
    }
  }
}

void __32__SAThread_insertState_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 dispatchQueue];
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  v4 = [a2 swiftTask];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }
}

void __32__SAThread_insertState_atIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) states];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __32__SAThread_insertState_atIndex___block_invoke_3;
        v10[3] = &unk_1E86F70E0;
        v9 = *(a1 + 40);
        v10[4] = *(a1 + 32);
        v10[5] = v9;
        [v8 enumerateObjectsWithOptions:2 usingBlock:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void __32__SAThread_insertState_atIndex___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 thread];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    if ([a2 threadStateIndex] >= *(a1 + 40))
    {
      v9 = [a2 threadStateIndex];
      if (a2)
      {
        a2[2] = v9 + 1;
      }
    }

    else
    {
      *a4 = 1;
    }
  }
}

- (id)patchedStackForTruncatedStack:(id)stack
{
  stackCopy = stack;
  v59 = *MEMORY[0x1E69E9840];
  v6 = [stack objectAtIndexedSubscript:0];
  isTruncatedBacktraceFrame = [v6 isTruncatedBacktraceFrame];

  if ((isTruncatedBacktraceFrame & 1) == 0)
  {
    v41 = *__error();
    v42 = _sa_logt();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v3 = [stackCopy objectAtIndexedSubscript:0];
      v43 = [v3 debugDescription];
      *buf = 136315138;
      uTF8String = [v43 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v42, OS_LOG_TYPE_ERROR, "%s is not a truncated frame", buf, 0xCu);
    }

    *__error() = v41;
    v44 = [stackCopy objectAtIndexedSubscript:0];
    v45 = [v44 debugDescription];
    _SASetCrashLogMessage(470, "%s is not a truncated frame", [v45 UTF8String]);

    _os_crash();
    __break(1u);
LABEL_48:
    v46 = *__error();
    v47 = _sa_logt();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      uTF8String = v3;
      v55 = 2048;
      v56 = 0x7FFFFFFFFFFFFFFFLL;
      _os_log_error_impl(&dword_1E0E2F000, v47, OS_LOG_TYPE_ERROR, "best match length is %lu, but index is %lu", buf, 0x16u);
    }

    *__error() = v46;
    _SASetCrashLogMessage(532, "best match length is %lu, but index is %lu", v3, 0x7FFFFFFFFFFFFFFFLL);
    _os_crash();
    __break(1u);
  }

  if (!self->_resampledLeafUserFrame)
  {
    v28 = stackCopy;
    goto LABEL_42;
  }

  v52 = [stackCopy count];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  v9 = self->_resampledLeafUserFrame;
  if (v9)
  {
    v10 = v9;
    do
    {
      [v8 insertObject:v10 atIndex:0];
      parentFrame = v10->_parentFrame;
      v12 = parentFrame;

      v10 = v12;
    }

    while (parentFrame);
  }

  v49 = [v8 count];
  if (!v49)
  {
    goto LABEL_29;
  }

  v3 = 0;
  v13 = 0;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v50 = v14;
    v51 = v3;
    if (v52 < 2)
    {
      v16 = 0;
    }

    else
    {
      v15 = 0;
      while (1)
      {
        v16 = v15 + 1;
        v17 = stackCopy;
        v18 = [stackCopy objectAtIndexedSubscript:v15 + 1];
        address = [v18 address];
        v20 = v8;
        v21 = [v8 objectAtIndexedSubscript:v13 + v15];
        address2 = [v21 address];

        if (address != address2)
        {
          break;
        }

        if (v16 >= v49 - v13)
        {
          goto LABEL_16;
        }

        v23 = v15 + 2;
        ++v15;
        stackCopy = v17;
        v8 = v20;
        if (v23 >= v52)
        {
          goto LABEL_17;
        }
      }

      v16 = v15;
LABEL_16:
      stackCopy = v17;
      v8 = v20;
    }

LABEL_17:
    v14 = v50;
    v3 = v51;
    if (v16)
    {
      v24 = v16 >= v51;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      v3 = v16;
      v14 = v13;
    }

    ++v13;
  }

  while (v13 != v49);
  if (!v3)
  {
LABEL_29:
    if ([stackCopy count] >= 3)
    {
      v27 = [stackCopy objectAtIndexedSubscript:2];
      if ([v27 isKernel])
      {
      }

      else
      {
        if ([stackCopy count] == 3)
        {
        }

        else
        {
          v29 = [stackCopy objectAtIndexedSubscript:3];
          isKernel = [v29 isKernel];

          if ((isKernel & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        v31 = [stackCopy objectAtIndexedSubscript:2];
        address3 = [v31 address];
        lastObject = [v8 lastObject];
        address4 = [lastObject address];

        if (address3 == address4)
        {
          v14 = v49 - 1;
          v3 = 1;
          goto LABEL_27;
        }
      }
    }

LABEL_38:
    v35 = *__error();
    v36 = _sa_logt();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v38 = [(SAThread *)selfCopy debugDescription];
      v39 = [v8 debugDescription];
      v40 = [stackCopy debugDescription];
      *buf = 138412802;
      uTF8String = v38;
      v55 = 2112;
      v56 = v39;
      v57 = 2112;
      v58 = v40;
      _os_log_debug_impl(&dword_1E0E2F000, v36, OS_LOG_TYPE_DEBUG, "%@ no matching frames in resampled stack:%@\nvs\n%@", buf, 0x20u);
    }

    *__error() = v35;
    goto LABEL_41;
  }

LABEL_27:
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_48;
  }

  [v8 removeObjectsInRange:{v14, v49 - v14}];
  v26 = [stackCopy subarrayWithRange:{1, v52 - 1}];
  [v8 addObjectsFromArray:v26];

  stackCopy = v8;
LABEL_41:
  v28 = stackCopy;

LABEL_42:

  return v28;
}

- (NSString)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Thread 0x%llx", self->_threadId];

  return v2;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v34 = *MEMORY[0x1E69E9840];
  if ([(SAThread *)self sizeInBytesForSerializedVersion]!= length)
  {
    v5 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [(SAThread *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v16 UTF8String];
      v32 = 2048;
      *v33 = [(SAThread *)self sizeInBytesForSerializedVersion];
      *&v33[8] = 2048;
      *&v33[10] = length;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v5;
    v17 = [(SAThread *)self debugDescription];
    _SASetCrashLogMessage(4071, "%s: size %lu != buffer length %lu", [v17 UTF8String], -[SAThread sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  *&buffer->var0 = 769;
  *(&buffer->var1 + 1) = self->_threadId;
  v10 = BYTE6(buffer->var4) & 0xFE | self->_isGlobalForcedIdle;
  BYTE6(buffer->var4) = v10;
  BYTE6(buffer->var4) = v10 & 0xFD | (2 * self->_isMainThread);
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_creationTimestamp, dictionary);
  *(&buffer->var3 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_exitTimestamp, dictionary);
  if ([(NSMutableArray *)self->_threadStates count]>= 0xFFFFFFFF)
  {
LABEL_8:
    v18 = *__error();
    v19 = _sa_logt();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [(SAThread *)self debugDescription];
      uTF8String2 = [v20 UTF8String];
      v22 = [(NSMutableArray *)self->_threadStates count];
      *buf = 136315394;
      uTF8String = uTF8String2;
      v32 = 2048;
      *v33 = v22;
      _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "%s has %lu states", buf, 0x16u);
    }

    *__error() = v18;
    buffer = [(SAThread *)self debugDescription];
    _SASetCrashLogMessage(4085, "%s has %lu states", [($6806D93BA7D51FFB199EB98EFF121020 *)buffer UTF8String], [(NSMutableArray *)self->_threadStates count]);

    _os_crash();
    __break(1u);
LABEL_11:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [(SAThread *)self debugDescription];
      uTF8String3 = [v25 UTF8String];
      v27 = *(&buffer->var4 + 2);
      sizeInBytesForSerializedVersion = [(SAThread *)self sizeInBytesForSerializedVersion];
      *buf = 136315906;
      uTF8String = uTF8String3;
      v32 = 1024;
      *v33 = v27;
      *&v33[4] = 2048;
      *&v33[6] = v5;
      *&v33[14] = 2048;
      *&v33[16] = sizeInBytesForSerializedVersion;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "%s: after serializing (with %u threadStates), ended with length %ld, should be %lu", buf, 0x26u);
    }

    *__error() = v23;
    v29 = [(SAThread *)self debugDescription];
    _SASetCrashLogMessage(4092, "%s: after serializing (with %u threadStates), ended with length %ld, should be %lu", [v29 UTF8String], *(&buffer->var4 + 2), v5, -[SAThread sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"));

    _os_crash();
    __break(1u);
  }

  v11 = [(NSMutableArray *)self->_threadStates count];
  *(&buffer->var4 + 2) = v11;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var5, v11, self->_threadStates, dictionary);
  v12 = *(&buffer->var4 + 2);
  v5 = 8 * v12 + 48;
  if (v5 != [(SAThread *)self sizeInBytesForSerializedVersion])
  {
    goto LABEL_11;
  }

  v13 = &buffer->var5 + 2 * v12;
  *v13 = SASerializableIndexForPointerFromSerializationDictionary(self->_resampledLeafUserFrame, dictionary);
  *(v13 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_resampledleafOfCRootFramesReplacedBySwiftAsync, dictionary);
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v17 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(SATimestamp *)self->_creationTimestamp addSelfToSerializationDictionary:dictionary];
    [(SATimestamp *)self->_exitTimestamp addSelfToSerializationDictionary:dictionary];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_threadStates;
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

    [(SAFrame *)self->_resampledLeafUserFrame addSelfToSerializationDictionary:dictionary];
    [(SAFrame *)self->_resampledleafOfCRootFramesReplacedBySwiftAsync addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v16 = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_11;
  }

  if (length <= 0x1F)
  {
    v7 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v14 = 2048;
      v15 = 32;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread struct %lu", buf, 0x16u);
    }

    *__error() = v7;
    _SASetCrashLogMessage(4121, "bufferLength %lu < serialized SAThread struct %lu", length, 32);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 26) + 32 > length)
  {
LABEL_8:
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(bufferCopy + 26);
      *buf = 134218240;
      lengthCopy2 = length;
      v14 = 1024;
      LODWORD(v15) = v10;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread struct with %u thread states", buf, 0x12u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(4122, "bufferLength %lu < serialized SAThread struct with %u thread states", length, *(bufferCopy + 26));
    _os_crash();
    __break(1u);
LABEL_11:
    v11 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAThread version" userInfo:0];
    objc_exception_throw(v11);
  }

  result = [SAThread threadWithId:?];
  *(result + 16) = *(bufferCopy + 30) & 1;
  *(result + 17) = (*(bufferCopy + 30) & 2) != 0;
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v49 = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_24;
  }

  if (length <= 0x1F)
  {
    v34 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy4 = length;
      v47 = 2048;
      v48 = 32;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread struct %lu", buf, 0x16u);
    }

    *__error() = v34;
    _SASetCrashLogMessage(4136, "bufferLength %lu < serialized SAThread struct %lu", length, 32);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 26) + 32 > length)
  {
LABEL_15:
    v35 = *__error();
    v36 = _sa_logt();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = *(bufferCopy + 26);
      *buf = 134218240;
      lengthCopy4 = length;
      v47 = 1024;
      LODWORD(v48) = v37;
      _os_log_error_impl(&dword_1E0E2F000, v36, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread struct with %u thread states", buf, 0x12u);
    }

    *__error() = v35;
    _SASetCrashLogMessage(4137, "bufferLength %lu < serialized SAThread struct with %u thread states", length, *(bufferCopy + 26));
    _os_crash();
    __break(1u);
LABEL_18:
    v38 = *__error();
    v39 = _sa_logt();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = *(bufferCopy + 26);
      *buf = 134218240;
      lengthCopy4 = length;
      v47 = 1024;
      LODWORD(v48) = v40;
      _os_log_error_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread v2 struct with %u thread states", buf, 0x12u);
    }

    *__error() = v38;
    _SASetCrashLogMessage(4147, "bufferLength %lu < serialized SAThread v2 struct with %u thread states", length, *(bufferCopy + 26));
    _os_crash();
    __break(1u);
LABEL_21:
    v41 = *__error();
    v42 = _sa_logt();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = *(bufferCopy + 26);
      *buf = 134218240;
      lengthCopy4 = length;
      v47 = 1024;
      LODWORD(v48) = v43;
      _os_log_error_impl(&dword_1E0E2F000, v42, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread v3 struct with %u thread states", buf, 0x12u);
    }

    *__error() = v41;
    _SASetCrashLogMessage(4153, "bufferLength %lu < serialized SAThread v3 struct with %u thread states", length, *(bufferCopy + 26));
    _os_crash();
    __break(1u);
LABEL_24:
    v44 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAThread version" userInfo:0];
    objc_exception_throw(v44);
  }

  v11 = *(buffer + 10);
  v12 = objc_opt_class();
  v13 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12, 0);
  creationTimestamp = self->_creationTimestamp;
  self->_creationTimestamp = v13;

  v15 = *(bufferCopy + 18);
  v16 = objc_opt_class();
  v17 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16, 0);
  exitTimestamp = self->_exitTimestamp;
  self->_exitTimestamp = v17;

  v19 = bufferCopy + 32;
  v20 = *(bufferCopy + 26);
  v21 = objc_opt_class();
  v22 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 32, v20, dictionary, bufferDictionary, v21);
  threadStates = self->_threadStates;
  self->_threadStates = v22;

  if (*(bufferCopy + 1) < 2u)
  {
    return;
  }

  v24 = *(bufferCopy + 26);
  if (8 * v24 + 40 > length)
  {
    goto LABEL_18;
  }

  v25 = *(v19 + 8 * v24);
  v26 = objc_opt_class();
  v27 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v25, dictionary, bufferDictionary, v26, 0);
  resampledLeafUserFrame = self->_resampledLeafUserFrame;
  self->_resampledLeafUserFrame = v27;

  if (*(bufferCopy + 1) < 3u)
  {
    return;
  }

  v29 = *(bufferCopy + 26);
  if (8 * v29 + 48 > length)
  {
    goto LABEL_21;
  }

  v30 = *(v19 + 8 * v29 + 8);
  v31 = objc_opt_class();
  v32 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v30, dictionary, bufferDictionary, v31, 0);
  resampledleafOfCRootFramesReplacedBySwiftAsync = self->_resampledleafOfCRootFramesReplacedBySwiftAsync;
  self->_resampledleafOfCRootFramesReplacedBySwiftAsync = v32;
}

@end