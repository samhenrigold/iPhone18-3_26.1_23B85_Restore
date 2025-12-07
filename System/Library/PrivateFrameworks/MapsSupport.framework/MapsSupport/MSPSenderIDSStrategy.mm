@interface MSPSenderIDSStrategy
- (BOOL)_needToSendETARefreshFor:(id)for state:(id)state;
- (BOOL)setState:(id)state forEvent:(unint64_t)event;
- (MSPSenderIDSStrategy)initWithGroupSession:(id)session;
- (id)_filteredParticipantsForState:(id)state event:(unint64_t)event;
- (void)_sendCompatibleInstancesOfState:(id)state to:(id)to;
- (void)_sendDestinationReachedUpdate:(id)update to:(id)to;
- (void)_sendETAUpdate:(id)update to:(id)to;
- (void)_sendETAUpdateIfNeededTo:(id)to;
- (void)_sendResumingToNextDestinationUpdate:(id)update to:(id)to;
- (void)_sendRouteUpdate:(id)update to:(id)to;
- (void)_sendStoppedUpdate:(id)update to:(id)to;
- (void)_sendTrafficUpdate:(id)update to:(id)to;
- (void)_sendUpdatedWaypoints:(id)waypoints to:(id)to;
- (void)addParticipants:(id)participants;
- (void)fetchCapabilitiesForParticipants:(id)participants completion:(id)completion;
@end

@implementation MSPSenderIDSStrategy

- (MSPSenderIDSStrategy)initWithGroupSession:(id)session
{
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = MSPSenderIDSStrategy;
  v6 = [(MSPSenderStrategy *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupSession, session);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lastETAUpdateDates = v7->_lastETAUpdateDates;
    v7->_lastETAUpdateDates = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    participantsByCapabilities = v7->_participantsByCapabilities;
    v7->_participantsByCapabilities = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    capabilitiesByParticipant = v7->_capabilitiesByParticipant;
    v7->_capabilitiesByParticipant = v12;
  }

  return v7;
}

- (id)_filteredParticipantsForState:(id)state event:(unint64_t)event
{
  v4 = [(NSMutableSet *)self->super._participants copy:state];

  return v4;
}

