@interface BGSystemTask
+ (id)logger;
- (BGSystemTask)initWithIdentifier:(id)identifier;
- (BGSystemTask)initWithIdentifier:(id)identifier queue:(id)queue taskRequest:(id)request;
- (BGSystemTaskDelegate)delegate;
- (BOOL)consumedResults:(id)results error:(id *)error;
- (BOOL)deregisterThroughputTrackingFor:(id)for withEndTime:(id)time error:(id *)error;
- (BOOL)producedCumulativeResults:(id)results error:(id *)error;
- (BOOL)queue_reportBufferedTaskWorkloadProgress;
- (BOOL)queue_reportThroughputForPerformanceMetric:(id)metric error:(id *)error;
- (BOOL)registerThroughputTrackingFor:(id)for withStartTime:(id)time error:(id *)error;
- (BOOL)reportCumulativeResultConsumptionWithError:(id *)error;
- (BOOL)reportPendingThroughputMetrics;
- (BOOL)reportTaskWorkloadProgress:(unint64_t)progress completed:(unint64_t)completed category:(unint64_t)category subCategory:(id)subCategory error:(id *)error;
- (BOOL)resetResultsForIdentifier:(id)identifier error:(id *)error;
- (BOOL)resultQueue_containsPendingConsumedResults;
- (BOOL)sendTaskWorkloadProgressToPPS:(unint64_t)s completed:(unint64_t)completed category:(unint64_t)category subCategory:(id)subCategory;
- (BOOL)setTaskExpiredWithRetryAfter:(double)after error:(id *)error;
- (id)delegate:(id *)delegate;
- (void)clearLocked;
- (void)handleExpirationWithReason:(unint64_t)reason;
- (void)invokeExpirationHandlerWithReason:(unint64_t)reason;
- (void)prepareForRunning;
- (void)resultQueue_aggregateConsumedResult:(id)result;
- (void)setExpirationHandler:(id)handler;
- (void)setExpirationHandlerWithReason:(id)reason;
- (void)setTaskCompleted;
@end

@implementation BGSystemTask

- (void)setTaskCompleted
{
  dispatch_assert_queue_not_V2(self->_queue);
  if (![(BGSystemTask *)self invalid])
  {
    [(BGSystemTask *)self reportCumulativeResultConsumptionWithError:0];
    [(BGSystemTask *)self reportPendingThroughputMetrics];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__BGSystemTask_setTaskCompleted__block_invoke;
    block[3] = &unk_1E7B24590;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

- (BGSystemTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)resultQueue_containsPendingConsumedResults
{
  dispatch_assert_queue_V2(self->_resultQueue);
  allKeys = [(NSMutableDictionary *)self->_runningConsumedResults allKeys];
  v4 = [allKeys count] != 0;

  return v4;
}

- (BOOL)reportPendingThroughputMetrics
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  array = [MEMORY[0x1E695DF70] array];
  performanceMetricQueue = [(BGSystemTask *)self performanceMetricQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__BGSystemTask_reportPendingThroughputMetrics__block_invoke;
  block[3] = &unk_1E7B24680;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(performanceMetricQueue, block);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v17[5];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v22 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [(BGSystemTask *)self deregisterThroughputTrackingFor:*(*(&v11 + 1) + 8 * i) withEndTime:0 error:0, v11];
      }

      v9 = v8;
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v9 = 1;
  }

  _Block_object_dispose(&v16, 8);
  return v9;
}

void __46__BGSystemTask_reportPendingThroughputMetrics__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [*(a1 + 32) throughputMetricsMap];
  v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v15 = *v22;
    do
    {
      v2 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v21 + 1) + 8 * v2);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v4 = [*(a1 + 32) throughputMetricsMap];
        v5 = [v4 objectForKeyedSubscript:v3];

        v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v18;
          do
          {
            v9 = 0;
            do
            {
              if (*v18 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v17 + 1) + 8 * v9);
              v11 = [*(a1 + 32) throughputMetricsMap];
              v12 = [v11 objectForKeyedSubscript:v3];
              v13 = [v12 objectForKeyedSubscript:v10];

              [*(*(*(a1 + 40) + 8) + 40) addObject:v13];
              ++v9;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v7);
        }

        ++v2;
      }

      while (v2 != v16);
      v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v16);
  }
}

uint64_t __32__BGSystemTask_setTaskCompleted__block_invoke(uint64_t a1)
{
  [*(a1 + 32) queue_reportBufferedTaskWorkloadProgress];
  v2 = *(a1 + 32);
  v3 = v2[15];
  if (v3)
  {
    (*(v3 + 16))(v2[15]);
    v2 = *(a1 + 32);
  }

  [v2 clearLocked];
  v4 = *(a1 + 32);

  return [v4 setState:4];
}

