@interface InterfaceTypeTracker
- (InterfaceTypeTracker)initWithInterfaceType:(unsigned __int8)type;
- (id)infoDir;
- (unint64_t)scheduleExpiryCheckFor:(unint64_t)for delay:(double)delay;
- (void)_dumpState;
- (void)configurePolicies:(id)policies;
- (void)dealloc;
- (void)getNetworkActivity:(id)activity;
- (void)noteFlow:(id)flow withDelegatee:(id)delegatee snapshot:(id)snapshot;
- (void)noteFlow:(id)flow withOwner:(id)owner snapshot:(id)snapshot;
- (void)noteFlowClassificationExpiry:(id)expiry;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeLinkages:(id)linkages;
- (void)setupLightweightTimer;
@end

@implementation InterfaceTypeTracker

void __45__InterfaceTypeTracker_setupLightweightTimer__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "Timer expiry block with %@", &v5, 0xCu);
  }

  [*(a1 + 32) noteFlowClassificationExpiry:v3];
}

- (InterfaceTypeTracker)initWithInterfaceType:(unsigned __int8)type
{
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = InterfaceTypeTracker;
  v4 = [(InterfaceTypeTracker *)&v15 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackerCache = v4->_trackerCache;
    v4->_trackerCache = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    alwaysNote = v4->_alwaysNote;
    v4->_alwaysNote = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    neverNote = v4->_neverNote;
    v4->_neverNote = v9;

    v4->_functionalInterfaceType = typeCopy;
    if (typeCopy == 5 || typeCopy == 3)
    {
      v11 = [NetworkStateRelay getStateRelayFor:typeCopy];
      stateRelay = v4->_stateRelay;
      v4->_stateRelay = v11;
    }

    v13 = v4->_stateRelay;
    if (v13)
    {
      [(NetworkStateRelay *)v13 addObserver:v4 forKeyPath:@"primary" options:7 context:0];
    }
  }

  return v4;
}

- (void)dealloc
{
  [(NetworkStateRelay *)self->_stateRelay removeObserver:self forKeyPath:@"primary"];
  v3.receiver = self;
  v3.super_class = InterfaceTypeTracker;
  [(InterfaceTypeTracker *)&v3 dealloc];
}

- (id)infoDir
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  trackerCache = self->_trackerCache;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__InterfaceTypeTracker_infoDir__block_invoke;
  v12[3] = &unk_27898B7F0;
  v6 = v4;
  v13 = v6;
  [(NSMutableDictionary *)trackerCache enumerateKeysAndObjectsUsingBlock:v12];
  [v3 setObject:v6 forKey:@"Tracked items"];
  observer = self->_observer;
  if (observer)
  {
    [(flowDispositionObserver *)observer description];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v8 = ;
  [v3 setObject:v8 forKey:@"Observer"];

  defaultPolicy = self->_defaultPolicy;
  if (defaultPolicy)
  {
    [(TrackerPolicy *)defaultPolicy description];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v10 = ;
  [v3 setObject:v10 forKey:@"Default policy"];

  return v3;
}

void __31__InterfaceTypeTracker_infoDir__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 description];
  [v4 setObject:v6 forKey:v5];
}

