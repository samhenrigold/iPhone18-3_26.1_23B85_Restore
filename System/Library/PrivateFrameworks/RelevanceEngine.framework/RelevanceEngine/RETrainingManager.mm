@interface RETrainingManager
- (RETrainingManager)initWithRelevanceEngine:(id)engine;
- (void)_performTraining:(BOOL)training completion:(id)completion;
- (void)_performTrainingForPredictionElement:(id)element isPositiveEvent:(BOOL)event interaction:(id)interaction context:(id)context;
- (void)_queue_trainElementWithIdentifier:(id)identifier relevanceProviders:(id)providers featureMap:(id)map isPositiveEvent:(BOOL)event interaction:(id)interaction context:(id)context;
- (void)addTrainingContext:(id)context;
- (void)dealloc;
- (void)flushTraining;
- (void)makeContextCurrent:(id)current;
- (void)manuallyPerformTrainingWithCompletion:(id)completion;
- (void)performTrainingForElement:(id)element isPositiveEvent:(BOOL)event interaction:(id)interaction;
- (void)performTrainingForElement:(id)element isPositiveEvent:(BOOL)event interaction:(id)interaction context:(id)context;
- (void)performTrainingForElementWithIdentifier:(id)identifier isPositiveEvent:(BOOL)event interaction:(id)interaction;
- (void)performTrainingForElementWithIdentifier:(id)identifier isPositiveEvent:(BOOL)event interaction:(id)interaction context:(id)context;
- (void)removeTrainingContext:(id)context;
@end

@implementation RETrainingManager

- (RETrainingManager)initWithRelevanceEngine:(id)engine
{
  engineCopy = engine;
  v30.receiver = self;
  v30.super_class = RETrainingManager;
  v5 = [(RERelevanceEngineSubsystem *)&v30 initWithRelevanceEngine:engineCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    trainingContexts = v5->_trainingContexts;
    v5->_trainingContexts = v6;

    configuration = [engineCopy configuration];
    v9 = +[RETrainingScheduler schedulerWithBehavior:](RETrainingScheduler, "schedulerWithBehavior:", [configuration trainingBehavior]);
    trainingScheduler = v5->_trainingScheduler;
    v5->_trainingScheduler = v9;

    coordinator = [engineCopy coordinator];
    coordinator = v5->_coordinator;
    v5->_coordinator = coordinator;

    modelManager = [engineCopy modelManager];
    modelManager = v5->_modelManager;
    v5->_modelManager = modelManager;

    queue = [(RERelevanceEngineSubsystem *)v5 queue];
    queue = v5->_queue;
    v5->_queue = queue;

    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    trainingFeatureMaps = v5->_trainingFeatureMaps;
    v5->_trainingFeatureMaps = v17;

    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    trainingContents = v5->_trainingContents;
    v5->_trainingContents = v19;

    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    trainingEvents = v5->_trainingEvents;
    v5->_trainingEvents = v21;

    v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    interactionTypes = v5->_interactionTypes;
    v5->_interactionTypes = v23;

    configuration2 = [engineCopy configuration];
    LODWORD(configuration) = [configuration2 allowsRemoteTraining];

    if (configuration)
    {
      v26 = +[RERemoteTrainingClientListener sharedTrainingClientListener];
      remoteTrainingListener = v5->_remoteTrainingListener;
      v5->_remoteTrainingListener = v26;

      [(RERemoteTrainingClientListener *)v5->_remoteTrainingListener setDelegate:v5];
    }

    logger = [engineCopy logger];
    [logger addLoggable:v5];
  }

  return v5;
}

- (void)dealloc
{
  [(RETrainingManager *)self makeContextCurrent:0];
  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  logger = [relevanceEngine logger];
  [logger removeLoggable:self];

  v5.receiver = self;
  v5.super_class = RETrainingManager;
  [(RERelevanceEngineSubsystem *)&v5 dealloc];
}

- (void)addTrainingContext:(id)context
{
  contextCopy = context;
  v15 = contextCopy;
  if (!contextCopy)
  {
    v11 = *MEMORY[0x277CBE660];
    v12 = @"Training context must be non-nill";
    goto LABEL_5;
  }

  if ([(NSMutableSet *)self->_trainingContexts containsObject:contextCopy])
  {
    v11 = *MEMORY[0x277CBE660];
    v12 = @"Training context already added to relevance engine";
LABEL_5:
    RERaiseInternalException(v11, v12, v5, v6, v7, v8, v9, v10, v14);
    goto LABEL_7;
  }

  [(NSMutableSet *)self->_trainingContexts addObject:v15];
  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  [v15 _configureForRelevanceEngine:relevanceEngine];

LABEL_7:
}

