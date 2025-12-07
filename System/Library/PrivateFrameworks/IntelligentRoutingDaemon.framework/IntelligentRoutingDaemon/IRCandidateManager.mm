@interface IRCandidateManager
- (IRCandidateManager)initWithQueue:(id)queue contextObserver:(id)observer avOutputDeviceProvider:(id)provider rapportDeviceProvider:(id)deviceProvider store:(id)store;
- (IRPolicyManagerContextObserver)contextObserver;
- (id)_lastUsedDateForCandidate:(id)candidate fromHistoryEventsContainer:(id)container;
- (id)_nodesForCandidate:(id)candidate fromExistingCandidate:(id)existingCandidate;
- (id)_oldestCandidatesFrom:(id)from forKey:(id)key limit:(unint64_t)limit;
- (void)_addCandidates:(id)candidates;
- (void)_deleteCandidates:(id)candidates;
- (void)_didUpdateContextWithReason:(id)reason;
- (void)_handleCandidatesCleanup;
- (void)_updateCandidate:(id)candidate;
- (void)dealloc;
- (void)deallocSync;
- (void)deleteBrokerCandidates;
- (void)deleteCandidate:(id)candidate;
- (void)notifyAddEventForCandidateIdentifier:(id)identifier;
- (void)provider:(id)provider didUpdateAVOutputDevices:(id)devices;
- (void)provider:(id)provider didUpdateRapportDevices:(id)devices;
- (void)synchronizeAndFetchFromDBOnDisk;
- (void)updateCandidates:(id)candidates withHistoryEventsContainer:(id)container;
@end

@implementation IRCandidateManager

- (IRCandidateManager)initWithQueue:(id)queue contextObserver:(id)observer avOutputDeviceProvider:(id)provider rapportDeviceProvider:(id)deviceProvider store:(id)store
{
  queueCopy = queue;
  observerCopy = observer;
  providerCopy = provider;
  deviceProviderCopy = deviceProvider;
  storeCopy = store;
  v22.receiver = self;
  v22.super_class = IRCandidateManager;
  v17 = [(IRCandidateManager *)&v22 init];
  v18 = v17;
  if (v17)
  {
    [(IRCandidateManager *)v17 setQueue:queueCopy];
    [(IRCandidateManager *)v18 setContextObserver:observerCopy];
    [(IRCandidateManager *)v18 setAvOutputDeviceProvider:providerCopy];
    [(IRCandidateManager *)v18 setRapportDeviceProvider:deviceProviderCopy];
    [(IRCandidateManager *)v18 setStore:storeCopy];
    [(IRCandidateManager *)v18 synchronizeAndFetchFromDBOnDisk];
    avOutputDeviceProvider = [(IRCandidateManager *)v18 avOutputDeviceProvider];
    [avOutputDeviceProvider addObserver:v18];

    rapportDeviceProvider = [(IRCandidateManager *)v18 rapportDeviceProvider];
    [rapportDeviceProvider addObserver:v18];
  }

  return v18;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IRCandidateManager;
  [(IRCandidateManager *)&v2 dealloc];
}

- (void)deallocSync
{
  avOutputDeviceProvider = [(IRCandidateManager *)self avOutputDeviceProvider];
  [avOutputDeviceProvider removeObserver:self];

  rapportDeviceProvider = [(IRCandidateManager *)self rapportDeviceProvider];
  [rapportDeviceProvider removeObserver:self];
}

