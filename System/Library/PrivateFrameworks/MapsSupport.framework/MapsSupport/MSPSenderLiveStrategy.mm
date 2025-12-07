@interface MSPSenderLiveStrategy
- (BOOL)_removeAllTokensForParticipant:(id)participant;
- (BOOL)_removeToken:(id)token;
- (BOOL)removeParticipant:(id)participant forReason:(unint64_t)reason;
- (MSPSenderLiveStrategy)initWithGroupSession:(id)session;
- (id)_filteredParticipantsForState:(id)state event:(unint64_t)event;
- (void)_recordTokenForHandle:(id)handle;
- (void)_sendInitialRouteIfNeeded;
- (void)_setState:(id)state;
- (void)addParticipants:(id)participants;
- (void)didFetchCapabilitiesForParticipants:(id)participants;
- (void)removeParticipants:(id)participants;
@end

@implementation MSPSenderLiveStrategy

- (MSPSenderLiveStrategy)initWithGroupSession:(id)session
{
  v9.receiver = self;
  v9.super_class = MSPSenderLiveStrategy;
  v3 = [(MSPSenderIDSStrategy *)&v9 initWithGroupSession:session];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    participantsNeedingRoute = v3->_participantsNeedingRoute;
    v3->_participantsNeedingRoute = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    tokensByHandle = v3->_tokensByHandle;
    v3->_tokensByHandle = v6;
  }

  return v3;
}

- (void)addParticipants:(id)participants
{
  v16 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v14.receiver = self;
  v14.super_class = MSPSenderLiveStrategy;
  [(MSPSenderIDSStrategy *)&v14 addParticipants:participantsCopy];
  [(NSMutableSet *)self->_participantsNeedingRoute addObjectsFromArray:participantsCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = participantsCopy;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(MSPSenderLiveStrategy *)self _recordTokenForHandle:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  [(MSPSenderLiveStrategy *)self _sendInitialRouteIfNeeded];
}

- (void)_recordTokenForHandle:(id)handle
{
  v21 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v5 = IDSCopyAddressDestinationForDestination();
  v6 = handleCopy;
  v7 = v5;
  if (v6 | v7)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(NSMutableDictionary *)self->_tokensByHandle objectForKeyedSubscript:v7];
      v10 = v9;
      if (!v9)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v9 = [(NSMutableDictionary *)self->_tokensByHandle setObject:v10 forKeyedSubscript:v7];
      }

      v11 = MSPGetSharedTripLog(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v12 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

        *buf = 138543875;
        v16 = selfCopy;
        v17 = 2113;
        v18 = v6;
        v19 = 2113;
        v20 = v7;
        _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_INFO, "[%{public}@] adding token %{private}@ for %{private}@", buf, 0x20u);
      }

      [v10 addObject:v6];
    }
  }
}

- (void)removeParticipants:(id)participants
{
  v14 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [participantsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(participantsCopy);
        }

        [(MSPSenderLiveStrategy *)self removeParticipant:*(*(&v9 + 1) + 8 * v8++) forReason:0];
      }

      while (v6 != v8);
      v6 = [participantsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)removeParticipant:(id)participant forReason:(unint64_t)reason
{
  participantCopy = participant;
  v12.receiver = self;
  v12.super_class = MSPSenderLiveStrategy;
  v7 = [(MSPSenderStrategy *)&v12 removeParticipant:participantCopy forReason:reason];
  if (v7)
  {
    [(NSMutableSet *)self->_participantsNeedingRoute removeObject:participantCopy];
  }

  v8 = IDSCopyAddressDestinationForDestination();
  if ([participantCopy isEqualToString:v8])
  {
    v9 = [(MSPSenderLiveStrategy *)self _removeAllTokensForParticipant:v8];
  }

  else
  {
    v9 = [(MSPSenderLiveStrategy *)self _removeToken:participantCopy];
  }

  v10 = v7 | v9;

  return v10 & 1;
}

