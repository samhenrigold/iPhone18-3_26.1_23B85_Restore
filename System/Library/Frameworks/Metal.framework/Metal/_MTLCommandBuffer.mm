@interface _MTLCommandBuffer
+ (void)initialize;
- (BOOL)commitAndWaitUntilSubmitted;
- (BOOL)commitAndWaitUntilSubmittedWithDeadline:(unint64_t)deadline;
- (NSArray)logs;
- (NSDictionary)profilingResults;
- (NSError)error;
- (NSMutableDictionary)userDictionary;
- (_MTLCommandBuffer)initWithQueue:(id)queue retainedReferences:(BOOL)references synchronousDebugMode:(BOOL)mode;
- (id)accelerationStructureCommandEncoder;
- (id)accelerationStructureCommandEncoderWithDescriptor:(id)descriptor;
- (id)computeCommandEncoderWithDescriptor:(id)descriptor;
- (id)formattedDescription:(unint64_t)description;
- (id)progressTrackingBlitCommandEncoder;
- (id)progressTrackingComputeCommandEncoder;
- (id)progressTrackingRenderCommandEncoder;
- (unint64_t)getAndIncrementNumEncoders;
- (void)__waitUntilCompletedAsync:(id)async;
- (void)__waitUntilScheduledAsync:(id)async;
- (void)_addRetainedObject:(id)object;
- (void)addCompletedHandler:(id)handler;
- (void)addScheduledHandler:(id)handler;
- (void)addSynchronizationNotification:(id)notification;
- (void)commit;
- (void)commitAndReset;
- (void)configWithCommandBufferDescriptor:(id)descriptor;
- (void)dealloc;
- (void)debugBufferContentsWithLength:(unint64_t *)length;
- (void)didCompleteWithStartTime:(unint64_t)time endTime:(unint64_t)endTime error:(id)error;
- (void)didScheduleWithStartTime:(unint64_t)time endTime:(unint64_t)endTime error:(id)error;
- (void)enqueue;
- (void)executeSynchronizationNotifications:(int)notifications;
- (void)executeSynchronizationNotifications:(int)notifications scope:(unint64_t)scope resources:(const void *)resources count:(unint64_t)count;
- (void)initProgressTracking;
- (void)presentDrawable:(id)drawable;
- (void)presentDrawable:(id)drawable afterMinimumDuration:(double)duration;
- (void)presentDrawable:(id)drawable atTime:(double)time;
- (void)presentDrawable:(id)drawable options:(id)options;
- (void)processEncoderInfos;
- (void)pushDebugGroup:(id)group;
- (void)setLogs:(id)logs;
- (void)signalCommandBufferAvailable;
- (void)waitUntilCompleted;
- (void)waitUntilScheduled;
@end

@implementation _MTLCommandBuffer

- (void)enqueue
{
  if (!self->_status || [(_MTLCommandBuffer *)&self->_status enqueue:a2])
  {
    if (self->_profilingEnabled)
    {
      self->_enqueueTime = mach_absolute_time();
    }

    [(MTLCommandQueue *)self->_queue enqueueCommandBuffer:self];
    self->_status = 1;
  }
}

- (void)dealloc
{
  if (MEMORY[0x1EEE88930] && !self->_didComplete)
  {
    FPCommandBufferCompleted();
  }

  error = self->_error;
  if (error)
  {

    self->_error = 0;
  }

  pthread_cond_destroy(&self->_completedCond);
  pthread_cond_destroy(&self->_scheduledCond);
  pthread_mutex_lock(&self->_mutex);
  MTLDispatchListApply(self->_swiftConcurrencyScheduledWaiters);
  self->_swiftConcurrencyScheduledWaitersTail = 0;
  self->_swiftConcurrencyScheduledWaiters = 0;
  MTLDispatchListApply(self->_swiftConcurrencyCompletedWaiters);
  self->_swiftConcurrencyCompletedWaitersTail = 0;
  self->_swiftConcurrencyCompletedWaiters = 0;
  pthread_mutex_unlock(&self->_mutex);
  pthread_mutex_destroy(&self->_mutex);
  scheduledDispatchList = self->_scheduledDispatchList;
  if (scheduledDispatchList)
  {
    MTLDispatchListApply(scheduledDispatchList);
    self->_scheduledDispatchList = 0;
    self->_scheduledDispatchListTail = 0;
  }

  completedDispatchList = self->_completedDispatchList;
  if (completedDispatchList)
  {
    MTLDispatchListApply(completedDispatchList);
    self->_completedDispatchList = 0;
    self->_completedDispatchListTail = 0;
  }

  [(_MTLCommandBuffer *)self executeSynchronizationNotifications:3];
  if (!self->_status)
  {
    [(_MTLCommandBuffer *)self signalCommandBufferAvailable];
  }

  if (self->_progressBuffer)
  {
    v6 = *([(MTLCommandQueue *)self->_queue device]+ 320);
    objc_sync_enter(v6);
    [*(-[MTLCommandQueue device](self->_queue "device") + 320)];
    objc_sync_exit(v6);

    self->_progressBuffer = 0;
  }

  self->_encoderInfos = 0;
  if (self->_privateData)
  {
    [(MTLCommandQueue *)self->_queue releasePrivateData:&self->_privateData privateDataOffset:self->_privateDataOffset];
  }

  perfSampleHandlerBlock = self->_perfSampleHandlerBlock;
  if (perfSampleHandlerBlock)
  {
    _Block_release(perfSampleHandlerBlock);
  }

  self->_retainedObjects = 0;
  v8.receiver = self;
  v8.super_class = _MTLCommandBuffer;
  [(_MTLObjectWithLabel *)&v8 dealloc];
}