- (void)_dumpState
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (self->_observer)
  {
    v3 = flowLogHandle;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(flowDispositionObserver *)self->_observer description];
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "AppTracking Observer %@", buf, 0xCu);
    }
  }

  allValues = [(NSMutableDictionary *)self->_trackerCache allValues];
  v6 = [allValues sortedArrayUsingComparator:&__block_literal_global_51];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__InterfaceTypeTracker__dumpState__block_invoke_2;
  v8[3] = &unk_27898FE70;
  v8[4] = &v9;
  [v6 enumerateObjectsUsingBlock:v8];
  if ((v10[3] & 1) == 0)
  {
    v7 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "  No active AppTrackers", buf, 2u);
    }
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __34__InterfaceTypeTracker__dumpState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 prevFlowRxBytes];
  v7 = [v5 prevFlowTxBytes];

  v8 = v7 + v6;
  v9 = [v4 prevFlowRxBytes];
  v10 = [v4 prevFlowTxBytes];

  if (v8 > v10 + v9)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void __34__InterfaceTypeTracker__dumpState__block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 prevFlows] || objc_msgSend(v3, "flowsForSelf") || objc_msgSend(v3, "flowsForOthers") || objc_msgSend(v3, "prevFlowsForOthers"))
  {
    v4 = flowLogHandle;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 userName];
      v17 = [v3 flowsForSelf];
      v16 = [v3 flowsForOthers];
      v6 = [v3 prevFlows];
      v7 = [v3 prevFlowsForOthers];
      v8 = [v3 prevFlowRxBytes];
      v9 = [v3 prevFlowTxBytes];
      if ([v3 prevFlows])
      {
        [v3 prevFlowDurations];
        v11 = v10 / [v3 prevFlows];
      }

      else
      {
        v11 = 0.0;
      }

      if ([v3 prevFlows])
      {
        v12 = [v3 prevFlowRxBytes];
        v13 = v12 / [v3 prevFlows];
      }

      else
      {
        v13 = 0;
      }

      if ([v3 prevFlows])
      {
        v14 = [v3 prevFlowTxBytes];
        v15 = v14 / [v3 prevFlows];
      }

      else
      {
        v15 = 0;
      }

      *buf = 138414850;
      v19 = v5;
      v20 = 1024;
      v21 = v17;
      v22 = 1024;
      v23 = v16;
      v24 = 1024;
      v25 = v6;
      v26 = 1024;
      v27 = v7;
      v28 = 2048;
      v29 = v8;
      v30 = 2048;
      v31 = v9;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v13;
      v36 = 2048;
      v37 = v15;
      v38 = 1024;
      v39 = [v3 eversetClassFlags];
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "AppTracker for %@ flows: self %d others %d prev %d %d traffic rx %lld tx %lld avg duration %f rx %lld tx %lld everset 0x%x", buf, 0x5Cu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  changeCopy = change;
  if ([path isEqualToString:@"primary"])
  {
    v11 = objectCopy;
    if ([v11 functionalInterfaceType] == 3)
    {
      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = internalQueue;
        if (internalQueue)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __71__InterfaceTypeTracker_observeValueForKeyPath_ofObject_change_context___block_invoke;
          block[3] = &unk_27898A328;
          v16 = v12;
          selfCopy = self;
          v18 = v11;
          dispatch_async(v13, block);
        }

        else if ([v12 BOOLValue])
        {
          madePrimaryDate = [v11 madePrimaryDate];
          [(InterfaceTypeTracker *)self setMadePrimaryDate:madePrimaryDate];
        }

        else
        {
          [(InterfaceTypeTracker *)self setMadePrimaryDate:0];
        }
      }
    }
  }
}

void __71__InterfaceTypeTracker_observeValueForKeyPath_ofObject_change_context___block_invoke(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([a1[4] BOOLValue])
  {
    v2 = [a1[6] madePrimaryDate];
    [a1[5] setMadePrimaryDate:v2];

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [a1[5] trackerCache];
    v4 = [v3 allValues];

    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * i) resetFlowCountAfterMadePrimary];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v9 = a1[5];

    [v9 setMadePrimaryDate:0];
  }
}

- (void)removeLinkages:(id)linkages
{
  linkagesCopy = linkages;
  ultimateUser = [linkagesCopy ultimateUser];

  if (ultimateUser)
  {
    ultimateUser2 = [linkagesCopy ultimateUser];
    [ultimateUser2 removeFlow:linkagesCopy];
  }

  immediateUser = [linkagesCopy immediateUser];

  if (immediateUser)
  {
    immediateUser2 = [linkagesCopy immediateUser];
    [immediateUser2 removeImmediateFlow:linkagesCopy];
  }
}

