@interface NDAnalyticsUploadScheduler
- (NDAnalyticsUploadScheduler)init;
- (NDAnalyticsUploadScheduler)initWithURLSessionQueue:(id)queue;
- (NDAnalyticsUploadSchedulerDelegate)delegate;
- (NSURLSession)backgroundSession;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task willBeginDelayedRequest:(id)request completionHandler:(id)handler;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session;
- (void)_scheduleBackgroundUploadInWindow:(id)window;
- (void)_uploadWithCompletion:(id)completion;
- (void)handleLaunchEventForBackgroundSessionWithIdentifier:(id)identifier completion:(id)completion;
- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion;
- (void)scheduleUploadInWindow:(id)window withForegroundUploadCompletion:(id)completion;
@end

@implementation NDAnalyticsUploadScheduler

- (NDAnalyticsUploadScheduler)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NDAnalyticsUploadScheduler init]";
    v10 = 2080;
    v11 = "NDAnalyticsUploadScheduler.m";
    v12 = 1024;
    v13 = 40;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BDF7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NDAnalyticsUploadScheduler init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NDAnalyticsUploadScheduler)initWithURLSessionQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsUploadScheduler initWithURLSessionQueue:];
  }

  v18.receiver = self;
  v18.super_class = NDAnalyticsUploadScheduler;
  v5 = [(NDAnalyticsUploadScheduler *)&v18 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D311B0]) initWithDelegate:v5];
    schedulingAndForegroundUploadThrottler = v5->_schedulingAndForegroundUploadThrottler;
    v5->_schedulingAndForegroundUploadThrottler = v6;

    v8 = objc_opt_new();
    lock = v5->_lock;
    v5->_lock = v8;

    v10 = objc_opt_new();
    uploadQueue = v5->_uploadQueue;
    v5->_uploadQueue = v10;

    v12 = objc_opt_new();
    [(NSOperationQueue *)v12 setUnderlyingQueue:queueCopy];
    backgroundSessionQueue = v5->_backgroundSessionQueue;
    v5->_backgroundSessionQueue = v12;
    v14 = v12;

    v15 = objc_opt_new();
    backgroundSessionLaunchEventCounter = v5->_backgroundSessionLaunchEventCounter;
    v5->_backgroundSessionLaunchEventCounter = v15;
  }

  return v5;
}

- (NSURLSession)backgroundSession
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  lock = [(NDAnalyticsUploadScheduler *)self lock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NDAnalyticsUploadScheduler_backgroundSession__block_invoke;
  v6[3] = &unk_27997ACE0;
  v6[4] = self;
  v6[5] = &v7;
  [lock performWithLockSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __47__NDAnalyticsUploadScheduler_backgroundSession__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (!v2)
  {
    v3 = [MEMORY[0x277CCAD38] backgroundSessionConfigurationWithIdentifier:@"com.apple.newsd.analytics.uploader"];
    [v3 set_allowsRetryForBackgroundDataTasks:1];
    [v3 set_sourceApplicationBundleIdentifier:@"com.apple.news"];
    [v3 setDiscretionary:1];
    v4 = MEMORY[0x277CCAD30];
    v5 = *(a1 + 32);
    v6 = [v5 backgroundSessionQueue];
    v7 = [v4 sessionWithConfiguration:v3 delegate:v5 delegateQueue:v6];
    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    *(v8 + 56) = v7;

    v2 = *(*(a1 + 32) + 56);
  }

  v10 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v10, v2);
}

- (void)handleLaunchEventForBackgroundSessionWithIdentifier:(id)identifier completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  if (!identifierCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsUploadScheduler handleLaunchEventForBackgroundSessionWithIdentifier:completion:];
  }

  v8 = [identifierCopy isEqualToString:@"com.apple.newsd.analytics.uploader"];
  if ((v8 & 1) == 0)
  {
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      [NDAnalyticsUploadScheduler handleLaunchEventForBackgroundSessionWithIdentifier:completion:];
    }
  }

  v9 = NDSharedServiceLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[NDAnalyticsUploadScheduler handleLaunchEventForBackgroundSessionWithIdentifier:completion:]";
    _os_log_impl(&dword_25BDF7000, v9, OS_LOG_TYPE_INFO, "%s", &v12, 0xCu);
  }

  backgroundSessionLaunchEventCounter = [(NDAnalyticsUploadScheduler *)self backgroundSessionLaunchEventCounter];
  [backgroundSessionLaunchEventCounter increment];
  v11 = FCDispatchQueueForQualityOfService();
  [backgroundSessionLaunchEventCounter notifyWhenCountReachesZeroOnQueue:v11 usingBlock:completionCopy];
}