- (BOOL)commitAndWaitUntilSubmitted
{
  self->_wakeOnCommit = 0;
  [(_MTLCommandBuffer *)self commit];
  queue = self->_queue;

  return [(MTLCommandQueue *)queue submitCommandBuffer:self];
}

- (void)commit
{
  if (self->_status >= 2)
  {
    [(_MTLCommandBuffer *)self commit:a2];
  }

  if (self->_currentCommandEncoder)
  {
    [(_MTLCommandBuffer *)self commit:a2];
  }

  [(MTLCommandQueue *)self->_queue setPrivateData:self->_privateData privateDataOffset:self->_privateDataOffset logState:self->_logState];
  [(_MTLCommandBuffer *)self executeSynchronizationNotifications:2];
  if (!self->_status)
  {
    [(MTLCommandQueue *)self->_queue enqueueCommandBuffer:self];
    self->_status = 1;
  }

  if (self->_profilingEnabled)
  {
    self->_commitTime = mach_absolute_time();
  }

  if (MEMORY[0x1EEE88928])
  {
    FPCommandBufferCommitted();
  }

  queue = self->_queue;
  wakeOnCommit = self->_wakeOnCommit;

  [(MTLCommandQueue *)queue commitCommandBuffer:self wake:wakeOnCommit];
}

- (void)signalCommandBufferAvailable
{
  if (self->_needsCommandBufferSemaphoreSignal)
  {
    self->_needsCommandBufferSemaphoreSignal = 0;
    dispatch_semaphore_signal(*(self->_queue + 26));
  }
}

- (NSError)error
{
  v2 = self->_error;

  return v2;
}

- (void)waitUntilScheduled
{
  pthread_mutex_lock(&self->_mutex);
  while (!self->_scheduledCallbacksDone)
  {
    pthread_cond_wait(&self->_scheduledCond, &self->_mutex);
  }

  pthread_mutex_unlock(&self->_mutex);
}

+ (void)initialize
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v2) = info.numer;
    LODWORD(v3) = info.denom;
    *&time_scale = v2 / v3 * 0.000000001;
  }
}

- (NSMutableDictionary)userDictionary
{
  result = self->_userDictionary;
  if (!result)
  {
    result = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_userDictionary = result;
  }

  return result;
}

- (void)waitUntilCompleted
{
  pthread_mutex_lock(&self->_mutex);
  while (!self->_completedCallbacksDone)
  {
    pthread_cond_wait(&self->_completedCond, &self->_mutex);
  }

  pthread_mutex_unlock(&self->_mutex);
}

