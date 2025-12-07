@interface BCCacheTransformController
- (BCCacheTransformController)initWithHighPriorityTargetQueue:(id)queue backgroundTargetQueue:(id)targetQueue transformer:(id)transformer;
- (void)_transformCompleteSource:(id)source to:(id)to forRequest:(id)request;
- (void)transformSource:(id)source to:(id)to forRequest:(id)request;
@end

@implementation BCCacheTransformController

- (BCCacheTransformController)initWithHighPriorityTargetQueue:(id)queue backgroundTargetQueue:(id)targetQueue transformer:(id)transformer
{
  queueCopy = queue;
  targetQueueCopy = targetQueue;
  transformerCopy = transformer;
  v18.receiver = self;
  v18.super_class = BCCacheTransformController;
  v11 = [(BCCacheTransformController *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_accessLock._os_unfair_lock_opaque = 0;
    v13 = +[NSMutableArray array];
    imagesProcessing = v12->_imagesProcessing;
    v12->_imagesProcessing = v13;

    objc_storeStrong(&v12->_transformer, transformer);
    v15 = [BICWorkQueue workQueueWithHighPriorityTargetQueue:queueCopy backgroundTargetQueue:targetQueueCopy numConcurrentWorkItems:1];
    workQueue = v12->_workQueue;
    v12->_workQueue = v15;

    [(BICWorkQueue *)v12->_workQueue setIdentifier:@"TransformController"];
  }

  return v12;
}

- (void)transformSource:(id)source to:(id)to forRequest:(id)request
{
  sourceCopy = source;
  toCopy = to;
  requestCopy = request;
  v11 = objc_alloc_init(BICDescribedImagePair);
  [(BICDescribedImagePair *)v11 setSourceImage:sourceCopy];
  [(BICDescribedImagePair *)v11 setDestinationImage:toCopy];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v33 = sub_1400A4;
  v34 = &unk_2C7BC0;
  v37 = &v38;
  selfCopy = self;
  v12 = v11;
  v36 = v12;
  v13 = v32;
  os_unfair_lock_lock(&self->_accessLock);
  v33(v13);
  os_unfair_lock_unlock(&self->_accessLock);

  if (v39[3])
  {
    v15 = BCImageCacheLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v43 = toCopy;
      v44 = 2112;
      v45 = requestCopy;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "BCCacheTransformController: Transform is already in progress for: %@ for request: %@", buf, 0x16u);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    processingOptions = [toCopy processingOptions];
    v17 = kBICCacheStatsCounterTransformSpine;
    if (!processingOptions)
    {
      v17 = kBICCacheStatsCounterTransformResize;
    }

    [BICCacheStats incrementCounter:*v17];
    [BICCacheStats logOperation:BICCacheStatsOperationTransformQueueStart[0] forRequest:requestCopy];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v28 = sub_140104;
    v29 = &unk_2C7BE8;
    selfCopy2 = self;
    v18 = v12;
    v31 = v18;
    v19 = v27;
    os_unfair_lock_lock(&self->_accessLock);
    v28(v19);
    os_unfair_lock_unlock(&self->_accessLock);

    workQueue = [(BCCacheTransformController *)self workQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_140158;
    v21[3] = &unk_2CDED8;
    v22 = requestCopy;
    objc_copyWeak(&v26, buf);
    v23 = sourceCopy;
    v24 = toCopy;
    v25 = v18;
    [workQueue addWorkItemWithPriority:v22 description:@"Transformer transform" block:v21];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v38, 8);
}

- (void)_transformCompleteSource:(id)source to:(id)to forRequest:(id)request
{
  toCopy = to;
  requestCopy = request;
  v9 = BICCacheStatsOperationTransformEnd[0];
  sourceCopy = source;
  [BICCacheStats logOperation:v9 forRequest:requestCopy];
  if ([toCopy quality] == 101)
  {
    [BICCacheStats logOperation:BICCacheStatsOperationTransformedFromSmaller[0] forRequest:requestCopy];
  }

  delegate = [(BCCacheTransformController *)self delegate];
  [delegate transformResultSrc:sourceCopy result:toCopy forRequest:requestCopy];
}

@end