- (void)setupLightweightTimer
{
  v13 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__InterfaceTypeTracker_setupLightweightTimer__block_invoke;
  aBlock[3] = &unk_27898FE98;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [LightweightTimer alloc];
  v5 = +[FlowAnalyticsEngine queue];
  v6 = [(LightweightTimer *)v4 initWithQueue:v5 maxDelay:v3 precision:16.0 callback:0.5];
  lwTimer = self->_lwTimer;
  self->_lwTimer = v6;

  v8 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_lwTimer;
    *buf = 138412290;
    v12 = v9;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Setup lightweight timer %@", buf, 0xCu);
  }
}

- (unint64_t)scheduleExpiryCheckFor:(unint64_t)for delay:(double)delay
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__InterfaceTypeTracker_scheduleExpiryCheckFor_delay___block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (scheduleExpiryCheckFor_delay__onceToken != -1)
  {
    dispatch_once(&scheduleExpiryCheckFor_delay__onceToken, block);
  }

  lwTimer = self->_lwTimer;
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:for];
  v9 = [(LightweightTimer *)lwTimer setRelativeTimer:v8 context:delay];

  return v9;
}

- (void)noteFlowClassificationExpiry:(id)expiry
{
  v20 = *MEMORY[0x277D85DE8];
  expiryCopy = expiry;
  v5 = [TrackedFlow flowForKey:expiryCopy];
  unsignedLongLongValue = [expiryCopy unsignedLongLongValue];

  if (v5)
  {
    [v5 setClassificationChangeTimer:0];
    classification = [v5 classification];
    nextClassification = [classification nextClassification];
    v9 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v16 = 134218242;
      v17 = unsignedLongLongValue;
      v18 = 2112;
      v19 = classification;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "noteFlowClassificationExpiry on %llu remove %@", &v16, 0x16u);
    }

    [(flowDispositionObserver *)self->_observer noteFlow:v5 snapshot:0 present:0 trackedBy:0];
    if (nextClassification && [nextClassification disposition] != 40)
    {
      [v5 setClassification:nextClassification];
      v11 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v16 = 134218242;
        v17 = unsignedLongLongValue;
        v18 = 2112;
        v19 = nextClassification;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "noteFlowClassificationExpiry on %llu add %@", &v16, 0x16u);
      }

      [(flowDispositionObserver *)self->_observer noteFlow:v5 snapshot:0 present:1 trackedBy:0];
      [nextClassification expirationTime];
      if (v12 != 0.0)
      {
        v13 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v14 = v13;
          [nextClassification expirationTime];
          v16 = 134218240;
          v17 = unsignedLongLongValue;
          v18 = 2048;
          v19 = v15;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "noteFlowClassificationExpiry on %llu schedule for %f", &v16, 0x16u);
        }

        [nextClassification expirationTime];
        [v5 setClassificationChangeTimer:{-[InterfaceTypeTracker scheduleExpiryCheckFor:delay:](self, "scheduleExpiryCheckFor:delay:", unsignedLongLongValue)}];
      }
    }

    else
    {
      v10 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v16 = 134217984;
        v17 = unsignedLongLongValue;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "noteFlowClassificationExpiry on %llu remove linkages", &v16, 0xCu);
      }

      [(InterfaceTypeTracker *)self removeLinkages:v5];
    }
  }
}

