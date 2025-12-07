@interface SFAnalyticsMultiSampler
- (SFAnalyticsMultiSampler)initWithName:(id)name interval:(double)interval block:(id)block clientClass:(Class)class;
- (id)sampleNow;
- (void)dealloc;
- (void)newTimer;
- (void)pauseSampling;
- (void)setSamplingInterval:(double)interval;
- (void)setupOnceTimer;
- (void)setupPeriodicTimer;
@end

@implementation SFAnalyticsMultiSampler

- (void)dealloc
{
  [(SFAnalyticsMultiSampler *)self pauseSampling];
  v3.receiver = self;
  v3.super_class = SFAnalyticsMultiSampler;
  [(SFAnalyticsMultiSampler *)&v3 dealloc];
}

- (void)pauseSampling
{
  if (self->_activeTimer)
  {
    if (self->_oncePerReport)
    {
      notify_cancel(self->_notificationToken);
      self->_notificationToken = 0;
    }

    else
    {
      dispatch_source_cancel(self->_timer);
    }

    self->_activeTimer = 0;
  }
}

- (id)sampleNow
{
  v3 = (*(self->_block + 2))();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SFAnalyticsMultiSampler_sampleNow__block_invoke;
  v5[3] = &unk_1E70D4EA0;
  v5[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

void __36__SFAnalyticsMultiSampler_sampleNow__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 48);
  v6 = a3;
  v7 = a2;
  v8 = [v5 logger];
  [v8 logMetric:v6 withName:v7 oncePerReport:*(*(a1 + 32) + 56)];
}

- (void)setSamplingInterval:(double)interval
{
  v9 = *MEMORY[0x1E69E9840];
  if (interval >= 1.0 || interval == -1.0)
  {
    self->_samplingInterval = interval;

    [(SFAnalyticsMultiSampler *)self newTimer];
  }

  else
  {
    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      intervalCopy = interval;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "SFAnalyticsSampler: interval %f is not supported", &v7, 0xCu);
    }
  }
}

- (void)setupPeriodicTimer
{
  v3 = dispatch_get_global_queue(0, 0);
  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
  timer = self->_timer;
  self->_timer = v4;

  v6 = self->_timer;
  v7 = dispatch_walltime(0, (self->_samplingInterval * 1000000000.0));
  dispatch_source_set_timer(v6, v7, (self->_samplingInterval * 1000000000.0), (self->_samplingInterval * 1000000000.0 / 50.0));
  objc_initWeak(&location, self);
  v8 = self->_timer;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SFAnalyticsMultiSampler_setupPeriodicTimer__block_invoke;
  v9[3] = &unk_1E70E0AD0;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v8, v9);
  dispatch_resume(self->_timer);
  self->_activeTimer = 1;
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __45__SFAnalyticsMultiSampler_setupPeriodicTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = (*(WeakRetained[4] + 16))();
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __45__SFAnalyticsMultiSampler_setupPeriodicTimer__block_invoke_5;
    v3[3] = &unk_1E70D4EA0;
    v3[4] = WeakRetained;
    [v2 enumerateKeysAndObjectsUsingBlock:v3];
  }

  else
  {
    v2 = secLogObjForScope("SFAnalyticsSampler");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "sampler went away before we could run its once-per-report block", buf, 2u);
    }
  }
}

void __45__SFAnalyticsMultiSampler_setupPeriodicTimer__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 48);
  v6 = a3;
  v7 = a2;
  v8 = [v5 logger];
  [v8 logMetric:v6 withName:v7 oncePerReport:*(*(a1 + 32) + 56)];
}

- (void)setupOnceTimer
{
  objc_initWeak(&location, self);
  v3 = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__SFAnalyticsMultiSampler_setupOnceTimer__block_invoke;
  v4[3] = &unk_1E70D6C00;
  objc_copyWeak(&v5, &location);
  notify_register_dispatch("com.apple.security.sfanalytics.samplers", &self->_notificationToken, v3, v4);

  self->_activeTimer = 1;
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __41__SFAnalyticsMultiSampler_setupOnceTimer__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = (*(WeakRetained[4] + 16))();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__SFAnalyticsMultiSampler_setupOnceTimer__block_invoke_2;
    v6[3] = &unk_1E70D4EA0;
    v6[4] = WeakRetained;
    [v4 enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    v5 = secLogObjForScope("SFAnalyticsSampler");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "sampler went away before we could run its once-per-report block", buf, 2u);
    }

    notify_cancel(a2);
  }
}

void __41__SFAnalyticsMultiSampler_setupOnceTimer__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 48);
  v6 = a3;
  v7 = a2;
  v8 = [v5 logger];
  [v8 logMetric:v6 withName:v7 oncePerReport:*(*(a1 + 32) + 56)];
}

- (void)newTimer
{
  if (self->_activeTimer)
  {
    [(SFAnalyticsMultiSampler *)self pauseSampling];
  }

  samplingInterval = self->_samplingInterval;
  self->_oncePerReport = samplingInterval == -1.0;
  if (samplingInterval == -1.0)
  {

    [(SFAnalyticsMultiSampler *)self setupOnceTimer];
  }

  else
  {

    [(SFAnalyticsMultiSampler *)self setupPeriodicTimer];
  }
}

- (SFAnalyticsMultiSampler)initWithName:(id)name interval:(double)interval block:(id)block clientClass:(Class)class
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = SFAnalyticsMultiSampler;
  v13 = [(SFAnalyticsMultiSampler *)&v20 init];
  if (!v13)
  {
    goto LABEL_16;
  }

  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v15 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      classCopy = class;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "SFAnalyticsSampler created without valid client class (%@)", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (nameCopy)
  {
    if (interval < 1.0)
    {
      if (!blockCopy || interval != -1.0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    if (blockCopy)
    {
LABEL_15:
      v13->_clientClass = class;
      v17 = _Block_copy(blockCopy);
      block = v13->_block;
      v13->_block = v17;

      objc_storeStrong(&v13->_name, name);
      v13->_samplingInterval = interval;
      [(SFAnalyticsMultiSampler *)v13 newTimer];
LABEL_16:
      v16 = v13;
      goto LABEL_17;
    }
  }

LABEL_7:
  v14 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "SFAnalyticsSampler created without proper data", buf, 2u);
  }

LABEL_13:
  v16 = 0;
LABEL_17:

  return v16;
}

@end