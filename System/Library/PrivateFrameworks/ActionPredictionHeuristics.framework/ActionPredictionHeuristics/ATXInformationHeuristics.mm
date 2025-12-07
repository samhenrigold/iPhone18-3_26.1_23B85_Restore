@interface ATXInformationHeuristics
+ (id)sourceIdentifierForHeuristicWithName:(id)name;
- (ATXInformationHeuristics)init;
- (ATXInformationHeuristicsDelegate)delegate;
- (BOOL)_refreshResultsForHeuristics:(id)heuristics;
- (id)_criteriaForRefreshJobOnDate:(id)date;
- (id)getResultsFromHeuristicInterpreter:(id)interpreter;
- (void)_refreshResultsForAllHeuristics:(BOOL)heuristics completionHandler:(id)handler;
- (void)_setRefreshCTSJobForCriteria:(id)criteria forHeuristics:(id)heuristics;
- (void)informationHeuristicRefreshTrigger:(id)trigger didTriggerRefreshForHeuristics:(id)heuristics;
@end

@implementation ATXInformationHeuristics

- (ATXInformationHeuristics)init
{
  v23.receiver = self;
  v23.super_class = ATXInformationHeuristics;
  v2 = [(ATXInformationHeuristics *)&v23 init];
  if (v2)
  {
    v3 = objc_opt_new();
    heuristicRefreshTriggers = v2->_heuristicRefreshTriggers;
    v2->_heuristicRefreshTriggers = v3;

    v5 = allInfoHeuristics();
    v6 = [v5 mutableCopy];
    heuristicsPendingRefresh = v2->_heuristicsPendingRefresh;
    v2->_heuristicsPendingRefresh = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_BACKGROUND, 0);

    v10 = dispatch_queue_create("ATXInformationHeuristicsRefresh", v9);
    queue = v2->_queue;
    v2->_queue = v10;

    objc_initWeak(&location, v2);
    v12 = objc_alloc(MEMORY[0x277D42628]);
    v13 = v2->_queue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __32__ATXInformationHeuristics_init__block_invoke;
    v20[3] = &unk_278C3BBB8;
    objc_copyWeak(&v21, &location);
    v14 = [v12 initWithQueue:v13 operation:v20];
    coalescedRefreshOperation = v2->_coalescedRefreshOperation;
    v2->_coalescedRefreshOperation = v14;

    v17 = __atxlog_handle_gi(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_23E3DF000, v17, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristics: initialized", v19, 2u);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __32__ATXInformationHeuristics_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained refreshResultsForAllHeuristicsPendingRefreshWithCompletionHandler:0];
  }

  else
  {
    v3 = __atxlog_handle_gi(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __32__ATXInformationHeuristics_init__block_invoke_cold_1();
    }
  }
}

- (void)_refreshResultsForAllHeuristics:(BOOL)heuristics completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__ATXInformationHeuristics__refreshResultsForAllHeuristics_completionHandler___block_invoke;
  v10[3] = &unk_278C3BCD8;
  v11 = handlerCopy;
  v12 = a2;
  heuristicsCopy = heuristics;
  v10[4] = self;
  v9 = handlerCopy;
  dispatch_async(queue, v10);
}

void __78__ATXInformationHeuristics__refreshResultsForAllHeuristics_completionHandler___block_invoke(uint64_t a1)
{
  sel_getName(*(a1 + 48));
  v7 = os_transaction_create();
  v2 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v3 = allInfoHeuristics();
    v4 = [v2 _refreshResultsForHeuristics:v3];

    if ((v4 & 1) == 0)
    {
LABEL_3:
      v5 = 0;
      goto LABEL_6;
    }
  }

  else if (![*(a1 + 32) _refreshResultsForHeuristics:v2[2]])
  {
    goto LABEL_3;
  }

  [*(*(a1 + 32) + 16) removeAllObjects];
  v5 = 1;
LABEL_6:
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

+ (id)sourceIdentifierForHeuristicWithName:(id)name
{
  v3 = MEMORY[0x277CCACA8];
  nameCopy = name;
  nameCopy = [[v3 alloc] initWithFormat:@"%@.%@", @"com.apple.proactive", nameCopy];

  return nameCopy;
}

- (void)informationHeuristicRefreshTrigger:(id)trigger didTriggerRefreshForHeuristics:(id)heuristics
{
  heuristicsCopy = heuristics;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__ATXInformationHeuristics_informationHeuristicRefreshTrigger_didTriggerRefreshForHeuristics___block_invoke;
  v8[3] = &unk_278C3BC30;
  v8[4] = self;
  v9 = heuristicsCopy;
  v7 = heuristicsCopy;
  dispatch_async(queue, v8);
}

uint64_t __94__ATXInformationHeuristics_informationHeuristicRefreshTrigger_didTriggerRefreshForHeuristics___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) unionSet:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 32);

  return [v2 runAfterDelaySeconds:0 coalescingBehavior:0.5];
}