- (void)noteFlow:(id)flow withDelegatee:(id)delegatee snapshot:(id)snapshot
{
  v50 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  delegateeCopy = delegatee;
  snapshotCopy = snapshot;
  classification = [flowCopy classification];

  if (!classification || ([flowCopy classification], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "disposition"), v12, v13 != 40))
  {
    immediateUser = [(NSMutableDictionary *)self->_trackerCache objectForKeyedSubscript:delegateeCopy];
    if (!immediateUser)
    {
      [(InterfaceTypeTracker *)self _trackerCachePrune];
      v15 = [[AppTracker alloc] initWithUserName:delegateeCopy interfaceType:[(InterfaceTypeTracker *)self functionalInterfaceType]];
      if (!v15)
      {
        immediateUser = [flowCopy immediateUser];

        if (immediateUser)
        {
          immediateUser2 = [flowCopy immediateUser];
          [immediateUser2 removeImmediateFlow:flowCopy];

          immediateUser = 0;
        }

        goto LABEL_37;
      }

      immediateUser = v15;
      [(NSMutableDictionary *)self->_trackerCache setObject:v15 forKeyedSubscript:delegateeCopy];
    }

    [immediateUser setIsADaemon:0];
    classification2 = [flowCopy classification];

    if (classification2)
    {
LABEL_24:
      classification3 = [flowCopy classification];
      disposition = [classification3 disposition];

      if (disposition == 40)
      {
        [(InterfaceTypeTracker *)self removeLinkages:flowCopy];
      }

      else
      {
        immediateUser3 = [flowCopy immediateUser];

        if (immediateUser != immediateUser3)
        {
          immediateUser4 = [flowCopy immediateUser];

          if (immediateUser4)
          {
            v40 = flowLogHandle;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              flowId = [flowCopy flowId];
              immediateUser5 = [flowCopy immediateUser];
              if (immediateUser5)
              {
                immediateUser6 = [flowCopy immediateUser];
              }

              else
              {
                immediateUser6 = @"<nil>";
              }

              v44 = 134218498;
              v45 = flowId;
              v46 = 2112;
              v47 = delegateeCopy;
              v48 = 2112;
              v49 = immediateUser6;
              _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEFAULT, "Flow %llu delegatee %@, changed user from %@", &v44, 0x20u);
              if (immediateUser5)
              {
              }
            }
          }

          [immediateUser adjustImmediateFlowLinkages:flowCopy];
        }
      }

LABEL_37:

      goto LABEL_38;
    }

    specificPolicy = [immediateUser specificPolicy];
    if (specificPolicy)
    {
      if ([flowCopy trafficClassFlags] || objc_msgSend(flowCopy, "trafficMgtFlags"))
      {
        v18 = [(TrackerPolicy *)specificPolicy nonDefaultFlowClassificationFor:flowCopy];
        [flowCopy setClassification:v18];

        classification4 = [flowCopy classification];

        if (!classification4)
        {
          v20 = [(TrackerPolicy *)self->_defaultPolicy nonDefaultFlowClassificationFor:flowCopy];
          [flowCopy setClassification:v20];
        }
      }

      classification5 = [flowCopy classification];

      if (classification5)
      {
        goto LABEL_18;
      }

      defaultPolicy = specificPolicy;
    }

    else
    {
      defaultPolicy = self->_defaultPolicy;
    }

    v24 = [(TrackerPolicy *)defaultPolicy flowClassificationFor:flowCopy];
    [flowCopy setClassification:v24];

LABEL_18:
    [flowCopy setTrackerForStatistics:immediateUser];
    observer = self->_observer;
    if (observer)
    {
      [immediateUser setEversetClassFlags:{objc_msgSend(immediateUser, "eversetClassFlags") | -[flowDispositionObserver noteFlow:snapshot:present:trackedBy:](observer, "noteFlow:snapshot:present:trackedBy:", flowCopy, snapshotCopy, 1, immediateUser)}];
      classification6 = [flowCopy classification];
      [classification6 expirationTime];
      v28 = v27;

      if (v28 != 0.0)
      {
        v29 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v30 = v29;
          flowId2 = [flowCopy flowId];
          classification7 = [flowCopy classification];
          [classification7 expirationTime];
          v44 = 134218240;
          v45 = flowId2;
          v46 = 2048;
          v47 = v33;
          _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEBUG, "noteFlow:withDelegatee %llu for %f", &v44, 0x16u);
        }

        flowId3 = [flowCopy flowId];
        classification8 = [flowCopy classification];
        [classification8 expirationTime];
        [flowCopy setClassificationChangeTimer:{-[InterfaceTypeTracker scheduleExpiryCheckFor:delay:](self, "scheduleExpiryCheckFor:delay:", flowId3)}];
      }
    }

    goto LABEL_24;
  }

LABEL_38:
}

