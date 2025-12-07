@interface CellOutrankHandlerSTM
- (BOOL)armedEntryAction:(id)action;
- (BOOL)armedExitAction:(id)action;
- (BOOL)idleEntryAction:(id)action;
- (BOOL)idleExitAction:(id)action;
- (BOOL)outrankEntryAction:(id)action;
- (BOOL)outrankExitAction:(id)action;
- (CellOutrankHandlerSTM)initWithQueue:(id)queue;
- (id)getState:(BOOL)state;
- (id)internalStateDictionary;
- (unint64_t)currentQualifier;
- (unsigned)evaluateState:(id)state;
- (void)_bringStateToIdle;
- (void)_postUpwards:(unint64_t)upwards;
- (void)administrativeDisable;
- (void)administrativeEnable;
- (void)completeInitialization;
- (void)dealloc;
- (void)populateDefaultPredicates;
- (void)restoreDefaults;
@end

@implementation CellOutrankHandlerSTM

- (CellOutrankHandlerSTM)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = CellOutrankHandlerSTM;
  result = [(ExpertSystemHandlerCore *)&v4 initWithQueue:queue];
  if (result)
  {
    result->_administrativeState = 2;
  }

  return result;
}

- (void)completeInitialization
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  predicatesByKey = self->_predicatesByKey;
  self->_predicatesByKey = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  defaultPredicatesByKey = self->_defaultPredicatesByKey;
  self->_defaultPredicatesByKey = v5;

  [(CellOutrankHandlerSTM *)self populateDefaultPredicates];
  [(CellOutrankHandlerSTM *)self restoreDefaults];
  v7 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_predicatesByKey;
    *buf = 138412290;
    v45 = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "COSM STM completeInitialization, predicates dir %@", buf, 0xCu);
  }

  v42[0] = @"armed";
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(forcedOutrankEligible == NO) AND (rnfAskedOutrank == NO) AND (armedEligible == NO)"];
  v42[1] = @"outrank";
  v43[0] = v9;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(forcedOutrankEligible == NO) AND (rnfAskedOutrank == NO) AND ((cellStatusOutrankExitEligible == YES) OR (wifiManuallyJoined == YES) OR (rnfActivated == YES) OR  (lowPowerModeEnabled == YES) OR (thermalStateAllowsContinuedOutrank == NO) OR  (((screenNotDark == NO) OR (screenUnlocked == NO)) AND    (userInitiatedActivity == NO) AND (coremediaDownloadActive == NO) AND (coremediaDownloadHysteresis == NO)) OR  ((inRegretAvoidanceOutrank == YES) AND ((coremediaDownloadPeriodEnd == YES) OR ((wifiTputAdvice == NO)  AND (wifiTputAdviceEnded == YES)))) OR  ((cellPrivateNetworkActive == NO) AND (inCellPrivateNetworkOutrank == YES)) OR  (((wifiManuallyJoined == YES) OR (wifiChangedSSIDEvent == YES)) AND    (coremediaDownloadActive == NO) AND (coremediaDownloadHysteresis == NO)))"];
  v43[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v12 = [CellOutrankHandlerState createStateWithLabel:@"idle" rank:0 entryPreds:v11];

  objc_initWeak(buf, v12);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __47__CellOutrankHandlerSTM_completeInitialization__block_invoke;
  v35[3] = &unk_27898BDA0;
  objc_copyWeak(&v36, buf);
  v35[4] = self;
  [v12 setEntryAction:v35];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __47__CellOutrankHandlerSTM_completeInitialization__block_invoke_2;
  v33[3] = &unk_27898BDA0;
  objc_copyWeak(&v34, buf);
  v33[4] = self;
  [v12 setExitAction:v33];
  v40 = @"idle";
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(forcedOutrankEligible == YES) OR (rnfAskedOutrank == YES) OR ((armedEligible == YES) AND (inDampeningPeriod == NO))"];
  v41 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v15 = [CellOutrankHandlerState createStateWithLabel:@"armed" rank:50 entryPreds:v14];

  objc_initWeak(&location, v15);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __47__CellOutrankHandlerSTM_completeInitialization__block_invoke_3;
  v30[3] = &unk_27898BDA0;
  objc_copyWeak(&v31, &location);
  v30[4] = self;
  [v15 setEntryAction:v30];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __47__CellOutrankHandlerSTM_completeInitialization__block_invoke_4;
  v28[3] = &unk_27898BDA0;
  objc_copyWeak(&v29, &location);
  v28[4] = self;
  [v15 setExitAction:v28];
  v38 = @"armed";
  v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(forcedOutrankEligible == YES) OR (rnfAskedOutrank == YES) OR ((armedEligible == YES) AND ((wifiGoodSecurity == NO) OR  (cellPrivateNetworkActive == YES) OR  (wifiLowDataMode == YES) OR  (coremediaDownloadActive == YES) OR  (captivityFrictionEligible == YES) OR  (wifiAmbientFrictionEligible == YES) OR  (wifiTputAdvice == YES) OR  (userInitiatedFrictionEligible == YES) OR  (trialWaiveOutrankReason == YES) OR  ((wifiNeverOutrank == NO) AND (wifiAlwaysOutrank == YES) AND (cellWRMExpensive == NO))))"];
  v39 = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v18 = [CellOutrankHandlerState createStateWithLabel:@"outrank" rank:100 entryPreds:v17];

  objc_initWeak(&from, v18);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __47__CellOutrankHandlerSTM_completeInitialization__block_invoke_5;
  v25[3] = &unk_27898BDA0;
  objc_copyWeak(&v26, &from);
  v25[4] = self;
  [v18 setEntryAction:v25];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __47__CellOutrankHandlerSTM_completeInitialization__block_invoke_6;
  v23[3] = &unk_27898BDA0;
  objc_copyWeak(&v24, &from);
  v23[4] = self;
  [v18 setExitAction:v23];
  v37[0] = v12;
  v37[1] = v15;
  v37[2] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
  states = self->_states;
  self->_states = v19;

  v21 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "COSM STM completeInitialization, about to bringStateToIdle", v22, 2u);
  }

  [(CellOutrankHandlerSTM *)self _bringStateToIdle];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(buf);
}

