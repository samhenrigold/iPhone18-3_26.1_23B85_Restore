@interface ATXRSRelevanceMonitor
- (ATXRSRelevanceMonitor)init;
- (ATXRSRelevanceMonitorDelegate)delegate;
- (BOOL)_isBehavioralRelevanceSatisfiedForCandidate:(id)candidate currentMode:(unint64_t)mode;
- (BOOL)_isDateRelevantContextSatisfied:(id)satisfied;
- (id)_earliestFutureDateAmongDateRelevantContexts:(id)contexts;
- (id)_nonnullEndDateOfDateRelevantContext:(id)context;
- (void)_queue_clearAllCurrentMonitoring;
- (void)_queue_refreshCurrentlyRelevantCandidates;
- (void)_queue_startMonitoringDateRelevantContexts:(id)contexts;
- (void)_queue_startMonitoringModeChanges;
- (void)resetToMonitorForRelevantShortcutCandidates:(id)candidates;
@end

@implementation ATXRSRelevanceMonitor

- (ATXRSRelevanceMonitor)init
{
  v14.receiver = self;
  v14.super_class = ATXRSRelevanceMonitor;
  v2 = [(ATXRSRelevanceMonitor *)&v14 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ATXRSRelevanceMonitor", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc(MEMORY[0x277D42628]);
    v7 = v2->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __29__ATXRSRelevanceMonitor_init__block_invoke;
    v11[3] = &unk_2785977B0;
    objc_copyWeak(&v12, &location);
    v8 = [v6 initWithQueue:v7 operation:v11];
    coalescedRefreshCurrentlyRelevantCandidatesOperation = v2->_coalescedRefreshCurrentlyRelevantCandidatesOperation;
    v2->_coalescedRefreshCurrentlyRelevantCandidatesOperation = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__ATXRSRelevanceMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _queue_refreshCurrentlyRelevantCandidates];
  }

  else
  {
    v3 = __atxlog_handle_relevant_shortcut(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __29__ATXRSRelevanceMonitor_init__block_invoke_cold_1(v3);
    }
  }
}

- (void)_queue_refreshCurrentlyRelevantCandidates
{
  v107 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_relevant_shortcut(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: Refreshing currently relevant candidates...", buf, 2u);
  }

  v4 = __atxlog_handle_relevant_shortcut(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: fetching current mode", buf, 2u);
  }

  currentModeEvent = [MEMORY[0x277D41C60] currentModeEvent];
  eventBody = [currentModeEvent eventBody];
  starting = [eventBody starting];

  if (starting)
  {
    eventBody2 = [currentModeEvent eventBody];
    [eventBody2 atx_dndModeSemanticType];

    DNDModeSemanticTypeToATXActivityType();
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:ATXModeFromActivityType()];
    v10 = objc_alloc(MEMORY[0x277CBEAA8]);
    [currentModeEvent timestamp];
    v11 = [v10 initWithTimeIntervalSinceReferenceDate:?];
    v12 = __atxlog_handle_relevant_shortcut(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: using last computed mode", buf, 2u);
    }
  }

  else
  {
    v11 = 0;
    v9 = 0;
  }

  currentModeEvent2 = [MEMORY[0x277D41C68] currentModeEvent];
  eventBody3 = [currentModeEvent2 eventBody];
  isStart = [eventBody3 isStart];

  if (isStart)
  {
    eventBody4 = [currentModeEvent2 eventBody];
    [eventBody4 modeType];
    BMUserFocusInferredModeTypeToActivity();

    v17 = objc_alloc(MEMORY[0x277CBEAA8]);
    [currentModeEvent2 timestamp];
    v18 = [v17 initWithTimeIntervalSinceReferenceDate:?];
    v19 = v18;
    if (v9 && v11 && [v18 compare:v11] != 1)
    {
      goto LABEL_21;
    }

    v20 = v19;

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:ATXModeFromActivityType()];

    v22 = [v20 compare:v20];
    v23 = __atxlog_handle_relevant_shortcut(v22);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v22 == 1)
    {
      if (v24)
      {
        *buf = 0;
        v25 = "ATXRSRelevanceMonitor: overriding computed mode with more recent inferred mode";
LABEL_19:
        _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
      }
    }

    else if (v24)
    {
      *buf = 0;
      v25 = "ATXRSRelevanceMonitor: using last inferred mode";
      goto LABEL_19;
    }

    v11 = v20;
    v9 = v21;
