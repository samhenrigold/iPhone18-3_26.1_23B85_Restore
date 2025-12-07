@interface DMCHangDetectionQueue
- (BOOL)shouldDumpStackshot;
- (BOOL)verboseLogEnabled;
- (DMCHangDetectionQueue)initWithQoS:(int64_t)s hangThreshold:(double)threshold owner:(id)owner;
- (unsigned)_qosClassFromNSQualityOfService:(int64_t)service;
- (void)queueBlock:(id)block;
- (void)queueBlock:(id)block afterDelay:(double)delay;
- (void)setShouldDumpStackshot:(BOOL)stackshot;
- (void)setVerboseLogEnabled:(BOOL)enabled;
- (void)waitUntilAllBlocksAreFinished;
@end

@implementation DMCHangDetectionQueue

- (DMCHangDetectionQueue)initWithQoS:(int64_t)s hangThreshold:(double)threshold owner:(id)owner
{
  ownerCopy = owner;
  v22.receiver = self;
  v22.super_class = DMCHangDetectionQueue;
  v9 = [(DMCHangDetectionQueue *)&v22 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -1);
    v11 = objc_opt_new();
    workerQueue = v9->_workerQueue;
    v9->_workerQueue = v11;

    [(NSOperationQueue *)v9->_workerQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v9->_workerQueue setQualityOfService:s];
    v13 = [ownerCopy stringByAppendingString:@"_hang_detection_worker_queue"];
    [(NSOperationQueue *)v9->_workerQueue setName:v13];

    v14 = [ownerCopy stringByAppendingString:@"_hang_detection_log_queue"];
    v15 = dispatch_queue_create([v14 UTF8String], v10);
    logQueue = v9->_logQueue;
    v9->_logQueue = v15;

    v9->_threshold = threshold;
    v17 = [ownerCopy copy];
    owner = v9->_owner;
    v9->_owner = v17;

    v19 = objc_opt_new();
    logger = v9->_logger;
    v9->_logger = v19;

    v9->_shouldDumpStackshot = 1;
    v9->_lastExecutedJob = -1;
    atomic_store(0xFFFFFFFF, &v9->_blockNum);
  }

  return v9;
}

- (void)queueBlock:(id)block afterDelay:(double)delay
{
  blockCopy = block;
  v7 = dispatch_time(0, (delay * 1000000000.0));
  v8 = dispatch_get_global_queue([(DMCHangDetectionQueue *)self _qosClassFromNSQualityOfService:[(NSOperationQueue *)self->_workerQueue qualityOfService]], 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__DMCHangDetectionQueue_queueBlock_afterDelay___block_invoke;
  v10[3] = &unk_1E7ADC950;
  v10[4] = self;
  v11 = blockCopy;
  v9 = blockCopy;
  dispatch_after(v7, v8, v10);
}

- (void)queueBlock:(id)block
{
  v41 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  atomic_fetch_add(&self->_blockNum, 1u);
  v5 = atomic_load(&self->_blockNum);
  if (queueBlock__onceToken != -1)
  {
    [DMCHangDetectionQueue queueBlock:];
  }

  v6 = queueBlock__isInternal;
  v7 = [(DMCHangDetectionQueue *)self shouldDumpStackshot]& v6;
  verboseLogEnabled = [(DMCHangDetectionQueue *)self verboseLogEnabled];
  v9 = verboseLogEnabled;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  if ((v7 & 1) != 0 || (v10 = 0, verboseLogEnabled))
  {
    v11 = +[DMCBacktraceLogger callerOfCurrentMethod];
    v10 = v11;
    if (v9)
    {
      v13 = *DMCLogObjects(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        owner = [(DMCHangDetectionQueue *)self owner];
        *buf = 138543874;
        v36 = owner;
        v37 = 1024;
        v38 = v5;
        v39 = 2114;
        v40 = v10;
        _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_DEBUG, "DMCHangDetectionQueue (%{public}@) queueing task %d from: %{public}@", buf, 0x1Cu);
      }
    }

    if (v7)
    {
      [(DMCHangDetectionQueue *)self threshold];
      if (v15 > 0.0)
      {
        [(DMCHangDetectionQueue *)self threshold];
        v17 = dispatch_time(0, (v16 * 1000000000.0));
        logQueue = [(DMCHangDetectionQueue *)self logQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __36__DMCHangDetectionQueue_queueBlock___block_invoke_10;
        block[3] = &unk_1E7ADC978;
        v31 = v33;
        block[4] = self;
        v32 = v5;
        v10 = v10;
        v30 = v10;
        dispatch_after(v17, logQueue, block);
      }
    }
  }

  workerQueue = [(DMCHangDetectionQueue *)self workerQueue];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __36__DMCHangDetectionQueue_queueBlock___block_invoke_17;
  v22[3] = &unk_1E7ADC9C8;
  v27 = v7;
  v22[4] = self;
  v20 = blockCopy;
  v24 = v20;
  v28 = v9;
  v26 = v5;
  v21 = v10;
  v23 = v21;
  v25 = v33;
  [workerQueue addOperationWithBlock:v22];

  _Block_object_dispose(v33, 8);
}

BOOL __36__DMCHangDetectionQueue_queueBlock___block_invoke()
{
  result = +[DMCFeatureFlags isAppleInternal];
  queueBlock__isInternal = result;
  return result;
}

void __36__DMCHangDetectionQueue_queueBlock___block_invoke_10(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && *(*(a1 + 32) + 12) + 1 == *(a1 + 56))
  {
    v2 = +[DMCFeatureFlags isAppleInternal];
    if (v2)
    {
      v4 = [*(*(a1 + 32) + 56) getBacktraceFromTrackedThread];
      v6 = *DMCLogObjects(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v7 = *(a1 + 32);
        v8 = v6;
        v9 = [v7 owner];
        [*(a1 + 32) threshold];
        v11 = *(a1 + 56);
        v12 = @"<None>";
        v13 = *(a1 + 40);
        if (v4)
        {
          v12 = v4;
        }

        v25 = 138544386;
        v26 = v9;
        v27 = 2048;
        v28 = v10;
        v29 = 1024;
        v30 = v11;
        v31 = 2114;
        v32 = v13;
        v33 = 2114;
        v34 = v12;
        _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_FAULT, "DMCHangDetectionQueue (%{public}@) was blocked for more than %.1f seconds. Queued task: %d %{public}@. Callstack: %{public}@", &v25, 0x30u);
      }
    }

    else
    {
      v14 = *DMCLogObjects(v2, v3);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        v16 = v14;
        v17 = [v15 owner];
        [*(a1 + 32) threshold];
        v18 = *(a1 + 56);
        v19 = *(a1 + 40);
        v25 = 138544130;
        v26 = v17;
        v27 = 2048;
        v28 = v20;
        v29 = 1024;
        v30 = v18;
        v31 = 2114;
        v32 = v19;
        _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_ERROR, "DMCHangDetectionQueue (%{public}@) was blocked for more than %.1f seconds. Queued task: %d %{public}@", &v25, 0x26u);
      }

      v4 = 0;
    }

    v21 = [*(a1 + 32) owner];
    v22 = [v21 stringByAppendingString:@"_queue_latestStackshot.ips"];

    v24 = DMCHangTracerDirectory(v23);
    [DMCBacktraceLogger dumpStackshotToPath:v24 fileName:v22];
  }
}

