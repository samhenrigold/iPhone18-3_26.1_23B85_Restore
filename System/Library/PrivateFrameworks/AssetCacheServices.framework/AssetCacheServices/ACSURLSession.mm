@interface ACSURLSession
+ (ACSURLSession)sessionWithConfiguration:(id)configuration canUseCachingServer:(BOOL)server locateOptions:(id)options delegate:(id)delegate delegateQueue:(id)queue;
+ (ACSURLSession)sharedSession;
- (ACSURLSession)initWithConfiguration:(id)configuration canUseCachingServer:(BOOL)server locateOptions:(id)options delegate:(id)delegate delegateQueue:(id)queue;
- (BOOL)_resumeData:(id)data toNSURLResumeData:(id *)resumeData originalRequest:(id *)request currentRequest:(id *)currentRequest error:(id *)error;
- (NSDictionary)locateOptions;
- (NSString)description;
- (NSString)sessionDescription;
- (NSURLSessionConfiguration)configuration;
- (id)_downloadTaskWithResumeData:(id)data completionHandler:(id)handler;
- (id)_errorWithResumeDataFromError:(id)error originalRequest:(id)request currentRequest:(id)currentRequest;
- (id)_keyForNSURLTask:(id)task;
- (id)_linkedLocationWithLocation:(id)location;
- (id)_onqueue_taskForNSURLTask:(id)task;
- (id)_onqueue_uniqueTasks;
- (id)_resumeDataWithNSURLResumeData:(id)data originalRequest:(id)request currentRequest:(id)currentRequest error:(id *)error;
- (id)dataTaskWithRequest:(id)request;
- (id)dataTaskWithRequest:(id)request completionHandler:(id)handler;
- (id)dataTaskWithURL:(id)l;
- (id)dataTaskWithURL:(id)l completionHandler:(id)handler;
- (id)downloadTaskWithRequest:(id)request;
- (id)downloadTaskWithRequest:(id)request completionHandler:(id)handler;
- (id)downloadTaskWithURL:(id)l;
- (id)downloadTaskWithURL:(id)l completionHandler:(id)handler;
- (id)uploadTaskWithRequest:(id)request fromData:(id)data;
- (id)uploadTaskWithRequest:(id)request fromData:(id)data completionHandler:(id)handler;
- (id)uploadTaskWithRequest:(id)request fromFile:(id)file;
- (id)uploadTaskWithRequest:(id)request fromFile:(id)file completionHandler:(id)handler;
- (id)uploadTaskWithStreamedRequest:(id)request;
- (void)URLSession:(id)session betterRouteDiscoveredForStreamTask:(id)task;
- (void)URLSession:(id)session dataTask:(id)task didBecomeDownloadTask:(id)downloadTask;
- (void)URLSession:(id)session dataTask:(id)task didBecomeStreamTask:(id)streamTask;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session readClosedForStreamTask:(id)task;
- (void)URLSession:(id)session streamTask:(id)task didBecomeInputStream:(id)stream outputStream:(id)outputStream;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session task:(id)task willBeginDelayedRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity;
- (void)URLSession:(id)session writeClosedForStreamTask:(id)task;
- (void)_addTask:(id)task;
- (void)_cancelDownloadTask:(id)task byProducingResumeData:(id)data;
- (void)_cancelTask:(id)task;
- (void)_copyAttributesFromNSURLTask:(id)task toNSURLTask:(id)lTask;
- (void)_dataTask:(id)task completedWithData:(id)data response:(id)response error:(id)error completionHandler:(id)handler;
- (void)_downloadTask:(id)task completedWithLocation:(id)location response:(id)response error:(id)error completionHandler:(id)handler;
- (void)_locateCachingServerForURL:(id)l isUpload:(BOOL)upload completionHandler:(id)handler;
- (void)_onqueue_addTask:(id)task forNSURLTask:(id)lTask;
- (void)_onqueue_removeTaskForNSURLTask:(id)task;
- (void)_onqueue_resumeTask:(id)task;
- (void)_onqueue_task:(id)_onqueue_task willUseCachingServer:(BOOL)server newRequest:(id)request completionHandler:(id)handler;
- (void)_removeTask:(id)task;
- (void)_resumeTask:(id)task;
- (void)_suspendTask:(id)task;
- (void)dealloc;
- (void)finishTasksAndInvalidate;
- (void)flushWithCompletionHandler:(id)handler;
- (void)getAllTasksWithCompletionHandler:(id)handler;
- (void)getTasksWithCompletionHandler:(id)handler;
- (void)invalidateAndCancel;
- (void)resetWithCompletionHandler:(id)handler;
- (void)setSessionDescription:(id)description;
@end

@implementation ACSURLSession

+ (ACSURLSession)sharedSession
{
  if (sharedSession_once != -1)
  {
    +[ACSURLSession sharedSession];
  }

  v3 = sharedSession_sharedSession;

  return v3;
}

uint64_t __30__ACSURLSession_sharedSession__block_invoke()
{
  v0 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v1 = [ACSURLSession sessionWithConfiguration:v0 canUseCachingServer:1 locateOptions:0];
  v2 = sharedSession_sharedSession;
  sharedSession_sharedSession = v1;

  v3 = sharedSession_sharedSession;

  return [v3 set_phase:3];
}

+ (ACSURLSession)sessionWithConfiguration:(id)configuration canUseCachingServer:(BOOL)server locateOptions:(id)options delegate:(id)delegate delegateQueue:(id)queue
{
  serverCopy = server;
  queueCopy = queue;
  delegateCopy = delegate;
  optionsCopy = options;
  configurationCopy = configuration;
  v15 = [[ACSURLSession alloc] initWithConfiguration:configurationCopy canUseCachingServer:serverCopy locateOptions:optionsCopy delegate:delegateCopy delegateQueue:queueCopy];

  return v15;
}

- (NSURLSessionConfiguration)configuration
{
  _nsurlSession = [(ACSURLSession *)self _nsurlSession];
  configuration = [_nsurlSession configuration];

  return configuration;
}

- (NSDictionary)locateOptions
{
  _locateOptions = [(ACSURLSession *)self _locateOptions];
  v3 = [_locateOptions copy];

  return v3;
}

- (NSString)sessionDescription
{
  _nsurlSession = [(ACSURLSession *)self _nsurlSession];
  sessionDescription = [_nsurlSession sessionDescription];

  return sessionDescription;
}

- (void)setSessionDescription:(id)description
{
  descriptionCopy = description;
  _nsurlSession = [(ACSURLSession *)self _nsurlSession];
  [_nsurlSession setSessionDescription:descriptionCopy];
}

- (void)finishTasksAndInvalidate
{
  _queue = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ACSURLSession_finishTasksAndInvalidate__block_invoke;
  block[3] = &unk_278CC4EA8;
  block[4] = self;
  dispatch_async(_queue, block);
}

void *__41__ACSURLSession_finishTasksAndInvalidate__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) canUseCachingServer] && (objc_msgSend(*(a1 + 32), "_phase") || (objc_msgSend(*(a1 + 32), "_tasks"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3)))
  {
    result = [*(a1 + 32) _phase];
    if (result)
    {
      return result;
    }

    v6 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) _nsurlSession];
    [v5 finishTasksAndInvalidate];

    v6 = 2;
  }

  v7 = *(a1 + 32);

  return [v7 set_phase:v6];
}

- (void)invalidateAndCancel
{
  _queue = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ACSURLSession_invalidateAndCancel__block_invoke;
  block[3] = &unk_278CC4EA8;
  block[4] = self;
  dispatch_async(_queue, block);
}

void *__36__ACSURLSession_invalidateAndCancel__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) canUseCachingServer] && (objc_msgSend(*(a1 + 32), "_phase") || (objc_msgSend(*(a1 + 32), "_tasks"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3)))
  {
    if (![*(a1 + 32) _phase] || (result = objc_msgSend(*(a1 + 32), "_phase"), result == 1))
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [*(a1 + 32) _onqueue_uniqueTasks];
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v13 + 1) + 8 * i) cancel];
          }

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      v10 = [*(a1 + 32) _nsurlSession];
      [v10 invalidateAndCancel];

      return [*(a1 + 32) set_phase:2];
    }
  }

  else
  {
    v11 = [*(a1 + 32) _nsurlSession];
    [v11 invalidateAndCancel];

    v12 = *(a1 + 32);

    return [v12 set_phase:2];
  }

  return result;
}

- (void)resetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _queue = [(ACSURLSession *)self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ACSURLSession_resetWithCompletionHandler___block_invoke;
  v7[3] = &unk_278CC4ED0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(_queue, v7);
}

void __44__ACSURLSession_resetWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nsurlSession];
  [v2 resetWithCompletionHandler:*(a1 + 40)];
}

- (void)flushWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _queue = [(ACSURLSession *)self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ACSURLSession_flushWithCompletionHandler___block_invoke;
  v7[3] = &unk_278CC4ED0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(_queue, v7);
}

void __44__ACSURLSession_flushWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nsurlSession];
  [v2 flushWithCompletionHandler:*(a1 + 40)];
}

- (void)getTasksWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _queue = [(ACSURLSession *)self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ACSURLSession_getTasksWithCompletionHandler___block_invoke;
  v7[3] = &unk_278CC4ED0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(_queue, v7);
}

void __47__ACSURLSession_getTasksWithCompletionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = a1;
  v5 = [*(a1 + 32) _onqueue_uniqueTasks];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v12 = v4;
        if ((isKindOfClass & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v3;
          }

          else
          {
            v12 = v2;
          }
        }

        [v12 addObject:v10];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v13 = [*(v18 + 32) _clientDelegateOpQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __47__ACSURLSession_getTasksWithCompletionHandler___block_invoke_2;
  v19[3] = &unk_278CC4EF8;
  v14 = *(v18 + 40);
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v23 = v14;
  v15 = v4;
  v16 = v3;
  v17 = v2;
  [v13 addOperationWithBlock:v19];
}

- (void)getAllTasksWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _queue = [(ACSURLSession *)self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ACSURLSession_getAllTasksWithCompletionHandler___block_invoke;
  v7[3] = &unk_278CC4ED0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(_queue, v7);
}

void __50__ACSURLSession_getAllTasksWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _onqueue_uniqueTasks];
  v3 = [*(a1 + 32) _clientDelegateOpQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__ACSURLSession_getAllTasksWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_278CC4F20;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [v3 addOperationWithBlock:v6];
}

- (id)dataTaskWithRequest:(id)request
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__ACSURLSession_dataTaskWithRequest___block_invoke;
  v8[3] = &unk_278CC4F48;
  v8[4] = self;
  requestCopy = request;
  v5 = MEMORY[0x245CDE340](v8);
  v6 = [[ACSURLSessionDataTask alloc] initWithNSURLDataTaskCreator:v5 initialRequest:requestCopy forSession:self];

  [(ACSURLSession *)self _addTask:v6];

  return v6;
}

id __37__ACSURLSession_dataTaskWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _nsurlSession];
  v5 = [v4 dataTaskWithRequest:v3];

  return v5;
}

- (id)dataTaskWithURL:(id)l
{
  v4 = [MEMORY[0x277CCAD20] requestWithURL:l];
  v5 = [(ACSURLSession *)self dataTaskWithRequest:v4];

  return v5;
}

- (id)uploadTaskWithRequest:(id)request fromFile:(id)file
{
  fileCopy = file;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __48__ACSURLSession_uploadTaskWithRequest_fromFile___block_invoke;
  v16 = &unk_278CC4F70;
  selfCopy = self;
  v18 = fileCopy;
  v7 = fileCopy;
  requestCopy = request;
  v9 = MEMORY[0x245CDE340](&v13);
  v10 = [ACSURLSessionUploadTask alloc];
  selfCopy = [(ACSURLSessionUploadTask *)v10 initWithNSURLUploadTaskCreator:v9 initialRequest:requestCopy forSession:self, v13, v14, v15, v16, selfCopy];

  [(ACSURLSession *)self _addTask:selfCopy];

  return selfCopy;
}

id __48__ACSURLSession_uploadTaskWithRequest_fromFile___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v6 = [v5 uploadTaskWithRequest:v4 fromFile:*(a1 + 40)];

  return v6;
}

- (id)uploadTaskWithRequest:(id)request fromData:(id)data
{
  dataCopy = data;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __48__ACSURLSession_uploadTaskWithRequest_fromData___block_invoke;
  v16 = &unk_278CC4F70;
  selfCopy = self;
  v18 = dataCopy;
  v7 = dataCopy;
  requestCopy = request;
  v9 = MEMORY[0x245CDE340](&v13);
  v10 = [ACSURLSessionUploadTask alloc];
  selfCopy = [(ACSURLSessionUploadTask *)v10 initWithNSURLUploadTaskCreator:v9 initialRequest:requestCopy forSession:self, v13, v14, v15, v16, selfCopy];

  [(ACSURLSession *)self _addTask:selfCopy];

  return selfCopy;
}

id __48__ACSURLSession_uploadTaskWithRequest_fromData___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v6 = [v5 uploadTaskWithRequest:v4 fromData:*(a1 + 40)];

  return v6;
}

- (id)uploadTaskWithStreamedRequest:(id)request
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__ACSURLSession_uploadTaskWithStreamedRequest___block_invoke;
  v8[3] = &unk_278CC4F98;
  v8[4] = self;
  requestCopy = request;
  v5 = MEMORY[0x245CDE340](v8);
  v6 = [[ACSURLSessionUploadTask alloc] initWithNSURLUploadTaskCreator:v5 initialRequest:requestCopy forSession:self];

  [(ACSURLSession *)self _addTask:v6];

  return v6;
}

id __47__ACSURLSession_uploadTaskWithStreamedRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _nsurlSession];
  v5 = [v4 uploadTaskWithStreamedRequest:v3];

  return v5;
}

- (id)downloadTaskWithRequest:(id)request
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__ACSURLSession_downloadTaskWithRequest___block_invoke;
  v8[3] = &unk_278CC4FC0;
  v8[4] = self;
  requestCopy = request;
  v5 = MEMORY[0x245CDE340](v8);
  v6 = [[ACSURLSessionDownloadTask alloc] initWithNSURLDownloadTaskCreator:v5 initialRequest:requestCopy forSession:self];

  [(ACSURLSession *)self _addTask:v6];

  return v6;
}

id __41__ACSURLSession_downloadTaskWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _nsurlSession];
  v5 = [v4 downloadTaskWithRequest:v3];

  return v5;
}

- (id)downloadTaskWithURL:(id)l
{
  v4 = [MEMORY[0x277CCAD20] requestWithURL:l];
  v5 = [(ACSURLSession *)self downloadTaskWithRequest:v4];

  return v5;
}