LABEL_21:
  }

  v26 = [v9 isEqualToNumber:&unk_283A56B70];
  if (v26)
  {
    v27 = __atxlog_handle_relevant_shortcut(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v28 = "ATXRSRelevanceMonitor: current mode is custom, returning nil mode";
LABEL_32:
      _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v27 = __atxlog_handle_relevant_shortcut(v26);
  v29 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (!v9 || !v11)
  {
    if (v29)
    {
      *buf = 0;
      v28 = "ATXRSRelevanceMonitor: no current mode";
      goto LABEL_32;
    }

LABEL_33:

    v31 = 0;
    goto LABEL_34;
  }

  if (v29)
  {
    [v9 unsignedIntegerValue];
    v30 = ATXModeToString();
    *buf = 138412290;
    v96 = v30;
    _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: current mode is %@", buf, 0xCu);
  }

  v31 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v9 second:v11];
LABEL_34:

  first = [v31 first];
  unsignedIntegerValue = [first unsignedIntegerValue];

  second = [v31 second];
  v34 = +[_ATXGlobals sharedInstance];
  buf[0] = 0;
  v35 = 0.0;
  if (!CFPreferencesGetAppBooleanValue(@"ATXModeRelevanceDelayDisabled", *MEMORY[0x277CEBD00], buf))
  {
    [v34 behavioralModeRelevanceDelay];
    v35 = v36;
  }

  [v34 behavioralModeRelevanceDuration];
  v38 = v37;
  v39 = [second dateByAddingTimeInterval:v35];
  v40 = [v39 dateByAddingTimeInterval:v38];
  [v39 timeIntervalSinceNow];
  v75 = v31;
  if (v41 >= 0.0)
  {
    v84 = 0;
  }

  else
  {
    [v40 timeIntervalSinceNow];
    v84 = v42 > 0.0;
  }

  v82 = objc_opt_new();
  v81 = objc_opt_new();
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = self->_queue_candidates;
  v85 = [(NSArray *)obj countByEnumeratingWithState:&v91 objects:v106 count:16];
  if (v85)
  {
    v83 = *v92;
    do
    {
      for (i = 0; i != v85; ++i)
      {
        if (*v92 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v91 + 1) + 8 * i);
        if (v84 && ([*(*(&v91 + 1) + 8 * i) relevantContexts], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "count"), v45, !v46) && -[ATXRSRelevanceMonitor _isBehavioralRelevanceSatisfiedForCandidate:currentMode:](self, "_isBehavioralRelevanceSatisfiedForCandidate:currentMode:", v44, unsignedIntegerValue))
        {
          relevantContexts = __atxlog_handle_relevant_shortcut([v82 addObject:v44]);
          if (os_log_type_enabled(relevantContexts, OS_LOG_TYPE_DEFAULT))
          {
            widgetDescriptor = [v44 widgetDescriptor];
            extensionBundleIdentifier = [widgetDescriptor extensionBundleIdentifier];
            widgetDescriptor2 = [v44 widgetDescriptor];
            kind = [widgetDescriptor2 kind];
            intent = [v44 intent];
            intentDescription = [intent intentDescription];
            v54 = ATXModeToString();
            *buf = 138413058;
            v96 = extensionBundleIdentifier;
            v97 = 2112;
            v98 = kind;
            v99 = 2112;
            v100 = intentDescription;
            v101 = 2112;
            v102 = v54;
            _os_log_impl(&dword_2263AA000, relevantContexts, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: Candidate (%@ - %@ - %@) with no providers satisfied behavioral relevance for mode: %@", buf, 0x2Au);

LABEL_67:
          }
        }

        else
        {
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          relevantContexts = [v44 relevantContexts];
          v55 = [relevantContexts countByEnumeratingWithState:&v87 objects:v105 count:16];
          if (v55)
          {
            v56 = v55;
            v57 = *v88;
            while (2)
            {
              for (j = 0; j != v56; ++j)
              {
                if (*v88 != v57)
                {
                  objc_enumerationMutation(relevantContexts);
                }

                v59 = *(*(&v87 + 1) + 8 * j);
                v60 = NSClassFromString(&cfstr_Atxdaterelevan.isa);
                v61 = v59;
                if (v60)
                {
                  if (objc_opt_isKindOfClass())
                  {
                    v62 = v61;
                  }

                  else
                  {
                    v62 = 0;
                  }
                }

                else
                {
                  v62 = 0;
                }

                v54 = v62;

                if (v54 && [(ATXRSRelevanceMonitor *)self _isDateRelevantContextSatisfied:v54])
                {
                  [v82 addObject:v44];
                  v63 = __atxlog_handle_relevant_shortcut([v81 setObject:v54 forKeyedSubscript:v44]);
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                  {
                    widgetDescriptor3 = [v44 widgetDescriptor];
                    extensionBundleIdentifier2 = [widgetDescriptor3 extensionBundleIdentifier];
                    widgetDescriptor4 = [v44 widgetDescriptor];
                    kind2 = [widgetDescriptor4 kind];
                    intent2 = [v44 intent];
                    intentDescription2 = [intent2 intentDescription];
                    startDate = [v54 startDate];
                    endDate = [v54 endDate];
                    *buf = 138413314;
                    v96 = extensionBundleIdentifier2;
                    v97 = 2112;
                    v98 = kind2;
                    v99 = 2112;
                    v100 = intentDescription2;
                    v101 = 2114;
                    v102 = startDate;
                    v103 = 2114;
                    v104 = endDate;
                    _os_log_impl(&dword_2263AA000, v63, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: Candidate (%@ - %@ - %@) has active date relevant context (start %{public}@, end %{public}@)", buf, 0x34u);
                  }

                  goto LABEL_67;
                }
              }

              v56 = [relevantContexts countByEnumeratingWithState:&v87 objects:v105 count:16];
              if (v56)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v85 = [(NSArray *)obj countByEnumeratingWithState:&v91 objects:v106 count:16];
    }

    while (v85);
  }

  v70 = __atxlog_handle_relevant_shortcut(v69);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    v71 = [v82 count];
    *buf = 134217984;
    v96 = v71;
    _os_log_impl(&dword_2263AA000, v70, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: %lu candidates are currently relevant", buf, 0xCu);
  }

  delegate = [(ATXRSRelevanceMonitor *)self delegate];
  v73 = [v82 copy];
  v74 = [v81 copy];
  [delegate relevanceMonitorDidUpdateCurrentlyRelevantCandidates:v73 relevantContexts:v74];
}

- (void)resetToMonitorForRelevantShortcutCandidates:(id)candidates
{
  candidatesCopy = candidates;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__ATXRSRelevanceMonitor_resetToMonitorForRelevantShortcutCandidates___block_invoke;
  v7[3] = &unk_278596C10;
  v8 = candidatesCopy;
  selfCopy = self;
  v6 = candidatesCopy;
  dispatch_sync(queue, v7);
}

void __69__ATXRSRelevanceMonitor_resetToMonitorForRelevantShortcutCandidates___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_relevant_shortcut(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v36 = v3;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: Reset to monitor for %lu candidates", buf, 0xCu);
  }

  [*(a1 + 40) _queue_clearAllCurrentMonitoring];
  v4 = [*(a1 + 32) copy];
  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;

  v7 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = a1;
  obj = *(a1 + 32);
  v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v24 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v12 = [v11 relevantContexts];
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
          do
          {
            v16 = 0;
            do
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v25 + 1) + 8 * v16);
              v18 = NSClassFromString(&cfstr_Atxdaterelevan.isa);
              v19 = v17;
              if (v18)
              {
                if (objc_opt_isKindOfClass())
                {
                  v20 = v19;
                }

                else
                {
                  v20 = 0;
                }
              }

              else
              {
                v20 = 0;
              }

              v21 = v20;

              if (v21)
              {
                [v7 addObject:v21];
              }

              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v14);
        }

        ++v10;
      }

      while (v10 != v9);
      v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  [*(v22 + 40) _queue_startMonitoringDateRelevantContexts:v7];
  [*(v22 + 40) _queue_startMonitoringModeChanges];
  [*(v22 + 40) _coalescedRefreshCurrentlyRelevantCandidates];
}

