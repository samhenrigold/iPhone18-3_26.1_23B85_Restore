@interface BCStackManager
- (BCStackManager)initWithHighPriorityTargetQueue:(id)queue backgroundTargetQueue:(id)targetQueue renderer:(id)renderer;
- (void)_renderCompleteSource:(id)source to:(id)to forRequest:(id)request;
- (void)renderStackFromSource:(id)source forRequest:(id)request;
@end

@implementation BCStackManager

- (BCStackManager)initWithHighPriorityTargetQueue:(id)queue backgroundTargetQueue:(id)targetQueue renderer:(id)renderer
{
  queueCopy = queue;
  targetQueueCopy = targetQueue;
  rendererCopy = renderer;
  v18.receiver = self;
  v18.super_class = BCStackManager;
  v11 = [(BCStackManager *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_accessLock._os_unfair_lock_opaque = 0;
    v13 = +[NSMutableArray array];
    imagesProcessing = v12->_imagesProcessing;
    v12->_imagesProcessing = v13;

    objc_storeStrong(&v12->_renderer, renderer);
    v15 = [BICWorkQueue workQueueWithHighPriorityTargetQueue:queueCopy backgroundTargetQueue:targetQueueCopy numConcurrentWorkItems:6];
    workQueue = v12->_workQueue;
    v12->_workQueue = v15;

    [(BICWorkQueue *)v12->_workQueue setIdentifier:@"StackManager"];
    [(BICWorkQueue *)v12->_workQueue setManualCompletion:1];
    [(BICWorkQueue *)v12->_workQueue setWorkItemTimeout:10.0];
  }

  return v12;
}

- (void)renderStackFromSource:(id)source forRequest:(id)request
{
  sourceCopy = source;
  requestCopy = request;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v27 = sub_4F1C;
  v28 = &unk_2C7BC0;
  v31 = &v32;
  selfCopy = self;
  v8 = sourceCopy;
  v30 = v8;
  v9 = v26;
  os_unfair_lock_lock(&self->_accessLock);
  v27(v9);
  os_unfair_lock_unlock(&self->_accessLock);

  v11 = *(v33 + 24);
  if (v11 == 1)
  {
    v12 = BCImageCacheLog(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v8;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "BCStackManager: Already Rendering stack for: %@", buf, 0xCu);
    }

    v11 = *(v33 + 24);
  }

  if (!v11)
  {
    v13 = BCImageCacheLog(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v8;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "BCStackManager: Rendering stack for: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    [BICCacheStats incrementCounter:kBICCacheStatsCounterStacks[0]];
    [BICCacheStats logOperation:BICCacheStatsOperationStackCreationQueueStart[0] forRequest:requestCopy];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v22 = sub_4F7C;
    v23 = &unk_2C7BE8;
    selfCopy2 = self;
    v14 = v8;
    v25 = v14;
    v15 = v21;
    os_unfair_lock_lock(&self->_accessLock);
    v22(v15);
    os_unfair_lock_unlock(&self->_accessLock);

    workQueue = [(BCStackManager *)self workQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_4FD0;
    v17[3] = &unk_2C7C88;
    objc_copyWeak(&v20, buf);
    v18 = requestCopy;
    v19 = v14;
    [workQueue addWorkItemWithPriority:v18 description:@"StackManager render stack" block:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v32, 8);
}

- (void)_renderCompleteSource:(id)source to:(id)to forRequest:(id)request
{
  sourceCopy = source;
  v9 = BICCacheStatsOperationStackCreationEnd[0];
  requestCopy = request;
  toCopy = to;
  v12 = BCImageCacheLog([BICCacheStats logOperation:v9 forRequest:requestCopy]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = sourceCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "BCStackManager: Completed Rendering stack for: %@", &v14, 0xCu);
  }

  delegate = [(BCStackManager *)self delegate];
  [delegate stackRenderingResultSrc:sourceCopy result:toCopy forRequest:requestCopy];
}

@end