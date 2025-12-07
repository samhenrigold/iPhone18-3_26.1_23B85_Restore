@interface QLDiskCacheQueryOperation
- (BOOL)appendThumbnailRequest:(id)request;
- (QLDiskCacheQueryOperation)initWithCacheThread:(id)thread;
- (void)cancel;
- (void)dealloc;
- (void)main;
@end

@implementation QLDiskCacheQueryOperation

- (void)dealloc
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queue = selfCopy->_queue;
  selfCopy->_queue = 0;

  objc_sync_exit(selfCopy);
  v4.receiver = selfCopy;
  v4.super_class = QLDiskCacheQueryOperation;
  [(QLDiskCacheQueryOperation *)&v4 dealloc];
}

- (void)main
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queue = selfCopy->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__QLDiskCacheQueryOperation_main__block_invoke;
    block[3] = &unk_279ADD578;
    block[4] = selfCopy;
    block[5] = &v20;
    dispatch_sync(queue, block);
  }

  objc_sync_exit(selfCopy);

  if (v21[5])
  {
    diskCache = [(_QLCacheThread *)selfCopy->_cacheThread diskCache];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __33__QLDiskCacheQueryOperation_main__block_invoke_2;
    v18[3] = &unk_279ADD5C8;
    v18[4] = selfCopy;
    v18[5] = &v20;
    v5 = [diskCache doReading:v18];

    if ((v5 & 1) == 0)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      allValues = [v21[5] allValues];
      v7 = [allValues countByEnumeratingWithState:&v14 objects:v26 count:16];
      if (v7)
      {
        v8 = 0;
        v9 = *v15;
        do
        {
          v10 = 0;
          v11 = v8;
          do
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(allValues);
            }

            v8 = *(*(&v14 + 1) + 8 * v10);

            [(_QLCacheThread *)selfCopy->_cacheThread _dispatchThumbnailRequestInServerThread:v8];
            ++v10;
            v11 = v8;
          }

          while (v7 != v10);
          v7 = [allValues countByEnumeratingWithState:&v14 objects:v26 count:16];
        }

        while (v7);
      }
    }
  }

  serverThread = [(_QLCacheThread *)selfCopy->_cacheThread serverThread];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __33__QLDiskCacheQueryOperation_main__block_invoke_25;
  v13[3] = &unk_279ADD0F8;
  v13[4] = selfCopy;
  [serverThread perform:v13];

  _Block_object_dispose(&v20, 8);
}

uint64_t __33__QLDiskCacheQueryOperation_main__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailRequestBatch];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 setThumbnailRequestBatch:0];
}

void __33__QLDiskCacheQueryOperation_main__block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cacheThread];
  v3 = [v2 diskCache];
  v4 = [v3 enumeratorForThumbnailRequests:*(*(*(a1 + 40) + 8) + 40)];

  v26 = 0;
  v5 = [v4 nextThumbnailRequestWithThumbnailData:&v26];
  v6 = v26;
  v8 = v6;
  if (v5)
  {
    v9 = MEMORY[0x277CDAB78];
    *&v7 = 138412546;
    v24 = v7;
    do
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v10 = [v5 activity];
      os_activity_scope_enter(v10, &state);

      [v5 setDidCheckCache:1];
      if ([v5 cancelled])
      {
        v11 = [*(a1 + 32) cacheThread];
        [v11 _thumbnailHasBeenCancelled:v5];
      }

      else if (v8)
      {
        v12 = *(v9 + 16);
        if (!v12)
        {
          QLTInitLogging();
          v12 = *(v9 + 16);
        }

        v13 = v12;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v5 request];
          v15 = [v5 request];
          v16 = [v15 fileIdentifier];
          *buf = v24;
          v28 = v14;
          v29 = 2112;
          v30 = v16;
          _os_log_impl(&dword_2615D3000, v13, OS_LOG_TYPE_INFO, "Thumbnail found in disk cache for request:%@ fi: %@", buf, 0x16u);
        }

        v11 = [*(a1 + 32) cacheThread];
        [v11 _sendThumbnailData:v8 forThumbnailRequest:v5];
      }

      else
      {
        v17 = *(v9 + 16);
        if (!v17)
        {
          QLTInitLogging();
          v17 = *(v9 + 16);
        }

        v18 = v17;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [v5 request];
          v20 = [v5 request];
          v21 = [v20 fileIdentifier];
          *buf = v24;
          v28 = v19;
          v29 = 2112;
          v30 = v21;
          _os_log_impl(&dword_2615D3000, v18, OS_LOG_TYPE_INFO, "No thumbnail found in disk cache for request: %@ fi: %@", buf, 0x16u);
        }

        v11 = [*(a1 + 32) cacheThread];
        [v11 _dispatchThumbnailRequestInServerThread:v5];
      }

      os_activity_scope_leave(&state);
      v26 = v8;
      v22 = [v4 nextThumbnailRequestWithThumbnailData:&v26];
      v23 = v26;

      v8 = v23;
      v5 = v22;
    }

    while (v22);
  }

  else
  {
    v23 = v6;
  }
}