- (void)noteFlow:(id)flow withOwner:(id)owner snapshot:(id)snapshot
{
  v50 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  ownerCopy = owner;
  snapshotCopy = snapshot;
  classification = [flowCopy classification];

  if (!classification || ([flowCopy classification], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "disposition"), v12, v13 != 40))
  {
    ultimateUser = [(NSMutableDictionary *)self->_trackerCache objectForKeyedSubscript:ownerCopy];
    if (!ultimateUser)
    {
      [(InterfaceTypeTracker *)self _trackerCachePrune];
      v15 = [[AppTracker alloc] initWithUserName:ownerCopy interfaceType:[(InterfaceTypeTracker *)self functionalInterfaceType]];
      if (!v15)
      {
        ultimateUser = [flowCopy ultimateUser];

        if (ultimateUser)
        {
          ultimateUser2 = [flowCopy ultimateUser];
          [ultimateUser2 removeFlow:flowCopy];

          ultimateUser = 0;
        }

        goto LABEL_31;
      }

      ultimateUser = v15;
      [(NSMutableDictionary *)self->_trackerCache setObject:v15 forKeyedSubscript:ownerCopy];
    }

    [ultimateUser setIsADaemon:{objc_msgSend(snapshotCopy, "isADaemon")}];
    classification2 = [flowCopy classification];

    if (classification2)
    {
LABEL_24:
      classification3 = [flowCopy classification];
      disposition = [classification3 disposition];

      if (disposition == 40)
      {
        [(InterfaceTypeTracker *)self removeLinkages:flowCopy];
      }

      else
      {
        ultimateUser3 = [flowCopy ultimateUser];

        if (ultimateUser != ultimateUser3)
        {
          ultimateUser4 = [flowCopy ultimateUser];

          if (ultimateUser4)
          {
            v40 = flowLogHandle;
            if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v41 = v40;
              flowId = [flowCopy flowId];
              ultimateUser5 = [flowCopy ultimateUser];
              v44 = 134218498;
              v45 = flowId;
              v46 = 2112;
              v47 = ownerCopy;
              v48 = 2112;
              v49 = ultimateUser5;
              _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_DEFAULT, "Flow %llu owner %@, changed user from %@", &v44, 0x20u);
            }
          }

          [ultimateUser adjustFlowLinkages:flowCopy];
        }
      }

LABEL_31:

      goto LABEL_32;
    }

    specificPolicy = [ultimateUser specificPolicy];
    if (specificPolicy)
    {
      if ([flowCopy trafficClassFlags] || objc_msgSend(flowCopy, "trafficMgtFlags"))
      {
        v18 = [(TrackerPolicy *)specificPolicy nonDefaultFlowClassificationFor:flowCopy];
        [flowCopy setClassification:v18];

        classification4 = [flowCopy classification];

        if (!classification4)
        {
          v20 = [(TrackerPolicy *)self->_defaultPolicy nonDefaultFlowClassificationFor:flowCopy];
          [flowCopy setClassification:v20];
        }
      }

      classification5 = [flowCopy classification];

      if (classification5)
      {
        goto LABEL_18;
      }

      defaultPolicy = specificPolicy;
    }

    else
    {
      defaultPolicy = self->_defaultPolicy;
    }

    v24 = [(TrackerPolicy *)defaultPolicy flowClassificationFor:flowCopy];
    [flowCopy setClassification:v24];

LABEL_18:
    [flowCopy setTrackerForStatistics:ultimateUser];
    observer = self->_observer;
    if (observer)
    {
      [ultimateUser setEversetClassFlags:{objc_msgSend(ultimateUser, "eversetClassFlags") | -[flowDispositionObserver noteFlow:snapshot:present:trackedBy:](observer, "noteFlow:snapshot:present:trackedBy:", flowCopy, snapshotCopy, 1, ultimateUser)}];
      classification6 = [flowCopy classification];
      [classification6 expirationTime];
      v28 = v27;

      if (v28 != 0.0)
      {
        v29 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v30 = v29;
          flowId2 = [flowCopy flowId];
          classification7 = [flowCopy classification];
          [classification7 expirationTime];
          v44 = 134218240;
          v45 = flowId2;
          v46 = 2048;
          v47 = v33;
          _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEBUG, "noteFlow:withOwner  %llu for %f", &v44, 0x16u);
        }

        flowId3 = [flowCopy flowId];
        classification8 = [flowCopy classification];
        [classification8 expirationTime];
        [flowCopy setClassificationChangeTimer:{-[InterfaceTypeTracker scheduleExpiryCheckFor:delay:](self, "scheduleExpiryCheckFor:delay:", flowId3)}];
      }
    }

    goto LABEL_24;
  }