- (BOOL)queue_reportBufferedTaskWorkloadProgress
{
  v46 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  taskProgressInfo = [(BGSystemTask *)self taskProgressInfo];
  v30 = [taskProgressInfo countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v30)
  {
    v4 = *v41;
    v32 = taskProgressInfo;
    v29 = *v41;
    do
    {
      v5 = 0;
      do
      {
        if (*v41 != v4)
        {
          objc_enumerationMutation(taskProgressInfo);
        }

        v31 = v5;
        v6 = *(*(&v40 + 1) + 8 * v5);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        taskProgressInfo2 = [(BGSystemTask *)self taskProgressInfo];
        v8 = [taskProgressInfo2 objectForKeyedSubscript:v6];

        obj = v8;
        v35 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v35)
        {
          v9 = *v37;
          v33 = *v37;
          while (2)
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v37 != v9)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v36 + 1) + 8 * i);
              taskProgressInfo3 = [(BGSystemTask *)self taskProgressInfo];
              v13 = [taskProgressInfo3 objectForKeyedSubscript:v6];
              v14 = [v13 objectForKey:v11];
              v15 = [v14 objectAtIndexedSubscript:1];
              unsignedLongValue = [v15 unsignedLongValue];

              if (![(BGSystemTask *)self shouldReportTaskWorkloadProgress:unsignedLongValue])
              {
                taskProgressInfo4 = [(BGSystemTask *)self taskProgressInfo];
                v18 = [taskProgressInfo4 objectForKeyedSubscript:v6];
                v19 = [v18 objectForKey:v11];
                v20 = [v19 objectAtIndexedSubscript:0];
                unsignedLongValue2 = [v20 unsignedLongValue];

                v22 = v11 == @"default" ? 0 : v11;
                v23 = v22;
                unsignedLongValue3 = [v6 unsignedLongValue];
                v25 = unsignedLongValue2;
                v9 = v33;
                v26 = [(BGSystemTask *)self sendTaskWorkloadProgressToPPS:v25 completed:unsignedLongValue category:unsignedLongValue3 subCategory:v23];

                if (!v26)
                {

                  v27 = 0;
                  taskProgressInfo = v32;
                  goto LABEL_23;
                }
              }
            }

            v35 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v35)
            {
              continue;
            }

            break;
          }
        }

        v5 = v31 + 1;
        taskProgressInfo = v32;
        v4 = v29;
      }

      while (v31 + 1 != v30);
      v27 = 1;
      v30 = [v32 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v30);
  }

  else
  {
    v27 = 1;
  }

LABEL_23:

  return v27;
}

- (void)clearLocked
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  expirationHandler = self->_expirationHandler;
  self->_expirationHandler = 0;

  expirationAckHandler = self->_expirationAckHandler;
  self->_expirationAckHandler = 0;

  expirationHandlerWithReason = self->_expirationHandlerWithReason;
  self->_expirationHandlerWithReason = 0;

  clientLedExpirationHandler = self->_clientLedExpirationHandler;
  self->_clientLedExpirationHandler = 0;
  self->_expirationReason = 0;

  self->_hasPropagatedExpiration = 0;
  transaction = self->_transaction;
  self->_transaction = 0;

  taskProgressInfo = self->_taskProgressInfo;
  self->_taskProgressInfo = 0;

  resultQueue = self->_resultQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__BGSystemTask_clearLocked__block_invoke;
  block[3] = &unk_1E7B24590;
  block[4] = self;
  dispatch_sync(resultQueue, block);
}

- (void)prepareForRunning
{
  [(NSString *)self->_identifier UTF8String];
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  [(BGSystemTask *)self setState:1];
}

- (BGSystemTask)initWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E696AEC0];
  identifierCopy = identifier;
  identifierCopy = [v4 stringWithFormat:@"com.apple.BGSystemTask.%@", identifierCopy];
  v7 = [identifierCopy cStringUsingEncoding:4];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(v7, v8);

  v10 = [(BGSystemTask *)self initWithIdentifier:identifierCopy queue:v9];
  return v10;
}

- (BGSystemTask)initWithIdentifier:(id)identifier queue:(id)queue taskRequest:(id)request
{
  identifierCopy = identifier;
  queueCopy = queue;
  requestCopy = request;
  v37.receiver = self;
  v37.super_class = BGSystemTask;
  v12 = [(BGSystemTask *)&v37 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_queue, queue);
    v14 = [requestCopy copy];
    taskRequest = v13->_taskRequest;
    v13->_taskRequest = v14;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    runningConsumedResults = v13->_runningConsumedResults;
    v13->_runningConsumedResults = dictionary;

    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.BGSystemTask.resultQ.%@", identifierCopy];
    v19 = [identifierCopy cStringUsingEncoding:4];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_BACKGROUND, 0);
    v22 = dispatch_queue_create(v19, v21);
    resultQueue = v13->_resultQueue;
    v13->_resultQueue = v22;

    identifierCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.BGSystemTask.perfMetricQ.%@", identifierCopy];
    v25 = [identifierCopy2 cStringUsingEncoding:4];
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_attr_make_with_qos_class(v26, QOS_CLASS_BACKGROUND, 0);
    v28 = dispatch_queue_create(v25, v27);
    performanceMetricQueue = v13->_performanceMetricQueue;
    v13->_performanceMetricQueue = v28;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    taskProgressInfo = v13->_taskProgressInfo;
    v13->_taskProgressInfo = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    throughputMetricsMap = v13->_throughputMetricsMap;
    v13->_throughputMetricsMap = dictionary3;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v13->_uuid;
    v13->_uuid = uUID;
  }

  return v13;
}

