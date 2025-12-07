@interface NWActivityXPC
- (NWActivityXPC)initWithQueue:(id)queue qosClass:(unsigned int)class;
- (void)cancel;
- (void)dealloc;
- (void)retrieveMetricsForActivity:(unsigned __int8)activity[16] completion:(id)completion;
- (void)start;
@end

@implementation NWActivityXPC

- (NWActivityXPC)initWithQueue:(id)queue qosClass:(unsigned int)class
{
  v4 = *&class;
  v15 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  if (!queueCopy)
  {
    v9 = objectanalyticsHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v14 = "[NWActivityXPC initWithQueue:qosClass:]";
      v10 = "%s queue is required";
LABEL_9:
      _os_log_impl(&dword_2324AD000, v9, OS_LOG_TYPE_FAULT, v10, buf, 0xCu);
    }

LABEL_10:

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (!v4)
  {
    v9 = objectanalyticsHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v14 = "[NWActivityXPC initWithQueue:qosClass:]";
      v10 = "%s qosClass is required";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v12.receiver = self;
  v12.super_class = NWActivityXPC;
  v7 = [(NWActivityXPC *)&v12 init];
  if (!v7)
  {
    self = objectanalyticsHandle();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v14 = "[NWActivityXPC initWithQueue:qosClass:]";
      _os_log_impl(&dword_2324AD000, &self->super, OS_LOG_TYPE_FAULT, "%s [super init] failed", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v8 = v7;
  [(NWActivityXPC *)v7 setQueue:queueCopy];
  [(NWActivityXPC *)v8 setQosClass:v4];
  [(NWActivityXPC *)v8 start];
LABEL_12:

  return v8;
}

- (void)start
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NWActivityXPC *)self setPendingCompletionHandlers:v3];

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.symptom_analytics" options:4096];
  [(NWActivityXPC *)self setConnection:v4];

  connection = [(NWActivityXPC *)self connection];

  if (connection)
  {
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28478F8C8];
    connection2 = [(NWActivityXPC *)self connection];
    [connection2 setRemoteObjectInterface:v6];

    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __22__NWActivityXPC_start__block_invoke;
    v15[3] = &unk_278987530;
    objc_copyWeak(&v16, &location);
    connection3 = [(NWActivityXPC *)self connection];
    [connection3 setInvalidationHandler:v15];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __22__NWActivityXPC_start__block_invoke_75;
    v13[3] = &unk_278987530;
    objc_copyWeak(&v14, &location);
    connection4 = [(NWActivityXPC *)self connection];
    [connection4 setInterruptionHandler:v13];

    connection5 = [(NWActivityXPC *)self connection];
    [connection5 resume];

    v11 = objectanalyticsHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      connection6 = [(NWActivityXPC *)self connection];
      *buf = 136315394;
      v19 = "[NWActivityXPC start]";
      v20 = 2112;
      v21 = connection6;
      _os_log_impl(&dword_2324AD000, v11, OS_LOG_TYPE_INFO, "%s started %@", buf, 0x16u);
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __22__NWActivityXPC_start__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objectanalyticsHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[NWActivityXPC start]_block_invoke";
    v9 = 2112;
    v10 = @"com.apple.symptom_analytics";
    _os_log_impl(&dword_2324AD000, v2, OS_LOG_TYPE_ERROR, "%s invalidation handler called, potentially denied lookup for %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objectanalyticsHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (WeakRetained)
  {
    if (v5)
    {
      v6 = [WeakRetained connection];
      v7 = 136315394;
      v8 = "[NWActivityXPC start]_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_2324AD000, v4, OS_LOG_TYPE_ERROR, "%s invalidated: %@", &v7, 0x16u);
    }

    [WeakRetained cancel];
  }

  else
  {
    if (v5)
    {
      v7 = 136315138;
      v8 = "[NWActivityXPC start]_block_invoke";
      _os_log_impl(&dword_2324AD000, v4, OS_LOG_TYPE_ERROR, "%s no longer exists, returning", &v7, 0xCu);
    }
  }
}

void __22__NWActivityXPC_start__block_invoke_75(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = objectanalyticsHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[NWActivityXPC start]_block_invoke";
    _os_log_impl(&dword_2324AD000, v2, OS_LOG_TYPE_ERROR, "%s interruption handler called", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancel];
  }

  else
  {
    v5 = objectanalyticsHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[NWActivityXPC start]_block_invoke";
      _os_log_impl(&dword_2324AD000, v5, OS_LOG_TYPE_ERROR, "%s no longer exists, returning", &v6, 0xCu);
    }
  }
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objectanalyticsHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v6 = "[NWActivityXPC dealloc]";
    v7 = 2112;
    selfCopy = self;
    v9 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_2324AD000, v3, OS_LOG_TYPE_DEFAULT, "%s %@ dealloc %p", buf, 0x20u);
  }

  [(NWActivityXPC *)self cancel];
  v4.receiver = self;
  v4.super_class = NWActivityXPC;
  [(NWActivityXPC *)&v4 dealloc];
}