- (QLDiskCacheQueryOperation)initWithCacheThread:(id)thread
{
  threadCopy = thread;
  v6 = [(QLDiskCacheQueryOperation *)self init];
  if (v6)
  {
    v7 = dispatch_queue_create("quicklookd.memoreycacheoperation", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:20];
    thumbnailRequestBatch = v6->_thumbnailRequestBatch;
    v6->_thumbnailRequestBatch = v9;

    v6->_thumbnailRequestCount = 0;
    objc_storeStrong(&v6->_cacheThread, thread);
  }

  return v6;
}

- (BOOL)appendThumbnailRequest:(id)request
{
  requestCopy = request;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queue = selfCopy->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__QLDiskCacheQueryOperation_appendThumbnailRequest___block_invoke;
    block[3] = &unk_279ADD5A0;
    block[4] = selfCopy;
    v10 = requestCopy;
    v11 = &v12;
    dispatch_sync(queue, block);
  }

  objc_sync_exit(selfCopy);

  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__QLDiskCacheQueryOperation_appendThumbnailRequest___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isReady])
  {
    v2 = [*(a1 + 32) thumbnailRequestBatch];
    if (v2)
    {
      v3 = v2;
      v4 = [*(a1 + 32) thumbnailRequestCount];

      if (v4 <= 19)
      {
        v5 = [*(a1 + 40) request];
        v6 = [v5 fileIdentifier];
        v7 = [v6 fileIdentifier];

        if (v7)
        {
          v8 = [*(a1 + 32) thumbnailRequestBatch];
          v9 = [v8 objectForKeyedSubscript:v7];

          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v10 = [*(a1 + 32) thumbnailRequestBatch];
            [v10 setObject:v9 forKeyedSubscript:v7];
          }

          [v9 addObject:*(a1 + 40)];
          [*(a1 + 32) setThumbnailRequestCount:{objc_msgSend(*(a1 + 32), "thumbnailRequestCount") + 1}];
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }

        else
        {
          v11 = MEMORY[0x277CDAB78];
          v12 = *(MEMORY[0x277CDAB78] + 16);
          if (!v12)
          {
            QLTInitLogging();
            v12 = *(v11 + 16);
          }

          if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            goto LABEL_13;
          }

          v13 = *(a1 + 40);
          v9 = v12;
          v14 = [v13 request];
          v15 = 138412290;
          v16 = v14;
          _os_log_impl(&dword_2615D3000, v9, OS_LOG_TYPE_INFO, "could not get pathID for %@", &v15, 0xCu);
        }

LABEL_13:
      }
    }
  }
}

- (void)cancel
{
  v40 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queue = selfCopy->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__QLDiskCacheQueryOperation_cancel__block_invoke;
    block[3] = &unk_279ADD578;
    block[4] = selfCopy;
    block[5] = &v30;
    dispatch_sync(queue, block);
  }

  objc_sync_exit(selfCopy);

  if (v31[5])
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v25 = 0u;
    obj = [v31[5] allValues];
    v17 = [obj countByEnumeratingWithState:&v25 objects:v39 count:16];
    if (v17)
    {
      v16 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v25 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v5 = v4;
          v6 = [v5 countByEnumeratingWithState:&v21 objects:v38 count:16];
          if (v6)
          {
            v7 = *v22;
            do
            {
              v8 = 0;
              do
              {
                if (*v22 != v7)
                {
                  objc_enumerationMutation(v5);
                }

                v9 = *(*(&v21 + 1) + 8 * v8);
                v10 = *(MEMORY[0x277CDAB78] + 16);
                if (!v10)
                {
                  QLTInitLogging();
                  v10 = *(MEMORY[0x277CDAB78] + 16);
                }

                v11 = v10;
                if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
                {
                  request = [v9 request];
                  fileIdentifier = [request fileIdentifier];
                  *buf = 138412290;
                  v37 = fileIdentifier;
                  _os_log_impl(&dword_2615D3000, v11, OS_LOG_TYPE_INFO, "Disk cache request cancel, sending the thumbnail request to the server thread (%@)", buf, 0xCu);
                }

                [(_QLCacheThread *)selfCopy->_cacheThread _dispatchThumbnailRequestInServerThread:v9];
                ++v8;
              }

              while (v6 != v8);
              v6 = [v5 countByEnumeratingWithState:&v21 objects:v38 count:16];
            }

            while (v6);
          }
        }

        v17 = [obj countByEnumeratingWithState:&v25 objects:v39 count:16];
      }

      while (v17);
    }
  }

  v20.receiver = selfCopy;
  v20.super_class = QLDiskCacheQueryOperation;
  [(QLDiskCacheQueryOperation *)&v20 cancel];
  serverThread = [(_QLCacheThread *)selfCopy->_cacheThread serverThread];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __35__QLDiskCacheQueryOperation_cancel__block_invoke_26;
  v19[3] = &unk_279ADD0F8;
  v19[4] = selfCopy;
  [serverThread perform:v19];

  _Block_object_dispose(&v30, 8);
}

uint64_t __35__QLDiskCacheQueryOperation_cancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailRequestBatch];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 setThumbnailRequestBatch:0];
}

@end