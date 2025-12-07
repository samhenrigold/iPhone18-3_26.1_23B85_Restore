@interface KNAnimatedTextureManager
- (BOOL)p_stopPreCachingIfStarted;
- (KNAnimatedTextureManager)initWithSession:(id)session;
- (id)ASVForSlideNode:(id)node;
- (id)description;
- (id)p_setupGenerateTexturesOperationOnSlideNode:(id)node;
- (id)p_setupPrepareAnimationsOperationOnSlideNode:(id)node;
- (id)p_setupRenderTexturesOperationOnSlideNode:(id)node;
- (id)p_slideNodesToCacheAroundCurrentSlideNode:(id)node shouldIncludeExtraSlideAtEnd:(BOOL)end;
- (void)addTextureToRasterizationQueue:(id)queue asv:(id)asv;
- (void)dealloc;
- (void)evictCaches;
- (void)p_addSlideNodeToMemorySet:(id)set;
- (void)p_cancelAllOperations;
- (void)p_didReceiveMemoryWarning;
- (void)p_processCurrentSlideNode;
- (void)p_processSlideNode:(id)node isHighPriority:(BOOL)priority;
- (void)p_rasterizeTexture:(id)texture;
- (void)p_removeTextureCacheForASV:(id)v;
- (void)p_scheduleSerializeExtraSlideNodes;
- (void)p_serializeExtraSlideNodes;
- (void)p_serializeTexturesForSlideNode:(id)node;
- (void)p_waitUntilAllOperationsAreFinished;
- (void)setCurrentSlideNode:(id)node;
- (void)startPreCaching;
- (void)tearDown;
@end

@implementation KNAnimatedTextureManager

- (KNAnimatedTextureManager)initWithSession:(id)session
{
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = KNAnimatedTextureManager;
  v5 = [(KNAnimatedTextureManager *)&v22 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, sessionCopy);
    v7 = objc_opt_new();
    preCacheBackgroundQueue = v6->_preCacheBackgroundQueue;
    v6->_preCacheBackgroundQueue = v7;

    v9 = objc_opt_new();
    rasterizeTextureQueue = v6->_rasterizeTextureQueue;
    v6->_rasterizeTextureQueue = v9;

    [(NSOperationQueue *)v6->_preCacheBackgroundQueue setQualityOfService:17];
    [(NSOperationQueue *)v6->_preCacheBackgroundQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v6->_rasterizeTextureQueue setQualityOfService:17];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    -[NSOperationQueue setMaxConcurrentOperationCount:](v6->_rasterizeTextureQueue, "setMaxConcurrentOperationCount:", [processInfo processorCount]);

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    repToTextureArrayMap = v6->_repToTextureArrayMap;
    v6->_repToTextureArrayMap = strongToStrongObjectsMapTable;

    v14 = [objc_alloc(MEMORY[0x277D81218]) initWithMaxSize:1];
    recentlyUsedBackgroundCache = v6->_recentlyUsedBackgroundCache;
    v6->_recentlyUsedBackgroundCache = v14;

    v16 = TSULogCreateCategory();
    signpostLog = v6->_signpostLog;
    v6->_signpostLog = v16;

    v6->_preCachingStateLock._os_unfair_lock_opaque = 0;
    v6->_textureCacheLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = *MEMORY[0x277D76670];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter addObserver:v6 selector:sel_p_didReceiveMemoryWarning_ name:v19 object:mEMORY[0x277D75128]];
  }

  return v6;
}

- (void)dealloc
{
  if (self->_slideNodeToASVMap)
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedTextureManager dealloc]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedTextureManager.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:170 isFatal:0 description:"tear down not performed"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v6.receiver = self;
  v6.super_class = KNAnimatedTextureManager;
  [(KNAnimatedTextureManager *)&v6 dealloc];
}

