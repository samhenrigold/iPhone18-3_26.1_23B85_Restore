@interface AXPRemoteCacheManager
- (AXPRemoteCacheManager)initWithCachedTreeClientType:(unint64_t)type;
- (AXPTranslationTransportDelegate)transportDelegate;
- (BOOL)_notificationData:(id)data containsToken:(id)token;
- (OS_dispatch_queue)_axHierarchyGenerationQueue;
- (void)_attemptToSendResponse:(id)response;
- (void)_axHierarchyGenerationQueue;
- (void)_elementVisualsUpdatedForNotification:(unint64_t)notification data:(id)data;
- (void)_processPlatformTranslationRequest:(id)request;
- (void)_responseSent:(id)sent withError:(id)error;
- (void)_sendAXHierachyOnBackgroundQueue;
- (void)_sendTextRelatedAttributesForTranslation:(id)translation;
- (void)_timerDidFire:(id)fire;
- (void)axAdditionalTreeDumpGeneratedOnBackgroundThreadCallback:(id)callback success:(BOOL)success;
- (void)axInitialTreeDumpGeneratedOnBackgroundThreadCallback:(id)callback success:(BOOL)success;
- (void)axTreeGenerationEnded;
- (void)handleNotification:(unint64_t)notification data:(id)data associatedObject:(id)object;
- (void)start;
- (void)stop;
@end

@implementation AXPRemoteCacheManager

- (AXPRemoteCacheManager)initWithCachedTreeClientType:(unint64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[AXPRemoteCacheManager initWithCachedTreeClientType:]";
    v13 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_23D766000, v5, OS_LOG_TYPE_INFO, "%s: cachedTreeClientType: %lu", buf, 0x16u);
  }

  v10.receiver = self;
  v10.super_class = AXPRemoteCacheManager;
  v6 = [(AXPRemoteCacheManager *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    axTreeGenerationLock = v6->_axTreeGenerationLock;
    v6->_axTreeGenerationLock = v7;

    v6->_cachedTreeClientType = type;
  }

  return v6;
}

- (void)start
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[AXPRemoteCacheManager start]";
    _os_log_impl(&dword_23D766000, v3, OS_LOG_TYPE_INFO, "%s:", buf, 0xCu);
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_0);
  v4 = [MEMORY[0x277CBEB58] set];
  [(AXPRemoteCacheManager *)self set_cachedTranslationsForLayoutChange:v4];

  v5 = +[AXPTranslator sharedInstance];
  [v5 setRuntimeDelegate:self];

  v6 = +[AXPTranslator sharedInstance];
  [v6 setRequestResolvingBehavior:2];

  cachedTreeClientType = [(AXPRemoteCacheManager *)self cachedTreeClientType];
  v8 = +[AXPTranslator sharedInstance];
  [v8 setCachedTreeClientType:cachedTreeClientType];

  objc_initWeak(buf, self);
  transportDelegate = [(AXPRemoteCacheManager *)self transportDelegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __30__AXPRemoteCacheManager_start__block_invoke_2;
  v14[3] = &unk_278BE8600;
  objc_copyWeak(&v15, buf);
  v10 = [transportDelegate accessibilityTranslationTransportAddReceiveDataHandler:v14];
  [(AXPRemoteCacheManager *)self set_transportChannel:v10];

  _axHierarchyGenerationQueue = [(AXPRemoteCacheManager *)self _axHierarchyGenerationQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __30__AXPRemoteCacheManager_start__block_invoke_286;
  v12[3] = &unk_278BE8628;
  objc_copyWeak(&v13, buf);
  dispatch_async(_axHierarchyGenerationQueue, v12);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __30__AXPRemoteCacheManager_start__block_invoke()
{
  v0 = +[AXPTranslator sharediOSInstance];
  [v0 stopGeneratingAXTreeDump];
}

void __30__AXPRemoteCacheManager_start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x277CCAAC8];
  v6 = +[AXPTranslatorRequest allowedDecodableClasses];
  v10 = 0;
  v7 = [v5 unarchivedObjectOfClasses:v6 fromData:v3 error:&v10];

  v8 = v10;
  if (v8)
  {
    v9 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __30__AXPRemoteCacheManager_start__block_invoke_2_cold_1();
    }
  }

  else
  {
    [WeakRetained _processPlatformTranslationRequest:v7];
  }
}

