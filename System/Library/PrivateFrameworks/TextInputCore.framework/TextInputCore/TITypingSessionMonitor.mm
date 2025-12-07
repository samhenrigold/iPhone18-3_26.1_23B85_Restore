@interface TITypingSessionMonitor
+ (BOOL)shouldRecordSession:(id)session;
- (TIBiomeObserver)biomeObserver;
- (TICoreAnalyticsEventDispatcher)coreAnalyticsEventDispatcher;
- (TIDPEventDispatcher)differentialPrivacyEventDispatcher;
- (TIKBUserModel)userModel;
- (TISKMetricCollector)sensorKitMetricCollector;
- (TITypingDESRecordWriter)desRecordWriter;
- (TITypingSession)currentTypingSession;
- (TITypingSessionMonitor)initWithConfig:(id)config metricDescriptorRegistry:(id)registry;
- (id)currentInteractionObservers;
- (id)observeSession:(id)session sessionParams:(id)params;
- (id)resetInteractionObserversForNextSession;
- (void)_lazyLoadAggregatedEventObservers;
- (void)_loadAggregatedEventObservers;
- (void)_loadInteractionObservers;
- (void)acceptingCandidateWithTrigger:(id)trigger;
- (void)addDrawInputWithSyllableCount:(unint64_t)count keyboardState:(id)state;
- (void)addKeyInput:(id)input keyboardState:(id)state;
- (void)addTouchEvent:(id)event;
- (void)candidateAccepted:(id)accepted withInput:(id)input documentState:(id)state inputContext:(id)context inputStem:(id)stem predictionBarHit:(BOOL)hit useCandidateSelection:(BOOL)selection candidateIndex:(int64_t)self0 keyboardState:(id)self1;
- (void)candidatesOffered:(id)offered keyboardState:(id)state;
- (void)changingContextWithTrigger:(id)trigger;
- (void)contextDidChange:(id)change wordDelete:(BOOL)delete cursorMoved:(BOOL)moved extendsPriorWord:(BOOL)word inWord:(id)inWord range:(_NSRange)range selectionLocation:(unint64_t)location keyboardState:(id)self0;
- (void)endSessionWithInteractionObservers:(id)observers sessionParams:(id)params timestamp:(id)timestamp;
- (void)layoutDidChange:(id)change keyboardState:(id)state;
- (void)setClientID:(id)d keyboardState:(id)state;
- (void)tearDown;
@end

@implementation TITypingSessionMonitor

- (id)currentInteractionObservers
{
  interactionObservers = self->_interactionObservers;
  if (!interactionObservers)
  {
    [(TITypingSessionMonitor *)self _loadInteractionObservers];
    interactionObservers = self->_interactionObservers;
  }

  return interactionObservers;
}

- (void)_loadInteractionObservers
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [TITypingSession alloc];
  locale = [(TITypingSessionMonitor *)self locale];
  v6 = [(TITypingSession *)v4 initWithLocale:locale keyboardLayout:0];

  [v3 addObject:v6];
  date = [MEMORY[0x277CBEAA8] date];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * v12++) startSessionWithTimestamp:{date, v15}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [v8 copy];
  interactionObservers = self->_interactionObservers;
  self->_interactionObservers = v13;
}

- (TITypingDESRecordWriter)desRecordWriter
{
  desRecordWriter = self->_desRecordWriter;
  if (!desRecordWriter)
  {
    v4 = objc_alloc_init(TITypingDESRecordWriter);
    v5 = self->_desRecordWriter;
    self->_desRecordWriter = v4;

    desRecordWriter = self->_desRecordWriter;
  }

  return desRecordWriter;
}