- (void)tearDown
{
  v20 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D76670];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [defaultCenter removeObserver:self name:v4 object:mEMORY[0x277D75128]];

  os_unfair_lock_lock(&self->_preCachingStateLock);
  v6 = [(NSMapTable *)self->_slideNodeToASVMap copy];
  slideNodeToASVMap = self->_slideNodeToASVMap;
  self->_slideNodeToASVMap = 0;

  slideNodesInMemorySet = self->_slideNodesInMemorySet;
  self->_slideNodesInMemorySet = 0;

  preCachedSlideNodes = self->_preCachedSlideNodes;
  self->_preCachedSlideNodes = 0;

  os_unfair_lock_unlock(&self->_preCachingStateLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [v6 objectEnumerator];
  v11 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v15 + 1) + 8 * v14++) tearDown];
      }

      while (v12 != v14);
      v12 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  os_unfair_lock_lock(&self->_textureCacheLock);
  [(NSMapTable *)self->_repToTextureArrayMap removeAllObjects];
  [(TSULRUCache *)self->_recentlyUsedBackgroundCache removeAllObjects];
  os_unfair_lock_unlock(&self->_textureCacheLock);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  preCacheBackgroundQueue = self->_preCacheBackgroundQueue;
  operations = [(NSOperationQueue *)preCacheBackgroundQueue operations];
  rasterizeTextureQueue = self->_rasterizeTextureQueue;
  operations2 = [(NSOperationQueue *)rasterizeTextureQueue operations];
  v8 = [v3 stringWithFormat:@"preCache queue: %@ operations: %@\nrasterization queue: %@ operations: %@\nslideNodes: %@\nslideNodeToASVMap: %@", preCacheBackgroundQueue, operations, rasterizeTextureQueue, operations2, self->_slideNodesInMemorySet, self->_slideNodeToASVMap];

  return v8;
}

- (void)setCurrentSlideNode:(id)node
{
  nodeCopy = node;
  if (KNAnimatedTextureManagerCat_init_token != -1)
  {
    sub_275E5B624();
  }

  os_unfair_lock_lock(&self->_preCachingStateLock);
  if (self->_currentSlideNode == nodeCopy)
  {
    os_unfair_lock_unlock(&self->_preCachingStateLock);
  }

  else
  {
    objc_storeStrong(&self->_currentSlideNode, node);
    currentSlideNode = self->_currentSlideNode;
    isPreCachingActive = self->_isPreCachingActive;
    os_unfair_lock_unlock(&self->_preCachingStateLock);
    if (currentSlideNode)
    {
      if (isPreCachingActive)
      {
        [(KNAnimatedTextureManager *)self p_processCurrentSlideNode];
        [(KNAnimatedTextureManager *)self p_scheduleSerializeExtraSlideNodes];
      }

      else
      {
        [(KNAnimatedTextureManager *)self p_addSlideNodeToMemorySet:nodeCopy];
      }
    }
  }
}

- (id)ASVForSlideNode:(id)node
{
  nodeCopy = node;
  os_unfair_lock_lock(&self->_preCachingStateLock);
  slideNodeToASVMap = self->_slideNodeToASVMap;
  if (!slideNodeToASVMap)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v7 = self->_slideNodeToASVMap;
    self->_slideNodeToASVMap = strongToStrongObjectsMapTable;

    slideNodeToASVMap = self->_slideNodeToASVMap;
  }

  v8 = [(NSMapTable *)slideNodeToASVMap objectForKey:nodeCopy];
  if (!v8)
  {
    v9 = [KNAnimatedSlideView alloc];
    WeakRetained = objc_loadWeakRetained(&self->_session);
    v8 = [(KNAnimatedSlideView *)v9 initForSlideNode:nodeCopy session:WeakRetained];

    [(NSMapTable *)self->_slideNodeToASVMap setObject:v8 forKey:nodeCopy];
  }

  os_unfair_lock_unlock(&self->_preCachingStateLock);

  return v8;
}

- (void)p_addSlideNodeToMemorySet:(id)set
{
  setCopy = set;
  os_unfair_lock_lock(&self->_preCachingStateLock);
  slideNodesInMemorySet = self->_slideNodesInMemorySet;
  if (!slideNodesInMemorySet)
  {
    v5 = objc_opt_new();
    v6 = self->_slideNodesInMemorySet;
    self->_slideNodesInMemorySet = v5;

    slideNodesInMemorySet = self->_slideNodesInMemorySet;
  }

  [(NSMutableSet *)slideNodesInMemorySet addObject:setCopy];
  os_unfair_lock_unlock(&self->_preCachingStateLock);
}