- (void)scheduleUploadInWindow:(id)window withForegroundUploadCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  completionCopy = completion;
  v8 = completionCopy;
  if (!windowCopy)
  {
    completionCopy = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (completionCopy)
    {
      [NDAnalyticsUploadScheduler scheduleUploadInWindow:withForegroundUploadCompletion:];
    }
  }

  v9 = NDSharedServiceLog(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    earlierDate = [windowCopy earlierDate];
    laterDate = [windowCopy laterDate];
    *buf = 136315650;
    v22 = "[NDAnalyticsUploadScheduler scheduleUploadInWindow:withForegroundUploadCompletion:]";
    v23 = 2112;
    v24 = earlierDate;
    v25 = 2112;
    v26 = laterDate;
    _os_log_impl(&dword_25BDF7000, v9, OS_LOG_TYPE_INFO, "%s with start date %@, end date %@", buf, 0x20u);
  }

  lock = [(NDAnalyticsUploadScheduler *)self lock];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __84__NDAnalyticsUploadScheduler_scheduleUploadInWindow_withForegroundUploadCompletion___block_invoke;
  v18 = &unk_27997A678;
  selfCopy = self;
  v20 = windowCopy;
  v13 = windowCopy;
  [lock performWithLockSync:&v15];

  v14 = [(NDAnalyticsUploadScheduler *)self schedulingAndForegroundUploadThrottler:v15];
  [v14 tickleWithCompletion:v8];
}

- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  throttlerCopy = throttler;
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = 0;
  lock = [(NDAnalyticsUploadScheduler *)self lock];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__NDAnalyticsUploadScheduler_operationThrottler_performAsyncOperationWithCompletion___block_invoke;
  v17[3] = &unk_27997A7D0;
  v17[4] = self;
  v17[5] = &v18;
  [lock performWithLockSync:v17];

  laterDate = [v19[5] laterDate];
  date = [MEMORY[0x277CBEAA8] date];
  v11 = [laterDate fc_isEarlierThanOrEqualTo:date];

  v13 = NDSharedServiceLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    laterDate2 = [v19[5] laterDate];
    *buf = 138412290;
    v25 = laterDate2;
    _os_log_impl(&dword_25BDF7000, v13, OS_LOG_TYPE_INFO, "Scheduling payload with delivery window end date of %@", buf, 0xCu);
  }

  if (v11)
  {
    v16 = NDSharedServiceLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25BDF7000, v16, OS_LOG_TYPE_INFO, "Uploading now", buf, 2u);
    }

    [(NDAnalyticsUploadScheduler *)self _uploadWithCompletion:completionCopy];
  }

  else
  {
    [(NDAnalyticsUploadScheduler *)self _scheduleBackgroundUploadInWindow:v19[5]];
    completionCopy[2](completionCopy);
  }

  _Block_object_dispose(&v18, 8);
}

void __85__NDAnalyticsUploadScheduler_operationThrottler_performAsyncOperationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deliveryWindow];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __85__NDAnalyticsUploadScheduler_operationThrottler_performAsyncOperationWithCompletion___block_invoke_cold_1();
  }
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session
{
  backgroundSessionLaunchEventCounter = [(NDAnalyticsUploadScheduler *)self backgroundSessionLaunchEventCounter];
  [backgroundSessionLaunchEventCounter decrement];
}

- (void)URLSession:(id)session task:(id)task willBeginDelayedRequest:(id)request completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  handlerCopy = handler;
  v10 = NDSharedServiceLog(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    taskDescription = [taskCopy taskDescription];
    *buf = 136315394;
    v16 = "[NDAnalyticsUploadScheduler URLSession:task:willBeginDelayedRequest:completionHandler:]";
    v17 = 2112;
    v18 = taskDescription;
    _os_log_impl(&dword_25BDF7000, v10, OS_LOG_TYPE_INFO, "%s called for task with description %@", buf, 0x16u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__NDAnalyticsUploadScheduler_URLSession_task_willBeginDelayedRequest_completionHandler___block_invoke;
  v13[3] = &unk_27997AD08;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [(NDAnalyticsUploadScheduler *)self _uploadWithCompletion:v13];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  v9 = NDSharedServiceLog(errorCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    taskDescription = [taskCopy taskDescription];
    v16 = 136315650;
    v17 = "[NDAnalyticsUploadScheduler URLSession:task:didCompleteWithError:]";
    v18 = 2112;
    v19 = taskDescription;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&dword_25BDF7000, v9, OS_LOG_TYPE_INFO, "%s called for task with description %@, error %@", &v16, 0x20u);
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA5B8]])
  {
    code = [errorCopy code];

    if (code == 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:*MEMORY[0x277CCA738]])
  {
    code2 = [errorCopy code];

    if (code2 == -999)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  delegate = [(NDAnalyticsUploadScheduler *)self delegate];
  [delegate uploadSchedulerDidDropScheduledBackgroundUpload:self];

LABEL_12:
}