void __30__AXPRemoteCacheManager_start__block_invoke_286(uint64_t a1)
{
  v2 = +[AXPTranslator sharedInstance];
  [v2 setAccessibilityEnabled:1];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__AXPRemoteCacheManager_start__block_invoke_2_287;
  block[3] = &unk_278BE8628;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
}

void __30__AXPRemoteCacheManager_start__block_invoke_2_287(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _elementVisualsUpdatedForNotification:4 data:0];
}

- (void)stop
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AXPRemoteCacheManager stop]";
    _os_log_impl(&dword_23D766000, v2, OS_LOG_TYPE_INFO, "%s:", &v5, 0xCu);
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_289);
  v3 = +[AXPTranslator sharedInstance];
  [v3 setRequestResolvingBehavior:0];

  v4 = +[AXPTranslator sharedInstance];
  [v4 setCachedTreeClientType:0];
}

void __29__AXPRemoteCacheManager_stop__block_invoke()
{
  v0 = +[AXPTranslator sharediOSInstance];
  [v0 stopGeneratingAXTreeDump];
}

- (OS_dispatch_queue)_axHierarchyGenerationQueue
{
  v2 = +[AXPTranslator sharediOSInstance];
  axTreeDumpSharedBackgroundQueue = [v2 axTreeDumpSharedBackgroundQueue];

  if (axTreeDumpSharedBackgroundQueue)
  {
    v4 = +[AXPTranslator sharediOSInstance];
    axTreeDumpSharedBackgroundQueue2 = [v4 axTreeDumpSharedBackgroundQueue];
  }

  else
  {
    v6 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AXPRemoteCacheManager *)v6 _axHierarchyGenerationQueue:v7];
    }

    axTreeDumpSharedBackgroundQueue2 = 0;
  }

  return axTreeDumpSharedBackgroundQueue2;
}

- (void)_elementVisualsUpdatedForNotification:(unint64_t)notification data:(id)data
{
  dataCopy = data;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  _layoutChangeCoalesceTimer = [(AXPRemoteCacheManager *)self _layoutChangeCoalesceTimer];
  if (!_layoutChangeCoalesceTimer)
  {

    if (dataCopy)
    {
      v9 = 1;
      goto LABEL_6;
    }

    v10 = 0.75;
LABEL_17:
    _layoutChangeCoalesceTimer2 = [(AXPRemoteCacheManager *)self _layoutChangeCoalesceTimer];
    [_layoutChangeCoalesceTimer2 invalidate];

    [(AXPRemoteCacheManager *)self set_layoutChangeCoalesceTimer:0];
    v13 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__timerDidFire_ selector:0 userInfo:0 repeats:v10];
    [(AXPRemoteCacheManager *)self set_layoutChangeCoalesceTimer:v13];

    goto LABEL_18;
  }

  _layoutChangeCoalesceTimer3 = [(AXPRemoteCacheManager *)self _layoutChangeCoalesceTimer];
  isValid = [_layoutChangeCoalesceTimer3 isValid];

  if (!dataCopy)
  {
    v10 = 0.75;
    if (isValid)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v9 = isValid ^ 1;
LABEL_6:
  v10 = 0.75;
  if (notification == 4 || notification == 5)
  {
    v11 = [AXPRemoteCacheManager _notificationData:"_notificationData:containsToken:" containsToken:?];
    if (v11)
    {
      v10 = 0.5;
    }
  }

  else
  {
    v11 = 0;
  }

  if ((v11 | v9))
  {
    goto LABEL_17;
  }

LABEL_18:
}

- (BOOL)_notificationData:(id)data containsToken:(id)token
{
  dataCopy = data;
  tokenCopy = token;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [dataCopy containsObject:tokenCopy];
LABEL_6:
    v9 = v7;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [dataCopy isEqual:tokenCopy];
    goto LABEL_6;
  }

  allObjects = [dataCopy allObjects];
  v9 = [allObjects containsObject:tokenCopy];

