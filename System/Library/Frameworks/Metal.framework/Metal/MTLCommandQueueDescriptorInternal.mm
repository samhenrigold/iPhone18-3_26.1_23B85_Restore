@interface MTLCommandQueueDescriptorInternal
- (MTLCommandQueueDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
- (void)setCommitQueue:(id)queue;
- (void)setCompletionQueue:(id)queue;
@end

@implementation MTLCommandQueueDescriptorInternal

- (MTLCommandQueueDescriptorInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLCommandQueueDescriptorInternal;
  result = [(MTLCommandQueueDescriptorInternal *)&v3 init];
  if (result)
  {
    result->_maxCommandBufferCount = 64;
    result->_qosLevel = 2;
    result->_commitQueue = 0;
    result->_commitSynchronously = 0;
    result->_completionQueue = 0;
    result->_disableCrossQueueHazardTracking = 0;
    result->_disableAsyncCompletionDispatch = 0;
    result->_openGLQueue = 0;
    result->_devicePartition = 0;
    result->_lockParameterBufferSizeToMax = 0;
    result->_logState = 0;
  }

  return result;
}

- (void)dealloc
{
  commitQueue = self->_commitQueue;
  if (commitQueue)
  {
    dispatch_release(commitQueue);
  }

  completionQueue = self->_completionQueue;
  if (completionQueue)
  {
    dispatch_release(completionQueue);
  }

  v5.receiver = self;
  v5.super_class = MTLCommandQueueDescriptorInternal;
  [(MTLCommandQueueDescriptorInternal *)&v5 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 setMaxCommandBufferCount:self->_maxCommandBufferCount];
    [v5 setQosLevel:self->_qosLevel];
    [v5 setCommitQueue:self->_commitQueue];
    [v5 setCommitSynchronously:self->_commitSynchronously];
    [v5 setCompletionQueue:self->_completionQueue];
    [v5 setDisableCrossQueueHazardTracking:self->_disableCrossQueueHazardTracking];
    [v5 setDisableAsyncCompletionDispatch:self->_disableAsyncCompletionDispatch];
    [v5 setIsOpenGLQueue:self->_openGLQueue];
    [v5 setDevicePartition:self->_devicePartition];
    [v5 setDisableIOFencing:self->_disableIOFencing];
    [v5 setEnableLowLatencySignalSharedEvent:self->_enableLowLatencySignalSharedEvent];
    [v5 setEnableLowLatencyWaitSharedEvent:self->_enableLowLatencyWaitSharedEvent];
    [v5 setLockParameterBufferSizeToMax:self->_lockParameterBufferSizeToMax];
    [v5 setLogState:self->_logState];
    [v5 setCommitsWithQoS:self->_commitsWithQoS];
  }

  return v5;
}

- (void)setCommitQueue:(id)queue
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  if (self->_commitQueue)
  {
    dispatch_release(queue);
  }

  self->_commitQueue = queue;
}

- (void)setCompletionQueue:(id)queue
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  if (self->_completionQueue)
  {
    dispatch_release(queue);
  }

  self->_completionQueue = queue;
}

- (id)formattedDescription:(unint64_t)description
{
  v11[22] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v11[0] = v4;
  v11[1] = @"maxCommandBufferCount =";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxCommandBufferCount];
  v6 = 0;
  v11[2] = v5;
  v11[3] = v4;
  v11[4] = @"qosLevel =";
  qosLevel = self->_qosLevel;
  if (qosLevel <= 4)
  {
    v6 = *(&off_1E6EED660 + qosLevel);
  }

  v11[5] = v6;
  v11[6] = v4;
  v11[7] = [MEMORY[0x1E696AEC0] stringWithFormat:@"commitQueue =%p", self->_commitQueue];
  v11[8] = v4;
  v11[9] = @"commitSynchronously =";
  v11[10] = [MEMORY[0x1E696AD98] numberWithBool:self->_commitSynchronously];
  v11[11] = v4;
  v11[12] = [MEMORY[0x1E696AEC0] stringWithFormat:@"completionQueue =%p", self->_completionQueue];
  v11[13] = v4;
  v11[14] = @"disableCrossQueueHazardTracking =";
  v11[15] = [MEMORY[0x1E696AD98] numberWithBool:self->_disableCrossQueueHazardTracking];
  v11[16] = v4;
  v11[17] = @"disableAsyncCompletionDispatch =";
  v11[18] = [MEMORY[0x1E696AD98] numberWithBool:self->_disableAsyncCompletionDispatch];
  v11[19] = v4;
  v11[20] = @"lockParameterBufferSizeToMax =";
  v11[21] = [MEMORY[0x1E696AD98] numberWithBool:self->_lockParameterBufferSizeToMax];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:22];
  v10.receiver = self;
  v10.super_class = MTLCommandQueueDescriptorInternal;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[MTLCommandQueueDescriptorInternal description](&v10, sel_description), objc_msgSend(v8, "componentsJoinedByString:", @" "];
}

@end