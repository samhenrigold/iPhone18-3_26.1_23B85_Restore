@interface RCNetworkOperationURLSessionDelegate
- (RCNetworkOperationURLSessionDelegate)initWithSessionIdentifier:(id)identifier;
- (id)_existingNetworkTaskForURLSessionTask:(id)task;
- (id)_networkTaskForIdentifier:(id)identifier;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session;
- (void)addObserver:(id)observer;
- (void)observeCompletionOfTaskWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation RCNetworkOperationURLSessionDelegate

- (RCNetworkOperationURLSessionDelegate)initWithSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = RCNetworkOperationURLSessionDelegate;
  v6 = [(RCNetworkOperationURLSessionDelegate *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionIdentifier, identifier);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    runningTasks = v7->_runningTasks;
    v7->_runningTasks = dictionary;

    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    sessionDidFinishObservers = v7->_sessionDidFinishObservers;
    v7->_sessionDidFinishObservers = weakObjectsPointerArray;

    v12 = [[RCUnfairLock alloc] initWithOptions:1];
    taskLock = v7->_taskLock;
    v7->_taskLock = v12;
  }

  return v7;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  sessionDidFinishObservers = [(RCNetworkOperationURLSessionDelegate *)self sessionDidFinishObservers];
  v5 = [sessionDidFinishObservers rc_containsObject:observerCopy];

  if ((v5 & 1) == 0)
  {
    sessionDidFinishObservers2 = [(RCNetworkOperationURLSessionDelegate *)self sessionDidFinishObservers];
    [sessionDidFinishObservers2 addPointer:observerCopy];
  }
}

