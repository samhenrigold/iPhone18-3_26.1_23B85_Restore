@interface ATXContextHeuristics
- (ATXContextHeuristics)initWithLocationManager:(id)manager;
- (ATXContextHeuristicsDelegate)delegate;
- (BOOL)_queue_refreshResultsForHeuristics:(id)heuristics;
- (id)_criteriaForRefreshJobOnDate:(id)date;
- (void)_queue_cleanupTimeTriggers;
- (void)_queue_refreshResultsForAllHeuristicsWithCompletionHandler:(id)handler;
- (void)_queue_sendRelevantSuggestionsToBlending;
- (void)_queue_updateHeuristicName:(id)name withRefreshTriggers:(id)triggers;
- (void)_setRefreshCTSJobForCriteria:(id)criteria fireDate:(id)date forHeuristics:(id)heuristics;
- (void)donateSuggestions:(id)suggestions forHeuristic:(id)heuristic;
- (void)informationHeuristicRefreshTrigger:(id)trigger didTriggerRefreshForHeuristics:(id)heuristics;
- (void)refreshResultsForAllHeuristicsPendingRefreshWithCompletionHandler:(id)handler;
@end

@implementation ATXContextHeuristics

- (ATXContextHeuristics)initWithLocationManager:(id)manager
{
  location[15] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v66.receiver = self;
  v66.super_class = ATXContextHeuristics;
  v5 = [(ATXContextHeuristics *)&v66 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_locationManager, manager);
    v7 = objc_opt_new();
    resultsCache = v6->_resultsCache;
    v6->_resultsCache = v7;

    v9 = objc_opt_new();
    heuristicRefreshTriggers = v6->_heuristicRefreshTriggers;
    v6->_heuristicRefreshTriggers = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    attr = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_BACKGROUND, 0);

    v12 = dispatch_queue_create("ATXContextHeuristicsRefresh", attr);
    queue = v6->_queue;
    v6->_queue = v12;

    v14 = objc_opt_class();
    v62 = NSStringFromClass(v14);
    location[0] = v62;
    v15 = objc_opt_class();
    v61 = NSStringFromClass(v15);
    location[1] = v61;
    v16 = objc_opt_class();
    v60 = NSStringFromClass(v16);
    location[2] = v60;
    v17 = objc_opt_class();
    v59 = NSStringFromClass(v17);
    location[3] = v59;
    v18 = objc_opt_class();
    v58 = NSStringFromClass(v18);
    location[4] = v58;
    v19 = objc_opt_class();
    v57 = NSStringFromClass(v19);
    location[5] = v57;
    v20 = objc_opt_class();
    v55 = NSStringFromClass(v20);
    location[6] = v55;
    v21 = objc_opt_class();
    v54 = NSStringFromClass(v21);
    location[7] = v54;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    location[8] = v23;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    location[9] = v25;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    location[10] = v27;
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    location[11] = v29;
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    location[12] = v31;
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    location[13] = v33;
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    location[14] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:location count:15];
    v37 = [v36 mutableCopy];

    v38 = _os_feature_enabled_impl();
    if (v38)
    {
      v39 = __atxlog_handle_context_heuristic(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E3DF000, v39, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: zkw_commute feature flag ON, making commute suggestions", buf, 2u);
      }

      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      [v37 addObject:v41];

      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      [v37 addObject:v43];
    }

    v44 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v37];

    v45 = [v44 mutableCopy];
    heuristicsPendingRefresh = v6->_heuristicsPendingRefresh;
    v6->_heuristicsPendingRefresh = v45;

    objc_initWeak(location, v6);
    v47 = objc_alloc(MEMORY[0x277D42628]);
    v48 = v6->_queue;
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __48__ATXContextHeuristics_initWithLocationManager___block_invoke;
    v64[3] = &unk_278C3BBB8;
    objc_copyWeak(&v65, location);
    v49 = [v47 initWithQueue:v48 operation:v64];
    coalescedRefreshOperation = v6->_coalescedRefreshOperation;
    v6->_coalescedRefreshOperation = v49;

    v52 = __atxlog_handle_context_heuristic(v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3DF000, v52, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: initialized", buf, 2u);
    }

    objc_destroyWeak(&v65);
    objc_destroyWeak(location);
  }

  return v6;
}

