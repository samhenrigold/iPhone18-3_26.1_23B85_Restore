@interface EKTravelEngineAgendaEntry
+ (double)fuzzyMaximumInitialUpdateIntervalBeforeStartDate;
- (BOOL)receivedAlarmNamed:(id)named;
- (EKTravelEngineAgendaEntry)initWithRouteHypothesizerProvider:(id)provider;
- (EKTravelEngineHypothesis)latestHypothesis;
- (EKTravelEngineOriginalEvent)originalEvent;
- (id)_createSyntheticHypothesis;
- (id)_generateDestination;
- (id)emissionHypothesisRefreshAlarmName;
- (id)requestHypothesisRefreshAlarmName;
- (void)_accountForGeocodedEventEncounter;
- (void)_clearEverything;
- (void)_createEmissionHypothesisRefreshTimerWithDate:(id)date;
- (void)_createHypothesisRequestRefreshTimerWithDate:(id)date;
- (void)_createHypothesizerForDestination:(id)destination;
- (void)_emissionHypothesisRefreshTimerFired;
- (void)_enhanceLocation;
- (void)_hypothesisRefreshTimerFired;
- (void)_performAnalyticsPostProcessing;
- (void)_requestHypothesisRefreshTimerFired;
- (void)_sendFeedbackToHypothesizerForPostingNotification:(unint64_t)notification;
- (void)_setUpRouteMonitoring;
- (void)_trackTTLCandidateEvent:(id)event;
- (void)_uninstallEmissionHypothesisRefreshTimer;
- (void)_uninstallRequestHypothesisRefreshTimer;
- (void)_updateTravelTimeExceededThresholdStateUsingExceededValue:(BOOL)value;
- (void)_updateWithHypothesis:(id)hypothesis;
- (void)createAlarmWithName:(id)name atDate:(id)date;
- (void)dealloc;
- (void)removeAlarmWithName:(id)name;
- (void)requestHypothesisRefreshAtDate:(id)date;
- (void)reset;
- (void)updateHypothesizerIfNecessaryWithOriginalEvent:(id)event;
@end

@implementation EKTravelEngineAgendaEntry

- (EKTravelEngineAgendaEntry)initWithRouteHypothesizerProvider:(id)provider
{
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = EKTravelEngineAgendaEntry;
  v6 = [(EKTravelEngineAgendaEntry *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hypothesizerProvider, provider);
    objc_opt_class();
    v8 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String = [v8 UTF8String];

    v10 = dispatch_queue_create(uTF8String, 0);
    [(EKTravelEngineAgendaEntry *)v7 setWorkQueue:v10];

    objc_opt_class();
    v11 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String2 = [v11 UTF8String];

    v13 = dispatch_queue_create(uTF8String2, 0);
    [(EKTravelEngineAgendaEntry *)v7 setCallbackQueue:v13];

    [(EKTravelEngineAgendaEntry *)v7 setTravelTimeThresholdExceededState:0];
  }

  return v7;
}

- (void)dealloc
{
  [(EKTravelEngineAgendaEntry *)self _uninstallRequestHypothesisRefreshTimer];
  v3.receiver = self;
  v3.super_class = EKTravelEngineAgendaEntry;
  [(EKTravelEngineAgendaEntry *)&v3 dealloc];
}

- (void)updateHypothesizerIfNecessaryWithOriginalEvent:(id)event
{
  v12 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = eventCopy;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Update with original event requested: [%@]. This checks if the event has changed enough to qualify generating another hypothesis.", buf, 0xCu);
  }

  workQueue = [(EKTravelEngineAgendaEntry *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke;
  v8[3] = &unk_278D6F278;
  v8[4] = self;
  v9 = eventCopy;
  v7 = eventCopy;
  dispatch_sync(workQueue, v8);
}

void __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) originalEventInternal];
  [*v2 setOriginalEventInternal:*(a1 + 40)];
  v4 = MEMORY[0x277CC5978];
  v5 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 16);
    *buf = 138412290;
    v64 = v6;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Latest Hypothesis [%@]", buf, 0xCu);
  }

  if (v3)
  {
    v7 = *(a1 + 32);
    if (!*(v7 + 16) || (v8 = *(v7 + 88)) == 0 || [v8 state] == 2)
    {
      v9 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = *(v10 + 16);
        v12 = *(v10 + 88);
        v13 = v9;
        v14 = [v12 state];
        *buf = 138412802;
        v64 = v11;
        v65 = 2112;
        v66 = v12;
        v67 = 2048;
        v68 = v14;
        _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "There is no hypothesis, or non-functional hypothesizer. Regenerating a new hypothesizer. latestHypothesis:[%@] hypothesizer:[%@] hypothesizer state:[%ld]", buf, 0x20u);
      }

      goto LABEL_12;
    }

    v28 = [*(*(a1 + 32) + 16) creationDate];
    if (!v28 || ([MEMORY[0x277CBEAA8] date], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(*(a1 + 32) + 16), "creationDate"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "timeIntervalSinceDate:", v30), v32 = v31 > 1800.0, v30, v29, v28, v32))
    {
      v33 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(*(a1 + 32) + 16);
        v35 = v33;
        v36 = [v34 creationDate];
        v37 = *(*(a1 + 32) + 16);
        *buf = 138412546;
        v64 = v36;
        v65 = 2112;
        v66 = v37;
        _os_log_impl(&dword_242909000, v35, OS_LOG_TYPE_DEFAULT, "Last generated hypothesis is too old. Should hypothesize again. _latestHypothesis.creationDate = %@. _latestHypothesis = %@.", buf, 0x16u);
      }

      goto LABEL_12;
    }

    v38 = [v3 isEqualToOriginalEvent:*(a1 + 40)];
    v39 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v40 = MEMORY[0x277CCABB0];
      v41 = v39;
      v42 = [v40 numberWithBool:v38 ^ 1u];
      v43 = *(a1 + 40);
      *buf = 138412546;
      v64 = v42;
      v65 = 2112;
      v66 = v43;
      _os_log_impl(&dword_242909000, v41, OS_LOG_TYPE_DEFAULT, "Event has significantly changed: [%@].  Original event: [%@]", buf, 0x16u);
    }

    if ((v38 & 1) == 0)
    {
      v44 = [*(a1 + 32) entrySignificantlyChangedBlock];
      if (v44)
      {
        v45 = [*(a1 + 32) callbackQueue];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_10;
        v61[3] = &unk_278D6F638;
        v46 = v44;
        v61[4] = *(a1 + 32);
        v62 = v46;
        dispatch_async(v45, v61);
      }
    }

    v47 = [MEMORY[0x277CC5A18] shared];
    v48 = [v47 performAgendaEntryEqualityChecksInTravelEngine];

    if (v48)
    {
      if (v38)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    v49 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(a1 + 40);
      *buf = 138412290;
      v64 = v50;
      v16 = "No equality check was performed.  Original event: [%@]";
      v17 = v49;
      v18 = 12;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "There was no previous original event, so event has significantly changed. Should attempt to hypothesize.";
      v17 = v15;
      v18 = 2;
LABEL_11:
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    }
  }

