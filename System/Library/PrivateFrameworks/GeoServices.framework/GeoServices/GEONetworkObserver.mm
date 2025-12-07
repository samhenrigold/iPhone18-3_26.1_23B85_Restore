@interface GEONetworkObserver
+ (id)sharedNetworkObserver;
- (BOOL)isNetworkReachable;
- (GEONetworkObserver)init;
- (void)_initializeNetworkMonitor;
- (void)initializeIfNecessary;
@end

@implementation GEONetworkObserver

- (GEONetworkObserver)init
{
  v6.receiver = self;
  v6.super_class = GEONetworkObserver;
  v2 = [(GEONetworkObserver *)&v6 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v3;
  }

  return v2;
}

- (void)initializeIfNecessary
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__GEONetworkObserver_initializeIfNecessary__block_invoke;
  block[3] = &unk_1E7071900;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

- (void)_initializeNetworkMonitor
{
  objc_initWeak(&location, self);
  v3 = _GEOGetURLWithSource(0, 0, 1, 0);
  if ([v3 length])
  {
    url = nw_endpoint_create_url([v3 UTF8String]);
    if (url)
    {
      evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
      evaluator = self->_evaluator;
      self->_evaluator = evaluator_for_endpoint;

      if (self->_evaluator)
      {
        nw_path_evaluator_set_queue();
        v8 = MEMORY[0x1E69E9820];
        objc_copyWeak(&v9, &location);
        nw_path_evaluator_set_update_handler();
        v7 = nw_path_evaluator_copy_path();
        [(GEONetworkObserver *)self _networkPathUpdated:v7, v8, 3221225472, __47__GEONetworkObserver__initializeNetworkMonitor__block_invoke, &unk_1E7059A70];
        nw_path_evaluator_start();
        self->_initialized = 1;

        objc_destroyWeak(&v9);
      }
    }
  }

  objc_destroyWeak(&location);
}

_BYTE *__40__GEONetworkObserver_isNetworkReachable__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[32] & 1) == 0)
  {
    [result _initializeNetworkMonitor];
    result = *(a1 + 32);
  }

  *(*(*(a1 + 40) + 8) + 24) = result[33];
  return result;
}

void __43__GEONetworkObserver_sharedNetworkObserver__block_invoke()
{
  v0 = objc_alloc_init(GEONetworkObserver);
  v1 = sharedNetworkObserver_singleton;
  sharedNetworkObserver_singleton = v0;
}

_BYTE *__43__GEONetworkObserver_initializeIfNecessary__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[32] & 1) == 0)
  {
    return [result _initializeNetworkMonitor];
  }

  return result;
}

+ (id)sharedNetworkObserver
{
  if (sharedNetworkObserver_once != -1)
  {
    dispatch_once(&sharedNetworkObserver_once, &__block_literal_global_77242);
  }

  v3 = sharedNetworkObserver_singleton;

  return v3;
}

- (BOOL)isNetworkReachable
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = selfCopy->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__GEONetworkObserver_isNetworkReachable__block_invoke;
  v5[3] = &unk_1E7071448;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

@end