- (_MTLCommandBuffer)initWithQueue:(id)queue retainedReferences:(BOOL)references synchronousDebugMode:(BOOL)mode
{
  if (queue)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(_MTLCommandBuffer *)isKindOfClass initWithQueue:v13 retainedReferences:v14 synchronousDebugMode:v15, v16, v17, v18, v19, v26.receiver];
    }

    v26.receiver = self;
    v26.super_class = _MTLCommandBuffer;
    v20 = [(_MTLObjectWithLabel *)&v26 init];
    v21 = v20;
    if (v20)
    {
      v20->_error = 0;
      v20->_queue = queue;
      v21->_needsCommandBufferSemaphoreSignal = 1;
      dispatch_semaphore_wait(*(v21->_queue + 26), 0xFFFFFFFFFFFFFFFFLL);
      *&v21->_mutex.__sig = _mutex_init;
      *&v21->_mutex.__opaque[8] = *algn_185DE4350;
      *&v21->_mutex.__opaque[24] = xmmword_185DE4360;
      *&v21->_mutex.__opaque[40] = unk_185DE4370;
      *&v21->_completedCond.__sig = _cond_init;
      *&v21->_completedCond.__opaque[8] = *algn_185DE4390;
      *&v21->_completedCond.__opaque[24] = xmmword_185DE43A0;
      *&v21->_scheduledCond.__sig = _cond_init;
      *&v21->_scheduledCond.__opaque[8] = *algn_185DE4390;
      *&v21->_scheduledCond.__opaque[24] = xmmword_185DE43A0;
      v21->_retainedReferences = references;
      v21->_synchronousDebugMode = mode;
      v21->_logs = 0;
      v21->_privateData = 0;
      v21->_privateDataOffset = 0;
      v21->_privateLoggingBuffer = 0;
      v22 = *(v21->_queue + 31);
      v21->_logState = v22;
      if (v22)
      {
        [(MTLCommandQueue *)v21->_queue getPrivateDataAndOffset:&v21->_privateData privateDataOffset:&v21->_privateDataOffset];
        v21->_requiresBindingLogState = 1;
      }

      if (*(v21->_queue + 240) == 1)
      {
        v21->_profilingEnabled = 1;
      }

      v23 = mach_absolute_time();
      if (v21->_profilingEnabled)
      {
        v21->_creationTime = v23;
      }

      v21->_skipRender = *(v21->_queue + 346);
      v21->_wakeOnCommit = 1;
      v21->_hasPresent = 0;
      v21->_numThisCommandBuffer = [(MTLCommandQueue *)v21->_queue getAndIncrementNumCommandBuffers];
      v24 = *(v21->_queue + 256);
      v21->_StatEnabled = v24;
      if (v24 == 1)
      {
        v21->_perfSampleHandlerBlock = _Block_copy(*(v21->_queue + 36));
        v21->_numEncoders = 0;
        v21->_listIndex = [(MTLCommandQueue *)v21->_queue getListIndex];
      }

      v21->_errorOptions = [-[MTLCommandQueue device](v21->_queue "device")];
      v21->_progressBuffer = 0;
      v21->_progressOffset = 0;
      v21->_creatingProgressEncoder = 0;
      v21->_needsFrameworkAssistedErrorTracking = [-[MTLCommandQueue device](v21->_queue "device")] == 0;
      v21->_deadlineProfile = 0;
      if (MEMORY[0x1EEE88938])
      {
        FPCommandBufferCreated();
      }
    }
  }

  else
  {
    [(_MTLCommandBuffer *)self initWithQueue:a2 retainedReferences:0 synchronousDebugMode:references, mode, v5, v6, v7];
    return 0;
  }

  return v21;
}

- (void)initProgressTracking
{
  if (!self->_encoderInfos)
  {
    self->_encoderInfos = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (!self->_progressBuffer && self->_needsFrameworkAssistedErrorTracking)
  {
    [-[MTLCommandQueue device](self->_queue "device")];
    v3 = *([(MTLCommandQueue *)self->_queue device]+ 320);
    objc_sync_enter(v3);
    v4 = [*(-[MTLCommandQueue device](self->_queue "device") + 320)];
    self->_progressBuffer = v4;
    if (v4)
    {
      [*(-[MTLCommandQueue device](self->_queue "device") + 320)];
    }

    objc_sync_exit(v3);
    if (!self->_progressBuffer)
    {
      self->_progressBuffer = [-[MTLCommandQueue device](self->_queue "device")];
    }
  }
}

- (id)progressTrackingBlitCommandEncoder
{
  self->_creatingProgressEncoder = 1;
  result = [(_MTLCommandBuffer *)self blitCommandEncoder];
  self->_creatingProgressEncoder = 0;
  return result;
}

- (id)progressTrackingRenderCommandEncoder
{
  self->_creatingProgressEncoder = 1;
  v3 = objc_opt_new();
  v4 = [(_MTLCommandBuffer *)self renderCommandEncoderWithDescriptor:v3];

  self->_creatingProgressEncoder = 0;
  return v4;
}

- (id)progressTrackingComputeCommandEncoder
{
  self->_creatingProgressEncoder = 1;
  result = [(_MTLCommandBuffer *)self computeCommandEncoder];
  self->_creatingProgressEncoder = 0;
  return result;
}

- (void)processEncoderInfos
{
  if (self->_encoderInfos)
  {
    if (self->_needsFrameworkAssistedErrorTracking)
    {
      if (self->_progressOffset)
      {
        v3 = 0;
        do
        {
          v4 = [(NSMutableArray *)self->_encoderInfos objectAtIndexedSubscript:v3 >> 1];
          [v4 setErrorState:3];
          v5 = *([(MTLBuffer *)self->_progressBuffer contents]+ 4 * v3);
          contents = [(MTLBuffer *)self->_progressBuffer contents];
          if (v5 == -1)
          {
            v7 = *(contents + 4 * (v3 + 1));
            [v4 setErrorState:2];
            if (v7 == -1)
            {
              [v4 setErrorState:1];
            }
          }

          v3 += 2;
        }

        while (v3 < self->_progressOffset);
      }
    }

    else
    {

      [(_MTLCommandBuffer *)self getDriverEncoderInfoData:?];
    }
  }
}

- (id)formattedDescription:(unint64_t)description
{
  v15[12] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  retainedLabel = [(_MTLObjectWithLabel *)self retainedLabel];
  v7 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = _MTLCommandBuffer;
  v8 = [(_MTLCommandBuffer *)&v14 description];
  v15[0] = v5;
  v15[1] = @"label =";
  v9 = @"<none>";
  if (retainedLabel)
  {
    v9 = retainedLabel;
  }

  v15[2] = v9;
  v15[3] = v5;
  v15[4] = @"device =";
  v10 = [-[_MTLCommandBuffer device](self "device")];
  v11 = @"<null>";
  if (!v10)
  {
    v10 = @"<null>";
  }

  v15[5] = v10;
  v15[6] = v5;
  v15[7] = @"commandQueue =";
  if (self->_queue)
  {
    v11 = [(MTLCommandQueue *)self->_queue formattedDescription:description + 4];
  }

  v15[8] = v11;
  v15[9] = v5;
  v15[10] = @"retainedReferences =";
  v15[11] = [MEMORY[0x1E696AD98] numberWithBool:self->_retainedReferences];
  v12 = [v7 stringWithFormat:@"%@%@", v8, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 12), "componentsJoinedByString:", @" "];

  return v12;
}