- (ACSURLSession)initWithConfiguration:(id)configuration canUseCachingServer:(BOOL)server locateOptions:(id)options delegate:(id)delegate delegateQueue:(id)queue
{
  serverCopy = server;
  v39[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  optionsCopy = options;
  delegateCopy = delegate;
  queueCopy = queue;
  identifier = [configurationCopy identifier];

  if (identifier)
  {
    v29 = MEMORY[0x277CBEAD8];
    v30 = *MEMORY[0x277CBE660];
    v38 = @"session";
    v39[0] = self;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v32 = @"ACSURLSession does not support background sessions";
    goto LABEL_13;
  }

  if (queueCopy && [queueCopy maxConcurrentOperationCount] != 1)
  {
    v29 = MEMORY[0x277CBEAD8];
    v30 = *MEMORY[0x277CBE660];
    v36 = @"session";
    selfCopy = self;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&selfCopy forKeys:&v36 count:1];
    v32 = @"Cannot create an ACSURLSession with a concurrent delegate queue; set its maxConcurrentOperationCount to 1 or use the main queue";
LABEL_13:
    v33 = [v29 exceptionWithName:v30 reason:v32 userInfo:v31];
    v34 = v33;

    objc_exception_throw(v33);
  }

  if (serverCopy)
  {
    ACSLocateCachingServer([MEMORY[0x277CBEBC0] URLWithString:@"http://www.apple.com/"], optionsCopy, 0, 0, 30.0);
  }

  v35.receiver = self;
  v35.super_class = ACSURLSession;
  v17 = [(ACSURLSession *)&v35 init];
  v18 = v17;
  if (v17)
  {
    [(ACSURLSession *)v17 setCanUseCachingServer:serverCopy];
    v19 = os_log_create("com.apple.AssetCacheServices", "URLSession");
    [(ACSURLSession *)v18 set_logHandle:v19];

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("ACSURLSession queue", v20);
    [(ACSURLSession *)v18 set_queue:v21];

    v22 = [MEMORY[0x277CCAD30] sessionWithConfiguration:configurationCopy delegate:v18 delegateQueue:queueCopy];
    [(ACSURLSession *)v18 set_nsurlSession:v22];

    v23 = [(__CFDictionary *)optionsCopy copy];
    [(ACSURLSession *)v18 set_locateOptions:v23];

    [(ACSURLSession *)v18 set_clientDelegate:delegateCopy];
    _nsurlSession = [(ACSURLSession *)v18 _nsurlSession];
    delegateQueue = [_nsurlSession delegateQueue];
    [(ACSURLSession *)v18 set_clientDelegateOpQueue:delegateQueue];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(ACSURLSession *)v18 set_tasks:dictionary];
  }

  _logHandle = [(ACSURLSession *)v18 _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [ACSURLSession initWithConfiguration:canUseCachingServer:locateOptions:delegate:delegateQueue:];
  }

  return v18;
}

- (void)dealloc
{
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [ACSURLSession dealloc];
  }

  v4.receiver = self;
  v4.super_class = ACSURLSession;
  [(ACSURLSession *)&v4 dealloc];
}

- (NSString)description
{
  _tasks = [(ACSURLSession *)self _tasks];
  objc_sync_enter(_tasks);
  _tasks2 = [(ACSURLSession *)self _tasks];
  allValues = [_tasks2 allValues];

  objc_sync_exit(_tasks);
  _phase = [(ACSURLSession *)self _phase];
  if (_phase >= 4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown phase %d", _phase];
  }

  else
  {
    v7 = off_278CC5620[_phase];
  }

  v8 = MEMORY[0x277CCAB68];
  v18.receiver = self;
  v18.super_class = ACSURLSession;
  v9 = [(ACSURLSession *)&v18 description];
  canUseCachingServer = [(ACSURLSession *)self canUseCachingServer];
  _nsurlSession = [(ACSURLSession *)self _nsurlSession];
  _clientDelegate = [(ACSURLSession *)self _clientDelegate];
  v13 = objc_msgSend(v8, "stringWithFormat:", @"%@ { canUseCachingServer: %d, phase: %@, session: %@, delegate: %p, tasks: ("), v9, canUseCachingServer, v7, _nsurlSession, _clientDelegate;

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __28__ACSURLSession_description__block_invoke;
  v16[3] = &unk_278CC4FE8;
  v14 = v13;
  v17 = v14;
  [allValues enumerateObjectsUsingBlock:v16];
  [v14 appendString:@" }"]);

  return v14;
}

void __28__ACSURLSession_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendFormat:@"%p", v5];
}

- (id)_keyForNSURLTask:(id)task
{
  v3 = MEMORY[0x277CCACA8];
  taskCopy = task;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  taskIdentifier = [taskCopy taskIdentifier];

  v8 = [v3 stringWithFormat:@"%@ %lu", v6, taskIdentifier];

  return v8;
}

- (void)_addTask:(id)task
{
  taskCopy = task;
  _queue = [(ACSURLSession *)self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__ACSURLSession__addTask___block_invoke;
  v7[3] = &unk_278CC5010;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  dispatch_async(_queue, v7);
}

uint64_t __26__ACSURLSession__addTask___block_invoke(uint64_t a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _phase] == 1 || objc_msgSend(*(a1 + 32), "_phase") == 2)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE648];
    v13[0] = @"session";
    v13[1] = @"task";
    v8 = *(a1 + 40);
    v14[0] = *(a1 + 32);
    v14[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v10 = [v6 exceptionWithName:v7 reason:@"Cannot create a task in an ACSURLSession that has been invalidated" userInfo:v9];
    v11 = v10;

    objc_exception_throw(v10);
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 _nsurlTaskToOrigin];
  [v2 _onqueue_addTask:v3 forNSURLTask:v4];

  v5 = [*(a1 + 40) _nsurlTaskToCachingServer];
  if (v5)
  {
    [*(a1 + 32) _onqueue_addTask:*(a1 + 40) forNSURLTask:v5];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_onqueue_addTask:(id)task forNSURLTask:(id)lTask
{
  v28 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  lTaskCopy = lTask;
  _queue = [(ACSURLSession *)self _queue];
  dispatch_assert_queue_V2(_queue);

  v10 = [(ACSURLSession *)self _keyForNSURLTask:lTaskCopy];
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    descriptionWithAddress = [lTaskCopy descriptionWithAddress];
    *buf = 138412802;
    v23 = taskCopy;
    v24 = 2112;
    v25 = descriptionWithAddress;
    v26 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "add task %@ for nsurlTask %@ self=%@", buf, 0x20u);
  }

  _tasks = [(ACSURLSession *)self _tasks];
  objc_sync_enter(_tasks);
  _tasks2 = [(ACSURLSession *)self _tasks];
  v14 = [_tasks2 objectForKeyedSubscript:v10];
  v15 = v14 == 0;

  if (!v15)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    _tasks3 = [(ACSURLSession *)self _tasks];
    v20 = [_tasks3 objectForKeyedSubscript:v10];
    descriptionWithAddress2 = [lTaskCopy descriptionWithAddress];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ACSURLSession.m" lineNumber:363 description:{@"ACSURLSession %@ clobbering ACSURLSessionTask %@ with %@ for NSURLSessionTask %@", self, v20, taskCopy, descriptionWithAddress2}];
  }

  _tasks4 = [(ACSURLSession *)self _tasks];
  [_tasks4 setObject:taskCopy forKeyedSubscript:v10];

  objc_sync_exit(_tasks);
}

- (void)_removeTask:(id)task
{
  taskCopy = task;
  _queue = [(ACSURLSession *)self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__ACSURLSession__removeTask___block_invoke;
  v7[3] = &unk_278CC5010;
  v8 = taskCopy;
  selfCopy = self;
  v6 = taskCopy;
  dispatch_async(_queue, v7);
}

void __29__ACSURLSession__removeTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nsurlTaskToOrigin];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) _nsurlTaskToOrigin];
    [v3 _onqueue_removeTaskForNSURLTask:v4];
  }

  [*(a1 + 32) set_nsurlTaskToOrigin:0];
  v8 = [*(a1 + 32) _nsurlTaskToCachingServer];
  if (v8)
  {
    [*(a1 + 40) _onqueue_removeTaskForNSURLTask:v8];
    [*(a1 + 32) set_nsurlTaskToCachingServer:0];
  }

  if ([*(a1 + 40) _phase] == 1)
  {
    v5 = [*(a1 + 40) _tasks];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = [*(a1 + 40) _nsurlSession];
      [v7 finishTasksAndInvalidate];

      [*(a1 + 40) set_phase:2];
    }
  }
}

- (void)_onqueue_removeTaskForNSURLTask:(id)task
{
  v25 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  _queue = [(ACSURLSession *)self _queue];
  dispatch_assert_queue_V2(_queue);

  v6 = [(ACSURLSession *)self _keyForNSURLTask:taskCopy];
  _tasks = [(ACSURLSession *)self _tasks];
  objc_sync_enter(_tasks);
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    _tasks2 = [(ACSURLSession *)self _tasks];
    v15 = [_tasks2 objectForKeyedSubscript:v6];
    descriptionWithAddress = [taskCopy descriptionWithAddress];
    v17 = 138413058;
    selfCopy2 = v15;
    v19 = 2112;
    v20 = descriptionWithAddress;
    v21 = 2112;
    selfCopy = self;
    v23 = 2112;
    v24 = v6;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "remove task %@ for nsurlTask %@ self=%@ key=%@", &v17, 0x2Au);
  }

  _tasks3 = [(ACSURLSession *)self _tasks];
  v10 = [_tasks3 objectForKeyedSubscript:v6];
  v11 = v10 == 0;

  if (v11)
  {
    _logHandle2 = [(ACSURLSession *)self _logHandle];
    if (os_log_type_enabled(_logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      descriptionWithAddress2 = [taskCopy descriptionWithAddress];
      v17 = 138412802;
      selfCopy2 = self;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      selfCopy = descriptionWithAddress2;
      _os_log_impl(&dword_2411B8000, _logHandle2, OS_LOG_TYPE_DEFAULT, "ACSURLSession %@ missing ACSURLSessionTask for NSURLSessionTask %@; this is normal if the task was canceled. task %@", &v17, 0x20u);
    }
  }

  else
  {
    _logHandle2 = [(ACSURLSession *)self _tasks];
    [_logHandle2 removeObjectForKey:v6];
  }

  objc_sync_exit(_tasks);
}

- (id)_onqueue_taskForNSURLTask:(id)task
{
  v24 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  _queue = [(ACSURLSession *)self _queue];
  dispatch_assert_queue_V2(_queue);

  v7 = [(ACSURLSession *)self _keyForNSURLTask:taskCopy];
  _tasks = [(ACSURLSession *)self _tasks];
  objc_sync_enter(_tasks);
  _tasks2 = [(ACSURLSession *)self _tasks];
  v10 = [_tasks2 objectForKeyedSubscript:v7];

  objc_sync_exit(_tasks);
  if (v10)
  {
    _nsurlTaskToOrigin = [v10 _nsurlTaskToOrigin];
    _nsurlTaskToCachingServer = [v10 _nsurlTaskToCachingServer];
    v13 = _nsurlTaskToCachingServer;
    if (_nsurlTaskToOrigin != taskCopy && _nsurlTaskToCachingServer != taskCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      descriptionWithAddress = [_nsurlTaskToOrigin descriptionWithAddress];
      descriptionWithAddress2 = [v13 descriptionWithAddress];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ACSURLSession.m" lineNumber:428 description:{@"ACSURLSession %@ task %@ != expected %@ or %@", self, taskCopy, descriptionWithAddress, descriptionWithAddress2}];
    }

    v14 = v10;
  }

  else
  {
    _logHandle = [(ACSURLSession *)self _logHandle];
    if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEFAULT, "ACSURLSession %@ missing ACSURLSessionTask for NSURLSessionTask %@; this is normal if the task was canceled", buf, 0x16u);
    }
  }

  return v10;
}

- (id)_onqueue_uniqueTasks
{
  v20 = *MEMORY[0x277D85DE8];
  _queue = [(ACSURLSession *)self _queue];
  dispatch_assert_queue_V2(_queue);

  _tasks = [(ACSURLSession *)self _tasks];
  objc_sync_enter(_tasks);
  _tasks2 = [(ACSURLSession *)self _tasks];
  allValues = [_tasks2 allValues];

  objc_sync_exit(_tasks);
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(allValues, "count")}];
  v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(allValues, "count")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = allValues;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (([v8 containsObject:{v13, v15}] & 1) == 0)
        {
          [v7 addObject:v13];
          [v8 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)_locateCachingServerForURL:(id)l isUpload:(BOOL)upload completionHandler:(id)handler
{
  uploadCopy = upload;
  handlerCopy = handler;
  lCopy = l;
  if (![(ACSURLSession *)self canUseCachingServer])
  {
    [ACSURLSession _locateCachingServerForURL:a2 isUpload:self completionHandler:?];
  }

  _locateOptions = [(ACSURLSession *)self _locateOptions];
  dictionary = _locateOptions;
  if (uploadCopy)
  {
    v13 = [_locateOptions mutableCopy];

    dictionary = v13;
    if (!v13)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v14 = [dictionary objectForKeyedSubscript:@"capabilities"];
    dictionary2 = [v14 mutableCopy];

    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:dictionary2 forKeyedSubscript:@"capabilities"];
    }

    [dictionary2 setObject:*MEMORY[0x277CBED28] forKeyedSubscript:@"import"];
  }

  _queue = [(ACSURLSession *)self _queue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__ACSURLSession__locateCachingServerForURL_isUpload_completionHandler___block_invoke;
  v18[3] = &unk_278CC5038;
  v19 = handlerCopy;
  v17 = handlerCopy;
  ACSLocateCachingServer(lCopy, dictionary, _queue, v18, 30.0);
}

- (void)_onqueue_task:(id)_onqueue_task willUseCachingServer:(BOOL)server newRequest:(id)request completionHandler:(id)handler
{
  _onqueue_taskCopy = _onqueue_task;
  requestCopy = request;
  handlerCopy = handler;
  _queue = [(ACSURLSession *)self _queue];
  dispatch_assert_queue_V2(_queue);

  _clientDelegate = [(ACSURLSession *)self _clientDelegate];
  _clientDelegateOpQueue = [(ACSURLSession *)self _clientDelegateOpQueue];
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__ACSURLSession__onqueue_task_willUseCachingServer_newRequest_completionHandler___block_invoke;
    v16[3] = &unk_278CC5088;
    v17 = _clientDelegate;
    selfCopy = self;
    v19 = _onqueue_taskCopy;
    serverCopy = server;
    v20 = requestCopy;
    v21 = handlerCopy;
    [_clientDelegateOpQueue addOperationWithBlock:v16];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, requestCopy);
  }
}

void __81__ACSURLSession__onqueue_task_willUseCachingServer_newRequest_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 72);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__ACSURLSession__onqueue_task_willUseCachingServer_newRequest_completionHandler___block_invoke_2;
  v6[3] = &unk_278CC5060;
  v6[4] = v2;
  v7 = *(a1 + 64);
  [v1 URLSession:v2 task:v4 willUseCachingServer:v3 newRequest:v5 completionHandler:v6];
}

