@interface C2SessionTask
+ (double)captureMetricDurationBetweenStart:(double)start andEnd:(double)end;
+ (double)captureMetricsForTimingData:(id)data withKey:(id)key;
+ (void)initialize;
- (BOOL)callbackHung;
- (C2SessionTask)initWithOptions:(id)options delegate:(id)delegate sessionTaskDelegate:(id)taskDelegate;
- (id)taskDescription;
- (id)taskIdentifier;
- (void)C2Session:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)captureMetricsWithError:(id)error eventType:(int64_t)type;
- (void)dealloc;
- (void)handleCallbackForTask:(id)task callback:(id)callback;
- (void)invalidate;
- (void)setTask:(id)task;
- (void)testBehavior_triggerCallbackHang;
@end

@implementation C2SessionTask

- (id)taskDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  task = selfCopy->_task;
  if (!task)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"C2SessionTask.m" lineNumber:115 description:@"task must not be nil"];

    task = selfCopy->_task;
  }

  taskDescription = [(NSURLSessionDataTask *)task taskDescription];
  if (!taskDescription)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"C2SessionTask.m" lineNumber:117 description:@"task description must not be nil"];
  }

  objc_sync_exit(selfCopy);

  return taskDescription;
}

- (id)taskIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  task = selfCopy->_task;
  if (!task)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"C2SessionTask.m" lineNumber:125 description:@"task must not be nil"];

    task = selfCopy->_task;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSURLSessionDataTask taskIdentifier](task, "taskIdentifier")}];
  if (!v5)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"C2SessionTask.m" lineNumber:127 description:@"task identifier must not be nil"];
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  v3 = obj;
  if (obj->_isComplete)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:obj file:@"C2SessionTask.m" lineNumber:134 description:@"received duplicate callbacks"];

    v3 = obj;
  }

  v3->_isComplete = 1;
  task = v3->_task;
  v3->_task = 0;

  delegate = obj->_delegate;
  obj->_delegate = 0;

  objc_sync_exit(obj);
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"C2SessionTask.m" lineNumber:157 description:@"should be complete"];
}

+ (void)initialize
{
  if (!callbackHealthQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.c2.callback.health", v4);
    v3 = callbackHealthQueue;
    callbackHealthQueue = v2;
  }
}

- (C2SessionTask)initWithOptions:(id)options delegate:(id)delegate sessionTaskDelegate:(id)taskDelegate
{
  v33 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  delegateCopy = delegate;
  taskDelegateCopy = taskDelegate;
  v12 = taskDelegateCopy;
  if (optionsCopy && delegateCopy && taskDelegateCopy)
  {
    v26.receiver = self;
    v26.super_class = C2SessionTask;
    v13 = [(C2SessionTask *)&v26 init];
    v14 = v13;
    if (v13)
    {
      task = v13->_task;
      v13->_task = 0;

      objc_storeStrong(&v14->_options, options);
      objc_storeStrong(&v14->_delegate, delegate);
      objc_storeStrong(&v14->_sessionTaskDelegate, taskDelegate);
      v16 = _os_activity_create(&dword_242158000, "c2-request-task", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      activity = v14->_activity;
      v14->_activity = v16;

      if (v14->_activity)
      {
        v14->_isComplete = 0;
        Current = CFAbsoluteTimeGetCurrent();
        v14->_initTime = Current;
        v14->_resetTime = Current;
        v14->_attemptCount = 0;
        v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
        outstandingCallbacks = v14->_outstandingCallbacks;
        v14->_outstandingCallbacks = v19;
LABEL_23:

        self = v14;
        selfCopy = self;
        goto LABEL_24;
      }

      if (C2_DEFAULT_LOG_BLOCK_4 != -1)
      {
        [C2SessionTask initWithOptions:delegate:sessionTaskDelegate:];
      }

      v23 = C2_DEFAULT_LOG_INTERNAL_4;
      if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_242158000, v23, OS_LOG_TYPE_ERROR, "failed to create os_activity for C2SessionTask", buf, 2u);
      }
    }

    if (C2_DEFAULT_LOG_BLOCK_4 != -1)
    {
      [C2SessionTask initWithOptions:delegate:sessionTaskDelegate:];
    }

    v24 = C2_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_242158000, v24, OS_LOG_TYPE_ERROR, "failed to create C2SessionTask", buf, 2u);
    }

    if (v14)
    {
      v14->_isComplete = 1;
      outstandingCallbacks = v14;
      v14 = 0;
    }

    else
    {
      outstandingCallbacks = 0;
    }

    goto LABEL_23;
  }

  if (C2_DEFAULT_LOG_BLOCK_4 != -1)
  {
    [C2SessionTask initWithOptions:delegate:sessionTaskDelegate:];
  }

  v21 = C2_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v28 = optionsCopy;
    v29 = 2114;
    v30 = delegateCopy;
    v31 = 2114;
    v32 = v12;
    _os_log_impl(&dword_242158000, v21, OS_LOG_TYPE_ERROR, "missing required arguments - [C2SessionTask initWithOptions:%{public}@ delegate:%{public}@ sessionTaskDelegate:%{public}@]", buf, 0x20u);
  }

  selfCopy = 0;
LABEL_24:

  return selfCopy;
}

