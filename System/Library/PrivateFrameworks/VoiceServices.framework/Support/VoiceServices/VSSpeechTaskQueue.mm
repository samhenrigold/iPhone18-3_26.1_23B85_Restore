@interface VSSpeechTaskQueue
+ (id)mainDeviceQueue;
+ (id)parallelQueueWithIdentifier:(id)identifier;
+ (void)cancelTasksWithDelegate:(id)delegate;
- (VSSpeechTaskQueue)init;
- (_opaque_pthread_mutex_t)threadMutex;
- (_opaque_pthread_mutexattr_t)threadMutexAttr;
- (id)taskWithCreatedTimeStamp:(unint64_t)stamp;
- (id)tasksWithDelegate:(id)delegate;
- (unint64_t)createdTimestampWithTask:(id)task;
- (void)addTask:(id)task;
- (void)cancelTask:(id)task;
- (void)resumeCurrentTask;
- (void)setThreadMutex:(_opaque_pthread_mutex_t *)mutex;
- (void)spinNextTask;
- (void)suspendCurrentTask;
@end

@implementation VSSpeechTaskQueue

- (_opaque_pthread_mutexattr_t)threadMutexAttr
{
  v2 = *self->_threadMutexAttr.__opaque;
  sig = self->_threadMutexAttr.__sig;
  *result.__opaque = v2;
  result.__sig = sig;
  return result;
}

- (void)setThreadMutex:(_opaque_pthread_mutex_t *)mutex
{
  v3 = *&mutex->__sig;
  v4 = *&mutex->__opaque[8];
  v5 = *&mutex->__opaque[24];
  *&self->_threadMutex.__opaque[40] = *&mutex->__opaque[40];
  *&self->_threadMutex.__opaque[24] = v5;
  *&self->_threadMutex.__opaque[8] = v4;
  *&self->_threadMutex.__sig = v3;
}

- (_opaque_pthread_mutex_t)threadMutex
{
  v3 = *&self[1].__opaque[16];
  *&retstr->__sig = *self[1].__opaque;
  *&retstr->__opaque[8] = v3;
  v4 = *&self[1].__opaque[48];
  *&retstr->__opaque[24] = *&self[1].__opaque[32];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)resumeCurrentTask
{
  pthread_mutex_lock(&self->_threadMutex);
  [(VSSpeechTaskProtocol *)self->_currentTask resume];

  pthread_mutex_unlock(&self->_threadMutex);
}

- (void)suspendCurrentTask
{
  pthread_mutex_lock(&self->_threadMutex);
  [(VSSpeechTaskProtocol *)self->_currentTask suspend];

  pthread_mutex_unlock(&self->_threadMutex);
}

- (void)cancelTask:(id)task
{
  taskCopy = task;
  pthread_mutex_lock(&self->_threadMutex);
  [taskCopy cancel];

  pthread_mutex_unlock(&self->_threadMutex);
}

- (id)tasksWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  pthread_mutex_lock(&self->_threadMutex);
  array = [MEMORY[0x277CBEB18] array];
  currentTask = [(VSSpeechTaskQueue *)self currentTask];
  delegate = [currentTask delegate];

  if (delegate == delegateCopy)
  {
    currentTask2 = [(VSSpeechTaskQueue *)self currentTask];
    [array addObject:?];
  }

  speakTasks = [(VSSpeechTaskQueue *)self speakTasks];
  v10 = [speakTasks countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      for (i = 0; i != v11; i = (i + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(speakTasks);
        }

        delegate2 = [*(8 * i) delegate];

        if (delegate2 == delegateCopy)
        {
          [array addObject:?];
        }
      }

      v11 = [speakTasks countByEnumeratingWithState:? objects:? count:?];
    }

    while (v11);
  }

  eagerTasks = [(VSSpeechTaskQueue *)self eagerTasks];
  v16 = [eagerTasks countByEnumeratingWithState:? objects:? count:?];
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0];
    do
    {
      for (j = 0; j != v17; j = (j + 1))
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(eagerTasks);
        }

        delegate3 = [*(8 * j) delegate];

        if (delegate3 == delegateCopy)
        {
          [array addObject:?];
        }
      }

      v17 = [eagerTasks countByEnumeratingWithState:? objects:? count:?];
    }

    while (v17);
  }

  pthread_mutex_unlock(&self->_threadMutex);

  return array;
}