+ (id)logger
{
  if (logger_onceToken_1 != -1)
  {
    +[BGSystemTask logger];
  }

  v3 = logger_log_1;

  return v3;
}

uint64_t __22__BGSystemTask_logger__block_invoke()
{
  logger_log_1 = os_log_create("com.apple.BackgroundSystemTasks", "BGSTFramework");

  return MEMORY[0x1EEE66BB8]();
}

- (id)delegate:(id *)delegate
{
  delegate = [(BGSystemTask *)self delegate];
  v5 = delegate;
  if (delegate && !delegate)
  {
    *delegate = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:1 userInfo:0];
  }

  return v5;
}

void __27__BGSystemTask_clearLocked__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;
}

- (BOOL)setTaskExpiredWithRetryAfter:(double)after error:(id *)error
{
  dispatch_assert_queue_not_V2(self->_queue);
  if ([(BGSystemTask *)self invalid])
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__2;
    v16 = __Block_byref_object_dispose__2;
    v17 = 0;
    v8 = [(BGSystemTask *)self reportCumulativeResultConsumptionWithError:error];
    *(v19 + 24) = v8;
    if (v8)
    {
      [(BGSystemTask *)self reportPendingThroughputMetrics];
      queue = self->_queue;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__BGSystemTask_setTaskExpiredWithRetryAfter_error___block_invoke;
      v11[3] = &unk_1E7B245B8;
      *&v11[7] = after;
      v11[4] = self;
      v11[5] = &v12;
      v11[6] = &v18;
      dispatch_sync(queue, v11);
      v7 = *(v19 + 24);
      if (error && (v19[3] & 1) == 0)
      {
        *error = v13[5];
        v7 = *(v19 + 24);
      }
    }

    else
    {
      v7 = 0;
    }

    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v18, 8);
  }

  return v7 & 1;
}

void __51__BGSystemTask_setTaskExpiredWithRetryAfter_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) queue_reportBufferedTaskWorkloadProgress];
  v2 = round(*(a1 + 56));
  if (([*(a1 + 32) expiring] & 1) == 0 && v2 < 300.0)
  {
    v3 = +[BGSystemTask logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = 300;
      _os_log_impl(&dword_1B236A000, v3, OS_LOG_TYPE_DEFAULT, "setTaskExpiredWithRetryAfter: Proactive expirations must have a cool off of at least %lu seconds, clamping", &v13, 0xCu);
    }

    v2 = 300.0;
  }

  if ([*(a1 + 32) expiring] && v2 < 0.0)
  {
    v4 = +[BGSystemTask logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__BGSystemTask_setTaskExpiredWithRetryAfter_error___block_invoke_cold_1((a1 + 56), v4);
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (v2 <= 64000000.0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 64000000.0;
    }

    v9 = [*(a1 + 32) expiring];
    v10 = *(a1 + 32);
    if (v9 && (v11 = v10[16]) != 0)
    {
      (*(v11 + 16))(v10[16], v8);
    }

    else if (([v10 expiring] & 1) == 0)
    {
      v12 = *(*(a1 + 32) + 136);
      if (v12)
      {
        *(*(*(a1 + 48) + 8) + 24) = (*(v12 + 16))(v8);
      }
    }

    [*(a1 + 32) clearLocked];
    [*(a1 + 32) setState:3];
  }
}

- (void)handleExpirationWithReason:(unint64_t)reason
{
  if (!self->_hasPropagatedExpiration)
  {
    [(BGSystemTask *)self setState:2];
    self->_expirationReason = reason;
    if ([(BGSystemTask *)self hasValidExpirationHandler])
    {
      [(BGSystemTask *)self invokeExpirationHandlerWithReason:reason];
      expirationHandlerWithReason = self->_expirationHandlerWithReason;
      self->_expirationHandlerWithReason = 0;

      expirationHandler = self->_expirationHandler;
      self->_expirationHandler = 0;
    }
  }
}

- (void)invokeExpirationHandlerWithReason:(unint64_t)reason
{
  if ([(BGSystemTask *)self hasValidExpirationHandler])
  {
    expirationHandlerWithReason = self->_expirationHandlerWithReason;
    if (expirationHandlerWithReason)
    {
      expirationHandlerWithReason[2](expirationHandlerWithReason, reason);
    }

    else
    {
      (*(self->_expirationHandler + 2))();
    }

    self->_hasPropagatedExpiration = 1;
  }

  else
  {
    v6 = +[BGSystemTask logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTask invokeExpirationHandlerWithReason:v6];
    }
  }
}

- (BOOL)producedCumulativeResults:(id)results error:(id *)error
{
  resultsCopy = results;
  v7 = [(BGSystemTask *)self delegate:error];
  LOBYTE(error) = [v7 systemTask:self producedResults:resultsCopy error:error];

  return error;
}