- (void)removeTrainingContext:(id)context
{
  contextCopy = context;
  v14 = contextCopy;
  if (contextCopy)
  {
    if ([(NSMutableSet *)self->_trainingContexts containsObject:contextCopy])
    {
      currentTrainingContext = [(RETrainingManager *)self currentTrainingContext];

      v12 = v14;
      if (currentTrainingContext == v14)
      {
        [(RETrainingManager *)self makeContextCurrent:0];
        v12 = v14;
      }

      [v12 _configureForRelevanceEngine:0];
      [(NSMutableSet *)self->_trainingContexts removeObject:v14];
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Training context must be non-nill", v5, v6, v7, v8, v9, v10, v13);
  }
}

- (void)performTrainingForElementWithIdentifier:(id)identifier isPositiveEvent:(BOOL)event interaction:(id)interaction
{
  eventCopy = event;
  interactionCopy = interaction;
  identifierCopy = identifier;
  currentTrainingContext = [(RETrainingManager *)self currentTrainingContext];
  attributeContext = [currentTrainingContext attributeContext];

  [(RETrainingManager *)self performTrainingForElementWithIdentifier:identifierCopy isPositiveEvent:eventCopy interaction:interactionCopy context:attributeContext];
}

- (void)performTrainingForElement:(id)element isPositiveEvent:(BOOL)event interaction:(id)interaction
{
  eventCopy = event;
  interactionCopy = interaction;
  elementCopy = element;
  currentTrainingContext = [(RETrainingManager *)self currentTrainingContext];
  attributeContext = [currentTrainingContext attributeContext];

  [(RETrainingManager *)self performTrainingForElement:elementCopy isPositiveEvent:eventCopy interaction:interactionCopy context:attributeContext];
}

- (void)performTrainingForElementWithIdentifier:(id)identifier isPositiveEvent:(BOOL)event interaction:(id)interaction context:(id)context
{
  identifierCopy = identifier;
  interactionCopy = interaction;
  contextCopy = context;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__RETrainingManager_performTrainingForElementWithIdentifier_isPositiveEvent_interaction_context___block_invoke;
  block[3] = &unk_2785FB410;
  block[4] = self;
  v18 = identifierCopy;
  eventCopy = event;
  v19 = contextCopy;
  v20 = interactionCopy;
  v14 = interactionCopy;
  v15 = contextCopy;
  v16 = identifierCopy;
  dispatch_async(queue, block);
}

void __97__RETrainingManager_performTrainingForElementWithIdentifier_isPositiveEvent_interaction_context___block_invoke(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 40) featureMapForElementId:*(a1 + 40) trainingContext:*(a1 + 48)];
  v2 = [*(*(a1 + 32) + 40) elementForElementId:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v2 relevanceProviders];
  [v3 _queue_trainElementWithIdentifier:v4 relevanceProviders:v5 featureMap:v6 isPositiveEvent:*(a1 + 64) interaction:*(a1 + 56) context:*(a1 + 48)];
}

- (void)performTrainingForElement:(id)element isPositiveEvent:(BOOL)event interaction:(id)interaction context:(id)context
{
  elementCopy = element;
  interactionCopy = interaction;
  contextCopy = context;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__RETrainingManager_performTrainingForElement_isPositiveEvent_interaction_context___block_invoke;
  block[3] = &unk_2785FB410;
  v18 = elementCopy;
  selfCopy = self;
  eventCopy = event;
  v20 = contextCopy;
  v21 = interactionCopy;
  v14 = interactionCopy;
  v15 = contextCopy;
  v16 = elementCopy;
  dispatch_async(queue, block);
}

void __83__RETrainingManager_performTrainingForElement_isPositiveEvent_interaction_context___block_invoke(uint64_t a1)
{
  v6 = [REPredictionElement predictionElementFromElement:*(a1 + 32)];
  v2 = [*(*(a1 + 40) + 40) featureMapForElement:v6 trainingContext:*(a1 + 48)];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) identifier];
  v5 = [*(a1 + 32) relevanceProviders];
  [v3 _queue_trainElementWithIdentifier:v4 relevanceProviders:v5 featureMap:v2 isPositiveEvent:*(a1 + 64) interaction:*(a1 + 56) context:*(a1 + 48)];
}

- (void)_performTrainingForPredictionElement:(id)element isPositiveEvent:(BOOL)event interaction:(id)interaction context:(id)context
{
  eventCopy = event;
  coordinator = self->_coordinator;
  contextCopy = context;
  interactionCopy = interaction;
  elementCopy = element;
  v16 = [(RELiveElementCoordinator *)coordinator featureMapForElement:elementCopy trainingContext:contextCopy];
  identifier = [elementCopy identifier];
  relevanceProviders = [elementCopy relevanceProviders];

  [(RETrainingManager *)self _queue_trainElementWithIdentifier:identifier relevanceProviders:relevanceProviders featureMap:v16 isPositiveEvent:eventCopy interaction:interactionCopy context:contextCopy];
}

