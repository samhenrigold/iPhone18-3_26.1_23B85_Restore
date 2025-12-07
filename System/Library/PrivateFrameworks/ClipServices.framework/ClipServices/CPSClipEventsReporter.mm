@interface CPSClipEventsReporter
+ (id)reporter;
- (CPSClipEventsReporter)init;
- (void)logClipLaunchEventForSession:(id)session;
@end

@implementation CPSClipEventsReporter

+ (id)reporter
{
  if (reporter_onceToken != -1)
  {
    +[CPSClipEventsReporter reporter];
  }

  v3 = reporter_reporter;

  return v3;
}

uint64_t __33__CPSClipEventsReporter_reporter__block_invoke()
{
  reporter_reporter = objc_alloc_init(CPSClipEventsReporter);

  return MEMORY[0x2821F96F8]();
}

- (CPSClipEventsReporter)init
{
  v16.receiver = self;
  v16.super_class = CPSClipEventsReporter;
  v2 = [(CPSClipEventsReporter *)&v16 init];
  if (v2)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v3 = getBMStreamsClass_softClass;
    v21 = getBMStreamsClass_softClass;
    if (!getBMStreamsClass_softClass)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __getBMStreamsClass_block_invoke;
      v17[3] = &unk_278DCDC00;
      v17[4] = &v18;
      __getBMStreamsClass_block_invoke(v17);
      v3 = v19[3];
    }

    v4 = v3;
    _Block_object_dispose(&v18, 8);
    if (v3)
    {
      appClipLaunch = [v3 appClipLaunch];
      source = [appClipLaunch source];
      source = v2->_source;
      v2->_source = source;
    }

    else
    {
      v10 = CPS_LOG_CHANNEL_PREFIXClipServices(v5, v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CPSClipEventsReporter *)v10 init];
      }
    }

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v12 = dispatch_queue_create("com.apple.ClipServices.clipserviced.EventReporting", v11);
    logQueue = v2->_logQueue;
    v2->_logQueue = v12;

    v14 = v2;
  }

  return v2;
}

- (void)logClipLaunchEventForSession:(id)session
{
  sessionCopy = session;
  logQueue = self->_logQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__CPSClipEventsReporter_logClipLaunchEventForSession___block_invoke;
  v7[3] = &unk_278DCDE58;
  v8 = sessionCopy;
  selfCopy = self;
  v6 = sessionCopy;
  dispatch_async(logQueue, v7);
}

void __54__CPSClipEventsReporter_logClipLaunchEventForSession___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v32 = *MEMORY[0x277D85DE8];
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v2;
    v5 = *(v2 + 32);
    v6 = v3;
    v7 = [v5 metadata];
    v8 = [v7 clipURLHash];
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_2436ED000, v6, OS_LOG_TYPE_DEFAULT, "Logging Biome Event with session: %@ for clip with hash: %@", buf, 0x16u);

    v2 = v4;
  }

  v23 = v2;
  v9 = (v2 + 32);
  v10 = [*(v2 + 32) metadata];
  v24 = [*v9 url];
  v11 = [*v9 configuration];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v12 = getBMAppClipLaunchEventClass_softClass;
  v28 = getBMAppClipLaunchEventClass_softClass;
  if (!getBMAppClipLaunchEventClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getBMAppClipLaunchEventClass_block_invoke;
    v30 = &unk_278DCDC00;
    v31 = &v25;
    __getBMAppClipLaunchEventClass_block_invoke(buf);
    v12 = v26[3];
  }

  v13 = v12;
  _Block_object_dispose(&v25, 8);
  v14 = [v12 alloc];
  v15 = [v10 clipURLHash];
  v16 = [v10 clipBundleID];
  v17 = [v10 fullAppBundleID];
  v18 = [v10 webClipID];
  v19 = [v11 analyticsLaunchReason];
  if ([v11 analyticsShouldIncludeReferrerURL])
  {
    v20 = v24;
  }

  else
  {
    v20 = 0;
  }

  v21 = [v11 analyticsReferrerBundleID];
  v22 = [v14 initWithURLHash:v15 clipBundleID:v16 appBundleID:v17 webAppBundleID:v18 launchReason:v19 fullURL:v24 referrerURL:v20 referrerBundleID:v21];

  [*(*(v23 + 40) + 8) sendEvent:v22];
}

@end