LABEL_12:
  v19 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 40);
    *buf = 138412546;
    v64 = v3;
    v65 = 2112;
    v66 = v20;
    _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "Will attempt to hypothesize.  Previous original event: [%@] Original event: [%@]", buf, 0x16u);
  }

  if (v3)
  {
    [*(a1 + 32) _clearEverything];
  }

  v21 = objc_alloc_init(EKTravelEngineThrottle);
  [*(a1 + 32) setThrottle:v21];

  v22 = [*(a1 + 40) eventExternalURL];
  v23 = [*(a1 + 32) throttle];
  [v23 setEventExternalURL:v22];

  objc_initWeak(buf, *(a1 + 32));
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_14;
  v58[3] = &unk_278D6FBD0;
  objc_copyWeak(&v60, buf);
  v59 = *(a1 + 40);
  v24 = [*(a1 + 32) throttle];
  [v24 setRequestHypothesisRefreshBlock:v58];

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_2;
  v55[3] = &unk_278D6FBF8;
  objc_copyWeak(&v57, buf);
  v56 = *(a1 + 40);
  v25 = [*(a1 + 32) throttle];
  [v25 setCancelHypothesisRequestRefreshBlock:v55];

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_2_18;
  v52[3] = &unk_278D6FBF8;
  objc_copyWeak(&v54, buf);
  v53 = *(a1 + 40);
  v26 = [*(a1 + 32) throttle];
  [v26 setEmissionBlock:v52];

  v27 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_3;
  block[3] = &unk_278D6F250;
  block[4] = *(a1 + 32);
  dispatch_async(v27, block);

  objc_destroyWeak(&v54);
  objc_destroyWeak(&v57);

  objc_destroyWeak(&v60);
  objc_destroyWeak(buf);
LABEL_17:
}

void __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_14(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Firing request hypothesis refresh block in travel engine for [%@]", buf, 0xCu);
    }

    v7 = [WeakRetained workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_15;
    v8[3] = &unk_278D6F278;
    v8[4] = WeakRetained;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Firing cancel hypothesis request block in travel engine for [%@]", buf, 0xCu);
    }

    v5 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_17;
    block[3] = &unk_278D6F250;
    block[4] = WeakRetained;
    dispatch_async(v5, block);
  }
}

void __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_2_18(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Firing emission block in travel engine for [%@]", buf, 0xCu);
    }

    v5 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_19;
    block[3] = &unk_278D6F250;
    block[4] = WeakRetained;
    dispatch_async(v5, block);
  }
}

void __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_19(uint64_t a1)
{
  v2 = [*(a1 + 32) updateBlock];
  if (v2)
  {
    v3 = [*(a1 + 32) callbackQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __76__EKTravelEngineAgendaEntry_updateHypothesizerIfNecessaryWithOriginalEvent___block_invoke_2_20;
    v5[3] = &unk_278D6F638;
    v4 = v2;
    v5[4] = *(a1 + 32);
    v6 = v4;
    dispatch_async(v3, v5);
  }
}

- (void)_hypothesisRefreshTimerFired
{
  v10 = *MEMORY[0x277D85DE8];
  hypothesizer = [(EKTravelEngineAgendaEntry *)self hypothesizer];

  if (hypothesizer)
  {
    v4 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      hypothesizer2 = [(EKTravelEngineAgendaEntry *)self hypothesizer];
      v8 = 138412290;
      v9 = hypothesizer2;
      _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Requesting refresh for hypothesizer, %@", &v8, 0xCu);
    }

    hypothesizer3 = [(EKTravelEngineAgendaEntry *)self hypothesizer];
    [hypothesizer3 requestRefresh];
  }
}

- (void)_requestHypothesisRefreshTimerFired
{
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Request hypothesis refresh timer fired", v4, 2u);
  }

  [(EKTravelEngineAgendaEntry *)self _hypothesisRefreshTimerFired];
  [(EKTravelEngineAgendaEntry *)self _uninstallRequestHypothesisRefreshTimer];
}

- (void)_emissionHypothesisRefreshTimerFired
{
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Emission hypothesis refresh timer fired", v4, 2u);
  }

  [(EKTravelEngineAgendaEntry *)self _hypothesisRefreshTimerFired];
  [(EKTravelEngineAgendaEntry *)self _uninstallEmissionHypothesisRefreshTimer];
}