uint64_t __47__CellOutrankHandlerSTM_completeInitialization__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) idleEntryAction:WeakRetained];

  return v3;
}

uint64_t __47__CellOutrankHandlerSTM_completeInitialization__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) idleExitAction:WeakRetained];

  return v3;
}

uint64_t __47__CellOutrankHandlerSTM_completeInitialization__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) armedEntryAction:WeakRetained];

  return v3;
}

uint64_t __47__CellOutrankHandlerSTM_completeInitialization__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) armedExitAction:WeakRetained];

  return v3;
}

uint64_t __47__CellOutrankHandlerSTM_completeInitialization__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) outrankEntryAction:WeakRetained];

  return v3;
}

uint64_t __47__CellOutrankHandlerSTM_completeInitialization__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) outrankExitAction:WeakRetained];

  return v3;
}

- (BOOL)idleEntryAction:(id)action
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    label = [action label];
    v8 = 138412290;
    v9 = label;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "COSM STM entry action for: %@", &v8, 0xCu);
  }

  return 1;
}

- (BOOL)armedEntryAction:(id)action
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    label = [action label];
    v8 = 138412290;
    v9 = label;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "COSM STM entry action for: %@", &v8, 0xCu);
  }

  return 1;
}

- (BOOL)outrankEntryAction:(id)action
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    label = [action label];
    v8 = 138412290;
    v9 = label;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "COSM STM entry action for: %@", &v8, 0xCu);
  }

  return 1;
}

- (BOOL)idleExitAction:(id)action
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    label = [action label];
    v8 = 138412290;
    v9 = label;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "COSM STM exit action for: %@", &v8, 0xCu);
  }

  return 1;
}

- (BOOL)armedExitAction:(id)action
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    label = [action label];
    v8 = 138412290;
    v9 = label;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "COSM STM exit action for: %@", &v8, 0xCu);
  }

  return 1;
}

- (BOOL)outrankExitAction:(id)action
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    label = [action label];
    v8 = 138412290;
    v9 = label;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "COSM STM exit action for: %@", &v8, 0xCu);
  }

  return 1;
}

- (void)dealloc
{
  [(CellOutrankHandlerSTM *)self administrativeDisable];
  v3.receiver = self;
  v3.super_class = CellOutrankHandlerSTM;
  [(ExpertSystemHandlerCore *)&v3 dealloc];
}