- (void)_queue_clearAllCurrentMonitoring
{
  xpc_activity_unregister("com.apple.duetexpertd.INDateRelevance");
  [(BPSSink *)self->_computedModeSink cancel];
  inferredModeSink = self->_inferredModeSink;

  [(BPSSink *)inferredModeSink cancel];
}

- (void)_queue_startMonitoringDateRelevantContexts:(id)contexts
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(ATXRSRelevanceMonitor *)self _earliestFutureDateAmongDateRelevantContexts:contexts];
  v5 = __atxlog_handle_relevant_shortcut(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: scheduling refresh at %{public}@", buf, 0xCu);
    }

    v5 = xpc_dictionary_create(0, 0, 0);
    v7 = *MEMORY[0x277D86250];
    [v4 timeIntervalSinceNow];
    xpc_dictionary_set_int64(v5, v7, v8);
    xpc_dictionary_set_int64(v5, *MEMORY[0x277D86270], 300);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86380], 1);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_string(v5, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__ATXRSRelevanceMonitor__queue_startMonitoringDateRelevantContexts___block_invoke;
    v9[3] = &unk_278596790;
    v9[4] = self;
    atxRegisterCTSJobHandler("com.apple.duetexpertd.INDateRelevance", v5, v9);
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: not scheduling refresh because all date relevance providers are expired", buf, 2u);
  }
}