- (void)requestHypothesisRefreshAtDate:(id)date
{
  dateCopy = date;
  hypothesizer = [(EKTravelEngineAgendaEntry *)self hypothesizer];

  if (hypothesizer)
  {
    [(EKTravelEngineAgendaEntry *)self _createHypothesisRequestRefreshTimerWithDate:dateCopy];
  }
}

- (void)createAlarmWithName:(id)name atDate:(id)date
{
  nameCopy = name;
  dateCopy = date;
  [dateCopy timeIntervalSinceNow];
  if (v7 >= 0.0)
  {
    v9 = ((ceil(v7) + time(0)) * 1000000000.0);
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_date(v10, *MEMORY[0x277CF7888], v9);
    [nameCopy UTF8String];
    xpc_set_event();
  }

  else
  {
    v8 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_ERROR))
    {
      [(EKTravelEngineAgendaEntry *)nameCopy createAlarmWithName:dateCopy atDate:v8];
    }
  }
}

- (void)removeAlarmWithName:(id)name
{
  [name UTF8String];

  xpc_set_event();
}

- (void)_createHypothesisRequestRefreshTimerWithDate:(id)date
{
  v11 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  requestHypothesisRefreshAlarmName = [(EKTravelEngineAgendaEntry *)self requestHypothesisRefreshAlarmName];
  [(EKTravelEngineAgendaEntry *)self createAlarmWithName:requestHypothesisRefreshAlarmName atDate:dateCopy];

  v6 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = dateCopy;
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Created a new request refresh timer that will fire at: [%@] for entry: [%@]", &v7, 0x16u);
  }
}

- (void)_uninstallRequestHypothesisRefreshTimer
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Uninstalling request refresh timer for agenda entry: [%@].", &v5, 0xCu);
  }

  requestHypothesisRefreshAlarmName = [(EKTravelEngineAgendaEntry *)self requestHypothesisRefreshAlarmName];
  [(EKTravelEngineAgendaEntry *)self removeAlarmWithName:requestHypothesisRefreshAlarmName];
}

- (void)_createEmissionHypothesisRefreshTimerWithDate:(id)date
{
  v11 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  emissionHypothesisRefreshAlarmName = [(EKTravelEngineAgendaEntry *)self emissionHypothesisRefreshAlarmName];
  [(EKTravelEngineAgendaEntry *)self createAlarmWithName:emissionHypothesisRefreshAlarmName atDate:dateCopy];

  v6 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = dateCopy;
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Created a new emission refresh timer that will fire at: [%@] for entry: [%@]", &v7, 0x16u);
  }
}

- (void)_uninstallEmissionHypothesisRefreshTimer
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Uninstalling emission refresh timer for agenda entry: [%@].", &v5, 0xCu);
  }

  emissionHypothesisRefreshAlarmName = [(EKTravelEngineAgendaEntry *)self emissionHypothesisRefreshAlarmName];
  [(EKTravelEngineAgendaEntry *)self removeAlarmWithName:emissionHypothesisRefreshAlarmName];
}

- (void)reset
{
  workQueue = [(EKTravelEngineAgendaEntry *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__EKTravelEngineAgendaEntry_reset__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

uint64_t __34__EKTravelEngineAgendaEntry_reset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _performAnalyticsPostProcessing];
  v2 = *(a1 + 32);

  return [v2 _clearEverything];
}

- (EKTravelEngineHypothesis)latestHypothesis
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  workQueue = [(EKTravelEngineAgendaEntry *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__EKTravelEngineAgendaEntry_latestHypothesis__block_invoke;
  v6[3] = &unk_278D6F460;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (EKTravelEngineOriginalEvent)originalEvent
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  workQueue = [(EKTravelEngineAgendaEntry *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__EKTravelEngineAgendaEntry_originalEvent__block_invoke;
  v6[3] = &unk_278D6F460;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__EKTravelEngineAgendaEntry_originalEvent__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) originalEventInternal];

  return MEMORY[0x2821F96F8]();
}

+ (double)fuzzyMaximumInitialUpdateIntervalBeforeStartDate
{
  [MEMORY[0x277CC5B00] maximumAllowableTravelTime];
  v3 = v2;
  +[EKTravelEngineThrottle emissionThresholdTimeInterval];
  return v3 + v4;
}

- (void)_accountForGeocodedEventEncounter
{
  if (![(EKTravelEngineAgendaEntry *)self geocodedEventEncountered])
  {
    [(EKTravelEngineAgendaEntry *)self setGeocodedEventEncountered:1];
    CalAnalyticsSendEvent();
    originalEventInternal = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
    [(EKTravelEngineAgendaEntry *)self _trackTTLCandidateEvent:originalEventInternal];
  }
}

- (void)_trackTTLCandidateEvent:(id)event
{
  eventCopy = event;
  hasPredictedLocation = [eventCopy hasPredictedLocation];
  isOnSharedCalendar = [eventCopy isOnSharedCalendar];

  v6 = MEMORY[0x277CF7878];

  [v6 trackTTLCandidateEventHasSuggestedLocation:hasPredictedLocation isOnSharedCalendar:isOnSharedCalendar];
}

- (void)_updateTravelTimeExceededThresholdStateUsingExceededValue:(BOOL)value
{
  valueCopy = value;
  travelTimeThresholdExceededState = [(EKTravelEngineAgendaEntry *)self travelTimeThresholdExceededState];
  if (travelTimeThresholdExceededState == 3)
  {
    if (valueCopy)
    {
      return;
    }
  }

  else
  {
    if (travelTimeThresholdExceededState != 1)
    {
      if (travelTimeThresholdExceededState)
      {
        return;
      }

      if (valueCopy)
      {
        v6 = 3;
      }

      else
      {
        v6 = 1;
      }

      goto LABEL_9;
    }

    if (!valueCopy)
    {
      return;
    }
  }

  v6 = 2;
LABEL_9:

  [(EKTravelEngineAgendaEntry *)self setTravelTimeThresholdExceededState:v6];
}

- (void)_performAnalyticsPostProcessing
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11[0] = @"hypothesizerActivated";
  v3 = MEMORY[0x277CCABB0];
  hypothesizer = [(EKTravelEngineAgendaEntry *)self hypothesizer];
  v5 = [v3 numberWithInt:hypothesizer != 0];
  v12[0] = v5;
  v11[1] = @"hypothesizerSentHypothesis";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[EKTravelEngineAgendaEntry hypothesizerSentAtLeastOneHypothesis](self, "hypothesizerSentAtLeastOneHypothesis")}];
  v12[1] = v6;
  v11[2] = @"travelTimeThresholdExceededState";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[EKTravelEngineAgendaEntry travelTimeThresholdExceededState](self, "travelTimeThresholdExceededState")}];
  v12[2] = v7;
  v11[3] = @"maximumTravelDurationEncountered";
  v8 = MEMORY[0x277CCABB0];
  [(EKTravelEngineAgendaEntry *)self maximumTravelDurationEncountered];
  v9 = [v8 numberWithDouble:?];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];

  CalAnalyticsSendEvent();
}