- (void)administrativeEnable
{
  v2 = outrankLogHandle;
  if (self->_administrativeState == 2)
  {
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "COSM STM administrativeEnable", buf, 2u);
    }

    self->_administrativeState = 1;
  }

  else if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "COSM STM ignoring double turn-on issue", v4, 2u);
  }
}

- (void)administrativeDisable
{
  v2 = outrankLogHandle;
  if (self->_administrativeState == 1)
  {
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "COSM STM administrativeDisable", buf, 2u);
    }

    [(CellOutrankHandlerSTM *)self _bringStateToIdle];
    self->_administrativeState = 2;
  }

  else if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "COSM STM ignoring double turn-off issue", v4, 2u);
  }
}

- (void)_bringStateToIdle
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->_states objectAtIndexedSubscript:0];
  v4 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "COSM STM _bringStateToIdle called", buf, 2u);
  }

  currentState = self->_currentState;
  if (currentState)
  {
    label = [(ExpertSystemStateCore *)currentState label];
    label2 = [v3 label];
    v8 = [label isEqualToString:label2];

    if ((v8 & 1) == 0)
    {
      v9 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_currentState;
        v11 = v9;
        label3 = [(ExpertSystemStateCore *)v10 label];
        *buf = 138412290;
        v20 = label3;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "COSM STM Idling from %@ state", buf, 0xCu);
      }

      states = self->_states;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __42__CellOutrankHandlerSTM__bringStateToIdle__block_invoke;
      v18[3] = &unk_27898E468;
      v18[4] = self;
      [(NSArray *)states enumerateObjectsWithOptions:2 usingBlock:v18];
    }
  }

  else
  {
    v14 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "COSM STM _bringStateToIdle, set current to _states[0]", buf, 2u);
    }

    v15 = [(NSArray *)self->_states objectAtIndexedSubscript:0];
    v16 = self->_currentState;
    self->_currentState = v15;

    entryAction = [(ExpertSystemStateCore *)self->_currentState entryAction];
    entryAction[2]();
  }

  self->_inDampeningPeriod = 0;
  [(ExpertSystemStateCore *)self->_currentState setPreviousState:0];
}

void __42__CellOutrankHandlerSTM__bringStateToIdle__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 isEqual:*(*(a1 + 32) + 32)];
  if (a3 && v6)
  {
    v7 = [v5 exitAction];
    v7[2]();

    v8 = [v5 sojournTime];
    [v8 stop];

    [v5 setPreviousState:0];
    v9 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 67109120;
      v15[1] = a3 - 1;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "COSM STM _bringStateToIdle, set current to states[%d]", v15, 8u);
    }

    v10 = [*(*(a1 + 32) + 40) objectAtIndex:a3 - 1];
    v11 = *(a1 + 32);
    v12 = *(v11 + 32);
    *(v11 + 32) = v10;

    [*(*(a1 + 32) + 32) setPreviousState:v5];
    v13 = [*(*(a1 + 32) + 32) entryAction];
    v13[2]();

    v14 = [*(*(a1 + 32) + 32) sojournTime];
    [v14 start];
  }
}