void __81__ACSURLSession__onqueue_task_willUseCachingServer_newRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__ACSURLSession__onqueue_task_willUseCachingServer_newRequest_completionHandler___block_invoke_3;
  v7[3] = &unk_278CC4F20;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)_cancelTask:(id)task
{
  taskCopy = task;
  if ([(ACSURLSession *)self canUseCachingServer])
  {
    _logHandle = [(ACSURLSession *)self _logHandle];
    if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [ACSURLSession _cancelTask:];
    }

    _queue = [(ACSURLSession *)self _queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__ACSURLSession__cancelTask___block_invoke;
    v8[3] = &unk_278CC5010;
    v9 = taskCopy;
    selfCopy = self;
    dispatch_async(_queue, v8);
  }

  else
  {
    _nsurlTaskToOrigin = [taskCopy _nsurlTaskToOrigin];
    [_nsurlTaskToOrigin cancel];
  }
}

void __29__ACSURLSession__cancelTask___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) _internalState] == 2)
  {
    v3 = [*(a1 + 40) _logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __29__ACSURLSession__cancelTask___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  else
  {
    v11 = [*v2 _nsurlTaskToCachingServer];
    if (v11 && [*v2 _tryCachingServer])
    {
      [*v2 set_failBackToOrigin:0];
      [v11 cancel];
    }

    else
    {
      v10 = [*v2 _nsurlTaskToOrigin];
      [v10 cancel];
    }
  }
}

- (void)_cancelDownloadTask:(id)task byProducingResumeData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke;
  v22[3] = &unk_278CC50B0;
  v22[4] = self;
  v9 = taskCopy;
  v23 = v9;
  v10 = dataCopy;
  v24 = v10;
  v11 = MEMORY[0x245CDE340](v22);
  if ([(ACSURLSession *)self canUseCachingServer])
  {
    _logHandle = [(ACSURLSession *)self _logHandle];
    if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [ACSURLSession _cancelDownloadTask:byProducingResumeData:];
    }

    if ([v9 _internalState] == 2)
    {
      _logHandle2 = [(ACSURLSession *)self _logHandle];
      if (os_log_type_enabled(_logHandle2, OS_LOG_TYPE_DEBUG))
      {
        [ACSURLSession _cancelDownloadTask:byProducingResumeData:];
      }

      (*(v10 + 2))(v10, 0);
    }

    _queue = [(ACSURLSession *)self _queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke_122;
    v16[3] = &unk_278CC50D8;
    v21 = a2;
    v17 = v9;
    selfCopy = self;
    v19 = v11;
    v20 = v10;
    dispatch_async(_queue, v16);

    _nsurlTaskToOrigin = v17;
  }

  else
  {
    _nsurlTaskToOrigin = [v9 _nsurlTaskToOrigin];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [ACSURLSession _cancelDownloadTask:byProducingResumeData:];
    }

    [_nsurlTaskToOrigin cancelByProducingResumeData:v11];
  }
}

void __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) originalRequest];
    v6 = [*(a1 + 40) currentRequest];
    v12 = 0;
    v7 = [v4 _resumeDataWithNSURLResumeData:v3 originalRequest:v5 currentRequest:v6 error:&v12];
    v8 = v12;

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"Invalid resume data from NSURL";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v9 errorWithDomain:@"_kACSURLSessionErrorDomain" code:1 userInfo:v10];
  }

  v11 = [*(a1 + 32) _logHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke_cold_1();
  }

  v7 = 0;
LABEL_8:
  (*(*(a1 + 48) + 16))();
}

void __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke_122(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlTaskToCachingServer];
  if (v3 && [*v2 _tryCachingServer])
  {
    [*v2 set_failBackToOrigin:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke_122_cold_1();
    }

    [v3 cancelByProducingResumeData:*(a1 + 48)];
  }

  else
  {
    v4 = [*v2 _nsurlTaskToOrigin];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 cancelByProducingResumeData:*(a1 + 48)];
    }

    else
    {
      v5 = [*(a1 + 40) _logHandle];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v8 = *(a1 + 32);
        v7 = *(a1 + 40);
        v9 = [v4 descriptionWithAddress];
        v10 = 138413058;
        v11 = v7;
        v12 = 2112;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        v16 = 2112;
        v17 = @"NSURLSessionDownloadTask";
        _os_log_fault_impl(&dword_2411B8000, v5, OS_LOG_TYPE_FAULT, "ACSURLSession %@ unexpected task %@ for nsurlTask %@, expected class %@", &v10, 0x2Au);
      }

      v6 = [*(a1 + 40) _logHandle];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_2411B8000, v6, OS_LOG_TYPE_DEFAULT, "ACSURLSessionDownloadTask _cancelDownloadTask:byProducingResumeData: completing with nil", &v10, 2u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

- (id)_downloadTaskWithResumeData:(id)data completionHandler:(id)handler
{
  v55[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v34 = dataCopy;
  v8 = [(ACSURLSession *)self _resumeData:dataCopy toNSURLResumeData:&v53 originalRequest:&v52 currentRequest:&v51 error:&v50];
  v9 = v53;
  v36 = v52;
  v10 = v51;
  v35 = v50;
  if (!v8)
  {
    v26 = MEMORY[0x277CBEAD8];
    v54[0] = @"session";
    v54[1] = @"error";
    v55[0] = self;
    v55[1] = v35;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
    v28 = [v26 exceptionWithName:*MEMORY[0x277CBE660] reason:@"Invalid resume data" userInfo:v27];
    v29 = v28;

    objc_exception_throw(v28);
  }

  v11 = [v10 URL];
  query = [v11 query];

  if ([query hasPrefix:@"source="])
  {
    v13 = 1;
  }

  else
  {
    v13 = [query containsString:@"&source="];
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = 0;
  if (handlerCopy)
  {
    v14 = v37;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke_2;
    v37[3] = &unk_278CC5178;
    v40[1] = &v44;
    v37[4] = self;
    v31 = v40;
    v40[0] = handlerCopy;
    v32 = &v38;
    v38 = v10;
    dataCopy = &v39;
  }

  else
  {
    v14 = v41;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke;
    v41[3] = &unk_278CC5100;
    v30 = v42;
    v42[0] = v10;
    v42[1] = self;
    v33 = &v43;
  }

  v15 = v9;
  v14[6] = v15;
  v16 = MEMORY[0x245CDE340](v14);
  if (v13)
  {
    v17 = [[ACSURLSessionDownloadTask alloc] initWithNSURLDownloadTaskCreator:v16 initialRequest:v36 forSession:self];
    v18 = v45[5];
    v45[5] = v17;

    v19 = [v45[5] _nsurlTaskForRequest:v10];
    [v45[5] set_nsurlTaskToCachingServer:v19];
    _nsurlTaskToOrigin = [v45[5] _nsurlTaskToOrigin];
    _nsurlTaskToCachingServer = [v45[5] _nsurlTaskToCachingServer];
    [(ACSURLSession *)self _copyAttributesFromNSURLTask:_nsurlTaskToOrigin toNSURLTask:_nsurlTaskToCachingServer];
  }

  else
  {
    v22 = [[ACSURLSessionDownloadTask alloc] initWithNSURLDownloadTaskCreator:v16 initialRequest:v10 forSession:self];
    v23 = v45[5];
    v45[5] = v22;

    [v45[5] set_resumedOriginalRequest:v36];
    [v45[5] set_tryCachingServer:0];
  }

  [v45[5] set_suspended:1];
  [(ACSURLSession *)self _addTask:v45[5]];
  v24 = v45[5];

  if (handlerCopy)
  {
  }

  else
  {
  }

  _Block_object_dispose(&v44, 8);

  return v24;
}

id __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) _nsurlSession];
  v6 = v5;
  if (v4 == v3)
  {
    [v5 downloadTaskWithResumeData:*(a1 + 48)];
  }

  else
  {
    [v5 downloadTaskWithRequest:v3];
  }
  v7 = ;

  return v7;
}

id __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke_3;
  v12[3] = &unk_278CC5150;
  v12[4] = *(a1 + 32);
  v11 = *(a1 + 56);
  v4 = v11;
  v13 = v11;
  v5 = MEMORY[0x245CDE340](v12);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) _nsurlSession];
  v8 = v7;
  if (v6 == v3)
  {
    [v7 downloadTaskWithResumeData:*(a1 + 48) completionHandler:v5];
  }

  else
  {
    [v7 downloadTaskWithRequest:v3 completionHandler:v5];
  }
  v9 = ;

  return v9;
}

void __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke_4;
    v12[3] = &unk_278CC5128;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v10;
    v14 = v11;
    [v9 _downloadTask:v4 completedWithLocation:a2 response:a3 error:a4 completionHandler:v12];
  }
}

uint64_t __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) set_nsurlTaskCreator:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 set_internalState:2];
}

- (void)_suspendTask:(id)task
{
  taskCopy = task;
  if ([(ACSURLSession *)self canUseCachingServer])
  {
    _logHandle = [(ACSURLSession *)self _logHandle];
    if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [ACSURLSession _suspendTask:];
    }

    _queue = [(ACSURLSession *)self _queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__ACSURLSession__suspendTask___block_invoke;
    v8[3] = &unk_278CC5010;
    v9 = taskCopy;
    selfCopy = self;
    dispatch_async(_queue, v8);
  }

  else
  {
    _nsurlTaskToOrigin = [taskCopy _nsurlTaskToOrigin];
    [_nsurlTaskToOrigin suspend];
  }
}

void __30__ACSURLSession__suspendTask___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) _internalState] == 2)
  {
    v3 = [*(a1 + 40) _logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __30__ACSURLSession__suspendTask___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  else
  {
    v11 = [*v2 _nsurlTaskToCachingServer];
    if (v11 && [*v2 _tryCachingServer])
    {
      [v11 suspend];
    }

    else
    {
      v10 = [*v2 _nsurlTaskToOrigin];
      [v10 suspend];
    }

    [*v2 set_suspended:1];
  }
}

- (void)_resumeTask:(id)task
{
  v19 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  canUseCachingServer = [(ACSURLSession *)self canUseCachingServer];
  _logHandle = [(ACSURLSession *)self _logHandle];
  v7 = _logHandle;
  if (canUseCachingServer)
  {
    if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [ACSURLSession _resumeTask:];
    }

    if ([taskCopy _internalState] != 2)
    {
      _queue = [(ACSURLSession *)self _queue];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __29__ACSURLSession__resumeTask___block_invoke;
      v13[3] = &unk_278CC5010;
      v13[4] = self;
      v14 = taskCopy;
      dispatch_async(_queue, v13);

      goto LABEL_12;
    }

    _logHandle2 = [(ACSURLSession *)self _logHandle];
    if (os_log_type_enabled(_logHandle2, OS_LOG_TYPE_DEBUG))
    {
      [ACSURLSession _resumeTask:];
    }
  }

  else
  {
    if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEFAULT))
    {
      originalRequest = [taskCopy originalRequest];
      v10 = [originalRequest URL];
      absoluteString = [v10 absoluteString];
      *buf = 138412546;
      v16 = taskCopy;
      v17 = 2112;
      v18 = absoluteString;
      _os_log_impl(&dword_2411B8000, v7, OS_LOG_TYPE_DEFAULT, "ACSURLSessionTask %@ for %@ can not use caching server", buf, 0x16u);
    }

    _logHandle2 = [taskCopy _nsurlTaskToOrigin];
    [_logHandle2 resume];
  }

LABEL_12:
}

- (void)_onqueue_resumeTask:(id)task
{
  taskCopy = task;
  _queue = [(ACSURLSession *)self _queue];
  dispatch_assert_queue_V2(_queue);

  originalRequest = [taskCopy originalRequest];
  v7 = [originalRequest URL];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __37__ACSURLSession__onqueue_resumeTask___block_invoke;
  v19[3] = &unk_278CC51C8;
  v19[4] = self;
  v8 = taskCopy;
  v20 = v8;
  v9 = originalRequest;
  v21 = v9;
  v10 = MEMORY[0x245CDE340](v19);
  if ([v8 _suspended])
  {
    [v8 set_suspended:0];
    [v8 set_internalState:1];
    _nsurlTaskToCachingServer = [v8 _nsurlTaskToCachingServer];
    if (_nsurlTaskToCachingServer && [v8 _tryCachingServer])
    {
      [_nsurlTaskToCachingServer resume];
    }

    else
    {
      _nsurlTaskToOrigin = [v8 _nsurlTaskToOrigin];
      [_nsurlTaskToOrigin resume];
    }
  }

  else if (v7 && ([v8 _tryCachingServer] & 1) != 0)
  {
    _isUpload = [v8 _isUpload];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__ACSURLSession__onqueue_resumeTask___block_invoke_3;
    v14[3] = &unk_278CC51F0;
    v15 = v9;
    selfCopy = self;
    v17 = v8;
    v18 = v10;
    [(ACSURLSession *)self _locateCachingServerForURL:v7 isUpload:_isUpload completionHandler:v14];
  }

  else
  {
    v10[2](v10);
  }
}

void __37__ACSURLSession__onqueue_resumeTask___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ACSURLSession__onqueue_resumeTask___block_invoke_2;
  v5[3] = &unk_278CC51A0;
  v5[4] = v3;
  v6 = v2;
  v7 = a1[6];
  [v3 _onqueue_task:v6 willUseCachingServer:0 newRequest:v4 completionHandler:v5];
}

void __37__ACSURLSession__onqueue_resumeTask___block_invoke_2(id *a1, void *a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v3 = [a1[4] _queue];
  dispatch_assert_queue_V2(v3);

  if (v11 && [a1[4] _phase] != 2)
  {
    if (a1[6] != v11)
    {
      v5 = MEMORY[0x277CBEAD8];
      v6 = *MEMORY[0x277CBE660];
      v12[0] = @"session";
      v12[1] = @"request";
      v7 = a1[5];
      v13[0] = a1[4];
      v13[1] = v11;
      v12[2] = @"task";
      v13[2] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
      v9 = [v5 exceptionWithName:v6 reason:@"Cannot modify request when not using caching server" userInfo:v8];
      v10 = v9;

      objc_exception_throw(v9);
    }

    v4 = [a1[5] _nsurlTaskToOrigin];
    [v4 resume];
  }

  else
  {
    [a1[5] cancel];
  }
}