- (BOOL)consumedResults:(id)results error:(id *)error
{
  resultsCopy = results;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  obj = 0;
  v7 = [(BGSystemTask *)self delegate:&obj];
  objc_storeStrong(&v27, obj);
  if (v7)
  {
    resultQueue = self->_resultQueue;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __38__BGSystemTask_consumedResults_error___block_invoke;
    v15 = &unk_1E7B24448;
    v16 = resultsCopy;
    v17 = v7;
    selfCopy = self;
    v19 = &v22;
    v20 = &v28;
    dispatch_sync(resultQueue, &v12);

    if (v29[3])
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(v29 + 24) = 0;
  }

  v9 = [BGSystemTask logger:v12];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [BGSystemTask consumedResults:error:];
  }

  if (error)
  {
    *error = v23[5];
  }

LABEL_9:
  v10 = *(v29 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v10;
}

void __38__BGSystemTask_consumedResults_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = [v7 identifier];
        LOBYTE(v8) = [v8 systemTask:v9 canConsumeResultOfIdentifier:v10];

        if ((v8 & 1) == 0)
        {
          v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:7 userInfo:0];
          v12 = *(*(a1 + 56) + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;

          *(*(*(a1 + 64) + 8) + 24) = 0;
          goto LABEL_11;
        }

        [*(a1 + 48) resultQueue_aggregateConsumedResult:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (BOOL)resetResultsForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  obj = 0;
  v7 = [(BGSystemTask *)self delegate:&obj];
  objc_storeStrong(&v27, obj);
  if (v7)
  {
    resultQueue = self->_resultQueue;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __48__BGSystemTask_resetResultsForIdentifier_error___block_invoke;
    v15 = &unk_1E7B245E0;
    v19 = &v28;
    v16 = v7;
    selfCopy = self;
    v18 = identifierCopy;
    v20 = &v22;
    dispatch_sync(resultQueue, &v12);

    if (v29[3])
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(v29 + 24) = 0;
  }

  v9 = [BGSystemTask logger:v12];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [BGSystemTask resetResultsForIdentifier:error:];
  }

  if (error)
  {
    *error = v23[5];
  }

LABEL_9:
  v10 = *(v29 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v10;
}

void __48__BGSystemTask_resetResultsForIdentifier_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 systemTask:v3 resetResultsForIdentifier:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

- (void)resultQueue_aggregateConsumedResult:(id)result
{
  resultCopy = result;
  dispatch_assert_queue_V2(self->_resultQueue);
  runningConsumedResults = self->_runningConsumedResults;
  identifier = [resultCopy identifier];
  v6 = [(NSMutableDictionary *)runningConsumedResults objectForKeyedSubscript:identifier];

  if (v6)
  {
    v7 = [BGSystemTaskResult alloc];
    identifier2 = [resultCopy identifier];
    v9 = -[BGSystemTaskResult initWithIdentifier:consumptionCount:](v7, "initWithIdentifier:consumptionCount:", identifier2, [resultCopy count] + objc_msgSend(v6, "count"));

    v10 = v9;
  }

  else
  {
    v10 = resultCopy;
  }

  v11 = self->_runningConsumedResults;
  v14 = v10;
  identifier3 = [v10 identifier];
  [(NSMutableDictionary *)v11 setObject:v14 forKeyedSubscript:identifier3];
}

- (BOOL)reportCumulativeResultConsumptionWithError:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  obj = 0;
  v5 = [(BGSystemTask *)self delegate:&obj];
  objc_storeStrong(&v21, obj);
  resultQueue = self->_resultQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__BGSystemTask_reportCumulativeResultConsumptionWithError___block_invoke;
  block[3] = &unk_1E7B24608;
  block[4] = self;
  v13 = &v22;
  v7 = v5;
  v12 = v7;
  v14 = &v16;
  dispatch_sync(resultQueue, block);
  if ((v23[3] & 1) == 0)
  {
    v8 = +[BGSystemTask logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTask reportCumulativeResultConsumptionWithError:];
    }

    if (error)
    {
      *error = v17[5];
    }
  }

  v9 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v9;
}

void __59__BGSystemTask_reportCumulativeResultConsumptionWithError___block_invoke(uint64_t *a1)
{
  if ([a1[4] resultQueue_containsPendingConsumedResults])
  {
    v3 = a1[4];
    v2 = a1[5];
    v4 = MEMORY[0x1E695DFD8];
    v5 = [*(v3 + 64) allValues];
    v6 = [v4 setWithArray:v5];
    v7 = *(a1[7] + 8);
    obj = *(v7 + 40);
    LOBYTE(v2) = [v2 systemTask:v3 consumedResults:v6 error:&obj];
    objc_storeStrong((v7 + 40), obj);
    *(*(a1[6] + 8) + 24) = v2;

    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = a1[4];
    v10 = *(v9 + 64);
    *(v9 + 64) = v8;
  }
}

