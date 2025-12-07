@interface AnalyticsConfigurationObserver
- (AnalyticsConfigurationObserver)init;
- (AnalyticsConfigurationObserverDelegate)delegate;
- (BOOL)startObservingConfigurationType:(id)type;
- (BOOL)stopObservingConfigurationType:(id)type;
- (id).cxx_construct;
- (void)dealloc;
- (void)setConfigurationObserverDelegate:(id)delegate queue:(id)queue;
@end

@implementation AnalyticsConfigurationObserver

- (AnalyticsConfigurationObserver)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = AnalyticsConfigurationObserver;
  v2 = [(AnalyticsConfigurationObserver *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.CoreAnalytics.ConfigurationObserver", MEMORY[0x1E69E96A8]);
    queue = v2->_queue;
    v2->_queue = v3;

    [(AnalyticsConfigurationObserver *)v2 setDelegate:0];
    [(AnalyticsConfigurationObserver *)v2 setDelegateQueue:0];
  }

  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  cntrl = self->observer.__cntrl_;
  self->observer.__ptr_ = 0;
  self->observer.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  v4.receiver = self;
  v4.super_class = AnalyticsConfigurationObserver;
  [(AnalyticsConfigurationObserver *)&v4 dealloc];
}

- (void)setConfigurationObserverDelegate:(id)delegate queue:(id)queue
{
  v14 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  queueCopy = queue;
  CASPIEnter();
  queue = [(AnalyticsConfigurationObserver *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__AnalyticsConfigurationObserver_setConfigurationObserverDelegate_queue___block_invoke;
  v11[3] = &unk_1E7A2A538;
  v11[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  dispatch_barrier_async(queue, v11);
}

uint64_t __73__AnalyticsConfigurationObserver_setConfigurationObserverDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (BOOL)startObservingConfigurationType:(id)type
{
  v10 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  CASPIEnter();
  queue = [(AnalyticsConfigurationObserver *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AnalyticsConfigurationObserver_startObservingConfigurationType___block_invoke;
  block[3] = &unk_1E7A2A658;
  block[4] = self;
  v9 = typeCopy;
  v6 = typeCopy;
  dispatch_barrier_async(queue, block);

  return 1;
}

void __66__AnalyticsConfigurationObserver_startObservingConfigurationType___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  [*(a1 + 40) UTF8String];
  [*(a1 + 32) delegate];
  objc_claimAutoreleasedReturnValue();
  [*(a1 + 32) delegateQueue];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

- (BOOL)stopObservingConfigurationType:(id)type
{
  v6[5] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  queue = [(AnalyticsConfigurationObserver *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__AnalyticsConfigurationObserver_stopObservingConfigurationType___block_invoke;
  v6[3] = &unk_1E7A2A560;
  v6[4] = self;
  dispatch_barrier_async(queue, v6);

  return 1;
}

void __65__AnalyticsConfigurationObserver_stopObservingConfigurationType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

- (AnalyticsConfigurationObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end