- (BOOL)_refreshResultsForHeuristics:(id)heuristics
{
  v104 = *MEMORY[0x277D85DE8];
  heuristicsCopy = heuristics;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v7 = [(ATXInformationHeuristics *)self getResultsFromHeuristicInterpreter:heuristicsCopy];
    v67 = v7 != 0;
    v8 = __atxlog_handle_gi(v7);
    v9 = v8;
    v68 = v7;
    if (v7)
    {
      v66 = heuristicsCopy;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v100 = [v7 count];
        _os_log_impl(&dword_23E3DF000, v9, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristics: received %lu results from HeuristicInterpreter", buf, 0xCu);
      }

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      obj = v7;
      v10 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
      v73 = v10;
      if (v10)
      {
        v71 = *v92;
        do
        {
          v11 = 0;
          do
          {
            if (*v92 != v71)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v91 + 1) + 8 * v11);
            v13 = __atxlog_handle_gi(v10);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              heuristicName = [v12 heuristicName];
              suggestions = [v12 suggestions];
              v16 = [suggestions count];
              *buf = 138412546;
              v100 = heuristicName;
              v101 = 2048;
              v102 = v16;
              _os_log_impl(&dword_23E3DF000, v13, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristics: update heuristics %@, got %lu new suggestions", buf, 0x16u);
            }

            hasFailed = [v12 hasFailed];
            if (hasFailed)
            {
              v18 = __atxlog_handle_gi(hasFailed);
              if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_17;
              }

              heuristicName2 = [v12 heuristicName];
              *buf = 138412290;
              v100 = heuristicName2;
              _os_log_impl(&dword_23E3DF000, v18, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristics: updating heuristic %@ has failed in a non-trivial manner; bypassing the suggestions update", buf, 0xCu);
            }

            else
            {
              v18 = objc_loadWeakRetained(&self->_delegate);
              heuristicName2 = [v12 suggestions];
              heuristicName3 = [v12 heuristicName];
              [v18 informationHeuristics:self didUpdateSuggestions:heuristicName2 forHeuristic:heuristicName3];
            }

LABEL_17:
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            refreshTriggers = [v12 refreshTriggers];
            v22 = [refreshTriggers countByEnumeratingWithState:&v87 objects:v98 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v88;
              do
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v88 != v24)
                  {
                    objc_enumerationMutation(refreshTriggers);
                  }

                  v26 = *(*(&v87 + 1) + 8 * i);
                  if (([(NSMutableSet *)self->_heuristicRefreshTriggers containsObject:v26]& 1) == 0)
                  {
                    [v26 setDelegate:self];
                    [(NSMutableSet *)self->_heuristicRefreshTriggers addObject:v26];
                  }
                }

                v23 = [refreshTriggers countByEnumeratingWithState:&v87 objects:v98 count:16];
              }

              while (v23);
            }

            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v27 = self->_heuristicRefreshTriggers;
            v28 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v83 objects:v97 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v84;
              do
              {
                for (j = 0; j != v29; ++j)
                {
                  if (*v84 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v83 + 1) + 8 * j);
                  refreshTriggers2 = [v12 refreshTriggers];
                  v34 = [refreshTriggers2 containsObject:v32];

                  heuristicName4 = [v12 heuristicName];
                  if (v34)
                  {
                    [v32 startTriggeringRefreshForHeuristicIfNotAlready:heuristicName4];
                  }

                  else
                  {
                    [v32 stopTriggeringRefreshForHeuristicIfAlready:heuristicName4];
                  }
                }

                v29 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v83 objects:v97 count:16];
              }

              while (v29);
            }

            v11 = v11 + 1;
          }

          while (v11 != v73);
          v10 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
          v73 = v10;
        }

        while (v10);
      }

      v36 = objc_opt_new();
      date = [MEMORY[0x277CBEAA8] date];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v74 = self->_heuristicRefreshTriggers;
      v38 = [(NSMutableSet *)v74 countByEnumeratingWithState:&v79 objects:v96 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = 0;
        v41 = *v80;
        obja = v36;
        do
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v80 != v41)
            {
              objc_enumerationMutation(v74);
            }

            v43 = *(*(&v79 + 1) + 8 * k);
            registeredHeuristics = [v43 registeredHeuristics];
            v45 = [registeredHeuristics count];

            if (v45)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v46 = v43;
                fireDate = [v46 fireDate];
                v48 = [fireDate earlierDate:date];

                if (v48 == date)
                {
                  if (!v40 || ([v40 fireDate], v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "fireDate"), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v49, "earlierDate:", v50), v51 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "fireDate"), v72 = v40, v52 = date, v53 = objc_claimAutoreleasedReturnValue(), v53, v51, v50, v49, v54 = v51 == v53, date = v52, v36 = obja, v40 = v72, v54))
                  {
                    v55 = v46;

                    v40 = v55;
                  }
                }

                else
                {
                  [v46 stopTriggeringRefreshForAllHeuristics];
                  [v36 addObject:v46];
                }
              }
            }

            else
            {
              [v36 addObject:v43];
            }
          }

          v39 = [(NSMutableSet *)v74 countByEnumeratingWithState:&v79 objects:v96 count:16];
        }

        while (v39);
      }

      else
      {
        v40 = 0;
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v9 = v36;
      v58 = [v9 countByEnumeratingWithState:&v75 objects:v95 count:16];
      heuristicsCopy = v66;
      if (v58)
      {
        v59 = v58;
        v60 = *v76;
        do
        {
          for (m = 0; m != v59; ++m)
          {
            if (*v76 != v60)
            {
              objc_enumerationMutation(v9);
            }

            [(NSMutableSet *)self->_heuristicRefreshTriggers removeObject:*(*(&v75 + 1) + 8 * m)];
          }

          v59 = [v9 countByEnumeratingWithState:&v75 objects:v95 count:16];
        }

        while (v59);
      }

      if (v40)
      {
        fireDate2 = [v40 fireDate];
        v63 = [(ATXInformationHeuristics *)self _criteriaForRefreshJobOnDate:fireDate2];
        registeredHeuristics2 = [v40 registeredHeuristics];
        [(ATXInformationHeuristics *)self _setRefreshCTSJobForCriteria:v63 forHeuristics:registeredHeuristics2];

        [v40 stopTriggeringRefreshForAllHeuristics];
        [(NSMutableSet *)self->_heuristicRefreshTriggers removeObject:v40];
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationHeuristics _refreshResultsForHeuristics:];
    }

    v56 = v68;
    v57 = v67;
  }

  else
  {
    v56 = __atxlog_handle_gi(v6);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationHeuristics _refreshResultsForHeuristics:];
    }

    v57 = 0;
  }

  return v57;
}

