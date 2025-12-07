@interface ThroughputDelegate
- (ThroughputDelegate)initWithExecution:(id)execution testName:(id)name withQueue:(id)queue testEndpoint:(id)endpoint withConfig:(id)config resultsObject:(id)object;
- (id)createTaskWithRequest:(id)request session:(id)session;
- (int)executeTaskWithRequest:(id)request saturationHandler:(id)handler completionHandler:(id)completionHandler;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)addNewThroughputMeasurement:(unint64_t)measurement;
- (void)addTasks;
- (void)cancelWithCompletionHandler:(id)handler;
- (void)dealloc;
@end

@implementation ThroughputDelegate

- (ThroughputDelegate)initWithExecution:(id)execution testName:(id)name withQueue:(id)queue testEndpoint:(id)endpoint withConfig:(id)config resultsObject:(id)object
{
  v55 = *MEMORY[0x277D85DE8];
  executionCopy = execution;
  nameCopy = name;
  queueCopy = queue;
  obj = endpoint;
  endpointCopy = endpoint;
  configCopy = config;
  objectCopy = object;
  objectCopy2 = object;
  v46.receiver = self;
  v46.super_class = ThroughputDelegate;
  v20 = [(ThroughputDelegate *)&v46 init];
  if (v20)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sessions = v20->_sessions;
    v20->_sessions = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    probeSessions = v20->_probeSessions;
    v20->_probeSessions = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tasks = v20->_tasks;
    v20->_tasks = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    uploadStream = v20->_uploadStream;
    v20->_uploadStream = v27;

    objc_storeStrong(&v20->_nqConfig, config);
    start = v20->_start;
    v20->_start = 0;

    v30 = [[ThroughputSaturationDetection alloc] initWithConfig:configCopy];
    saturation = v20->_saturation;
    v20->_saturation = &v30->super;

    v20->_saturationReached = 0;
    objc_storeStrong(&v20->_queue, queue);
    objc_storeStrong(&v20->_testEndpoint, obj);
    v32 = instance_id++;
    v20->_instanceId = v32;
    objc_storeStrong(&v20->_results, objectCopy);
    objc_storeStrong(&v20->_execution, execution);
    objc_storeStrong(&v20->_testName, name);
    v33 = [MEMORY[0x277CBEAA8] now];
    lastUpdate = v20->_lastUpdate;
    v20->_lastUpdate = v33;

    netqual_log_init(v35, v36);
    v37 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      instanceId = v20->_instanceId;
      testName = v20->_testName;
      v40 = v37;
      uTF8String = [(NSString *)testName UTF8String];
      *buf = 136315906;
      v48 = "[ThroughputDelegate initWithExecution:testName:withQueue:testEndpoint:withConfig:resultsObject:]";
      v49 = 1024;
      v50 = 100;
      v51 = 1024;
      v52 = instanceId;
      v53 = 2080;
      v54 = uTF8String;
      _os_log_impl(&dword_25B962000, v40, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] - created Throughput instance with name %s", buf, 0x22u);
    }
  }

  return v20;
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  metricsCopy = metrics;
  mutableURLSessionMetrics = [(NetworkQualityExecutionsResult *)self->_results mutableURLSessionMetrics];
  v7 = [mutableURLSessionMetrics valueForKey:self->_testName];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableURLSessionMetrics2 = [(NetworkQualityExecutionsResult *)self->_results mutableURLSessionMetrics];
    [mutableURLSessionMetrics2 setObject:v7 forKey:self->_testName];

    transactionMetrics = [metricsCopy transactionMetrics];
    firstObject = [transactionMetrics firstObject];

    interfaceName = [(NetworkQualityResult *)self->_results interfaceName];

    if (!interfaceName)
    {
      _interfaceName = [firstObject _interfaceName];
      [(NetworkQualityResult *)self->_results setInterfaceName:_interfaceName];

      -[NetworkQualityResult setIsCellular:](self->_results, "setIsCellular:", [firstObject isCellular]);
    }
  }

  [v7 addObject:metricsCopy];
}

- (void)dealloc
{
  tasks = self->_tasks;
  self->_tasks = 0;

  sessions = self->_sessions;
  self->_sessions = 0;

  probeSessions = self->_probeSessions;
  self->_probeSessions = 0;

  v6.receiver = self;
  v6.super_class = ThroughputDelegate;
  [(ThroughputDelegate *)&v6 dealloc];
}