void __37__ACSURLSession__onqueue_resumeTask___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) mutableCopy];
    [v7 setURL:v5];
    [v7 setAllowsCellularAccess:0];
    v8 = [v6 objectForKeyedSubscript:@"connectTimeout"];
    v9 = v8;
    if (v8)
    {
      [v8 doubleValue];
      if (v10 < 30.0)
      {
        [v7 _setRequiresShortConnectionTimeout:1];
      }
    }

    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __37__ACSURLSession__onqueue_resumeTask___block_invoke_4;
    v13[3] = &unk_278CC51A0;
    v13[4] = v12;
    v14 = v11;
    v15 = *(a1 + 32);
    [v12 _onqueue_task:v14 willUseCachingServer:1 newRequest:v7 completionHandler:v13];
  }

  else
  {
    [*(a1 + 48) set_tryCachingServer:0];
    (*(*(a1 + 56) + 16))();
  }
}

void __37__ACSURLSession__onqueue_resumeTask___block_invoke_4(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] _queue];
  dispatch_assert_queue_V2(v4);

  if (v3 && [a1[4] _phase] != 2)
  {
    v5 = a1[5];
    if (a1[6] == v3)
    {
      [v5 set_tryCachingServer:0];
      v10 = [a1[5] _nsurlTaskToOrigin];
      [v10 resume];
    }

    else
    {
      v6 = [v5 _nsurlTaskForRequest:v3];
      if (v6)
      {
        [a1[5] set_nsurlTaskToCachingServer:v6];
        v7 = a1[4];
        v8 = [a1[5] _nsurlTaskToOrigin];
        v9 = [a1[5] _nsurlTaskToCachingServer];
        [v7 _copyAttributesFromNSURLTask:v8 toNSURLTask:v9];

        [a1[4] _onqueue_addTask:a1[5] forNSURLTask:v6];
        [v6 resume];
      }

      else
      {
        v11 = [a1[4] _logHandle];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __37__ACSURLSession__onqueue_resumeTask___block_invoke_4_cold_1(v11);
        }

        [a1[5] cancel];
      }
    }
  }

  else
  {
    [a1[5] cancel];
  }
}

- (void)_dataTask:(id)task completedWithData:(id)data response:(id)response error:(id)error completionHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  handlerCopy = handler;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v32 = taskCopy;
    v33 = 2048;
    v34 = [dataCopy length];
    v35 = 2112;
    v36 = responseCopy;
    v37 = 2112;
    v38 = errorCopy;
    v39 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "_dataTask:%@ completedWithData:[%ld bytes] response:%@ error:%@ self=%@", buf, 0x34u);
  }

  _queue = [(ACSURLSession *)self _queue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __78__ACSURLSession__dataTask_completedWithData_response_error_completionHandler___block_invoke;
  v24[3] = &unk_278CC5240;
  v25 = taskCopy;
  v26 = errorCopy;
  v27 = responseCopy;
  selfCopy2 = self;
  v29 = dataCopy;
  v30 = handlerCopy;
  v19 = dataCopy;
  v20 = handlerCopy;
  v21 = responseCopy;
  v22 = errorCopy;
  v23 = taskCopy;
  dispatch_async(_queue, v24);
}

void __78__ACSURLSession__dataTask_completedWithData_response_error_completionHandler___block_invoke(uint64_t a1)
{
  *&v35[13] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _nsurlTaskToCachingServer];
  if (!v2 || ![*(a1 + 32) _tryCachingServer])
  {
    v10 = 0;
LABEL_28:
    v15 = *(a1 + 56);
    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) originalRequest];
    v18 = [*(a1 + 32) currentRequest];
    v19 = [v15 _errorWithResumeDataFromError:v16 originalRequest:v17 currentRequest:v18];

    v20 = [*(a1 + 56) _clientDelegateOpQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __78__ACSURLSession__dataTask_completedWithData_response_error_completionHandler___block_invoke_144;
    v23[3] = &unk_278CC5218;
    v29 = *(a1 + 72);
    v24 = *(a1 + 64);
    v25 = *(a1 + 48);
    v26 = v19;
    v30 = v10;
    v21 = *(a1 + 32);
    v22 = *(a1 + 56);
    v27 = v21;
    v28 = v22;
    v4 = v19;
    [v20 addOperationWithBlock:v23];

    goto LABEL_29;
  }

  if (![*(a1 + 32) _failBackToOrigin])
  {
LABEL_27:
    v10 = 1;
    goto LABEL_28;
  }

  v3 = [v2 currentRequest];
  v4 = [v3 URL];

  if (*(a1 + 40))
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [*(a1 + 48) statusCode] < 400)
  {
    cf = 0;
    if (!ACSUpdateCachingServerHealth(v4, 0, 1, &cf))
    {
      v13 = [*(a1 + 56) _logHandle];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v4 absoluteString];
        *buf = 138412802;
        v33 = v14;
        v34 = 1024;
        *v35 = 1;
        v35[2] = 2112;
        *&v35[3] = cf;
        _os_log_impl(&dword_2411B8000, v13, OS_LOG_TYPE_DEFAULT, "ACSUpdateCachingServerHealth(%@, %d) failed: %@", buf, 0x1Cu);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_27;
  }

  if (!*(a1 + 40))
  {
    v5 = [*(a1 + 56) _logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 48) statusCode];
      v12 = [v4 absoluteString];
      *buf = 134218242;
      v33 = v11;
      v34 = 2112;
      *v35 = v12;
      _os_log_impl(&dword_2411B8000, v5, OS_LOG_TYPE_DEFAULT, "HTTP response %ld from %@, failing back to original", buf, 0x16u);
    }

    goto LABEL_7;
  }

LABEL_5:
  v5 = [*(a1 + 56) _logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = [v4 absoluteString];
    *buf = 138412546;
    v33 = v6;
    v34 = 2112;
    *v35 = v7;
    _os_log_impl(&dword_2411B8000, v5, OS_LOG_TYPE_DEFAULT, "Error %@ from %@, failing back to original", buf, 0x16u);
  }

LABEL_7:

  cf = 0;
  if (!ACSUpdateCachingServerHealth(v4, 0, 0, &cf))
  {
    v8 = [*(a1 + 56) _logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 absoluteString];
      *buf = 138412802;
      v33 = v9;
      v34 = 1024;
      *v35 = 0;
      v35[2] = 2112;
      *&v35[3] = cf;
      _os_log_impl(&dword_2411B8000, v8, OS_LOG_TYPE_DEFAULT, "ACSUpdateCachingServerHealth(%@, %d) failed: %@", buf, 0x1Cu);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  [*(a1 + 32) set_nsurlTaskToCachingServer:0];
  [*(a1 + 56) _onqueue_removeTaskForNSURLTask:v2];
  [*(a1 + 32) set_tryCachingServer:0];
  [*(a1 + 56) _onqueue_resumeTask:*(a1 + 32)];
LABEL_29:
}

uint64_t __78__ACSURLSession__dataTask_completedWithData_response_error_completionHandler___block_invoke_144(uint64_t a1)
{
  (*(*(a1 + 72) + 16))();
  if (*(a1 + 80) == 1)
  {
    v2 = [*(a1 + 56) _nsurlTaskToOrigin];
    [v2 cancel];
  }

  v4 = *(a1 + 56);
  v3 = *(a1 + 64);

  return [v3 _removeTask:v4];
}

- (void)_downloadTask:(id)task completedWithLocation:(id)location response:(id)response error:(id)error completionHandler:(id)handler
{
  v58 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  locationCopy = location;
  responseCopy = response;
  errorCopy = error;
  handlerCopy = handler;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v49 = taskCopy;
    v50 = 2112;
    v51 = locationCopy;
    v52 = 2112;
    v53 = responseCopy;
    v54 = 2112;
    v55 = errorCopy;
    v56 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "_downloadTask:%@ completedWithLocation:%@ response:%@ error:%@ self=%@", buf, 0x34u);
  }

  if (locationCopy)
  {
    v18 = [(ACSURLSession *)self _linkedLocationWithLocation:locationCopy];
    if (!v18)
    {
      v32 = MEMORY[0x277CBEAD8];
      v33 = *MEMORY[0x277CBE648];
      v46[0] = @"session";
      v46[1] = @"downloadTask";
      v47[0] = self;
      v47[1] = taskCopy;
      v46[2] = @"location";
      v47[2] = locationCopy;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
      v35 = [v32 exceptionWithName:v33 reason:@"ACSURLSession needs a non-reference file URL to a file" userInfo:v34];
      v36 = v35;

      objc_exception_throw(v35);
    }

    v19 = v18;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v45 = 0;
    v21 = [defaultManager linkItemAtURL:locationCopy toURL:v19 error:&v45];
    v22 = v45;

    if ((v21 & 1) == 0)
    {
      _logHandle2 = [(ACSURLSession *)self _logHandle];
      if (os_log_type_enabled(_logHandle2, OS_LOG_TYPE_ERROR))
      {
        path = [locationCopy path];
        path2 = [v19 path];
        *buf = 138412802;
        v49 = path;
        v50 = 2112;
        v51 = path2;
        v31 = path2;
        v52 = 2112;
        v53 = v22;
        _os_log_error_impl(&dword_2411B8000, _logHandle2, OS_LOG_TYPE_ERROR, "ACSURLSession can not link %@ to %@: %@", buf, 0x20u);
      }

      if (!errorCopy)
      {
        errorCopy = v22;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  _queue = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__ACSURLSession__downloadTask_completedWithLocation_response_error_completionHandler___block_invoke;
  block[3] = &unk_278CC5240;
  v39 = taskCopy;
  v40 = errorCopy;
  v41 = responseCopy;
  selfCopy2 = self;
  v43 = v19;
  v44 = handlerCopy;
  v25 = v19;
  v26 = handlerCopy;
  v27 = responseCopy;
  v28 = errorCopy;
  v29 = taskCopy;
  dispatch_async(_queue, block);
}

void __86__ACSURLSession__downloadTask_completedWithLocation_response_error_completionHandler___block_invoke(uint64_t a1)
{
  *&v36[13] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _nsurlTaskToCachingServer];
  if (!v2 || ![*(a1 + 32) _tryCachingServer])
  {
    v11 = 0;
LABEL_29:
    v16 = *(a1 + 56);
    v17 = *(a1 + 40);
    v18 = [*(a1 + 32) originalRequest];
    v19 = [*(a1 + 32) currentRequest];
    v20 = [v16 _errorWithResumeDataFromError:v17 originalRequest:v18 currentRequest:v19];

    v21 = [*(a1 + 56) _clientDelegateOpQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __86__ACSURLSession__downloadTask_completedWithLocation_response_error_completionHandler___block_invoke_155;
    v24[3] = &unk_278CC5218;
    v30 = *(a1 + 72);
    v25 = *(a1 + 64);
    v26 = *(a1 + 48);
    v27 = v20;
    v31 = v11;
    v22 = *(a1 + 32);
    v23 = *(a1 + 56);
    v28 = v22;
    v29 = v23;
    v10 = v20;
    [v21 addOperationWithBlock:v24];

    goto LABEL_30;
  }

  if (![*(a1 + 32) _failBackToOrigin])
  {
LABEL_28:
    v11 = 1;
    goto LABEL_29;
  }

  v3 = [v2 currentRequest];
  v4 = [v3 URL];

  if (*(a1 + 40))
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [*(a1 + 48) statusCode] < 400)
  {
    cf = 0;
    if (!ACSUpdateCachingServerHealth(v4, 0, 1, &cf))
    {
      v14 = [*(a1 + 56) _logHandle];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v4 absoluteString];
        *buf = 138412802;
        v34 = v15;
        v35 = 1024;
        *v36 = 1;
        v36[2] = 2112;
        *&v36[3] = cf;
        _os_log_impl(&dword_2411B8000, v14, OS_LOG_TYPE_DEFAULT, "ACSUpdateCachingServerHealth(%@, %d) failed: %@", buf, 0x1Cu);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_28;
  }

  if (*(a1 + 40))
  {
LABEL_5:
    v5 = [*(a1 + 56) _logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [v4 absoluteString];
      *buf = 138412546;
      v34 = v6;
      v35 = 2112;
      *v36 = v7;
      _os_log_impl(&dword_2411B8000, v5, OS_LOG_TYPE_DEFAULT, "Error %@ from %@, failing back to original", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v5 = [*(a1 + 56) _logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 48) statusCode];
    v13 = [v4 absoluteString];
    *buf = 134218242;
    v34 = v12;
    v35 = 2112;
    *v36 = v13;
    _os_log_impl(&dword_2411B8000, v5, OS_LOG_TYPE_DEFAULT, "HTTP response %ld from %@, failing back to original", buf, 0x16u);
  }

LABEL_7:

  cf = 0;
  if (!ACSUpdateCachingServerHealth(v4, 0, 0, &cf))
  {
    v8 = [*(a1 + 56) _logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 absoluteString];
      *buf = 138412802;
      v34 = v9;
      v35 = 1024;
      *v36 = 0;
      v36[2] = 2112;
      *&v36[3] = cf;
      _os_log_impl(&dword_2411B8000, v8, OS_LOG_TYPE_DEFAULT, "ACSUpdateCachingServerHealth(%@, %d) failed: %@", buf, 0x1Cu);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  [*(a1 + 32) set_nsurlTaskToCachingServer:0];
  [*(a1 + 56) _onqueue_removeTaskForNSURLTask:v2];
  [*(a1 + 32) set_tryCachingServer:0];
  [*(a1 + 56) _onqueue_resumeTask:*(a1 + 32)];

  if (*(a1 + 64))
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    [v10 removeItemAtURL:*(a1 + 64) error:0];
LABEL_30:
  }
}

uint64_t __86__ACSURLSession__downloadTask_completedWithLocation_response_error_completionHandler___block_invoke_155(uint64_t a1)
{
  (*(*(a1 + 72) + 16))();
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    [v2 removeItemAtURL:*(a1 + 32) error:0];
  }

  if (*(a1 + 80) == 1)
  {
    v3 = [*(a1 + 56) _nsurlTaskToOrigin];
    [v3 cancel];
  }

  v5 = *(a1 + 56);
  v4 = *(a1 + 64);

  return [v4 _removeTask:v5];
}

- (id)_resumeDataWithNSURLResumeData:(id)data originalRequest:(id)request currentRequest:(id)currentRequest error:(id *)error
{
  dataCopy = data;
  v11 = MEMORY[0x277CBEB38];
  currentRequestCopy = currentRequest;
  requestCopy = request;
  dictionary = [v11 dictionary];
  [dictionary setObject:&unk_2852F3390 forKeyedSubscript:@"_kACSURLSessionResumeDataVersionKey"];
  if (dataCopy)
  {
    [dictionary setObject:dataCopy forKeyedSubscript:@"_kACSURLSessionResumeDataNSURLResumeDataKey"];
  }

  _locateOptions = [(ACSURLSession *)self _locateOptions];

  if (_locateOptions)
  {
    _locateOptions2 = [(ACSURLSession *)self _locateOptions];
    [dictionary setObject:_locateOptions2 forKeyedSubscript:@"_kACSURLSessionResumeDataLocateOptionsKey"];
  }

  v17 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  v18 = *MEMORY[0x277CCA308];
  [v17 encodeObject:requestCopy forKey:*MEMORY[0x277CCA308]];

  encodedData = [v17 encodedData];
  [dictionary setObject:encodedData forKeyedSubscript:@"_kACSURLSessionResumeDataOriginalRequestKey"];
  v20 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v20 encodeObject:currentRequestCopy forKey:v18];

  encodedData2 = [v20 encodedData];
  [dictionary setObject:encodedData2 forKeyedSubscript:@"_kACSURLSessionResumeDataCurrentRequestKey"];
  v22 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:100 options:0 error:error];

  return v22;
}

