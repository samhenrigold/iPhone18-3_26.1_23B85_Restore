@interface ATXAnchorModelInferenceEngine
+ (id)sharedInstance;
- (ATXAnchorModelInferenceEngine)init;
- (id)currentDuetEventForAnchor:(id)anchor;
- (id)entranceCallbackForAnchor:(id)anchor;
- (id)exitCallbackForAnchor:(id)anchor;
- (id)exitNotificationIdentifierForAnchor:(id)anchor;
- (id)notificationIdentifierForAnchor:(id)anchor;
- (id)supportedAnchorsForInference;
- (void)dealloc;
- (void)handleAnchorEventForAnchor:(id)anchor;
- (void)handleAnchorEventForGymArrival;
- (void)handleAnchorEventForIdleTimeBegin;
- (void)handleAnchorEventForMicrolocationVisitAnchor;
- (void)handleAnchorExitEventForGymArrival;
- (void)handleInferenceEvent:(id)event;
- (void)handleLOIEntrance;
- (void)handleLOIExit;
- (void)queueHandleInferenceEvent:(id)event;
- (void)registerAnchorEventListenerForAnchor:(id)anchor;
- (void)registerAnchorEventListeners;
- (void)registerForAnchorEntrance:(id)entrance cdContext:(id)context;
- (void)registerForAnchorExit:(id)exit cdContext:(id)context;
- (void)registerForWakingNotificationForAnchor:(id)anchor cdContext:(id)context;
- (void)retryPreviouslyIncompleteInference;
- (void)setupContextStoreListenerForAnchor:(id)anchor context:(id)context;
- (void)start;
- (void)unregisterAnchorEventListenerForAnchor:(id)anchor;
- (void)unregisterAnchorEventListeners;
@end

@implementation ATXAnchorModelInferenceEngine

+ (id)sharedInstance
{
  v2 = __atxlog_handle_anchor(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Starting Anchor Model Inference Engine.", v5, 2u);
  }

  if (sharedInstance__pasOnceToken8_1 != -1)
  {
    +[ATXAnchorModelInferenceEngine sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_52;

  return v3;
}

void __47__ATXAnchorModelInferenceEngine_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_52;
  sharedInstance__pasExprOnceResult_52 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXAnchorModelInferenceEngine)init
{
  v16.receiver = self;
  v16.super_class = ATXAnchorModelInferenceEngine;
  v2 = [(ATXAnchorModelInferenceEngine *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->_started = 0;
    v4 = objc_opt_new();
    predictionScheduler = v3->_predictionScheduler;
    v3->_predictionScheduler = v4;

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    uTF8String = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);
    queue = v3->_queue;
    v3->_queue = v10;

    v12 = objc_alloc(MEMORY[0x277CBEBD0]);
    v13 = [v12 initWithSuiteName:*MEMORY[0x277CEBD00]];
    defaults = v3->_defaults;
    v3->_defaults = v13;
  }

  return v3;
}

- (void)dealloc
{
  [(ATXAnchorModelInferenceEngine *)self unregisterAnchorEventListeners];
  v3.receiver = self;
  v3.super_class = ATXAnchorModelInferenceEngine;
  [(ATXAnchorModelInferenceEngine *)&v3 dealloc];
}

- (void)start
{
  v2 = atomic_load(&self->_started);
  if (v2)
  {
    v3 = __atxlog_handle_anchor(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(ATXAnchorModelInferenceEngine *)v3 start];
    }
  }

  else
  {
    atomic_store(1u, &self->_started);
    v5 = objc_opt_new();
    contextHelper = self->_contextHelper;
    self->_contextHelper = v5;

    [(ATXAnchorModelInferenceEngine *)self registerAnchorEventListeners];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__ATXAnchorModelInferenceEngine_start__block_invoke;
    block[3] = &unk_278596BB8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

uint64_t __38__ATXAnchorModelInferenceEngine_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) retryPreviouslyIncompleteInference];
  v2 = *(*(a1 + 32) + 16);

  return [v2 scheduleExistingPredictions];
}

