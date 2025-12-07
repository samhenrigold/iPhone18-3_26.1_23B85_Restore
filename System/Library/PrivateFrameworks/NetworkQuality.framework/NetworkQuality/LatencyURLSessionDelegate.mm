@interface LatencyURLSessionDelegate
- (LatencyURLSessionDelegate)initWithConfiguration:(id)configuration testName:(id)name queue:(id)queue testEndpoint:(id)endpoint resultsObject:(id)object resultsDelegate:(id)delegate tcpKey:(id)key tlsKey:(id)self0 reqrespKey:(id)self1 selfKey:(id)self2;
- (int)didFinishCollectingMetrics:(id)metrics task:(id)task;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)cancelWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)executeTaskWithRequest:(id)request completionHandler:(id)handler;
@end

@implementation LatencyURLSessionDelegate

- (LatencyURLSessionDelegate)initWithConfiguration:(id)configuration testName:(id)name queue:(id)queue testEndpoint:(id)endpoint resultsObject:(id)object resultsDelegate:(id)delegate tcpKey:(id)key tlsKey:(id)self0 reqrespKey:(id)self1 selfKey:(id)self2
{
  configurationCopy = configuration;
  nameCopy = name;
  obj = queue;
  queueCopy = queue;
  endpointCopy = endpoint;
  endpointCopy2 = endpoint;
  objectCopy = object;
  delegateCopy = delegate;
  delegateCopy2 = delegate;
  keyCopy = key;
  tlsKeyCopy = tlsKey;
  reqrespKeyCopy = reqrespKey;
  selfKeyCopy = selfKey;
  v43.receiver = self;
  v43.super_class = LatencyURLSessionDelegate;
  v22 = [(LatencyURLSessionDelegate *)&v43 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_config, configuration);
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sessions = v23->_sessions;
    v23->_sessions = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tasks = v23->_tasks;
    v23->_tasks = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    metrics = v23->_metrics;
    v23->_metrics = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    workingMetrics = v23->_workingMetrics;
    v23->_workingMetrics = v30;

    objc_storeStrong(&v23->_queue, obj);
    objc_storeStrong(&v23->_testEndpoint, endpointCopy);
    objc_storeStrong(&v23->_results, object);
    objc_storeStrong(&v23->_execution, delegateCopy);
    objc_storeStrong(&v23->_tcpKey, key);
    objc_storeStrong(&v23->_tlsKey, tlsKey);
    objc_storeStrong(&v23->_reqrespKey, reqrespKey);
    objc_storeStrong(&v23->_selfKey, selfKey);
    objc_storeStrong(&v23->_testName, name);
    v23->_parallel = 8;
    v23->_exitCriteriaCounter = 0;
  }

  return v23;
}

- (void)executeTaskWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  __assert_rtn("[LatencyURLSessionDelegate executeTaskWithRequest:completionHandler:]", "LatencyURLSessionDelegate.m", 96, "0");
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  if (errorCopy)
  {
    objc_storeStrong(&self->_error, error);
    netqual_log_init(v8, v9);
    v10 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [(LatencyURLSessionDelegate *)errorCopy URLSession:v10 didBecomeInvalidWithError:?];
    }
  }

  [(NSMutableArray *)self->_sessions removeObject:sessionCopy];
  if (![(NSMutableArray *)self->_sessions count])
  {
    cancelCompletionHandler = self->_cancelCompletionHandler;
    if (cancelCompletionHandler)
    {
      cancelCompletionHandler[2](cancelCompletionHandler, errorCopy);
    }
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  if ([(NetworkQualityConfiguration *)self->_config validateCertificate])
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
  if ([(NetworkQualityConfiguration *)self->_config validateCertificate])
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
  v20[1] = *MEMORY[0x277D85DE8];
  taskCopy = task;
  requestCopy = request;
  handlerCopy = handler;
  netqual_log_init(handlerCopy, v13);
  v14 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    [LatencyURLSessionDelegate URLSession:v14 task:requestCopy willPerformHTTPRedirection:taskCopy newRequest:? completionHandler:?];
  }

  v15 = objc_alloc(MEMORY[0x277CCA9B8]);
  v19 = *MEMORY[0x277CCA450];
  v20[0] = @"Unexpected redirect on latency measuring connection";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v17 = [v15 initWithDomain:@"NetworkQualityErrorDomain" code:1003 userInfo:v16];
  error = self->_error;
  self->_error = v17;

  handlerCopy[2](handlerCopy, 0);
  if (!self->_canceled)
  {
    (*(self->_completionHandler + 2))();
  }
}