- (id)requestHypothesisRefreshAlarmName
{
  v2 = MEMORY[0x277CCABB0];
  originalEventInternal = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
  eventExternalURL = [originalEventInternal eventExternalURL];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(eventExternalURL, "hash")}];
  stringValue = [v5 stringValue];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@agendaEntry-%@", @"com.apple.calaccessd.travelEngine.", stringValue];

  return v7;
}

- (id)emissionHypothesisRefreshAlarmName
{
  v2 = MEMORY[0x277CCABB0];
  originalEventInternal = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
  eventExternalURL = [originalEventInternal eventExternalURL];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(eventExternalURL, "hash")}];
  stringValue = [v5 stringValue];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@agendaEntry-emi-%@", @"com.apple.calaccessd.travelEngine.", stringValue];

  return v7;
}

- (BOOL)receivedAlarmNamed:(id)named
{
  namedCopy = named;
  requestHypothesisRefreshAlarmName = [(EKTravelEngineAgendaEntry *)self requestHypothesisRefreshAlarmName];
  v6 = [namedCopy isEqualToString:requestHypothesisRefreshAlarmName];

  emissionHypothesisRefreshAlarmName = [(EKTravelEngineAgendaEntry *)self emissionHypothesisRefreshAlarmName];
  v8 = [namedCopy isEqualToString:emissionHypothesisRefreshAlarmName];

  if (v6)
  {
    workQueue = [(EKTravelEngineAgendaEntry *)self workQueue];
    v10 = workQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__EKTravelEngineAgendaEntry_receivedAlarmNamed___block_invoke;
    v14[3] = &unk_278D6F250;
    v14[4] = self;
    v11 = v14;
LABEL_5:
    dispatch_sync(workQueue, v11);

    return 1;
  }

  if (v8)
  {
    workQueue = [(EKTravelEngineAgendaEntry *)self workQueue];
    v10 = workQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__EKTravelEngineAgendaEntry_receivedAlarmNamed___block_invoke_2;
    v13[3] = &unk_278D6F250;
    v13[4] = self;
    v11 = v13;
    goto LABEL_5;
  }

  return 0;
}

- (void)_sendFeedbackToHypothesizerForPostingNotification:(unint64_t)notification
{
  workQueue = [(EKTravelEngineAgendaEntry *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__EKTravelEngineAgendaEntry__sendFeedbackToHypothesizerForPostingNotification___block_invoke;
  v6[3] = &unk_278D6FC20;
  v6[4] = self;
  v6[5] = notification;
  dispatch_async(workQueue, v6);
}

void __79__EKTravelEngineAgendaEntry__sendFeedbackToHypothesizerForPostingNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hypothesizer];
  if (v2)
  {
    v3 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v4 = MEMORY[0x277CCABB0];
      v5 = *(a1 + 40);
      v6 = v3;
      v7 = [v4 numberWithUnsignedInteger:v5];
      v8 = [*(a1 + 32) originalEventInternal];
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Sending UI feedback to the hypothesizer.  Notification type: [%@].  Original event: [%@]", &v9, 0x16u);
    }

    [v2 didPostUINotification:*(a1 + 40)];
  }
}

- (void)_clearEverything
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    originalEventInternal = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
    v12 = 138412290;
    v13 = originalEventInternal;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Clearing all state in the agenda entry for original event: [%@]", &v12, 0xCu);
  }

  [(EKTravelEngineAgendaEntry *)self setLatestHypothesis:0];
  [(EKTravelEngineAgendaEntry *)self setGeoLocation:0];
  [(EKTravelEngineAgendaEntry *)self setMapKitHandle:0];
  [(EKTravelEngineAgendaEntry *)self setTravelTimeThresholdExceededState:0];
  [(EKTravelEngineAgendaEntry *)self setHypothesizerSentAtLeastOneHypothesis:0];
  [(EKTravelEngineAgendaEntry *)self setMaximumTravelDurationEncountered:0.0];
  geocoder = [(EKTravelEngineAgendaEntry *)self geocoder];
  [geocoder cancel];

  [(EKTravelEngineAgendaEntry *)self setGeocoder:0];
  hypothesizer = [(EKTravelEngineAgendaEntry *)self hypothesizer];
  [hypothesizer stopHypothesizing];

  [(EKTravelEngineAgendaEntry *)self setHypothesizer:0];
  hypothesizerProvider = [(EKTravelEngineAgendaEntry *)self hypothesizerProvider];
  originalEventInternal2 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
  eventExternalURL = [originalEventInternal2 eventExternalURL];
  [hypothesizerProvider removedRouteHypothesizerForEventExternalURL:eventExternalURL];

  throttle = [(EKTravelEngineAgendaEntry *)self throttle];
  [throttle tearDown];

  [(EKTravelEngineAgendaEntry *)self setThrottle:0];
  [(EKTravelEngineAgendaEntry *)self _uninstallRequestHypothesisRefreshTimer];
}