uint64_t __62__C2SessionTask_initWithOptions_delegate_sessionTaskDelegate___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __62__C2SessionTask_initWithOptions_delegate_sessionTaskDelegate___block_invoke_12()
{
  C2_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __62__C2SessionTask_initWithOptions_delegate_sessionTaskDelegate___block_invoke_15()
{
  C2_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)handleCallbackForTask:(id)task callback:(id)callback
{
  v23 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  callbackCopy = callback;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isComplete)
  {
    v10 = 0;
  }

  else
  {
    v10 = selfCopy->_delegate;
    if (v10)
    {
      task = selfCopy->_task;
      if (!task)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"C2SessionTask.m" lineNumber:84 description:@"task must not be nil"];

        task = selfCopy->_task;
      }

      taskIdentifier = [(NSURLSessionDataTask *)task taskIdentifier];
      if (taskIdentifier != [taskCopy taskIdentifier])
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"C2SessionTask.m" lineNumber:85 description:{@"taskIdentifier (%llu) found but expected (%llu).", -[NSURLSessionDataTask taskIdentifier](selfCopy->_task, "taskIdentifier"), objc_msgSend(taskCopy, "taskIdentifier")}];
      }
    }
  }

  v13 = objc_alloc_init(C2SessionCallbackMetrics);
  [(C2SessionCallbackMetrics *)v13 setStartTime:mach_absolute_time()];
  [(NSMutableSet *)selfCopy->_outstandingCallbacks addObject:v13];
  objc_sync_exit(selfCopy);

  callbackCopy[2](callbackCopy, selfCopy, v10);
  v14 = selfCopy;
  objc_sync_enter(v14);
  [(NSMutableSet *)selfCopy->_outstandingCallbacks removeObject:v13];
  objc_sync_exit(v14);

  mach_absolute_time();
  [(C2SessionCallbackMetrics *)v13 startTime];
  TMConvertTicksToSeconds();
  v16 = v15;
  if (v15 > 1.0)
  {
    if (C2_DEFAULT_LOG_BLOCK_4 != -1)
    {
      [C2SessionTask handleCallbackForTask:callback:];
    }

    v17 = C2_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v22 = v16;
      _os_log_impl(&dword_242158000, v17, OS_LOG_TYPE_ERROR, "C2RequestDelegate took %.3f seconds.", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);
}

uint64_t __48__C2SessionTask_handleCallbackForTask_callback___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)setTask:(id)task
{
  v14 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  if (C2_DEFAULT_LOG_BLOCK_4 != -1)
  {
    [C2SessionTask setTask:];
  }

  v6 = C2_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = taskCopy;
    _os_log_impl(&dword_242158000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@ setTask:%{public}@]", &v10, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (selfCopy2->_task)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy2 file:@"C2SessionTask.m" lineNumber:107 description:@"task must be nil"];
  }

  task = selfCopy2->_task;
  selfCopy2->_task = taskCopy;

  objc_sync_exit(selfCopy2);
}

uint64_t __25__C2SessionTask_setTask___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (BOOL)callbackHung
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableSet *)selfCopy->_outstandingCallbacks count])
  {
    mach_absolute_time();
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = selfCopy->_outstandingCallbacks;
    v4 = 0;
    v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v12 + 1) + 8 * i) startTime];
          TMConvertTicksToSeconds();
          v9 = v8;
          [(C2RequestOptions *)selfCopy->_options taskCallbackConsideredHangInSeconds];
          v4 |= v9 > v10;
        }

        v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  return v4 & 1;
}

- (void)testBehavior_triggerCallbackHang
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = selfCopy->_outstandingCallbacks;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = mach_absolute_time();
        TMConvertTicksToSeconds();
        v10 = v9;
        [(C2RequestOptions *)selfCopy->_options taskCallbackConsideredHangInSeconds];
        [v7 setStartTime:(v8 - (v8 / v10) * (v11 + v11))];
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

+ (double)captureMetricsForTimingData:(id)data withKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  if (dataCopy)
  {
    v7 = [dataCopy objectForKeyedSubscript:keyCopy];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v7;
        [v7 doubleValue];
        v9 = v8;

        goto LABEL_7;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = -1.0;
LABEL_7:
  if (v9 == 0.0)
  {
    v9 = -1.0;
  }

  return v9;
}

+ (double)captureMetricDurationBetweenStart:(double)start andEnd:(double)end
{
  v4 = end == -1.0 || start == -1.0;
  result = end - start;
  if (v4)
  {
    return -1.0;
  }

  return result;
}