- (void)observeCompletionOfTaskWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v9 = [(RCNetworkOperationURLSessionDelegate *)self _networkTaskForIdentifier:identifier];
  taskLock = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [taskLock lock];

  [v9 setCompletionHandler:completionCopy];
  taskLock2 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [taskLock2 unlock];
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  v8 = RCSharedLog(errorCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (errorCopy)
  {
    if (v9)
    {
      [RCNetworkOperationURLSessionDelegate URLSession:didBecomeInvalidWithError:];
    }

    rc_unknownBackgroundNetworkOperationError = errorCopy;
  }

  else
  {
    if (v9)
    {
      [RCNetworkOperationURLSessionDelegate URLSession:sessionCopy didBecomeInvalidWithError:?];
    }

    rc_unknownBackgroundNetworkOperationError = [MEMORY[0x277CCA9B8] rc_unknownBackgroundNetworkOperationError];
  }

  v11 = rc_unknownBackgroundNetworkOperationError;
  taskLock = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [taskLock lock];

  runningTasks = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
  allValues = [runningTasks allValues];

  taskLock2 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [taskLock2 unlock];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = allValues;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * i);
        completionHandler = [v21 completionHandler];

        if (completionHandler)
        {
          completionHandler2 = [v21 completionHandler];
          (completionHandler2)[2](completionHandler2, 0, 0, v11);
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v18);
  }

  taskLock3 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [taskLock3 lock];

  runningTasks2 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
  [runningTasks2 removeAllObjects];

  taskLock4 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [taskLock4 unlock];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v52[3] = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  v9 = [(RCNetworkOperationURLSessionDelegate *)self _existingNetworkTaskForURLSessionTask:taskCopy];

  if (!v9)
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __77__RCNetworkOperationURLSessionDelegate_URLSession_task_didCompleteWithError___block_invoke;
    v44[3] = &unk_27822F130;
    v45 = taskCopy;
    selfCopy = self;
    __77__RCNetworkOperationURLSessionDelegate_URLSession_task_didCompleteWithError___block_invoke(v44);
    v10 = v45;
    goto LABEL_26;
  }

  v10 = [(RCNetworkOperationURLSessionDelegate *)self _existingNetworkTaskForURLSessionTask:taskCopy];
  v11 = objc_opt_class();
  response = [taskCopy response];
  v13 = RCDynamicCast(v11, response);

  v14 = [v10 receiveHTTPResponse:v13];
  if (errorCopy)
  {
    v15 = RCSharedLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RCNetworkOperationURLSessionDelegate URLSession:task:didCompleteWithError:];
    }

    completionHandler = [v10 completionHandler];

    if (!completionHandler)
    {
      goto LABEL_21;
    }

    completionHandler2 = [v10 completionHandler];
    data = [v10 data];
    response2 = [taskCopy response];
    (completionHandler2)[2](completionHandler2, data, response2, errorCopy);
  }

  else if (v13 && (v14 = [v13 isFailure], v14))
  {
    v20 = RCSharedLog(v14);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [RCNetworkOperationURLSessionDelegate URLSession:task:didCompleteWithError:];
    }

    completionHandler3 = [v10 completionHandler];

    if (!completionHandler3)
    {
      goto LABEL_21;
    }

    v51[0] = @"RCErrorHTTPURL";
    v42 = [v13 URL];
    absoluteString = [v42 absoluteString];
    v52[0] = absoluteString;
    v51[1] = @"RCErrorHTTPRequestUUID";
    taskDescription = [taskCopy taskDescription];
    v52[1] = taskDescription;
    v51[2] = @"RCErrorHTTPStatusCode";
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "statusCode")}];
    v52[2] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
    completionHandler2 = [v25 mutableCopy];

    allHeaderFields = [v13 allHeaderFields];

    if (allHeaderFields)
    {
      allHeaderFields2 = [v13 allHeaderFields];
      [completionHandler2 setObject:allHeaderFields2 forKeyedSubscript:@"RCErrorHTTPResponseHeaders"];
    }

    data = [MEMORY[0x277CCACA8] stringWithFormat:@"URL session task failed with status code %lu", objc_msgSend(v13, "statusCode")];
    response2 = [MEMORY[0x277CCA9B8] rc_errorWithCode:3 description:data additionalUserInfo:completionHandler2];
    completionHandler4 = [v10 completionHandler];
    data2 = [v10 data];
    response3 = [taskCopy response];
    (completionHandler4)[2](completionHandler4, data2, response3, response2);
  }

  else
  {
    v30 = RCSharedLog(v14);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      rc_logIdentifier = [taskCopy rc_logIdentifier];
      *buf = 138543362;
      v48 = rc_logIdentifier;
      _os_log_impl(&dword_2179FC000, v30, OS_LOG_TYPE_DEFAULT, "Network operation %{public}@ did succeed", buf, 0xCu);
    }

    completionHandler5 = [v10 completionHandler];

    if (!completionHandler5)
    {
      goto LABEL_21;
    }

    completionHandler2 = [v10 completionHandler];
    data = [v10 data];
    response2 = [taskCopy response];
    (completionHandler2)[2](completionHandler2, data, response2, 0);
  }

LABEL_21:
  completionHandler6 = [v10 completionHandler];

  if (completionHandler6)
  {
    taskLock = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
    [taskLock lock];

    runningTasks = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
    taskDescription2 = [taskCopy taskDescription];
    [runningTasks setObject:0 forKeyedSubscript:taskDescription2];

    taskLock2 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
    [taskLock2 unlock];
  }

  else
  {
    taskLock2 = RCSharedLog(v34);
    if (os_log_type_enabled(taskLock2, OS_LOG_TYPE_DEFAULT))
    {
      rc_logIdentifier2 = [taskCopy rc_logIdentifier];
      runningTasks2 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
      allKeys = [runningTasks2 allKeys];
      *buf = 138543618;
      v48 = rc_logIdentifier2;
      v49 = 2114;
      v50 = allKeys;
      _os_log_impl(&dword_2179FC000, taskLock2, OS_LOG_TYPE_DEFAULT, "Network operation task %{public}@ has no completion handler. Tasks: %{public}@", buf, 0x16u);
    }
  }

LABEL_26:
}

