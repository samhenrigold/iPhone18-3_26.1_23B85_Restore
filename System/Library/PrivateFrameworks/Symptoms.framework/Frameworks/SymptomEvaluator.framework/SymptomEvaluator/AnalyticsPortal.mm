@interface AnalyticsPortal
+ (id)sharedInstance;
+ (void)clientTransactionsRelease;
+ (void)setListeningPort:(id)port queue:(id)queue noiEngine:(id)engine isHelper:(BOOL)helper;
+ (void)shutdown;
- (void)clientTransactionsRelease;
- (void)setListeningPort:(id)port queue:(id)queue noiEngine:(id)engine isHelper:(BOOL)helper;
- (void)shutdown;
@end

@implementation AnalyticsPortal

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__AnalyticsPortal_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_2 != -1)
  {
    dispatch_once(&sharedInstance_pred_2, block);
  }

  v2 = sharedInstance_sharedInstance_2;

  return v2;
}

uint64_t __33__AnalyticsPortal_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)setListeningPort:(id)port queue:(id)queue noiEngine:(id)engine isHelper:(BOOL)helper
{
  helperCopy = helper;
  v33 = *MEMORY[0x277D85DE8];
  portCopy = port;
  queueCopy = queue;
  engineCopy = engine;
  v13 = analyticsLogHandle;
  v14 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    v29 = 138412290;
    v30 = portCopy;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "AnalyticsPortal started for service %@", &v29, 0xCu);
  }

  v15 = measureLaunchXPCHandle(v14);
  if (os_signpost_enabled(v15))
  {
    label = dispatch_queue_get_label(queueCopy);
    v29 = 138412546;
    v30 = portCopy;
    v31 = 2080;
    v32 = label;
    _os_signpost_emit_with_name_impl(&dword_23255B000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AnalyticsPortalInitializeXPC", "Immediately after called into setListeningPort:%@ queue:%s", &v29, 0x16u);
  }

  markMeasurement(1, 3);
  if (self->listener)
  {
    v17 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      listener = self->listener;
      v29 = 134217984;
      v30 = listener;
      v19 = "AnalyticsPortal: already initialized: %p";
      v20 = v17;
      v21 = 12;
LABEL_17:
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, v19, &v29, v21);
    }
  }

  else
  {
    v22 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:portCopy];
    v23 = self->listener;
    self->listener = v22;

    if (queueCopy)
    {
      [(NSXPCListener *)self->listener _setQueue:queueCopy];
    }

    else
    {
      v24 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "AnalyticsPortal: XPC listener initialized with nil queue", &v29, 2u);
      }
    }

    v25 = [[ServiceImpl alloc] initWithQueue:queueCopy noiEngine:engineCopy isHelper:helperCopy];
    si = self->si;
    self->si = v25;

    v27 = self->listener;
    if (v27 && self->si)
    {
      [(NSXPCListener *)v27 setDelegate:?];
      [(NSXPCListener *)self->listener resume];
    }

    else
    {
      self->listener = 0;

      v28 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v29) = 0;
        v19 = "AnalyticsPortal: failing to create the analytics channel";
        v20 = v28;
        v21 = 2;
        goto LABEL_17;
      }
    }
  }
}

- (void)clientTransactionsRelease
{
  listener = self->listener;
  if (listener)
  {
    [(NSXPCListener *)listener invalidate];
    si = self->si;

    [(ServiceImpl *)si clientTransactionsRelease];
  }
}

- (void)shutdown
{
  if (self->listener)
  {
    [(ServiceImpl *)self->si shutdown];
    si = self->si;
    self->si = 0;

    listener = self->listener;
    self->listener = 0;
  }
}

+ (void)setListeningPort:(id)port queue:(id)queue noiEngine:(id)engine isHelper:(BOOL)helper
{
  helperCopy = helper;
  engineCopy = engine;
  queueCopy = queue;
  portCopy = port;
  v12 = +[AnalyticsPortal sharedInstance];
  [v12 setListeningPort:portCopy queue:queueCopy noiEngine:engineCopy isHelper:helperCopy];
}

+ (void)clientTransactionsRelease
{
  v2 = +[AnalyticsPortal sharedInstance];
  [v2 clientTransactionsRelease];
}

+ (void)shutdown
{
  v2 = +[AnalyticsPortal sharedInstance];
  [v2 shutdown];
}

@end