void __48__ATXContextHeuristics_initWithLocationManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _queue_refreshResultsForAllHeuristicsWithCompletionHandler:0];
  }

  else
  {
    v3 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __48__ATXContextHeuristics_initWithLocationManager___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

- (void)refreshResultsForAllHeuristicsPendingRefreshWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__ATXContextHeuristics_refreshResultsForAllHeuristicsPendingRefreshWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C3BBE0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)donateSuggestions:(id)suggestions forHeuristic:(id)heuristic
{
  suggestionsCopy = suggestions;
  heuristicCopy = heuristic;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ATXContextHeuristics_donateSuggestions_forHeuristic___block_invoke;
  block[3] = &unk_278C3BC08;
  v12 = suggestionsCopy;
  v13 = heuristicCopy;
  selfCopy = self;
  v9 = heuristicCopy;
  v10 = suggestionsCopy;
  dispatch_async(queue, block);
}

uint64_t __55__ATXContextHeuristics_donateSuggestions_forHeuristic___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_context_heuristic(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(a1 + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_23E3DF000, v2, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: donating [%lu] to %@", &v6, 0x16u);
  }

  [*(*(a1 + 48) + 40) setSuggestions:*(a1 + 32) forKey:*(a1 + 40)];
  return [*(a1 + 48) _queue_sendRelevantSuggestionsToBlending];
}

- (void)informationHeuristicRefreshTrigger:(id)trigger didTriggerRefreshForHeuristics:(id)heuristics
{
  heuristicsCopy = heuristics;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__ATXContextHeuristics_informationHeuristicRefreshTrigger_didTriggerRefreshForHeuristics___block_invoke;
  v8[3] = &unk_278C3BC30;
  v9 = heuristicsCopy;
  selfCopy = self;
  v7 = heuristicsCopy;
  dispatch_async(queue, v8);
}

uint64_t __90__ATXContextHeuristics_informationHeuristicRefreshTrigger_didTriggerRefreshForHeuristics___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_context_heuristic(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_23E3DF000, v2, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: add refresh for %@", &v5, 0xCu);
  }

  [*(*(a1 + 40) + 24) unionSet:*(a1 + 32)];
  return [*(*(a1 + 40) + 48) runAfterDelaySeconds:0 coalescingBehavior:0.5];
}

- (void)_queue_updateHeuristicName:(id)name withRefreshTriggers:(id)triggers
{
  v67 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  triggersCopy = triggers;
  dispatch_assert_queue_V2(self->_queue);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v8 = triggersCopy;
  v9 = [v8 countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v56;
    v40 = 138412290;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v56 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v55 + 1) + 8 * i);
        v14 = [(NSMutableSet *)self->_heuristicRefreshTriggers containsObject:v13, v40];
        if ((v14 & 1) == 0)
        {
          v15 = __atxlog_handle_context_heuristic(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = v40;
            v62 = v13;
            _os_log_debug_impl(&dword_23E3DF000, v15, OS_LOG_TYPE_DEBUG, "ATXContextHeuristics: new trigger %@", buf, 0xCu);
          }

          [v13 setDelegate:self];
          [(NSMutableSet *)self->_heuristicRefreshTriggers addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v10);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v16 = self->_heuristicRefreshTriggers;
  v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v52;
    v41 = 138412546;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v52 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v51 + 1) + 8 * j);
        v22 = [v8 containsObject:{v21, v41}];
        v23 = v22;
        v24 = __atxlog_handle_context_heuristic(v22);
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
        if (v23)
        {
          if (v25)
          {
            *buf = v41;
            v62 = nameCopy;
            v63 = 2112;
            v64 = v21;
            _os_log_debug_impl(&dword_23E3DF000, v24, OS_LOG_TYPE_DEBUG, "ATXContextHeuristics: start %@ for trigger %@", buf, 0x16u);
          }

          [v21 startTriggeringRefreshForHeuristicIfNotAlready:nameCopy];
        }

        else
        {
          if (v25)
          {
            *buf = v41;
            v62 = nameCopy;
            v63 = 2112;
            v64 = v21;
            _os_log_debug_impl(&dword_23E3DF000, v24, OS_LOG_TYPE_DEBUG, "ATXContextHeuristics: stop %@ for trigger %@", buf, 0x16u);
          }

          [v21 stopTriggeringRefreshForHeuristicIfAlready:nameCopy];
        }
      }

      v18 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v51 objects:v65 count:16];
    }

    while (v18);
  }

  v42 = nameCopy;

  v26 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v27 = self->_heuristicRefreshTriggers;
  v28 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v48;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v47 + 1) + 8 * k);
        registeredHeuristics = [v32 registeredHeuristics];
        v34 = [registeredHeuristics count];

        if (!v34)
        {
          [v26 addObject:v32];
        }
      }

      v29 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v29);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v35 = v26;
  v36 = [v35 countByEnumeratingWithState:&v43 objects:v59 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v44;
    do
    {
      for (m = 0; m != v37; ++m)
      {
        if (*v44 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [(NSMutableSet *)self->_heuristicRefreshTriggers removeObject:*(*(&v43 + 1) + 8 * m), v42];
      }

      v37 = [v35 countByEnumeratingWithState:&v43 objects:v59 count:16];
    }

    while (v37);
  }
}