LABEL_7:
  return v9;
}

- (void)_timerDidFire:(id)fire
{
  fireCopy = fire;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  axTreeGenerationLock = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
  [axTreeGenerationLock lock];

  if ([(AXPRemoteCacheManager *)self treeDumpStatus]== 1)
  {
    axTreeGenerationLock2 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
    [axTreeGenerationLock2 unlock];
  }

  else
  {
    treeDumpStatus = [(AXPRemoteCacheManager *)self treeDumpStatus];
    axTreeGenerationLock3 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
    [axTreeGenerationLock3 unlock];

    if (treeDumpStatus != 2)
    {
      objc_initWeak(&location, self);
      _axHierarchyGenerationQueue = [(AXPRemoteCacheManager *)self _axHierarchyGenerationQueue];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __39__AXPRemoteCacheManager__timerDidFire___block_invoke;
      v17 = &unk_278BE8628;
      objc_copyWeak(&v18, &location);
      dispatch_async(_axHierarchyGenerationQueue, &v14);

      v13 = [(AXPRemoteCacheManager *)self _layoutChangeCoalesceTimer:v14];
      [v13 invalidate];

      [(AXPRemoteCacheManager *)self set_layoutChangeCoalesceTimer:0];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
      goto LABEL_6;
    }
  }

  axTreeGenerationLock4 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
  [axTreeGenerationLock4 lock];

  [(AXPRemoteCacheManager *)self setTreeDumpStatus:2];
  axTreeGenerationLock5 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
  [axTreeGenerationLock5 unlock];

  v11 = +[AXPTranslator sharediOSInstance];
  [v11 stopGeneratingAXTreeDump];

LABEL_6:
}

void __39__AXPRemoteCacheManager__timerDidFire___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendAXHierachyOnBackgroundQueue];
}