LABEL_32:
}

- (void)getNetworkActivity:(id)activity
{
  activityCopy = activity;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  setApparentTime(v5);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__InterfaceTypeTracker_getNetworkActivity___block_invoke;
  v7[3] = &unk_27898FEC0;
  v7[4] = self;
  v8 = activityCopy;
  v6 = activityCopy;
  [FlowRefreshScheduler refreshDataUsageMaxStale:@"getNetworkActivity" maxDelay:v7 logAs:2.0 callback:0.0];
}

void __43__InterfaceTypeTracker_getNetworkActivity___block_invoke(uint64_t a1, int a2, __n128 a3)
{
  v71 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    +[AppStateMonitor foregroundAppKeys];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v64 = 0u;
    v3 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
    v4 = &stru_2847966D8;
    if (v3)
    {
      v5 = v3;
      v53 = 0;
      v54 = 0;
      v6 = 0;
      v7 = 0;
      v8 = *v62;
      v9 = 0.0;
      v49 = &stru_2847966D8;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v62 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v61 + 1) + 8 * i);
          if (appTrackerVerbose)
          {
            if (v54)
            {
              v12 = [(__CFString *)v54 stringByAppendingFormat:@" %@", *(*(&v61 + 1) + 8 * i)];

              v54 = v12;
            }

            else
            {
              v54 = v11;
            }
          }

          if ([*(*(a1 + 32) + 24) containsObject:v11])
          {
            v7 |= 3u;
            v4 = @"(must-ignore)";
            goto LABEL_30;
          }

          v13 = [*(*(a1 + 32) + 16) containsObject:v11];
          if (v13)
          {
            v14 = 5;
          }

          else
          {
            v14 = 1;
          }

          v7 |= v14;
          v15 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v11];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 flowsForSelf] + v53;
            v18 = [v16 timestamp];
            v19 = v18;
            v53 = v17;
            if (v17)
            {
              v7 |= 8u;
            }

            if (v18)
            {
              [v18 timeIntervalSinceNow];
              v9 = -v20;
              if (v20 > -86400.0)
              {
                v7 |= 0x10u;
              }
            }
          }

          v6 |= v13;
        }

        v5 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v53 = 0;
      v54 = 0;
      v6 = 0;
      v7 = 0;
      v9 = 0.0;
LABEL_30:
      v49 = v4;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v51 = *(*(a1 + 32) + 32);
    v55 = [v51 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v55)
    {
      v22 = *v58;
      while (2)
      {
        for (j = 0; j != v55; ++j)
        {
          if (*v58 != v22)
          {
            objc_enumerationMutation(v51);
          }

          v24 = *(*(&v57 + 1) + 8 * j);
          v25 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v24];
          v26 = v25;
          if (v25)
          {
            if ([v25 flowsForSelf])
            {
              v7 |= 0x20u;
              v27 = [v26 flowsForSelf];
              v28 = rnfLogHandle;
              if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v29 = v24;
                v30 = v28;
                v31 = [v24 UTF8String];
                v32 = [v26 flowsForSelf];
                *buf = 136315394;
                v66 = v31;
                v67 = 1024;
                v68 = v32;
                _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, "Daemon %s has %d flows for self", buf, 0x12u);
              }
            }

            else
            {
              v27 = 0;
            }

            if ([v26 flowsForOthers])
            {
              v52 = v27;
              v7 |= 0x20u;
              v33 = [v26 flowsForOthers];
              v34 = rnfLogHandle;
              if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v35 = v24;
                v36 = v34;
                v37 = [v24 UTF8String];
                v38 = [v26 flowsForOthers];
                *buf = 136315394;
                v66 = v37;
                v67 = 1024;
                v68 = v38;
                _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEFAULT, "Daemon %s has %d flows for others", buf, 0x12u);
              }

              v27 = v52;
            }

            else
            {
              v33 = 0;
            }

            if (v27 | v33)
            {
              v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"active daemon:%@ with %d own flows, %d delegated", v24, v27, v33];

              goto LABEL_51;
            }
          }
        }

        v55 = [v51 countByEnumeratingWithState:&v57 objects:v69 count:16];
        if (v55)
        {
          continue;
        }

        break;
      }
    }

    v39 = 0;