void __77__RCNetworkOperationURLSessionDelegate_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  v2 = RCSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __77__RCNetworkOperationURLSessionDelegate_URLSession_task_didCompleteWithError___block_invoke_cold_1(a1);
  }
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  taskCopy = task;
  metricsCopy = metrics;
  v8 = RCSharedLog(metricsCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [RCNetworkOperationURLSessionDelegate URLSession:task:didFinishCollectingMetrics:];
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  dataCopy = data;
  taskDescription = [taskCopy taskDescription];

  if (taskDescription)
  {
    taskDescription2 = [taskCopy taskDescription];
    v11 = RCSharedLog(taskDescription2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      rc_logIdentifier = [taskCopy rc_logIdentifier];
      *buf = 138543618;
      v19 = rc_logIdentifier;
      v20 = 2048;
      v21 = [dataCopy length];
      _os_log_impl(&dword_2179FC000, v11, OS_LOG_TYPE_DEFAULT, "Network operation with request %{public}@ received data (%lu bytes)", buf, 0x16u);
    }

    v13 = [(RCNetworkOperationURLSessionDelegate *)self _networkTaskForIdentifier:taskDescription2];
    taskLock = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
    [taskLock lock];

    [v13 receiveData:dataCopy];
    taskLock2 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
    [taskLock2 unlock];
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__RCNetworkOperationURLSessionDelegate_URLSession_dataTask_didReceiveData___block_invoke;
    v16[3] = &unk_27822F2B0;
    v17 = taskCopy;
    __75__RCNetworkOperationURLSessionDelegate_URLSession_dataTask_didReceiveData___block_invoke(v16);
    taskDescription2 = v17;
  }
}

void __75__RCNetworkOperationURLSessionDelegate_URLSession_dataTask_didReceiveData___block_invoke(uint64_t a1)
{
  v2 = RCSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__RCNetworkOperationURLSessionDelegate_URLSession_dataTask_didReceiveData___block_invoke_cold_1(a1);
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v30 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  lCopy = l;
  v23 = 0;
  v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:0 error:&v23];
  v10 = v23;
  v11 = RCSharedLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    rc_logIdentifier = [taskCopy rc_logIdentifier];
    v13 = [v9 length];
    absoluteString = [lCopy absoluteString];
    *buf = 138543874;
    v25 = rc_logIdentifier;
    v26 = 2048;
    v27 = v13;
    v28 = 2114;
    v29 = absoluteString;
    _os_log_impl(&dword_2179FC000, v11, OS_LOG_TYPE_DEFAULT, "Network operation with request %{public}@ finished downloading data (%lu bytes) to location %{public}@", buf, 0x20u);
  }

  taskDescription = [taskCopy taskDescription];

  if (taskDescription)
  {
    taskDescription2 = [taskCopy taskDescription];
    v17 = taskDescription2;
    if (v10)
    {
      v18 = RCSharedLog(taskDescription2);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [RCNetworkOperationURLSessionDelegate URLSession:downloadTask:didFinishDownloadingToURL:];
      }
    }

    else
    {
      v18 = [(RCNetworkOperationURLSessionDelegate *)self _networkTaskForIdentifier:taskDescription2];
      taskLock = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
      [taskLock lock];

      [v18 receiveData:v9];
      taskLock2 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
      [taskLock2 unlock];
    }
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __90__RCNetworkOperationURLSessionDelegate_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke;
    v21[3] = &unk_27822F2B0;
    v22 = taskCopy;
    __90__RCNetworkOperationURLSessionDelegate_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke(v21);
    v17 = v22;
  }
}