- (void)cancel
{
  v26 = *MEMORY[0x277D85DE8];
  pendingCompletionHandlers = [(NWActivityXPC *)self pendingCompletionHandlers];

  if (pendingCompletionHandlers)
  {
    pendingCompletionHandlers2 = [(NWActivityXPC *)self pendingCompletionHandlers];
    v5 = [pendingCompletionHandlers2 count];

    if (v5)
    {
      *&v6 = 136315394;
      v21 = v6;
      do
      {
        pendingCompletionHandlers3 = [(NWActivityXPC *)self pendingCompletionHandlers];
        firstObject = [pendingCompletionHandlers3 firstObject];

        v9 = objectanalyticsHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = MEMORY[0x2383849E0](firstObject);
          *buf = v21;
          v23 = "[NWActivityXPC cancel]";
          v24 = 2048;
          selfCopy = v10;
          _os_log_impl(&dword_2324AD000, v9, OS_LOG_TYPE_DEBUG, "%s Removing and calling pending completion handler %p", buf, 0x16u);
        }

        pendingCompletionHandlers4 = [(NWActivityXPC *)self pendingCompletionHandlers];
        v12 = MEMORY[0x2383849E0](firstObject);
        [pendingCompletionHandlers4 removeObject:v12];

        firstObject[2](firstObject, 0, 54);
        pendingCompletionHandlers5 = [(NWActivityXPC *)self pendingCompletionHandlers];
        v14 = [pendingCompletionHandlers5 count];
      }

      while (v14);
    }

    pendingCompletionHandlers6 = [(NWActivityXPC *)self pendingCompletionHandlers];
    [pendingCompletionHandlers6 removeAllObjects];

    [(NWActivityXPC *)self setPendingCompletionHandlers:0];
  }

  connection = [(NWActivityXPC *)self connection];

  if (connection)
  {
    connection2 = [(NWActivityXPC *)self connection];
    [connection2 setInvalidationHandler:0];

    connection3 = [(NWActivityXPC *)self connection];
    [connection3 setInterruptionHandler:0];

    connection4 = [(NWActivityXPC *)self connection];
    [connection4 invalidate];

    [(NWActivityXPC *)self setConnection:0];
  }

  v20 = objectanalyticsHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[NWActivityXPC cancel]";
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2324AD000, v20, OS_LOG_TYPE_INFO, "%s %@ cancelled", buf, 0x16u);
  }
}

- (void)retrieveMetricsForActivity:(unsigned __int8)activity[16] completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = objectanalyticsHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[NWActivityXPC retrieveMetricsForActivity:completion:]";
    *&buf[12] = 1040;
    *&buf[14] = 16;
    *&buf[18] = 2096;
    *&buf[20] = activity;
    _os_log_impl(&dword_2324AD000, v7, OS_LOG_TYPE_INFO, "%s Retrieving metrics for %{uuid_t}.16P", buf, 0x1Cu);
  }

  if (completionCopy)
  {
    if (uuid_is_null(activity))
    {
      v8 = objectanalyticsHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "[NWActivityXPC retrieveMetricsForActivity:completion:]";
        _os_log_impl(&dword_2324AD000, v8, OS_LOG_TYPE_ERROR, "%s UUID is required", buf, 0xCu);
      }

      completionCopy[2](completionCopy, 0, 22);
    }

    else
    {
      connection = [(NWActivityXPC *)self connection];
      v11 = connection == 0;

      if (v11)
      {
        v22 = objectanalyticsHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "[NWActivityXPC retrieveMetricsForActivity:completion:]";
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = activity;
          _os_log_impl(&dword_2324AD000, v22, OS_LOG_TYPE_ERROR, "%s %{uuid_t}.16P: connection lost, retrying", buf, 0x1Cu);
        }

        [(NWActivityXPC *)self cancel];
        [(NWActivityXPC *)self start];
        completionCopy[2](completionCopy, 0, 22);
      }

      else
      {
        connection2 = [(NWActivityXPC *)self connection];
        remoteObjectProxy = [connection2 remoteObjectProxy];

        v14 = objectanalyticsHandle();
        v15 = v14;
        if (remoteObjectProxy)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "[NWActivityXPC retrieveMetricsForActivity:completion:]";
            *&buf[12] = 1040;
            *&buf[14] = 16;
            *&buf[18] = 2096;
            *&buf[20] = activity;
            _os_log_impl(&dword_2324AD000, v15, OS_LOG_TYPE_DEBUG, "%s Querying symptoms for activity %{uuid_t}.16P", buf, 0x1Cu);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          *&buf[24] = __Block_byref_object_copy_;
          v32 = __Block_byref_object_dispose_;
          v33 = MEMORY[0x2383849E0](completionCopy);
          v16 = objectanalyticsHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = MEMORY[0x2383849E0](*(*&buf[8] + 40));
            *v27 = 136315394;
            v28 = "[NWActivityXPC retrieveMetricsForActivity:completion:]";
            v29 = 2048;
            v30 = v17;
            _os_log_impl(&dword_2324AD000, v16, OS_LOG_TYPE_DEBUG, "%s Adding pending completion handler %p", v27, 0x16u);
          }

          pendingCompletionHandlers = [(NWActivityXPC *)self pendingCompletionHandlers];
          v19 = MEMORY[0x2383849E0](*(*&buf[8] + 40));
          [pendingCompletionHandlers addObject:v19];

          objc_initWeak(v27, self);
          v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:activity];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __55__NWActivityXPC_retrieveMetricsForActivity_completion___block_invoke;
          v23[3] = &unk_278987580;
          v23[4] = self;
          v21 = v20;
          v24 = v21;
          objc_copyWeak(&v26, v27);
          v25 = buf;
          [remoteObjectProxy retrieveActivityMetrics:v21 reply:v23];
          objc_destroyWeak(&v26);

          objc_destroyWeak(v27);
          _Block_object_dispose(buf, 8);
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "[NWActivityXPC retrieveMetricsForActivity:completion:]";
            _os_log_impl(&dword_2324AD000, v15, OS_LOG_TYPE_ERROR, "%s NWActivityXPC remoteObjectProxy returned nil", buf, 0xCu);
          }

          completionCopy[2](completionCopy, 0, 45);
        }
      }
    }
  }

  else
  {
    v9 = objectanalyticsHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[NWActivityXPC retrieveMetricsForActivity:completion:]";
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = activity;
      _os_log_impl(&dword_2324AD000, v9, OS_LOG_TYPE_ERROR, "%s %{uuid_t}.16P: completion is required", buf, 0x1Cu);
    }
  }
}