- (id)supportedAnchorsForInference
{
  v2 = +[ATXAnchorModelHyperParameters sharedInstance];
  enabledAnchors = [v2 enabledAnchors];
  v4 = [enabledAnchors _pas_mappedArrayWithTransform:&__block_literal_global_28_1];

  return v4;
}

id __61__ATXAnchorModelInferenceEngine_supportedAnchorsForInference__block_invoke(int a1, NSString *aClassName)
{
  NSClassFromString(aClassName);
  v2 = objc_opt_new();

  return v2;
}

- (void)registerAnchorEventListeners
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  supportedAnchorsForInference = [(ATXAnchorModelInferenceEngine *)self supportedAnchorsForInference];
  v4 = [supportedAnchorsForInference countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(supportedAnchorsForInference);
        }

        [(ATXAnchorModelInferenceEngine *)self registerAnchorEventListenerForAnchor:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [supportedAnchorsForInference countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)registerAnchorEventListenerForAnchor:(id)anchor
{
  location[3] = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  if ([objc_opt_class() usesContextStoreForRealTimeNotifications])
  {
    context = [(ATXCoreDuetContextHelper *)self->_contextHelper context];
    [(ATXAnchorModelInferenceEngine *)self setupContextStoreListenerForAnchor:anchorCopy context:context];

    goto LABEL_36;
  }

  if ([objc_opt_class() anchorType] == 19)
  {
    v6 = __atxlog_handle_anchor(19);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
    }

    objc_initWeak(location, self);
    mEMORY[0x277CEBC98] = [MEMORY[0x277CEBC98] sharedInstance];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__ATXAnchorModelInferenceEngine_registerAnchorEventListenerForAnchor___block_invoke;
    v25[3] = &unk_278596D20;
    objc_copyWeak(&v26, location);
    v8 = [mEMORY[0x277CEBC98] subscribeWithCallback:v25 onQueue:self->_queue];
    microLocationSchedulerToken = self->_microLocationSchedulerToken;
    self->_microLocationSchedulerToken = v8;

    v11 = __atxlog_handle_anchor(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
    goto LABEL_36;
  }

  if ([objc_opt_class() anchorType] == 7)
  {
    v12 = __atxlog_handle_anchor(7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
    }

    v13 = [objc_opt_class() registerForNotificationsWithoutUsingContextStoreForObserver:self enterSelector:sel_handleLOIEntrance exitSelector:0];
    v14 = __atxlog_handle_anchor(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
    }

LABEL_14:

    goto LABEL_36;
  }

  if ([objc_opt_class() anchorType] == 8)
  {
    v15 = __atxlog_handle_anchor(8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
    }

    v16 = [objc_opt_class() registerForNotificationsWithoutUsingContextStoreForObserver:self enterSelector:sel_handleLOIExit exitSelector:0];
    v14 = __atxlog_handle_anchor(v16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
    }

    goto LABEL_14;
  }

  if ([objc_opt_class() anchorType] == 3)
  {
    v17 = __atxlog_handle_anchor(3);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = anchorCopy;
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Setting up Anchor Event listener.", location, 0xCu);
    }

    v18 = [objc_opt_class() registerForNotificationsWithoutUsingContextStoreForObserver:self enterSelector:sel_handleAnchorEventForIdleTimeBegin exitSelector:0];
    v19 = __atxlog_handle_anchor(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = anchorCopy;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Done registering.", location, 0xCu);
    }

LABEL_26:

    goto LABEL_36;
  }

  anchorType = [objc_opt_class() anchorType];
  v21 = anchorType == 22;
  v22 = __atxlog_handle_anchor(anchorType);
  v23 = v22;
  if (v21)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = anchorCopy;
      _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Setting up Anchor Event listener.", location, 0xCu);
    }

    v24 = [objc_opt_class() registerForNotificationsWithoutUsingContextStoreForObserver:self enterSelector:sel_handleAnchorEventForGymArrival exitSelector:sel_handleAnchorExitEventForGymArrival];
    v19 = __atxlog_handle_anchor(v24);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = anchorCopy;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Done registering.", location, 0xCu);
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
  }