- (void)commitAndReset
{
  currentCommandEncoder = self->_currentCommandEncoder;
  self->_currentCommandEncoder = 0;
  scheduledDispatchList = self->_scheduledDispatchList;
  v20 = currentCommandEncoder;
  self->_scheduledDispatchList = 0;
  self->_scheduledDispatchListTail = 0;
  completedDispatchList = self->_completedDispatchList;
  self->_completedDispatchList = 0;
  v18 = completedDispatchList;
  self->_completedDispatchListTail = 0;
  swiftConcurrencyScheduledWaitersTail = self->_swiftConcurrencyScheduledWaitersTail;
  swiftConcurrencyScheduledWaiters = self->_swiftConcurrencyScheduledWaiters;
  self->_swiftConcurrencyScheduledWaiters = 0;
  self->_swiftConcurrencyScheduledWaitersTail = 0;
  swiftConcurrencyCompletedWaitersTail = self->_swiftConcurrencyCompletedWaitersTail;
  swiftConcurrencyCompletedWaiters = self->_swiftConcurrencyCompletedWaiters;
  self->_swiftConcurrencyCompletedWaiters = 0;
  self->_swiftConcurrencyCompletedWaitersTail = 0;
  [(_MTLCommandBuffer *)self commit];
  [(_MTLCommandBuffer *)self waitUntilCompleted];
  status = self->_status;
  self->_status = 0;
  self->_error = 0;
  self->_scheduledCallbacksDone = 0;
  self->_completedCallbacksDone = 0;
  v5 = mach_absolute_time();
  if (self->_profilingEnabled)
  {
    self->_creationTime = v5;
  }

  if (MEMORY[0x1EEE88930] && !self->_didComplete)
  {
    v5 = FPCommandBufferCompleted();
  }

  self->_didComplete = 0;
  if (MEMORY[0x1EEE88938])
  {
    v5 = FPCommandBufferCreated();
  }

  self->_currentCommandEncoder = v20;
  self->_scheduledDispatchList = scheduledDispatchList;
  self->_scheduledDispatchListTail = scheduledDispatchList;
  self->_completedDispatchList = v18;
  self->_completedDispatchListTail = v18;
  self->_swiftConcurrencyScheduledWaiters = swiftConcurrencyScheduledWaiters;
  self->_swiftConcurrencyScheduledWaitersTail = swiftConcurrencyScheduledWaitersTail;
  self->_swiftConcurrencyCompletedWaiters = swiftConcurrencyCompletedWaiters;
  self->_swiftConcurrencyCompletedWaitersTail = swiftConcurrencyCompletedWaitersTail;
  if (status != 4)
  {
    [(_MTLCommandBuffer *)v5 commitAndReset:v6];
  }
}

- (void)addScheduledHandler:(id)handler
{
  if (self->_status >= 2)
  {
    [(_MTLCommandBuffer *)self addScheduledHandler:a2, handler, v3, v4, v5, v6, v7, v10];
  }

  MTLDispatchListAppendBlock(&self->_scheduledDispatchList, &self->_scheduledDispatchListTail, handler);
}