- (void)updateCandidates:(id)candidates withHistoryEventsContainer:(id)container
{
  v72 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  containerCopy = container;
  v6 = [MEMORY[0x277CBEB58] set];
  v56 = [MEMORY[0x277CBEB58] set];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v7 = candidatesCopy;
  v58 = [v7 countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v58)
  {
    v53 = v6;
    v55 = 0;
    v9 = *v60;
    v10 = MEMORY[0x277D21308];
    *&v8 = 136315906;
    v51 = v8;
    v54 = v7;
    selfCopy5 = self;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v60 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v59 + 1) + 8 * i);
        candidatesContainer = [(IRCandidateManager *)selfCopy5 candidatesContainer];
        candidateIdentifier = [v13 candidateIdentifier];
        v16 = [candidatesContainer candidateForCandidateIdentifier:candidateIdentifier];

        v17 = [(IRCandidateManager *)selfCopy5 _nodesForCandidate:v13 fromExistingCandidate:v16];
        v18 = [v13 copyWithReplacementNodes:v17];

        lastUsedDate = [v16 lastUsedDate];
        v20 = [v18 copyWithReplacementLastUsedDate:lastUsedDate];

        firstSeenDate = [v16 firstSeenDate];
        v22 = [v20 copyWithReplacementFirstSeenDate:firstSeenDate];

        LOBYTE(v20) = [v22 containsAirPlayOrUnknownAVODTarget];
        v23 = dispatch_get_specific(*v10);
        if (v20)
        {
          v24 = *MEMORY[0x277D21270];
          if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            v26 = [IRLogQEUtility getCandidateAsString:v22];
            *buf = 136315650;
            v64 = "#candidate-manager, ";
            v65 = 2112;
            v66 = v23;
            v67 = 2112;
            v68 = v26;
            _os_log_impl(&dword_25543D000, v25, OS_LOG_TYPE_DEFAULT, "%s[%@], Updating candidate:\n %@", buf, 0x20u);
          }

          if ([v16 isEqual:v22] && (objc_msgSend(v22, "lastSeenDate"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "lastSeenDate"), v28 = objc_claimAutoreleasedReturnValue(), +[IRPreferences shared](IRPreferences, "shared"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "candidateUpdateTimeIntervalSeconds"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "dateByAddingTimeInterval:", objc_msgSend(v30, "unsignedIntegerValue")), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v27, "isEarlierThan:", v31), v31, v7 = v54, v30, v10 = MEMORY[0x277D21308], v29, v28, v27, v32))
          {
            v33 = dispatch_get_specific(*v10);
            v34 = *MEMORY[0x277D21260];
            if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
            {
              v35 = v34;
              lastSeenDate = [v16 lastSeenDate];
              lastSeenDate2 = [v22 lastSeenDate];
              *buf = v51;
              v64 = "#candidate-manager, ";
              v65 = 2112;
              v66 = v33;
              v67 = 2112;
              v68 = lastSeenDate;
              v69 = 2112;
              v70 = lastSeenDate2;
              _os_log_impl(&dword_25543D000, v35, OS_LOG_TYPE_DEBUG, "%s[%@], Update candidate was requested but not needed, lastSeenDate: %@, currentDate: %@", buf, 0x2Au);

              v10 = MEMORY[0x277D21308];
            }

            selfCopy5 = self;
          }

          else
          {
            if (v16)
            {
              [v53 addObject:v16];
              selfCopy5 = self;
            }

            else
            {
              v41 = [(IRCandidateManager *)self _lastUsedDateForCandidate:v22 fromHistoryEventsContainer:containerCopy];
              v42 = [v22 copyWithReplacementLastUsedDate:v41];

              lastSeenDate3 = [v42 lastSeenDate];
              v22 = [v42 copyWithReplacementFirstSeenDate:lastSeenDate3];

              selfCopy5 = self;
            }

            [v56 addObject:v22];
            v55 = 1;
          }
        }

        else
        {
          v38 = *MEMORY[0x277D21260];
          if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
          {
            v39 = v38;
            v40 = [IRLogQEUtility getCandidateAsString:v22];
            *buf = 136315650;
            v64 = "#candidate-manager, ";
            v65 = 2112;
            v66 = v23;
            v67 = 2112;
            v68 = v40;
            _os_log_impl(&dword_25543D000, v39, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Candidate update error] Candidate is not valid to be updated:\n %@", buf, 0x20u);
          }
        }
      }

      v58 = [v7 countByEnumeratingWithState:&v59 objects:v71 count:16];
    }

    while (v58);

    v6 = v53;
    if (v55)
    {
      if ([v53 count])
      {
        [(IRCandidateManager *)selfCopy5 _deleteCandidates:v53];
      }

      [(IRCandidateManager *)selfCopy5 _addCandidates:v56];
      [(IRCandidateManager *)selfCopy5 _handleCandidatesCleanup];
      v44 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v45 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        v46 = MEMORY[0x277CCABB0];
        v47 = v45;
        candidatesContainer2 = [(IRCandidateManager *)selfCopy5 candidatesContainer];
        candidates = [candidatesContainer2 candidates];
        v50 = [v46 numberWithUnsignedInteger:{objc_msgSend(candidates, "count")}];
        *buf = 136315650;
        v64 = "#candidate-manager, ";
        v65 = 2112;
        v66 = v44;
        v67 = 2112;
        v68 = v50;
        _os_log_impl(&dword_25543D000, v47, OS_LOG_TYPE_INFO, "%s[%@], Number of candidates: %@", buf, 0x20u);

        v7 = v54;
        selfCopy5 = self;
      }

      [(IRCandidateManager *)selfCopy5 _didUpdateContextWithReason:@"Update candidate"];
    }
  }

  else
  {
  }
}