- (void)_queue_refreshResultsForAllHeuristicsWithCompletionHandler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v6 = __atxlog_handle_context_heuristic(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    heuristicsPendingRefresh = self->_heuristicsPendingRefresh;
    v9 = 138412290;
    v10 = heuristicsPendingRefresh;
    _os_log_impl(&dword_23E3DF000, v6, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: refresh %@", &v9, 0xCu);
  }

  v8 = [(ATXContextHeuristics *)self _queue_refreshResultsForHeuristics:self->_heuristicsPendingRefresh];
  if (v8)
  {
    [(NSMutableSet *)self->_heuristicsPendingRefresh removeAllObjects];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v8);
  }
}

- (BOOL)_queue_refreshResultsForHeuristics:(id)heuristics
{
  heuristicsCopy = heuristics;
  dispatch_assert_queue_V2(self->_queue);
  if ([heuristicsCopy count])
  {
    sel_getName(a2);
    v6 = os_transaction_create();
    v7 = [objc_alloc(MEMORY[0x277CE89F0]) initWithLocationManager:self->_locationManager];
    heuristicDevice = self->_heuristicDevice;
    self->_heuristicDevice = v7;

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__ATXContextHeuristics__queue_refreshResultsForHeuristics___block_invoke;
    v18[3] = &unk_278C3BC58;
    v18[4] = self;
    [heuristicsCopy enumerateObjectsUsingBlock:v18];
    [(ATXContextHeuristics *)self _queue_sendRelevantSuggestionsToBlending];
    v9 = self->_heuristicDevice;
    self->_heuristicDevice = 0;
  }

  else
  {
    v6 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXContextHeuristics *)v6 _queue_refreshResultsForHeuristics:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  return 1;
}

void __59__ATXContextHeuristics__queue_refreshResultsForHeuristics___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 isEqual:@"kRecomputeRelevant"];
  if (v4)
  {
    v5 = __atxlog_handle_context_heuristic(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_23E3DF000, v5, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: asked to recompute relevant suggestions", &v26, 2u);
    }
  }

  else
  {
    v6 = NSClassFromString(v3);
    v7 = [(objc_class *)v6 conformsToProtocol:&unk_2850AE310];
    v8 = v7;
    v9 = __atxlog_handle_context_heuristic(v7);
    v5 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412290;
        v27 = v3;
        _os_log_impl(&dword_23E3DF000, v5, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: _refreshResultsForHeuristics class %@", &v26, 0xCu);
      }

      v5 = objc_alloc_init(v6);
      v10 = objc_autoreleasePoolPush();
      v11 = [v5 heuristicResultWithEnvironment:*(a1 + 32)];
      objc_autoreleasePoolPop(v10);
      v12 = [v11 suggestions];
      v13 = __atxlog_handle_context_heuristic(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v12 count];
        v26 = 138412546;
        v27 = v3;
        v28 = 2048;
        v29 = v14;
        _os_log_impl(&dword_23E3DF000, v13, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: %@ produced %lu suggestions", &v26, 0x16u);
      }

      [*(*(a1 + 32) + 40) setSuggestions:v12 forKey:v3];
      v15 = [v5 permanentRefreshTriggers];
      v16 = [v11 additionalRefreshTriggers];
      v17 = *(a1 + 32);
      v18 = [v15 setByAddingObjectsFromSet:v16];
      [v17 _queue_updateHeuristicName:v3 withRefreshTriggers:v18];
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __59__ATXContextHeuristics__queue_refreshResultsForHeuristics___block_invoke_cold_1(v5, v19, v20, v21, v22, v23, v24, v25);
    }
  }
}