void __90__RCNetworkOperationURLSessionDelegate_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke(uint64_t a1)
{
  v2 = RCSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__RCNetworkOperationURLSessionDelegate_URLSession_dataTask_didReceiveData___block_invoke_cold_1(a1);
  }
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session
{
  v39 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = RCSharedLog(sessionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    rc_logIdentifier = [sessionCopy rc_logIdentifier];
    *buf = 138543362;
    v38 = rc_logIdentifier;
    _os_log_impl(&dword_2179FC000, v5, OS_LOG_TYPE_DEFAULT, "Background URL session did finish for identifier: %{public}@", buf, 0xCu);
  }

  taskLock = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [taskLock lock];

  runningTasks = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
  allValues = [runningTasks allValues];

  taskLock2 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [taskLock2 unlock];

  observerLock = [(RCNetworkOperationURLSessionDelegate *)self observerLock];
  [observerLock lock];

  sessionDidFinishObservers = [(RCNetworkOperationURLSessionDelegate *)self sessionDidFinishObservers];
  v13 = [sessionDidFinishObservers count];

  if (v13)
  {
    v14 = 0;
    do
    {
      sessionDidFinishObservers2 = [(RCNetworkOperationURLSessionDelegate *)self sessionDidFinishObservers];
      v16 = [sessionDidFinishObservers2 pointerAtIndex:v14];

      [v16 networkSessionDidFinishWithTasks:allValues];
      ++v14;
      sessionDidFinishObservers3 = [(RCNetworkOperationURLSessionDelegate *)self sessionDidFinishObservers];
      v18 = [sessionDidFinishObservers3 count];
    }

    while (v14 < v18);
  }

  observerLock2 = [(RCNetworkOperationURLSessionDelegate *)self observerLock];
  [observerLock2 unlock];

  taskLock3 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [taskLock3 lock];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  runningTasks2 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
  allValues2 = [runningTasks2 allValues];

  v23 = [allValues2 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(allValues2);
        }

        v27 = *(*(&v32 + 1) + 8 * i);
        completionHandler = [v27 completionHandler];

        if (!completionHandler)
        {
          runningTasks3 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
          identifier = [v27 identifier];
          [runningTasks3 setObject:0 forKeyedSubscript:identifier];
        }
      }

      v24 = [allValues2 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v24);
  }

  taskLock4 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [taskLock4 unlock];
}

- (id)_networkTaskForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  taskLock = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [taskLock lock];

  runningTasks = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
  v7 = [runningTasks objectForKeyedSubscript:identifierCopy];

  if (!v7)
  {
    v7 = [[RCNetworkOperationTask alloc] initWithIdentifier:identifierCopy];
    runningTasks2 = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
    [runningTasks2 setObject:v7 forKeyedSubscript:identifierCopy];
  }

  taskLock2 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
  [taskLock2 unlock];

  return v7;
}

- (id)_existingNetworkTaskForURLSessionTask:(id)task
{
  taskCopy = task;
  taskDescription = [taskCopy taskDescription];
  if (taskDescription)
  {
    taskLock = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
    [taskLock lock];

    runningTasks = [(RCNetworkOperationURLSessionDelegate *)self runningTasks];
    v8 = [runningTasks objectForKeyedSubscript:taskDescription];

    taskLock2 = [(RCNetworkOperationURLSessionDelegate *)self taskLock];
    [taskLock2 unlock];
  }

  else
  {
    v10 = RCSharedLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [RCNetworkOperationURLSessionDelegate _existingNetworkTaskForURLSessionTask:];
    }

    v8 = 0;
  }

  return v8;
}

- (void)URLSession:didBecomeInvalidWithError:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v1 = [v0 rc_logIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)URLSession:(void *)a1 didBecomeInvalidWithError:.cold.2(void *a1)
{
  v1 = [a1 rc_logIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)URLSession:task:didCompleteWithError:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v1 = [v0 rc_logIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)URLSession:task:didCompleteWithError:.cold.2()
{
  OUTLINED_FUNCTION_3_2();
  v7 = [v1 rc_logIdentifier];
  [v0 statusCode];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __77__RCNetworkOperationURLSessionDelegate_URLSession_task_didCompleteWithError___block_invoke_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) rc_logIdentifier];
  v3 = [*(a1 + 40) runningTasks];
  v9 = [v3 allKeys];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)URLSession:task:didFinishCollectingMetrics:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v4 = *MEMORY[0x277D85DE8];
  v2 = [v1 rc_logIdentifier];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_2179FC000, v0, OS_LOG_TYPE_DEBUG, "Network operation %{public}@ did finish collecting metrics: %{public}@", v3, 0x16u);
}

void __75__RCNetworkOperationURLSessionDelegate_URLSession_dataTask_didReceiveData___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) rc_logIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)URLSession:downloadTask:didFinishDownloadingToURL:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v1 = [v0 rc_logIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_existingNetworkTaskForURLSessionTask:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_2179FC000, v0, OS_LOG_TYPE_ERROR, "Identifier is missing for task: %{public}@", v1, 0xCu);
}

@end