- (void)deleteBrokerCandidates
{
  v19 = *MEMORY[0x277D85DE8];
  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];
  candidates = [candidatesContainer candidates];
  v5 = [candidates allWhere:&__block_literal_global_16];

  if ([v5 count])
  {
    [(IRCandidateManager *)self _deleteCandidates:v5];
    [(IRCandidateManager *)self _handleCandidatesCleanup];
    v6 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v7 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = v7;
      candidatesContainer2 = [(IRCandidateManager *)self candidatesContainer];
      candidates2 = [candidatesContainer2 candidates];
      v12 = [v8 numberWithUnsignedInteger:{objc_msgSend(candidates2, "count")}];
      v13 = 136315650;
      v14 = "#candidate-manager, ";
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_INFO, "%s[%@], Number of candidates: %@", &v13, 0x20u);
    }

    [(IRCandidateManager *)self _didUpdateContextWithReason:@"Delete Broker candidates"];
  }
}

BOOL __44__IRCandidateManager_deleteBrokerCandidates__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 nodes];
  v3 = [v2 firstWhere:&__block_literal_global_25];

  return v3 != 0;
}

uint64_t __44__IRCandidateManager_deleteBrokerCandidates__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 avOutputDevice];
  v3 = [v2 discoveredWithBroker];

  return v3;
}

- (void)deleteCandidate:(id)candidate
{
  v25 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];
  candidateIdentifier = [candidateCopy candidateIdentifier];
  v7 = [candidatesContainer candidateForCandidateIdentifier:candidateIdentifier];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = candidateCopy;
  }

  v9 = v8;

  v10 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v11 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [IRLogQEUtility getCandidateAsString:v9];
    v14 = v13;
    v15 = @"YES";
    v17 = 136315906;
    v18 = "#candidate-manager, ";
    if (!v7)
    {
      v15 = @"NO";
    }

    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_25543D000, v12, OS_LOG_TYPE_DEFAULT, "%s[%@], Deleting candidate:\n %@,\n is known candidate: %@", &v17, 0x2Au);
  }

  if (v7)
  {
    v16 = [MEMORY[0x277CBEB98] setWithObject:v7];
    [(IRCandidateManager *)self _deleteCandidates:v16];

    [(IRCandidateManager *)self _didUpdateContextWithReason:@"Delete candidate"];
  }
}