- (void)_queue_cleanupTimeTriggers
{
  v66 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_opt_new();
  v4 = __atxlog_handle_context_heuristic(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3DF000, v4, OS_LOG_TYPE_DEFAULT, "[Cache] Get date for next change", buf, 2u);
  }

  v50 = v3;
  v5 = [(ATXContextHeuristicCache *)self->_resultsCache nextChangeAfterDate:v3];
  [(ATXInformationHeuristicRefreshTimeTrigger *)self->_earliestCacheRefreshTimeTrigger stopTriggeringRefreshForAllHeuristics];
  earliestCacheRefreshTimeTrigger = self->_earliestCacheRefreshTimeTrigger;
  self->_earliestCacheRefreshTimeTrigger = 0;

  v8 = __atxlog_handle_context_heuristic(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v9)
    {
      *buf = 138412290;
      v61 = v5;
      _os_log_impl(&dword_23E3DF000, v8, OS_LOG_TYPE_DEFAULT, "[Cache] Create time trigger for date: %@", buf, 0xCu);
    }

    v10 = [objc_alloc(MEMORY[0x277CE8A68]) initWithFireDate:v5];
    v11 = self->_earliestCacheRefreshTimeTrigger;
    self->_earliestCacheRefreshTimeTrigger = v10;

    [(ATXInformationHeuristicRefreshTimeTrigger *)self->_earliestCacheRefreshTimeTrigger setDelegate:self];
    [(ATXInformationHeuristicRefreshTimeTrigger *)self->_earliestCacheRefreshTimeTrigger startTriggeringRefreshForHeuristicIfNotAlready:@"kRecomputeRelevant"];
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_23E3DF000, v8, OS_LOG_TYPE_DEFAULT, "[Cache] No time trigger", buf, 2u);
    }
  }

  v49 = v5;
  v12 = self->_earliestCacheRefreshTimeTrigger;
  v51 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  selfCopy = self;
  v13 = self->_heuristicRefreshTriggers;
  v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v56 objects:v65 count:16];
  v15 = v50;
  if (v14)
  {
    v16 = v14;
    v17 = *v57;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v57 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v56 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
          fireDate = [v20 fireDate];
          v22 = [fireDate earlierDate:v15];

          if (v22 == v15)
          {
            if (!v12 || (-[ATXInformationHeuristicRefreshTimeTrigger fireDate](v12, "fireDate"), v23 = objc_claimAutoreleasedReturnValue(), [v20 fireDate], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "earlierDate:", v24), v25 = v12, v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "fireDate"), v27 = objc_claimAutoreleasedReturnValue(), v27, v26, v24, v23, v28 = v26 == v27, v12 = v25, v15 = v50, v28))
            {
              v29 = v20;
              v30 = v12;
              v12 = v29;
            }
          }

          else
          {
            [v20 stopTriggeringRefreshForAllHeuristics];
            [v51 addObject:v20];
          }
        }
      }

      v16 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v16);
  }

  v31 = v12;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v32 = v51;
  v33 = [v32 countByEnumeratingWithState:&v52 objects:v64 count:16];
  p_isa = &selfCopy->super.isa;
  if (v33)
  {
    v35 = v33;
    v36 = *v53;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v53 != v36)
        {
          objc_enumerationMutation(v32);
        }

        [p_isa[2] removeObject:{*(*(&v52 + 1) + 8 * j), selfCopy}];
      }

      v35 = [v32 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v35);
  }

  v39 = __atxlog_handle_context_heuristic(v38);
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
  v41 = v31;
  if (v31)
  {
    if (v40)
    {
      fireDate2 = [(ATXInformationHeuristicRefreshTimeTrigger *)v31 fireDate];
      registeredHeuristics = [(ATXInformationHeuristicRefreshTimeTrigger *)v31 registeredHeuristics];
      *buf = 138412546;
      v61 = fireDate2;
      v62 = 2112;
      v63 = registeredHeuristics;
      _os_log_impl(&dword_23E3DF000, v39, OS_LOG_TYPE_DEFAULT, "[CTS] Schedule refresh at %@ for [%@]", buf, 0x16u);

      v41 = v31;
    }

    fireDate3 = [(ATXInformationHeuristicRefreshTimeTrigger *)v41 fireDate];
    v45 = [p_isa _criteriaForRefreshJobOnDate:fireDate3];
    fireDate4 = [(ATXInformationHeuristicRefreshTimeTrigger *)v31 fireDate];
    registeredHeuristics2 = [(ATXInformationHeuristicRefreshTimeTrigger *)v31 registeredHeuristics];
    [p_isa _setRefreshCTSJobForCriteria:v45 fireDate:fireDate4 forHeuristics:registeredHeuristics2];

    v41 = v31;
    v15 = v50;
  }

  else
  {
    if (v40)
    {
      *buf = 0;
      _os_log_impl(&dword_23E3DF000, v39, OS_LOG_TYPE_DEFAULT, "[CTS] Remove refresh if exists", buf, 2u);
    }

    [p_isa _removeRefreshCTSJob];
  }
}