- (void)addTasks
{
  v35 = *MEMORY[0x277D85DE8];
  if (self->_canceled)
  {
    return;
  }

  if (self->_exitCriteriaMet)
  {
    return;
  }

  if (self->_saturationReached)
  {
    return;
  }

  v3 = [(NSMutableArray *)self->_tasks count];
  if (v3 >= [(ThroughputDelegate *)self maxFlows])
  {
    return;
  }

  if ([(NSMutableArray *)self->_tasks count])
  {
    minFlows = 1;
    goto LABEL_8;
  }

  minFlows = [(ThroughputDelegate *)self minFlows];
  if (minFlows >= 1)
  {
LABEL_8:
    v25 = minFlows;
    do
    {
      v5 = [(NSMutableArray *)self->_tasks count];
      if (v5 == [(ThroughputDelegate *)self maxFlows]|| self->_exitCriteriaMet)
      {
        break;
      }

      createDefaultNSURLSessionConfiguration = [(NetworkQualityExecutions *)self->_execution createDefaultNSURLSessionConfiguration];
      v7 = [MEMORY[0x277CCAD30] sessionWithConfiguration:createDefaultNSURLSessionConfiguration delegate:self delegateQueue:self->_queue];
      [(NSMutableArray *)self->_sessions addObject:v7];
      v8 = [(ThroughputDelegate *)self createTaskWithRequest:self->_request session:v7];
      [v8 set_hostOverride:self->_testEndpoint];
      v9 = [(NSMutableArray *)self->_tasks addObject:v8];
      netqual_log_init(v9, v10);
      v11 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        instanceId = self->_instanceId;
        request = self->_request;
        *buf = 136316418;
        v28 = "[ThroughputDelegate addTasks]";
        v29 = 1024;
        v30 = 173;
        v31 = 1024;
        v32 = instanceId;
        v33 = 2112;
        *v34 = v8;
        *&v34[8] = 2112;
        *&v34[10] = v7;
        *&v34[18] = 2112;
        *&v34[20] = request;
        _os_log_impl(&dword_25B962000, v11, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] - added task %@ to %@ for %@", buf, 0x36u);
      }

      [v8 resume];

      --minFlows;
    }

    while (minFlows);
    minFlows = v25;
  }

  updateResultsWithFlowCount = [(ThroughputDelegate *)self updateResultsWithFlowCount];
  netqual_log_init(updateResultsWithFlowCount, v15);
  v16 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_instanceId;
    if (minFlows <= 1)
    {
      v18 = &unk_25B97FCC3;
    }

    else
    {
      v18 = "s";
    }

    v19 = minFlows;
    tasks = self->_tasks;
    v21 = v16;
    v22 = [(NSMutableArray *)tasks count];
    *buf = 136316418;
    v28 = "[ThroughputDelegate addTasks]";
    v29 = 1024;
    v30 = 180;
    v31 = 1024;
    v32 = v17;
    v33 = 1024;
    *v34 = v19;
    *&v34[4] = 2080;
    *&v34[6] = v18;
    *&v34[14] = 2048;
    *&v34[16] = v22;
    _os_log_impl(&dword_25B962000, v21, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] Added %u more task%s, now %lu", buf, 0x32u);
  }

  v23 = dispatch_time(0, 1000000000);
  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__ThroughputDelegate_addTasks__block_invoke;
  block[3] = &unk_279969378;
  block[4] = self;
  dispatch_after(v23, underlyingQueue, block);
}

uint64_t __30__ThroughputDelegate_addTasks__block_invoke(uint64_t a1)
{
  [*(a1 + 32) addTasks];
  v2 = *(a1 + 32);

  return [v2 shareProgress];
}