- (id)getState:(BOOL)state
{
  stateCopy = state;
  v75 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_administrativeState == 1)
  {
    v6 = "Enabled";
  }

  else
  {
    v6 = "Disabled";
  }

  label = [(ExpertSystemStateCore *)self->_currentState label];
  v8 = [v5 initWithFormat:@"COSM STM Administrative state: %s   CurrentState: %@", v6, label];

  v59 = v4;
  [v4 addObject:v8];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v9 = self->_states;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v68 objects:v74 count:16];
  selfCopy = self;
  if (v10)
  {
    v11 = v10;
    v12 = *v69;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v69 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v68 + 1) + 8 * i);
        v15 = [(NSArray *)self->_states objectAtIndexedSubscript:0];

        if (v14 != v15)
        {
          v16 = objc_alloc(MEMORY[0x277CCACA8]);
          label2 = [v14 label];
          sojournTime = [v14 sojournTime];
          [sojournTime total];
          v20 = [v16 initWithFormat:@"COSM STM Cumulative time on state %@: %f", label2, v19];

          self = selfCopy;
          [v4 addObject:v20];
          v8 = v20;
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v11);
  }

  if (stateCopy)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = self->_states;
    v55 = [(NSArray *)obj countByEnumeratingWithState:&v64 objects:v73 count:16];
    if (v55)
    {
      v54 = *v65;
      do
      {
        v21 = 0;
        do
        {
          if (*v65 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v57 = v21;
          v22 = *(*(&v64 + 1) + 8 * v21);
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          entryPreds = [v22 entryPreds];
          v23 = [entryPreds countByEnumeratingWithState:&v60 objects:v72 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v61;
            do
            {
              v26 = 0;
              v27 = v8;
              do
              {
                if (*v61 != v25)
                {
                  objc_enumerationMutation(entryPreds);
                }

                v28 = *(*(&v60 + 1) + 8 * v26);
                v29 = objc_alloc(MEMORY[0x277CCACA8]);
                label3 = [v22 label];
                entryPreds2 = [v22 entryPreds];
                v32 = [entryPreds2 objectForKeyedSubscript:v28];
                v8 = [v29 initWithFormat:@"COSM STM state %@  Pred %@:  %@", label3, v28, v32];

                [v59 addObject:v8];
                ++v26;
                v27 = v8;
              }

              while (v24 != v26);
              v24 = [entryPreds countByEnumeratingWithState:&v60 objects:v72 count:16];
            }

            while (v24);
          }

          v21 = v57 + 1;
        }

        while (v57 + 1 != v55);
        v55 = [(NSArray *)obj countByEnumeratingWithState:&v64 objects:v73 count:16];
      }

      while (v55);
    }

    self = selfCopy;
  }

  if (self->_lastStateSummaryProcessed)
  {
    v33 = objc_alloc(MEMORY[0x277CCACA8]);
    v34 = dateStringMillisecondsFromReferenceInterval(self->_lastStateSummaryTimestamp);
    v35 = [COSMStateSummary summaryFromFlags:[(COSMStateSummary *)self->_lastStateSummaryProcessed reasonFlags]];
    v36 = [v33 initWithFormat:@"COSM STM Most recent input:     %@  %@", v34, v35];

    [v59 addObject:v36];
    v8 = v36;
  }

  if (self->_prevStateSummaryProcessed)
  {
    v37 = objc_alloc(MEMORY[0x277CCACA8]);
    v38 = dateStringMillisecondsFromReferenceInterval(self->_prevStateSummaryTimestamp);
    v39 = [COSMStateSummary summaryFromFlags:[(COSMStateSummary *)self->_prevStateSummaryProcessed reasonFlags]];
    v40 = [v37 initWithFormat:@"COSM STM Previous input:        %@  %@", v38, v39];

    [v59 addObject:v40];
    v8 = v40;
  }

  if (self->_lastStateSummaryCausingChange)
  {
    v41 = objc_alloc(MEMORY[0x277CCACA8]);
    v42 = dateStringMillisecondsFromReferenceInterval(self->_lastStateSummaryCausingChangeTimestamp);
    v43 = [COSMStateSummary summaryFromFlags:[(COSMStateSummary *)self->_lastStateSummaryCausingChange reasonFlags]];
    v44 = [v41 initWithFormat:@"COSM STM Last state change via: %@  %@", v42, v43];

    [v59 addObject:v44];
    v8 = v44;
  }

  if (stateCopy)
  {
    if (self->_lastStateSummaryProcessed)
    {
      v45 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"COSM STM Most recent input:      %@", self->_lastStateSummaryProcessed];

      [v59 addObject:v45];
      arrayOfStringsDescription = [(COSMStateSummary *)self->_lastStateSummaryProcessed arrayOfStringsDescription];
      [v59 addObjectsFromArray:arrayOfStringsDescription];

      v8 = v45;
    }

    if (self->_prevStateSummaryProcessed)
    {
      v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"COSM STM Previous input:         %@", self->_prevStateSummaryProcessed];

      [v59 addObject:v47];
      arrayOfStringsDescription2 = [(COSMStateSummary *)self->_prevStateSummaryProcessed arrayOfStringsDescription];
      [v59 addObjectsFromArray:arrayOfStringsDescription2];

      v8 = v47;
    }

    if (self->_lastStateSummaryCausingChange)
    {
      v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"COSM STM Last state change via:  %@", self->_lastStateSummaryCausingChange];

      [v59 addObject:v49];
      arrayOfStringsDescription3 = [(COSMStateSummary *)self->_lastStateSummaryCausingChange arrayOfStringsDescription];
      [v59 addObjectsFromArray:arrayOfStringsDescription3];

      v8 = v49;
    }
  }

  return v59;
}