- (void)_sendAXHierachyOnBackgroundQueue
{
  v13 = *MEMORY[0x277D85DE8];
  _axHierarchyGenerationQueue = [(AXPRemoteCacheManager *)self _axHierarchyGenerationQueue];
  dispatch_assert_queue_V2(_axHierarchyGenerationQueue);

  axTreeGenerationLock = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
  [axTreeGenerationLock lock];

  if ([(AXPRemoteCacheManager *)self treeDumpStatus]== 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(AXPRemoteCacheManager *)self setTreeDumpStatus:v5];
  axTreeGenerationLock2 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
  [axTreeGenerationLock2 unlock];

  v7 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[AXPRemoteCacheManager _sendAXHierachyOnBackgroundQueue]";
    _os_log_impl(&dword_23D766000, v7, OS_LOG_TYPE_INFO, "%s: starting to generate initial hierarchy", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = +[AXPTranslator sharediOSInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__AXPRemoteCacheManager__sendAXHierachyOnBackgroundQueue__block_invoke;
  v9[3] = &unk_278BE8650;
  objc_copyWeak(&v10, buf);
  [v8 generateAXTreeDumpTypeOnBackgroundThread:@"AXPTreeDumpTypeInitialDump" completionHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __57__AXPRemoteCacheManager__sendAXHierachyOnBackgroundQueue__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained axInitialTreeDumpGeneratedOnBackgroundThreadCallback:v5 success:a2];
}

- (void)axTreeGenerationEnded
{
  v14 = *MEMORY[0x277D85DE8];
  _axHierarchyGenerationQueue = [(AXPRemoteCacheManager *)self _axHierarchyGenerationQueue];
  dispatch_assert_queue_V2(_axHierarchyGenerationQueue);

  axTreeGenerationLock = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
  [axTreeGenerationLock lock];

  v5 = [(AXPRemoteCacheManager *)self treeDumpStatus]== 2;
  [(AXPRemoteCacheManager *)self setTreeDumpStatus:0];
  axTreeGenerationLock2 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
  [axTreeGenerationLock2 unlock];

  if (v5)
  {
    objc_initWeak(&location, self);
    v7 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[AXPRemoteCacheManager axTreeGenerationEnded]";
      _os_log_impl(&dword_23D766000, v7, OS_LOG_TYPE_INFO, "%s: pendingAXTreeGeneration, generating another AX hierarchy", buf, 0xCu);
    }

    _axHierarchyGenerationQueue2 = [(AXPRemoteCacheManager *)self _axHierarchyGenerationQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__AXPRemoteCacheManager_axTreeGenerationEnded__block_invoke;
    v9[3] = &unk_278BE8628;
    objc_copyWeak(&v10, &location);
    dispatch_async(_axHierarchyGenerationQueue2, v9);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __46__AXPRemoteCacheManager_axTreeGenerationEnded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendAXHierachyOnBackgroundQueue];
}

- (void)axInitialTreeDumpGeneratedOnBackgroundThreadCallback:(id)callback success:(BOOL)success
{
  v31 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  _axHierarchyGenerationQueue = [(AXPRemoteCacheManager *)self _axHierarchyGenerationQueue];
  dispatch_assert_queue_V2(_axHierarchyGenerationQueue);

  v8 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[AXPRemoteCacheManager axInitialTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
    _os_log_impl(&dword_23D766000, v8, OS_LOG_TYPE_INFO, "%s: finished generating initial hierarchy", buf, 0xCu);
  }

  if (success)
  {
    v9 = [MEMORY[0x277CBEB58] set];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    treeDumpResponse = [callbackCopy treeDumpResponse];
    v11 = [treeDumpResponse countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(treeDumpResponse);
          }

          associatedTranslationObject = [*(*(&v24 + 1) + 8 * v13) associatedTranslationObject];
          if (associatedTranslationObject)
          {
            [v9 addObject:associatedTranslationObject];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [treeDumpResponse countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    if (-[AXPRemoteCacheManager lastAXTreeFullyGenerated](self, "lastAXTreeFullyGenerated") && (-[AXPRemoteCacheManager _cachedTranslationsForLayoutChange](self, "_cachedTranslationsForLayoutChange"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v9 isEqualToSet:v15], v15, v16))
    {
      v17 = AXPlatformTranslationLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v30 = "[AXPRemoteCacheManager axInitialTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
        _os_log_impl(&dword_23D766000, v17, OS_LOG_TYPE_INFO, "%s: skipping hierarchy dump because elements did not change", buf, 0xCu);
      }

      [(AXPRemoteCacheManager *)self axTreeGenerationEnded];
    }

    else
    {
      [(AXPRemoteCacheManager *)self set_cachedTranslationsForLayoutChange:v9];
      v19 = AXPlatformTranslationLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v30 = "[AXPRemoteCacheManager axInitialTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
        _os_log_impl(&dword_23D766000, v19, OS_LOG_TYPE_INFO, "%s: sending initial tree dump", buf, 0xCu);
      }

      [(AXPRemoteCacheManager *)self handleUpdatedAXTree:callbackCopy];
      v20 = AXPlatformTranslationLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v30 = "[AXPRemoteCacheManager axInitialTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
        _os_log_impl(&dword_23D766000, v20, OS_LOG_TYPE_INFO, "%s: generating additional tree dump", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v21 = +[AXPTranslator sharediOSInstance];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __86__AXPRemoteCacheManager_axInitialTreeDumpGeneratedOnBackgroundThreadCallback_success___block_invoke;
      v22[3] = &unk_278BE8650;
      objc_copyWeak(&v23, buf);
      [v21 generateAXTreeDumpTypeOnBackgroundThread:@"AXPTreeDumpTypeAdditionalData" completionHandler:v22];

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v18 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[AXPRemoteCacheManager axInitialTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
      _os_log_impl(&dword_23D766000, v18, OS_LOG_TYPE_INFO, "%s: initial AX tree dump terminated early!", buf, 0xCu);
    }

    [(AXPRemoteCacheManager *)self axTreeGenerationEnded];
  }
}

void __86__AXPRemoteCacheManager_axInitialTreeDumpGeneratedOnBackgroundThreadCallback_success___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained axAdditionalTreeDumpGeneratedOnBackgroundThreadCallback:v5 success:a2];
}

- (void)axAdditionalTreeDumpGeneratedOnBackgroundThreadCallback:(id)callback success:(BOOL)success
{
  v13 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v7 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[AXPRemoteCacheManager axAdditionalTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
    _os_log_impl(&dword_23D766000, v7, OS_LOG_TYPE_INFO, "%s: finished generating additional hierarchy", &v11, 0xCu);
  }

  _axHierarchyGenerationQueue = [(AXPRemoteCacheManager *)self _axHierarchyGenerationQueue];
  dispatch_assert_queue_V2(_axHierarchyGenerationQueue);

  if (success)
  {
    [(AXPRemoteCacheManager *)self setLastAXTreeFullyGenerated:1];
    v9 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[AXPRemoteCacheManager axAdditionalTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
      _os_log_impl(&dword_23D766000, v9, OS_LOG_TYPE_INFO, "%s: sending additional tree dump", &v11, 0xCu);
    }

    [(AXPRemoteCacheManager *)self handleUpdatedAXTree:callbackCopy];
  }

  else
  {
    [(AXPRemoteCacheManager *)self setLastAXTreeFullyGenerated:0];
    v10 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[AXPRemoteCacheManager axAdditionalTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
      _os_log_impl(&dword_23D766000, v10, OS_LOG_TYPE_INFO, "%s: additional AX tree dump terminated early!", &v11, 0xCu);
    }
  }

  [(AXPRemoteCacheManager *)self axTreeGenerationEnded];
}

- (void)_processPlatformTranslationRequest:(id)request
{
  requestCopy = request;
  v5 = +[AXPTranslator sharedInstance];
  v6 = [v5 processTranslatorRequest:requestCopy];

  [(AXPRemoteCacheManager *)self _attemptToSendResponse:v6];
}

- (void)_attemptToSendResponse:(id)response
{
  responseCopy = response;
  v15 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:responseCopy requiringSecureCoding:1 error:&v15];
  v6 = v15;
  if (v6)
  {
    v7 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AXPRemoteCacheManager _attemptToSendResponse:];
    }
  }

  else
  {
    v8 = [v5 length];
    v9 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(AXPRemoteCacheManager *)v8 _attemptToSendResponse:v9];
    }

    objc_initWeak(&location, self);
    transportDelegate = [(AXPRemoteCacheManager *)self transportDelegate];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__AXPRemoteCacheManager__attemptToSendResponse___block_invoke;
    v11[3] = &unk_278BE8678;
    objc_copyWeak(&v13, &location);
    v12 = responseCopy;
    [transportDelegate accessibilityTranslationTransportSendData:v5 completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __48__AXPRemoteCacheManager__attemptToSendResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _responseSent:*(a1 + 32) withError:v3];
}