- (id)taskWithCreatedTimeStamp:(unint64_t)stamp
{
  pthread_mutex_lock(&self->_threadMutex);
  currentTask = [(VSSpeechTaskQueue *)self currentTask];
  v6 = [(VSSpeechTaskQueue *)self createdTimestampWithTask:?];

  if (v6 == stamp)
  {
    pthread_mutex_unlock(&self->_threadMutex);
    currentTask2 = [(VSSpeechTaskQueue *)self currentTask];
    goto LABEL_21;
  }

  speakTasks = [(VSSpeechTaskQueue *)self speakTasks];
  v9 = [speakTasks countByEnumeratingWithState:? objects:? count:?];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0];
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (MEMORY[0] != v11)
      {
        objc_enumerationMutation(speakTasks);
      }

      v13 = *(8 * v12);
      if ([(VSSpeechTaskQueue *)self createdTimestampWithTask:?]== stamp)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [speakTasks countByEnumeratingWithState:? objects:? count:?];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    speakTasks = [(VSSpeechTaskQueue *)self eagerTasks];
    v14 = [speakTasks countByEnumeratingWithState:? objects:? count:?];
    if (!v14)
    {
LABEL_19:

      pthread_mutex_unlock(&self->_threadMutex);
      currentTask2 = 0;
      goto LABEL_21;
    }

    v15 = v14;
    v16 = MEMORY[0];
LABEL_13:
    v17 = 0;
    while (1)
    {
      if (MEMORY[0] != v16)
      {
        objc_enumerationMutation(speakTasks);
      }

      v13 = *(8 * v17);
      if ([(VSSpeechTaskQueue *)self createdTimestampWithTask:?]== stamp)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [speakTasks countByEnumeratingWithState:? objects:? count:?];
        if (v15)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }
  }

  pthread_mutex_unlock(&self->_threadMutex);
  currentTask2 = v13;

LABEL_21:

  return currentTask2;
}

- (unint64_t)createdTimestampWithTask:(id)task
{
  taskCopy = task;
  v4 = taskCopy;
  if (taskCopy && [taskCopy conformsToProtocol:?] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    request = [v4 request];
    requestCreatedTimestamp = [request requestCreatedTimestamp];
  }

  else
  {
    requestCreatedTimestamp = 0;
  }

  return requestCreatedTimestamp;
}