- (id)internalStateDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_administrativeState];
  [dictionary setObject:v4 forKeyedSubscript:@"adminEnabled"];

  label = [(ExpertSystemStateCore *)self->_currentState label];
  [dictionary setObject:label forKeyedSubscript:@"stateMachineState"];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"internalStateVariables"];

  return dictionary;
}

- (unint64_t)currentQualifier
{
  result = self->_lastStateSummaryCausingChange;
  if (result)
  {
    return [result reasonFlags];
  }

  return result;
}

- (void)_postUpwards:(unint64_t)upwards
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    upwardsCopy = upwards;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "COSM STM posting recommendation code: %llu", &v5, 0xCu);
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_30);
}

- (void)populateDefaultPredicates
{
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(wifiEligible == YES) AND (cellEligible == YES) AND (deviceEligible == YES) AND ((rnfActivated == NO) OR (wifiGoodSecurity == NO) OR (cellPrivateNetworkActive == YES))"];
  if (v3)
  {
    [(NSMutableDictionary *)self->_defaultPredicatesByKey setObject:v3 forKeyedSubscript:@"armedEligible"];
  }

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(armedEligible == YES) AND  (wifiGoodSecurity == YES) AND  (wifiLowDataMode == NO) AND  (captivityFrictionEligible == NO) AND  (wifiAmbientFrictionEligible == NO) AND  (userInitiatedFrictionEligible == NO) AND  ((coremediaDownloadActive == YES) OR (wifiTputAdvice == YES))"];

  if (v4)
  {
    [(NSMutableDictionary *)self->_defaultPredicatesByKey setObject:v4 forKeyedSubscript:@"regretAvoidance"];
  }

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(excessCertificateErrorsEvent == YES) OR (captivityIndeterminateEvent == YES)"];

  if (v5)
  {
    [(NSMutableDictionary *)self->_defaultPredicatesByKey setObject:v5 forKeyedSubscript:@"captivityFriction"];
  }

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(cellActive == YES) AND ((cellExpensive == NO) OR (cellWRMExpensive == NO)) AND (cellLowDataMode == NO) AND (cellWRMStatusGood == YES)"];

  if (v6)
  {
    [(NSMutableDictionary *)self->_defaultPredicatesByKey setObject:v6 forKeyedSubscript:@"cellEligible"];
  }

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(cellActive == NO) OR ((cellExpensive == YES) AND (cellWRMExpensive == YES)) OR (cellLowDataMode == YES) OR (cellWRMStatusProlongedBad == YES)"];

  if (v7)
  {
    [(NSMutableDictionary *)self->_defaultPredicatesByKey setObject:v7 forKeyedSubscript:@"cellOutrankExitEligible"];
  }

  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(lowPowerModeEnabled == NO) AND (thermalStateAllowsEntryToOutrank == YES) AND (screenNotDark == YES) AND (screenUnlocked == YES)"];

  if (v8)
  {
    [(NSMutableDictionary *)self->_defaultPredicatesByKey setObject:v8 forKeyedSubscript:@"deviceEligible"];
  }

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(((forceCellPreferred == YES) OR (force5GPreferred == YES)) AND (cellActive == YES) AND ((cellExpensive == NO) OR (cellWRMExpensive == NO)) AND (cellLowDataMode == NO))"];

  if (v9)
  {
    [(NSMutableDictionary *)self->_defaultPredicatesByKey setObject:v9 forKeyedSubscript:@"forcedOutrankEligible"];
  }

  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"((userInitiatedActivity == YES) AND  ((wifiPolledFlowsProlongedBad == YES) OR   (wifiDnsProlongedOut == YES)))"];

  if (v10)
  {
    [(NSMutableDictionary *)self->_defaultPredicatesByKey setObject:v10 forKeyedSubscript:@"userInitiatedFriction"];
  }

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(arpFailureEvent == YES) OR (nd6FailureEvent == YES) OR (dataStallThresholdEvent == YES)"];

  if (v11)
  {
    [(NSMutableDictionary *)self->_defaultPredicatesByKey setObject:v11 forKeyedSubscript:@"wifiAmbientFriction"];
  }

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(wifiNeverOutrank == NO) AND (((wifiAlwaysOutrank == YES) AND (cellWRMExpensive == NO)) OR ((wifiPublic == NO) OR ((wifiHotspot20 == NO) AND (wifiManaged == NO))))"];

  if (v12)
  {
    [(NSMutableDictionary *)self->_defaultPredicatesByKey setObject:v12 forKeyedSubscript:@"wifiPublicEligible"];
  }

  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"((wifiActive == YES) AND ((wifiPrimary == YES) OR (wifiGoodSecurity == NO)) AND (wifiManuallyJoined == NO) AND ((wifiSporadic == YES) OR (cellPrivateNetworkActive == YES) OR ((wifiAlwaysOutrank == YES) AND (cellWRMExpensive == NO))) AND ((LOIUseAuthorized == NO) OR ((homeLocationIsKnown == YES) AND (wifiHome == NO))) AND (wifiPublicEligible == YES))"];

  v13 = v14;
  if (v14)
  {
    [(NSMutableDictionary *)self->_defaultPredicatesByKey setObject:v14 forKeyedSubscript:@"wifiEligible"];
    v13 = v14;
  }
}