- (void)_queue_sendRelevantSuggestionsToBlending
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  [(ATXContextHeuristics *)self _queue_cleanupTimeTriggers];
  v3 = objc_opt_new();
  v4 = __atxlog_handle_context_heuristic(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_23E3DF000, v4, OS_LOG_TYPE_DEFAULT, "[Cache] Get relevant suggestions for date: %@", &v11, 0xCu);
  }

  v5 = [(ATXContextHeuristicCache *)self->_resultsCache allRelevantSuggestionsForDate:v3];
  v6 = __atxlog_handle_context_heuristic(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 count];
    v11 = 134217984;
    v12 = v7;
    _os_log_impl(&dword_23E3DF000, v6, OS_LOG_TYPE_DEFAULT, "[Cache] Received %lu suggestions", &v11, 0xCu);
  }

  v9 = __atxlog_handle_context_heuristic(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_23E3DF000, v9, OS_LOG_TYPE_DEFAULT, "[Cache] Evict past suggestions", &v11, 2u);
  }

  [(ATXContextHeuristicCache *)self->_resultsCache evictBefore:v3];
  delegate = [(ATXContextHeuristics *)self delegate];
  [delegate contextHeuristics:self didUpdateSuggestions:v5];
}

- (void)_setRefreshCTSJobForCriteria:(id)criteria fireDate:(id)date forHeuristics:(id)heuristics
{
  dateCopy = date;
  heuristicsCopy = heuristics;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __76__ATXContextHeuristics__setRefreshCTSJobForCriteria_fireDate_forHeuristics___block_invoke;
  handler[3] = &unk_278C3BC80;
  handler[4] = self;
  v13 = dateCopy;
  v14 = heuristicsCopy;
  v10 = heuristicsCopy;
  v11 = dateCopy;
  xpc_activity_register("com.apple.duetexpertd.context-heuristic-refresh", criteria, handler);
}

void __76__ATXContextHeuristics__setRefreshCTSJobForCriteria_fireDate_forHeuristics___block_invoke(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity) == 2 && ([MEMORY[0x277D42598] isClassCLocked] & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__ATXContextHeuristics__setRefreshCTSJobForCriteria_fireDate_forHeuristics___block_invoke_2;
    block[3] = &unk_278C3BC08;
    v7 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v8 = v4;
    v9 = v5;
    dispatch_async(v3, block);
  }
}

void __76__ATXContextHeuristics__setRefreshCTSJobForCriteria_fireDate_forHeuristics___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [v2 timeIntervalSinceDate:a1[4]];
  v5 = v4;
  v6 = __atxlog_handle_context_heuristic(v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[5];
    v8 = 134218242;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_23E3DF000, v6, OS_LOG_TYPE_DEFAULT, "[CTS] Running refresh %0.1fs after date for [%@].", &v8, 0x16u);
  }

  [*(a1[6] + 24) unionSet:a1[5]];
  [*(a1[6] + 48) runAfterDelaySeconds:0 coalescingBehavior:0.5];
}

- (id)_criteriaForRefreshJobOnDate:(id)date
{
  [date timeIntervalSinceNow];
  v4 = v3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, *MEMORY[0x277D86250], v4);
  xpc_dictionary_set_int64(v5, *MEMORY[0x277D86270], *MEMORY[0x277D862A8]);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_string(v5, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 0);

  return v5;
}

- (ATXContextHeuristicsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end