- (id)createTaskWithRequest:(id)request session:(id)session
{
  requestCopy = request;
  sessionCopy = session;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (int)executeTaskWithRequest:(id)request saturationHandler:(id)handler completionHandler:(id)completionHandler
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v9 = MEMORY[0x277CBEAA8];
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  date = [v9 date];
  objc_storeStrong(&self->_start, date);
  objc_storeStrong(&self->_current, self->_start);
  v13 = MEMORY[0x25F873620](handlerCopy);

  saturationHandler = self->_saturationHandler;
  self->_saturationHandler = v13;

  v15 = MEMORY[0x25F873620](completionHandlerCopy);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v15;

  v17 = [(ThroughputDelegate *)self amendRequest:requestCopy];
  request = self->_request;
  self->_request = v17;

  netqual_log_init(v19, v20);
  v21 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    instanceId = self->_instanceId;
    v24 = 136315906;
    v25 = "[ThroughputDelegate executeTaskWithRequest:saturationHandler:completionHandler:]";
    v26 = 1024;
    v27 = 217;
    v28 = 1024;
    v29 = instanceId;
    v30 = 2112;
    v31 = requestCopy;
    _os_log_impl(&dword_25B962000, v21, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] Starting ... request: %@", &v24, 0x22u);
  }

  [(ThroughputDelegate *)self addTasks];

  return 0;
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  netqual_log_init(errorCopy, v8);
  v9 = os_log_netqual;
  if (errorCopy)
  {
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      instanceId = self->_instanceId;
      v13 = 136316162;
      v14 = "[ThroughputDelegate URLSession:didBecomeInvalidWithError:]";
      v15 = 1024;
      v16 = 227;
      v17 = 1024;
      v18 = instanceId;
      v19 = 2112;
      v20 = sessionCopy;
      v21 = 2112;
      v22 = errorCopy;
      _os_log_error_impl(&dword_25B962000, v9, OS_LOG_TYPE_ERROR, "%s:%u - [%d] Closing session %@ with error %@", &v13, 0x2Cu);
    }
  }

  else if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_instanceId;
    v13 = 136315906;
    v14 = "[ThroughputDelegate URLSession:didBecomeInvalidWithError:]";
    v15 = 1024;
    v16 = 229;
    v17 = 1024;
    v18 = v11;
    v19 = 2112;
    v20 = sessionCopy;
    _os_log_impl(&dword_25B962000, v9, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] Closing session %@", &v13, 0x22u);
  }

  [(NSMutableArray *)self->_sessions removeObject:sessionCopy];
  [(NSMutableArray *)self->_probeSessions removeObject:sessionCopy];
  if (![(NSMutableArray *)self->_sessions count])
  {
    cancelCompletionHandler = self->_cancelCompletionHandler;
    if (cancelCompletionHandler)
    {
      cancelCompletionHandler[2](cancelCompletionHandler, errorCopy);
    }
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v51 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v12 = errorCopy;
  if (!errorCopy)
  {
LABEL_4:
    netqual_log_init(errorCopy, v11);
    v15 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
    {
      instanceId = self->_instanceId;
      v39 = 136316418;
      v40 = "[ThroughputDelegate URLSession:task:didCompleteWithError:]";
      v41 = 1024;
      v42 = 249;
      v43 = 1024;
      v44 = instanceId;
      v45 = 2112;
      v46 = taskCopy;
      v47 = 2112;
      v48 = sessionCopy;
      v49 = 2112;
      v50 = v12;
      _os_log_impl(&dword_25B962000, v15, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] Closing task %@ of session %@ with error %@", &v39, 0x36u);
    }

    [(NSMutableArray *)self->_tasks removeObject:taskCopy];
    if (!v12 && !self->_canceled && !self->_exitCriteriaMet && self->_saturationReached)
    {
      response = [taskCopy response];
      v18 = response;
      if (response)
      {
        if ([response statusCode] == 200)
        {
          v19 = [(NSMutableArray *)self->_tasks count];
          maxFlows = [(ThroughputDelegate *)self maxFlows];
          if (v19 < maxFlows)
          {
            netqual_log_init(maxFlows, v21);
            v22 = os_log_netqual;
            if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
            {
              v23 = self->_instanceId;
              v39 = 136315650;
              v40 = "[ThroughputDelegate URLSession:task:didCompleteWithError:]";
              v41 = 1024;
              v42 = 277;
              v43 = 1024;
              v44 = v23;
              _os_log_impl(&dword_25B962000, v22, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] Task completed successfully, respawning to maintain flow count", &v39, 0x18u);
            }

            createDefaultNSURLSessionConfiguration = [(NetworkQualityExecutions *)self->_execution createDefaultNSURLSessionConfiguration];
            v25 = [MEMORY[0x277CCAD30] sessionWithConfiguration:createDefaultNSURLSessionConfiguration delegate:self delegateQueue:self->_queue];
            [(NSMutableArray *)self->_sessions addObject:v25];
            v26 = [(ThroughputDelegate *)self createTaskWithRequest:self->_request session:v25];
            [v26 set_hostOverride:self->_testEndpoint];
            v27 = [(NSMutableArray *)self->_tasks addObject:v26];
            netqual_log_init(v27, v28);
            v29 = os_log_netqual;
            if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
            {
              v30 = self->_instanceId;
              request = self->_request;
              v39 = 136316418;
              v40 = "[ThroughputDelegate URLSession:task:didCompleteWithError:]";
              v41 = 1024;
              v42 = 288;
              v43 = 1024;
              v44 = v30;
              v45 = 2112;
              v46 = v26;
              v47 = 2112;
              v48 = v25;
              v49 = 2112;
              v50 = request;
              _os_log_impl(&dword_25B962000, v29, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] Respawned task %@ using session %@ for %@", &v39, 0x36u);
            }

            [v26 resume];
            [(ThroughputDelegate *)self updateResultsWithFlowCount];
          }
        }
      }
    }

    if (![(NSMutableArray *)self->_tasks count])
    {
      netqual_log_init(0, v32);
      v33 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v34 = self->_instanceId;
        v39 = 136315650;
        v40 = "[ThroughputDelegate URLSession:task:didCompleteWithError:]";
        v41 = 1024;
        v42 = 296;
        v43 = 1024;
        v44 = v34;
        _os_log_impl(&dword_25B962000, v33, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] Reaching completion", &v39, 0x18u);
      }

      error = self->_error;
      completionHandler = self->_completionHandler;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  domain = [(NSURLRequest *)errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA738]])
  {
    code = [(NSURLRequest *)v12 code];

    if (code == -999)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  netqual_log_init(errorCopy, v11);
  v37 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    v38 = self->_instanceId;
    v39 = 136316418;
    v40 = "[ThroughputDelegate URLSession:task:didCompleteWithError:]";
    v41 = 1024;
    v42 = 247;
    v43 = 1024;
    v44 = v38;
    v45 = 2112;
    v46 = taskCopy;
    v47 = 2112;
    v48 = sessionCopy;
    v49 = 2112;
    v50 = v12;
    _os_log_error_impl(&dword_25B962000, v37, OS_LOG_TYPE_ERROR, "%s:%u - [%d] Force-closing task %@ of session %@ with error %@", &v39, 0x36u);
  }

  [(NSMutableArray *)self->_tasks removeObject:taskCopy];
  if (!self->_error)
  {
    objc_storeStrong(&self->_error, error);
  }

  if (!self->_canceled)
  {
    objc_storeStrong(&self->_error, error);
    completionHandler = self->_completionHandler;
    error = self->_error;
LABEL_30:
    completionHandler[2](completionHandler, error);
  }