LABEL_36:
}

void __70__ATXAnchorModelInferenceEngine_registerAnchorEventListenerForAnchor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleAnchorEventForMicrolocationVisitAnchor];
    WeakRetained = v2;
  }
}

- (void)unregisterAnchorEventListeners
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  supportedAnchorsForInference = [(ATXAnchorModelInferenceEngine *)self supportedAnchorsForInference];
  v4 = [supportedAnchorsForInference countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(supportedAnchorsForInference);
        }

        [(ATXAnchorModelInferenceEngine *)self unregisterAnchorEventListenerForAnchor:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [supportedAnchorsForInference countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)unregisterAnchorEventListenerForAnchor:(id)anchor
{
  anchorCopy = anchor;
  if (([objc_opt_class() usesContextStoreForRealTimeNotifications] & 1) == 0)
  {
    anchorType = [objc_opt_class() anchorType];
    if (anchorType == 8 || (anchorType = [objc_opt_class() anchorType], anchorType == 7) || (anchorType = objc_msgSend(objc_opt_class(), "anchorType"), anchorType == 3) || (anchorType = objc_msgSend(objc_opt_class(), "anchorType"), anchorType == 22))
    {
      v6 = __atxlog_handle_anchor(anchorType);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [ATXAnchorModelInferenceEngine unregisterAnchorEventListenerForAnchor:];
      }

      v7 = [objc_opt_class() unregisterForNotificationsWithoutUsingContextStoreForObserver:self];
      v8 = __atxlog_handle_anchor(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [ATXAnchorModelInferenceEngine unregisterAnchorEventListenerForAnchor:];
      }
    }

    if ([objc_opt_class() anchorType] == 19)
    {
      v9 = __atxlog_handle_anchor(19);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ATXAnchorModelInferenceEngine unregisterAnchorEventListenerForAnchor:];
      }

      if (self->_microLocationSchedulerToken)
      {
        mEMORY[0x277CEBC98] = [MEMORY[0x277CEBC98] sharedInstance];
        [mEMORY[0x277CEBC98] unSubscribeWithToken:self->_microLocationSchedulerToken];

        microLocationSchedulerToken = self->_microLocationSchedulerToken;
        self->_microLocationSchedulerToken = 0;
      }

      v13 = __atxlog_handle_anchor(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ATXAnchorModelInferenceEngine unregisterAnchorEventListenerForAnchor:];
      }
    }
  }
}

- (void)handleLOIEntrance
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ATXAnchorModelInferenceEngine_handleLOIEntrance__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__ATXAnchorModelInferenceEngine_handleLOIEntrance__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_new();
  [v2 handleAnchorEventForAnchor:v3];
}

- (void)handleLOIExit
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ATXAnchorModelInferenceEngine_handleLOIExit__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __46__ATXAnchorModelInferenceEngine_handleLOIExit__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_new();
  [v2 handleAnchorEventForAnchor:v3];
}

- (void)setupContextStoreListenerForAnchor:(id)anchor context:(id)context
{
  anchorCopy = anchor;
  contextCopy = context;
  v8 = __atxlog_handle_anchor(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelInferenceEngine registerAnchorEventListenerForAnchor:];
  }

  [(ATXAnchorModelInferenceEngine *)self registerForWakingNotificationForAnchor:anchorCopy cdContext:contextCopy];
}

- (void)registerForWakingNotificationForAnchor:(id)anchor cdContext:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  contextCopy = context;
  v8 = __atxlog_handle_anchor(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = anchorCopy;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "Inference: (%@) Registering with ContextStore for Anchor Event callbacks.", &v11, 0xCu);
  }

  [(ATXAnchorModelInferenceEngine *)self registerForAnchorEntrance:anchorCopy cdContext:contextCopy];
  [(ATXAnchorModelInferenceEngine *)self registerForAnchorExit:anchorCopy cdContext:contextCopy];

  v10 = __atxlog_handle_anchor(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = anchorCopy;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Done registering with the ContextStore.", &v11, 0xCu);
  }
}