void __36__DMCHangDetectionQueue_queueBlock___block_invoke_17(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (+[DMCFeatureFlags isAppleInternal]&& *(a1 + 68) == 1)
  {
    [*(*(a1 + 32) + 56) trackCurrentThread];
  }

  v2 = (*(*(a1 + 48) + 16))();
  if (*(a1 + 69) == 1)
  {
    v4 = *DMCLogObjects(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 owner];
      v8 = *(a1 + 64);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v17 = v7;
      v18 = 1024;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_DEBUG, "DMCHangDetectionQueue (%{public}@) done executing task %d from: %{public}@", buf, 0x1Cu);
    }
  }

  v10 = [*(a1 + 32) logQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__DMCHangDetectionQueue_queueBlock___block_invoke_18;
  block[3] = &unk_1E7ADC9A0;
  v15 = *(a1 + 68);
  v11 = *(a1 + 32);
  v14 = *(a1 + 64);
  v12 = *(a1 + 56);
  block[4] = v11;
  block[5] = v12;
  dispatch_async(v10, block);
}

uint64_t __36__DMCHangDetectionQueue_queueBlock___block_invoke_18(uint64_t result)
{
  if (*(result + 52) == 1)
  {
    *(*(result + 32) + 12) = *(result + 48);
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)shouldDumpStackshot
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  logQueue = [(DMCHangDetectionQueue *)self logQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__DMCHangDetectionQueue_shouldDumpStackshot__block_invoke;
  v5[3] = &unk_1E7ADC9F0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_async_and_wait(logQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setShouldDumpStackshot:(BOOL)stackshot
{
  logQueue = [(DMCHangDetectionQueue *)self logQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__DMCHangDetectionQueue_setShouldDumpStackshot___block_invoke;
  v6[3] = &unk_1E7ADCA18;
  v6[4] = self;
  stackshotCopy = stackshot;
  dispatch_async(logQueue, v6);
}

- (BOOL)verboseLogEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  logQueue = [(DMCHangDetectionQueue *)self logQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__DMCHangDetectionQueue_verboseLogEnabled__block_invoke;
  v5[3] = &unk_1E7ADC9F0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_async_and_wait(logQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setVerboseLogEnabled:(BOOL)enabled
{
  logQueue = [(DMCHangDetectionQueue *)self logQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__DMCHangDetectionQueue_setVerboseLogEnabled___block_invoke;
  v6[3] = &unk_1E7ADCA18;
  v6[4] = self;
  enabledCopy = enabled;
  dispatch_async(logQueue, v6);
}

- (void)waitUntilAllBlocksAreFinished
{
  workerQueue = [(DMCHangDetectionQueue *)self workerQueue];
  [workerQueue waitUntilAllOperationsAreFinished];
}

- (unsigned)_qosClassFromNSQualityOfService:(int64_t)service
{
  if (service <= 16)
  {
    if (service == -1)
    {
      return 21;
    }

    if (service == 9)
    {
      return 9;
    }
  }

  else
  {
    switch(service)
    {
      case 17:
        return 17;
      case 33:
        return 33;
      case 25:
        return 25;
    }
  }

  return 0;
}

@end