- (void)captureMetricsWithError:(id)error eventType:(int64_t)type
{
  v356 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  _timingData = [(NSURLSessionDataTask *)self->_task _timingData];
  transactionMetrics = [(NSURLSessionTaskMetrics *)self->_taskMetrics transactionMetrics];
  lastObject = [transactionMetrics lastObject];

  _dataTransferReport = [lastObject _dataTransferReport];
  currentRequest = [(NSURLSessionDataTask *)self->_task currentRequest];
  v12 = [currentRequest URL];
  v260 = qos_class_self();
  [C2SessionTask captureMetricsForTimingData:_timingData withKey:@"_kCFNTimingDataDomainLookupStart"];
  v14 = v13;
  [C2SessionTask captureMetricsForTimingData:_timingData withKey:@"_kCFNTimingDataDomainLookupEnd"];
  v16 = v15;
  [C2SessionTask captureMetricsForTimingData:_timingData withKey:@"_kCFNTimingDataConnectStart"];
  v18 = v17;
  [C2SessionTask captureMetricsForTimingData:_timingData withKey:@"_kCFNTimingDataConnectEnd"];
  v266 = v19;
  [C2SessionTask captureMetricsForTimingData:_timingData withKey:@"_kCFNTimingDataSecureConnectionStart"];
  v21 = v20;
  [C2SessionTask captureMetricsForTimingData:_timingData withKey:@"_kCFNTimingDataRequestStart"];
  v23 = v22;
  [C2SessionTask captureMetricsForTimingData:_timingData withKey:@"_kCFNTimingDataRequestEnd"];
  v25 = v24;
  [C2SessionTask captureMetricsForTimingData:_timingData withKey:@"_kCFNTimingDataResponseStart"];
  v27 = v26;
  [C2SessionTask captureMetricsForTimingData:_timingData withKey:@"_kCFNTimingDataResponseEnd"];
  v29 = v28;
  if (C2_DEFAULT_LOG_BLOCK_4 != -1)
  {
    [C2SessionTask captureMetricsWithError:eventType:];
  }

  v30 = C2_DEFAULT_LOG_INTERNAL_4;
  typeCopy = type;
  v269 = errorCopy;
  report = _dataTransferReport;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v262 = currentRequest;
    taskDescription = [(NSURLSessionDataTask *)self->_task taskDescription];
    v32 = &stru_28546BCE0;
    v250 = taskDescription;
    if (taskDescription)
    {
      v33 = taskDescription;
    }

    else
    {
      v33 = &stru_28546BCE0;
    }

    v246 = v33;
    host = [v12 host];
    v249 = host;
    if (host)
    {
      v35 = host;
    }

    else
    {
      v35 = &stru_28546BCE0;
    }

    v245 = v35;
    if (_timingData)
    {
      v36 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataRemoteAddressAndPort"];
      v216 = v36;
      if (v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = &stru_28546BCE0;
      }

      v244 = v37;
      v38 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataLocalAddressAndPort"];
      v215 = v38;
      if (v38)
      {
        v39 = v38;
      }

      else
      {
        v39 = &stru_28546BCE0;
      }

      v243 = v39;
      v40 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataConnectionUUID"];
      v214 = v40;
      if (v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = &stru_28546BCE0;
      }

      v242 = v41;
    }

    else
    {
      v243 = &stru_28546BCE0;
      v244 = &stru_28546BCE0;
      v242 = &stru_28546BCE0;
    }

    v42 = [C2RequestOptions stringForQualityOfService:v260];
    v248 = v42;
    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = &stru_28546BCE0;
    }

    v241 = v43;
    if (_timingData)
    {
      v44 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataConnectionReused"];
      v213 = v44;
      if (v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = &stru_28546BCE0;
      }

      v240 = v45;
      v46 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataConnectionInterfaceIdentifier"];
      v212 = v46;
      if (v46)
      {
        v47 = v46;
      }

      else
      {
        v47 = &stru_28546BCE0;
      }

      v239 = v47;
    }

    else
    {
      v239 = &stru_28546BCE0;
      v240 = &stru_28546BCE0;
    }

    c2_NegotiatedTLSProtocolVersionString = [lastObject c2_NegotiatedTLSProtocolVersionString];
    v264 = lastObject;
    log = v30;
    if (_timingData)
    {
      v48 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataNetworkProtocolName"];
      v211 = v48;
      if (v48)
      {
        v49 = v48;
      }

      else
      {
        v49 = &stru_28546BCE0;
      }

      v237 = v49;
      v50 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataRequestHeaderSize"];
      v210 = v50;
      if (v50)
      {
        v51 = v50;
      }

      else
      {
        v51 = &stru_28546BCE0;
      }

      v235 = v51;
      countOfBytesSent = [(NSURLSessionDataTask *)self->_task countOfBytesSent];
      v52 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataResponseHeaderSize"];
      v209 = v52;
      if (v52)
      {
        v53 = v52;
      }

      else
      {
        v53 = &stru_28546BCE0;
      }

      v234 = v53;
      v54 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataResponseBodyBytesReceived"];
      v208 = v54;
      if (v54)
      {
        v55 = v54;
      }

      else
      {
        v55 = &stru_28546BCE0;
      }

      v232 = v55;
    }

    else
    {
      countOfBytesSent = [(NSURLSessionDataTask *)self->_task countOfBytesSent];
      v237 = &stru_28546BCE0;
      v234 = &stru_28546BCE0;
      v235 = &stru_28546BCE0;
      v232 = &stru_28546BCE0;
    }

    if (errorCopy)
    {
      v56 = @"T";
    }

    else
    {
      v56 = @"F";
    }

    v251 = v14;
    [C2SessionTask captureMetricDurationBetweenStart:v14 andEnd:v16];
    v230 = v57;
    v252 = v16;
    [C2SessionTask captureMetricDurationBetweenStart:v16 andEnd:v18];
    v228 = v58;
    [C2SessionTask captureMetricDurationBetweenStart:v18 andEnd:v266];
    v227 = v59;
    v253 = v18;
    [C2SessionTask captureMetricDurationBetweenStart:v18 andEnd:v21];
    v238 = v60;
    v270 = v21;
    [C2SessionTask captureMetricDurationBetweenStart:v21 andEnd:v23];
    v62 = v61;
    [C2SessionTask captureMetricDurationBetweenStart:v266 andEnd:v23];
    v64 = v63;
    [C2SessionTask captureMetricDurationBetweenStart:v23 andEnd:v25];
    v65 = v25;
    v67 = v66;
    v254 = v65;
    [C2SessionTask captureMetricDurationBetweenStart:v65 andEnd:v27];
    v233 = v68;
    v255 = v27;
    [C2SessionTask captureMetricDurationBetweenStart:v27 andEnd:v29];
    v70 = v69;
    v256 = v29;
    [C2SessionTask captureMetricDurationBetweenStart:v23 andEnd:v29];
    v72 = v71;
    if ([(C2RequestOptions *)self->_options outOfProcess])
    {
      v73 = @"T";
    }

    else
    {
      v73 = @"F";
    }

    v224 = v73;
    if ([(C2RequestOptions *)self->_options allowsCellularAccess])
    {
      v74 = @"T";
    }

    else
    {
      v74 = @"F";
    }

    v225 = v74;
    if ([(C2RequestOptions *)self->_options _allowsExpensiveAccess])
    {
      v75 = @"T";
    }

    else
    {
      v75 = @"F";
    }

    v223 = v75;
    if ([(C2RequestOptions *)self->_options _allowsPowerNapScheduling])
    {
      v76 = @"T";
    }

    else
    {
      v76 = @"F";
    }

    v222 = v76;
    _sourceApplicationBundleIdentifier = [(C2RequestOptions *)self->_options _sourceApplicationBundleIdentifier];
    v231 = _sourceApplicationBundleIdentifier;
    if (_sourceApplicationBundleIdentifier)
    {
      v78 = _sourceApplicationBundleIdentifier;
    }

    else
    {
      v78 = &stru_28546BCE0;
    }

    v221 = v78;
    _sourceApplicationSecondaryIdentifier = [(C2RequestOptions *)self->_options _sourceApplicationSecondaryIdentifier];
    v229 = _sourceApplicationSecondaryIdentifier;
    if (_sourceApplicationSecondaryIdentifier)
    {
      v80 = _sourceApplicationSecondaryIdentifier;
    }

    else
    {
      v80 = &stru_28546BCE0;
    }

    v220 = v80;
    outOfProcessPoolName = [(C2RequestOptions *)self->_options outOfProcessPoolName];
    v226 = outOfProcessPoolName;
    if (outOfProcessPoolName)
    {
      v82 = outOfProcessPoolName;
    }

    else
    {
      v82 = &stru_28546BCE0;
    }

    v219 = v82;
    if ([(C2RequestOptions *)self->_options tlsPinning])
    {
      v83 = @"T";
    }

    else
    {
      v83 = @"F";
    }

    v218 = v83;
    if ([(C2RequestOptions *)self->_options _allowsRetryForBackgroundDataTasks])
    {
      v84 = @"T";
    }

    else
    {
      v84 = @"F";
    }

    v217 = v84;
    [C2RequestOptions stringForDiscretionaryNetworkBehavior:[(C2RequestOptions *)self->_options discretionaryNetworkBehavior]];
    v86 = v85 = self;
    v87 = [C2RequestOptions stringForDuetPreClearedMode:[(C2RequestOptions *)v85->_options duetPreClearedMode]];
    [(C2RequestOptions *)v85->_options _timeoutIntervalForRequest];
    v89 = v88;
    [(C2RequestOptions *)v85->_options _timeoutIntervalForResource];
    v91 = v90;
    _appleIDContextSessionIdentifier = [(C2RequestOptions *)v85->_options _appleIDContextSessionIdentifier];
    v93 = _appleIDContextSessionIdentifier;
    if (_appleIDContextSessionIdentifier)
    {
      v32 = _appleIDContextSessionIdentifier;
    }

    metricRequest = [(C2RequestOptions *)v85->_options metricRequest];
    v277 = v246;
    if (metricRequest)
    {
      v95 = @"T";
    }

    else
    {
      v95 = @"F";
    }

    v279 = v245;
    v281 = v244;
    v280 = 2113;
    v282 = 2113;
    v283 = v243;
    v285 = v242;
    v287 = v241;
    v289 = v240;
    v291 = v239;
    v295 = v237;
    v297 = v235;
    v299 = countOfBytesSent;
    v301 = v234;
    v303 = v232;
    v304 = 2112;
    v305 = v56;
    v327 = v224;
    v307 = v230;
    v309 = v228;
    v311 = v227;
    v315 = v62;
    v317 = v64;
    v319 = v67;
    v323 = v70;
    v325 = v72;
    v329 = v225;
    v331 = v223;
    v333 = v222;
    v335 = v221;
    v337 = v220;
    v339 = v219;
    v341 = v218;
    v343 = v217;
    v298 = 2048;
    v306 = 2048;
    v308 = 2048;
    v310 = 2048;
    v312 = 2048;
    v314 = 2048;
    v316 = 2048;
    v318 = 2048;
    v320 = 2048;
    v322 = 2048;
    v324 = 2048;
    v348 = 2048;
    v350 = 2048;
    v355 = v95;
    v347 = v87;
    v349 = v89;
    v351 = v91;
    v353 = v32;
    v278 = 2114;
    v284 = 2114;
    v286 = 2114;
    v288 = 2114;
    v290 = 2114;
    v292 = 2114;
    v294 = 2114;
    v296 = 2114;
    v300 = 2114;
    v302 = 2114;
    v326 = 2114;
    v328 = 2114;
    v330 = 2114;
    v332 = 2114;
    v334 = 2114;
    v336 = 2114;
    v338 = 2114;
    v340 = 2114;
    v342 = 2114;
    v344 = 2114;
    v346 = 2114;
    v352 = 2114;
    v354 = 2114;
    *buf = 138553347;
    v293 = c2_NegotiatedTLSProtocolVersionString;
    v313 = v238;
    v321 = v233;
    v345 = v86;
    _os_log_impl(&dword_242158000, log, OS_LOG_TYPE_DEFAULT, "captureMetricsForTask=%{public}@:host=%{public}@:remoteAddress=%{private}@:localAddress=%{private}@:connectionUUID=%{public}@:qualityOfService=%{public}@:reuse=%{public}@:i=%{public}@:tlsVersion=%{public}@:protocol=%{public}@:requestHeaderBytes=%{public}@:requestBodyBytes=%llu:responseHeaderBytes=%{public}@:responseBodyBytes=%{public}@:err=%@:dnsDuration=%.3f:tcpStartDelay=%.3f:tcpDuration=%.3f:sslStartDelay=%.3f:sslDuration=%.3f:requestStartDelay=%.3f:requestDuration=%.3f:responseStartDelay=%.3f:responseDuration=%.3f:transactionDuration=%.3f:outOfProcess=%{public}@:allowCellular=%{public}@:allowExpensive=%{public}@:powerNap=%{public}@:app=%{public}@:2app=%{public}@:pool=%{public}@:tlsPinning=%{public}@:retryNetworkFailures=%{public}@:disc=%{public}@:duet=%{public}@:reqTimeout=%.2f:resTimeout=%.2f:appleIdSessionId=%{public}@:metricRequest=%{public}@", buf, 0x192u);

    v96 = v87;
    if (_timingData)
    {

      v97 = c2_NegotiatedTLSProtocolVersionString;
      currentRequest = v262;
      v98 = v215;
      v99 = v216;
    }

    else
    {
      v98 = c2_NegotiatedTLSProtocolVersionString;
      v99 = v248;
      v97 = c2_NegotiatedTLSProtocolVersionString;
      currentRequest = v262;
    }

    errorCopy = v269;
    lastObject = v264;
    v27 = v255;
    v29 = v256;
    v25 = v254;
    v21 = v270;
    v16 = v252;
    v18 = v253;
    v14 = v251;
    v30 = log;
    self = v85;
  }

  if (errorCopy)
  {
    v100 = @"RetryableNetworkingError";
    if (type == 1)
    {
      v100 = @"NetworkingError";
    }

    v101 = v100;
    if (C2_DEFAULT_LOG_BLOCK_4 != -1)
    {
      [C2SessionTask captureMetricsWithError:eventType:];
    }

    v102 = C2_DEFAULT_LOG_INTERNAL_4;
    [C2Logging printToLog:v102 withDescription:v101 object:errorCopy];

    type = typeCopy;
  }

  metricOptions = [(C2RequestOptions *)self->_options metricOptions];
  if (metricOptions)
  {
    v104 = metricOptions;
    v105 = +[C2RequestOptions triesteMetricsEnabled];

    if (v105)
    {
      v263 = currentRequest;
      v265 = lastObject;
      v106 = objc_opt_new();
      v107 = objc_opt_new();
      [v106 setObject:v107 forKeyedSubscript:@"client"];
      taskDescription2 = [(NSURLSessionDataTask *)self->_task taskDescription];
      [v107 setObject:taskDescription2 forKeyedSubscript:@"taskDescription"];

      if (errorCopy)
      {
        v109 = @"T";
      }

      else
      {
        v109 = @"F";
      }

      loga = v107;
      [v107 setObject:v109 forKeyedSubscript:@"error"];
      v110 = objc_opt_new();
      [v106 setObject:v110 forKeyedSubscript:@"timing"];
      if (v14 != -1.0)
      {
        v111 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[C2Time convertTimeIntervalToServerTime:](C2Time, "convertTimeIntervalToServerTime:", v14)}];
        [v110 setObject:v111 forKeyedSubscript:@"dnsStart"];
      }

      if (v16 != -1.0)
      {
        v112 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[C2Time convertTimeIntervalToServerTime:](C2Time, "convertTimeIntervalToServerTime:", v16)}];
        [v110 setObject:v112 forKeyedSubscript:@"dnsEnd"];
      }

      if (v18 != -1.0)
      {
        v113 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[C2Time convertTimeIntervalToServerTime:](C2Time, "convertTimeIntervalToServerTime:", v18)}];
        [v110 setObject:v113 forKeyedSubscript:@"tcpStart"];
      }

      if (v266 != -1.0)
      {
        v114 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[C2Time convertTimeIntervalToServerTime:](C2Time, "convertTimeIntervalToServerTime:", v266)}];
        [v110 setObject:v114 forKeyedSubscript:@"tcpEnd"];
      }

      if (v21 != -1.0)
      {
        v115 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[C2Time convertTimeIntervalToServerTime:](C2Time, "convertTimeIntervalToServerTime:", v21)}];
        [v110 setObject:v115 forKeyedSubscript:@"sslStart"];
      }

      if (v23 != -1.0)
      {
        v116 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[C2Time convertTimeIntervalToServerTime:](C2Time, "convertTimeIntervalToServerTime:", v23)}];
        [v110 setObject:v116 forKeyedSubscript:@"reqStart"];
      }

      if (v25 != -1.0)
      {
        v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[C2Time convertTimeIntervalToServerTime:](C2Time, "convertTimeIntervalToServerTime:", v25)}];
        [v110 setObject:v117 forKeyedSubscript:@"reqEnd"];
      }

      if (v27 != -1.0)
      {
        v118 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[C2Time convertTimeIntervalToServerTime:](C2Time, "convertTimeIntervalToServerTime:", v27)}];
        [v110 setObject:v118 forKeyedSubscript:@"resStart"];
      }

      v267 = _timingData;
      if (v29 != -1.0)
      {
        v119 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[C2Time convertTimeIntervalToServerTime:](C2Time, "convertTimeIntervalToServerTime:", v29)}];
        [v110 setObject:v119 forKeyedSubscript:@"resEnd"];
      }

      v120 = objc_opt_new();
      [v106 setObject:v120 forKeyedSubscript:@"request"];
      v121 = MEMORY[0x277CCACA8];
      scheme = [v12 scheme];
      [v12 host];
      v124 = v123 = v12;
      port = [v123 port];
      v261 = v123;
      path = [v123 path];
      v126 = [v121 stringWithFormat:@"%@://%@:%@/%@", scheme, v124, port, path];
      [v120 setObject:v126 forKeyedSubscript:@"urlWithoutQuery"];

      _timingData = v267;
      if (v267)
      {
        v128 = [v267 objectForKeyedSubscript:@"_kCFNTimingDataRequestHeaderSize"];
        v129 = v128;
        if (v128)
        {
          v130 = v128;
        }

        else
        {
          v130 = &stru_28546BCE0;
        }

        [v120 setObject:v130 forKeyedSubscript:@"headerBytes"];
      }

      else
      {
        [v120 setObject:&stru_28546BCE0 forKeyedSubscript:@"headerBytes"];
      }

      currentRequest2 = [(NSURLSessionDataTask *)self->_task currentRequest];
      v132 = [currentRequest2 valueForHTTPHeaderField:@"X-Apple-Request-UUID"];
      [v120 setObject:v132 forKeyedSubscript:@"uuid"];

      v133 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[NSURLSessionDataTask countOfBytesSent](self->_task, "countOfBytesSent")}];
      [v120 setObject:v133 forKeyedSubscript:@"bodyBytes"];

      v134 = objc_opt_new();
      [v106 setObject:v134 forKeyedSubscript:@"response"];
      if (v267)
      {
        v135 = [v267 objectForKeyedSubscript:@"_kCFNTimingDataResponseHeaderSize"];
        v136 = v135;
        if (v135)
        {
          v137 = v135;
        }

        else
        {
          v137 = &stru_28546BCE0;
        }

        [v134 setObject:v137 forKeyedSubscript:@"headerBytes"];
      }

      else
      {
        [v134 setObject:&stru_28546BCE0 forKeyedSubscript:@"headerBytes"];
      }

      response = [(NSURLSessionDataTask *)self->_task response];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v140 = MEMORY[0x277CCABB0];
        response2 = [(NSURLSessionDataTask *)self->_task response];
        v142 = [v140 numberWithUnsignedLongLong:{objc_msgSend(response2, "statusCode")}];
        [v134 setObject:v142 forKeyedSubscript:@"statusCode"];

        response3 = [(NSURLSessionDataTask *)self->_task response];
        allHeaderFields = [response3 allHeaderFields];
        v145 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-Request-UUID"];
        [v134 setObject:v145 forKeyedSubscript:@"uuid"];

        _timingData = v267;
      }

      if (_timingData)
      {
        v146 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataResponseBodyBytesReceived"];
        v147 = v146;
        if (v146)
        {
          v148 = v146;
        }

        else
        {
          v148 = &stru_28546BCE0;
        }

        [v134 setObject:v148 forKeyedSubscript:@"bodyBytes"];
      }

      else
      {
        [v134 setObject:&stru_28546BCE0 forKeyedSubscript:@"bodyBytes"];
      }

      v149 = MEMORY[0x277CCAAA0];
      v274 = @"triesteSummary";
      v275 = v106;
      v150 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v275 forKeys:&v274 count:1];
      v151 = [v149 dataWithJSONObject:v150 options:1 error:0];

      v152 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v151 encoding:4];
      if (C2_TRIESTE_LOG_BLOCK != -1)
      {
        [C2SessionTask captureMetricsWithError:eventType:];
      }

      currentRequest = v263;
      v153 = C2_TRIESTE_LOG_INTERNAL;
      if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v277 = v152;
        _os_log_impl(&dword_242158000, v153, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      errorCopy = v269;
      lastObject = v265;
      _dataTransferReport = report;
      v12 = v261;
      type = typeCopy;
    }
  }

  metricOptions2 = [(C2RequestOptions *)self->_options metricOptions];
  if (!metricOptions2 || [(C2RequestOptions *)self->_options metricRequest])
  {

    if (type == 2)
    {
      goto LABEL_150;
    }

    goto LABEL_151;
  }

  if (type == 2)
  {
LABEL_150:
    ++self->_attemptCount;
    self->_resetTime = CFAbsoluteTimeGetCurrent();
    goto LABEL_151;
  }

  if (type == 1)
  {
    response4 = [(NSURLSessionDataTask *)self->_task response];
    objc_opt_class();
    v156 = objc_opt_isKindOfClass();

    if (v156)
    {
      response5 = [(NSURLSessionDataTask *)self->_task response];
      allHeaderFields2 = [response5 allHeaderFields];
      v159 = [allHeaderFields2 objectForKey:@"x-apple-report-metrics"];
      v160 = v159 != 0;
    }

    else
    {
      v160 = 0;
    }

    metricOptions3 = [(C2RequestOptions *)self->_options metricOptions];
    v162 = [metricOptions3 generateTriggerWithResponseHeader:v160];

    v163 = objc_alloc_init(C2MPNetworkEvent);
    v164 = v163;
    if (v163)
    {
      v273 = v162;
      [(C2MPNetworkEvent *)v163 setTriggers:v162];
      metricOptions4 = [(C2RequestOptions *)self->_options metricOptions];
      -[C2MPNetworkEvent setReportFrequency:](v164, "setReportFrequency:", [metricOptions4 reportFrequency]);

      metricOptions5 = [(C2RequestOptions *)self->_options metricOptions];
      -[C2MPNetworkEvent setReportFrequencyBase:](v164, "setReportFrequencyBase:", [metricOptions5 reportFrequencyBase]);

      taskDescription3 = [(NSURLSessionDataTask *)self->_task taskDescription];
      [(C2MPNetworkEvent *)v164 setNetworkTaskDescription:taskDescription3];

      if (-[C2RequestOptions redactRemoteEndpointFromNetworkMetrics](self->_options, "redactRemoteEndpointFromNetworkMetrics") || [lastObject isProxyConnection])
      {
        [(C2MPNetworkEvent *)v164 setNetworkHostname:@"redacted"];
        [(C2MPNetworkEvent *)v164 setNetworkRemoteAddresssAndPort:@"redacted"];
      }

      else
      {
        host2 = [v12 host];
        [(C2MPNetworkEvent *)v164 setNetworkHostname:host2];

        v169 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataRemoteAddressAndPort"];
        [(C2MPNetworkEvent *)v164 setNetworkRemoteAddresssAndPort:v169];
      }

      v170 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataConnectionUUID"];
      [(C2MPNetworkEvent *)v164 setNetworkConnectionUuid:v170];

      v171 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataConnectionReused"];
      -[C2MPNetworkEvent setNetworkConnectionReused:](v164, "setNetworkConnectionReused:", [v171 BOOLValue]);

      v172 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataConnectionInterfaceIdentifier"];
      [(C2MPNetworkEvent *)v164 setNetworkInterfaceIdentifier:v172];

      v173 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataNetworkProtocolName"];
      [(C2MPNetworkEvent *)v164 setNetworkProtocolName:v173];

      v174 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataRequestHeaderSize"];
      -[C2MPNetworkEvent setNetworkRequestHeaderSize:](v164, "setNetworkRequestHeaderSize:", [v174 intValue]);

      [(C2MPNetworkEvent *)v164 setNetworkRequestBodyBytesSent:[(NSURLSessionDataTask *)self->_task countOfBytesSent]];
      v175 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataResponseHeaderSize"];
      -[C2MPNetworkEvent setNetworkResponseHeaderSize:](v164, "setNetworkResponseHeaderSize:", [v175 intValue]);

      v176 = [_timingData objectForKeyedSubscript:@"_kCFNTimingDataResponseBodyBytesReceived"];
      -[C2MPNetworkEvent setNetworkResponseBodyBytesReceived:](v164, "setNetworkResponseBodyBytesReceived:", [v176 longLongValue]);

      v177 = [_timingData objectForKeyedSubscript:@"_kCFNBackgroundMetricsIsDiscretionary"];
      v178 = v177;
      if (v177)
      {
        [(C2MPNetworkEvent *)v164 setNetworkIsDiscretionary:[v177 BOOLValue]];
      }

      logb = v178;
      transactionMetrics2 = [(NSURLSessionTaskMetrics *)self->_taskMetrics transactionMetrics];
      lastObject2 = [transactionMetrics2 lastObject];
      c2_NegotiatedTLSProtocolVersionString2 = [lastObject2 c2_NegotiatedTLSProtocolVersionString];
      [(C2MPNetworkEvent *)v164 setNetworkNegotiatedTlsProtocolVersion:c2_NegotiatedTLSProtocolVersionString2];

      [(C2MPNetworkEvent *)v164 setNetworkPreviousAttemptCount:self->_attemptCount];
      if (v269)
      {
        v182 = [C2Metric generateError:?];
        [(C2MPNetworkEvent *)v164 setNetworkFatalError:v182];
      }

      response6 = [(NSURLSessionDataTask *)self->_task response];
      objc_opt_class();
      v184 = objc_opt_isKindOfClass();

      if (v184)
      {
        response7 = [(NSURLSessionDataTask *)self->_task response];
        -[C2MPNetworkEvent setNetworkStatusCode:](v164, "setNetworkStatusCode:", [response7 statusCode]);
      }

      v186 = report;
      if ([(C2RequestOptions *)self->_options redactUniformResourceIdentifierFromNetworkMetrics])
      {
        [(C2MPNetworkEvent *)v164 setNetworkRequestUri:@"redacted"];
      }

      else
      {
        currentRequest3 = [(NSURLSessionDataTask *)self->_task currentRequest];
        v188 = [currentRequest3 URL];
        path2 = [v188 path];
        [(C2MPNetworkEvent *)v164 setNetworkRequestUri:path2];
      }

      [(C2MPNetworkEvent *)v164 setTimestampC2Init:[C2Time convertTimeIntervalToServerTime:self->_initTime]];
      [(C2MPNetworkEvent *)v164 setTimestampC2Start:[C2Time convertTimeIntervalToServerTime:self->_resetTime]];
      [(C2MPNetworkEvent *)v164 setTimestampC2Now:[C2Time convertTimeIntervalToServerTime:CFAbsoluteTimeGetCurrent()]];
      if (v14 != -1.0)
      {
        [(C2MPNetworkEvent *)v164 setTimestampDnsStart:[C2Time convertTimeIntervalToServerTime:v14]];
      }

      if (v16 != -1.0)
      {
        [(C2MPNetworkEvent *)v164 setTimestampDnsEnd:[C2Time convertTimeIntervalToServerTime:v16]];
      }

      if (v18 != -1.0)
      {
        [(C2MPNetworkEvent *)v164 setTimestampTcpStart:[C2Time convertTimeIntervalToServerTime:v18]];
      }

      if (v266 != -1.0)
      {
        [(C2MPNetworkEvent *)v164 setTimestampTcpEnd:[C2Time convertTimeIntervalToServerTime:v266]];
      }

      if (v21 != -1.0)
      {
        [(C2MPNetworkEvent *)v164 setTimestampSslStart:[C2Time convertTimeIntervalToServerTime:v21]];
      }

      if (v23 != -1.0)
      {
        [(C2MPNetworkEvent *)v164 setTimestampRequestStart:[C2Time convertTimeIntervalToServerTime:v23]];
      }

      if (v25 != -1.0)
      {
        [(C2MPNetworkEvent *)v164 setTimestampRequestEnd:[C2Time convertTimeIntervalToServerTime:v25]];
      }

      if (v27 != -1.0)
      {
        [(C2MPNetworkEvent *)v164 setTimestampResponseStart:[C2Time convertTimeIntervalToServerTime:v27]];
      }

      v268 = _timingData;
      if (v29 != -1.0)
      {
        [(C2MPNetworkEvent *)v164 setTimestampResponseEnd:[C2Time convertTimeIntervalToServerTime:v29]];
      }

      v190 = [C2RequestOptions stringForQualityOfService:v260];
      [(C2MPNetworkEvent *)v164 setOptionsQualityOfService:v190];

      [(C2MPNetworkEvent *)v164 setOptionsOutOfProcess:[(C2RequestOptions *)self->_options outOfProcess]];
      [(C2MPNetworkEvent *)v164 setOptionsOutOfProcessForceDiscretionary:[(C2RequestOptions *)self->_options discretionaryNetworkBehavior]== 2];
      [(C2MPNetworkEvent *)v164 setOptionsAllowCellularAccess:[(C2RequestOptions *)self->_options allowsCellularAccess]];
      [(C2MPNetworkEvent *)v164 setOptionsAllowExpensiveAccess:[(C2RequestOptions *)self->_options _allowsExpensiveAccess]];
      [(C2MPNetworkEvent *)v164 setOptionsAllowPowerNapScheduling:[(C2RequestOptions *)self->_options _allowsPowerNapScheduling]];
      [(C2RequestOptions *)self->_options _timeoutIntervalForRequest];
      [(C2MPNetworkEvent *)v164 setOptionsTimeoutIntervalForRequest:v191];
      [(C2RequestOptions *)self->_options _timeoutIntervalForResource];
      [(C2MPNetworkEvent *)v164 setOptionsTimeoutIntervalForResource:v192];
      _sourceApplicationBundleIdentifier2 = [(C2RequestOptions *)self->_options _sourceApplicationBundleIdentifier];
      [(C2MPNetworkEvent *)v164 setOptionsSourceApplicationBundleIdentifier:_sourceApplicationBundleIdentifier2];

      _sourceApplicationSecondaryIdentifier2 = [(C2RequestOptions *)self->_options _sourceApplicationSecondaryIdentifier];
      [(C2MPNetworkEvent *)v164 setOptionsSourceApplicationSecondaryIdentifier:_sourceApplicationSecondaryIdentifier2];

      _appleIDContextSessionIdentifier2 = [(C2RequestOptions *)self->_options _appleIDContextSessionIdentifier];
      [(C2MPNetworkEvent *)v164 setOptionsAppleIdContext:_appleIDContextSessionIdentifier2 != 0];

      [(C2MPNetworkEvent *)v164 setOptionsTlsPinningRequired:[(C2RequestOptions *)self->_options tlsPinning]];
      v196 = [C2RequestOptions stringForDiscretionaryNetworkBehavior:[(C2RequestOptions *)self->_options discretionaryNetworkBehavior]];
      [(C2MPNetworkEvent *)v164 setOptionsDiscretionaryNetworkBehavior:v196];

      v197 = [C2RequestOptions stringForDuetPreClearedMode:[(C2RequestOptions *)self->_options duetPreClearedMode]];
      [(C2MPNetworkEvent *)v164 setOptionsDuetPreClearedMode:v197];

      if (report)
      {
        path_count = nw_data_transfer_report_get_path_count(report);
        if (path_count)
        {
          v199 = path_count;
          for (i = 0; v199 != i; ++i)
          {
            v201 = nw_data_transfer_report_copy_path_interface(v186, i);
            v202 = objc_alloc_init(C2MPPathInfo);
            type = nw_interface_get_type(v201);
            switch(type)
            {
              case nw_interface_type_wired:
                v204 = v202;
                v205 = @"wired";
                break;
              case nw_interface_type_cellular:
                [(C2MPPathInfo *)v202 setInterfaceType:@"cellular"];
                if (nw_interface_get_radio_type() - 128 > 5)
                {
                  [(C2MPPathInfo *)v202 setRadioType:@"unknown"];
                }

                else
                {
                  v206 = MEMORY[0x277CCACA8];
                  nw_interface_get_radio_type();
                  v207 = [v206 stringWithCString:nw_interface_radio_type_to_string() encoding:4];
                  [(C2MPPathInfo *)v202 setRadioType:v207];

                  v186 = report;
                }

                goto LABEL_197;
              case nw_interface_type_wifi:
                v204 = v202;
                v205 = @"wifi";
                break;
              default:
                v204 = v202;
                v205 = @"unknown";
                break;
            }

            [(C2MPPathInfo *)v204 setInterfaceType:v205];
LABEL_197:
            [(C2MPPathInfo *)v202 setApplicationBytesSent:nw_data_transfer_report_get_sent_application_byte_count(v186, i)];
            [(C2MPPathInfo *)v202 setApplicationBytesReceived:nw_data_transfer_report_get_received_application_byte_count(v186, i)];
            [(C2MPPathInfo *)v202 setTransportSmoothedRttMillis:nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds(v186, i)];
            [(C2MPNetworkEvent *)v164 addNetworkPathInfo:v202];
          }
        }
      }

      [C2ReportMetrics reportNetworkEvent:v164 triggers:v273 originalSessionTask:self];

      _timingData = v268;
    }

    errorCopy = v269;
    _dataTransferReport = report;
  }

LABEL_151:
}

uint64_t __51__C2SessionTask_captureMetricsWithError_eventType___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __51__C2SessionTask_captureMetricsWithError_eventType___block_invoke_125()
{
  C2_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __51__C2SessionTask_captureMetricsWithError_eventType___block_invoke_2()
{
  C2_TRIESTE_LOG_INTERNAL = os_log_create("com.apple.c2", "trieste");

  return MEMORY[0x2821F96F8]();
}

- (void)C2Session:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &v11);
  [(C2SessionTaskDelegate *)self->_sessionTaskDelegate C2Session:sessionCopy task:taskCopy didCompleteWithError:errorCopy];
  [(C2SessionTask *)self invalidate];
  os_activity_scope_leave(&v11);
}

@end