- (void)_enhanceLocation
{
  v41[4] = *MEMORY[0x277D85DE8];
  originalEventInternal = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
  locationMapKitHandle = [originalEventInternal locationMapKitHandle];
  v4 = locationMapKitHandle != 0;

  geoLocation = [originalEventInternal geoLocation];

  locationIsAConferenceRoom = [originalEventInternal locationIsAConferenceRoom];
  automaticGeocodingAllowed = [originalEventInternal automaticGeocodingAllowed];
  v40[0] = @"hasLocationMapKitHandle";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v41[0] = v8;
  v40[1] = @"hasGeoLocation";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:geoLocation != 0];
  v41[1] = v9;
  v40[2] = @"locationIsAConferenceRoom";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:locationIsAConferenceRoom];
  v41[2] = v10;
  v40[3] = @"automaticGeocodingAllowed";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:automaticGeocodingAllowed];
  v41[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];
  v13 = [v12 mutableCopy];

  v14 = MEMORY[0x277CC5978];
  v15 = *MEMORY[0x277CC5978];
  v16 = os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v16)
    {
      *buf = 138412290;
      v39 = originalEventInternal;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "A map handle already exists on the event.  Will not enhance location by geocoding the location string.  Original event: [%@]", buf, 0xCu);
    }

    locationMapKitHandle2 = [originalEventInternal locationMapKitHandle];
    [(EKTravelEngineAgendaEntry *)self setMapKitHandle:locationMapKitHandle2];

    [(EKTravelEngineAgendaEntry *)self _setUpRouteMonitoring];
    CalAnalyticsSendEvent();
  }

  else if (geoLocation)
  {
    if (v16)
    {
      *buf = 138412290;
      v39 = originalEventInternal;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "A geolocation already exists on the event.  Will not enhance location by geocoding the location string.  Original event: [%@]", buf, 0xCu);
    }

    geoLocation2 = [originalEventInternal geoLocation];
    [(EKTravelEngineAgendaEntry *)self setGeoLocation:geoLocation2];

    [(EKTravelEngineAgendaEntry *)self _setUpRouteMonitoring];
    CalAnalyticsSendEvent();
  }

  else if (locationIsAConferenceRoom)
  {
    if (v16)
    {
      *buf = 138412290;
      v39 = originalEventInternal;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "The location is a conference room without structured location information.  Will not proceed to monitor route.  Original event: [%@].", buf, 0xCu);
    }

    CalAnalyticsSendEvent();
  }

  else
  {
    if (v16)
    {
      *buf = 138412290;
      v39 = originalEventInternal;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "No map handle or geolocation exists on the event.  Will enhance location by geocoding the location string.  Original event: [%@]", buf, 0xCu);
    }

    objc_initWeak(&location, self);
    if ([originalEventInternal automaticGeocodingAllowed])
    {
      v19 = objc_alloc_init(MEMORY[0x277CF7838]);
      [v19 start];
      locationString = [originalEventInternal locationString];
      if ([originalEventInternal hasPredictedLocation])
      {
        locationStringWithoutPrediction = [originalEventInternal locationStringWithoutPrediction];

        locationString = locationStringWithoutPrediction;
      }

      v22 = objc_alloc(MEMORY[0x277CF77D0]);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __45__EKTravelEngineAgendaEntry__enhanceLocation__block_invoke;
      v30[3] = &unk_278D6FC70;
      v23 = v19;
      v31 = v23;
      objc_copyWeak(&v36, &location);
      v32 = originalEventInternal;
      v33 = v13;
      v34 = @"travelEngine.enhanceLocation";
      v24 = locationString;
      v35 = v24;
      v25 = [v22 initWithLocationString:v24 andCompletionBlock:v30];
      [(EKTravelEngineAgendaEntry *)self setGeocoder:v25];

      geocoder = [(EKTravelEngineAgendaEntry *)self geocoder];
      [geocoder startGeocoding];

      objc_destroyWeak(&v36);
      v27 = v13;
    }

    else
    {
      v27 = v13;
      v28 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = originalEventInternal;
        _os_log_impl(&dword_242909000, v28, OS_LOG_TYPE_DEFAULT, "Automatic geocoding is not allowed yet. We will not attempt to geocode for this event [%@]", buf, 0xCu);
      }
    }

    objc_destroyWeak(&location);
    v13 = v27;
  }
}

void __45__EKTravelEngineAgendaEntry__enhanceLocation__block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [a1[4] stop];
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__EKTravelEngineAgendaEntry__enhanceLocation__block_invoke_2;
    v10[3] = &unk_278D6FC48;
    v11 = a1[4];
    v12 = a1[5];
    v13 = v6;
    v14 = v5;
    v15 = a1[6];
    v16 = a1[7];
    v17 = a1[8];
    v18 = v8;
    dispatch_async(v9, v10);
  }
}