- (void)_responseSent:(id)sent withError:(id)error
{
  sentCopy = sent;
  errorCopy = error;
  if (!errorCopy)
  {
LABEL_9:
    [(AXPRemoteCacheManager *)self setFailedSendAttempts:0];
    goto LABEL_10;
  }

  failedSendAttempts = [(AXPRemoteCacheManager *)self failedSendAttempts];
  v9 = AXPlatformTranslationLogCommon();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (failedSendAttempts > 4)
  {
    if (v10)
    {
      [(AXPRemoteCacheManager *)self _responseSent:errorCopy withError:v9];
    }

    goto LABEL_9;
  }

  if (v10)
  {
    [AXPRemoteCacheManager _responseSent:withError:];
  }

  [(AXPRemoteCacheManager *)self setFailedSendAttempts:[(AXPRemoteCacheManager *)self failedSendAttempts]+ 1];
  [(AXPRemoteCacheManager *)self _attemptToSendResponse:sentCopy];
LABEL_10:
}

- (void)handleNotification:(unint64_t)notification data:(id)data associatedObject:(id)object
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  objectCopy = object;
  if (notification <= 0xF && ((1 << notification) & 0x9430) != 0)
  {
    v10 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      notificationCopy2 = "[AXPRemoteCacheManager handleNotification:data:associatedObject:]";
      v15 = 2048;
      notificationCopy = notification;
      _os_log_impl(&dword_23D766000, v10, OS_LOG_TYPE_INFO, "%s: notification: %lu", &v13, 0x16u);
    }

    [(AXPRemoteCacheManager *)self _elementVisualsUpdatedForNotification:notification data:dataCopy];
  }

  else
  {
    v11 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 134218242;
      notificationCopy2 = notification;
      v15 = 2112;
      notificationCopy = dataCopy;
      _os_log_impl(&dword_23D766000, v11, OS_LOG_TYPE_INFO, "handleNotification: sending notification: %lu, Data: %@", &v13, 0x16u);
    }

    if (notification == 6 && objectCopy)
    {
      [(AXPRemoteCacheManager *)self _sendTextRelatedAttributesForTranslation:objectCopy];
    }

    v12 = objc_opt_new();
    [v12 setNotification:notification];
    [v12 setAssociatedNotificationObject:objectCopy];
    [v12 setResultData:dataCopy];
    [(AXPRemoteCacheManager *)self _attemptToSendResponse:v12];
  }
}