- (void)spinNextTask
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEBUG, "Start spinNextTask", buf, 2u);
  }

  if ([(NSMutableArray *)self->_speakTasks count])
  {
    firstObject = [(NSMutableArray *)self->_speakTasks firstObject];
    p_currentTask = &self->_currentTask;
    currentTask = self->_currentTask;
    if (currentTask)
    {
      if (![(VSSpeechTaskProtocol *)currentTask conformsToProtocol:?]|| ![(VSSpeechTaskProtocol *)*p_currentTask isSpeaking])
      {
        v27 = *p_currentTask;
        if (-[VSSpeechTaskProtocol conformsToProtocol:](v27, "conformsToProtocol:") && -[VSSpeechTaskProtocol readyForEagerTask](v27, "readyForEagerTask") && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (-[VSSpeechTaskProtocol request](v27, "request"), v28 = objc_claimAutoreleasedReturnValue(), [firstObject request], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "isSimilarTo:"), v29, v28, (v30 & 1) != 0))
        {
          [(VSSpeechTaskProtocol *)v27 setSpeakTask:?];
          [(NSMutableArray *)self->_speakTasks removeObjectAtIndex:?];
          if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
          {
            instrumentMetrics = [firstObject instrumentMetrics];
            [instrumentMetrics requestCreatedTimestamp];
            instrumentMetrics2 = [(VSSpeechTaskProtocol *)v27 instrumentMetrics];
            [instrumentMetrics2 requestCreatedTimestamp];
            instrumentMetrics3 = [firstObject instrumentMetrics];
            [instrumentMetrics3 setEagerRequestCreatedTimestampDiffs:?];

            instrumentMetrics4 = [firstObject instrumentMetrics];
            [instrumentMetrics4 eagerRequestCreatedTimestampDiffs];
            instrumentMetrics5 = [(VSSpeechTaskProtocol *)v27 instrumentMetrics];
            [instrumentMetrics5 setEagerRequestCreatedTimestampDiffs:?];
          }

          v36 = VSGetLogDefault();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            instrumentMetrics6 = [firstObject instrumentMetrics];
            requestCreatedTimestamp = [instrumentMetrics6 requestCreatedTimestamp];
            instrumentMetrics7 = [(VSSpeechTaskProtocol *)v27 instrumentMetrics];
            requestCreatedTimestamp2 = [instrumentMetrics7 requestCreatedTimestamp];
            *buf = 134218240;
            v84 = requestCreatedTimestamp;
            v85 = 2048;
            v86 = requestCreatedTimestamp2;
            _os_log_impl(&dword_2727E4000, v36, OS_LOG_TYPE_INFO, "Speak task %llu is attached to eager task %llu", buf, 0x16u);
          }

          lastSynthesisRequest = self->_lastSynthesisRequest;
          self->_lastSynthesisRequest = 0;
        }

        else
        {
          v42 = VSGetLogDefault();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            instrumentMetrics8 = [firstObject instrumentMetrics];
            requestCreatedTimestamp3 = [instrumentMetrics8 requestCreatedTimestamp];
            instrumentMetrics9 = [(VSSpeechTaskProtocol *)v27 instrumentMetrics];
            requestCreatedTimestamp4 = [instrumentMetrics9 requestCreatedTimestamp];
            *buf = 134218240;
            v84 = requestCreatedTimestamp3;
            v85 = 2048;
            v86 = requestCreatedTimestamp4;
            _os_log_impl(&dword_2727E4000, v42, OS_LOG_TYPE_INFO, "%llu interrupt task %llu", buf, 0x16u);
          }

          [(VSSpeechTaskProtocol *)v27 cancel];
        }

        goto LABEL_50;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      request = [firstObject request];
      v9 = request;
      if (isKindOfClass)
      {
        enqueue = [request enqueue];

        if (enqueue)
        {
          v11 = VSGetLogDefault();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            instrumentMetrics10 = [firstObject instrumentMetrics];
            requestCreatedTimestamp5 = [instrumentMetrics10 requestCreatedTimestamp];
            instrumentMetrics11 = [(VSSpeechTaskProtocol *)*p_currentTask instrumentMetrics];
            requestCreatedTimestamp6 = [instrumentMetrics11 requestCreatedTimestamp];
            *buf = 134218240;
            v84 = requestCreatedTimestamp5;
            v85 = 2048;
            v86 = requestCreatedTimestamp6;
            v16 = "PresynthesisTask %llu requested to wait another speaking task %llu";
            v17 = v11;
            v18 = OS_LOG_TYPE_INFO;
LABEL_57:
            _os_log_impl(&dword_2727E4000, v17, v18, v16, buf, 0x16u);

            goto LABEL_58;
          }

          goto LABEL_58;
        }
      }

      else
      {
        shouldWaitCurrentSpeaking = [request shouldWaitCurrentSpeaking];

        if ((shouldWaitCurrentSpeaking & 1) == 0)
        {
          v64 = VSGetLogDefault();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            instrumentMetrics12 = [firstObject instrumentMetrics];
            requestCreatedTimestamp7 = [instrumentMetrics12 requestCreatedTimestamp];
            instrumentMetrics13 = [(VSSpeechTaskProtocol *)*p_currentTask instrumentMetrics];
            requestCreatedTimestamp8 = [instrumentMetrics13 requestCreatedTimestamp];
            *buf = 134218240;
            v84 = requestCreatedTimestamp7;
            v85 = 2048;
            v86 = requestCreatedTimestamp8;
            _os_log_impl(&dword_2727E4000, v64, OS_LOG_TYPE_DEFAULT, "New speak task %llu interrupts speaking task %llu", buf, 0x16u);
          }

          [(VSSpeechTaskProtocol *)*p_currentTask cancel];
          goto LABEL_50;
        }
      }

      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        instrumentMetrics10 = [firstObject instrumentMetrics];
        requestCreatedTimestamp9 = [instrumentMetrics10 requestCreatedTimestamp];
        instrumentMetrics11 = [(VSSpeechTaskProtocol *)*p_currentTask instrumentMetrics];
        requestCreatedTimestamp10 = [instrumentMetrics11 requestCreatedTimestamp];
        *buf = 134218240;
        v84 = requestCreatedTimestamp9;
        v85 = 2048;
        v86 = requestCreatedTimestamp10;
        v16 = "New speak task %llu waits for speaking task %llu";
        v17 = v11;
        v18 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_57;
      }