- (BOOL)setState:(id)state forEvent:(unint64_t)event
{
  v48 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v40.receiver = self;
  v40.super_class = MSPSenderIDSStrategy;
  if ([(MSPSenderStrategy *)&v40 setState:stateCopy forEvent:event])
  {
    v7 = [(MSPSenderIDSStrategy *)self _filteredParticipantsForState:stateCopy event:event];
    v8 = [v7 count];
    if (v8)
    {
      v9 = 1;
      if (event > 4)
      {
        if (event <= 6)
        {
          if (event == 5)
          {
            [(MSPSenderIDSStrategy *)self _sendRouteUpdate:stateCopy to:v7];
          }

          else
          {
            [(MSPSenderIDSStrategy *)self _sendTrafficUpdate:stateCopy to:v7];
          }
        }

        else
        {
          switch(event)
          {
            case 7uLL:
              [(MSPSenderIDSStrategy *)self _sendDestinationReachedUpdate:stateCopy to:v7];
              break;
            case 8uLL:
              [(MSPSenderIDSStrategy *)self _sendResumingToNextDestinationUpdate:stateCopy to:v7];
              break;
            case 9uLL:
              [(MSPSenderIDSStrategy *)self _sendStoppedUpdate:stateCopy to:v7];
              break;
          }
        }

        goto LABEL_48;
      }

      if (event > 1)
      {
        if (event == 3)
        {
          [(MSPSenderIDSStrategy *)self _sendUpdatedWaypoints:stateCopy to:v7];
        }

        else
        {
          [(MSPSenderIDSStrategy *)self _sendETAUpdateIfNeededTo:v7];
        }

        goto LABEL_48;
      }

      if (event)
      {
        if (event != 1)
        {
LABEL_48:

          goto LABEL_49;
        }

        v15 = MSPGetSharedTripLog(v8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          if (self)
          {
            v16 = MEMORY[0x277CCACA8];
            selfCopy = self;
            selfCopy = [v16 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
          }

          else
          {
            selfCopy = @"<nil>";
          }

          participants = self->super._participants;
          v24 = selfCopy;
          v25 = [(NSMutableSet *)participants count];
          v26 = self->super._participants;

          *buf = 138543875;
          v43 = selfCopy;
          v44 = 2048;
          v45 = v25;
          v46 = 2113;
          v47 = v26;
          _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "[%{public}@] - restoring state, resetting lastETAUpdateDate for %lu participants (%{private}@)", buf, 0x20u);
        }

        date = [MEMORY[0x277CBEAA8] date];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v28 = v7;
        v29 = [v28 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v37;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v37 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v36 + 1) + 8 * i);
              lastETAUpdateDates = [(MSPSenderIDSStrategy *)self lastETAUpdateDates];
              [lastETAUpdateDates setObject:date forKeyedSubscript:v33];
            }

            v30 = [v28 countByEnumeratingWithState:&v36 objects:v41 count:16];
          }

          while (v30);
        }
      }

      else
      {
        v19 = MSPGetSharedTripLog(v8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          if (self)
          {
            v20 = MEMORY[0x277CCACA8];
            selfCopy2 = self;
            selfCopy2 = [v20 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
          }

          else
          {
            selfCopy2 = @"<nil>";
          }

          *buf = 138543362;
          v43 = selfCopy2;
          _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_INFO, "[%{public}@] - will immediately attempt to send initial state waypoints/route", buf, 0xCu);
        }

        if ([objc_opt_class() _supportsEvent:3])
        {
          [(MSPSenderIDSStrategy *)self _sendUpdatedWaypoints:stateCopy to:v7];
        }

        if ([objc_opt_class() _supportsEvent:5])
        {
          [(MSPSenderIDSStrategy *)self _sendRouteUpdate:stateCopy to:v7];
        }
      }
    }

    else
    {
      v10 = [(NSMutableSet *)self->super._participants count];
      if (v10)
      {
        v11 = MSPGetSharedTripLog(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = MEMORY[0x277CCACA8];
          selfCopy3 = self;
          selfCopy3 = [v12 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];

          *buf = 138543362;
          v43 = selfCopy3;
          _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] - no participants left for event after filtering", buf, 0xCu);
        }

        v9 = 0;
        goto LABEL_48;
      }
    }

    v9 = 1;
    goto LABEL_48;
  }

  v9 = 0;
LABEL_49:

  return v9;
}