- (id)p_setupGenerateTexturesOperationOnSlideNode:(id)node
{
  nodeCopy = node;
  v5 = [[KNSlideNodeBlockOperation alloc] initWithSlideNode:nodeCopy type:0];
  objc_initWeak(&location, v5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_275DDF518;
  v9[3] = &unk_27A699078;
  v9[4] = self;
  v6 = nodeCopy;
  v10 = v6;
  objc_copyWeak(&v11, &location);
  [(NSBlockOperation *)v5 addExecutionBlock:v9];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"texture generation slideNode:%p", v6];
  [(KNSlideNodeBlockOperation *)v5 setName:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

- (id)p_setupRenderTexturesOperationOnSlideNode:(id)node
{
  nodeCopy = node;
  v5 = [[KNSlideNodeBlockOperation alloc] initWithSlideNode:nodeCopy type:1];
  objc_initWeak(&location, v5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_275DDFA20;
  v9[3] = &unk_27A699078;
  v9[4] = self;
  v6 = nodeCopy;
  v10 = v6;
  objc_copyWeak(&v11, &location);
  [(NSBlockOperation *)v5 addExecutionBlock:v9];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"rasterization slideNode:%p", v6];
  [(KNSlideNodeBlockOperation *)v5 setName:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

- (id)p_setupPrepareAnimationsOperationOnSlideNode:(id)node
{
  nodeCopy = node;
  v5 = [[KNSlideNodeBlockOperation alloc] initWithSlideNode:nodeCopy type:3];
  objc_initWeak(&location, v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_275DDFDB8;
  v8[3] = &unk_27A699078;
  v8[4] = self;
  v6 = nodeCopy;
  v9 = v6;
  objc_copyWeak(&v10, &location);
  [(NSBlockOperation *)v5 addExecutionBlock:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v5;
}

- (void)p_processSlideNode:(id)node isHighPriority:(BOOL)priority
{
  priorityCopy = priority;
  v29 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v7 = nodeCopy;
  if (KNAnimatedTextureManagerCat_init_token == -1)
  {
    if (!nodeCopy)
    {
      goto LABEL_26;
    }
  }

  else
  {
    sub_275E5B638();
    if (!v7)
    {
      goto LABEL_26;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = [(NSOperationQueue *)self->_preCacheBackgroundQueue operations:0];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        objc_opt_class();
        v13 = TSUDynamicCast();
        v14 = v13;
        if (v13)
        {
          slideNode = [v13 slideNode];

          if (slideNode == v7 && [v14 type] == 2)
          {
            [v14 cancel];
            goto LABEL_15;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  v16 = [(KNAnimatedTextureManager *)self ASVForSlideNode:v7];
  if ([v16 shouldPreCache])
  {
    os_unfair_lock_lock(&self->_preCachingStateLock);
    v17 = [(NSMutableSet *)self->_preCachedSlideNodes containsObject:v7];
    os_unfair_lock_unlock(&self->_preCachingStateLock);
    if ((v17 & 1) == 0)
    {
      v18 = [(KNAnimatedTextureManager *)self p_setupGenerateTexturesOperationOnSlideNode:v7];
      v19 = [(KNAnimatedTextureManager *)self p_setupRenderTexturesOperationOnSlideNode:v7];
      v20 = [(KNAnimatedTextureManager *)self p_setupPrepareAnimationsOperationOnSlideNode:v7];
      [v19 addDependency:v18];
      [v20 addDependency:v19];
      if (priorityCopy)
      {
        [v18 setQualityOfService:33];
        [v18 setQueuePriority:8];
        [v19 setQualityOfService:33];
        [v19 setQueuePriority:8];
        [v20 setQualityOfService:33];
        [v20 setQueuePriority:8];
      }

      if (v14)
      {
        [v18 addDependency:v14];
      }

      [(NSOperationQueue *)self->_preCacheBackgroundQueue addOperation:v18];
      [(NSOperationQueue *)self->_preCacheBackgroundQueue addOperation:v19];
      [(NSOperationQueue *)self->_preCacheBackgroundQueue addOperation:v20];
      os_unfair_lock_lock(&self->_preCachingStateLock);
      preCachedSlideNodes = self->_preCachedSlideNodes;
      if (!preCachedSlideNodes)
      {
        v22 = objc_opt_new();
        v23 = self->_preCachedSlideNodes;
        self->_preCachedSlideNodes = v22;

        preCachedSlideNodes = self->_preCachedSlideNodes;
      }

      [(NSMutableSet *)preCachedSlideNodes addObject:v7];
      os_unfair_lock_unlock(&self->_preCachingStateLock);
    }
  }

  else
  {
    [(KNAnimatedTextureManager *)self p_addSlideNodeToMemorySet:v7];
  }

LABEL_26:
}

- (void)p_processCurrentSlideNode
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_preCachingStateLock);
  currentSlideNode = self->_currentSlideNode;
  if (!currentSlideNode)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedTextureManager p_processCurrentSlideNode]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedTextureManager.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:521 isFatal:0 description:{"invalid nil value for '%{public}s'", "_currentSlideNode"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    currentSlideNode = self->_currentSlideNode;
  }

  v7 = currentSlideNode;
  shouldPreCache = self->_shouldPreCache;
  os_unfair_lock_unlock(&self->_preCachingStateLock);
  if (shouldPreCache && v7 != 0)
  {
    [(KNAnimatedTextureManager *)self p_processSlideNode:v7 isHighPriority:1];
    selfCopy = self;
    v11 = [(KNAnimatedTextureManager *)self p_slideNodesToCacheAroundCurrentSlideNode:v7 shouldIncludeExtraSlideAtEnd:0];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      v15 = MEMORY[0x277D85CD0];
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          if (v17 != v7)
          {
            v18 = dispatch_time(0, 0);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_275DE05BC;
            block[3] = &unk_27A697C10;
            block[4] = selfCopy;
            block[5] = v17;
            dispatch_after(v18, v15, block);
          }

          ++v16;
        }

        while (v13 != v16);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (id)p_slideNodesToCacheAroundCurrentSlideNode:(id)node shouldIncludeExtraSlideAtEnd:(BOOL)end
{
  endCopy = end;
  nodeCopy = node;
  if (!nodeCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedTextureManager p_slideNodesToCacheAroundCurrentSlideNode:shouldIncludeExtraSlideAtEnd:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedTextureManager.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:557 isFatal:0 description:{"invalid nil value for '%{public}s'", "currentSlideNode"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v10 = nodeCopy;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  [v11 addObject:v10];
  if (!nodeCopy)
  {
    v13 = 0;
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_session);
  v13 = [WeakRetained nextSlideNodeAfterSlideNode:v10];

  if (!v13)
  {
LABEL_9:
    nextSkippingHidden = 0;
    goto LABEL_11;
  }

  [v11 addObject:v13];
  v14 = v13;
  v13 = v14;
  if (endCopy)
  {
    nextSkippingHidden = [v14 nextSkippingHidden];

    if (nextSkippingHidden)
    {
      [v11 addObject:nextSkippingHidden];
    }
  }

  else
  {
    nextSkippingHidden = v14;
  }

LABEL_11:

  return v11;
}

- (void)startPreCaching
{
  os_unfair_lock_lock(&self->_preCachingStateLock);
  if (+[KNAnimationUtils isTexturePreCachingDisabled]|| self->_isPreCachingActive || !self->_shouldPreCache)
  {

    os_unfair_lock_unlock(&self->_preCachingStateLock);
  }

  else
  {
    self->_isPreCachingActive = 1;
    if ([(KNSlideNode *)self->_currentSlideNode isSkipped])
    {
      nextSkippingHidden = [(KNSlideNode *)self->_currentSlideNode nextSkippingHidden];
      currentSlideNode = self->_currentSlideNode;
      self->_currentSlideNode = nextSkippingHidden;
    }

    v5 = self->_currentSlideNode;
    os_unfair_lock_unlock(&self->_preCachingStateLock);
    if (v5)
    {

      [(KNAnimatedTextureManager *)self p_processCurrentSlideNode];
    }
  }
}

- (BOOL)p_stopPreCachingIfStarted
{
  os_unfair_lock_lock(&self->_preCachingStateLock);
  isPreCachingActive = self->_isPreCachingActive;
  self->_isPreCachingActive = 0;
  os_unfair_lock_unlock(&self->_preCachingStateLock);
  if (isPreCachingActive)
  {
    [(KNAnimatedTextureManager *)self p_cancelAllOperations];
    [(KNAnimatedTextureManager *)self p_waitUntilAllOperationsAreFinished];
  }

  return isPreCachingActive;
}

- (void)p_cancelAllOperations
{
  [(NSOperationQueue *)self->_preCacheBackgroundQueue cancelAllOperations];
  rasterizeTextureQueue = self->_rasterizeTextureQueue;

  [(NSOperationQueue *)rasterizeTextureQueue cancelAllOperations];
}

- (void)p_waitUntilAllOperationsAreFinished
{
  [(NSOperationQueue *)self->_preCacheBackgroundQueue waitUntilAllOperationsAreFinished];
  rasterizeTextureQueue = self->_rasterizeTextureQueue;

  [(NSOperationQueue *)rasterizeTextureQueue waitUntilAllOperationsAreFinished];
}

- (void)p_rasterizeTexture:(id)texture
{
  textureCopy = texture;
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] activateBackground:isMainThread ^ 1u];
  v4 = objc_autoreleasePoolPush();
  [textureCopy renderLayerContentsIfNeeded];
  objc_autoreleasePoolPop(v4);
  [MEMORY[0x277CD9FF0] commit];
}

- (void)addTextureToRasterizationQueue:(id)queue asv:(id)asv
{
  queueCopy = queue;
  asvCopy = asv;
  v8 = queueCopy;
  objc_sync_enter(v8);
  WeakRetained = objc_loadWeakRetained(&self->_session);
  isExitingShow = [WeakRetained isExitingShow];

  if ((isExitingShow & 1) == 0)
  {
    if (self->_rasterizeTextureQueue)
    {
      renderingOperation = [v8 renderingOperation];
      if (renderingOperation)
      {
      }

      else if (([v8 isRendered] & 1) == 0)
      {
        v12 = objc_alloc_init(MEMORY[0x277CCA8C8]);
        objc_initWeak(&location, v12);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = sub_275DE0C54;
        v18[3] = &unk_27A6990A0;
        objc_copyWeak(&v21, &location);
        v13 = v8;
        v19 = v13;
        selfCopy = self;
        [v12 addExecutionBlock:v18];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"render texture:%p", v13];
        [v12 setName:v14];

        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_275DE0DA0;
        v16[3] = &unk_27A697B20;
        v15 = v13;
        v17 = v15;
        [v12 setCompletionBlock:v16];
        if ([MEMORY[0x277CCACC8] isMainThread])
        {
          [v12 setQualityOfService:33];
          [v12 setQueuePriority:8];
        }

        [v15 setRenderingOperation:v12];
        [(NSOperationQueue *)self->_rasterizeTextureQueue addOperation:v12];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      [(KNAnimatedTextureManager *)self p_rasterizeTexture:v8];
    }
  }

  objc_sync_exit(v8);
}

- (void)p_removeTextureCacheForASV:(id)v
{
  v17 = *MEMORY[0x277D85DE8];
  allReps = [v allReps];
  os_unfair_lock_lock(&self->_textureCacheLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = allReps;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_repToTextureArrayMap objectForKeyedSubscript:v10, v12];
        [v11 removeAllObjects];

        [(NSMapTable *)self->_repToTextureArrayMap removeObjectForKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_textureCacheLock);
}

- (void)p_serializeTexturesForSlideNode:(id)node
{
  v29 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  if (KNAnimatedTextureManagerCat_init_token != -1)
  {
    sub_275E5B64C();
  }

  v19 = [[KNSlideNodeBlockOperation alloc] initWithSlideNode:nodeCopy type:2];
  objc_initWeak(&location, v19);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_275DE12A0;
  v24[3] = &unk_27A699078;
  v24[4] = self;
  v4 = nodeCopy;
  v25 = v4;
  objc_copyWeak(&v26, &location);
  [(NSBlockOperation *)v19 addExecutionBlock:v24];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"serialize slideNode:%p", v4];
  [(KNSlideNodeBlockOperation *)v19 setName:v5];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  operations = [(NSOperationQueue *)self->_preCacheBackgroundQueue operations];
  v7 = [operations countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(operations);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        v11 = TSUDynamicCast();
        v12 = v11;
        if (v11)
        {
          slideNode = [v11 slideNode];
          v14 = slideNode == v4;

          if (v14)
          {
            if ([v12 type] == 2)
            {

              goto LABEL_19;
            }

            [v12 cancel];
            [(KNSlideNodeBlockOperation *)v19 addDependency:v10];
          }
        }

        previousSkippingHidden = [v4 previousSkippingHidden];
        if (v12)
        {
          slideNode2 = [v12 slideNode];
          v17 = slideNode2 == previousSkippingHidden;

          if (v17)
          {
            [(KNSlideNodeBlockOperation *)v19 addDependency:v10];
          }
        }
      }

      v7 = [operations countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(NSOperationQueue *)self->_preCacheBackgroundQueue addOperation:v19];
LABEL_19:
  objc_destroyWeak(&v26);

  objc_destroyWeak(&location);
}

- (void)p_scheduleSerializeExtraSlideNodes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275DE16A0;
  block[3] = &unk_27A697B20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)p_serializeExtraSlideNodes
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_preCachingStateLock);
  v3 = self->_currentSlideNode;
  v4 = [(NSMutableSet *)self->_slideNodesInMemorySet copy];
  os_unfair_lock_unlock(&self->_preCachingStateLock);
  if (v3)
  {
    if (KNAnimatedTextureManagerCat_init_token != -1)
    {
      sub_275E5B660();
    }

    v5 = [(KNAnimatedTextureManager *)self p_slideNodesToCacheAroundCurrentSlideNode:v3 shouldIncludeExtraSlideAtEnd:1];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (([v5 containsObject:{v12, v13}] & 1) == 0)
          {
            [(KNAnimatedTextureManager *)self p_serializeTexturesForSlideNode:v12];
            ++v9;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);

      if (v9 >= 2)
      {
        [(NSOperationQueue *)self->_preCacheBackgroundQueue waitUntilAllOperationsAreFinished];
      }
    }

    else
    {
    }
  }
}

- (void)evictCaches
{
  if (KNAnimatedTextureManagerCat_init_token != -1)
  {
    sub_275E5B674();
  }

  [(KNAnimatedTextureManager *)self p_cancelAllOperations];
  [(KNAnimatedTextureManager *)self p_waitUntilAllOperationsAreFinished];
  [(KNAnimatedTextureManager *)self evictInMemoryCache];

  MEMORY[0x2821F9670](self, sel_evictPersistentCache);
}

- (void)p_didReceiveMemoryWarning
{
  v16 = *MEMORY[0x277D85DE8];
  if (KNAnimatedTextureManagerCat_init_token != -1)
  {
    sub_275E5B688();
  }

  p_stopPreCachingIfStarted = [(KNAnimatedTextureManager *)self p_stopPreCachingIfStarted];
  os_unfair_lock_lock(&self->_preCachingStateLock);
  self->_isPreCachingActive = p_stopPreCachingIfStarted;
  v4 = [(NSMutableSet *)self->_slideNodesInMemorySet copy];
  v5 = self->_currentSlideNode;
  os_unfair_lock_unlock(&self->_preCachingStateLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (*(*(&v11 + 1) + 8 * i) != v5)
        {
          [(KNAnimatedTextureManager *)self p_serializeTexturesForSlideNode:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end