- (void)notifyAddEventForCandidateIdentifier:(id)identifier
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];
  v6 = [candidatesContainer candidateForCandidateIdentifier:identifierCopy];

  if (v6)
  {
    v26 = identifierCopy;
    v7 = [MEMORY[0x277CBEB58] setWithObject:v6];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = v6;
    nodes = [v6 nodes];
    v9 = [nodes countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(nodes);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          avOutpuDeviceIdentifier = [v13 avOutpuDeviceIdentifier];

          if (avOutpuDeviceIdentifier)
          {
            candidatesContainer2 = [(IRCandidateManager *)self candidatesContainer];
            candidates = [candidatesContainer2 candidates];
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __59__IRCandidateManager_notifyAddEventForCandidateIdentifier___block_invoke;
            v31[3] = &unk_2797E0CD0;
            v31[4] = v13;
            v17 = [candidates allWhere:v31];
            [v7 unionSet:v17];
          }
        }

        v10 = [nodes countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v10);
    }

    date = [MEMORY[0x277CBEAA8] date];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v7;
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v27 + 1) + 8 * j) copyWithReplacementLastUsedDate:date];
          [(IRCandidateManager *)self _updateCandidate:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v21);
    }

    [(IRCandidateManager *)self _handleCandidatesCleanup];
    v6 = v25;
    identifierCopy = v26;
  }
}

uint64_t __59__IRCandidateManager_notifyAddEventForCandidateIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nodes];
  if ([v4 count] == 1)
  {
    v5 = [*(a1 + 32) avOutpuDeviceIdentifier];
    v6 = [v3 nodes];
    v7 = [v6 anyObject];
    v8 = [v7 avOutpuDeviceIdentifier];
    v9 = [v5 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)provider:(id)provider didUpdateAVOutputDevices:(id)devices
{
  devicesCopy = devices;
  queue = [(IRCandidateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke;
  v8[3] = &unk_2797E1E80;
  v9 = devicesCopy;
  v7 = devicesCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v8);
}

void __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setAvodDevices:*(a1 + 32)];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = [v3 avodDevices];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_2;
  v10[3] = &unk_2797E1E58;
  v10[4] = v3;
  v10[5] = &v11;
  [v4 enumerateObjectsUsingBlock:v10];

  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [v3 avodDevices];
    v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    *buf = 136315650;
    v16 = "#candidate-manager, ";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_25543D000, v6, OS_LOG_TYPE_DEBUG, "%s[%@], Memory: Number of Avod Devices: %@", buf, 0x20u);
  }

  if (*(v12 + 24) == 1)
  {
    [v3 _didUpdateContextWithReason:@"Avod device updated"];
  }

  _Block_object_dispose(&v11, 8);
}

void __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) candidatesContainer];
  v5 = [v4 candidates];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_3;
  v7[3] = &unk_2797E1E30;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_3(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 nodes];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_4;
  v21[3] = &unk_2797E0D40;
  v22 = *(a1 + 32);
  v5 = [v4 firstWhere:v21];

  if (v5 && ([v5 avOutputDevice], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", *(a1 + 32)), v6, (v7 & 1) == 0))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v9 = [v5 copyWithReplacementAvOutputDevice:*(a1 + 32)];

    v10 = [v3 nodes];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_5;
    v19 = &unk_2797E1E08;
    v5 = v9;
    v20 = v5;
    v11 = [v10 map:&v16];
    v8 = [v3 copyWithReplacementNodes:{v11, v16, v17, v18, v19}];

    [*(a1 + 40) _updateCandidate:v8];
    v12 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v13 = *MEMORY[0x277D21270];
    if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v8 candidateIdentifier];
      *buf = 136315906;
      v24 = "#candidate-manager, ";
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_25543D000, v14, OS_LOG_TYPE_DEFAULT, "%s[%@], Candidate [%@] updated with new avoutput device: %@", buf, 0x2Au);
    }
  }

  else
  {
    v8 = v3;
  }
}

uint64_t __56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 avOutpuDeviceIdentifier];
  v4 = [*(a1 + 32) deviceID];
  v5 = [v3 isEqual:v4];

  return v5;
}