- (int)didFinishCollectingMetrics:(id)metrics task:(id)task
{
  v77[1] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  taskCopy = task;
  mutableURLSessionMetrics = [(NetworkQualityExecutionsResult *)self->_results mutableURLSessionMetrics];
  v9 = [mutableURLSessionMetrics valueForKey:self->_testName];

  if (!v9)
  {
    transactionMetrics = [metricsCopy transactionMetrics];
    firstObject = [transactionMetrics firstObject];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableURLSessionMetrics2 = [(NetworkQualityExecutionsResult *)self->_results mutableURLSessionMetrics];
    [mutableURLSessionMetrics2 setObject:v9 forKey:self->_testName];

    interfaceName = [(NetworkQualityResult *)self->_results interfaceName];

    if (!interfaceName)
    {
      _interfaceName = [firstObject _interfaceName];
      [(NetworkQualityResult *)self->_results setInterfaceName:_interfaceName];

      -[NetworkQualityResult setIsCellular:](self->_results, "setIsCellular:", [firstObject isCellular]);
    }
  }

  if ([v9 count] >= 0xB)
  {
    [v9 removeObjectAtIndex:0];
  }

  [v9 addObject:metricsCopy];
  redirectCount = [metricsCopy redirectCount];
  if (redirectCount)
  {
    netqual_log_init(redirectCount, v16);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [LatencyURLSessionDelegate didFinishCollectingMetrics:task:];
    }

    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v76 = *MEMORY[0x277CCA450];
    v77[0] = @"Unexpected redirect when collecting metrics";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:&v76 count:1];
    v19 = [v17 initWithDomain:@"NetworkQualityErrorDomain" code:1002 userInfo:v18];
    error = self->_error;
    self->_error = v19;

    if (self->_canceled)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  transactionMetrics2 = [metricsCopy transactionMetrics];
  v22 = [transactionMetrics2 count];

  if (v22)
  {
    if (self->_canceled)
    {
      goto LABEL_14;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    transactionMetrics3 = [metricsCopy transactionMetrics];
    v36 = [transactionMetrics3 countByEnumeratingWithState:&v55 objects:v73 count:16];
    if (v36)
    {
      v37 = v36;
      v54 = taskCopy;
      v25 = 0;
      v38 = *v56;
      while (2)
      {
        v39 = 0;
        v53 = v25 + v37;
        do
        {
          if (*v56 != v38)
          {
            objc_enumerationMutation(transactionMetrics3);
          }

          response = [*(*(&v55 + 1) + 8 * v39) response];
          statusCode = [response statusCode];

          if (statusCode == 200)
          {

            goto LABEL_31;
          }

          ++v25;
          ++v39;
        }

        while (v37 != v39);
        v37 = [transactionMetrics3 countByEnumeratingWithState:&v55 objects:v73 count:16];
        v25 = v53;
        if (v37)
        {
          continue;
        }

        break;
      }

      taskCopy = v54;
    }

    else
    {
      statusCode = 0;
    }

    netqual_log_init(v42, v43);
    v44 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      v50 = v44;
      transactionMetrics4 = [metricsCopy transactionMetrics];
      firstObject2 = [transactionMetrics4 firstObject];
      *buf = 136316418;
      v62 = "[LatencyURLSessionDelegate didFinishCollectingMetrics:task:]";
      v63 = 1024;
      v64 = 250;
      v65 = 2048;
      v66 = statusCode;
      v67 = 2112;
      v68 = taskCopy;
      v69 = 2112;
      v70 = metricsCopy;
      v71 = 2112;
      v72 = firstObject2;
      _os_log_error_impl(&dword_25B962000, v50, OS_LOG_TYPE_ERROR, "%s:%u - This should not happen - response status code is %ld on task %@ metrics %@ tMet %@", buf, 0x3Au);
    }

    v45 = objc_alloc(MEMORY[0x277CCA9B8]);
    v59[0] = *MEMORY[0x277CCA450];
    v59[1] = @"statusCode";
    v60[0] = @"Incorrect response status code on latency measuring connection";
    v46 = [MEMORY[0x277CCABB0] numberWithInteger:statusCode];
    v60[1] = v46;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v48 = [v45 initWithDomain:@"NetworkQualityErrorDomain" code:1003 userInfo:v47];
    v49 = self->_error;
    self->_error = v48;

LABEL_11:
    (*(self->_completionHandler + 2))();
LABEL_14:
    v25 = -1;
    goto LABEL_15;
  }

  netqual_log_init(v23, v24);
  v27 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    [(LatencyURLSessionDelegate *)self didFinishCollectingMetrics:taskCopy task:v27];
  }

  v54 = taskCopy;
  v28 = objc_alloc(MEMORY[0x277CCA9B8]);
  v29 = *MEMORY[0x277CCA450];
  v75[0] = @"Unexpected number of transactionMetrics";
  v74[0] = v29;
  v74[1] = @"count";
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v75[1] = v30;
  v74[2] = @"canceled";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:self->_canceled];
  v75[2] = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:3];
  v33 = [v28 initWithDomain:@"NetworkQualityErrorDomain" code:1002 userInfo:v32];
  v34 = self->_error;
  self->_error = v33;

  if (!self->_canceled)
  {
    (*(self->_completionHandler + 2))();
  }

  v25 = -1;