- (BOOL)reportTaskWorkloadProgress:(unint64_t)progress completed:(unint64_t)completed category:(unint64_t)category subCategory:(id)subCategory error:(id *)error
{
  subCategoryCopy = subCategory;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__BGSystemTask_reportTaskWorkloadProgress_completed_category_subCategory_error___block_invoke;
  block[3] = &unk_1E7B24630;
  completedCopy = completed;
  progressCopy = progress;
  v20 = &v25;
  categoryCopy = category;
  v14 = subCategoryCopy;
  v21 = &v31;
  v18 = v14;
  selfCopy = self;
  dispatch_sync(queue, block);
  v15 = *(v32 + 24);
  if (error && (v32[3] & 1) == 0)
  {
    *error = v26[5];
    v15 = *(v32 + 24);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v15 & 1;
}

void __80__BGSystemTask_reportTaskWorkloadProgress_completed_category_subCategory_error___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) < 0x65uLL)
  {
    v6 = +[BGSystemTask logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);
      v9 = *(a1 + 80);
      v10 = *(a1 + 32);
      *buf = 134218754;
      v41 = v7;
      v42 = 2048;
      v43 = v8;
      v44 = 2048;
      v45 = v9;
      v46 = 2112;
      v47 = v10;
      _os_log_impl(&dword_1B236A000, v6, OS_LOG_TYPE_DEFAULT, "Completed %lu [Target:%lu] for workload %lu, subcategory %@", buf, 0x2Au);
    }

    v11 = *(a1 + 32);
    if (!v11)
    {
      v11 = @"default";
    }

    v12 = v11;
    v13 = [*(a1 + 40) taskProgressInfo];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
    v15 = [v13 objectForKey:v14];

    if (!v15)
    {
      v16 = [MEMORY[0x1E695DF90] dictionary];
      v17 = [*(a1 + 40) taskProgressInfo];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
      [v17 setObject:v16 forKeyedSubscript:v18];
    }

    v19 = [*(a1 + 40) taskProgressInfo];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
    v21 = [v19 objectForKeyedSubscript:v20];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{*(a1 + 64), v22}];
    v39[1] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    [v21 setObject:v24 forKey:v12];

    if ([*(a1 + 40) shouldReportTaskWorkloadProgress:*(a1 + 64)])
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) sendTaskWorkloadProgressToPPS:*(a1 + 72) completed:*(a1 + 64) category:*(a1 + 80) subCategory:*(a1 + 32)];
    }

    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:3 userInfo:0];
      v26 = *(*(a1 + 48) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      v28 = +[BGSystemTask logger];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v34 = *(*(*(a1 + 48) + 8) + 40);
        v35 = *(a1 + 64);
        v36 = *(a1 + 72);
        v37 = *(a1 + 80);
        v38 = *(a1 + 32);
        *buf = 138413314;
        v41 = v34;
        v42 = 2048;
        v43 = v35;
        v44 = 2048;
        v45 = v36;
        v46 = 2048;
        v47 = v37;
        v48 = 2112;
        v49 = v38;
        _os_log_error_impl(&dword_1B236A000, v28, OS_LOG_TYPE_ERROR, "Error: %@ Completed %lu [Target:%lu] for workload %lu, subcategory %@", buf, 0x34u);
      }
    }
  }

  else
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = +[BGSystemTask logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v29 = *(*(*(a1 + 48) + 8) + 40);
      v30 = *(a1 + 64);
      v31 = *(a1 + 72);
      v32 = *(a1 + 80);
      v33 = *(a1 + 32);
      *buf = 138413314;
      v41 = v29;
      v42 = 2048;
      v43 = v30;
      v44 = 2048;
      v45 = v31;
      v46 = 2048;
      v47 = v32;
      v48 = 2112;
      v49 = v33;
      _os_log_error_impl(&dword_1B236A000, v5, OS_LOG_TYPE_ERROR, "Error: %@ Completed %lu [Target:%lu] for workload %lu, subcategory %@", buf, 0x34u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

- (BOOL)sendTaskWorkloadProgressToPPS:(unint64_t)s completed:(unint64_t)completed category:(unint64_t)category subCategory:(id)subCategory
{
  subCategoryCopy = subCategory;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  mEMORY[0x1E699A4B8] = [MEMORY[0x1E699A4B8] sharedScheduler];
  identifier = [(BGSystemTask *)self identifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__BGSystemTask_sendTaskWorkloadProgressToPPS_completed_category_subCategory___block_invoke;
  v14[3] = &unk_1E7B24050;
  v14[4] = self;
  v14[5] = &v15;
  [mEMORY[0x1E699A4B8] reportTaskWorkloadProgress:identifier target:s completed:completed category:category subCategory:subCategoryCopy completionHandler:v14];

  LOBYTE(category) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return category;
}

void __77__BGSystemTask_sendTaskWorkloadProgressToPPS_completed_category_subCategory___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 40) + 8);
  if (a2)
  {
    *(v3 + 24) = 1;
    v4 = +[BGSystemTask logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) identifier];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1B236A000, v4, OS_LOG_TYPE_DEFAULT, "Successfully reported task workload progress for %@", &v6, 0xCu);
    }
  }

  else
  {
    *(v3 + 24) = 0;
    v4 = +[BGSystemTask logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__BGSystemTask_sendTaskWorkloadProgressToPPS_completed_category_subCategory___block_invoke_cold_1(a1, v4);
    }
  }
}