void *__56__IRCandidateManager_provider_didUpdateAVOutputDevices___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 avOutpuDeviceIdentifier];
  v5 = [*(a1 + 32) avOutpuDeviceIdentifier];
  v6 = [v4 isEqual:v5];

  v7 = v3;
  if (v6)
  {
    v7 = *(a1 + 32);
  }

  v8 = v7;

  return v7;
}

- (void)provider:(id)provider didUpdateRapportDevices:(id)devices
{
  devicesCopy = devices;
  queue = [(IRCandidateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke;
  v8[3] = &unk_2797E1E80;
  v9 = devicesCopy;
  v7 = devicesCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v8);
}

void __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setRapportDevices:*(a1 + 32)];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = [v3 rapportDevices];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_2;
  v10[3] = &unk_2797E1EA8;
  v10[4] = v3;
  v10[5] = &v11;
  [v4 enumerateObjectsUsingBlock:v10];

  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [v3 rapportDevices];
    v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    *buf = 136315650;
    v16 = "#candidate-manager, ";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_25543D000, v6, OS_LOG_TYPE_DEBUG, "%s[%@], Memory: Number of Rapport Devices: %@", buf, 0x20u);
  }

  if (*(v12 + 24) == 1)
  {
    [v3 _didUpdateContextWithReason:@"Raport device updated"];
  }

  _Block_object_dispose(&v11, 8);
}

void __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) candidatesContainer];
  v5 = [v4 candidates];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_3;
  v7[3] = &unk_2797E1E30;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_3(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 nodes];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_4;
  v49[3] = &unk_2797E0D40;
  v50 = *(a1 + 32);
  v5 = [v4 firstWhere:v49];

  if (!v5)
  {
    v6 = [v3 nodes];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_5;
    v47[3] = &unk_2797E0D40;
    v48 = *(a1 + 32);
    v5 = [v6 firstWhere:v47];

    if (!v5)
    {
      v7 = [v3 nodes];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_6;
      v45[3] = &unk_2797E0D40;
      v46 = *(a1 + 32);
      v5 = [v7 firstWhere:v45];

      if (!v5)
      {
        v8 = [v3 nodes];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_7;
        v43[3] = &unk_2797E0D40;
        v44 = *(a1 + 32);
        v5 = [v8 firstWhere:v43];

        if (!v5)
        {
          v11 = 0;
          goto LABEL_7;
        }
      }
    }
  }

  v9 = [v5 rapportDevice];
  v10 = [v9 isEqual:*(a1 + 32)];

  if (v10)
  {
    v11 = v5;
LABEL_7:
    v12 = v3;
    goto LABEL_22;
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  v36 = a1;
  v11 = [v5 copyWithReplacementRapportDevice:*(a1 + 32)];

  v38 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = v3;
  obj = [v3 nodes];
  v13 = [obj countByEnumeratingWithState:&v39 objects:v59 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v39 + 1) + 8 * i);
        v18 = [v17 rapportIdentifier];
        v19 = [v11 rapportIdentifier];
        v20 = [v18 isEqual:v19];

        v21 = [v17 avOutpuDeviceIdentifier];
        v22 = [v11 avOutpuDeviceIdentifier];
        v23 = [v21 isEqual:v22];

        v24 = [v17 idsIdentifier];
        v25 = [v11 idsIdentifier];
        v26 = [v24 isEqual:v25];

        v27 = v11;
        if ((v20 & 1) == 0)
        {
          v28 = [v11 rapportIdentifier];
          v29 = v28 == 0;

          if ((v29 & (v23 | v26)) != 0)
          {
            v27 = v11;
          }

          else
          {
            v27 = v17;
          }
        }

        v30 = v27;
        [v38 addObject:v30];
      }

      v14 = [obj countByEnumeratingWithState:&v39 objects:v59 count:16];
    }

    while (v14);
  }

  v12 = [v35 copyWithReplacementNodes:v38];
  [*(v36 + 40) _updateCandidate:v12];
  v31 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v32 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v33 = v32;
    v34 = [v12 candidateIdentifier];
    *buf = 136315906;
    v52 = "#candidate-manager, ";
    v53 = 2112;
    v54 = v31;
    v55 = 2112;
    v56 = v34;
    v57 = 2112;
    v58 = v12;
    _os_log_impl(&dword_25543D000, v33, OS_LOG_TYPE_DEFAULT, "%s[%@], Candidate [%@] updated with new rapport device: %@", buf, 0x2Au);
  }