void __45__EKTravelEngineAgendaEntry__enhanceLocation__block_invoke_2(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) elapsedTimeAsNumber:2];
  v3 = MEMORY[0x277CC5978];
  v4 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = v4;
    v7 = [v5 numberWithDouble:v2 / 1000.0];
    v8 = *(a1 + 40);
    *buf = 138412546;
    v41 = v7;
    v42 = 2112;
    v43 = v8;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Geocoding complete.  Elapsed time: [%@] ms.  Original event: [%@]", buf, 0x16u);
  }

  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10 != 0];
  [*(a1 + 64) setObject:v11 forKeyedSubscript:@"gotError"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:v9 != 0];
  [*(a1 + 64) setObject:v12 forKeyedSubscript:@"gotResult"];

  if (v10)
  {
    v13 = [*(a1 + 48) domain];
    [*(a1 + 64) setObject:v13 forKeyedSubscript:@"errorDomain"];

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "code")}];
    [*(a1 + 64) setObject:v14 forKeyedSubscript:@"errorCode"];

    CalAnalyticsSendEvent();
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      __45__EKTravelEngineAgendaEntry__enhanceLocation__block_invoke_2_cold_2();
    }

    return;
  }

  CalAnalyticsSendEvent();
  v15 = *v3;
  v16 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v16)
    {
      v17 = *(a1 + 80);
      v18 = *(a1 + 56);
      *buf = 138412546;
      v41 = v17;
      v42 = 2112;
      v43 = v18;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "Map item found after geocoding.  Location string: [%@].  Map item: [%@]", buf, 0x16u);
    }

    v19 = [*(a1 + 56) _handle];
    [*(a1 + 88) setMapKitHandle:v19];

    v20 = [*(a1 + 56) placemark];
    v21 = [v20 location];
    [*(a1 + 88) setGeoLocation:v21];

    v22 = (a1 + 40);
    v23 = [*(a1 + 40) eventExternalURL];
    if (v23)
    {
      v24 = [MEMORY[0x277CC5A18] shared];
      v25 = [v24 saveGeocodedLocationsInTravelEngine];

      if (v25)
      {
        v26 = [MEMORY[0x277CBEBC0] URLWithString:v23];
        v27 = objc_alloc_init(MEMORY[0x277CC5A40]);
        v28 = [v27 _eventWithURI:v26 checkValid:0];
        v29 = *(a1 + 56);
        v39 = 0;
        v30 = [v28 updateWithGeocodedMapItemAndSaveWithCommit:v29 eventStore:v27 error:&v39];
        v31 = v39;
        v32 = *v3;
        if (v30)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = *v22;
            *buf = 138412290;
            v41 = v33;
            _os_log_impl(&dword_242909000, v32, OS_LOG_TYPE_DEFAULT, "Saved geocoding result to the database successfully. Original event: [%@].", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          __45__EKTravelEngineAgendaEntry__enhanceLocation__block_invoke_2_cold_1();
        }

        goto LABEL_25;
      }

      v35 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *v22;
        *buf = 138412290;
        v41 = v38;
        v37 = "'saveGeocodedLocationsInTravelEngine' set to 'NO.'  Will not save geocoding result to the database. Original event: [%@].";
        goto LABEL_21;
      }
    }

    else
    {
      v35 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *v22;
        *buf = 138412290;
        v41 = v36;
        v37 = "No event external URL found.  Will not save geocoding result to the database. Original event: [%@].";
LABEL_21:
        _os_log_impl(&dword_242909000, v35, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
      }
    }

LABEL_25:
    [*(a1 + 88) _setUpRouteMonitoring];

    return;
  }

  if (v16)
  {
    v34 = *(a1 + 80);
    *buf = 138412290;
    v41 = v34;
    _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "No geocoding results found.  Will not proceed to monitor route.  Location string: [%@].", buf, 0xCu);
  }

  [*(a1 + 88) setDismissed:1];
}

- (void)_setUpRouteMonitoring
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC5978];
  v4 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    originalEventInternal = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
    v13 = 138412290;
    v14 = originalEventInternal;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Setting up route monitoring.  Original event: [%@]", &v13, 0xCu);
  }

  _generateDestination = [(EKTravelEngineAgendaEntry *)self _generateDestination];
  if (_generateDestination)
  {
    mEMORY[0x277CC5A18] = [MEMORY[0x277CC5A18] shared];
    overrideTravelAdvisoryHypothesis = [mEMORY[0x277CC5A18] overrideTravelAdvisoryHypothesis];

    if (!overrideTravelAdvisoryHypothesis)
    {
      [(EKTravelEngineAgendaEntry *)self _accountForGeocodedEventEncounter];
      [(EKTravelEngineAgendaEntry *)self _createHypothesizerForDestination:_generateDestination];
      goto LABEL_10;
    }

    _createSyntheticHypothesis = [(EKTravelEngineAgendaEntry *)self _createSyntheticHypothesis];
    [(EKTravelEngineAgendaEntry *)self _updateWithHypothesis:_createSyntheticHypothesis];
    goto LABEL_8;
  }

  v11 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    _createSyntheticHypothesis = v11;
    originalEventInternal2 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
    v13 = 138412290;
    v14 = originalEventInternal2;
    _os_log_impl(&dword_242909000, _createSyntheticHypothesis, OS_LOG_TYPE_DEFAULT, "No map handle or geolocation found.  Will not monitor routing for event.  Original event: [%@]", &v13, 0xCu);

LABEL_8:
  }

LABEL_10:
}