- (BOOL)_resumeData:(id)data toNSURLResumeData:(id *)resumeData originalRequest:(id *)request currentRequest:(id *)currentRequest error:(id *)error
{
  v67[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (!dataCopy)
  {
    v18 = MEMORY[0x277CCA9B8];
    v66 = *MEMORY[0x277CCA450];
    v67[0] = @"Invalid resume data";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:&v66 count:1];
    v14 = [v18 errorWithDomain:@"_kACSURLSessionErrorDomain" code:1 userInfo:v13];
    goto LABEL_11;
  }

  v61 = 0;
  v13 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:1 format:0 error:&v61];
  v14 = v61;
  if (!v13)
  {
LABEL_11:
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_32;
  }

  errorCopy = error;
  v15 = [v13 objectForKeyedSubscript:@"_kACSURLSessionResumeDataVersionKey"];
  v16 = [v13 objectForKeyedSubscript:@"_kACSURLSessionResumeDataNSURLResumeDataKey"];
  v58 = [v13 objectForKeyedSubscript:@"_kACSURLSessionResumeDataLocateOptionsKey"];
  v57 = [v13 objectForKeyedSubscript:@"_kACSURLSessionResumeDataOriginalRequestKey"];
  v56 = [v13 objectForKeyedSubscript:@"_kACSURLSessionResumeDataCurrentRequestKey"];
  v52 = v13;
  v53 = v16;
  if (v15 && ([v15 isEqual:&unk_2852F3390] & 1) != 0)
  {
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    _locateOptions = [(ACSURLSession *)self _locateOptions];
    if (v58)
    {
      if (![v58 isEqual:_locateOptions])
      {
        goto LABEL_28;
      }
    }

    else if (_locateOptions)
    {
      goto LABEL_28;
    }

    if (v57)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && v56)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (v58)
        {
        }

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_29;
        }

        v50 = v15;
        if (_resumeData_toNSURLResumeData_originalRequest_currentRequest_error__classesOnce != -1)
        {
          [ACSURLSession _resumeData:toNSURLResumeData:originalRequest:currentRequest:error:];
        }

        v60 = 0;
        v33 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v57 error:&v60];
        v34 = v60;
        v35 = *MEMORY[0x277CCA308];
        v36 = [v33 decodeObjectOfClasses:_resumeData_toNSURLResumeData_originalRequest_currentRequest_error__classes forKey:*MEMORY[0x277CCA308]];
        v49 = v33;
        [v33 finishDecoding];
        v55 = v36;
        if (v36 && ([v36 URL], v37 = objc_claimAutoreleasedReturnValue(), v37, v37))
        {
          v59 = v34;
          v38 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v56 error:&v59];
          v51 = v59;

          v19 = [v38 decodeObjectOfClasses:_resumeData_toNSURLResumeData_originalRequest_currentRequest_error__classes forKey:v35];
          v48 = v38;
          [v38 finishDecoding];
          if (v19)
          {
            v39 = [v19 URL];

            if (v39)
            {
              error = errorCopy;
LABEL_53:
              v31 = v14;

              v14 = v49;
              v15 = v50;
              v25 = v51;
              goto LABEL_31;
            }
          }

          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:@"Invalid resume data" forKeyedSubscript:*MEMORY[0x277CCA450]];
          [dictionary setObject:v13 forKeyedSubscript:@"resumeDict"];
          error = errorCopy;
          if (v51)
          {
            [dictionary setObject:v51 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
          }

          [dictionary setObject:v55 forKeyedSubscript:@"originalRequest"];
          if (v19)
          {
            [dictionary setObject:v19 forKeyedSubscript:@"currentRequest"];
          }

          v46 = [MEMORY[0x277CCA9B8] errorWithDomain:@"_kACSURLSessionErrorDomain" code:5 userInfo:dictionary];

          v14 = dictionary;
        }

        else
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary2 setObject:@"Invalid resume data" forKeyedSubscript:*MEMORY[0x277CCA450]];
          [dictionary2 setObject:v13 forKeyedSubscript:@"resumeDict"];
          if (v34)
          {
            [dictionary2 setObject:v34 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
          }

          error = errorCopy;
          if (v36)
          {
            [dictionary2 setObject:v36 forKeyedSubscript:@"originalRequest"];
          }

          v48 = dictionary2;
          v46 = [MEMORY[0x277CCA9B8] errorWithDomain:@"_kACSURLSessionErrorDomain" code:4 userInfo:dictionary2];
          v19 = 0;
          v51 = v34;
        }

        v14 = v46;
        goto LABEL_53;
      }

      if (!v58)
      {
LABEL_29:
        v40 = MEMORY[0x277CCA9B8];
        v62[0] = *MEMORY[0x277CCA450];
        v62[1] = @"resumeDict";
        v63[0] = @"Invalid resume data";
        v63[1] = v13;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
        v31 = [v40 errorWithDomain:@"_kACSURLSessionErrorDomain" code:3 userInfo:v25];
        v19 = 0;
        v55 = 0;
        goto LABEL_30;
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  v22 = MEMORY[0x277CCA9B8];
  v64[0] = *MEMORY[0x277CCA450];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown resume data version %@", v15];
  v24 = v13;
  v25 = v23;
  v64[1] = @"resumeDict";
  v65[0] = v23;
  v65[1] = v24;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
  v26 = dataCopy;
  resumeDataCopy = resumeData;
  currentRequestCopy = currentRequest;
  v30 = v29 = request;
  v31 = [v22 errorWithDomain:@"_kACSURLSessionErrorDomain" code:2 userInfo:v30];

  v19 = 0;
  v55 = 0;
  v14 = v30;
  request = v29;
  currentRequest = currentRequestCopy;
  resumeData = resumeDataCopy;
  dataCopy = v26;
LABEL_30:
  error = errorCopy;
LABEL_31:

  v14 = v31;
  v13 = v52;
  v21 = v53;
  v20 = v55;
LABEL_32:

  if (v14)
  {
    v41 = v14;
    currentRequest = error;
    if (error)
    {
LABEL_34:
      *currentRequest = v41;
    }
  }

  else
  {
    if (resumeData)
    {
      v43 = v21;
      *resumeData = v21;
    }

    if (request)
    {
      v44 = v20;
      *request = v20;
    }

    v41 = v19;
    if (currentRequest)
    {
      goto LABEL_34;
    }
  }

  return v14 == 0;
}

uint64_t __84__ACSURLSession__resumeData_toNSURLResumeData_originalRequest_currentRequest_error___block_invoke()
{
  v0 = MEMORY[0x277CBEB58];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  v9 = _resumeData_toNSURLResumeData_originalRequest_currentRequest_error__classes;
  _resumeData_toNSURLResumeData_originalRequest_currentRequest_error__classes = v8;

  result = objc_opt_class();
  if (result)
  {
    v11 = [MEMORY[0x277D6A758] knownSZExtractorImplementations];
    if (v11)
    {
      [_resumeData_toNSURLResumeData_originalRequest_currentRequest_error__classes unionSet:v11];
    }

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)_errorWithResumeDataFromError:(id)error originalRequest:(id)request currentRequest:(id)currentRequest
{
  v24 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  requestCopy = request;
  currentRequestCopy = currentRequest;
  if (errorCopy)
  {
    userInfo = [errorCopy userInfo];
    v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA788]];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v21 = 0;
      v13 = [(ACSURLSession *)self _resumeDataWithNSURLResumeData:v12 originalRequest:requestCopy currentRequest:currentRequestCopy error:&v21];
      v14 = v21;
      if (v13)
      {
        v15 = [userInfo mutableCopy];
        [v15 setObject:v13 forKeyedSubscript:@"NSURLSessionDownloadTaskResumeData"];
        v16 = MEMORY[0x277CCA9B8];
        domain = [errorCopy domain];
        v18 = [v16 errorWithDomain:domain code:objc_msgSend(errorCopy userInfo:{"code"), v15}];
      }

      else
      {
        _logHandle = [(ACSURLSession *)self _logHandle];
        if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = v14;
          _os_log_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEFAULT, "ACSURLSession failed to convert resume data: %@", buf, 0xCu);
        }

        v18 = errorCopy;
      }
    }

    else
    {
      v18 = errorCopy;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_linkedLocationWithLocation:(id)location
{
  locationCopy = location;
  path = [locationCopy path];
  v5 = [path mutableCopy];

  v6 = [v5 rangeOfString:@"/" options:4];
  v8 = v7;
  if (![locationCopy isFileURL])
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  if (([locationCopy isFileReferenceURL] & 1) == 0 && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v6 + v8 < [v5 length])
    {
      [v5 insertString:@"ACS~" atIndex:v6 + v8];
      v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

- (void)_copyAttributesFromNSURLTask:(id)task toNSURLTask:(id)lTask
{
  lTaskCopy = lTask;
  taskCopy = task;
  [lTaskCopy setCountOfBytesClientExpectsToSend:{objc_msgSend(taskCopy, "countOfBytesClientExpectsToSend")}];
  [lTaskCopy setCountOfBytesClientExpectsToReceive:{objc_msgSend(taskCopy, "countOfBytesClientExpectsToReceive")}];
  [taskCopy priority];
  v7 = v6;

  LODWORD(v8) = v7;
  [lTaskCopy setPriority:v8];
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v19 = sessionCopy;
    v20 = 2112;
    v21 = errorCopy;
    v22 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ didBecomeInvalidWithError:%@ self=%@", buf, 0x20u);
  }

  _queue = [(ACSURLSession *)self _queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke;
  v13[3] = &unk_278CC5268;
  v14 = sessionCopy;
  selfCopy2 = self;
  v16 = errorCopy;
  v17 = a2;
  v11 = errorCopy;
  v12 = sessionCopy;
  dispatch_async(_queue, v13);
}

void __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  v4 = [*(a1 + 40) _nsurlSession];

  if (v2 != v4)
  {
    __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke_cold_1();
  }

  v5 = [*v3 _clientDelegate];
  v6 = [*v3 _clientDelegateOpQueue];
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke_2;
    v10[3] = &unk_278CC51C8;
    v7 = v5;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    [v6 addOperationWithBlock:v10];
  }

  else
  {
    [*v3 set_clientDelegate:0];
    [*v3 set_clientDelegateOpQueue:0];
    [*v3 set_nsurlSession:0];
  }
}

void __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) URLSession:*(a1 + 40) didBecomeInvalidWithError:*(a1 + 48)];
  v2 = [*(a1 + 40) _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke_3;
  block[3] = &unk_278CC4EA8;
  block[4] = *(a1 + 40);
  dispatch_async(v2, block);
}

uint64_t __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) set_clientDelegate:0];
  [*(a1 + 32) set_clientDelegateOpQueue:0];
  v2 = *(a1 + 32);

  return [v2 set_nsurlSession:0];
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v23 = sessionCopy;
    v24 = 2112;
    v25 = challengeCopy;
    v26 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ didReceiveChallenge:%@ self=%@", buf, 0x20u);
  }

  _queue = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke;
  block[3] = &unk_278CC5308;
  block[4] = self;
  v18 = sessionCopy;
  v20 = handlerCopy;
  v21 = a2;
  v19 = challengeCopy;
  v14 = challengeCopy;
  v15 = sessionCopy;
  v16 = handlerCopy;
  dispatch_async(_queue, block);
}

void __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke_2;
      v14[3] = &unk_278CC52B8;
      v8 = v15;
      v9 = v6;
      v10 = *(a1 + 32);
      v15[0] = v9;
      v15[1] = v10;
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      [v7 addOperationWithBlock:v14];
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke_4;
      v12[3] = &unk_278CC52E0;
      v8 = &v13;
      v13 = *(a1 + 56);
      [v7 addOperationWithBlock:v12];
    }
  }

  else
  {
    v11 = *(*(a1 + 56) + 16);

    v11();
  }
}

void __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke_3;
  v4[3] = &unk_278CC5290;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 URLSession:v2 didReceiveChallenge:v3 completionHandler:v4];
}

- (void)URLSession:(id)session task:(id)task willBeginDelayedRequest:(id)request completionHandler:(id)handler
{
  v20[3] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  requestCopy = request;
  handlerCopy = handler;
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE648];
  v19[0] = @"session";
  v19[1] = @"nsurlTask";
  v20[0] = self;
  v20[1] = taskCopy;
  v19[2] = @"request";
  v20[2] = requestCopy;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v17 = [v14 exceptionWithName:v15 reason:@"ACSURLSession does not support background sessions" userInfo:v16];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity
{
  v24 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  connectivityCopy = connectivity;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    descriptionWithAddress = [connectivityCopy descriptionWithAddress];
    *buf = 138412802;
    v19 = sessionCopy;
    v20 = 2112;
    v21 = descriptionWithAddress;
    v22 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ taskIsWaitingForConnectivity:%@ self=%@", buf, 0x20u);
  }

  _queue = [(ACSURLSession *)self _queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__ACSURLSession_URLSession_taskIsWaitingForConnectivity___block_invoke;
  v14[3] = &unk_278CC5268;
  v14[4] = self;
  v15 = sessionCopy;
  v16 = connectivityCopy;
  v17 = a2;
  v11 = connectivityCopy;
  v12 = sessionCopy;
  dispatch_async(_queue, v14);
}

void __57__ACSURLSession_URLSession_taskIsWaitingForConnectivity___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __57__ACSURLSession_URLSession_taskIsWaitingForConnectivity___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v9 = v8;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __57__ACSURLSession_URLSession_taskIsWaitingForConnectivity___block_invoke_2;
        v13[3] = &unk_278CC51C8;
        v10 = v6;
        v11 = *v2;
        v14 = v10;
        v15 = v11;
        v16 = v9;
        v12 = v9;
        [v7 addOperationWithBlock:v13];
      }
    }
  }
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v43 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    descriptionWithAddress = [taskCopy descriptionWithAddress];
    *buf = 138413314;
    v34 = sessionCopy;
    v35 = 2112;
    v36 = descriptionWithAddress;
    v37 = 2112;
    v38 = redirectionCopy;
    v39 = 2112;
    v40 = requestCopy;
    v41 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ task:%@ willPerformHTTPRedirection:%@ newRequest:%@ self=%@", buf, 0x34u);
  }

  _queue = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ACSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
  block[3] = &unk_278CC5358;
  block[4] = self;
  v27 = sessionCopy;
  v31 = handlerCopy;
  v32 = a2;
  v28 = taskCopy;
  v29 = redirectionCopy;
  v30 = requestCopy;
  v20 = requestCopy;
  v21 = redirectionCopy;
  v22 = taskCopy;
  v23 = sessionCopy;
  v24 = handlerCopy;
  dispatch_async(_queue, block);
}