- (void)flushTraining
{
  dispatch_assert_queue_not_V2(self->_queue);
  dispatch_sync(self->_queue, &__block_literal_global_20);
  dispatch_sync(self->_queue, &__block_literal_global_12);
  modelManager = self->_modelManager;

  [(REMLModelManager *)modelManager flushTraining];
}

- (void)_queue_trainElementWithIdentifier:(id)identifier relevanceProviders:(id)providers featureMap:(id)map isPositiveEvent:(BOOL)event interaction:(id)interaction context:(id)context
{
  eventCopy = event;
  v43 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  providersCopy = providers;
  mapCopy = map;
  interactionCopy = interaction;
  contextCopy = context;
  v16 = RELogForDomain(4);
  keywords = v16;
  if (mapCopy)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v26 = @"negative";
      *buf = 138412802;
      v38 = identifierCopy;
      v39 = 2112;
      if (eventCopy)
      {
        v26 = @"positive";
      }

      v40 = v26;
      v41 = 2112;
      v42 = interactionCopy;
      _os_log_debug_impl(&dword_22859F000, keywords, OS_LOG_TYPE_DEBUG, "Training for element %@ %@ %@", buf, 0x20u);
    }

    [(NSMutableArray *)self->_trainingFeatureMaps addObject:mapCopy, contextCopy];
    trainingEvents = self->_trainingEvents;
    v19 = [MEMORY[0x277CCABB0] numberWithBool:eventCopy];
    [(NSMutableArray *)trainingEvents addObject:v19];

    [(NSMutableArray *)self->_interactionTypes addObject:interactionCopy];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = providersCopy;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v21)
    {
      v22 = *v33;
      keywords = MEMORY[0x277CBEBF8];
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v32 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            keywords = [v24 keywords];
            goto LABEL_16;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      keywords = MEMORY[0x277CBEBF8];
    }

LABEL_16:

    [(NSMutableArray *)self->_trainingContents addObject:keywords];
    objc_initWeak(buf, self);
    trainingScheduler = self->_trainingScheduler;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __121__RETrainingManager__queue_trainElementWithIdentifier_relevanceProviders_featureMap_isPositiveEvent_interaction_context___block_invoke;
    v30[3] = &unk_2785F9A90;
    objc_copyWeak(&v31, buf);
    [(RETrainingScheduler *)trainingScheduler performTask:v30];
    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = identifierCopy;
    _os_log_impl(&dword_22859F000, keywords, OS_LOG_TYPE_DEFAULT, "Dropping training for element %@ because we couldn't get its feature map", buf, 0xCu);
  }
}

void __121__RETrainingManager__queue_trainElementWithIdentifier_relevanceProviders_featureMap_isPositiveEvent_interaction_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performTraining:0 completion:0];
}

- (void)manuallyPerformTrainingWithCompletion:(id)completion
{
  trainingScheduler = self->_trainingScheduler;
  completionCopy = completion;
  [(RETrainingScheduler *)trainingScheduler cancelPendindTasks];
  [(RETrainingManager *)self _performTraining:1 completion:completionCopy];
}

- (void)_performTraining:(BOOL)training completion:(id)completion
{
  completionCopy = completion;
  if (training || !RETrainingSimulationIsCurrentlyActive())
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__RETrainingManager__performTraining_completion___block_invoke;
    block[3] = &unk_2785FA498;
    block[4] = self;
    trainingCopy = training;
    v9 = completionCopy;
    dispatch_async(queue, block);
  }

  else if (completionCopy)
  {
    dispatch_async(self->_queue, completionCopy);
  }
}

void __49__RETrainingManager__performTraining_completion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 88) count])
  {
    v3 = *(a1 + 32);
    [*(v3 + 48) performTrainingWithFeatureMaps:*(v3 + 88) content:*(v3 + 96) events:*(v3 + 104) interactions:*(v3 + 112) purgeCaches:*(a1 + 48) completion:*(a1 + 40)];
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    v5 = *(a1 + 32);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;

    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    v8 = *(a1 + 32);
    v9 = *(v8 + 96);
    *(v8 + 96) = v7;

    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    v11 = *(a1 + 32);
    v12 = *(v11 + 104);
    *(v11 + 104) = v10;

    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    v14 = *(a1 + 32);
    v15 = *(v14 + 112);
    *(v14 + 112) = v13;
  }

  objc_autoreleasePoolPop(v2);
}

- (void)makeContextCurrent:(id)current
{
  currentCopy = current;
  currentTrainingContext = [(RETrainingManager *)self currentTrainingContext];
  if (currentTrainingContext != currentCopy)
  {
    [currentTrainingContext _willResignCurrent];
    [currentCopy _willBecomeCurrent];
    [(RETrainingManager *)self setCurrentTrainingContext:currentCopy];
    [currentTrainingContext _didResignCurrent];
    [currentCopy _didBecomeCurrent];
  }
}

@end