- (id)getResultsFromHeuristicInterpreter:(id)interpreter
{
  interpreterCopy = interpreter;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.proactive.HeuristicInterpreter"];
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2850AE370];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:sel_resultsForInformationHeuristics_bundlePath_now_dataSourcesEndpoint_reply_ argumentIndex:0 ofReply:1];

  [v5 setRemoteObjectInterface:v6];
  [v5 resume];
  v10 = [objc_alloc(MEMORY[0x277CE89F0]) initWithLocationManager:0];
  v11 = [objc_alloc(MEMORY[0x277CE89E8]) initWithDevice:v10];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v12 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global];
  v13 = ATXHeuristicsBundlePath();
  v14 = [v10 now];
  listenerEndpoint = [v11 listenerEndpoint];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__ATXInformationHeuristics_getResultsFromHeuristicInterpreter___block_invoke_60;
  v18[3] = &unk_278C3BD20;
  v18[4] = &v19;
  [v12 resultsForInformationHeuristics:interpreterCopy bundlePath:v13 now:v14 dataSourcesEndpoint:listenerEndpoint reply:v18];

  [v5 invalidate];
  v16 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v16;
}

void __63__ATXInformationHeuristics_getResultsFromHeuristicInterpreter___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __63__ATXInformationHeuristics_getResultsFromHeuristicInterpreter___block_invoke_cold_1();
  }
}

void __63__ATXInformationHeuristics_getResultsFromHeuristicInterpreter___block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (!v5)
  {
    v10 = __atxlog_handle_gi(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __63__ATXInformationHeuristics_getResultsFromHeuristicInterpreter___block_invoke_60_cold_1();
    }
  }
}

- (void)_setRefreshCTSJobForCriteria:(id)criteria forHeuristics:(id)heuristics
{
  heuristicsCopy = heuristics;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__ATXInformationHeuristics__setRefreshCTSJobForCriteria_forHeuristics___block_invoke;
  v8[3] = &unk_278C3BD48;
  v8[4] = self;
  v9 = heuristicsCopy;
  v7 = heuristicsCopy;
  xpc_activity_register("com.apple.duetexpertd.info-heuristic-refresh", criteria, v8);
}

void __71__ATXInformationHeuristics__setRefreshCTSJobForCriteria_forHeuristics___block_invoke(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity) == 2 && ([MEMORY[0x277D42598] isClassCLocked] & 1) == 0)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 24);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__ATXInformationHeuristics__setRefreshCTSJobForCriteria_forHeuristics___block_invoke_2;
    v6[3] = &unk_278C3BC30;
    v6[4] = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

uint64_t __71__ATXInformationHeuristics__setRefreshCTSJobForCriteria_forHeuristics___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 16) unionSet:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 32);

  return [v2 runAfterDelaySeconds:0 coalescingBehavior:0.5];
}

- (id)_criteriaForRefreshJobOnDate:(id)date
{
  [date timeIntervalSinceNow];
  v4 = v3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, *MEMORY[0x277D86250], v4);
  xpc_dictionary_set_int64(v5, *MEMORY[0x277D86270], 300);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 0);

  return v5;
}

- (ATXInformationHeuristicsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end