void __89__ACSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __89__ACSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __89__ACSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_3;
        v16[3] = &unk_278CC5330;
        v9 = v17;
        v10 = v6;
        v11 = *(a1 + 32);
        v17[0] = v10;
        v17[1] = v11;
        v18 = v8;
        v19 = *(a1 + 56);
        v20 = *(a1 + 64);
        v21 = *(a1 + 72);
        [v7 addOperationWithBlock:v16];
      }

      else
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __89__ACSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2;
        v22[3] = &unk_278CC52E0;
        v9 = &v23;
        v23 = *(a1 + 72);
        [v7 addOperationWithBlock:v22];
      }
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __89__ACSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_4;
      v13[3] = &unk_278CC4F20;
      v15 = *(a1 + 72);
      v14 = *(a1 + 64);
      [v7 addOperationWithBlock:v13];

      v8 = v15;
    }
  }

  else
  {
    v12 = *(*(a1 + 72) + 16);

    v12();
  }
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    descriptionWithAddress = [taskCopy descriptionWithAddress];
    *buf = 138413058;
    v29 = sessionCopy;
    v30 = 2112;
    v31 = descriptionWithAddress;
    v32 = 2112;
    v33 = challengeCopy;
    v34 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ task:%@ didReceiveChallenge:%@ self=%@", buf, 0x2Au);
  }

  _queue = [(ACSURLSession *)self _queue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke;
  v22[3] = &unk_278CC53D0;
  v22[4] = self;
  v23 = sessionCopy;
  v26 = handlerCopy;
  v27 = a2;
  v24 = taskCopy;
  v25 = challengeCopy;
  v17 = challengeCopy;
  v18 = taskCopy;
  v19 = sessionCopy;
  v20 = handlerCopy;
  dispatch_async(_queue, v22);
}

void __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_3;
        v15[3] = &unk_278CC53A8;
        v9 = v16;
        v10 = v6;
        v11 = *(a1 + 32);
        v16[0] = v10;
        v16[1] = v11;
        v17 = v8;
        v18 = *(a1 + 56);
        v19 = *(a1 + 64);
        [v7 addOperationWithBlock:v15];
      }

      else
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_2;
        v20[3] = &unk_278CC52E0;
        v9 = &v21;
        v21 = *(a1 + 64);
        [v7 addOperationWithBlock:v20];
      }
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_5;
      v13[3] = &unk_278CC52E0;
      v14 = *(a1 + 64);
      [v7 addOperationWithBlock:v13];
      v8 = v14;
    }
  }

  else
  {
    v12 = *(*(a1 + 64) + 16);

    v12();
  }
}

void __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_4;
  v6[3] = &unk_278CC5380;
  v7 = v4;
  v8 = *(a1 + 64);
  [v2 URLSession:v3 task:v7 didReceiveChallenge:v5 completionHandler:v6];
}

void __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 2)
  {
    [*(a1 + 32) set_failBackToOrigin:0];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  v29 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  streamCopy = stream;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    descriptionWithAddress = [taskCopy descriptionWithAddress];
    *buf = 138412802;
    v24 = sessionCopy;
    v25 = 2112;
    v26 = descriptionWithAddress;
    v27 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ task:%@ needNewBodyStream self=%@", buf, 0x20u);
  }

  _queue = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke;
  block[3] = &unk_278CC5308;
  block[4] = self;
  v19 = sessionCopy;
  v21 = streamCopy;
  v22 = a2;
  v20 = taskCopy;
  v14 = taskCopy;
  v15 = sessionCopy;
  v16 = streamCopy;
  dispatch_async(_queue, block);
}

void __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nsurlSession];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) _nsurlSession];

    if (v3 != v4)
    {
      __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_cold_1();
    }

    v5 = [*(a1 + 32) _clientDelegate];
    v6 = [*(a1 + 32) _clientDelegateOpQueue];
    v7 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
    if (v7)
    {
      if (objc_opt_respondsToSelector())
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_3;
        v16[3] = &unk_278CC52B8;
        v8 = v17;
        v9 = v5;
        v10 = *(a1 + 32);
        v17[0] = v9;
        v17[1] = v10;
        v18 = v7;
        v19 = *(a1 + 56);
        [v6 addOperationWithBlock:v16];

        v11 = v18;
      }

      else
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_5;
        v13[3] = &unk_278CC4ED0;
        v8 = &v14;
        v14 = v7;
        v15 = *(a1 + 56);
        [v6 addOperationWithBlock:v13];
        v11 = v15;
      }
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_2;
      v20[3] = &unk_278CC52E0;
      v8 = &v21;
      v21 = *(a1 + 56);
      [v6 addOperationWithBlock:v20];
    }
  }

  else
  {
    v12 = *(*(a1 + 56) + 16);

    v12();
  }
}

void __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_4;
  v5[3] = &unk_278CC53F8;
  v6 = v4;
  v7 = *(a1 + 56);
  [v2 URLSession:v3 task:v6 needNewBodyStream:v5];
}

void __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) set_failBackToOrigin:0];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) set_failBackToOrigin:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  v39 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    descriptionWithAddress = [taskCopy descriptionWithAddress];
    *buf = 138413570;
    v28 = sessionCopy;
    v29 = 2112;
    v30 = descriptionWithAddress;
    v31 = 2048;
    dataCopy = data;
    v33 = 2048;
    sentCopy = sent;
    v35 = 2048;
    sendCopy = send;
    v37 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ task:%@ didSendBodyData:%lld totalBytesSent:%lld totalBytesExpectedToSend:%lld self=%@", buf, 0x3Eu);
  }

  _queue = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ACSURLSession_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke;
  block[3] = &unk_278CC5448;
  block[4] = self;
  v21 = sessionCopy;
  v22 = taskCopy;
  v23 = a2;
  dataCopy2 = data;
  sentCopy2 = sent;
  sendCopy2 = send;
  v17 = taskCopy;
  v18 = sessionCopy;
  dispatch_async(_queue, block);
}

void __89__ACSURLSession_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __89__ACSURLSession_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v9 = v8;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __89__ACSURLSession_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke_2;
        v13[3] = &unk_278CC5420;
        v10 = v6;
        v11 = *(a1 + 32);
        v14 = v10;
        v15 = v11;
        v16 = v9;
        v17 = *(a1 + 64);
        v18 = *(a1 + 80);
        v12 = v9;
        [v7 addOperationWithBlock:v13];
      }
    }
  }
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  v31 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  metricsCopy = metrics;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    descriptionWithAddress = [taskCopy descriptionWithAddress];
    *buf = 138413058;
    v24 = sessionCopy;
    v25 = 2112;
    v26 = descriptionWithAddress;
    v27 = 2112;
    v28 = metricsCopy;
    v29 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ task:%@ didFinishCollectingMetrics:%@ self=%@", buf, 0x2Au);
  }

  _queue = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ACSURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke;
  block[3] = &unk_278CC5498;
  block[4] = self;
  v19 = sessionCopy;
  v21 = metricsCopy;
  v22 = a2;
  v20 = taskCopy;
  v14 = metricsCopy;
  v15 = taskCopy;
  v16 = sessionCopy;
  dispatch_async(_queue, block);
}

void __60__ACSURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __60__ACSURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v9 = v8;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __60__ACSURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_2;
        v13[3] = &unk_278CC5470;
        v10 = v6;
        v11 = *(a1 + 32);
        v14 = v10;
        v15 = v11;
        v16 = v9;
        v17 = *(a1 + 56);
        v12 = v9;
        [v7 addOperationWithBlock:v13];
      }
    }
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    descriptionWithAddress = [taskCopy descriptionWithAddress];
    *buf = 138413058;
    v24 = sessionCopy;
    v25 = 2112;
    v26 = descriptionWithAddress;
    v27 = 2112;
    v28 = errorCopy;
    v29 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ task:%@ didCompleteWithError:%@ self=%@", buf, 0x2Au);
  }

  _queue = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ACSURLSession_URLSession_task_didCompleteWithError___block_invoke;
  block[3] = &unk_278CC5498;
  block[4] = self;
  v19 = sessionCopy;
  v21 = errorCopy;
  v22 = a2;
  v20 = taskCopy;
  v14 = errorCopy;
  v15 = taskCopy;
  v16 = sessionCopy;
  dispatch_async(_queue, block);
}

void __54__ACSURLSession_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  *&v48[13] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __54__ACSURLSession_URLSession_task_didCompleteWithError___block_invoke_cold_1();
    }

    v6 = [*(a1 + 48) response];
    v7 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
    v8 = v7;
    if (!v7)
    {
      goto LABEL_30;
    }

    v9 = [v7 _nsurlTaskToCachingServer];
    if (*(a1 + 48) == v9 && [v8 _tryCachingServer])
    {
      if ([v8 _failBackToOrigin])
      {
        v10 = [v9 currentRequest];
        v11 = [v10 URL];

        v12 = *(a1 + 56);
        if (v12 || !v6)
        {
          goto LABEL_13;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 statusCode] >= 400)
        {
          v12 = *(a1 + 56);
LABEL_13:
          v13 = [*v2 _logHandle];
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          if (v12)
          {
            if (v14)
            {
              v15 = *(a1 + 56);
              v16 = [v11 absoluteString];
              *buf = 138412546;
              v46 = v15;
              v47 = 2112;
              *v48 = v16;
              _os_log_impl(&dword_2411B8000, v13, OS_LOG_TYPE_DEFAULT, "Error %@ from %@, failing back to original", buf, 0x16u);
            }
          }

          else if (v14)
          {
            v33 = [v6 statusCode];
            v34 = [v11 absoluteString];
            *buf = 134218242;
            v46 = v33;
            v47 = 2112;
            *v48 = v34;
            _os_log_impl(&dword_2411B8000, v13, OS_LOG_TYPE_DEFAULT, "HTTP response %ld from %@, failing back to original", buf, 0x16u);
          }

          cf = 0;
          if (!ACSUpdateCachingServerHealth(v11, 0, 0, &cf))
          {
            v35 = [*v2 _logHandle];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = [v11 absoluteString];
              *buf = 138412802;
              v46 = v36;
              v47 = 1024;
              *v48 = 0;
              v48[2] = 2112;
              *&v48[3] = cf;
              _os_log_impl(&dword_2411B8000, v35, OS_LOG_TYPE_DEFAULT, "ACSUpdateCachingServerHealth(%@, %d) failed: %@", buf, 0x1Cu);
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }

          [v8 set_nsurlTaskToCachingServer:0];
          [*v2 _onqueue_removeTaskForNSURLTask:v9];
          [v8 set_tryCachingServer:0];
          [*v2 _onqueue_resumeTask:v8];
LABEL_29:

LABEL_30:
          return;
        }

        cf = 0;
        if (!ACSUpdateCachingServerHealth(v11, 0, 1, &cf))
        {
          v31 = [*v2 _logHandle];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v11 absoluteString];
            *buf = 138412802;
            v46 = v32;
            v47 = 1024;
            *v48 = 1;
            v48[2] = 2112;
            *&v48[3] = cf;
            _os_log_impl(&dword_2411B8000, v31, OS_LOG_TYPE_DEFAULT, "ACSUpdateCachingServerHealth(%@, %d) failed: %@", buf, 0x1Cu);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    v11 = *(a1 + 56);
    if (!v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v8;
        v11 = [v18 _deferredLinkError];

        if (v11)
        {
          v11 = [v18 _deferredLinkError];
          [v18 set_deferredLinkError:0];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    v19 = [*v2 _clientDelegate];
    v20 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v21 = *v2;
      [v8 originalRequest];
      v37 = v17;
      v22 = v6;
      v24 = v23 = v9;
      v25 = [v8 currentRequest];
      v26 = [v21 _errorWithResumeDataFromError:v11 originalRequest:v24 currentRequest:v25];

      v9 = v23;
      v6 = v22;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __54__ACSURLSession_URLSession_task_didCompleteWithError___block_invoke_211;
      v38[3] = &unk_278CC54C0;
      v27 = v19;
      v28 = *v2;
      v39 = v27;
      v40 = v28;
      v41 = v8;
      v42 = v26;
      v43 = v37;
      v29 = v26;
      [v20 addOperationWithBlock:v38];
    }

    else
    {
      if (v17)
      {
        v30 = [v8 _nsurlTaskToOrigin];
        [v30 cancel];
      }

      [*v2 _removeTask:v8];
    }

    goto LABEL_29;
  }
}

uint64_t __54__ACSURLSession_URLSession_task_didCompleteWithError___block_invoke_211(uint64_t a1)
{
  [*(a1 + 32) URLSession:*(a1 + 40) task:*(a1 + 48) didCompleteWithError:*(a1 + 56)];
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 48) _nsurlTaskToOrigin];
    [v2 cancel];
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _removeTask:v4];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v28 = sessionCopy;
    v29 = 2112;
    v30 = taskCopy;
    v31 = 2112;
    v32 = responseCopy;
    v33 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ dataTask:%@ didReceiveResponse:%@ self=%@", buf, 0x2Au);
  }

  _queue = [(ACSURLSession *)self _queue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  v21[3] = &unk_278CC53D0;
  v21[4] = self;
  v22 = sessionCopy;
  v25 = handlerCopy;
  v26 = a2;
  v23 = taskCopy;
  v24 = responseCopy;
  v17 = responseCopy;
  v18 = taskCopy;
  v19 = sessionCopy;
  v20 = handlerCopy;
  dispatch_async(_queue, v21);
}

void __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_cold_1();
    }

    v6 = [*(a1 + 32) _clientDelegate];
    v7 = [*(a1 + 32) _clientDelegateOpQueue];
    v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
    if (!v8)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2;
      v32[3] = &unk_278CC52E0;
      v33 = *(a1 + 64);
      [v7 addOperationWithBlock:v32];
      v9 = v33;
LABEL_25:

      return;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_cold_2();
    }

    v9 = v8;
    v10 = [v9 _nsurlTaskToCachingServer];
    if (*(a1 + 48) == v10 && [v9 _tryCachingServer] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(*(a1 + 56), "statusCode") >= 400)
    {
      if ([v9 _failBackToOrigin])
      {
        v11 = [*v2 _logHandle];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(a1 + 56) statusCode];
          v13 = [*(a1 + 56) URL];
          v14 = [v13 absoluteString];
          *buf = 134218242;
          v35 = v12;
          v36 = 2112;
          v37 = v14;
          _os_log_impl(&dword_2411B8000, v11, OS_LOG_TYPE_DEFAULT, "HTTP response %ld from %@, canceling to fail back to original", buf, 0x16u);
        }
      }

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_215;
      v30[3] = &unk_278CC52E0;
      v15 = &v31;
      v31 = *(a1 + 64);
      v16 = v30;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2_218;
        v25[3] = &unk_278CC53A8;
        v15 = v26;
        v18 = v6;
        v19 = *(a1 + 32);
        v26[0] = v18;
        v26[1] = v19;
        v27 = v9;
        v28 = *(a1 + 56);
        v29 = *(a1 + 64);
        [v7 addOperationWithBlock:v25];