LABEL_31:
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  v20[3] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  if ([responseCopy statusCode] == 200)
  {
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected HTTP status code 200, got %lu", objc_msgSend(responseCopy, "statusCode")];
    netqual_log_init(v10, v11);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [ThroughputDelegate URLSession:dataTask:didReceiveResponse:completionHandler:];
    }

    v12 = MEMORY[0x277CCA9B8];
    v19[0] = @"statusCode";
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(responseCopy, "statusCode")}];
    stringValue = [v13 stringValue];
    v20[0] = stringValue;
    v19[1] = @"URL";
    v15 = [(NSURLRequest *)self->_request URL];
    v19[2] = *MEMORY[0x277CCA450];
    v20[1] = v15;
    v20[2] = v10;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v16 = v18 = v10;
    v17 = [v12 errorWithDomain:@"NetworkQualityErrorDomain" code:1003 userInfo:v16];

    if (!self->_canceled)
    {
      objc_storeStrong(&self->_error, v17);
      (*(self->_completionHandler + 2))();
    }

    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)addNewThroughputMeasurement:(unint64_t)measurement
{
  v47 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  self->_currentBytesTransferred += measurement;
  [(ThroughputDelegate *)self updateResultsWithByteCount];
  if (![(ThroughputDelegate *)self checkLimits])
  {
    current = self->_current;
    self->_byte_accumulator += measurement;
    v7 = [date timeIntervalSinceDate:current];
    v10 = v9;
    if (v9 >= 0.2)
    {
      v11 = ((8 * self->_byte_accumulator) / v9);
      netqual_log_init(v7, v8);
      v12 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        instanceId = self->_instanceId;
        saturation = self->_saturation;
        v27 = v12;
        [(SaturationDetection *)saturation getAverage];
        currentBytesTransferred = self->_currentBytesTransferred;
        byte_accumulator = self->_byte_accumulator;
        v31 = 136316930;
        v32 = "[ThroughputDelegate addNewThroughputMeasurement:]";
        v33 = 1024;
        v34 = 363;
        v35 = 1024;
        v36 = instanceId;
        v37 = 2048;
        v38 = vcvtd_n_f64_s64(v11, 0x14uLL);
        v39 = 2048;
        v40 = v29 * 0.000000953674316;
        v41 = 2048;
        v42 = currentBytesTransferred;
        v43 = 2048;
        v44 = byte_accumulator;
        v45 = 2048;
        v46 = v10;
        _os_log_debug_impl(&dword_25B962000, v27, OS_LOG_TYPE_DEBUG, "%s:%u - [%d] throughput is now: %.3f Mbps avg %.3f Mbps at %ld bytes transferred, accumulated %ld over %.3f seconds", &v31, 0x4Au);
      }

      self->_byte_accumulator = 0;
      objc_storeStrong(&self->_current, date);
      *&v13 = v11;
      v14 = [(SaturationDetection *)self->_saturation add:v13];
      if (v14 && !self->_saturationReached)
      {
        netqual_log_init(v14, v15);
        v17 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
        {
          v18 = self->_instanceId;
          v19 = self->_saturation;
          v20 = v17;
          [(SaturationDetection *)v19 getSaturation];
          v31 = 136316162;
          v22 = self->_currentBytesTransferred;
          v32 = "[ThroughputDelegate addNewThroughputMeasurement:]";
          v33 = 1024;
          v34 = 370;
          v35 = 1024;
          v36 = v18;
          v37 = 2048;
          v38 = v21 * 0.000000953674316;
          v39 = 2048;
          v40 = *&v22;
          _os_log_impl(&dword_25B962000, v20, OS_LOG_TYPE_DEFAULT, "%s:%u - [%d] achieved saturation at %.3f Mbps with %ld bytes", &v31, 0x2Cu);
        }

        self->_saturationReached = 1;
        [(SaturationDetection *)self->_saturation getSaturation];
        [(ThroughputDelegate *)self updateResultsWithThroughput:v23 confidence:3];
        saturationHandler = self->_saturationHandler;
        if (saturationHandler)
        {
          saturationHandler[2]();
        }
      }

      else
      {
        [(SaturationDetection *)self->_saturation getAverage];
        [(ThroughputDelegate *)self updateResultsWithThroughput:v16 confidence:2];
        [(ThroughputDelegate *)self shareProgress];
      }
    }
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  if ([(NetworkQualityConfiguration *)self->_nqConfig validateCertificate])
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    v8 = MEMORY[0x277CCACF0];
    protectionSpace = [challengeCopy protectionSpace];
    v10 = [v8 credentialForTrust:{objc_msgSend(protectionSpace, "serverTrust")}];
    (handlerCopy)[2](handlerCopy, 0, v10);
  }
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  if ([(NetworkQualityConfiguration *)self->_nqConfig validateCertificate])
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    v9 = MEMORY[0x277CCACF0];
    protectionSpace = [challengeCopy protectionSpace];
    v11 = [v9 credentialForTrust:{objc_msgSend(protectionSpace, "serverTrust")}];
    (handlerCopy)[2](handlerCopy, 0, v11);
  }
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  requestCopy = request;
  handlerCopy = handler;
  netqual_log_init(handlerCopy, v13);
  v14 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    instanceId = self->_instanceId;
    v16 = v14;
    v17 = [requestCopy URL];
    originalRequest = [taskCopy originalRequest];
    v19 = [originalRequest URL];
    v20 = 136316162;
    v21 = "[ThroughputDelegate URLSession:task:willPerformHTTPRedirection:newRequest:completionHandler:]";
    v22 = 1024;
    v23 = 410;
    v24 = 1024;
    v25 = instanceId;
    v26 = 2112;
    v27 = v17;
    v28 = 2112;
    v29 = v19;
    _os_log_error_impl(&dword_25B962000, v16, OS_LOG_TYPE_ERROR, "%s:%u - [%d] Unexpected redirect to %@ for %@", &v20, 0x2Cu);
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)cancelWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  self->_canceled = 1;
  v4 = MEMORY[0x25F873620](handler, a2);
  cancelCompletionHandler = self->_cancelCompletionHandler;
  self->_cancelCompletionHandler = v4;

  saturationHandler = self->_saturationHandler;
  self->_saturationHandler = 0;

  if ([(NSMutableArray *)self->_sessions count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_sessions;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v14 + 1) + 8 * v11++) invalidateAndCancel];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else if (self->_cancelCompletionHandler)
  {
    underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__ThroughputDelegate_cancelWithCompletionHandler___block_invoke;
    block[3] = &unk_279969378;
    block[4] = self;
    dispatch_async(underlyingQueue, block);
  }
}

- (void)URLSession:dataTask:didReceiveResponse:completionHandler:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - %@", v2, v3, v4, v5, v6);
}

@end