LABEL_58:

      goto LABEL_50;
    }

    v47 = VSGetLogDefault();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      instrumentMetrics14 = [firstObject instrumentMetrics];
      requestCreatedTimestamp11 = [instrumentMetrics14 requestCreatedTimestamp];
      *buf = 134217984;
      v84 = requestCreatedTimestamp11;
      _os_log_debug_impl(&dword_2727E4000, v47, OS_LOG_TYPE_DEBUG, "Dispatch speaking task %llu", buf, 0xCu);
    }

    [(NSMutableArray *)self->_speakTasks removeObjectAtIndex:?];
    objc_storeStrong(&self->_currentTask, firstObject);
    v48 = self->_currentTask;
    objc_opt_class();
    if (![(VSSpeechTaskProtocol *)v48 isMemberOfClass:?])
    {
      goto LABEL_41;
    }

    v49 = *p_currentTask;
    standardInstance = [MEMORY[0x277D79998] standardInstance];
    if (([standardInstance disableCache] & 1) == 0)
    {
      request2 = [(VSSpeechTaskProtocol *)v49 request];
      v52 = [request2 isSimilarTo:?];

      if (!v52)
      {
LABEL_40:

LABEL_41:
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v54 = self->_eagerTasks;
        v55 = [NSMutableArray countByEnumeratingWithState:v54 objects:"countByEnumeratingWithState:objects:count:" count:?];
        if (v55)
        {
          v56 = v55;
          v57 = *v80;
          do
          {
            for (i = 0; i != v56; i = (i + 1))
            {
              if (*v80 != v57)
              {
                objc_enumerationMutation(v54);
              }

              [*(*(&v79 + 1) + 8 * i) cancel];
            }

            v56 = [NSMutableArray countByEnumeratingWithState:v54 objects:"countByEnumeratingWithState:objects:count:" count:?];
          }

          while (v56);
        }

        [(NSMutableArray *)self->_eagerTasks removeAllObjects];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __33__VSSpeechTaskQueue_spinNextTask__block_invoke;
        block[3] = &unk_279E4BC28;
        firstObject = firstObject;
        v77 = firstObject;
        selfCopy = self;
        v59 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, block);
        dispatch_async(self->_speakingQueue, v59);

        v26 = v77;
LABEL_49:

LABEL_50:
        goto LABEL_51;
      }

      standardInstance = [(VSSpeechTaskProtocol *)v49 instrumentMetrics];
      [standardInstance requestCreatedTimestamp];
      instrumentMetrics15 = [(VSSpeechTaskProtocol *)v49 instrumentMetrics];
      [instrumentMetrics15 setEagerRequestCreatedTimestampDiffs:?];
    }

    goto LABEL_40;
  }

  if ([(NSMutableArray *)self->_eagerTasks count]&& !self->_currentTask)
  {
    firstObject2 = [(NSMutableArray *)self->_eagerTasks firstObject];
    [(NSMutableArray *)self->_eagerTasks removeObjectAtIndex:?];
    v20 = VSGetLogDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      instrumentMetrics16 = [firstObject2 instrumentMetrics];
      requestCreatedTimestamp12 = [instrumentMetrics16 requestCreatedTimestamp];
      *buf = 134217984;
      v84 = requestCreatedTimestamp12;
      _os_log_debug_impl(&dword_2727E4000, v20, OS_LOG_TYPE_DEBUG, "Dispatch synthesis task %llu", buf, 0xCu);
    }

    objc_storeStrong(&self->_currentTask, firstObject2);
    if ([firstObject2 conformsToProtocol:?])
    {
      v21 = firstObject2;
      request3 = [v21 request];
      v23 = self->_lastSynthesisRequest;
      self->_lastSynthesisRequest = request3;

      instrumentMetrics17 = [v21 instrumentMetrics];

      self->_lastSynthesisRequestCreatedTimeStamp = [instrumentMetrics17 requestCreatedTimestamp];
    }

    speakingQueue = self->_speakingQueue;
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __33__VSSpeechTaskQueue_spinNextTask__block_invoke_84;
    v73[3] = &unk_279E4BC28;
    v74 = firstObject2;
    selfCopy2 = self;
    firstObject = firstObject2;
    dispatch_async(speakingQueue, v73);
    v26 = v74;
    goto LABEL_49;
  }