- (BOOL)_needToSendETARefreshFor:(id)for state:(id)state
{
  v47 = *MEMORY[0x277D85DE8];
  forCopy = for;
  stateCopy = state;
  lastETAUpdateDates = [(MSPSenderIDSStrategy *)self lastETAUpdateDates];
  v9 = [lastETAUpdateDates objectForKeyedSubscript:forCopy];

  if (v9)
  {
    v11 = [objc_opt_class() _etaRefreshIntervalForState:stateCopy];
    if (v12 < 0.0)
    {
      v13 = MSPGetSharedTripLog(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v14 = MEMORY[0x277CCACA8];
          selfCopy = self;
          selfCopy = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
        }

        else
        {
          selfCopy = @"<nil>";
        }

        *buf = 138543619;
        v40 = selfCopy;
        v41 = 2113;
        v42 = forCopy;
        v34 = "[%{public}@] _needToSendETARefresh for %{private}@: NO, interval is < 0";
        v35 = v13;
        v36 = OS_LOG_TYPE_INFO;
        v37 = 22;
LABEL_25:
        _os_log_impl(&dword_25813A000, v35, v36, v34, buf, v37);

        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v21 = v12;
    timeIntervalSinceNow = [v9 timeIntervalSinceNow];
    v24 = -v23;
    v25 = v21 + v23;
    v26 = MSPGetSharedTripLog(timeIntervalSinceNow);
    v13 = v26;
    if (v25 > 0.0)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (self)
        {
          v29 = MEMORY[0x277CCACA8];
          selfCopy2 = self;
          selfCopy = [v29 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
        }

        else
        {
          selfCopy = @"<nil>";
        }

        *buf = 138544131;
        v40 = selfCopy;
        v41 = 2113;
        v42 = forCopy;
        v43 = 2048;
        v44 = v24;
        v45 = 2048;
        v46 = v25;
        v34 = "[%{public}@] _needToSendETARefresh for %{private}@: NO, too soon since previous (%#.1lfs since last update, %#.1lfs to go)";
        v35 = v13;
        v36 = OS_LOG_TYPE_DEFAULT;
        v37 = 42;
        goto LABEL_25;
      }

LABEL_26:
      v17 = 0;
      goto LABEL_27;
    }

    v17 = 1;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      if (self)
      {
        v27 = MEMORY[0x277CCACA8];
        selfCopy3 = self;
        selfCopy3 = [v27 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];
      }

      else
      {
        selfCopy3 = @"<nil>";
      }

      *buf = 138543875;
      v40 = selfCopy3;
      v41 = 2113;
      v42 = forCopy;
      v43 = 2048;
      v44 = v24;
      v31 = "[%{public}@] _needToSendETARefresh for %{private}@: YES, last update %#.1lfs ago";
      v17 = 1;
      v32 = v13;
      v33 = 32;
LABEL_22:
      _os_log_impl(&dword_25813A000, v32, OS_LOG_TYPE_INFO, v31, buf, v33);
    }
  }

  else
  {
    v13 = MSPGetSharedTripLog(v10);
    v17 = 1;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (self)
      {
        v18 = MEMORY[0x277CCACA8];
        selfCopy4 = self;
        selfCopy3 = [v18 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy4];
      }

      else
      {
        selfCopy3 = @"<nil>";
      }

      *buf = 138543619;
      v40 = selfCopy3;
      v41 = 2113;
      v42 = forCopy;
      v31 = "[%{public}@] _needToSendETARefresh for %{private}@: YES, no ETA updates sent at all yet";
      v17 = 1;
      v32 = v13;
      v33 = 22;
      goto LABEL_22;
    }
  }

LABEL_27:

  return v17;
}

- (void)_sendETAUpdateIfNeededTo:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v5 = self->super._state;
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(toCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [toCopy copy];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([(MSPSenderIDSStrategy *)self _needToSendETARefreshFor:v12 state:v5])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }

  v13 = [v6 count];
  if (v13)
  {
    v14 = MSPGetSharedTripLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v15 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      v18 = [v6 count];
      *buf = 138543618;
      v25 = selfCopy;
      v26 = 2048;
      v27 = v18;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] %lu participants need an ETA update", buf, 0x16u);
    }

    v19 = [v6 copy];
    [(MSPSenderIDSStrategy *)self _sendETAUpdate:v5 to:v19];
  }
}

- (void)addParticipants:(id)participants
{
  v24 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:participantsCopy];
  v6 = MEMORY[0x277CBEB98];
  capabilitiesByParticipant = [(MSPSenderIDSStrategy *)self capabilitiesByParticipant];
  allKeys = [capabilitiesByParticipant allKeys];
  v9 = [v6 setWithArray:allKeys];
  [v5 minusSet:v9];

  v10 = [v5 count];
  if (v10)
  {
    v11 = MSPGetSharedTripLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (self)
      {
        v12 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v12 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      *buf = 138543875;
      v19 = selfCopy;
      v20 = 2048;
      v21 = [v5 count];
      v22 = 2113;
      v23 = v5;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_INFO, "[%{public}@] Need to fetch capabilities for %lu handles: %{private}@", buf, 0x20u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __40__MSPSenderIDSStrategy_addParticipants___block_invoke;
    v16[3] = &unk_279865FE8;
    v16[4] = self;
    v17 = participantsCopy;
    [(MSPSenderIDSStrategy *)self fetchCapabilitiesForParticipants:v5 completion:v16];
  }

  v15.receiver = self;
  v15.super_class = MSPSenderIDSStrategy;
  [(MSPSenderStrategy *)&v15 addParticipants:participantsCopy];
}