- (void)presentDrawable:(id)drawable options:(id)options
{
  if (drawable)
  {
    if (MTLFailureTypeGetEnabled(1uLL))
    {
      [(_MTLCommandBuffer *)drawable presentDrawable:v11 options:v12, v13, v14, v15, v16, v17, v29];
    }

    v18 = objc_opt_respondsToSelector();
    if ((v18 & 1) == 0)
    {
      [(_MTLCommandBuffer *)v18 presentDrawable:v19 options:v20, v21, v22, v23, v24, v25, v29];
    }
  }

  else
  {
    [(_MTLCommandBuffer *)self presentDrawable:a2 options:0, options, v4, v5, v6, v7, v29];
  }

  if (!options)
  {
    [(_MTLCommandBuffer *)v18 presentDrawable:v19 options:v20, v21, v22, v23, v24, v25, v29];
  }

  v26 = [options copy];
  v27 = [v26 objectForKeyedSubscript:@"enableFIFO"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v27 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __45___MTLCommandBuffer_presentDrawable_options___block_invoke;
  v31[3] = &unk_1E6EED3E0;
  v31[4] = drawable;
  v31[5] = v26;
  v32 = bOOLValue;
  v31[6] = self;
  [(_MTLCommandBuffer *)self addScheduledHandler:v31];
  self->_hasPresent = 1;
  if ((bOOLValue & 1) == 0)
  {
    ++self->_numPresentWaits;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __45___MTLCommandBuffer_presentDrawable_options___block_invoke_2;
    v30[3] = &unk_1E6EED408;
    v30[4] = self;
    [drawable addPresentScheduledHandler:v30];
  }
}

- (void)presentDrawable:(id)drawable
{
  v23[3] = *MEMORY[0x1E69E9840];
  v5 = _MTLShouldRemapPresent(drawable);
  if (v5)
  {
    v22[0] = @"enableFIFO";
    v22[1] = @"presentationMode";
    v23[0] = MEMORY[0x1E695E118];
    v23[1] = &unk_1EF4CFD80;
    v22[2] = @"presentTimeInterval";
    v23[2] = &unk_1EF4CFDF8;
    -[_MTLCommandBuffer presentDrawable:options:](self, "presentDrawable:options:", drawable, [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3]);
  }

  else
  {
    if (drawable)
    {
      if (MTLFailureTypeGetEnabled(1uLL))
      {
        [(_MTLCommandBuffer *)drawable presentDrawable:v13, v14, v15, v16, v17, v18, v19, v20[0]];
      }
    }

    else
    {
      [(_MTLCommandBuffer *)v5 presentDrawable:v6, v7, v8, v9, v10, v11, v12, v20[0]];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __37___MTLCommandBuffer_presentDrawable___block_invoke;
    v21[3] = &unk_1E6EEB9C0;
    v21[4] = drawable;
    v21[5] = self;
    [(_MTLCommandBuffer *)self addScheduledHandler:v21];
    self->_hasPresent = 1;
    ++self->_numPresentWaits;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __37___MTLCommandBuffer_presentDrawable___block_invoke_2;
    v20[3] = &unk_1E6EED408;
    v20[4] = self;
    [drawable addPresentScheduledHandler:v20];
  }
}

- (void)presentDrawable:(id)drawable atTime:(double)time
{
  v26[3] = *MEMORY[0x1E69E9840];
  v7 = _MTLShouldRemapPresent(drawable);
  if (v7)
  {
    v25[0] = @"enableFIFO";
    v25[1] = @"presentationMode";
    v26[0] = MEMORY[0x1E695E118];
    v26[1] = &unk_1EF4CFD98;
    v25[2] = @"presentTimeInterval";
    v26[2] = [MEMORY[0x1E696AD98] numberWithDouble:time];
    -[_MTLCommandBuffer presentDrawable:options:](self, "presentDrawable:options:", drawable, [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3]);
  }

  else
  {
    if (drawable)
    {
      if (MTLFailureTypeGetEnabled(1uLL))
      {
        [(_MTLCommandBuffer *)drawable presentDrawable:v15 atTime:v16, v17, v18, v19, v20, v21, v22];
      }
    }

    else
    {
      [(_MTLCommandBuffer *)v7 presentDrawable:v8 atTime:v9, v10, v11, v12, v13, v14, v22];
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __44___MTLCommandBuffer_presentDrawable_atTime___block_invoke;
    v24[3] = &unk_1E6EED430;
    *&v24[6] = time;
    v24[4] = drawable;
    v24[5] = self;
    [(_MTLCommandBuffer *)self addScheduledHandler:v24];
    self->_hasPresent = 1;
    ++self->_numPresentWaits;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __44___MTLCommandBuffer_presentDrawable_atTime___block_invoke_2;
    v23[3] = &unk_1E6EED408;
    v23[4] = self;
    [drawable addPresentScheduledHandler:v23];
  }
}

- (void)presentDrawable:(id)drawable afterMinimumDuration:(double)duration
{
  v26[3] = *MEMORY[0x1E69E9840];
  v7 = _MTLShouldRemapPresent(drawable);
  if (v7)
  {
    v25[0] = @"enableFIFO";
    v25[1] = @"presentationMode";
    v26[0] = MEMORY[0x1E695E118];
    v26[1] = &unk_1EF4CFDB0;
    v25[2] = @"presentTimeInterval";
    v26[2] = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    -[_MTLCommandBuffer presentDrawable:options:](self, "presentDrawable:options:", drawable, [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3]);
  }

  else
  {
    if (drawable)
    {
      if (MTLFailureTypeGetEnabled(1uLL))
      {
        [(_MTLCommandBuffer *)drawable presentDrawable:v15 afterMinimumDuration:v16, v17, v18, v19, v20, v21, v22];
      }
    }

    else
    {
      [(_MTLCommandBuffer *)v7 presentDrawable:v8 afterMinimumDuration:v9, v10, v11, v12, v13, v14, v22];
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __58___MTLCommandBuffer_presentDrawable_afterMinimumDuration___block_invoke;
    v24[3] = &unk_1E6EED430;
    *&v24[6] = duration;
    v24[4] = drawable;
    v24[5] = self;
    [(_MTLCommandBuffer *)self addScheduledHandler:v24];
    self->_hasPresent = 1;
    ++self->_numPresentWaits;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __58___MTLCommandBuffer_presentDrawable_afterMinimumDuration___block_invoke_2;
    v23[3] = &unk_1E6EED408;
    v23[4] = self;
    [drawable addPresentScheduledHandler:v23];
  }
}

- (void)__waitUntilScheduledAsync:(id)async
{
  pthread_mutex_lock(&self->_mutex);
  if (self->_scheduledCallbacksDone)
  {
    pthread_mutex_unlock(&self->_mutex);
    v5 = *(async + 2);

    v5(async, self);
  }

  else
  {
    MTLDispatchListAppendBlock(&self->_swiftConcurrencyScheduledWaiters, &self->_swiftConcurrencyScheduledWaitersTail, async);

    pthread_mutex_unlock(&self->_mutex);
  }
}

- (void)addCompletedHandler:(id)handler
{
  if (self->_status >= 2)
  {
    [(_MTLCommandBuffer *)self addCompletedHandler:a2, handler, v3, v4, v5, v6, v7, v10];
  }

  MTLDispatchListAppendBlock(&self->_completedDispatchList, &self->_completedDispatchListTail, handler);
}

- (void)__waitUntilCompletedAsync:(id)async
{
  pthread_mutex_lock(&self->_mutex);
  if (self->_completedCallbacksDone)
  {
    pthread_mutex_unlock(&self->_mutex);
    v5 = *(async + 2);

    v5(async, self);
  }

  else
  {
    MTLDispatchListAppendBlock(&self->_swiftConcurrencyCompletedWaiters, &self->_swiftConcurrencyCompletedWaitersTail, async);

    pthread_mutex_unlock(&self->_mutex);
  }
}

- (void)didScheduleWithStartTime:(unint64_t)time endTime:(unint64_t)endTime error:(id)error
{
  [(_MTLCommandBuffer *)self didSchedule:time error:error];
  self->_kernelStartTime = time;
  self->_kernelEndTime = endTime;
  if (error)
  {
    self->_error = error;
    __dmb(0xBu);
    self->_status = 5;
    localizedDescription = [(NSError *)self->_error localizedDescription];
    MTLReportFailure(4uLL, "[_MTLCommandBuffer didScheduleWithStartTime:endTime:error:]", 1070, @"Execution of the command buffer was aborted due to an error during execution. %@", v10, v11, v12, v13, localizedDescription);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [_MTLCommandBuffer didScheduleWithStartTime:? endTime:? error:?];
    }
  }

  else
  {
    self->_status = 3;
  }

  if (MEMORY[0x1EEE88940])
  {
    FPCommandBufferScheduled();
  }

  if (self->_scheduledDispatchList)
  {
    if (MTLTraceEnabled())
    {
      kdebug_trace();
    }

    MTLDispatchListApply(self->_scheduledDispatchList);
    if (MTLTraceEnabled())
    {
      kdebug_trace();
    }

    self->_scheduledDispatchList = 0;
    self->_scheduledDispatchListTail = 0;
  }

  pthread_mutex_lock(&self->_mutex);
  self->_scheduledCallbacksDone = 1;
  pthread_cond_broadcast(&self->_scheduledCond);
  MTLDispatchListApply(self->_swiftConcurrencyScheduledWaiters);
  self->_swiftConcurrencyScheduledWaitersTail = 0;
  self->_swiftConcurrencyScheduledWaiters = 0;
  pthread_mutex_unlock(&self->_mutex);
}

- (void)didCompleteWithStartTime:(unint64_t)time endTime:(unint64_t)endTime error:(id)error
{
  if (self->_profilingEnabled)
  {
    self->_completionHandlerExecutionTime = mach_absolute_time();
  }

  self->_gpuStartTime = time;
  self->_gpuEndTime = endTime;
  if (!self->_error)
  {
    if (error)
    {
      if (self->_errorOptions)
      {
        [(_MTLCommandBuffer *)self processEncoderInfos];
        v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(error, "userInfo")}];
        [v9 setObject:self->_encoderInfos forKeyedSubscript:@"MTLCommandBufferEncoderInfoErrorKey"];
        errorCopy = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:objc_msgSend(error code:"domain") userInfo:{objc_msgSend(error, "code"), v9}];
      }

      else
      {
        errorCopy = error;
      }

      self->_error = errorCopy;
      __dmb(0xBu);
      self->_status = 5;
      localizedDescription = [(NSError *)self->_error localizedDescription];
      MTLReportFailure(4uLL, "[_MTLCommandBuffer didCompleteWithStartTime:endTime:error:]", 1210, @"Execution of the command buffer was aborted due to an error during execution. %@", v12, v13, v14, v15, localizedDescription);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [_MTLCommandBuffer didScheduleWithStartTime:? endTime:? error:?];
      }
    }

    else
    {
      self->_status = 4;
    }
  }

  if (self->_StatEnabled)
  {
    [(_MTLCommandBuffer *)self runPerfCounterCallbackWithBlock:self->_perfSampleHandlerBlock];
  }

  logState = self->_logState;
  if (logState)
  {
    [(MTLLogState *)logState decodeLog];
  }

  if (self->_privateData)
  {
    [(MTLCommandQueue *)self->_queue releasePrivateData:&self->_privateData privateDataOffset:self->_privateDataOffset];
  }

  if (MEMORY[0x1EEE88930])
  {
    FPCommandBufferCompleted();
    self->_didComplete = 1;
  }

  if (self->_completedDispatchList)
  {
    if (MTLTraceEnabled())
    {
      kdebug_trace();
    }

    MTLDispatchListApply(self->_completedDispatchList);
    if (MTLTraceEnabled())
    {
      kdebug_trace();
    }

    self->_completedDispatchList = 0;
    self->_completedDispatchListTail = 0;
  }

  retainedObjects = self->_retainedObjects;
  if (retainedObjects)
  {

    self->_retainedObjects = 0;
  }

  [(_MTLCommandBuffer *)self signalCommandBufferAvailable];
  pthread_mutex_lock(&self->_mutex);
  self->_completedCallbacksDone = 1;
  pthread_cond_broadcast(&self->_completedCond);
  MTLDispatchListApply(self->_swiftConcurrencyCompletedWaiters);
  self->_swiftConcurrencyCompletedWaitersTail = 0;
  self->_swiftConcurrencyCompletedWaiters = 0;
  pthread_mutex_unlock(&self->_mutex);
}