- (id)observeSession:(id)session sessionParams:(id)params
{
  v41 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  [sessionCopy setSessionParams:params];
  featureUsageMetricsCache = [(TITypingSessionMonitor *)self featureUsageMetricsCache];
  [sessionCopy setFeatureUsageMetricsCache:featureUsageMetricsCache];

  [(TITypingSessionMonitor *)self _lazyLoadAggregatedEventObservers];
  if (([sessionCopy didReceiveSecureFieldEvent] & 1) != 0 || !-[NSMutableArray count](self->_aggregatedEventObservers, "count") && (-[TITypingSessionMonitor config](self, "config"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "usesDODMLLogging"), v9, !v10))
  {
    v8 = 0;
    goto LABEL_21;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2019;
  v38 = __Block_byref_object_dispose__2020;
  v39 = os_transaction_create();
  v8 = [[TITypingSessionAligned alloc] initWithSession:sessionCopy];
  alignedEntries = [(TITypingSessionAligned *)v8 alignedEntries];
  if (![alignedEntries count])
  {
    goto LABEL_11;
  }

  layouts = [(TITypingSessionAligned *)v8 layouts];
  if (![layouts count] || !+[TITypingSessionMonitor shouldRecordSession:](TITypingSessionMonitor, "shouldRecordSession:", sessionCopy))
  {

LABEL_11:
    goto LABEL_12;
  }

  config = [(TITypingSessionMonitor *)self config];
  usesDODMLLogging = [config usesDODMLLogging];

  if (!usesDODMLLogging)
  {
LABEL_12:
    desRecordWriter = v35[5];
    v35[5] = 0;
    goto LABEL_13;
  }

  desRecordWriter = [(TITypingSessionMonitor *)self desRecordWriter];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __55__TITypingSessionMonitor_observeSession_sessionParams___block_invoke;
  v33[3] = &unk_27872F598;
  v33[4] = &v34;
  [desRecordWriter storeAlignedSession:v8 completion:v33];
LABEL_13:

  v16 = os_transaction_create();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = self->_aggregatedEventObservers;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v29 + 1) + 8 * i) sessionDidEnd:sessionCopy aligned:{v8, v29}];
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v29 objects:v40 count:16];
    }

    while (v19);
  }

  userModel = [(TITypingSessionMonitor *)self userModel];
  coreAnalyticsEventDispatcher = [(TITypingSessionMonitor *)self coreAnalyticsEventDispatcher];
  revisionRateAnalyzer = [coreAnalyticsEventDispatcher revisionRateAnalyzer];
  revisionRateAnalysisSummary = [revisionRateAnalyzer revisionRateAnalysisSummary];
  [userModel dispatchFeedbackAnalyzers:sessionCopy aligned:v8 revisionRateAnalysisSummary:revisionRateAnalysisSummary];

  userModel2 = [(TITypingSessionMonitor *)self userModel];
  date = [MEMORY[0x277CBEAA8] date];
  [userModel2 persistForDate:date];

  _Block_object_dispose(&v34, 8);
LABEL_21:

  return v8;
}