- (id)_generateDestination
{
  v30 = *MEMORY[0x277D85DE8];
  mapKitHandle = [(EKTravelEngineAgendaEntry *)self mapKitHandle];

  if (mapKitHandle)
  {
    v4 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      originalEventInternal = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
      v24 = 138412290;
      v25 = originalEventInternal;
      _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Found map handle.  Will use to generate destination.  Original event: [%@]", &v24, 0xCu);
    }

    v7 = objc_alloc(MEMORY[0x277D0EC68]);
    mapKitHandle2 = [(EKTravelEngineAgendaEntry *)self mapKitHandle];
    geoLocation = [v7 initWithMapItemHandle:mapKitHandle2];

    if (!geoLocation)
    {
      goto LABEL_11;
    }

LABEL_10:
    originalEventInternal2 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
    startDate = [originalEventInternal2 startDate];
    [geoLocation setArrivalDate:startDate];

    endDate = [originalEventInternal2 endDate];
    [geoLocation setExpirationDate:endDate];

    [geoLocation setTransportType:{objc_msgSend(originalEventInternal2, "transportTypeOverride")}];
    goto LABEL_11;
  }

  geoLocation = [(EKTravelEngineAgendaEntry *)self geoLocation];

  if (geoLocation)
  {
    geoLocation2 = [(EKTravelEngineAgendaEntry *)self geoLocation];
    [geoLocation2 coordinate];
    v12 = v11;
    v14 = v13;

    v15 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      originalEventInternal3 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
      v18 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
      v24 = 138412802;
      v25 = originalEventInternal3;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, "Found geolocation.  Will use for route monitoring.  Original event: [%@].  Geocoordinates - Latitude: [%@], Longitude: [%@]", &v24, 0x20u);
    }

    geoLocation = [objc_alloc(MEMORY[0x277D0EC68]) initWithCoordinate:{v12, v14}];
    if (geoLocation)
    {
      goto LABEL_10;
    }
  }

LABEL_11:

  return geoLocation;
}

- (id)_createSyntheticHypothesis
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    originalEventInternal = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
    *buf = 138412290;
    v36 = originalEventInternal;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Creating a synthetic hypothesis.  Original event: [%@]", buf, 0xCu);
  }

  originalEventInternal2 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
  startDate = [originalEventInternal2 startDate];

  mEMORY[0x277CC5A18] = [MEMORY[0x277CC5A18] shared];
  [mEMORY[0x277CC5A18] overriddenTravelAdvisoryHypothesisConservativeTravelTime];
  v10 = v9;

  mEMORY[0x277CC5A18]2 = [MEMORY[0x277CC5A18] shared];
  [mEMORY[0x277CC5A18]2 overriddenTravelAdvisoryHypothesisEstimatedTravelTime];
  v13 = v12;

  mEMORY[0x277CC5A18]3 = [MEMORY[0x277CC5A18] shared];
  [mEMORY[0x277CC5A18]3 overriddenTravelAdvisoryHypothesisAggressiveTravelTime];
  v16 = v15;

  v17 = [MEMORY[0x277CC5AF8] syntheticHypothesisWithStartDate:startDate conservativeTravelTime:v10 estimatedTravelTime:v13 aggressiveTravelTime:v16];
  v18 = [v17 mutableCopy];

  mEMORY[0x277CC5A18]4 = [MEMORY[0x277CC5A18] shared];
  overriddenTravelAdvisoryHypothesisTransportType = [mEMORY[0x277CC5A18]4 overriddenTravelAdvisoryHypothesisTransportType];

  v21 = [MEMORY[0x277CC5B00] geoTransportTypeForString:overriddenTravelAdvisoryHypothesisTransportType];
  mEMORY[0x277CC5A18]5 = [MEMORY[0x277CC5A18] shared];
  overriddenTravelAdvisoryHypothesisRouteName = [mEMORY[0x277CC5A18]5 overriddenTravelAdvisoryHypothesisRouteName];

  mEMORY[0x277CC5A18]6 = [MEMORY[0x277CC5A18] shared];
  overriddenTravelAdvisoryHypothesisSupportsLiveTraffic = [mEMORY[0x277CC5A18]6 overriddenTravelAdvisoryHypothesisSupportsLiveTraffic];

  mEMORY[0x277CC5A18]7 = [MEMORY[0x277CC5A18] shared];
  overriddenTravelAdvisoryHypothesisCurrentTrafficDensity = [mEMORY[0x277CC5A18]7 overriddenTravelAdvisoryHypothesisCurrentTrafficDensity];

  v28 = [MEMORY[0x277CC5B00] geoTrafficDensityForString:overriddenTravelAdvisoryHypothesisCurrentTrafficDensity];
  mEMORY[0x277CC5A18]8 = [MEMORY[0x277CC5A18] shared];
  overriddenTravelAdvisoryHypothesisTravelState = [mEMORY[0x277CC5A18]8 overriddenTravelAdvisoryHypothesisTravelState];

  v31 = [MEMORY[0x277CC5B00] geoRouteHypothesisTravelStateForString:overriddenTravelAdvisoryHypothesisTravelState];
  [v18 setTransportType:v21];
  [v18 setRouteName:overriddenTravelAdvisoryHypothesisRouteName];
  [v18 setSupportsLiveTraffic:overriddenTravelAdvisoryHypothesisSupportsLiveTraffic];
  [v18 setCurrentTrafficDensity:v28];
  [v18 setTravelState:v31];
  v32 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v18;
    _os_log_impl(&dword_242909000, v32, OS_LOG_TYPE_DEFAULT, "Created a synthetic hypothesis: [%@]", buf, 0xCu);
  }

  v33 = [v18 copy];

  return v33;
}