void __40__MSPSenderIDSStrategy_addParticipants___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__MSPSenderIDSStrategy_addParticipants___block_invoke_2;
  v12[3] = &unk_279865FC0;
  v12[4] = *(a1 + 32);
  v4 = MSPGetSharedTripLog([v3 enumerateKeysAndObjectsUsingBlock:v12]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = v5;
      v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];
    }

    else
    {
      v8 = @"<nil>";
    }

    v9 = [*(a1 + 40) count];
    *buf = 138543875;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    v17 = 2113;
    v18 = v3;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "[%{public}@] Did fetch capabilities for %lu handles: %{private}@", buf, 0x20u);
  }

  v10 = *(a1 + 32);
  v11 = [v3 allKeys];
  [v10 didFetchCapabilitiesForParticipants:v11];
}

void __40__MSPSenderIDSStrategy_addParticipants___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [*(a1 + 32) capabilitiesByParticipant];
        [v12 setObject:v6 forKeyedSubscript:v5];

        v13 = [*(a1 + 32) participantsByCapabilities];
        v14 = [v13 objectForKeyedSubscript:v11];

        if (!v14)
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v15 = [*(a1 + 32) participantsByCapabilities];
          [v15 setObject:v14 forKeyedSubscript:v11];
        }

        [v14 addObject:v5];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)fetchCapabilitiesForParticipants:(id)participants completion:(id)completion
{
  participantsCopy = participants;
  completionCopy = completion;
  if ([participantsCopy count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__MSPSenderIDSStrategy_fetchCapabilitiesForParticipants_completion___block_invoke;
    v7[3] = &unk_279866010;
    v8 = completionCopy;
    [MSPSharedTripReceiverCapabilities fetchReceiverCapabilitiesForDestinations:participantsCopy completion:v7];
  }
}

- (void)_sendCompatibleInstancesOfState:(id)state to:(id)to
{
  v47 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  toCopy = to;
  v8 = toCopy;
  if (stateCopy && [toCopy count])
  {
    v30 = v8;
    v31 = stateCopy;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          capabilitiesByParticipant = [(MSPSenderIDSStrategy *)self capabilitiesByParticipant];
          v16 = [capabilitiesByParticipant objectForKeyedSubscript:v14];

          if (!v16)
          {
            v18 = MSPGetSharedTripLog(v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
            {
              if (self)
              {
                v19 = MEMORY[0x277CCACA8];
                selfCopy = self;
                selfCopy = [v19 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
              }

              else
              {
                selfCopy = @"<nil>";
              }

              *buf = 138543619;
              v43 = selfCopy;
              v44 = 2113;
              v45 = v14;
              _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_FAULT, "[%{public}@] have not yet fetched capabilties for %{private}@", buf, 0x16u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v11);
    }

    participantsByCapabilities = [(MSPSenderIDSStrategy *)self participantsByCapabilities];
    v23 = [participantsByCapabilities copy];

    v24 = objc_alloc(MEMORY[0x277CBEB38]);
    participantsByCapabilities2 = [(MSPSenderIDSStrategy *)self participantsByCapabilities];
    v26 = [v24 initWithCapacity:{objc_msgSend(participantsByCapabilities2, "count")}];

    v27 = self->_groupSession;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __59__MSPSenderIDSStrategy__sendCompatibleInstancesOfState_to___block_invoke;
    v32[3] = &unk_279866038;
    v33 = v9;
    selfCopy2 = self;
    v35 = v26;
    stateCopy = v31;
    v36 = v31;
    v37 = v27;
    v28 = v27;
    v29 = v26;
    [v23 enumerateKeysAndObjectsUsingBlock:v32];

    v8 = v30;
  }
}

void __59__MSPSenderIDSStrategy__sendCompatibleInstancesOfState_to___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 mutableCopy];
  [v8 intersectSet:*(a1 + 32)];
  if ([v8 count])
  {
    v9 = *(*(a1 + 40) + 24);
    v10 = [*(a1 + 48) objectForKeyedSubscript:v5];
    v11 = v10;
    if (v9 == 1)
    {
      if (!v10)
      {
        v11 = [*(a1 + 56) instanceCompatibleWithReceiverCapabilities:v5];
        v10 = [*(a1 + 48) setObject:v11 forKeyedSubscript:v5];
      }

      v12 = MSPGetSharedTripVirtualReceiverLog(v10);
      v13 = *(a1 + 40);
      v14 = MEMORY[0x277CCACA8];
      v15 = [v8 allObjects];
      v16 = [v15 componentsJoinedByString:{@", "}];
      v17 = [v14 stringWithFormat:@"TO:(%@)", v16];
      [v11 _msp_logWithCategory:v12 type:1 object:v13 prefix:v17];
    }

    else
    {
      if (!v10)
      {
        v18 = [*(a1 + 56) instanceCompatibleWithReceiverCapabilities:v5];
        v11 = [v18 data];

        [*(a1 + 48) setObject:v11 forKeyedSubscript:v5];
      }

      v19 = *(a1 + 64);
      v20 = [v5 idsSendMessageOptions];
      v27 = 0;
      [v19 sendChunkedMessage:v11 to:v8 options:v20 error:&v27];
      v12 = v27;

      if (v12)
      {
        v22 = MSPGetSharedTripLog(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = *(a1 + 40);
          if (v23)
          {
            v24 = MEMORY[0x277CCACA8];
            v25 = v23;
            v26 = [v24 stringWithFormat:@"%@<%p>", objc_opt_class(), v25];
          }

          else
          {
            v26 = @"<nil>";
          }

          *buf = 138543618;
          v29 = v26;
          v30 = 2114;
          v31 = v12;
          _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_ERROR, "[%{public}@] error sending compatible state: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)_sendUpdatedWaypoints:(id)waypoints to:(id)to
{
  v43 = *MEMORY[0x277D85DE8];
  waypointsCopy = waypoints;
  toCopy = to;
  v8 = [toCopy count];
  if (v8)
  {
    v9 = MSPGetSharedTripLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v10 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      *buf = 138543362;
      v40 = selfCopy;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] _sendUpdatedWaypoints", buf, 0xCu);
    }

    v13 = [waypointsCopy copy];
    if ([v13 hasWaypointInfos])
    {
      [v13 stripForSendingUpdatedWaypoints];
      v14 = objc_alloc_init(MEMORY[0x277D0ED28]);
      [v13 setSenderInfo:v14];

      initiatorDisplayName = [(MSPSharedTripGroupSession *)self->_groupSession initiatorDisplayName];
      senderInfo = [v13 senderInfo];
      [senderInfo setFromDisplayName:initiatorDisplayName];

      v18 = MSPGetSharedTripLog(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = MEMORY[0x277CCACA8];
        selfCopy2 = self;
        selfCopy2 = [v19 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

        mspDescription = [v13 mspDescription];
        *buf = 138543618;
        v40 = selfCopy2;
        v41 = 2112;
        v42 = mspDescription;
        _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_INFO, "[%{public}@] will send state %@", buf, 0x16u);
      }

      if ([waypointsCopy hasEtaInfo])
      {
        etaInfo = [waypointsCopy etaInfo];
        hasEtaTimestamp = [etaInfo hasEtaTimestamp];

        if (hasEtaTimestamp)
        {
          v33 = waypointsCopy;
          date = [MEMORY[0x277CBEAA8] date];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v26 = toCopy;
          v27 = [v26 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v35;
            do
            {
              v30 = 0;
              do
              {
                if (*v35 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v34 + 1) + 8 * v30);
                lastETAUpdateDates = [(MSPSenderIDSStrategy *)self lastETAUpdateDates];
                [lastETAUpdateDates setObject:date forKeyedSubscript:v31];

                ++v30;
              }

              while (v28 != v30);
              v28 = [v26 countByEnumeratingWithState:&v34 objects:v38 count:16];
            }

            while (v28);
          }

          waypointsCopy = v33;
        }
      }

      [(MSPSenderIDSStrategy *)self _sendCompatibleInstancesOfState:v13 to:toCopy];
    }
  }
}

- (void)_sendDestinationReachedUpdate:(id)update to:(id)to
{
  v24 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  toCopy = to;
  v8 = [toCopy count];
  if (v8)
  {
    v9 = MSPGetSharedTripLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v10 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      *buf = 138543362;
      v21 = selfCopy;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] _sendDestinationReachedUpdate", buf, 0xCu);
    }

    v13 = [updateCopy copy];
    destinationWaypointInfo = [v13 destinationWaypointInfo];

    if (destinationWaypointInfo)
    {
      v15 = MSPGetSharedTripLog([v13 stripForSendingArrival]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v16 = MEMORY[0x277CCACA8];
          selfCopy2 = self;
          selfCopy2 = [v16 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
        }

        else
        {
          selfCopy2 = @"<nil>";
        }

        mspDescription = [v13 mspDescription];
        *buf = 138543618;
        v21 = selfCopy2;
        v22 = 2112;
        v23 = mspDescription;
        _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "[%{public}@] will send state %@", buf, 0x16u);
      }

      [(MSPSenderIDSStrategy *)self _sendCompatibleInstancesOfState:v13 to:toCopy];
    }
  }
}