- (void)_queue_startMonitoringModeChanges
{
  objc_initWeak(&location, self);
  v3 = BiomeLibrary();
  userFocus = [v3 UserFocus];
  computedMode = [userFocus ComputedMode];
  atx_DSLPublisher = [computedMode atx_DSLPublisher];

  v7 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.proactive.ATXRSRelevanceMonitor.ComputedMode" targetQueue:self->_queue];
  computedModeScheduler = self->_computedModeScheduler;
  self->_computedModeScheduler = v7;

  v9 = [atx_DSLPublisher subscribeOn:self->_computedModeScheduler];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_37;
  v23[3] = &unk_2785977D8;
  objc_copyWeak(&v24, &location);
  v10 = [v9 sinkWithCompletion:&__block_literal_global_152 receiveInput:v23];
  computedModeSink = self->_computedModeSink;
  self->_computedModeSink = v10;

  v12 = BiomeLibrary();
  userFocus2 = [v12 UserFocus];
  inferredMode = [userFocus2 InferredMode];
  atx_DSLPublisher2 = [inferredMode atx_DSLPublisher];

  v16 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.proactive.ATXRSRelevanceMonitor.InferredMode" targetQueue:self->_queue];
  inferredModeScheduler = self->_inferredModeScheduler;
  self->_inferredModeScheduler = v16;

  v18 = [atx_DSLPublisher2 subscribeOn:self->_inferredModeScheduler];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_45;
  v21[3] = &unk_2785977D8;
  objc_copyWeak(&v22, &location);
  v19 = [v18 sinkWithCompletion:&__block_literal_global_44_0 receiveInput:v21];
  inferredModeSink = self->_inferredModeSink;
  self->_inferredModeSink = v19;

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&location);
}

void __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_relevant_shortcut(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_cold_1(v2);
    }
  }
}

void __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_37(uint64_t a1)
{
  v2 = __atxlog_handle_relevant_shortcut(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: new event in computed mode stream, refreshing candidates", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _coalescedRefreshCurrentlyRelevantCandidates];
}

void __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_42(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_relevant_shortcut(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_42_cold_1(v2);
    }
  }
}

void __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_45(uint64_t a1)
{
  v2 = __atxlog_handle_relevant_shortcut(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: new event in inferred mode stream, refreshing candidates", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _coalescedRefreshCurrentlyRelevantCandidates];
}

- (id)_earliestFutureDateAmongDateRelevantContexts:(id)contexts
{
  v28 = *MEMORY[0x277D85DE8];
  contextsCopy = contexts;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = contextsCopy;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v10 = distantFuture;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        startDate = [v12 startDate];
        [startDate timeIntervalSinceNow];
        v15 = v14;

        if (v15 > 0.0)
        {
          startDate2 = [v12 startDate];
          v17 = [v10 earlierDate:startDate2];

          v10 = v17;
        }

        v18 = [(ATXRSRelevanceMonitor *)self _nonnullEndDateOfDateRelevantContext:v12];
        [v18 timeIntervalSinceNow];
        if (v19 > 0.0)
        {
          v20 = [v10 earlierDate:v18];

          v10 = v20;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);

    if (v10 == distantFuture)
    {
      v21 = 0;
    }

    else
    {
      v10 = v10;
      v21 = v10;
    }
  }

  else
  {

    v21 = 0;
    v10 = distantFuture;
  }

  return v21;
}