- (void)_addRetainedObject:(id)object
{
  retainedObjects = self->_retainedObjects;
  if (!retainedObjects)
  {
    retainedObjects = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_retainedObjects = retainedObjects;
  }

  [(NSMutableArray *)retainedObjects addObject:object];
}

- (NSDictionary)profilingResults
{
  v6[10] = *MEMORY[0x1E69E9840];
  if (!self->_profilingEnabled)
  {
    return 0;
  }

  v5[0] = @"MTLCommandBufferCreationTime";
  v6[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_creationTime];
  v5[1] = @"MTLCommandBufferEnqueueTime";
  v6[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_enqueueTime];
  v5[2] = @"MTLCommandBufferCommitTime";
  v6[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_commitTime];
  v5[3] = @"MTLCommandBufferSubmitToKernelTime";
  v6[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_submitToKernelTime];
  v5[4] = @"MTLCommandBufferKernelScheduledTime";
  v6[4] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kernelEndTime];
  v5[5] = @"MTLCommandBufferSubmitToHWTime";
  v6[5] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_submitToHardwareTime];
  v5[6] = @"MTLCommandBufferCompletionInterruptTime";
  v6[6] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_completionInterruptTime];
  v5[7] = @"MTLCommandBufferKernelCompleteTime";
  v6[7] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_gpuEndTime];
  v5[8] = @"MTLCommandBufferCompletionHandlerEnqueueTime";
  v6[8] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_completionHandlerEnqueueTime];
  v5[9] = @"MTLCommandBufferCompletionHandlerExecutionTime";
  v6[9] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_completionHandlerExecutionTime];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:10];
  self->_profilingResults = v3;
  return v3;
}

