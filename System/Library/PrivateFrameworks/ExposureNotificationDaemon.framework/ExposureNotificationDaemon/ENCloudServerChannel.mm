@interface ENCloudServerChannel
- (ENCloudServerChannel)init;
- (NSHTTPCookieStorage)cookieStorage;
- (void)dealloc;
- (void)enqueueRequest:(id)request withCompletion:(id)completion;
@end

@implementation ENCloudServerChannel

- (ENCloudServerChannel)init
{
  v23.receiver = self;
  v23.super_class = ENCloudServerChannel;
  v2 = [(ENCloudServerChannel *)&v23 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABE0]);
    [(ENCloudServerChannel *)v2 setQueue:v3];

    queue = [(ENCloudServerChannel *)v2 queue];
    [queue setMaxConcurrentOperationCount:1];

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.bluetooth.serverChannel", v5);
    [(ENCloudServerChannel *)v2 setSerialQueue:v6];

    defaultSessionConfiguration = [MEMORY[0x277CBABC0] defaultSessionConfiguration];
    [(ENCloudServerChannel *)v2 setSessionConfig:defaultSessionConfiguration];

    sessionConfig = [(ENCloudServerChannel *)v2 sessionConfig];
    [sessionConfig setURLCache:0];

    sessionConfig2 = [(ENCloudServerChannel *)v2 sessionConfig];
    [sessionConfig2 setRequestCachePolicy:1];

    cookieStorage = [(ENCloudServerChannel *)v2 cookieStorage];
    sessionConfig3 = [(ENCloudServerChannel *)v2 sessionConfig];
    [sessionConfig3 setHTTPCookieStorage:cookieStorage];

    sessionConfig4 = [(ENCloudServerChannel *)v2 sessionConfig];
    [sessionConfig4 setWaitsForConnectivity:1];

    v13 = ENBundleIdentifierForURLSessions();
    sessionConfig5 = [(ENCloudServerChannel *)v2 sessionConfig];
    [sessionConfig5 set_sourceApplicationBundleIdentifier:v13];

    v15 = MEMORY[0x277CBABB0];
    sessionConfig6 = [(ENCloudServerChannel *)v2 sessionConfig];
    v17 = [v15 sessionWithConfiguration:sessionConfig6];
    [(ENCloudServerChannel *)v2 setSession:v17];

    serialQueue = [(ENCloudServerChannel *)v2 serialQueue];
    session = [(ENCloudServerChannel *)v2 session];
    delegateQueue = [session delegateQueue];
    [delegateQueue setUnderlyingQueue:serialQueue];

    dictionary = [MEMORY[0x277CBEB30] dictionary];
    [(ENCloudServerChannel *)v2 setRequests:dictionary];
  }

  return v2;
}

- (void)dealloc
{
  requests = [(ENCloudServerChannel *)self requests];
  [requests removeAllObjects];

  v4.receiver = self;
  v4.super_class = ENCloudServerChannel;
  [(ENCloudServerChannel *)&v4 dealloc];
}