- (id)_nonnullEndDateOfDateRelevantContext:(id)context
{
  contextCopy = context;
  endDate = [contextCopy endDate];

  if (endDate)
  {
    endDate2 = [contextCopy endDate];
  }

  else
  {
    startDate = [contextCopy startDate];

    endDate2 = [startDate dateByAddingTimeInterval:1800.0];
    contextCopy = startDate;
  }

  return endDate2;
}

- (BOOL)_isDateRelevantContextSatisfied:(id)satisfied
{
  satisfiedCopy = satisfied;
  startDate = [satisfiedCopy startDate];
  [startDate timeIntervalSinceNow];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v9 = [(ATXRSRelevanceMonitor *)self _nonnullEndDateOfDateRelevantContext:satisfiedCopy];
    [v9 timeIntervalSinceNow];
    v8 = v10 > 0.0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isBehavioralRelevanceSatisfiedForCandidate:(id)candidate currentMode:(unint64_t)mode
{
  v52 = *MEMORY[0x277D85DE8];
  donationBundleIdentifier = [candidate donationBundleIdentifier];
  v6 = [ATXRSWidgetSuggestionProducer replacementContainerBundleIdForDonationBundleId:donationBundleIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = donationBundleIdentifier;
  }

  v9 = v8;

  v10 = objc_alloc(MEMORY[0x277CBEBD0]);
  v11 = [v10 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v11 doubleForKey:@"ATXModeRelevanceScoreThresholdOverride"];
  v42 = v11;
  if (v12 == 0.0)
  {
    v13 = +[_ATXGlobals sharedInstance];
    [v13 scoreThresholdForBehavioralModeRelevance];
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  v16 = objc_alloc(MEMORY[0x277CEB6A0]);
  v17 = +[ATXModeEntityScorerServer sharedInstance];
  v18 = [v16 initWithModeEntityScorerClient:v17];

  [v18 rankedAppsForMode:mode];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v19 = v46 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v44;
LABEL_9:
    v23 = 0;
    while (1)
    {
      if (*v44 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v43 + 1) + 8 * v23);
      bundleId = [v24 bundleId];
      v26 = [bundleId isEqualToString:v9];

      if (v26)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v21)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }

    scoreMetadata = [v24 scoreMetadata];
    [scoreMetadata score];
    v33 = v32;

    v35 = __atxlog_handle_relevant_shortcut(v34);
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    v29 = v33 > v15;
    if (v33 <= v15)
    {
      v30 = v42;
      if (v36)
      {
        scoreMetadata2 = [v24 scoreMetadata];
        [scoreMetadata2 score];
        *buf = 134218242;
        v48 = v40;
        v49 = 2112;
        v50 = v9;
        v39 = "ATXRSRelevanceMonitor: score of %f is below threshold for candidate bundleId %@";
        goto LABEL_23;
      }
    }

    else
    {
      v30 = v42;
      if (v36)
      {
        scoreMetadata2 = [v24 scoreMetadata];
        [scoreMetadata2 score];
        *buf = 134218242;
        v48 = v38;
        v49 = 2112;
        v50 = v9;
        v39 = "ATXRSRelevanceMonitor: score of %f is above threshold for candidate bundleId %@";
LABEL_23:
        _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEFAULT, v39, buf, 0x16u);
      }
    }

    v28 = v19;
    goto LABEL_25;
  }

LABEL_15:

  v28 = __atxlog_handle_relevant_shortcut(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = v9;
    _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: candidate bundleId was not found in ranked entities list: %@", buf, 0xCu);
  }

  v29 = 0;
  v30 = v42;
LABEL_25:

  return v29;
}

- (ATXRSRelevanceMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "ATXRSRelevanceMonitor: error subscribing to computed mode stream: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_42_cold_1(void *a1)
{
  v1 = [a1 error];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "ATXRSRelevanceMonitor: error subscribing to inferred mode stream: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end