LABEL_22:
}

uint64_t __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 rapportIdentifier];
  v4 = [*(a1 + 32) rapportEffectiveID];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 avOutpuDeviceIdentifier];
  v4 = [*(a1 + 32) mediaRemoteIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 avOutpuDeviceIdentifier];
  v4 = [*(a1 + 32) mediaRouteIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __55__IRCandidateManager_provider_didUpdateRapportDevices___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 idsIdentifier];
  v4 = [*(a1 + 32) idsID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)synchronizeAndFetchFromDBOnDisk
{
  v20 = *MEMORY[0x277D85DE8];
  store = [(IRCandidateManager *)self store];
  fetchCandidatesContainer = [store fetchCandidatesContainer];
  [(IRCandidateManager *)self setCandidatesContainer:fetchCandidatesContainer];

  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];

  v6 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v7 = *MEMORY[0x277D21260];
  v8 = *MEMORY[0x277D21260];
  if (candidatesContainer)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x277CCABB0];
      v10 = v7;
      candidatesContainer2 = [(IRCandidateManager *)self candidatesContainer];
      candidates = [candidatesContainer2 candidates];
      v13 = [v9 numberWithUnsignedInteger:{objc_msgSend(candidates, "count")}];
      v14 = 136315650;
      v15 = "#candidate-manager, ";
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_25543D000, v10, OS_LOG_TYPE_DEFAULT, "%s[%@], Loading candidates container from store with %@ candidates", &v14, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "#candidate-manager, ";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Candidate container fetch error] Could not fetch candidates container", &v14, 0x16u);
  }
}

- (void)_addCandidates:(id)candidates
{
  v18 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];
  candidates = [candidatesContainer candidates];
  v7 = [candidates setByAddingObjectsFromSet:candidatesCopy];
  v8 = [IRCandidatesContainerDO candidatesContainerDOWithCandidates:v7];
  [(IRCandidateManager *)self setCandidatesContainer:v8];

  store = [(IRCandidateManager *)self store];
  LOBYTE(v8) = [store addCandidates:candidatesCopy];

  if ((v8 & 1) == 0)
  {
    v10 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v11 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "#candidate-manager, ";
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = candidatesCopy;
      _os_log_impl(&dword_25543D000, v11, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Candidate Manager add error] Could not add a new candidates: %@", &v12, 0x20u);
    }
  }
}

- (void)_updateCandidate:(id)candidate
{
  v21 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];
  candidates = [candidatesContainer candidates];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__IRCandidateManager__updateCandidate___block_invoke;
  v13[3] = &unk_2797E1ED0;
  v7 = candidateCopy;
  v14 = v7;
  v8 = [candidates map:v13];
  v9 = [IRCandidatesContainerDO candidatesContainerDOWithCandidates:v8];
  [(IRCandidateManager *)self setCandidatesContainer:v9];

  store = [(IRCandidateManager *)self store];
  LOBYTE(candidatesContainer) = [store updateCandidate:v7];

  if ((candidatesContainer & 1) == 0)
  {
    v11 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v12 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "#candidate-manager, ";
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_25543D000, v12, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Candidate Manager update error] Could not update candidate: %@", buf, 0x20u);
    }
  }
}

void *__39__IRCandidateManager__updateCandidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 candidateIdentifier];
  v5 = [*(a1 + 32) candidateIdentifier];
  v6 = [v4 isEqual:v5];

  v7 = v3;
  if (v6)
  {
    v7 = *(a1 + 32);
  }

  v8 = v7;

  return v7;
}