- (void)_sendResumingToNextDestinationUpdate:(id)update to:(id)to
{
  v24 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  toCopy = to;
  v8 = [toCopy count];
  if (v8)
  {
    v9 = MSPGetSharedTripLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v10 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      *buf = 138543362;
      v21 = selfCopy;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] _sendResumingToNextDestinationUpdate", buf, 0xCu);
    }

    v13 = [updateCopy copy];
    destinationWaypointInfo = [v13 destinationWaypointInfo];

    if (destinationWaypointInfo)
    {
      v15 = MSPGetSharedTripLog([v13 stripForSendingResuming]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v16 = MEMORY[0x277CCACA8];
          selfCopy2 = self;
          selfCopy2 = [v16 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
        }

        else
        {
          selfCopy2 = @"<nil>";
        }

        mspDescription = [v13 mspDescription];
        *buf = 138543618;
        v21 = selfCopy2;
        v22 = 2112;
        v23 = mspDescription;
        _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "[%{public}@] will send state %@", buf, 0x16u);
      }

      [(MSPSenderIDSStrategy *)self _sendCompatibleInstancesOfState:v13 to:toCopy];
    }
  }
}

- (void)_sendStoppedUpdate:(id)update to:(id)to
{
  v27 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  toCopy = to;
  v8 = [toCopy count];
  if (v8)
  {
    v9 = MSPGetSharedTripLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v10 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      *buf = 138543362;
      v24 = selfCopy;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] _sendStoppedUpdate", buf, 0xCu);
    }

    v13 = [updateCopy copy];
    if ([v13 hasGroupIdentifier] && objc_msgSend(v13, "hasClosed"))
    {
      [v13 stripForSendingStoppedSharing];
      v14 = objc_alloc_init(MEMORY[0x277D0ED28]);
      [v13 setSenderInfo:v14];

      initiatorDisplayName = [(MSPSharedTripGroupSession *)self->_groupSession initiatorDisplayName];
      senderInfo = [v13 senderInfo];
      [senderInfo setFromDisplayName:initiatorDisplayName];

      v18 = MSPGetSharedTripLog(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = MEMORY[0x277CCACA8];
        selfCopy2 = self;
        selfCopy2 = [v19 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

        mspDescription = [v13 mspDescription];
        *buf = 138543618;
        v24 = selfCopy2;
        v25 = 2112;
        v26 = mspDescription;
        _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_INFO, "[%{public}@] will send state %@", buf, 0x16u);
      }

      [(MSPSenderIDSStrategy *)self _sendCompatibleInstancesOfState:v13 to:toCopy];
    }
  }
}