LABEL_51:

    v40 = v54;
    if (!v54)
    {
      v41 = [obj count];
      v42 = @"<present>";
      if (!v41)
      {
        v42 = @"<not-present>";
      }

      v40 = v42;
    }

    v43 = MEMORY[0x277CCACA8];
    v44 = v40;
    if (v6)
    {
      v45 = @"(don't-ignore)";
    }

    else
    {
      v45 = &stru_2847966D8;
    }

    v46 = +[TrackedFlow allActiveFlowsCount];
    if (v39)
    {
      v47 = v39;
    }

    else
    {
      v47 = &stru_2847966D8;
    }

    v48 = [v43 stringWithFormat:@"Foreground app %@ %@%@ interval %f flows %d (total %d) %@", v44, v49, v45, *&v9, v53, v46, v47];
    (*(*(a1 + 40) + 16))(v9);
  }

  else
  {
    v21 = *(*(a1 + 40) + 16);
    a3.n128_u64[0] = 0;

    v21(a3);
  }
}

- (void)configurePolicies:(id)policies
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  policiesCopy = policies;
  v5 = [policiesCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(policiesCopy);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v10 objectForKeyedSubscript:@"POLICY_APPLIES_TO"];
          v12 = v11;
          if (!v11)
          {
            v16 = [v10 objectForKeyedSubscript:@"OBSERVER_POLICIES"];
            if (v16)
            {
              observer = [(InterfaceTypeTracker *)self observer];

              if (observer)
              {
                observer2 = [(InterfaceTypeTracker *)self observer];
                [observer2 configurePolicies:v16];
              }
            }

            goto LABEL_27;
          }

          if ([v11 isEqualToString:@"POLICY_APPLY_AS_DEFAULT"])
          {
            defaultPolicy = self->_defaultPolicy;
            v14 = defaultPolicy == 0;
            if (defaultPolicy)
            {
              v15 = 0;
            }

            else
            {
              v20 = objc_alloc_init(TrackerPolicy);
              [(TrackerPolicy *)v20 configureInstance:v10];
              v15 = [TrackerPolicy preferredInstance:v20];

              objc_storeStrong(&self->_defaultPolicy, v15);
              defaultPolicy = self->_defaultPolicy;
            }

            v16 = defaultPolicy;
LABEL_24:

            if (v16 && !v14)
            {
              [(TrackerPolicy *)v16 configureInstance:v10];
            }

LABEL_27:

            continue;
          }

          v15 = [(NSMutableDictionary *)self->_trackerCache objectForKeyedSubscript:v12];
          if (v15)
          {
LABEL_17:
            specificPolicy = [(AppTracker *)v15 specificPolicy];
            if (!specificPolicy)
            {
              v21 = objc_alloc_init(TrackerPolicy);
              [(TrackerPolicy *)v21 configureInstance:v10];
              v16 = [TrackerPolicy preferredInstance:v21];

              [(AppTracker *)v15 setSpecificPolicy:v16];
              v14 = 1;
              goto LABEL_24;
            }

            v16 = specificPolicy;
          }

          else
          {
            v15 = [[AppTracker alloc] initWithUserName:v12 interfaceType:[(InterfaceTypeTracker *)self functionalInterfaceType]];
            if (v15)
            {
              [(NSMutableDictionary *)self->_trackerCache setObject:v15 forKeyedSubscript:v12];
              goto LABEL_17;
            }

            v16 = 0;
          }

          v14 = 0;
          goto LABEL_24;
        }
      }

      v6 = [policiesCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }
}

@end