- (void)_deleteCandidates:(id)candidates
{
  v21 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];
  candidates = [candidatesContainer candidates];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__IRCandidateManager__deleteCandidates___block_invoke;
  v13[3] = &unk_2797E0CD0;
  v7 = candidatesCopy;
  v14 = v7;
  v8 = [candidates allWhere:v13];
  v9 = [IRCandidatesContainerDO candidatesContainerDOWithCandidates:v8];
  [(IRCandidateManager *)self setCandidatesContainer:v9];

  store = [(IRCandidateManager *)self store];
  LOBYTE(candidatesContainer) = [store deleteCandidates:v7];

  if ((candidatesContainer & 1) == 0)
  {
    v11 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v12 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "#candidate-manager, ";
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_25543D000, v12, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Candidate Manager delete error] Could not delete candidates: %@", buf, 0x20u);
    }
  }
}

BOOL __40__IRCandidateManager__deleteCandidates___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 candidateIdentifier];
  v4 = [IRCandidateDO candidateForIdentifier:v3 within:*(a1 + 32)];

  return v4 == 0;
}

- (void)_didUpdateContextWithReason:(id)reason
{
  reasonCopy = reason;
  contextObserver = [(IRCandidateManager *)self contextObserver];
  [contextObserver didUpdateContextWithReason:reasonCopy andOverrides:0];
}

- (void)_handleCandidatesCleanup
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [MEMORY[0x277CBEB58] set];
  candidatesContainer = [(IRCandidateManager *)self candidatesContainer];
  candidates = [candidatesContainer candidates];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __46__IRCandidateManager__handleCandidatesCleanup__block_invoke;
  v25 = &unk_2797E13F8;
  v7 = v3;
  v26 = v7;
  v8 = v4;
  v27 = v8;
  [candidates enumerateObjectsUsingBlock:&v22];

  v9 = [MEMORY[0x277CBEB58] set];
  v10 = +[IRPreferences shared];
  numberOfUsedCandidates = [v10 numberOfUsedCandidates];
  v12 = -[IRCandidateManager _oldestCandidatesFrom:forKey:limit:](self, "_oldestCandidatesFrom:forKey:limit:", v7, @"lastUsedDate", [numberOfUsedCandidates unsignedIntegerValue]);
  [v9 addObjectsFromArray:v12];

  v13 = +[IRPreferences shared];
  numberOfSeenCandidates = [v13 numberOfSeenCandidates];
  v15 = -[IRCandidateManager _oldestCandidatesFrom:forKey:limit:](self, "_oldestCandidatesFrom:forKey:limit:", v8, @"lastSeenDate", [numberOfSeenCandidates unsignedIntegerValue]);
  [v9 addObjectsFromArray:v15];

  if ([v9 count])
  {
    v16 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v17 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v18 = MEMORY[0x277CCABB0];
      v19 = v17;
      v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
      *buf = 136315906;
      v29 = "#candidate-manager, ";
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v20;
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_25543D000, v19, OS_LOG_TYPE_INFO, "%s[%@], Candidates cleanup: usedCandidates: %@ seenCandidates: %@", buf, 0x2Au);
    }

    [(IRCandidateManager *)self _deleteCandidates:v9];
  }
}

void __46__IRCandidateManager__handleCandidatesCleanup__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 lastUsedDate];

  v4 = 32;
  if (!v3)
  {
    v4 = 40;
  }

  [*(a1 + v4) addObject:v5];
}

- (id)_lastUsedDateForCandidate:(id)candidate fromHistoryEventsContainer:(id)container
{
  candidateCopy = candidate;
  containerCopy = container;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__11;
  v19 = 0;
  historyEvents = [containerCopy historyEvents];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__IRCandidateManager__lastUsedDateForCandidate_fromHistoryEventsContainer___block_invoke;
  v11[3] = &unk_2797E18B0;
  v8 = candidateCopy;
  v12 = v8;
  v13 = &v14;
  [historyEvents enumerateObjectsWithOptions:2 usingBlock:v11];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __75__IRCandidateManager__lastUsedDateForCandidate_fromHistoryEventsContainer___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 candidateIdentifier];
  v7 = [*(a1 + 32) candidateIdentifier];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [v12 date];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

