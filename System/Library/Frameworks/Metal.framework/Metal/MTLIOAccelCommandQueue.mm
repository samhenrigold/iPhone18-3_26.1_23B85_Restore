@interface MTLIOAccelCommandQueue
- (BOOL)_setGPUPriority:(unint64_t)priority backgroundPriority:(unint64_t)backgroundPriority;
- (BOOL)setBackgroundGPUPriority:(unint64_t)priority;
- (BOOL)setBackgroundGPUPriority:(unint64_t)priority offset:(unsigned __int16)offset;
- (BOOL)setGPUPriority:(unint64_t)priority;
- (BOOL)setGPUPriority:(unint64_t)priority offset:(unsigned __int16)offset;
- (MTLIOAccelCommandQueue)initWithDevice:(id)device descriptor:(id)descriptor;
- (void)dealloc;
- (void)setCompletionQueue:(id)queue;
- (void)setLabel:(id)label;
- (void)submitCommandBuffers:(const void *)buffers count:(unint64_t)count;
@end

@implementation MTLIOAccelCommandQueue

- (MTLIOAccelCommandQueue)initWithDevice:(id)device descriptor:(id)descriptor
{
  v8.receiver = self;
  v8.super_class = MTLIOAccelCommandQueue;
  v5 = [(_MTLCommandQueue *)&v8 initWithDevice:device descriptor:descriptor];
  if (v5)
  {
    v5->_device = device;
    [device sharedRef];
    v6 = IOAccelCommandQueueCreateWithQoS();
    v5->_commandQueue = v6;
    if (v6)
    {
      IOAccelCommandQueueSetDispatchQueue();
      v5->_priority = 1;
      v5->_backgroundPriority = 3;
      v5->super._globalTraceObjectID = IOAccelCommandQueueGetGlobalTraceObjectID();
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)setLabel:(id)label
{
  v5.receiver = self;
  v5.super_class = MTLIOAccelCommandQueue;
  [(_MTLCommandQueue *)&v5 setLabel:?];
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->_device deviceRef];
    [label cStringUsingEncoding:1];
    self->super._labelTraceID = IOAccelDeviceTraceObjectLabel();
  }
}

- (void)dealloc
{
  IOAccelCommandQueueRelease();

  v3.receiver = self;
  v3.super_class = MTLIOAccelCommandQueue;
  [(_MTLCommandQueue *)&v3 dealloc];
}

- (void)setCompletionQueue:(id)queue
{
  completionQueueDispatch = self->super._completionQueueDispatch;
  if (completionQueueDispatch)
  {
    dispatch_release(completionQueueDispatch);
  }

  self->super._completionQueueDispatch = queue;
  dispatch_retain(queue);

  IOAccelCommandQueueSetDispatchQueue();
}

- (BOOL)_setGPUPriority:(unint64_t)priority backgroundPriority:(unint64_t)backgroundPriority
{
  v7 = IOAccelCommandQueueSetPriorityAndBackground();
  if (!v7)
  {
    self->_priority = priority;
    self->_backgroundPriority = backgroundPriority;
  }

  return v7 == 0;
}

- (BOOL)setGPUPriority:(unint64_t)priority
{
  validateGPUPriority(priority, 0, priority, v3, v4, v5, v6, v7);
  backgroundPriority = self->_backgroundPriority;

  return [(MTLIOAccelCommandQueue *)self _setGPUPriority:priority backgroundPriority:backgroundPriority];
}

- (BOOL)setGPUPriority:(unint64_t)priority offset:(unsigned __int16)offset
{
  validateGPUPriority(priority, 0, priority, offset, v4, v5, v6, v7);
  backgroundPriority = self->_backgroundPriority;

  return [(MTLIOAccelCommandQueue *)self _setGPUPriority:priority backgroundPriority:backgroundPriority];
}

- (BOOL)setBackgroundGPUPriority:(unint64_t)priority
{
  if (priority >= 6)
  {
    MTLReportFailure(0, "validateGPUPriority", 121, @"priority (%d) is not a valid MTLGPUPriority", v3, v4, v5, v6, priority);
  }

  priority = self->_priority;

  return [(MTLIOAccelCommandQueue *)self _setGPUPriority:priority backgroundPriority:priority];
}