- (void)_sendETAUpdate:(id)update to:(id)to
{
  v37 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  toCopy = to;
  v8 = [toCopy count];
  if (v8)
  {
    v9 = MSPGetSharedTripLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v10 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      *buf = 138543362;
      v34 = selfCopy;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] _sendETAUpdate", buf, 0xCu);
    }

    v13 = [updateCopy copy];
    if ([v13 etaInfosCount])
    {
      v14 = MSPGetSharedTripLog([v13 stripForSendingUpdatedETA]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v15 = MEMORY[0x277CCACA8];
          selfCopy2 = self;
          selfCopy2 = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
        }

        else
        {
          selfCopy2 = @"<nil>";
        }

        mspDescription = [v13 mspDescription];
        *buf = 138543619;
        v34 = selfCopy2;
        v35 = 2113;
        v36 = mspDescription;
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[%{public}@] will send state %{private}@", buf, 0x16u);
      }

      v27 = updateCopy;

      date = [MEMORY[0x277CBEAA8] date];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v20 = toCopy;
      v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v29;
        do
        {
          v24 = 0;
          do
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v28 + 1) + 8 * v24);
            lastETAUpdateDates = [(MSPSenderIDSStrategy *)self lastETAUpdateDates];
            [lastETAUpdateDates setObject:date forKeyedSubscript:v25];

            ++v24;
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v22);
      }

      [(MSPSenderIDSStrategy *)self _sendCompatibleInstancesOfState:v13 to:v20];
      updateCopy = v27;
    }
  }
}