void __55__TITypingSessionMonitor_observeSession_sessionParams___block_invoke(uint64_t a1, void *a2, char a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ((a3 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TITypingSessionMonitor observeSession:sessionParams:]_block_invoke";
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  failed to write DESRecord", &v8, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (void)_loadAggregatedEventObservers
{
  array = [MEMORY[0x277CBEB18] array];
  config = [(TITypingSessionMonitor *)self config];
  usesUserModelLogging = [config usesUserModelLogging];

  if (usesUserModelLogging)
  {
    config2 = [(TITypingSessionMonitor *)self config];
    inputMode = [config2 inputMode];
    normalizedIdentifier = [inputMode normalizedIdentifier];
    mEMORY[0x277D6F548] = [MEMORY[0x277D6F548] sharedUserModelDataStore];
    metricDescriptorRegistry = [(TITypingSessionMonitor *)self metricDescriptorRegistry];
    v11 = [TIKBUserModel userModelWithInputMode:normalizedIdentifier userModelDataStore:mEMORY[0x277D6F548] metricDescriptorRegistry:metricDescriptorRegistry fromDate:0];
    userModel = self->_userModel;
    self->_userModel = v11;

    [(NSMutableArray *)array addObject:self->_userModel];
  }

  config3 = [(TITypingSessionMonitor *)self config];
  sensorKitEnabled = [config3 sensorKitEnabled];

  if (sensorKitEnabled)
  {
    config4 = [(TITypingSessionMonitor *)self config];
    inputMode2 = [config4 inputMode];
    config5 = [(TITypingSessionMonitor *)self config];
    sensorKitWordsThreshold = [config5 sensorKitWordsThreshold];
    config6 = [(TITypingSessionMonitor *)self config];
    v20 = +[TISKMetricCollector makeMetricCollector:wordsThreshold:isTesting:](TISKMetricCollector, "makeMetricCollector:wordsThreshold:isTesting:", inputMode2, sensorKitWordsThreshold, [config6 isTesting]);
    sensorKitMetricCollector = self->_sensorKitMetricCollector;
    self->_sensorKitMetricCollector = v20;

    if (self->_sensorKitMetricCollector)
    {
      [(NSMutableArray *)array addObject:?];
    }
  }

  v22 = objc_alloc_init(TICoreAnalyticsEventDispatcher);
  coreAnalyticsEventDispatcher = self->_coreAnalyticsEventDispatcher;
  self->_coreAnalyticsEventDispatcher = v22;

  [(NSMutableArray *)array addObject:self->_coreAnalyticsEventDispatcher];
  v24 = objc_alloc_init(TIDPEventDispatcher);
  differentialPrivacyEventDispatcher = self->_differentialPrivacyEventDispatcher;
  self->_differentialPrivacyEventDispatcher = v24;

  [(NSMutableArray *)array addObject:self->_differentialPrivacyEventDispatcher];
  v26 = objc_alloc_init(TIBiomeObserver);
  biomeObserver = self->_biomeObserver;
  self->_biomeObserver = v26;

  [(NSMutableArray *)array addObject:self->_biomeObserver];
  aggregatedEventObservers = self->_aggregatedEventObservers;
  self->_aggregatedEventObservers = array;
}

- (void)_lazyLoadAggregatedEventObservers
{
  if (!self->_aggregatedEventObservers)
  {
    [(TITypingSessionMonitor *)self _loadAggregatedEventObservers];
  }
}

- (TIBiomeObserver)biomeObserver
{
  [(TITypingSessionMonitor *)self _lazyLoadAggregatedEventObservers];
  biomeObserver = self->_biomeObserver;

  return biomeObserver;
}

- (TIDPEventDispatcher)differentialPrivacyEventDispatcher
{
  [(TITypingSessionMonitor *)self _lazyLoadAggregatedEventObservers];
  differentialPrivacyEventDispatcher = self->_differentialPrivacyEventDispatcher;

  return differentialPrivacyEventDispatcher;
}

- (TICoreAnalyticsEventDispatcher)coreAnalyticsEventDispatcher
{
  [(TITypingSessionMonitor *)self _lazyLoadAggregatedEventObservers];
  coreAnalyticsEventDispatcher = self->_coreAnalyticsEventDispatcher;

  return coreAnalyticsEventDispatcher;
}

- (TISKMetricCollector)sensorKitMetricCollector
{
  [(TITypingSessionMonitor *)self _lazyLoadAggregatedEventObservers];
  sensorKitMetricCollector = self->_sensorKitMetricCollector;

  return sensorKitMetricCollector;
}

- (TIKBUserModel)userModel
{
  [(TITypingSessionMonitor *)self _lazyLoadAggregatedEventObservers];
  userModel = self->_userModel;

  return userModel;
}

- (void)tearDown
{
  if (self->_aggregatedEventObservers)
  {
    TIDispatchAsync();
  }
}

void __34__TITypingSessionMonitor_tearDown__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(*(a1 + 32) + 96);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 tearDown];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)endSessionWithInteractionObservers:(id)observers sessionParams:(id)params timestamp:(id)timestamp
{
  observersCopy = observers;
  paramsCopy = params;
  timestampCopy = timestamp;
  objc_initWeak(&location, self);
  objc_copyWeak(&v17, &location);
  v14 = observersCopy;
  v15 = timestampCopy;
  v16 = paramsCopy;
  v11 = paramsCopy;
  v12 = timestampCopy;
  v13 = observersCopy;
  TIDispatchAsync();

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __85__TITypingSessionMonitor_endSessionWithInteractionObservers_sessionParams_timestamp___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v26;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v26 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v25 + 1) + 8 * i) endSessionWithTimestamp:*(a1 + 40)];
        }

        v5 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v5);
    }

    if (TI_IS_INTERNAL_INSTALL::once_token != -1)
    {
      dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
    }

    if (TI_IS_INTERNAL_INSTALL::is_internal_install)
    {
      v20 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.keyboard"];
      v8 = [v20 BOOLForKey:@"typingSessionNotificationsEnabled"];
      if (TI_IS_INTERNAL_INSTALL::once_token != -1)
      {
        dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
      }

      if (TI_IS_INTERNAL_INSTALL::is_internal_install & v8)
      {
        v9 = [MEMORY[0x277CCA9A0] defaultCenter];
        v8 = 1;
        [v9 postNotificationName:@"com.apple.keyboard.inputAnalytics.keyboardDidSuspend" object:0 userInfo:0 deliverImmediately:1];
      }
    }

    else
    {
      v8 = 0;
      v20 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = *(a1 + 32);
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v15 analyzeSessionWithSessionParams:*(a1 + 48)];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v12);
    }

    v16 = [*(a1 + 56) _typingSessionFromInteractionObservers:*(a1 + 32)];
    v17 = v16;
    if (v16)
    {
      [v16 setSessionParams:*(a1 + 48)];
      [v17 setFeatureUsageMetricsCache:*(*(a1 + 56) + 56)];
      v18 = [WeakRetained observeSession:v17 sessionParams:*(a1 + 48)];
    }

    if (TI_IS_INTERNAL_INSTALL::once_token != -1)
    {
      dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
    }

    if (TI_IS_INTERNAL_INSTALL::is_internal_install & v8)
    {
      v19 = [MEMORY[0x277D6F318] sharedInstance];
      [v19 queueCompletionHandler:&__block_literal_global_2038];
    }
  }
}