- (BOOL)setBackgroundGPUPriority:(unint64_t)priority offset:(unsigned __int16)offset
{
  if (priority >= 6)
  {
    MTLReportFailure(0, "validateGPUPriority", 121, @"priority (%d) is not a valid MTLGPUPriority", v4, v5, v6, v7, priority);
  }

  priority = self->_priority;

  return [(MTLIOAccelCommandQueue *)self _setGPUPriority:priority backgroundPriority:priority];
}

- (void)submitCommandBuffers:(const void *)buffers count:(unint64_t)count
{
  aBlock[5] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](self);
  v8 = (&v22 - ((v7 + 23) & 0xFFFFFFFFFFFFFFF0));
  bzero(v8, v7 + 8);
  v23 = v8;
  v8[1] = count;
  if (count)
  {
    v25 = MEMORY[0x1E69E9820];
    v24 = __53__MTLIOAccelCommandQueue_submitCommandBuffers_count___block_invoke;
    v9 = v23 + 3;
    countCopy = count;
    do
    {
      v11 = *buffers;
      v12 = *(*buffers + 77);
      *(v9 - 1) = *(*(v12 + 32) + 48);
      *v9 = *(*(v12 + 64) + 48);
      aBlock[0] = v25;
      aBlock[1] = 3221225472;
      aBlock[2] = v24;
      aBlock[3] = &unk_1E6EEBAA0;
      aBlock[4] = v11;
      v13 = _Block_copy(aBlock);
      *(v9 + 1) = v13;
      v11[80] = v13;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __53__MTLIOAccelCommandQueue_submitCommandBuffers_count___block_invoke_2;
      v29[3] = &unk_1E6EEBAC8;
      v29[4] = v11;
      v29[5] = self;
      v14 = _Block_copy(v29);
      *(v9 + 3) = v14;
      v11[81] = v14;
      if ([v11 isProfilingEnabled])
      {
        [v11 kernelSubmitTime];
      }

      if (**MEMORY[0x1E69A8488])
      {
        [objc_msgSend(v11 "commandQueue")];
        [objc_msgSend(v11 "device")];
        [objc_msgSend(v11 "commandQueue")];
        [v11 globalTraceObjectID];
        IOAccelDeviceTraceEvent();
      }

      v9 += 6;
      ++buffers;
      --countCopy;
    }

    while (countCopy);
  }

  v15 = IOAccelCommandQueueSubmitCommandBuffers();
  if (v15)
  {
    if (v15 == 268435459)
    {
      v16 = 15;
    }

    else
    {
      v16 = 1;
    }

    if (v15 == -536870174)
    {
      v17 = 7;
    }

    else
    {
      v17 = v16;
    }

    if (count)
    {
      v18 = MEMORY[0x1E69E9820];
      v19 = (v23 + 4);
      do
      {
        commandQueueDispatch = self->super._commandQueueDispatch;
        block[0] = v18;
        block[1] = 3221225472;
        block[2] = __53__MTLIOAccelCommandQueue_submitCommandBuffers_count___block_invoke_3;
        block[3] = &unk_1E6EEBAF0;
        v21 = *v19;
        v19 = (v19 + 24);
        v27 = v21;
        v28 = v17;
        dispatch_async(commandQueueDispatch, block);
        --count;
      }

      while (count);
    }
  }
}

void __53__MTLIOAccelCommandQueue_submitCommandBuffers_count___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (**MEMORY[0x1E69A8488])
  {
    [*(a1 + 32) globalTraceObjectID];
    IOAccelDeviceTraceEvent();
  }

  if (a4)
  {
    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithIOAccelError:a4];
    [*(a1 + 32) didScheduleWithStartTime:a2 endTime:a3 error:v9];
  }

  else
  {
    v8 = *(a1 + 32);

    [v8 didScheduleWithStartTime:a2 endTime:a3 error:0];
  }
}

void __53__MTLIOAccelCommandQueue_submitCommandBuffers_count___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (**MEMORY[0x1E69A8488])
  {
    [*(a1 + 32) globalTraceObjectID];
    IOAccelDeviceTraceEvent();
  }

  if (a4)
  {
    v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithIOAccelError:a4];
    [*(a1 + 40) commandBufferDidComplete:*(a1 + 32) startTime:a2 completionTime:a3 error:v10];
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);

    [v8 commandBufferDidComplete:v9 startTime:a2 completionTime:a3 error:0];
  }
}

void __53__MTLIOAccelCommandQueue_submitCommandBuffers_count___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 32));
  v2 = *(a1 + 40);

  _Block_release(v2);
}

@end