- (void)registerForAnchorEntrance:(id)entrance cdContext:(id)context
{
  entranceCopy = entrance;
  contextCopy = context;
  v8 = __atxlog_handle_anchor(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelInferenceEngine registerForAnchorEntrance:cdContext:];
  }

  v9 = objc_opt_class();
  v10 = [(ATXAnchorModelInferenceEngine *)self entranceCallbackForAnchor:entranceCopy];
  v11 = [(ATXAnchorModelInferenceEngine *)self notificationIdentifierForAnchor:entranceCopy];
  [v9 registerWithContextStoreForAnchorEntranceWithCallback:v10 notificationId:v11 registrationPersistenceContext:contextCopy];

  v13 = __atxlog_handle_anchor(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelInferenceEngine registerForAnchorEntrance:cdContext:];
  }
}

- (void)registerForAnchorExit:(id)exit cdContext:(id)context
{
  exitCopy = exit;
  contextCopy = context;
  v8 = __atxlog_handle_anchor(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelInferenceEngine registerForAnchorExit:cdContext:];
  }

  invalidationPredicateForContextStoreRegistration = [objc_opt_class() invalidationPredicateForContextStoreRegistration];
  if (invalidationPredicateForContextStoreRegistration)
  {
    v10 = objc_opt_class();
    v11 = [(ATXAnchorModelInferenceEngine *)self exitCallbackForAnchor:exitCopy];
    v12 = [(ATXAnchorModelInferenceEngine *)self exitNotificationIdentifierForAnchor:exitCopy];
    [v10 registerWithContextStoreForAnchorExitWithCallback:v11 notificationId:v12 registrationPersistenceContext:contextCopy];

    v14 = __atxlog_handle_anchor(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerForAnchorExit:cdContext:];
    }
  }

  else
  {
    v14 = __atxlog_handle_anchor(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelInferenceEngine registerForAnchorExit:cdContext:];
    }
  }
}

- (void)retryPreviouslyIncompleteInference
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  inferenceEventsToTryAgain = [v3 inferenceEventsToTryAgain];

  v6 = __atxlog_handle_anchor(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = [inferenceEventsToTryAgain count];
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Retrieved %lu incomplete inference events from Inference Tracker.", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = inferenceEventsToTryAgain;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = __atxlog_handle_anchor(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v12;
          _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Retrying inference event: %@", buf, 0xCu);
        }

        v15 = __atxlog_handle_anchor([(ATXAnchorModelInferenceEngine *)self handleInferenceEvent:v12]);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v12;
          _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Sucessfully finished retrying inference event: %@", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)handleAnchorEventForMicrolocationVisitAnchor
{
  v3 = objc_opt_new();
  v4 = [(ATXAnchorModelInferenceEngine *)self currentDuetEventForAnchor:v3];

  if (v4)
  {
    identifier = [v4 identifier];
    v6 = [(NSUserDefaults *)self->_defaults stringForKey:@"ATXMicrolocationAnchorLastIdentifierKey"];
    v7 = [identifier isEqualToString:v6];

    if (v7)
    {
      v9 = __atxlog_handle_anchor(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Received a high confidence anchor event, but ignoring since it's the same event as what we received last time.", v15, 2u);
      }
    }

    else
    {
      defaults = self->_defaults;
      identifier2 = [v4 identifier];
      [(NSUserDefaults *)defaults setValue:identifier2 forKey:@"ATXMicrolocationAnchorLastIdentifierKey"];

      v12 = [ATXAnchorModelIncompleteInferenceEvent alloc];
      v13 = objc_opt_new();
      v14 = [(ATXAnchorModelIncompleteInferenceEvent *)v12 initWithAnchor:v13 anchorEvent:v4];

      [(ATXAnchorModelInferenceEngine *)self queueHandleInferenceEvent:v14];
    }
  }
}