- (id)_nodesForCandidate:(id)candidate fromExistingCandidate:(id)existingCandidate
{
  existingCandidateCopy = existingCandidate;
  candidateCopy = candidate;
  v8 = objc_opt_new();
  nodes = [candidateCopy nodes];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke;
  v14[3] = &unk_2797E1F48;
  v14[4] = self;
  v15 = existingCandidateCopy;
  v16 = v8;
  v10 = v8;
  v11 = existingCandidateCopy;
  [nodes enumerateObjectsUsingBlock:v14];

  v12 = [v10 copy];

  return v12;
}

void __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) avodDevices];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_2;
  v34[3] = &unk_2797E1EF8;
  v5 = v3;
  v35 = v5;
  v6 = [v4 firstWhere:v34];

  if (!v6)
  {
    v7 = [*(a1 + 40) nodes];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_3;
    v32[3] = &unk_2797E0D40;
    v33 = v5;
    v8 = [v7 firstWhere:v32];

    v6 = [v8 avOutputDevice];
  }

  v9 = [*(a1 + 32) rapportDevices];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_4;
  v30[3] = &unk_2797E1F20;
  v10 = v5;
  v31 = v10;
  v11 = [v9 firstWhere:v30];

  if (!v11)
  {
    v12 = [*(a1 + 32) rapportDevices];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_5;
    v28[3] = &unk_2797E1F20;
    v13 = v10;
    v29 = v13;
    v11 = [v12 firstWhere:v28];

    if (!v11)
    {
      v14 = [*(a1 + 32) rapportDevices];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_6;
      v26[3] = &unk_2797E1F20;
      v15 = v13;
      v27 = v15;
      v11 = [v14 firstWhere:v26];

      if (!v11)
      {
        v16 = [*(a1 + 40) nodes];
        v21 = MEMORY[0x277D85DD0];
        v22 = 3221225472;
        v23 = __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_7;
        v24 = &unk_2797E0D40;
        v25 = v15;
        v17 = [v16 firstWhere:&v21];

        v11 = [v17 rapportDevice];
      }
    }
  }

  v18 = *(a1 + 48);
  v19 = [v10 copyWithReplacementRapportDevice:v11];
  v20 = [v19 copyWithReplacementAvOutputDevice:v6];
  [v18 addObject:v20];
}

uint64_t __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 deviceID];
  v4 = [*(a1 + 32) avOutpuDeviceIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 avOutpuDeviceIdentifier];
  v4 = [*(a1 + 32) avOutpuDeviceIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 rapportEffectiveID];
  v4 = [*(a1 + 32) rapportIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 mediaRemoteIdentifier];
  v4 = [*(a1 + 32) avOutpuDeviceIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 mediaRouteIdentifier];
  v4 = [*(a1 + 32) avOutpuDeviceIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __63__IRCandidateManager__nodesForCandidate_fromExistingCandidate___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 rapportIdentifier];
  v4 = [*(a1 + 32) rapportIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)_oldestCandidatesFrom:(id)from forKey:(id)key limit:(unint64_t)limit
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAC98];
  fromCopy = from;
  v9 = [v7 sortDescriptorWithKey:key ascending:1];
  allObjects = [fromCopy allObjects];

  v16[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v12 = [allObjects sortedArrayUsingDescriptors:v11];

  if ([v12 count] <= limit)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v12 count] - limit;
  }

  v14 = [v12 subarrayWithRange:{0, v13}];

  return v14;
}

- (IRPolicyManagerContextObserver)contextObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_contextObserver);

  return WeakRetained;
}

@end