LABEL_24:
        goto LABEL_25;
      }

      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_4;
      v23 = &unk_278CC52E0;
      v15 = &v24;
      v24 = *(a1 + 64);
      v16 = &v20;
    }

    [v7 addOperationWithBlock:{v16, v20, v21, v22, v23, v24}];
    goto LABEL_24;
  }

  v17 = *(*(a1 + 64) + 16);

  v17();
}

void __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2_218(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_3;
  v6[3] = &unk_278CC54E8;
  v6[4] = v3;
  v7 = v4;
  v8 = *(a1 + 64);
  [v2 URLSession:v3 dataTask:v7 didReceiveResponse:v5 completionHandler:v6];
}

uint64_t __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (a2 == 3)
    {
      v3 = MEMORY[0x277CBEAD8];
      v4 = *MEMORY[0x277CBE648];
      v11[0] = @"session";
      v11[1] = @"task";
      v5 = *(a1 + 40);
      v12[0] = *(a1 + 32);
      v12[1] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
      v7 = [v3 exceptionWithName:v4 reason:@"ACSURLSession does not support stream tasks" userInfo:v6];
      v8 = v7;

      objc_exception_throw(v7);
    }
  }

  else
  {
    [*(a1 + 40) set_failBackToOrigin:0];
  }

  v9 = *(*(a1 + 48) + 16);

  return v9();
}

- (void)URLSession:(id)session dataTask:(id)task didBecomeDownloadTask:(id)downloadTask
{
  v30 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  downloadTaskCopy = downloadTask;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v23 = sessionCopy;
    v24 = 2112;
    v25 = taskCopy;
    v26 = 2112;
    v27 = downloadTaskCopy;
    v28 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ dataTask:%@ didBecomeDownloadTask:%@ self=%@", buf, 0x2Au);
  }

  _queue = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke;
  block[3] = &unk_278CC5498;
  block[4] = self;
  v18 = sessionCopy;
  v20 = downloadTaskCopy;
  v21 = a2;
  v19 = taskCopy;
  v14 = downloadTaskCopy;
  v15 = taskCopy;
  v16 = sessionCopy;
  dispatch_async(_queue, block);
}

void __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_cold_1();
    }

    v6 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_cold_2();
      }

      v7 = v6;
      v8 = [*(a1 + 56) currentRequest];
      if ([v7 _tryCachingServer])
      {
        v9 = [v7 originalRequest];
      }

      else
      {
        v9 = v8;
      }

      v10 = v9;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_2;
      v39[3] = &unk_278CC5100;
      v11 = v8;
      v40 = v11;
      v12 = *(a1 + 56);
      v13 = *(a1 + 32);
      v41 = v12;
      v42 = v13;
      v31 = MEMORY[0x245CDE340](v39);
      v32 = v10;
      v14 = [[ACSURLSessionDownloadTask alloc] initWithNSURLDownloadTaskCreator:v31 initialRequest:v10 forSession:*(a1 + 32)];
      v15 = *(a1 + 32);
      v16 = [(ACSURLSessionTask *)v14 _nsurlTaskToOrigin];
      [v15 _onqueue_addTask:v14 forNSURLTask:v16];

      v17 = *(a1 + 48);
      v18 = [v7 _nsurlTaskToCachingServer];

      if (v17 == v18)
      {
        v30 = [(ACSURLSessionTask *)v14 _nsurlTaskForRequest:v11];
        [(ACSURLSessionTask *)v14 set_nsurlTaskToCachingServer:v30];
        v19 = *v2;
        v20 = [(ACSURLSessionTask *)v14 _nsurlTaskToOrigin];
        [(ACSURLSessionTask *)v14 _nsurlTaskToCachingServer];
        v21 = v6;
        v22 = v7;
        v24 = v23 = v11;
        [v19 _copyAttributesFromNSURLTask:v20 toNSURLTask:v24];

        v11 = v23;
        v7 = v22;
        v6 = v21;

        -[ACSURLSessionTask set_suspended:](v14, "set_suspended:", [v7 _suspended]);
        [*v2 _onqueue_addTask:v14 forNSURLTask:v30];
      }

      else
      {
        [(ACSURLSessionTask *)v14 set_tryCachingServer:0];
      }

      v25 = [*v2 _clientDelegate];
      v26 = [*v2 _clientDelegateOpQueue];
      if (objc_opt_respondsToSelector())
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_3;
        v33[3] = &unk_278CC54C0;
        v27 = v25;
        v28 = *v2;
        v34 = v27;
        v35 = v28;
        v36 = v7;
        v37 = v14;
        v38 = v17 == v18;
        [v26 addOperationWithBlock:v33];
      }

      else
      {
        if (v17 == v18)
        {
          v29 = [v7 _nsurlTaskToOrigin];
          [v29 cancel];
        }

        [*v2 _removeTask:v7];
      }
    }
  }
}

id __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = a2;
    v4 = [v2 _nsurlSession];
    v5 = [v4 downloadTaskWithRequest:v3];
  }

  return v5;
}

uint64_t __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) URLSession:*(a1 + 40) dataTask:*(a1 + 48) didBecomeDownloadTask:*(a1 + 56)];
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 48) _nsurlTaskToOrigin];
    [v2 cancel];
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _removeTask:v4];
}

- (void)URLSession:(id)session dataTask:(id)task didBecomeStreamTask:(id)streamTask
{
  sessionCopy = session;
  taskCopy = task;
  streamTaskCopy = streamTask;
  _queue = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ACSURLSession_URLSession_dataTask_didBecomeStreamTask___block_invoke;
  block[3] = &unk_278CC5498;
  block[4] = self;
  v17 = sessionCopy;
  v19 = streamTaskCopy;
  v20 = a2;
  v18 = taskCopy;
  v13 = streamTaskCopy;
  v14 = taskCopy;
  v15 = sessionCopy;
  dispatch_async(_queue, block);
}

void __57__ACSURLSession_URLSession_dataTask_didBecomeStreamTask___block_invoke(uint64_t a1)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __57__ACSURLSession_URLSession_dataTask_didBecomeStreamTask___block_invoke_cold_1();
    }

    v6 = (a1 + 48);
    v7 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
    if (v7)
    {
      v8 = v7;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __57__ACSURLSession_URLSession_dataTask_didBecomeStreamTask___block_invoke_cold_2();
      }

      v9 = v8;
      [*v2 _onqueue_removeTaskForNSURLTask:*v6];
      v10 = *v6;
      v11 = [v9 _nsurlTaskToCachingServer];

      if (v10 == v11)
      {
        v12 = *v2;
        v13 = [v9 _nsurlTaskToOrigin];
        [v12 _onqueue_removeTaskForNSURLTask:v13];
      }

      v14 = MEMORY[0x277CBEAD8];
      v15 = *MEMORY[0x277CBE648];
      v16 = *(a1 + 32);
      v21[0] = @"session";
      v21[1] = @"nsurlTask";
      v17 = *(a1 + 56);
      v22[0] = v16;
      v22[1] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
      v19 = [v14 exceptionWithName:v15 reason:@"ACSURLSession does not support stream tasks" userInfo:v18];
      v20 = v19;

      objc_exception_throw(v19);
    }
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  v30 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v23 = sessionCopy;
    v24 = 2112;
    v25 = taskCopy;
    v26 = 2048;
    v27 = [dataCopy length];
    v28 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ dataTask:%@ didReceiveData:[%ld bytes] self=%@", buf, 0x2Au);
  }

  _queue = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ACSURLSession_URLSession_dataTask_didReceiveData___block_invoke;
  block[3] = &unk_278CC5498;
  block[4] = self;
  v18 = sessionCopy;
  v20 = dataCopy;
  v21 = a2;
  v19 = taskCopy;
  v14 = dataCopy;
  v15 = taskCopy;
  v16 = sessionCopy;
  dispatch_async(_queue, block);
}

void __52__ACSURLSession_URLSession_dataTask_didReceiveData___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __52__ACSURLSession_URLSession_dataTask_didReceiveData___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v9 = v8;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __52__ACSURLSession_URLSession_dataTask_didReceiveData___block_invoke_cold_2();
        }

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __52__ACSURLSession_URLSession_dataTask_didReceiveData___block_invoke_2;
        v13[3] = &unk_278CC5470;
        v10 = v6;
        v11 = *(a1 + 32);
        v14 = v10;
        v15 = v11;
        v16 = v9;
        v17 = *(a1 + 56);
        v12 = v9;
        [v7 addOperationWithBlock:v13];
      }
    }
  }
}

- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v28 = sessionCopy;
    v29 = 2112;
    v30 = taskCopy;
    v31 = 2112;
    v32 = responseCopy;
    v33 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ dataTask:%@ willCacheResponse:%@ self=%@", buf, 0x2Au);
  }

  _queue = [(ACSURLSession *)self _queue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke;
  v21[3] = &unk_278CC53D0;
  v21[4] = self;
  v22 = sessionCopy;
  v25 = handlerCopy;
  v26 = a2;
  v23 = taskCopy;
  v24 = responseCopy;
  v17 = responseCopy;
  v18 = taskCopy;
  v19 = sessionCopy;
  v20 = handlerCopy;
  dispatch_async(_queue, v21);
}

void __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke_cold_2();
        }

        v9 = v8;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke_3;
        v17[3] = &unk_278CC53A8;
        v10 = v18;
        v11 = v6;
        v12 = *(a1 + 32);
        v18[0] = v11;
        v18[1] = v12;
        v19 = v9;
        v20 = *(a1 + 56);
        v21 = *(a1 + 64);
        [v7 addOperationWithBlock:v17];
      }

      else
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke_2;
        v22[3] = &unk_278CC52E0;
        v10 = &v23;
        v23 = *(a1 + 64);
        [v7 addOperationWithBlock:v22];
      }
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke_4;
      v14[3] = &unk_278CC4F20;
      v16 = *(a1 + 64);
      v15 = *(a1 + 56);
      [v7 addOperationWithBlock:v14];

      v8 = v16;
    }
  }

  else
  {
    v13 = *(*(a1 + 64) + 16);

    v13();
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v52 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  lCopy = l;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    response = [taskCopy response];
    *buf = 138413314;
    v43 = sessionCopy;
    v44 = 2112;
    v45 = taskCopy;
    v46 = 2112;
    v47 = lCopy;
    v48 = 2112;
    v49 = response;
    v50 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ downloadTask:%@ didFinishDownloadingToURL:%@ response=%@ self=%@", buf, 0x34u);
  }

  v13 = [(ACSURLSession *)self _linkedLocationWithLocation:lCopy];
  if (!v13)
  {
    v28 = MEMORY[0x277CBEAD8];
    v29 = *MEMORY[0x277CBE648];
    v40[0] = @"session";
    v40[1] = @"nsurlTask";
    v41[0] = self;
    v41[1] = taskCopy;
    v40[2] = @"location";
    v41[2] = lCopy;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
    v31 = [v28 exceptionWithName:v29 reason:@"ACSURLSession needs a non-reference file URL to a file" userInfo:v30];
    v32 = v31;

    objc_exception_throw(v31);
  }

  v14 = v13;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v39 = 0;
  v16 = [defaultManager linkItemAtURL:lCopy toURL:v14 error:&v39];
  v17 = v39;

  if ((v16 & 1) == 0)
  {
    _logHandle2 = [(ACSURLSession *)self _logHandle];
    if (os_log_type_enabled(_logHandle2, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      path2 = [v14 path];
      *buf = 138412802;
      v43 = path;
      v44 = 2112;
      v45 = path2;
      v27 = path2;
      v46 = 2112;
      v47 = v17;
      _os_log_error_impl(&dword_2411B8000, _logHandle2, OS_LOG_TYPE_ERROR, "ACSURLSession can not link %@ to %@: %@", buf, 0x20u);
    }
  }

  _queue = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke;
  block[3] = &unk_278CC5510;
  block[4] = self;
  v34 = v14;
  v35 = sessionCopy;
  v36 = taskCopy;
  v37 = v17;
  v38 = a2;
  v20 = v17;
  v21 = taskCopy;
  v22 = sessionCopy;
  v23 = v14;
  dispatch_async(_queue, block);
}

void __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke_cold_1();
    }

    v6 = [*(a1 + 56) response];
    v7 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 56)];
    if (!v7)
    {
      v8 = [MEMORY[0x277CCAA00] defaultManager];
      [v8 removeItemAtURL:*(a1 + 40) error:0];
LABEL_25:

      return;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke_cold_2();
    }

    v8 = v7;
    v9 = [v8 _nsurlTaskToCachingServer];
    if (*(a1 + 56) == v9 && [v8 _tryCachingServer] && objc_msgSend(v8, "_failBackToOrigin") && (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(v6, "statusCode") >= 400))
    {
      v10 = [*v2 _logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v6 statusCode];
        v12 = [v6 URL];
        v13 = [v12 absoluteString];
        *buf = 134218242;
        v25 = v11;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_2411B8000, v10, OS_LOG_TYPE_DEFAULT, "HTTP response %ld from %@, ignoring to fail back to original", buf, 0x16u);
      }

      v14 = [MEMORY[0x277CCAA00] defaultManager];
      [v14 removeItemAtURL:*(a1 + 40) error:0];
    }

    else
    {
      if (*(a1 + 64))
      {
        [v8 set_deferredLinkError:?];
LABEL_24:

        goto LABEL_25;
      }

      v15 = [*(a1 + 32) _clientDelegate];
      v14 = [*(a1 + 32) _clientDelegateOpQueue];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke_232;
      v19[3] = &unk_278CC5470;
      v16 = *(a1 + 32);
      v20 = v15;
      v21 = v16;
      v22 = v8;
      v23 = *(a1 + 40);
      v17 = v15;
      [v14 addOperationWithBlock:v19];
    }

    goto LABEL_24;
  }

  v18 = [MEMORY[0x277CCAA00] defaultManager];
  [v18 removeItemAtURL:*(a1 + 40) error:0];
}