- (void)_createHypothesizerForDestination:(id)destination
{
  v27 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  hypothesizerProvider = [(EKTravelEngineAgendaEntry *)self hypothesizerProvider];
  v6 = [hypothesizerProvider hypothesizerForPlannedDestination:destinationCopy];

  [(EKTravelEngineAgendaEntry *)self setHypothesizer:v6];
  v7 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    originalEventInternal = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
    *buf = 138412802;
    v22 = destinationCopy;
    v23 = 2112;
    v24 = originalEventInternal;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Creating hypothesizer to monitor routing.  Destination: [%@] Original event: [%@] Hypothesizer: [%@]", buf, 0x20u);
  }

  objc_initWeak(buf, v6);
  objc_initWeak(&location, self);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __63__EKTravelEngineAgendaEntry__createHypothesizerForDestination___block_invoke;
  v16 = &unk_278D6FCC0;
  objc_copyWeak(&v18, buf);
  objc_copyWeak(&v19, &location);
  selfCopy = self;
  [v6 startHypothesizingWithUpdateHandler:&v13];
  v10 = [(EKTravelEngineAgendaEntry *)self hypothesizerProvider:v13];
  originalEventInternal2 = [(EKTravelEngineAgendaEntry *)self originalEventInternal];
  eventExternalURL = [originalEventInternal2 eventExternalURL];
  [v10 createdRouteHypothesizer:v6 forEventExternalURL:eventExternalURL];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __63__EKTravelEngineAgendaEntry__createHypothesizerForDestination___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained state];
    v5 = [v3 currentHypothesis];
    v6 = MEMORY[0x277CC5978];
    v7 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v4 >= 5)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %lu)", v4];
      }

      else
      {
        v8 = off_278D6FCE0[v4];
      }

      v10 = v8;
      v11 = objc_loadWeakRetained((a1 + 48));
      v12 = [v11 originalEventInternal];
      *buf = 138412802;
      v26 = v8;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Hypothesizer updated to state: [%@].  Original event: [%@]. Hypothesis: [%@]", buf, 0x20u);
    }

    if (v4 == 4)
    {
      v13 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = objc_loadWeakRetained((a1 + 48));
        v16 = [v15 originalEventInternal];
        *buf = 138412290;
        v26 = v16;
        _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Done hypothesizing for original event: [%@]", buf, 0xCu);
      }
    }

    else
    {
      v17 = objc_loadWeakRetained((a1 + 48));
      v18 = [v17 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__EKTravelEngineAgendaEntry__createHypothesizerForDestination___block_invoke_83;
      block[3] = &unk_278D6FC98;
      objc_copyWeak(&v24, (a1 + 48));
      v19 = v5;
      v20 = *(a1 + 32);
      v22 = v19;
      v23 = v20;
      dispatch_async(v18, block);

      objc_destroyWeak(&v24);
    }
  }

  else
  {
    v9 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Hypothesizer is gone.  Returning early.", buf, 2u);
    }
  }
}

void __63__EKTravelEngineAgendaEntry__createHypothesizerForDestination___block_invoke_83(id *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CC5978];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v6 = [WeakRetained originalEventInternal];
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Analyzing hypothesis for original event: [%@]", &v17, 0xCu);
  }

  if (a1[4])
  {
    v7 = objc_loadWeakRetained(a1 + 6);
    [v7 setHypothesizerSentAtLeastOneHypothesis:1];

    [a1[4] conservativeTravelTime];
    v9 = v8;
    [MEMORY[0x277CC5B00] maximumAllowableTravelTime];
    v11 = v9 > v10;
    v12 = [a1[4] copy];
    [a1[5] maximumTravelDurationEncountered];
    if (v13 < v9)
    {
      v13 = v9;
    }

    [a1[5] setMaximumTravelDurationEncountered:v13];
    v14 = objc_loadWeakRetained(a1 + 6);
    [v14 _updateTravelTimeExceededThresholdStateUsingExceededValue:v11];
  }

  else
  {
    v15 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "Not updating the latestHypothesis because the hypothesis is nil.", &v17, 2u);
    }

    v12 = 0;
  }

  v16 = objc_loadWeakRetained(a1 + 6);
  [v16 _updateWithHypothesis:v12];
}

- (void)_updateWithHypothesis:(id)hypothesis
{
  v17 = *MEMORY[0x277D85DE8];
  hypothesisCopy = hypothesis;
  v6 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = hypothesisCopy;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Updating agenda entry with hypothesis: [%@]. Agenda entry: [%@].", &v13, 0x16u);
  }

  if (self->_latestHypothesis != hypothesisCopy)
  {
    objc_storeStrong(&self->_latestHypothesis, hypothesis);
    throttle = [(EKTravelEngineAgendaEntry *)self throttle];
    conservativeDepartureDate = [(EKTravelEngineHypothesis *)hypothesisCopy conservativeDepartureDate];
    [throttle updatePredictedDepartureDate:conservativeDepartureDate];

    if (!hypothesisCopy)
    {
      goto LABEL_9;
    }

    conservativeDepartureDate2 = [(EKTravelEngineHypothesis *)hypothesisCopy conservativeDepartureDate];
    if (conservativeDepartureDate2 || ([(EKTravelEngineHypothesis *)hypothesisCopy suggestedDepartureDate], (conservativeDepartureDate2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = conservativeDepartureDate2;
LABEL_11:

      goto LABEL_12;
    }

    aggressiveDepartureDate = [(EKTravelEngineHypothesis *)hypothesisCopy aggressiveDepartureDate];

    if (!aggressiveDepartureDate)
    {
LABEL_9:
      updateBlock = [(EKTravelEngineAgendaEntry *)self updateBlock];
      v10 = updateBlock;
      if (updateBlock)
      {
        (*(updateBlock + 16))(updateBlock, self);
      }

      goto LABEL_11;
    }
  }

LABEL_12:
}

- (void)createAlarmWithName:(NSObject *)a3 atDate:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2_0(&dword_242909000, a2, a3, "Ignoring attempt to set alarm named %{public}@ for a date in the past (%{public}@)", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end