@interface QLMemoryCacheQueryOperation
- (QLMemoryCacheQueryOperation)initWithThumbnailRequest:(id)request cacheThread:(id)thread;
- (void)cancel;
- (void)main;
@end

@implementation QLMemoryCacheQueryOperation

- (void)main
{
  v32 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__QLMemoryCacheQueryOperation_main__block_invoke;
  block[3] = &unk_279ADD578;
  block[4] = self;
  block[5] = &v24;
  dispatch_sync(queue, block);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [v25[5] activity];
  os_activity_scope_enter(activity, &state);

  v5 = v25[5];
  if (v5)
  {
    cancelled = [v5 cancelled];
    cacheThread = self->_cacheThread;
    if (cancelled)
    {
      [(_QLCacheThread *)cacheThread _thumbnailHasBeenCancelled:v25[5]];
    }

    else
    {
      memoryCache = [(_QLCacheThread *)cacheThread memoryCache];
      v9 = [memoryCache sendThumbnailDataForThumbnailRequest:v25[5] withCacheThread:self->_cacheThread];

      if (v9)
      {
        v10 = MEMORY[0x277CDAB78];
        v11 = *(MEMORY[0x277CDAB78] + 16);
        if (!v11)
        {
          QLTInitLogging();
          v11 = *(v10 + 16);
        }

        v12 = v11;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          request = [v25[5] request];
          fileIdentifier = [request fileIdentifier];
          *buf = 138412290;
          v31 = fileIdentifier;
          _os_log_impl(&dword_2615D3000, v12, OS_LOG_TYPE_INFO, "Did find thumbnail in memory cache %@", buf, 0xCu);
        }
      }

      else
      {
        v15 = MEMORY[0x277CDAB78];
        v16 = *(MEMORY[0x277CDAB78] + 16);
        if (!v16)
        {
          QLTInitLogging();
          v16 = *(v15 + 16);
        }

        v17 = v16;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          request2 = [v25[5] request];
          fileIdentifier2 = [request2 fileIdentifier];
          *buf = 138412290;
          v31 = fileIdentifier2;
          _os_log_impl(&dword_2615D3000, v17, OS_LOG_TYPE_INFO, "No thumbnail found in memory cache %@", buf, 0xCu);
        }

        [(_QLCacheThread *)self->_cacheThread _addThumbnailRequestIntoDiskCacheQueryQueue:v25[5]];
      }
    }
  }

  serverThread = [(_QLCacheThread *)self->_cacheThread serverThread];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __35__QLMemoryCacheQueryOperation_main__block_invoke_2;
  v21[3] = &unk_279ADD0F8;
  v21[4] = self;
  [serverThread perform:v21];

  os_activity_scope_leave(&state);
  _Block_object_dispose(&v24, 8);
}

uint64_t __35__QLMemoryCacheQueryOperation_main__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generatorRequest];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 setGeneratorRequest:0];
}

- (QLMemoryCacheQueryOperation)initWithThumbnailRequest:(id)request cacheThread:(id)thread
{
  requestCopy = request;
  threadCopy = thread;
  v9 = [(QLMemoryCacheQueryOperation *)self init];
  if (v9)
  {
    v10 = dispatch_queue_create("quicklookd.memorycacheoperation", 0);
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_generatorRequest, request);
    objc_storeStrong(&v9->_cacheThread, thread);
  }

  return v9;
}

- (void)cancel
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__QLMemoryCacheQueryOperation_cancel__block_invoke;
  block[3] = &unk_279ADD578;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(queue, block);
  if (v14[5])
  {
    v4 = MEMORY[0x277CDAB78];
    v5 = *(MEMORY[0x277CDAB78] + 16);
    if (!v5)
    {
      QLTInitLogging();
      v5 = *(v4 + 16);
    }

    v6 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      request = [v14[5] request];
      fileIdentifier = [request fileIdentifier];
      *buf = 138412290;
      v20 = fileIdentifier;
      _os_log_impl(&dword_2615D3000, v6, OS_LOG_TYPE_INFO, "Memory cache request cancel, sending the thumbnail request to the disk cache (%@)", buf, 0xCu);
    }

    [(_QLCacheThread *)self->_cacheThread _dispatchThumbnailRequestInServerThread:v14[5]];
  }

  v11.receiver = self;
  v11.super_class = QLMemoryCacheQueryOperation;
  [(QLMemoryCacheQueryOperation *)&v11 cancel];
  serverThread = [(_QLCacheThread *)self->_cacheThread serverThread];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__QLMemoryCacheQueryOperation_cancel__block_invoke_3;
  v10[3] = &unk_279ADD0F8;
  v10[4] = self;
  [serverThread perform:v10];

  _Block_object_dispose(&v13, 8);
}

uint64_t __37__QLMemoryCacheQueryOperation_cancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generatorRequest];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 setGeneratorRequest:0];
}

@end