LABEL_51:
  v60 = VSGetLogDefault();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2727E4000, v60, OS_LOG_TYPE_DEBUG, "Finish spinNextTask", buf, 2u);
  }
}

uint64_t __33__VSSpeechTaskQueue_spinNextTask__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) instrumentMetrics];
    v5 = 134217984;
    v6 = [v3 requestCreatedTimestamp];
    _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_INFO, "Starting task %llu", &v5, 0xCu);
  }

  [*(a1 + 32) start];
  pthread_mutex_lock((*(a1 + 40) + 72));
  [*(a1 + 40) setCurrentTask:?];
  [*(a1 + 40) setLastSynthesisRequest:?];
  [*(a1 + 40) spinNextTask];
  return pthread_mutex_unlock((*(a1 + 40) + 72));
}

uint64_t __33__VSSpeechTaskQueue_spinNextTask__block_invoke_84(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = [*(a1 + 32) instrumentMetrics];
    v5 = 134217984;
    v6 = [v4 requestCreatedTimestamp];
    _os_log_debug_impl(&dword_2727E4000, v2, OS_LOG_TYPE_DEBUG, "Starting task %llu", &v5, 0xCu);
  }

  [*(a1 + 32) start];
  pthread_mutex_lock((*(a1 + 40) + 72));
  [*(a1 + 40) setCurrentTask:?];
  [*(a1 + 40) spinNextTask];
  return pthread_mutex_unlock((*(a1 + 40) + 72));
}

- (void)addTask:(id)task
{
  taskCopy = task;
  pthread_mutex_lock(&self->_threadMutex);
  if ([taskCopy conformsToProtocol:?] && (objc_msgSend(taskCopy, "isSpeaking") & 1) != 0)
  {
    v4 = 16;
  }

  else
  {
    v4 = 8;
  }

  [*(&self->super.isa + v4) addObject:?];
  [(VSSpeechTaskQueue *)self spinNextTask];
  pthread_mutex_unlock(&self->_threadMutex);
}