- (void)restoreDefaults
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_defaultPredicatesByKey;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_defaultPredicatesByKey objectForKeyedSubscript:v8, v10];
        [(NSMutableDictionary *)self->_predicatesByKey setObject:v9 forKeyedSubscript:v8];
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (unsigned)evaluateState:(id)state
{
  v115 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = &outrankLogHandle;
  if ([stateCopy dampeningTimerExpiryEvent])
  {
    if (self->_inDampeningPeriod)
    {
      self->_inDampeningPeriod = 0;
      v6 = outrankLogHandle;
      if (!os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      *buf = 0;
      v7 = "COSM evaluateState dampening timer expiry";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v10 = outrankLogHandle;
      if (!os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 0;
      v7 = "COSM evaluateState gets dampening timer expiry when not dampening";
      v8 = v10;
      v9 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_23255B000, v8, v9, v7, buf, 2u);
  }

LABEL_8:
  stateCopy2 = state;
  [stateCopy setInDampeningPeriod:self->_inDampeningPeriod];
  [stateCopy setInRegretAvoidanceOutrank:self->_inRegretAvoidanceOutrank];
  [stateCopy setInCellPrivateNetworkOutrank:self->_inCellPrivateNetworkActiveOutrank];
  v11 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    currentState = self->_currentState;
    v13 = v11;
    label = [(ExpertSystemStateCore *)currentState label];
    v15 = +[COSMStateSummary summaryFromFlags:](COSMStateSummary, "summaryFromFlags:", [stateCopy reasonFlags]);
    *buf = 138412546;
    v109 = label;
    v110 = 2112;
    v111 = v15;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "COSM STM evaluateState <%@> %@", buf, 0x16u);
  }

  v16 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v109 = stateCopy;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "COSM STM evaluateState %@", buf, 0xCu);
  }

  v17 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v18 = v17;
    prettyJSONStringPart1 = [stateCopy prettyJSONStringPart1];
    *buf = 138412290;
    v109 = prettyJSONStringPart1;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "COSM STM evaluateState entered with machine state: %@", buf, 0xCu);
  }

  v20 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v21 = v20;
    prettyJSONStringPart2 = [stateCopy prettyJSONStringPart2];
    *buf = 138412290;
    v109 = prettyJSONStringPart2;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "COSM STM evaluateState entered with machine state: %@", buf, 0xCu);
  }

  v23 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v24 = v23;
    prettyJSONStringPart3 = [stateCopy prettyJSONStringPart3];
    *buf = 138412290;
    v109 = prettyJSONStringPart3;
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "COSM STM evaluateState entered with machine state: %@", buf, 0xCu);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v27 = v26;
  v28 = self->_currentState;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v100 = v28;
  obj = self->_states;
  v29 = [(NSArray *)obj countByEnumeratingWithState:&v104 objects:v114 count:16];
  if (!v29)
  {
    v99 = 0;
    goto LABEL_61;
  }

  v30 = v29;
  v101 = 0;
  v99 = 0;
  while (2)
  {
    v31 = v5;
    v32 = *v105;
LABEL_21:
    v33 = 0;
    while (1)
    {
      if (*v105 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v104 + 1) + 8 * v33);
      if (v34 == self->_currentState)
      {
        goto LABEL_33;
      }

      entryPreds = [*(*(&v104 + 1) + 8 * v33) entryPreds];
      label2 = [(ExpertSystemStateCore *)self->_currentState label];
      v37 = [entryPreds objectForKeyedSubscript:label2];

      if (v37)
      {
        break;
      }

      v47 = *v31;
      if (os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        v48 = self->_currentState;
        v40 = v47;
        label3 = [(ExpertSystemStateCore *)v48 label];
        label4 = [(ExpertSystemStateCore *)v34 label];
        *buf = 138412802;
        v109 = label3;
        v110 = 2112;
        v111 = label4;
        v112 = 2048;
        v113 = 0;
        v44 = v40;
        v45 = "COSM STM Current state: %@, ineligible for %@ as nil pred, (%p)";
        v46 = 32;
        goto LABEL_31;
      }

LABEL_32:

LABEL_33:
      if (v30 == ++v33)
      {
        v30 = [(NSArray *)obj countByEnumeratingWithState:&v104 objects:v114 count:16];
        if (v30)
        {
          goto LABEL_21;
        }

        v49 = 0;
        v5 = v31;
        goto LABEL_47;
      }
    }

    [(CellOutrankHandlerState *)self->_currentState noPreconditions];
    if (![v37 evaluateWithObject:stateCopy])
    {
      v38 = *v31;
      if (os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        v39 = self->_currentState;
        v40 = v38;
        label3 = [(ExpertSystemStateCore *)v39 label];
        label4 = [(ExpertSystemStateCore *)v34 label];
        v43 = [v37 evaluateWithObject:stateCopy];
        *buf = 138412802;
        v109 = label3;
        v110 = 2112;
        v111 = label4;
        v112 = 1024;
        LODWORD(v113) = v43;
        v44 = v40;
        v45 = "COSM STM Current state: %@, eligible for %@ but constraints unsatisfied (pred:%d)";
        v46 = 28;
LABEL_31:
        _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEBUG, v45, buf, v46);

        goto LABEL_32;
      }

      goto LABEL_32;
    }

    exitAction = [(ExpertSystemStateCore *)self->_currentState exitAction];
    v51 = exitAction[2]();

    v5 = v31;
    v52 = *v31;
    v53 = os_log_type_enabled(*v31, OS_LOG_TYPE_DEFAULT);
    if ((v51 & 1) == 0)
    {
      if (v53)
      {
        v67 = self->_currentState;
        v68 = v52;
        label5 = [(ExpertSystemStateCore *)v67 label];
        *buf = 138412290;
        v109 = label5;
        _os_log_impl(&dword_23255B000, v68, OS_LOG_TYPE_DEFAULT, "COSM STM Current state: %@, exit denied", buf, 0xCu);
      }

      v49 = 0;
LABEL_47:
      v66 = v101;
      goto LABEL_48;
    }

    if (v53)
    {
      v54 = self->_currentState;
      v55 = v52;
      label6 = [(ExpertSystemStateCore *)v54 label];
      label7 = [(ExpertSystemStateCore *)v34 label];
      *buf = 138412546;
      v109 = label6;
      v110 = 2112;
      v111 = label7;
      _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_DEFAULT, "COSM STM State change!!!   %@ -> %@", buf, 0x16u);
    }

    [(ExpertSystemStateCore *)self->_currentState setPreviousState:0];
    v58 = self->_currentState;
    v59 = [(NSArray *)self->_states objectAtIndexedSubscript:0];

    if (v58 != v59)
    {
      sojournTime = [(ExpertSystemStateCore *)self->_currentState sojournTime];
      [sojournTime stop];
    }

    v61 = self->_currentState;

    objc_storeStrong(&self->_currentState, v34);
    [(ExpertSystemStateCore *)self->_currentState setPreviousState:v61];
    v62 = self->_currentState;
    v63 = [(NSArray *)self->_states objectAtIndexedSubscript:0];

    if (v62 != v63)
    {
      sojournTime2 = [(ExpertSystemStateCore *)self->_currentState sojournTime];
      [sojournTime2 start];
    }

    entryAction = [(ExpertSystemStateCore *)self->_currentState entryAction];
    entryAction[2]();

    v66 = v101 + 1;
    v49 = 1;
    v99 = v61;