- (void)_scheduleBackgroundUploadInWindow:(id)window
{
  v26 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  if (!windowCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsUploadScheduler _scheduleBackgroundUploadInWindow:];
  }

  backgroundSession = [(NDAnalyticsUploadScheduler *)self backgroundSession];
  [backgroundSession getAllTasksWithCompletionHandler:&__block_literal_global_6];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v8 = MEMORY[0x277CCAD20];
  v9 = MEMORY[0x277CBEBC0];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://www.%@.com", uUIDString];
  v11 = [v9 URLWithString:v10];
  v12 = [v8 requestWithURL:v11];

  v13 = [backgroundSession downloadTaskWithRequest:v12];
  [v13 setTaskDescription:uUIDString];
  earlierDate = [windowCopy earlierDate];
  [v13 setEarliestBeginDate:earlierDate];

  laterDate = [windowCopy laterDate];
  [laterDate timeIntervalSinceNow];
  [v13 set_timeoutIntervalForResource:?];

  v17 = NDSharedServiceLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    earlierDate2 = [windowCopy earlierDate];
    laterDate2 = [windowCopy laterDate];
    *buf = 138412802;
    v21 = earlierDate2;
    v22 = 2112;
    v23 = laterDate2;
    v24 = 2112;
    v25 = uUIDString;
    _os_log_impl(&dword_25BDF7000, v17, OS_LOG_TYPE_INFO, "Scheduling background task with start date %@, end date %@, taskDescription %@", buf, 0x20u);
  }

  [v13 resume];
}

void __64__NDAnalyticsUploadScheduler__scheduleBackgroundUploadInWindow___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = NDSharedServiceLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [v2 taskDescription];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_25BDF7000, v3, OS_LOG_TYPE_INFO, "Cancelling background task with taskDescription %@", &v5, 0xCu);
  }

  [v2 cancel];
}

- (void)_uploadWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsUploadScheduler _uploadWithCompletion:];
  }

  uploadQueue = [(NDAnalyticsUploadScheduler *)self uploadQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__NDAnalyticsUploadScheduler__uploadWithCompletion___block_invoke;
  v7[3] = &unk_27997AD98;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [uploadQueue enqueueBlock:v7];
}

void __52__NDAnalyticsUploadScheduler__uploadWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __52__NDAnalyticsUploadScheduler__uploadWithCompletion___block_invoke_2;
  v11 = &unk_27997AD70;
  v12 = *(a1 + 40);
  v4 = v3;
  v13 = v4;
  v5 = _Block_copy(&v8);
  v6 = [*(a1 + 32) delegate];
  v7 = v6;
  if (v6)
  {
    [v6 uploadScheduler:*(a1 + 32) performUploadWithCompletion:v5];
  }

  else
  {
    v5[2](v5);
  }
}

uint64_t __52__NDAnalyticsUploadScheduler__uploadWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (NDAnalyticsUploadSchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithURLSessionQueue:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "URLSessionQueue"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)handleLaunchEventForBackgroundSessionWithIdentifier:completion:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)handleLaunchEventForBackgroundSessionWithIdentifier:completion:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "[identifier isEqualToString:NDAnalyticsUploadSchedulerBackgroundSessionIdentifier]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)scheduleUploadInWindow:withForegroundUploadCompletion:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "deliveryWindow"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void __85__NDAnalyticsUploadScheduler_operationThrottler_performAsyncOperationWithCompletion___block_invoke_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"invalid nil value for '%s'", "deliveryWindow"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)_scheduleBackgroundUploadInWindow:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "deliveryWindow"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)_uploadWithCompletion:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

@end