- (BOOL)_removeToken:(id)token
{
  v25 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v5 = IDSCopyAddressDestinationForDestination();
  if ([v5 length] && (objc_msgSend(v5, "isEqualToString:", tokenCopy) & 1) == 0)
  {
    v7 = [(NSMutableDictionary *)self->_tokensByHandle objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7 && (v9 = [v7 containsObject:tokenCopy], v9))
    {
      v10 = MSPGetSharedTripLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v11 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

        *buf = 138543875;
        v20 = selfCopy;
        v21 = 2113;
        v22 = tokenCopy;
        v23 = 2113;
        v24 = v5;
        _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_INFO, "[%{public}@] removing token %{private}@ for %{private}@", buf, 0x20u);
      }

      [v8 removeObject:tokenCopy];
      [(NSMutableSet *)self->_participantsNeedingRoute removeObject:tokenCopy];
      if (![v8 count])
      {
        v14 = MSPGetSharedTripLog(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = MEMORY[0x277CCACA8];
          selfCopy2 = self;
          selfCopy2 = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

          *buf = 138543619;
          v20 = selfCopy2;
          v21 = 2113;
          v22 = v5;
          _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[%{public}@] clearing token storage for %{private}@", buf, 0x16u);
        }

        [(NSMutableDictionary *)self->_tokensByHandle setObject:0 forKeyedSubscript:v5];
      }

      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_removeAllTokensForParticipant:(id)participant
{
  v21 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  if ([participantCopy length])
  {
    v5 = IDSCopyAddressDestinationForDestination();
    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_tokensByHandle objectForKeyedSubscript:v5];
      v7 = v6;
      v8 = v6 != 0;
      if (v6)
      {
        v9 = MSPGetSharedTripLog(v6);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = MEMORY[0x277CCACA8];
          selfCopy = self;
          selfCopy = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

          *buf = 138543619;
          v18 = selfCopy;
          v19 = 2113;
          v20 = v5;
          _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "[%{public}@] removing all tokens for %{private}@", buf, 0x16u);
        }

        [(NSMutableSet *)self->_participantsNeedingRoute minusSet:v7];
        [(NSMutableDictionary *)self->_tokensByHandle setObject:0 forKeyedSubscript:v5];
        v8 = 1;
      }
    }

    else
    {
      v7 = MSPGetSharedTripLog(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        if (self)
        {
          v13 = MEMORY[0x277CCACA8];
          selfCopy2 = self;
          selfCopy2 = [v13 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
        }

        else
        {
          selfCopy2 = @"<nil>";
        }

        *buf = 138543619;
        v18 = selfCopy2;
        v19 = 2113;
        v20 = participantCopy;
        _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_FAULT, "[%{public}@] unable to get handle from participant %{private}@", buf, 0x16u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_setState:(id)state
{
  v4.receiver = self;
  v4.super_class = MSPSenderLiveStrategy;
  [(MSPSenderStrategy *)&v4 _setState:state];
  [(MSPSenderLiveStrategy *)self _sendInitialRouteIfNeeded];
}

- (void)_sendInitialRouteIfNeeded
{
  v49 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->super.super._participants count]&& [(NSMutableSet *)self->_participantsNeedingRoute count]&& [(GEOSharedNavState *)self->super.super._state hasRouteInfo])
  {
    v3 = [(GEOSharedNavState *)self->super.super._state copy];
    v4 = [objc_opt_class() _validateState:v3 forEvent:5];
    v5 = v4;
    v6 = MSPGetSharedTripLog(v4);
    v7 = v6;
    if (v5)
    {
      v37 = v3;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

        participantsNeedingRoute = self->_participantsNeedingRoute;
        v12 = selfCopy;
        v13 = [(NSMutableSet *)participantsNeedingRoute count];
        v14 = self->_participantsNeedingRoute;

        *buf = 138543874;
        v44 = selfCopy;
        v45 = 2048;
        v46 = v13;
        v47 = 2112;
        v48 = v14;
        _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[%{public}@] Need to send route to %lu participants: %@", buf, 0x20u);
      }

      v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[NSMutableSet count](self->_participantsNeedingRoute, "count")}];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v15 = self->_participantsNeedingRoute;
      v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v39;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v39 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v38 + 1) + 8 * i);
            capabilitiesByParticipant = [(MSPSenderIDSStrategy *)self capabilitiesByParticipant];
            v22 = [capabilitiesByParticipant objectForKeyedSubscript:v20];
            v23 = [v22 count];

            if (v23)
            {
              [v7 addObject:v20];
            }
          }

          v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v17);
      }

      v24 = [v7 count];
      v25 = [(NSMutableSet *)self->_participantsNeedingRoute count];
      v3 = v37;
      if (v24 != v25)
      {
        v26 = MSPGetSharedTripLog(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = MEMORY[0x277CCACA8];
          selfCopy2 = self;
          selfCopy2 = [v27 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

          v30 = selfCopy2;
          v31 = [v7 count];
          v32 = [(NSMutableSet *)self->_participantsNeedingRoute count];

          *buf = 138543874;
          v44 = selfCopy2;
          v45 = 2048;
          v46 = v31;
          v47 = 2048;
          v48 = v32;
          _os_log_impl(&dword_25813A000, v26, OS_LOG_TYPE_INFO, "[%{public}@] only %lu/%lu participants are currently reachable for route", buf, 0x20u);
        }
      }

      if ([v7 count])
      {
        [(NSMutableSet *)self->_participantsNeedingRoute minusSet:v7];
        [(MSPSenderIDSStrategy *)self _sendRouteUpdate:v37 to:v7];
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v33 = MEMORY[0x277CCACA8];
      selfCopy3 = self;
      selfCopy3 = [v33 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];

      v36 = [(NSMutableSet *)self->_participantsNeedingRoute count];
      *buf = 138543618;
      v44 = selfCopy3;
      v45 = 2048;
      v46 = v36;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Need to send route to %lu participants, but state doesn't have routeInfo", buf, 0x16u);
    }
  }
}

- (void)didFetchCapabilitiesForParticipants:(id)participants
{
  v7.receiver = self;
  v7.super_class = MSPSenderLiveStrategy;
  participantsCopy = participants;
  [(MSPSenderIDSStrategy *)&v7 didFetchCapabilitiesForParticipants:participantsCopy];
  participantsNeedingRoute = self->_participantsNeedingRoute;
  v6 = [MEMORY[0x277CBEB98] setWithArray:{participantsCopy, v7.receiver, v7.super_class}];

  LODWORD(participantsNeedingRoute) = [(NSMutableSet *)participantsNeedingRoute intersectsSet:v6];
  if (participantsNeedingRoute)
  {
    [(MSPSenderLiveStrategy *)self _sendInitialRouteIfNeeded];
  }
}

- (id)_filteredParticipantsForState:(id)state event:(unint64_t)event
{
  v8.receiver = self;
  v8.super_class = MSPSenderLiveStrategy;
  v5 = [(MSPSenderIDSStrategy *)&v8 _filteredParticipantsForState:state event:event];
  v6 = [v5 mutableCopy];

  [v6 minusSet:self->_participantsNeedingRoute];

  return v6;
}

@end