- (void)enqueueRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (gLogCategory_ENCloudServerChannel <= 30 && (gLogCategory_ENCloudServerChannel != -1 || _LogCategory_Initialize()))
  {
    [ENCloudServerChannel enqueueRequest:requestCopy withCompletion:?];
  }

  v8 = requestCopy;
  if (v8)
  {
    serialQueue = [(ENCloudServerChannel *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke;
    block[3] = &unk_278FD1080;
    block[4] = v8;
    block[5] = self;
    v11 = completionCopy;
    dispatch_async(serialQueue, block);
  }
}

void __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke(id *a1)
{
  v2 = MEMORY[0x277CBAB58];
  v3 = [a1[4] url];
  v4 = [v2 requestWithURL:v3 cachePolicy:1 timeoutInterval:60.0];

  v5 = [a1[4] httpMethodString];
  [v4 setHTTPMethod:v5];

  v6 = [a1[4] headers];
  [v4 setAllHTTPHeaderFields:v6];

  v7 = [a1[4] body];
  if (v7)
  {
    [v4 setHTTPBody:v7];
  }

  objc_initWeak(&location, a1[5]);
  v8 = [a1[5] session];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2;
  v17 = &unk_278FD1058;
  objc_copyWeak(&v21, &location);
  v18 = a1[4];
  v9 = v4;
  v19 = v9;
  v20 = a1[6];
  v10 = [v8 dataTaskWithRequest:v9 completionHandler:&v14];

  v11 = [a1[5] requests];
  v12 = [a1[4] requestID];
  [v11 setObject:v10 forKeyedSubscript:v12];

  [v10 resume];
  if (gLogCategory_ENCloudServerChannel <= 30 && (gLogCategory_ENCloudServerChannel != -1 || _LogCategory_Initialize()))
  {
    v13 = [a1[5] requests];
    LogPrintF_safe(&gLogCategory_ENCloudServerChannel, "[ENCloudServerChannel enqueueRequest:withCompletion:]_block_invoke", 30, "Network Tasks: %@", v13, v14, v15, v16, v17, v18, v19);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v25 = a2;
  v7 = a3;
  v26 = a4;
  val = objc_loadWeakRetained((a1 + 56));
  v24 = v7;
  v8 = [v7 copy];
  if (gLogCategory_ENCloudServerChannel <= 10 && (gLogCategory_ENCloudServerChannel != -1 || _LogCategory_Initialize()))
  {
    __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_1(a1);
  }

  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v35 = 0u;
  v9 = [*(a1 + 40) allHTTPHeaderFields];
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if (gLogCategory_ENCloudServerChannel <= 30)
        {
          v13 = *(*(&v35 + 1) + 8 * i);
          if (gLogCategory_ENCloudServerChannel != -1 || _LogCategory_Initialize())
          {
            __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_2((a1 + 40), v13);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v10);
  }

  if (gLogCategory__ENCloudServerChannel <= 30 && (gLogCategory__ENCloudServerChannel != -1 || _LogCategory_Initialize()))
  {
    __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_3(v8);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = [v8 allHeaderFields];
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v15)
  {
    v16 = *v32;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v14);
        }

        if (gLogCategory_ENCloudServerChannel <= 30)
        {
          v18 = *(*(&v31 + 1) + 8 * j);
          if (gLogCategory_ENCloudServerChannel != -1 || _LogCategory_Initialize())
          {
            __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_4(v8, v18);
          }
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v15);
  }

  objc_initWeak(&location, val);
  v19 = [val serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_3;
  block[3] = &unk_278FD1030;
  objc_copyWeak(&v29, &location);
  block[4] = *(a1 + 32);
  dispatch_async(v19, block);

  v20 = *(a1 + 48);
  if (v20)
  {
    v21 = [v8 statusCode];
    v22 = [v8 allHeaderFields];
    v23 = [v25 copy];
    (*(v20 + 16))(v20, v21, v22, v23, v26);
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained requests];
  v3 = [*(a1 + 32) requestID];
  [v2 removeObjectForKey:v3];
}

- (NSHTTPCookieStorage)cookieStorage
{
  cookieStorage = self->_cookieStorage;
  if (!cookieStorage)
  {
    v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v5 = [v4 objectAtIndex:0];
    v6 = [v5 stringByAppendingPathComponent:@"com.apple.bluetooth.serverChannel"];
    v7 = [v6 stringByAppendingPathComponent:@"cookies"];

    uTF8String = [v7 UTF8String];
    v9 = strlen(uTF8String);
    v10 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE0], uTF8String, v9, 1u);
    v11 = CFHTTPCookieStorageCreateFromFile();
    CFRunLoopGetMain();
    CFHTTPCookieStorageScheduleWithRunLoop();
    v12 = [objc_alloc(MEMORY[0x277CBAB40]) _initWithCFHTTPCookieStorage:v11];
    [(ENCloudServerChannel *)self setCookieStorage:v12];

    if (v10)
    {
      CFRelease(v10);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    cookieStorage = self->_cookieStorage;
  }

  return cookieStorage;
}

void __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) url];
  LogPrintF_safe(&gLogCategory_ENCloudServerChannel, "[ENCloudServerChannel enqueueRequest:withCompletion:]_block_invoke_2", 10, "Network Task Request: %@", v1);
}

void __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_2(id *a1, uint64_t a2)
{
  v3 = [*a1 allHTTPHeaderFields];
  v4 = [v3 objectForKeyedSubscript:a2];
  LogPrintF_safe(&gLogCategory_ENCloudServerChannel, "[ENCloudServerChannel enqueueRequest:withCompletion:]_block_invoke_2", 30, "[NT-RQ]: %@: %@", a2, v4);
}

void __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_3(void *a1)
{
  v2 = [a1 statusCode];
  v3 = [a1 allHeaderFields];
  v4 = [v3 objectForKeyedSubscript:@"x-apple-request-uuid"];
  LogPrintF_safe(&gLogCategory__ENCloudServerChannel, "[ENCloudServerChannel enqueueRequest:withCompletion:]_block_invoke_2", 30, "[NT-RS] Response statusCode: %lu with requestID - %@", v2, v4);
}

void __54__ENCloudServerChannel_enqueueRequest_withCompletion___block_invoke_2_cold_4(void *a1, uint64_t a2)
{
  v3 = [a1 allHeaderFields];
  v4 = [v3 objectForKeyedSubscript:a2];
  LogPrintF_safe(&gLogCategory_ENCloudServerChannel, "[ENCloudServerChannel enqueueRequest:withCompletion:]_block_invoke_2", 30, "[NT-RS] %@: %@", a2, v4);
}

@end