- (unint64_t)getAndIncrementNumEncoders
{
  numEncoders = self->_numEncoders;
  self->_numEncoders = numEncoders + 1;
  return numEncoders;
}

- (void)pushDebugGroup:(id)group
{
  if (group)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(_MTLCommandBuffer *)isKindOfClass pushDebugGroup:v9, v10, v11, v12, v13, v14, v15, v16];
    }
  }

  else
  {
    [(_MTLCommandBuffer *)self pushDebugGroup:a2, 0, v3, v4, v5, v6, v7, v16];
  }
}

- (void)addSynchronizationNotification:(id)notification
{
  v5 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
  v6 = _Block_copy(notification);
  v5->var0 = 0;
  v5->var1 = v6;
  p_syncDispatchListTail = &self->_syncDispatchListTail;
  syncDispatchListTail = self->_syncDispatchListTail;
  if (syncDispatchListTail)
  {
    syncDispatchListTail->var0 = v5;
  }

  else
  {
    *p_syncDispatchListTail = v5;
    p_syncDispatchListTail = &self->_syncDispatchList;
  }

  *p_syncDispatchListTail = v5;
}

- (void)executeSynchronizationNotifications:(int)notifications
{
  memset(v3, 0, sizeof(v3));
  LODWORD(v3[0]) = notifications;
  if (self->_syncDispatchList)
  {
    _doMTLSyncDispatch(self, &self->_syncDispatchList, &self->_syncDispatchListTail, v3);
  }
}