- (void)handleAnchorEventForIdleTimeBegin
{
  v3 = [ATXScreenLockStateDuetEvent alloc];
  v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:10800.0];
  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:21600.0];
  v9 = [(ATXScreenLockStateDuetEvent *)v3 initWithScreenLockState:1 startDate:v4 endDate:v5];

  v6 = [ATXAnchorModelIncompleteInferenceEvent alloc];
  v7 = objc_opt_new();
  v8 = [(ATXAnchorModelIncompleteInferenceEvent *)v6 initWithAnchor:v7 anchorEvent:v9];

  [(ATXAnchorModelInferenceEngine *)self queueHandleInferenceEvent:v8];
}

- (void)handleAnchorEventForGymArrival
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(ATXAnchorModelInferenceEngine *)self currentDuetEventForAnchor:v3];
  if (v4)
  {
    v5 = [[ATXAnchorModelIncompleteInferenceEvent alloc] initWithAnchor:v3 anchorEvent:v4];
    [(ATXAnchorModelInferenceEngine *)self queueHandleInferenceEvent:v5];
  }

  else
  {
    v6 = __atxlog_handle_anchor(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Unable to retrieve current event for anchor: %@", &v7, 0xCu);
    }
  }
}

- (void)handleAnchorExitEventForGymArrival
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = __atxlog_handle_anchor(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Removing suggestions for anchor due to exit event: %@", &v6, 0xCu);
  }

  v5 = objc_opt_new();
  [v5 clearAllIncompleteInferenceEvents];

  [(ATXAnchorModelPredictionScheduler *)self->_predictionScheduler clearPredictionsForAnchor:v3];
}

- (void)handleAnchorEventForAnchor:(id)anchor
{
  anchorCopy = anchor;
  v5 = [(ATXAnchorModelInferenceEngine *)self currentDuetEventForAnchor:anchorCopy];
  if (v5)
  {
    v6 = [[ATXAnchorModelIncompleteInferenceEvent alloc] initWithAnchor:anchorCopy anchorEvent:v5];
    [(ATXAnchorModelInferenceEngine *)self handleInferenceEvent:v6];
  }

  else
  {
    v7 = __atxlog_handle_anchor(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelInferenceEngine handleAnchorEventForAnchor:];
    }
  }
}

- (id)currentDuetEventForAnchor:(id)anchor
{
  anchorCopy = anchor;
  v4 = [objc_alloc(objc_msgSend(objc_msgSend(objc_opt_class() "supportedDuetDataProviderClass")];
  if (([objc_opt_class() anchorType] & 0xFFFFFFFFFFFFFFFELL) != 0x14)
  {
LABEL_9:
    v6 = v4;
    goto LABEL_10;
  }

  if (![objc_opt_class() isActive])
  {
    v7 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v8 = __atxlog_handle_anchor(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelInferenceEngine currentDuetEventForAnchor:];
    }

    goto LABEL_9;
  }

  [objc_opt_class() secondsOfInfluence];
  v6 = [v4 convertToUpcomingCommuteEventWithWindowDuration:?];
LABEL_10:
  v7 = v6;
LABEL_11:

  return v7;
}

- (void)queueHandleInferenceEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ATXAnchorModelInferenceEngine_queueHandleInferenceEvent___block_invoke;
  v7[3] = &unk_278596C10;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

- (void)handleInferenceEvent:(id)event
{
  v28 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  anchor = [eventCopy anchor];

  if (anchor)
  {
    v7 = objc_opt_new();
    [v7 trackInferenceStartedForInferenceEvent:eventCopy];

    v9 = __atxlog_handle_anchor(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      anchor2 = [eventCopy anchor];
      anchorEvent = [eventCopy anchorEvent];
      v24 = 138412546;
      v25 = anchor2;
      v26 = 2112;
      v27 = anchorEvent;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Inference: Handling anchor event for anchor: %@, anchorEvent: %@", &v24, 0x16u);
    }

    v12 = [ATXAnchorModelAnchorEventHandler alloc];
    anchor3 = [eventCopy anchor];
    anchorEvent2 = [eventCopy anchorEvent];
    v15 = [(ATXAnchorModelAnchorEventHandler *)v12 initWithAnchor:anchor3 anchorEvent:anchorEvent2];

    predictionsForAnchorEvent = [v15 predictionsForAnchorEvent];
    v17 = __atxlog_handle_anchor(predictionsForAnchorEvent);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [predictionsForAnchorEvent count];
      v24 = 134217984;
      v25 = v18;
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "Inference: Generated %lu anchor model predictions. Sending predictions to the scheduler...", &v24, 0xCu);
    }

    predictionScheduler = self->_predictionScheduler;
    anchor4 = [eventCopy anchor];
    [(ATXAnchorModelPredictionScheduler *)predictionScheduler schedulePredictions:predictionsForAnchorEvent anchor:anchor4];

    v22 = __atxlog_handle_anchor(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "Inference: Sent predictions to scheduler. [Done]", &v24, 2u);
    }

    v23 = objc_opt_new();
    [v23 trackInferenceFinishedForInferenceEvent:eventCopy];
  }

  else
  {
    v15 = __atxlog_handle_anchor(v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelInferenceEngine handleInferenceEvent:];
    }
  }
}