- (void)setExpirationHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  dispatch_assert_queue_not_V2(self->_queue);
  if ([(BGSystemTask *)self expiring])
  {
    hasValidExpirationHandler = [(BGSystemTask *)self hasValidExpirationHandler];
    v6 = MEMORY[0x1B2747570](handlerCopy);
    expirationHandler = self->_expirationHandler;
    self->_expirationHandler = v6;

    if (!hasValidExpirationHandler)
    {
      v8 = +[BGSystemTask logger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(BGSystemTask *)self identifier];
        *buf = 138543362;
        v15 = identifier;
        _os_log_impl(&dword_1B236A000, v8, OS_LOG_TYPE_DEFAULT, "Invoking expirationHandler for %{public}@ immediately after being set due to a cached expiration request", buf, 0xCu);
      }

      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__BGSystemTask_setExpirationHandler___block_invoke;
      block[3] = &unk_1E7B24590;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v11 = MEMORY[0x1B2747570](handlerCopy);
    v12 = self->_expirationHandler;
    self->_expirationHandler = v11;
  }
}

- (void)setExpirationHandlerWithReason:(id)reason
{
  v16 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  dispatch_assert_queue_not_V2(self->_queue);
  if ([(BGSystemTask *)self expiring])
  {
    hasValidExpirationHandler = [(BGSystemTask *)self hasValidExpirationHandler];
    v6 = MEMORY[0x1B2747570](reasonCopy);
    expirationHandlerWithReason = self->_expirationHandlerWithReason;
    self->_expirationHandlerWithReason = v6;

    if (!hasValidExpirationHandler)
    {
      v8 = +[BGSystemTask logger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(BGSystemTask *)self identifier];
        *buf = 138543362;
        v15 = identifier;
        _os_log_impl(&dword_1B236A000, v8, OS_LOG_TYPE_DEFAULT, "Invoking expirationHandlerWithReason for %{public}@ immediately after being set due to a cached expiration request", buf, 0xCu);
      }

      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__BGSystemTask_setExpirationHandlerWithReason___block_invoke;
      block[3] = &unk_1E7B24590;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v11 = MEMORY[0x1B2747570](reasonCopy);
    v12 = self->_expirationHandlerWithReason;
    self->_expirationHandlerWithReason = v11;
  }
}

uint64_t __47__BGSystemTask_setExpirationHandlerWithReason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 expirationReason];

  return [v1 handleExpirationWithReason:v2];
}