- (void)_sendRouteUpdate:(id)update to:(id)to
{
  v24 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  toCopy = to;
  v8 = [toCopy count];
  if (v8)
  {
    v9 = MSPGetSharedTripLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v10 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      *buf = 138543362;
      v21 = selfCopy;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] _sendRouteUpdate", buf, 0xCu);
    }

    v13 = [updateCopy copy];
    routeInfo = [v13 routeInfo];

    if (routeInfo)
    {
      v15 = MSPGetSharedTripLog([v13 stripForSendingUpdatedRoute]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v16 = MEMORY[0x277CCACA8];
          selfCopy2 = self;
          selfCopy2 = [v16 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
        }

        else
        {
          selfCopy2 = @"<nil>";
        }

        mspDescription = [v13 mspDescription];
        *buf = 138543618;
        v21 = selfCopy2;
        v22 = 2112;
        v23 = mspDescription;
        _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "[%{public}@] will send state %@", buf, 0x16u);
      }

      [(MSPSenderIDSStrategy *)self _sendCompatibleInstancesOfState:v13 to:toCopy];
    }
  }
}

- (void)_sendTrafficUpdate:(id)update to:(id)to
{
  v24 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  toCopy = to;
  v8 = [toCopy count];
  if (v8)
  {
    v9 = MSPGetSharedTripLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v10 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      *buf = 138543362;
      v21 = selfCopy;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] _sendTrafficUpdate", buf, 0xCu);
    }

    v13 = [updateCopy copy];
    routeInfo = [v13 routeInfo];

    if (routeInfo)
    {
      v15 = MSPGetSharedTripLog([v13 stripForSendingUpdatedTraffic]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v16 = MEMORY[0x277CCACA8];
          selfCopy2 = self;
          selfCopy2 = [v16 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
        }

        else
        {
          selfCopy2 = @"<nil>";
        }

        mspDescription = [v13 mspDescription];
        *buf = 138543618;
        v21 = selfCopy2;
        v22 = 2112;
        v23 = mspDescription;
        _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "[%{public}@] will send state %@", buf, 0x16u);
      }

      [(MSPSenderIDSStrategy *)self _sendCompatibleInstancesOfState:v13 to:toCopy];
    }
  }
}

@end