- (id)notificationIdentifierForAnchor:(id)anchor
{
  v3 = MEMORY[0x277CCACA8];
  anchorCopy = anchor;
  v5 = [v3 alloc];
  anchorTypeString = [anchorCopy anchorTypeString];

  v7 = [v5 initWithFormat:@"com.apple.duetexpertd.ATXAnchorModel.%@", anchorTypeString];

  return v7;
}

- (id)exitNotificationIdentifierForAnchor:(id)anchor
{
  v3 = MEMORY[0x277CCACA8];
  anchorCopy = anchor;
  v5 = [v3 alloc];
  anchorTypeString = [anchorCopy anchorTypeString];

  v7 = [v5 initWithFormat:@"com.apple.duetexpertd.ATXAnchorModel.invalidate.%@", anchorTypeString];

  return v7;
}

- (id)entranceCallbackForAnchor:(id)anchor
{
  anchorCopy = anchor;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__ATXAnchorModelInferenceEngine_entranceCallbackForAnchor___block_invoke;
  aBlock[3] = &unk_2785A1DC8;
  v10 = anchorCopy;
  v5 = anchorCopy;
  objc_copyWeak(&v11, &location);
  v6 = _Block_copy(aBlock);
  v7 = _Block_copy(v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __59__ATXAnchorModelInferenceEngine_entranceCallbackForAnchor___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_anchor(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Anchor Event listener called, %@. Generating new predictions", buf, 0x16u);
  }

  v6 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && [objc_opt_class() shouldProcessContextStoreNotification])
  {
    v8 = WeakRetained[4];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__ATXAnchorModelInferenceEngine_entranceCallbackForAnchor___block_invoke_60;
    block[3] = &unk_278597828;
    block[4] = WeakRetained;
    v10 = *(a1 + 32);
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (id)exitCallbackForAnchor:(id)anchor
{
  anchorCopy = anchor;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__ATXAnchorModelInferenceEngine_exitCallbackForAnchor___block_invoke;
  aBlock[3] = &unk_2785A1DC8;
  v10 = anchorCopy;
  v5 = anchorCopy;
  objc_copyWeak(&v11, &location);
  v6 = _Block_copy(aBlock);
  v7 = _Block_copy(v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __55__ATXAnchorModelInferenceEngine_exitCallbackForAnchor___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_anchor(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Exit Anchor Event listener called, %@. Clearing predictions.", buf, 0x16u);
  }

  v6 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && [objc_opt_class() shouldProcessContextStoreNotification])
  {
    v8 = WeakRetained[4];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__ATXAnchorModelInferenceEngine_exitCallbackForAnchor___block_invoke_62;
    block[3] = &unk_278597828;
    block[4] = WeakRetained;
    v10 = *(a1 + 32);
    v11 = v6;
    dispatch_async(v8, block);
  }
}

id __55__ATXAnchorModelInferenceEngine_exitCallbackForAnchor___block_invoke_62(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 clearAllIncompleteInferenceEvents];

  v4 = __atxlog_handle_anchor([*(a1[4] + 16) clearPredictionsForAnchor:a1[5]]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[5];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Inference: (%@) Done clearing predictions.", &v7, 0xCu);
  }

  return objc_opt_self();
}

@end