void __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke_232(uint64_t a1)
{
  [*(a1 + 32) URLSession:*(a1 + 40) downloadTask:*(a1 + 48) didFinishDownloadingToURL:*(a1 + 56)];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 removeItemAtURL:*(a1 + 56) error:0];
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  v38 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413570;
    v27 = sessionCopy;
    v28 = 2112;
    v29 = taskCopy;
    v30 = 2048;
    dataCopy = data;
    v32 = 2048;
    writtenCopy = written;
    v34 = 2048;
    writeCopy = write;
    v36 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ downloadTask:%@ didWriteData:%lld totalBytesWritten:%lld totalBytesExpectedToWrite:%lld self=%@", buf, 0x3Eu);
  }

  _queue = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__ACSURLSession_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke;
  block[3] = &unk_278CC5448;
  block[4] = self;
  v20 = sessionCopy;
  v21 = taskCopy;
  v22 = a2;
  dataCopy2 = data;
  writtenCopy2 = written;
  writeCopy2 = write;
  v17 = taskCopy;
  v18 = sessionCopy;
  dispatch_async(_queue, block);
}

void __98__ACSURLSession_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __98__ACSURLSession_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v9 = v8;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __98__ACSURLSession_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke_cold_2();
        }

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __98__ACSURLSession_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke_2;
        v13[3] = &unk_278CC5420;
        v10 = v6;
        v11 = *(a1 + 32);
        v14 = v10;
        v15 = v11;
        v16 = v9;
        v17 = *(a1 + 64);
        v18 = *(a1 + 80);
        v12 = v9;
        [v7 addOperationWithBlock:v13];
      }
    }
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes
{
  v33 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  _logHandle = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v24 = sessionCopy;
    v25 = 2112;
    v26 = taskCopy;
    v27 = 2048;
    offsetCopy = offset;
    v29 = 2048;
    bytesCopy = bytes;
    v31 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_2411B8000, _logHandle, OS_LOG_TYPE_DEBUG, "URLSession:%@ downloadTask:%@ didResumeAtOffset:%lld expectedTotalBytes:%lld self=%@", buf, 0x34u);
  }

  _queue = [(ACSURLSession *)self _queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__ACSURLSession_URLSession_downloadTask_didResumeAtOffset_expectedTotalBytes___block_invoke;
  v17[3] = &unk_278CC5420;
  v17[4] = self;
  v18 = sessionCopy;
  v19 = taskCopy;
  v20 = a2;
  offsetCopy2 = offset;
  bytesCopy2 = bytes;
  v15 = taskCopy;
  v16 = sessionCopy;
  dispatch_async(_queue, v17);
}

void __78__ACSURLSession_URLSession_downloadTask_didResumeAtOffset_expectedTotalBytes___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __78__ACSURLSession_URLSession_downloadTask_didResumeAtOffset_expectedTotalBytes___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v9 = v8;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __78__ACSURLSession_URLSession_downloadTask_didResumeAtOffset_expectedTotalBytes___block_invoke_cold_2();
        }

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __78__ACSURLSession_URLSession_downloadTask_didResumeAtOffset_expectedTotalBytes___block_invoke_2;
        v13[3] = &unk_278CC5538;
        v10 = v6;
        v11 = *(a1 + 32);
        v14 = v10;
        v15 = v11;
        v16 = v9;
        v17 = *(a1 + 64);
        v12 = v9;
        [v7 addOperationWithBlock:v13];
      }
    }
  }
}

- (void)URLSession:(id)session readClosedForStreamTask:(id)task
{
  v14[2] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE648];
  v13[0] = @"session";
  v13[1] = @"nsurlTask";
  v14[0] = self;
  v14[1] = taskCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v8 exceptionWithName:v9 reason:@"ACSURLSession does not support stream tasks" userInfo:v10];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)URLSession:(id)session writeClosedForStreamTask:(id)task
{
  v14[2] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE648];
  v13[0] = @"session";
  v13[1] = @"nsurlTask";
  v14[0] = self;
  v14[1] = taskCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v8 exceptionWithName:v9 reason:@"ACSURLSession does not support stream tasks" userInfo:v10];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)URLSession:(id)session betterRouteDiscoveredForStreamTask:(id)task
{
  v14[2] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE648];
  v13[0] = @"session";
  v13[1] = @"nsurlTask";
  v14[0] = self;
  v14[1] = taskCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v8 exceptionWithName:v9 reason:@"ACSURLSession does not support stream tasks" userInfo:v10];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)URLSession:(id)session streamTask:(id)task didBecomeInputStream:(id)stream outputStream:(id)outputStream
{
  v20[2] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  streamCopy = stream;
  outputStreamCopy = outputStream;
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE648];
  v19[0] = @"session";
  v19[1] = @"nsurlTask";
  v20[0] = self;
  v20[1] = taskCopy;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v17 = [v14 exceptionWithName:v15 reason:@"ACSURLSession does not support stream tasks" userInfo:v16];
  v18 = v17;

  objc_exception_throw(v17);
}

- (id)dataTaskWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v9 = handlerCopy;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  if (handlerCopy)
  {
    v10 = v16;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke_2;
    v16[3] = &unk_278CC55B0;
    v16[4] = self;
    v17[1] = &v19;
    v4 = v17;
    v17[0] = handlerCopy;
  }

  else
  {
    v10 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke;
    v18[3] = &unk_278CC4F48;
    v18[4] = self;
  }

  v11 = MEMORY[0x245CDE340](v10);
  v12 = [[ACSURLSessionDataTask alloc] initWithNSURLDataTaskCreator:v11 initialRequest:requestCopy forSession:self];
  v13 = v20[5];
  v20[5] = v12;

  [(ACSURLSession *)self _addTask:v20[5]];
  v14 = v20[5];

  if (v9)
  {
  }

  _Block_object_dispose(&v19, 8);

  return v14;
}

id __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _nsurlSession];
  v5 = [v4 dataTaskWithRequest:v3];

  return v5;
}

id __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke_3;
  v10[3] = &unk_278CC5588;
  v10[4] = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = v9;
  v11 = v9;
  v7 = [v5 dataTaskWithRequest:v4 completionHandler:v10];

  return v7;
}

void __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke_4;
    v12[3] = &unk_278CC5560;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v10;
    v14 = v11;
    [v9 _dataTask:v4 completedWithData:a2 response:a3 error:a4 completionHandler:v12];
  }
}

uint64_t __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) set_nsurlTaskCreator:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 set_internalState:2];
}

- (id)dataTaskWithURL:(id)l completionHandler:(id)handler
{
  v6 = MEMORY[0x277CCAD20];
  handlerCopy = handler;
  v8 = [v6 requestWithURL:l];
  v9 = [(ACSURLSession *)self dataTaskWithRequest:v8 completionHandler:handlerCopy];

  return v9;
}

- (id)uploadTaskWithRequest:(id)request fromFile:(id)file completionHandler:(id)handler
{
  requestCopy = request;
  fileCopy = file;
  handlerCopy = handler;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  if (handlerCopy)
  {
    v11 = v20;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke_2;
    v20[3] = &unk_278CC55D8;
    v20[4] = self;
    v12 = &v21;
    v21 = fileCopy;
    v22[1] = &v25;
    v13 = v22;
    v14 = handlerCopy;
  }

  else
  {
    v11 = v23;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke;
    v23[3] = &unk_278CC4F70;
    v23[4] = self;
    v13 = &v24;
    v14 = fileCopy;
    v12 = &v24;
  }

  *v13 = v14;
  v15 = MEMORY[0x245CDE340](v11);
  v16 = [[ACSURLSessionUploadTask alloc] initWithNSURLUploadTaskCreator:v15 initialRequest:requestCopy forSession:self];
  v17 = v26[5];
  v26[5] = v16;

  [(ACSURLSession *)self _addTask:v26[5]];
  v18 = v26[5];

  if (handlerCopy)
  {
  }

  _Block_object_dispose(&v25, 8);

  return v18;
}

id __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v6 = [v5 uploadTaskWithRequest:v4 fromFile:*(a1 + 40)];

  return v6;
}

id __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke_3;
  v11[3] = &unk_278CC5588;
  v6 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v7 = v10;
  v12 = v10;
  v8 = [v5 uploadTaskWithRequest:v4 fromFile:v6 completionHandler:v11];

  return v8;
}

void __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke_4;
    v12[3] = &unk_278CC5560;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v10;
    v14 = v11;
    [v9 _dataTask:v4 completedWithData:a2 response:a3 error:a4 completionHandler:v12];
  }
}

uint64_t __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) set_nsurlTaskCreator:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 set_internalState:2];
}

- (id)uploadTaskWithRequest:(id)request fromData:(id)data completionHandler:(id)handler
{
  requestCopy = request;
  dataCopy = data;
  handlerCopy = handler;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  if (handlerCopy)
  {
    v11 = v20;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke_2;
    v20[3] = &unk_278CC55D8;
    v20[4] = self;
    v12 = &v21;
    v21 = dataCopy;
    v22[1] = &v25;
    v13 = v22;
    v14 = handlerCopy;
  }

  else
  {
    v11 = v23;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke;
    v23[3] = &unk_278CC4F70;
    v23[4] = self;
    v13 = &v24;
    v14 = dataCopy;
    v12 = &v24;
  }

  *v13 = v14;
  v15 = MEMORY[0x245CDE340](v11);
  v16 = [[ACSURLSessionUploadTask alloc] initWithNSURLUploadTaskCreator:v15 initialRequest:requestCopy forSession:self];
  v17 = v26[5];
  v26[5] = v16;

  [(ACSURLSession *)self _addTask:v26[5]];
  v18 = v26[5];

  if (handlerCopy)
  {
  }

  _Block_object_dispose(&v25, 8);

  return v18;
}

id __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v6 = [v5 uploadTaskWithRequest:v4 fromData:*(a1 + 40)];

  return v6;
}

id __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke_3;
  v11[3] = &unk_278CC5588;
  v6 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v7 = v10;
  v12 = v10;
  v8 = [v5 uploadTaskWithRequest:v4 fromData:v6 completionHandler:v11];

  return v8;
}

void __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke_4;
    v12[3] = &unk_278CC5560;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v10;
    v14 = v11;
    [v9 _dataTask:v4 completedWithData:a2 response:a3 error:a4 completionHandler:v12];
  }
}

uint64_t __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) set_nsurlTaskCreator:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 set_internalState:2];
}

- (id)downloadTaskWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v9 = handlerCopy;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  if (handlerCopy)
  {
    v10 = v16;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke_2;
    v16[3] = &unk_278CC5600;
    v16[4] = self;
    v17[1] = &v19;
    v4 = v17;
    v17[0] = handlerCopy;
  }

  else
  {
    v10 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke;
    v18[3] = &unk_278CC4FC0;
    v18[4] = self;
  }

  v11 = MEMORY[0x245CDE340](v10);
  v12 = [[ACSURLSessionDownloadTask alloc] initWithNSURLDownloadTaskCreator:v11 initialRequest:requestCopy forSession:self];
  v13 = v20[5];
  v20[5] = v12;

  [(ACSURLSession *)self _addTask:v20[5]];
  v14 = v20[5];

  if (v9)
  {
  }

  _Block_object_dispose(&v19, 8);

  return v14;
}

id __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _nsurlSession];
  v5 = [v4 downloadTaskWithRequest:v3];

  return v5;
}

id __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke_3;
  v10[3] = &unk_278CC5150;
  v10[4] = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = v9;
  v11 = v9;
  v7 = [v5 downloadTaskWithRequest:v4 completionHandler:v10];

  return v7;
}

void __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke_4;
    v12[3] = &unk_278CC5128;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v10;
    v14 = v11;
    [v9 _downloadTask:v4 completedWithLocation:a2 response:a3 error:a4 completionHandler:v12];
  }
}

uint64_t __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) set_nsurlTaskCreator:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 set_internalState:2];
}

- (id)downloadTaskWithURL:(id)l completionHandler:(id)handler
{
  v6 = MEMORY[0x277CCAD20];
  handlerCopy = handler;
  v8 = [v6 requestWithURL:l];
  v9 = [(ACSURLSession *)self downloadTaskWithRequest:v8 completionHandler:handlerCopy];

  return v9;
}

- (void)_locateCachingServerForURL:(const char *)a1 isUpload:(uint64_t)a2 completionHandler:.cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"ACSURLSession.m" lineNumber:456 description:{@"ACSURLSession %@ invalid use of %@", a2, v4}];
}

void __29__ACSURLSession__cancelTask___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_11(&dword_2411B8000, a2, a3, "_cancelTask:%@ task already completed", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_cancelDownloadTask:byProducingResumeData:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [v3 descriptionWithAddress];
  [v4 handleFailureInMethod:v2 object:v1 file:@"ACSURLSession.m" lineNumber:539 description:{@"ACSURLSession %@ unexpected task %@ for nsurlTask %@, expected class %@", v1, v0, v5, @"NSURLSessionDownloadTask"}];
}

void __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12();
  _os_log_fault_impl(&dword_2411B8000, v0, OS_LOG_TYPE_FAULT, "ACSURLSession failed to convert resume data: %{public}@", v1, 0xCu);
}

void __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke_122_cold_1()
{
  OUTLINED_FUNCTION_2();
  v12 = [MEMORY[0x277CCA890] currentHandler];
  v3 = *(v2 + 40);
  v4 = *v1;
  v5 = [v0 descriptionWithAddress];
  [OUTLINED_FUNCTION_6(v5 v6];
}

void __30__ACSURLSession__suspendTask___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_11(&dword_2411B8000, a2, a3, "_suspendTask:%@ task already completed", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v10 = [MEMORY[0x277CCA890] currentHandler];
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __57__ACSURLSession_URLSession_taskIsWaitingForConnectivity___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v10 = [MEMORY[0x277CCA890] currentHandler];
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __89__ACSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v10 = [MEMORY[0x277CCA890] currentHandler];
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v10 = [MEMORY[0x277CCA890] currentHandler];
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __89__ACSURLSession_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v10 = [MEMORY[0x277CCA890] currentHandler];
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __60__ACSURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __54__ACSURLSession_URLSession_task_didCompleteWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v10 = [MEMORY[0x277CCA890] currentHandler];
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_10() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

void __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_9() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

void __57__ACSURLSession_URLSession_dataTask_didBecomeStreamTask___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __57__ACSURLSession_URLSession_dataTask_didBecomeStreamTask___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_9() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

void __52__ACSURLSession_URLSession_dataTask_didReceiveData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __52__ACSURLSession_URLSession_dataTask_didReceiveData___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_9() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

void __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v10 = [MEMORY[0x277CCA890] currentHandler];
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_10() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

void __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v10 = [MEMORY[0x277CCA890] currentHandler];
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_10() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

void __98__ACSURLSession_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v10 = [MEMORY[0x277CCA890] currentHandler];
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __98__ACSURLSession_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_14() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

void __78__ACSURLSession_URLSession_downloadTask_didResumeAtOffset_expectedTotalBytes___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v10 = [MEMORY[0x277CCA890] currentHandler];
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __78__ACSURLSession_URLSession_downloadTask_didResumeAtOffset_expectedTotalBytes___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_14() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

@end