void __85__TITypingSessionMonitor_endSessionWithInteractionObservers_sessionParams_timestamp___block_invoke_2()
{
  v0 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v0 postNotificationName:@"com.apple.keyboard.inputAnalytics.sessionObserversDidComplete" object:0 userInfo:0 deliverImmediately:1];
}

- (id)resetInteractionObserversForNextSession
{
  currentInteractionObservers = [(TITypingSessionMonitor *)self currentInteractionObservers];
  interactionObservers = self->_interactionObservers;
  self->_interactionObservers = 0;

  return currentInteractionObservers;
}

- (TITypingSession)currentTypingSession
{
  currentInteractionObservers = [(TITypingSessionMonitor *)self currentInteractionObservers];
  v4 = [(TITypingSessionMonitor *)self _typingSessionFromInteractionObservers:currentInteractionObservers];

  return v4;
}

- (void)setClientID:(id)d keyboardState:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  stateCopy = state;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  currentInteractionObservers = [(TITypingSessionMonitor *)self currentInteractionObservers];
  v9 = [currentInteractionObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(currentInteractionObservers);
        }

        [*(*(&v13 + 1) + 8 * v12++) setClientID:dCopy keyboardState:stateCopy];
      }

      while (v10 != v12);
      v10 = [currentInteractionObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)contextDidChange:(id)change wordDelete:(BOOL)delete cursorMoved:(BOOL)moved extendsPriorWord:(BOOL)word inWord:(id)inWord range:(_NSRange)range selectionLocation:(unint64_t)location keyboardState:(id)self0
{
  wordCopy = word;
  movedCopy = moved;
  deleteCopy = delete;
  v28 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  inWordCopy = inWord;
  stateCopy = state;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(TITypingSessionMonitor *)self currentInteractionObservers];
  v16 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v23 + 1) + 8 * i) contextDidChange:changeCopy wordDelete:deleteCopy cursorMoved:movedCopy extendsPriorWord:wordCopy inWord:inWordCopy range:range.location selectionLocation:range.length keyboardState:{location, stateCopy}];
      }

      v17 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }
}

- (void)changingContextWithTrigger:(id)trigger
{
  v15 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  currentInteractionObservers = [(TITypingSessionMonitor *)self currentInteractionObservers];
  v6 = [currentInteractionObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(currentInteractionObservers);
        }

        [*(*(&v10 + 1) + 8 * v9++) changingContextWithTrigger:triggerCopy];
      }

      while (v7 != v9);
      v7 = [currentInteractionObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)candidateAccepted:(id)accepted withInput:(id)input documentState:(id)state inputContext:(id)context inputStem:(id)stem predictionBarHit:(BOOL)hit useCandidateSelection:(BOOL)selection candidateIndex:(int64_t)self0 keyboardState:(id)self1
{
  hitCopy = hit;
  v34 = *MEMORY[0x277D85DE8];
  acceptedCopy = accepted;
  inputCopy = input;
  stateCopy = state;
  contextCopy = context;
  stemCopy = stem;
  keyboardStateCopy = keyboardState;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(TITypingSessionMonitor *)self currentInteractionObservers];
  v21 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(obj);
        }

        LOBYTE(v25) = selection;
        [*(*(&v29 + 1) + 8 * i) candidateAccepted:acceptedCopy withInput:inputCopy documentState:stateCopy inputContext:contextCopy inputStem:stemCopy predictionBarHit:hitCopy useCandidateSelection:v25 candidateIndex:index keyboardState:keyboardStateCopy];
      }

      v22 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v22);
  }
}