- (void)executeSynchronizationNotifications:(int)notifications scope:(unint64_t)scope resources:(const void *)resources count:(unint64_t)count
{
  v6[1] = scope;
  v6[0] = notifications;
  v6[2] = resources;
  v6[3] = count;
  if (self->_syncDispatchList)
  {
    _doMTLSyncDispatch(self, &self->_syncDispatchList, &self->_syncDispatchListTail, v6);
  }
}

- (id)computeCommandEncoderWithDescriptor:(id)descriptor
{
  dispatchType = [descriptor dispatchType];

  return [(_MTLCommandBuffer *)self computeCommandEncoderWithDispatchType:dispatchType];
}

- (void)debugBufferContentsWithLength:(unint64_t *)length
{
  if (length)
  {
    *length = 0;
  }

  return 0;
}

- (id)accelerationStructureCommandEncoder
{
  if ([-[_MTLCommandBuffer device](self "device")])
  {
    v4 = [[_MTLSWRaytracingAccelerationStructureCommandEncoder alloc] initWithCommandBuffer:self];

    return v4;
  }

  else
  {
    [(_MTLCommandBuffer *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)accelerationStructureCommandEncoderWithDescriptor:(id)descriptor
{
  if ([-[_MTLCommandBuffer device](self "device")])
  {
    v6 = [[_MTLSWRaytracingAccelerationStructureCommandEncoder alloc] initWithCommandBuffer:self descriptor:descriptor];

    return v6;
  }

  else
  {
    [(_MTLCommandBuffer *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (BOOL)commitAndWaitUntilSubmittedWithDeadline:(unint64_t)deadline
{
  self->_wakeOnCommit = 0;
  [(_MTLCommandBuffer *)self commitWithDeadline:deadline];
  queue = self->_queue;

  return [(MTLCommandQueue *)queue submitCommandBuffer:self];
}

- (NSArray)logs
{
  if (self->_logs)
  {
    return self->_logs;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)setLogs:(id)logs
{
  logsCopy = logs;

  self->_logs = logs;
}

- (void)configWithCommandBufferDescriptor:(id)descriptor
{
  if ([descriptor logState])
  {
    logState = self->_logState;
    if (!logState)
    {
      [(MTLCommandQueue *)self->_queue getPrivateDataAndOffset:&self->_privateData privateDataOffset:&self->_privateDataOffset];
      logState = self->_logState;
    }

    logState = [descriptor logState];
    self->_logState = logState;
    self->_requiresBindingLogState = logState != 0;
  }
}

- (void)initWithQueue:(uint64_t)a3 retainedReferences:(uint64_t)a4 synchronousDebugMode:(uint64_t)a5 .cold.2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MTLReportFailure(0, "[_MTLCommandBuffer initWithQueue:retainedReferences:synchronousDebugMode:]", 323, @"queue must not be nil.", a5, a6, a7, a8, v8);
}

- (void)presentDrawable:(uint64_t)a3 options:(uint64_t)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:{&unk_1EF5055B8, a4, a5, a6, a7, a8}] & 1) == 0)
  {

    MTLReportFailure(1uLL, "[_MTLCommandBuffer presentDrawable:options:]", 849, @"drawable is not a MTLDrawableSPI.", v9, v10, v11, v12, a9);
  }
}

- (void)presentDrawable:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:{&unk_1EF5037F0, a4, a5, a6, a7, a8}] & 1) == 0)
  {

    MTLReportFailure(1uLL, "[_MTLCommandBuffer presentDrawable:]", 899, @"drawable is not a MTLDrawable.", v9, v10, v11, v12, a9);
  }
}

- (void)presentDrawable:(uint64_t)a3 atTime:(uint64_t)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:{&unk_1EF5037F0, a4, a5, a6, a7, a8}] & 1) == 0)
  {

    MTLReportFailure(1uLL, "[_MTLCommandBuffer presentDrawable:atTime:]", 932, @"drawable is not a MTLDrawable.", v9, v10, v11, v12, a9);
  }
}

- (void)presentDrawable:(uint64_t)a3 afterMinimumDuration:(uint64_t)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:{&unk_1EF5037F0, a4, a5, a6, a7, a8}] & 1) == 0)
  {

    MTLReportFailure(1uLL, "[_MTLCommandBuffer presentDrawable:afterMinimumDuration:]", 968, @"drawable is not a MTLDrawable.", v9, v10, v11, v12, a9);
  }
}

- (void)didScheduleWithStartTime:(id *)a1 endTime:error:.cold.1(id *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = [objc_msgSend(*a1 "localizedDescription")];
  v2 = 136446210;
  v3 = v1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Execution of the command buffer was aborted due to an error during execution. %{public}s", &v2, 0xCu);
}

@end