LABEL_48:
    if (v66 >= 5)
    {
      v78 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v79 = v78;
        label8 = [(ExpertSystemStateCore *)v99 label];
        label9 = [(ExpertSystemStateCore *)self->_currentState label];
        *buf = 138412802;
        v109 = label8;
        v110 = 2112;
        v111 = label9;
        v112 = 2112;
        v113 = stateCopy;
        _os_log_impl(&dword_23255B000, v79, OS_LOG_TYPE_ERROR, "COSM STM Pingponging from %@ to %@, incoming state %@", buf, 0x20u);
      }

      v82 = +[SystemSettingsRelay defaultRelay];
      if ([v82 autoBugCaptureEnabled])
      {
        v83 = +[SystemProperties sharedInstance];
        internalBuild = [v83 internalBuild];

        if (!internalBuild)
        {
LABEL_69:
          [(CellOutrankHandlerSTM *)self _bringStateToIdle];
          break;
        }

        v85 = objc_alloc_init(MEMORY[0x277D6AFC8]);
        v82 = v85;
        if (v85)
        {
          v86 = [v85 signatureWithDomain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B220] subType:@"CellOutrank" subtypeContext:@"Loop detection in STM" detectedProcess:@"symptomsd" triggerThresholdValues:0];
          [v82 snapshotWithSignature:v86 duration:0 events:0 payload:0 actions:&__block_literal_global_159_0 reply:0.0];
        }
      }

      goto LABEL_69;
    }

    if (v49)
    {
      label10 = [(ExpertSystemStateCore *)v100 label];
      v71 = [label10 isEqualToString:@"outrank"];

      if (v71)
      {
        self->_inRegretAvoidanceOutrank = 0;
        self->_inCellPrivateNetworkActiveOutrank = 0;
      }

      label11 = [(ExpertSystemStateCore *)self->_currentState label];
      if ([label11 isEqualToString:@"idle"])
      {
        label12 = [(ExpertSystemStateCore *)v100 label];
        v74 = [label12 isEqualToString:@"outrank"];

        if (v74)
        {
          *(&self->super.super.isa + v97) = 1;
          break;
        }
      }

      else
      {
      }

      v101 = v66;
      label13 = [(ExpertSystemStateCore *)self->_currentState label];
      v76 = [label13 isEqualToString:@"outrank"];

      if (v76)
      {
        armedToOutrankRegretAvoidancePred = [(CellOutrankHandlerSTM *)self armedToOutrankRegretAvoidancePred];
        self->_inRegretAvoidanceOutrank = [armedToOutrankRegretAvoidancePred evaluateWithObject:stateCopy];

        self->_inCellPrivateNetworkActiveOutrank = [stateCopy cellPrivateNetworkActive];
      }

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      obj = self->_states;
      v30 = [(NSArray *)obj countByEnumeratingWithState:&v104 objects:v114 count:16];
      if (!v30)
      {
LABEL_61:

        break;
      }

      continue;
    }

    break;
  }

  objc_storeStrong(&self->_prevStateSummaryProcessed, self->_lastStateSummaryProcessed);
  self->_prevStateSummaryTimestamp = self->_lastStateSummaryTimestamp;
  objc_storeStrong(&self->_lastStateSummaryProcessed, stateCopy2);
  self->_lastStateSummaryTimestamp = v27;
  [(CellOutrankHandlerSTM *)self valdateExitState:self->_currentState originally:v100];
  if (v100 != self->_currentState || !self->_lastStateSummaryCausingChange)
  {
    objc_storeStrong(&self->_lastStateSummaryCausingChange, stateCopy2);
    self->_lastStateSummaryCausingChangeTimestamp = v27;
  }

  v87 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
  {
    v88 = self->_currentState;
    v89 = v87;
    label14 = [(ExpertSystemStateCore *)v88 label];
    *buf = 138412290;
    v109 = label14;
    _os_log_impl(&dword_23255B000, v89, OS_LOG_TYPE_INFO, "COSM STM evaluateState exit with state label: <%@>", buf, 0xCu);
  }

  label15 = [(ExpertSystemStateCore *)self->_currentState label];
  v92 = [label15 isEqualToString:@"idle"];

  if (v92)
  {
    v93 = 0;
  }

  else
  {
    label16 = [(ExpertSystemStateCore *)self->_currentState label];
    v95 = [label16 isEqualToString:@"armed"];

    if (v95)
    {
      v93 = 2;
    }

    else
    {
      v93 = 3;
    }
  }

  return v93;
}

void __39__CellOutrankHandlerSTM_evaluateState___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CellOutrank loop detection ABC case response: %@", &v4, 0xCu);
  }
}

@end