void __55__NWActivityXPC_retrieveMetricsForActivity_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v8 = [*(a1 + 32) qosClass];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NWActivityXPC_retrieveMetricsForActivity_completion___block_invoke_2;
  block[3] = &unk_278987558;
  v14 = v5;
  v15 = v6;
  v16 = *(a1 + 40);
  v9 = v6;
  v10 = v5;
  objc_copyWeak(&v18, (a1 + 56));
  v17 = *(a1 + 48);
  v11 = v7;
  v12 = dispatch_block_create_with_qos_class(0, v8, 0, block);
  dispatch_async(v11, v12);

  objc_destroyWeak(&v18);
}

void __55__NWActivityXPC_retrieveMetricsForActivity_completion___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = objectanalyticsHandle();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);
      v20 = 136315650;
      v21 = "[NWActivityXPC retrieveMetricsForActivity:completion:]_block_invoke_2";
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_2324AD000, v5, OS_LOG_TYPE_ERROR, "%s Failed to retrieve metrics for %@: %@", &v20, 0x20u);
    }

    v8 = v2;
    v2 = 0;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 32) count];
      v20 = 136315394;
      v21 = "[NWActivityXPC retrieveMetricsForActivity:completion:]_block_invoke";
      v22 = 2048;
      v23 = v9;
      _os_log_impl(&dword_2324AD000, v5, OS_LOG_TYPE_DEBUG, "%s Got reply with %lu metrics", &v20, 0x16u);
    }

    v8 = objectanalyticsHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v20 = 136315394;
      v21 = "[NWActivityXPC retrieveMetricsForActivity:completion:]_block_invoke";
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_2324AD000, v8, OS_LOG_TYPE_DEBUG, "%s Reply: %@", &v20, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v12 = objectanalyticsHandle();
  v13 = v12;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = MEMORY[0x2383849E0](*(*(*(a1 + 56) + 8) + 40));
      v20 = 136315394;
      v21 = "[NWActivityXPC retrieveMetricsForActivity:completion:]_block_invoke";
      v22 = 2048;
      v23 = v14;
      _os_log_impl(&dword_2324AD000, v13, OS_LOG_TYPE_DEBUG, "%s Removing pending completion handler %p", &v20, 0x16u);
    }

    v15 = [WeakRetained pendingCompletionHandlers];
    v16 = MEMORY[0x2383849E0](*(*(*(a1 + 56) + 8) + 40));
    [v15 removeObject:v16];

    v17 = *(*(*(a1 + 56) + 8) + 40);
    v18 = *(a1 + 40);
    if (v18)
    {
      v19 = [v18 code];
    }

    else
    {
      v19 = 0;
    }

    (*(v17 + 16))(v17, v2, v19);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = "[NWActivityXPC retrieveMetricsForActivity:completion:]_block_invoke";
      _os_log_impl(&dword_2324AD000, v13, OS_LOG_TYPE_ERROR, "%s no longer exists, completion has already been cleaned up", &v20, 0xCu);
    }
  }
}

@end