@interface _MTL4CommandQueue
- (MTLCommandQueue)mlCommandQueue;
- (_MTL4CommandQueue)initWithDescriptor:(id)descriptor device:(id)device;
- (_MTL4CommandQueue)initWithDevice:(id)device;
- (id)preCommit:(const void *)commit count:(unint64_t)count options:(id)options;
- (unsigned)preCommit:(const void *)commit count:(unint64_t)count error:(id *)error;
- (void)dealloc;
@end

@implementation _MTL4CommandQueue

- (_MTL4CommandQueue)initWithDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = _MTL4CommandQueue;
  v4 = [(_MTLObjectWithLabel *)&v7 init];
  if (v4)
  {
    v4->_backgroundTrackingPID = getpid();
    v4->_device = device;
    v4->_mlCommandQueueLock._os_unfair_lock_opaque = 0;
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4->_submissionQueue = dispatch_queue_create("com.Metal4.SubmissionQueue", v5);
    [(MTLDevice *)v4->_device _incrementCommandQueueCount];
    [(MTLDevice *)v4->_device _incrementAcquireCount];
  }

  return v4;
}

- (_MTL4CommandQueue)initWithDescriptor:(id)descriptor device:(id)device
{
  v9.receiver = self;
  v9.super_class = _MTL4CommandQueue;
  v6 = [(_MTLObjectWithLabel *)&v9 init];
  if (v6)
  {
    v6->_device = device;
    v6->_mlCommandQueueLock._os_unfair_lock_opaque = 0;
    if ([descriptor label])
    {
      -[_MTLObjectWithLabel setLabel:](v6, "setLabel:", [descriptor label]);
    }

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v6->_submissionQueue = dispatch_queue_create("com.Metal4.SubmissionQueue", v7);
    [(MTLDevice *)v6->_device _incrementCommandQueueCount];
    [(MTLDevice *)v6->_device _incrementAcquireCount];
  }

  return v6;
}

- (void)dealloc
{
  self->_mlCommandQueue = 0;
  submissionQueue = self->_submissionQueue;
  if (submissionQueue)
  {
    dispatch_release(submissionQueue);
  }

  self->_submissionQueue = 0;
  [(MTLDevice *)self->_device _decrementCommandQueueCount];
  [(MTLDevice *)self->_device _decrementAcquireCount];

  self->_device = 0;
  v4.receiver = self;
  v4.super_class = _MTL4CommandQueue;
  [(_MTLObjectWithLabel *)&v4 dealloc];
}

- (MTLCommandQueue)mlCommandQueue
{
  os_unfair_lock_lock(&self->_mlCommandQueueLock);
  mlCommandQueue = self->_mlCommandQueue;
  if (!mlCommandQueue)
  {
    v4 = objc_opt_new();
    [v4 setEnableLowLatencySignalSharedEvent:1];
    [v4 setEnableLowLatencyWaitSharedEvent:1];
    [v4 setDisableIOFencing:1];
    [v4 setDisableCrossQueueHazardTracking:1];
    self->_mlCommandQueue = [(MTLDevice *)[(_MTL4CommandQueue *)self device] newCommandQueueWithDescriptor:v4];

    mlCommandQueue = self->_mlCommandQueue;
  }

  os_unfair_lock_unlock(&self->_mlCommandQueueLock);
  return mlCommandQueue;
}

- (unsigned)preCommit:(const void *)commit count:(unint64_t)count error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  if (count)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      mlCommandEncoders = [commit[v9] mlCommandEncoders];
      if ([mlCommandEncoders count])
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v12 = [mlCommandEncoders countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v18;
          do
          {
            v15 = 0;
            do
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(mlCommandEncoders);
              }

              [*(*(&v17 + 1) + 8 * v15++) encodeToCommandQueue:self];
            }

            while (v13 != v15);
            v13 = [mlCommandEncoders countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v13);
        }
      }

      v9 = ++v10;
    }

    while (v10 < count);
  }

  objc_autoreleasePoolPop(v8);
  return 0;
}

- (id)preCommit:(const void *)commit count:(unint64_t)count options:(id)options
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = objc_autoreleasePoolPush();
  v10 = v9;
  if (count)
  {
    optionsCopy = options;
    v26 = v9;
    v11 = 0;
    v27 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = commit[v11];
      mlCommandEncoders = [v14 mlCommandEncoders];
      if ([mlCommandEncoders count])
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v16 = [mlCommandEncoders countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v30;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(mlCommandEncoders);
              }

              [*(*(&v29 + 1) + 8 * i) encodeToCommandQueue:self];
            }

            v17 = [mlCommandEncoders countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v17);
        }
      }

      if ([v14 logState])
      {
        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v20 = objc_alloc_init(_MTL4CommandBufferRetainData);
        -[_MTL4CommandBufferRetainData setPrivateData:](v20, "setPrivateData:", [v14 privateData]);
        -[_MTL4CommandBufferRetainData setLogState:](v20, "setLogState:", [v14 logState]);
        -[_MTL4CommandBufferRetainData setPrivateDataOffset:](v20, "setPrivateDataOffset:", [v14 privateDataOffset]);
        [v12 addObject:v20];

        v27 = 1;
      }

      v11 = ++v13;
    }

    while (v13 < count);
    v21 = commit[count - 1];
    options = optionsCopy;
    v10 = v26;
    LOBYTE(count) = v27;
  }

  else
  {
    v12 = 0;
    v21 = 0;
  }

  self->_lastCommittedCommandBuffer = v21;
  self->_lastCommittedCommandBufferGeneration = [(MTL4CommandBuffer *)v21 currentGeneration];
  if (count)
  {
    v22 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __45___MTL4CommandQueue_preCommit_count_options___block_invoke;
    v28[3] = &unk_1E6EEA858;
    v28[4] = v12;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    if (!options)
    {
      goto LABEL_22;
    }
  }

  v23 = [[_MTL4CommitFeedback alloc] initWithQueue:self commitOptions:options internalCompletionHandler:v22];
  if (!v23)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [_MTL4CommandQueue preCommit:count:options:];
    }

    abort();
  }

LABEL_22:
  objc_autoreleasePoolPop(v10);
  return v23;
}

- (void)preCommit:count:options:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = 136315138;
  v1 = "[_MTL4CommandQueue preCommit:count:options:]";
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s Failed to allocate Commit Feedback object", &v0, 0xCu);
}

@end