- (BOOL)registerThroughputTrackingFor:(id)for withStartTime:(id)time error:(id *)error
{
  forCopy = for;
  timeCopy = time;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  performanceMetricQueue = [(BGSystemTask *)self performanceMetricQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__BGSystemTask_registerThroughputTrackingFor_withStartTime_error___block_invoke;
  block[3] = &unk_1E7B24658;
  v11 = forCopy;
  v17 = v11;
  v20 = &v22;
  v21 = &v28;
  v12 = timeCopy;
  v18 = v12;
  selfCopy = self;
  dispatch_sync(performanceMetricQueue, block);

  if ((v29[3] & 1) == 0)
  {
    v13 = +[BGSystemTask logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTask registerThroughputTrackingFor:withStartTime:error:];
    }

    if (error)
    {
      *error = v23[5];
    }
  }

  v14 = *(v29 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14;
}

void __66__BGSystemTask_registerThroughputTrackingFor_withStartTime_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) performanceMetricIdentifier];
  if (v2 && (v3 = v2, [*(a1 + 32) reportingUUID], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    if (*(a1 + 40))
    {
      [*(a1 + 32) setStartTimestamp:?];
    }

    else
    {
      v8 = [MEMORY[0x1E695DF00] date];
      [*(a1 + 32) setStartTimestamp:v8];
    }

    v9 = [*(a1 + 48) throughputMetricsMap];
    v10 = [*(a1 + 32) performanceMetricIdentifier];
    v11 = [v9 objectForKey:v10];

    if (!v11)
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
      v13 = [*(a1 + 48) throughputMetricsMap];
      v14 = [*(a1 + 32) performanceMetricIdentifier];
      [v13 setObject:v12 forKeyedSubscript:v14];
    }

    v15 = [*(a1 + 32) taskName];

    if (!v15)
    {
      v16 = [*(a1 + 48) identifier];
      [*(a1 + 32) setTaskName:v16];
    }

    v17 = *(a1 + 32);
    v21 = [*(a1 + 48) throughputMetricsMap];
    v18 = [*(a1 + 32) performanceMetricIdentifier];
    v19 = [v21 objectForKeyedSubscript:v18];
    v20 = [*(a1 + 32) reportingUUID];
    [v19 setObject:v17 forKeyedSubscript:v20];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

- (BOOL)deregisterThroughputTrackingFor:(id)for withEndTime:(id)time error:(id *)error
{
  forCopy = for;
  timeCopy = time;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  performanceMetricQueue = [(BGSystemTask *)self performanceMetricQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__BGSystemTask_deregisterThroughputTrackingFor_withEndTime_error___block_invoke;
  block[3] = &unk_1E7B24658;
  v11 = forCopy;
  v20 = &v22;
  v21 = &v28;
  v17 = v11;
  selfCopy = self;
  v12 = timeCopy;
  v19 = v12;
  dispatch_sync(performanceMetricQueue, block);

  if ((v29[3] & 1) == 0)
  {
    v13 = +[BGSystemTask logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTask deregisterThroughputTrackingFor:withEndTime:error:];
    }

    if (error)
    {
      *error = v23[5];
    }
  }

  v14 = *(v29 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14;
}

void __66__BGSystemTask_deregisterThroughputTrackingFor_withEndTime_error___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) performanceMetricIdentifier];
  if (!v3 || (v4 = v3, [*v2 reportingUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v9 = [*(a1 + 40) throughputMetricsMap];
  v10 = [*(a1 + 32) performanceMetricIdentifier];
  v11 = [v9 objectForKey:v10];

  if (v11 && ([*v2 reportingUUID], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:", v12), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    if (*(a1 + 48))
    {
      [*v2 setEndTimestamp:?];
    }

    else
    {
      v18 = [MEMORY[0x1E695DF00] date];
      [*v2 setEndTimestamp:v18];
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = v11;
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      while (2)
      {
        v23 = 0;
        do
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [v19 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * v23)];
          if (!v24)
          {

            goto LABEL_11;
          }

          v25 = v24;
          v26 = [v24 endTimestamp];

          if (!v26)
          {
            v27 = 0;
            goto LABEL_25;
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v27 = 1;
LABEL_25:

    if (v27 && (*(*(*(a1 + 64) + 8) + 24) & 1) != 0)
    {
      v28 = *(a1 + 40);
      v29 = [*(a1 + 32) performanceMetricIdentifier];
      v30 = *(*(a1 + 56) + 8);
      obj = *(v30 + 40);
      LOBYTE(v28) = [v28 queue_reportThroughputForPerformanceMetric:v29 error:&obj];
      objc_storeStrong((v30 + 40), obj);
      *(*(*(a1 + 64) + 8) + 24) = v28;
    }
  }

  else
  {
    v14 = +[BGSystemTask logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __66__BGSystemTask_deregisterThroughputTrackingFor_withEndTime_error___block_invoke_cold_1(v2, v14);
    }

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

LABEL_11:
}

- (BOOL)queue_reportThroughputForPerformanceMetric:(id)metric error:(id *)error
{
  v88 = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  performanceMetricQueue = [(BGSystemTask *)self performanceMetricQueue];
  dispatch_assert_queue_V2(performanceMetricQueue);

  v8 = 0x1E7B23000uLL;
  v9 = +[BGSystemTask logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v80 = metricCopy;
    _os_log_impl(&dword_1B236A000, v9, OS_LOG_TYPE_DEFAULT, "Reporting throughput metrics for %@", buf, 0xCu);
  }

  selfCopy = self;
  throughputMetricsMap = [(BGSystemTask *)self throughputMetricsMap];
  v11 = [throughputMetricsMap objectForKeyedSubscript:metricCopy];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v12 = v11;
  v67 = [v12 countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (v67)
  {
    v64 = metricCopy;
    errorCopy = error;
    expectedMetricValue = 0;
    category = 0;
    v15 = 0;
    v68 = 0;
    v71 = 0;
    v16 = 0;
    taskName = 0;
    v66 = *v76;
    while (2)
    {
      v18 = 0;
      v19 = expectedMetricValue;
      v20 = v15;
      v21 = taskName;
      do
      {
        v72 = v20;
        v73 = v19;
        if (*v76 != v66)
        {
          objc_enumerationMutation(v12);
        }

        v22 = *(*(&v75 + 1) + 8 * v18);
        v23 = [v12 objectForKeyedSubscript:v22];
        v70 = [v23 itemCount] + v16;

        v24 = [v12 objectForKeyedSubscript:v22];
        startTimestamp = [v24 startTimestamp];
        v26 = [v12 objectForKeyedSubscript:v22];
        endTimestamp = [v26 endTimestamp];
        v28 = [startTimestamp compare:endTimestamp];

        if (v28 != -1)
        {
          v45 = +[BGSystemTask logger];
          metricCopy = v64;
          error = errorCopy;
          v44 = v71;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v59 = [v12 objectForKeyedSubscript:v22];
            endTimestamp2 = [v59 endTimestamp];
            v61 = [v12 objectForKeyedSubscript:v22];
            startTimestamp2 = [v61 startTimestamp];
            *buf = 138413058;
            v80 = endTimestamp2;
            v81 = 2112;
            v82 = startTimestamp2;
            v83 = 2112;
            v84 = v64;
            v85 = 2112;
            v86 = v22;
            _os_log_error_impl(&dword_1B236A000, v45, OS_LOG_TYPE_ERROR, "reportThroughputForPerformanceMetric: EndDate:%@ < StartDate:%@ for %@:%@", buf, 0x2Au);

            v44 = v71;
            error = errorCopy;
          }

          v42 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
          v43 = 0;
          goto LABEL_21;
        }

        v29 = v71;
        if (!v71 || ([v12 objectForKeyedSubscript:v22], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "startTimestamp"), v31 = objc_claimAutoreleasedReturnValue(), v31, v30, v31 < v71))
        {
          v32 = [v12 objectForKeyedSubscript:v22];
          startTimestamp3 = [v32 startTimestamp];

          v29 = startTimestamp3;
        }

        v71 = v29;
        if (!v68 || ([v12 objectForKeyedSubscript:v22], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "endTimestamp"), v35 = objc_claimAutoreleasedReturnValue(), v35, v34, v35 > v68))
        {
          v36 = [v12 objectForKeyedSubscript:v22];
          endTimestamp3 = [v36 endTimestamp];

          v68 = endTimestamp3;
        }

        v16 = v70;
        v38 = [v12 objectForKeyedSubscript:v22];
        taskName = [v38 taskName];

        v39 = [v12 objectForKeyedSubscript:v22];
        v15 = [v39 qos];

        v40 = [v12 objectForKeyedSubscript:v22];
        category = [v40 category];

        v41 = [v12 objectForKeyedSubscript:v22];
        expectedMetricValue = [v41 expectedMetricValue];

        ++v18;
        v19 = expectedMetricValue;
        v20 = v15;
        v21 = taskName;
      }

      while (v67 != v18);
      v67 = [v12 countByEnumeratingWithState:&v75 objects:v87 count:16];
      if (v67)
      {
        continue;
      }

      break;
    }

    v42 = 0;
    v43 = 1;
    v72 = v15;
    v73 = expectedMetricValue;
    v21 = taskName;
    metricCopy = v64;
    error = errorCopy;
    v44 = v29;
LABEL_21:
    v46 = v68;
    v8 = 0x1E7B23000;
  }

  else
  {
    v72 = 0;
    v73 = 0;
    category = 0;
    v46 = 0;
    v44 = 0;
    v70 = 0;
    v21 = 0;
    v42 = 0;
    v43 = 1;
  }

  if (v12 && v44 && v46 && [v46 compare:v44] == 1)
  {
    if (v43)
    {
      mEMORY[0x1E699A4B8] = [MEMORY[0x1E699A4B8] sharedScheduler];
      v69 = v46;
      v48 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v44 endDate:v46];
      [v48 duration];
      v74 = v42;
      v49 = [mEMORY[0x1E699A4B8] reportThroughputMetricsForIdentifier:metricCopy taskName:v21 itemCount:v70 totalDuration:v72 qos:category workloadCategory:v73 expectedValue:&v74 error:?];
      v50 = v74;

      throughputMetricsMap2 = [(BGSystemTask *)selfCopy throughputMetricsMap];
      [throughputMetricsMap2 removeObjectForKey:metricCopy];

      if (v49)
      {
        v52 = +[BGSystemTask logger];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v80 = metricCopy;
          _os_log_impl(&dword_1B236A000, v52, OS_LOG_TYPE_DEFAULT, "reportThroughputForPerformanceMetric: Reported throughput metrics successfully for %@", buf, 0xCu);
        }

        v53 = 1;
        v46 = v69;
        goto LABEL_40;
      }

      v46 = v69;
      v8 = 0x1E7B23000;
    }

    else
    {
      v50 = v42;
    }
  }

  else
  {
    v50 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];

    logger = [*(v8 + 3816) logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      identifier = [(BGSystemTask *)selfCopy identifier];
      *buf = 138413058;
      v80 = v46;
      v81 = 2112;
      v82 = v44;
      v83 = 2112;
      v84 = metricCopy;
      v85 = 2112;
      v86 = identifier;
      _os_log_error_impl(&dword_1B236A000, logger, OS_LOG_TYPE_ERROR, "reportThroughputForPerformanceMetric: EndDate:%@ < StartDate:%@ for %@:%@", buf, 0x2Au);
    }
  }

  logger2 = [*(v8 + 3816) logger];
  if (os_log_type_enabled(logger2, OS_LOG_TYPE_ERROR))
  {
    [BGSystemTask queue_reportThroughputForPerformanceMetric:metricCopy error:logger2];
  }

  if (error)
  {
    v56 = v50;
    v53 = 0;
    *error = v50;
  }

  else
  {
    v53 = 0;
  }

LABEL_40:

  return v53;
}

void __51__BGSystemTask_setTaskExpiredWithRetryAfter_error___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_1B236A000, a2, OS_LOG_TYPE_ERROR, "setTaskExpiredWithRetryAfter: Invalid value for seconds: %lf", &v3, 0xCu);
}

- (void)consumedResults:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)resetResultsForIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)reportCumulativeResultConsumptionWithError:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __77__BGSystemTask_sendTaskWorkloadProgressToPPS_completed_category_subCategory___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) identifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1B236A000, a2, OS_LOG_TYPE_ERROR, "reportTaskWorkloadProgress: failed for %{public}@", &v4, 0xCu);
}

- (void)registerThroughputTrackingFor:withStartTime:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)deregisterThroughputTrackingFor:withEndTime:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __66__BGSystemTask_deregisterThroughputTrackingFor_withEndTime_error___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [*a1 performanceMetricIdentifier];
  v5 = [*a1 reportingUUID];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1B236A000, a2, OS_LOG_TYPE_ERROR, "deregisterThroughputTrackingFor: %@:%@ hasn't been registered for throughput tracking. Use registerThroughputTrackingFor to register", &v6, 0x16u);
}

- (void)queue_reportThroughputForPerformanceMetric:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B236A000, a2, OS_LOG_TYPE_ERROR, "reportThroughputForPerformanceMetric: Failed to report throughput metrics successfully for %@", &v2, 0xCu);
}

@end