- (VSSpeechTaskQueue)init
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = VSSpeechTaskQueue;
  v2 = [(VSSpeechTaskQueue *)&v15 init];
  if (v2)
  {
    if ([MEMORY[0x277D799C0] isHomePod])
    {
      memset(&v16, 0, sizeof(v16));
      pthread_attr_init(&v16);
      v14 = 0;
      pthread_attr_getschedparam(&v16, &v14);
      v14.sched_priority = 46;
      pthread_attr_setschedpolicy(&v16, 2);
      pthread_attr_setschedparam(&v16, &v14);
      pthread_attr_setinheritsched(&v16, 2);
      v3 = dispatch_pthread_root_queue_create();
      v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v5 = dispatch_queue_create_with_target_V2("com.apple.voiced.speakingQueue", v4, v3);
      speakingQueue = v2->_speakingQueue;
      v2->_speakingQueue = v5;
    }

    else
    {
      v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v7 = dispatch_queue_create("com.apple.voiced.speakingQueue", v3);
      v8 = v2->_speakingQueue;
      v2->_speakingQueue = v7;
    }

    array = [MEMORY[0x277CBEB18] array];
    speakTasks = v2->_speakTasks;
    v2->_speakTasks = array;

    array2 = [MEMORY[0x277CBEB18] array];
    eagerTasks = v2->_eagerTasks;
    v2->_eagerTasks = array2;

    pthread_mutexattr_init(&v2->_threadMutexAttr);
    pthread_mutexattr_settype(&v2->_threadMutexAttr, 2);
    pthread_mutex_init(&v2->_threadMutex, &v2->_threadMutexAttr);
  }

  return v2;
}

+ (void)cancelTasksWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  mainDeviceQueue = [self mainDeviceQueue];
  v6 = [mainDeviceQueue tasksWithDelegate:?];

  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0];
    do
    {
      for (i = 0; i != v9; i = (i + 1))
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(v7);
        }

        mainDeviceQueue2 = [self mainDeviceQueue];
        [mainDeviceQueue2 cancelTask:?];
      }

      v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }

  if (VSSpeechTaskQueue_queueLock)
  {
    v25 = v7;
    [VSSpeechTaskQueue_queueLock lock];
    allValues = [VSSpeechTaskQueue_queueMap allValues];
    [VSSpeechTaskQueue_queueLock unlock];
    v14 = allValues;
    v15 = [v14 countByEnumeratingWithState:? objects:? count:?];
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0];
      do
      {
        for (j = 0; j != v16; j = (j + 1))
        {
          if (MEMORY[0] != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(8 * j);
          v20 = [v19 tasksWithDelegate:?];
          v21 = [v20 countByEnumeratingWithState:? objects:? count:?];
          if (v21)
          {
            v22 = v21;
            v23 = MEMORY[0];
            do
            {
              for (k = 0; k != v22; k = (k + 1))
              {
                if (MEMORY[0] != v23)
                {
                  objc_enumerationMutation(v20);
                }

                [v19 cancelTask:?];
              }

              v22 = [v20 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v22);
          }
        }

        v16 = [v14 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v16);
    }

    v7 = v25;
  }
}

+ (id)parallelQueueWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (parallelQueueWithIdentifier__onceToken != -1)
  {
    dispatch_once(&parallelQueueWithIdentifier__onceToken, &__block_literal_global_2);
  }

  [VSSpeechTaskQueue_queueLock lock];
  v4 = [VSSpeechTaskQueue_queueMap objectForKeyedSubscript:?];
  if (!v4)
  {
    v4 = objc_alloc_init(VSSpeechTaskQueue);
    [VSSpeechTaskQueue_queueMap setObject:? forKeyedSubscript:?];
  }

  [VSSpeechTaskQueue_queueLock unlock];

  return v4;
}

uint64_t __49__VSSpeechTaskQueue_parallelQueueWithIdentifier___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = VSSpeechTaskQueue_queueMap;
  VSSpeechTaskQueue_queueMap = v0;

  VSSpeechTaskQueue_queueLock = objc_alloc_init(MEMORY[0x277CCAAF8]);

  return MEMORY[0x2821F96F8]();
}

+ (id)mainDeviceQueue
{
  if (mainDeviceQueue_onceToken != -1)
  {
    dispatch_once(&mainDeviceQueue_onceToken, &__block_literal_global_3738);
  }

  v3 = mainDeviceQueue___sharedQueue;

  return v3;
}

uint64_t __36__VSSpeechTaskQueue_mainDeviceQueue__block_invoke()
{
  mainDeviceQueue___sharedQueue = objc_alloc_init(VSSpeechTaskQueue);

  return MEMORY[0x2821F96F8]();
}

@end