LABEL_31:
  taskCopy = v54;
LABEL_15:

  return v25;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = LatencyURLSessionDelegate;
  [(LatencyURLSessionDelegate *)&v2 dealloc];
}

- (void)cancelWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  self->_canceled = 1;
  v4 = MEMORY[0x25F873620](handler, a2);
  cancelCompletionHandler = self->_cancelCompletionHandler;
  self->_cancelCompletionHandler = v4;

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

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
    block[2] = __57__LatencyURLSessionDelegate_cancelWithCompletionHandler___block_invoke;
    block[3] = &unk_279969378;
    block[4] = self;
    dispatch_async(underlyingQueue, block);
  }
}

- (void)URLSession:(void *)a3 didBecomeInvalidWithError:.cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  v5 = a3;
  [v4 count];
  v7[0] = 136315906;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  v8 = a1;
  v9 = 2048;
  v10 = v6;
  _os_log_error_impl(&dword_25B962000, v5, OS_LOG_TYPE_ERROR, "%s:%u - session completed with error: %@, count: %lu", v7, 0x26u);
}

- (void)URLSession:(void *)a3 task:willPerformHTTPRedirection:newRequest:completionHandler:.cold.1(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 URL];
  v7 = [a3 originalRequest];
  v8 = [v7 URL];
  v11[0] = 136315906;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  v12 = v6;
  v13 = v9;
  v14 = v10;
  _os_log_error_impl(&dword_25B962000, v5, OS_LOG_TYPE_ERROR, "%s:%u - Unexpected redirect to %@ for %@", v11, 0x26u);
}

- (void)didFinishCollectingMetrics:task:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - This should not happen - redirects should be caught by willPerformHTTPRedirection on task %@", v2, v3, v4, v5, v6);
}

- (void)didFinishCollectingMetrics:(os_log_t)log task:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 160);
  v4 = 136315906;
  v5 = "[LatencyURLSessionDelegate didFinishCollectingMetrics:task:]";
  v6 = 1024;
  v7 = 213;
  v8 = 1024;
  v9 = v3;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_25B962000, log, OS_LOG_TYPE_ERROR, "%s:%u - Unexpected number of transactionMetrics | cancelled=%d on task %@", &v4, 0x22u);
}

@end