@interface AnalyticsEventObserver
- (AnalyticsEventObserver)init;
- (AnalyticsEventObserverDelegate)delegate;
- (BOOL)startObservingEventList:(id)list withErrorHandler:(id)handler;
- (BOOL)stopObserving;
- (id).cxx_construct;
- (uint64_t)startObservingEventList:withErrorHandler:;
- (void)dealloc;
- (void)setEventObserverDelegate:(id)delegate queue:(id)queue;
- (void)startObservingEventList:withErrorHandler:;
@end

@implementation AnalyticsEventObserver

- (AnalyticsEventObserver)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = AnalyticsEventObserver;
  v2 = [(AnalyticsEventObserver *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.CoreAnalytics.EventObserver", MEMORY[0x1E69E96A8]);
    queue = v2->_queue;
    v2->_queue = v3;

    [(AnalyticsEventObserver *)v2 setDelegate:0];
    [(AnalyticsEventObserver *)v2 setDelegateQueue:0];
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
  v4.super_class = AnalyticsEventObserver;
  [(AnalyticsEventObserver *)&v4 dealloc];
}

- (void)setEventObserverDelegate:(id)delegate queue:(id)queue
{
  v14 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  queueCopy = queue;
  CASPIEnter();
  queue = [(AnalyticsEventObserver *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__AnalyticsEventObserver_setEventObserverDelegate_queue___block_invoke;
  v11[3] = &unk_1E7A2A538;
  v11[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  dispatch_barrier_async(queue, v11);
}

uint64_t __57__AnalyticsEventObserver_setEventObserverDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (BOOL)startObservingEventList:(id)list withErrorHandler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  listCopy = list;
  handlerCopy = handler;
  CASPIEnter();
  v37 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(&v37);
  v36 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::array::create(&v36);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = listCopy;
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (v9)
  {
    v10 = *v43;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v42 + 1) + 8 * i);
        v13 = v12;
        applesauce::xpc::object::object(&v38, [v12 UTF8String]);
        v14 = v38;
        v15 = v36;
        xpc_array_append_value(v15, v14);

        v16 = v38;
        v38 = 0;
      }

      v9 = [v8 countByEnumeratingWithState:&v42 objects:v41 count:16];
    }

    while (v9);
  }

  applesauce::xpc::object::object(&v34, &v36);
  v38 = &v37;
  v39 = "events";
  applesauce::xpc::dict::object_proxy::operator=(&v38, &v34, &v35);
  v17 = v35;
  v35 = 0;

  v18 = v34;
  v34 = 0;

  v20 = CoreAnalytics::Client::get(v19);
  if (handlerCopy)
  {
    v21 = MEMORY[0x1B2704490](handlerCopy);
    v38 = &unk_1F241FC98;
    v39 = v21;
    v40 = &v38;
    CoreAnalytics::Client::registerErrorHandler(v20, &v38);
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&v38);
  }

  v33 = 0xAAAAAAAAAAAAAAAALL;
  std::string::basic_string[abi:ne200100]<0>(__p, "create-event-observer");
  applesauce::xpc::object::object(&v30, &v37);
  CoreAnalytics::Client::sendManagementCommandWithReply(v20, __p, &v30, &v33);
  v22 = v30;
  v30 = 0;

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v33) == MEMORY[0x1E69E9E80])
  {
    v38 = &v33;
    v39 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v38))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "create-event-observer failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  queue = [(AnalyticsEventObserver *)self queue];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __67__AnalyticsEventObserver_startObservingEventList_withErrorHandler___block_invoke;
  v29[3] = &unk_1E7A2A560;
  v29[4] = self;
  dispatch_barrier_async(queue, v29);

  v24 = v33;
  v33 = 0;

  v25 = v36;
  v36 = 0;

  v26 = v37;
  v37 = 0;

  return 1;
}

void __67__AnalyticsEventObserver_startObservingEventList_withErrorHandler___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  [*(a1 + 32) delegate];
  objc_claimAutoreleasedReturnValue();
  [*v1 delegateQueue];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

- (BOOL)stopObserving
{
  v5[5] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  queue = [(AnalyticsEventObserver *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AnalyticsEventObserver_stopObserving__block_invoke;
  v5[3] = &unk_1E7A2A560;
  v5[4] = self;
  dispatch_barrier_async(queue, v5);

  return 1;
}

void __39__AnalyticsEventObserver_stopObserving__block_invoke(uint64_t a1)
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

- (AnalyticsEventObserverDelegate)delegate
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

- (void)startObservingEventList:withErrorHandler:
{
  *(&v7 + 1) = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    *&v7 = *(a2 + 16);
  }

  v3 = *(self + 8);
  if ((SBYTE7(v7) & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v4, *__p, v7}];
  (*(v3 + 16))(v3, v5);

  if (SBYTE7(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

- (uint64_t)startObservingEventList:withErrorHandler:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end