- (void)_sendTextRelatedAttributesForTranslation:(id)translation
{
  v28 = *MEMORY[0x277D85DE8];
  translationCopy = translation;
  if (_sendTextRelatedAttributesForTranslation__onceToken != -1)
  {
    [AXPRemoteCacheManager _sendTextRelatedAttributesForTranslation:];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = _sendTextRelatedAttributesForTranslation__s_textEditingRelatedAttributes;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v19 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = objc_alloc_init(AXPTranslatorRequest);
        [(AXPTranslatorRequest *)v8 setRequestType:5];
        v24 = v7;
        v25 = @"attributes";
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
        v26 = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        [(AXPTranslatorRequest *)v8 setParameters:v10];

        [(AXPTranslatorRequest *)v8 setTranslation:translationCopy];
        v11 = +[AXPTranslator sharedInstance];
        v12 = [v11 processTranslatorRequest:v8];

        resultData = [v12 resultData];

        if (resultData)
        {
          [v12 setAssociatedTranslationObject:translationCopy];
          [v12 setAssociatedRequestType:5];
          v14 = objc_opt_new();
          [v14 setAssociatedRequestType:11];
          v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v16 = [MEMORY[0x277CBEA60] arrayWithObject:v12];
          [v15 setObject:v16 forKeyedSubscript:@"treeDump"];
          [v15 setObject:@"AXPTreeDumpTypeAdditionalData" forKeyedSubscript:@"treeDumpType"];
          [v14 setResultData:v15];
          [(AXPRemoteCacheManager *)self _attemptToSendResponse:v14];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v5);
  }
}

void __66__AXPRemoteCacheManager__sendTextRelatedAttributesForTranslation___block_invoke()
{
  v0 = _sendTextRelatedAttributesForTranslation__s_textEditingRelatedAttributes;
  _sendTextRelatedAttributesForTranslation__s_textEditingRelatedAttributes = &unk_284FCC570;
}

- (AXPTranslationTransportDelegate)transportDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transportDelegate);

  return WeakRetained;
}

- (void)_axHierarchyGenerationQueue
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[AXPRemoteCacheManager _axHierarchyGenerationQueue]";
  OUTLINED_FUNCTION_0_0(&dword_23D766000, self, a3, "%s: axTreeDumpSharedBackgroundQueue is NULL!", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (float)_attemptToSendResponse:(unint64_t)a1 .cold.2(unint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = vcvtd_n_f64_s64(a1, 0xAuLL);
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_23D766000, a2, OS_LOG_TYPE_DEBUG, "Response: %f Kbytes", &v4, 0xCu);
  return result;
}

- (void)_responseSent:(NSObject *)a3 withError:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 failedSendAttempts];
  OUTLINED_FUNCTION_1();
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_23D766000, a3, OS_LOG_TYPE_ERROR, "Failed to send data after %lu attemps, error: %@", v5, 0x16u);
}

@end