- (void)acceptingCandidateWithTrigger:(id)trigger
{
  v15 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  currentInteractionObservers = [(TITypingSessionMonitor *)self currentInteractionObservers];
  v6 = [currentInteractionObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(currentInteractionObservers);
        }

        [*(*(&v10 + 1) + 8 * v9++) acceptingCandidateWithTrigger:triggerCopy];
      }

      while (v7 != v9);
      v7 = [currentInteractionObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)candidatesOffered:(id)offered keyboardState:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  offeredCopy = offered;
  stateCopy = state;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  currentInteractionObservers = [(TITypingSessionMonitor *)self currentInteractionObservers];
  v9 = [currentInteractionObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(currentInteractionObservers);
        }

        [*(*(&v13 + 1) + 8 * v12++) candidatesOffered:offeredCopy keyboardState:stateCopy];
      }

      while (v10 != v12);
      v10 = [currentInteractionObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)layoutDidChange:(id)change keyboardState:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  stateCopy = state;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  currentInteractionObservers = [(TITypingSessionMonitor *)self currentInteractionObservers];
  v9 = [currentInteractionObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(currentInteractionObservers);
        }

        [*(*(&v13 + 1) + 8 * v12++) layoutDidChange:changeCopy keyboardState:stateCopy];
      }

      while (v10 != v12);
      v10 = [currentInteractionObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)addTouchEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  currentInteractionObservers = [(TITypingSessionMonitor *)self currentInteractionObservers];
  v6 = [currentInteractionObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(currentInteractionObservers);
        }

        [*(*(&v10 + 1) + 8 * v9++) addTouchEvent:eventCopy];
      }

      while (v7 != v9);
      v7 = [currentInteractionObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addDrawInputWithSyllableCount:(unint64_t)count keyboardState:(id)state
{
  v17 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  currentInteractionObservers = [(TITypingSessionMonitor *)self currentInteractionObservers];
  v8 = [currentInteractionObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(currentInteractionObservers);
        }

        [*(*(&v12 + 1) + 8 * v11++) addDrawInputWithSyllableCount:count keyboardState:stateCopy];
      }

      while (v9 != v11);
      v9 = [currentInteractionObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)addKeyInput:(id)input keyboardState:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  stateCopy = state;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  currentInteractionObservers = [(TITypingSessionMonitor *)self currentInteractionObservers];
  v9 = [currentInteractionObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(currentInteractionObservers);
        }

        [*(*(&v13 + 1) + 8 * v12++) addKeyInput:inputCopy keyboardState:stateCopy];
      }

      while (v10 != v12);
      v10 = [currentInteractionObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (TITypingSessionMonitor)initWithConfig:(id)config metricDescriptorRegistry:(id)registry
{
  configCopy = config;
  registryCopy = registry;
  v24.receiver = self;
  v24.super_class = TITypingSessionMonitor;
  v9 = [(TITypingSessionMonitor *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, config);
    inputMode = [configCopy inputMode];
    locale = [inputMode locale];
    locale = v10->_locale;
    v10->_locale = locale;

    objc_storeStrong(&v10->_metricDescriptorRegistry, registry);
    v14 = [TIFeatureUsageMetricsCache alloc];
    inputMode2 = [configCopy inputMode];
    normalizedIdentifier = [inputMode2 normalizedIdentifier];
    v17 = [(TIFeatureUsageMetricsCache *)v14 initWithInputMode:normalizedIdentifier metricDescriptorRegistry:registryCopy];
    featureUsageMetricsCache = v10->_featureUsageMetricsCache;
    v10->_featureUsageMetricsCache = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_UTILITY, 0);

    v21 = dispatch_queue_create("com.apple.textInput.TypingSessionMonitor", v20);
    workQueue = v10->_workQueue;
    v10->_workQueue = v21;
  }

  return v10;
}

+ (BOOL)shouldRecordSession:(id)session
{
  v3 = shouldRecordSession__onceToken;
  sessionCopy = session;
  if (v3 != -1)
  {
    dispatch_once(&shouldRecordSession__onceToken, &__block_literal_global_38);
  }

  v5 = shouldRecordSession__allowlistedAppIDs;
  applicationID = [sessionCopy applicationID];

  v7 = [v5 containsObject:applicationID];
  return v7;
}

uint64_t __46__TITypingSessionMonitor_shouldRecordSession___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.MobileSMS", @"com.apple.MobileMail", @"com.apple.mobilesafari", @"com.apple.mobilenotes", @"com.apple.Spotlight", @"com.apple.mobilecal", @"com.apple.Maps", 0}];
  v1 = shouldRecordSession__allowlistedAppIDs;
  shouldRecordSession__allowlistedAppIDs = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end