@interface MSPSenderMinimalStrategy
+ (double)_etaRefreshIntervalForState:(id)state;
- (BOOL)removeParticipant:(id)participant forReason:(unint64_t)reason;
- (MSPSenderMinimalStrategy)initWithGroupSession:(id)session;
- (id)_filteredParticipantsForState:(id)state event:(unint64_t)event;
- (void)_sendInitialStateIfNeeded;
- (void)_setState:(id)state;
- (void)addParticipants:(id)participants;
- (void)didFetchCapabilitiesForParticipants:(id)participants;
- (void)removeParticipants:(id)participants;
@end

@implementation MSPSenderMinimalStrategy

- (MSPSenderMinimalStrategy)initWithGroupSession:(id)session
{
  v7.receiver = self;
  v7.super_class = MSPSenderMinimalStrategy;
  v3 = [(MSPSenderIDSStrategy *)&v7 initWithGroupSession:session];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    participantsNeedingInitialState = v3->_participantsNeedingInitialState;
    v3->_participantsNeedingInitialState = v4;
  }

  return v3;
}

+ (double)_etaRefreshIntervalForState:(id)state
{
  v3 = MEMORY[0x277CBEAA8];
  etaInfo = [state etaInfo];
  [etaInfo etaTimestamp];
  v5 = [v3 dateWithTimeIntervalSinceReferenceDate:?];

  [v5 timeIntervalSinceNow];
  GEOConfigGetDouble();
  GEOConfigGetDouble();
  v7 = v6;

  return v7;
}

- (void)_setState:(id)state
{
  v4.receiver = self;
  v4.super_class = MSPSenderMinimalStrategy;
  [(MSPSenderStrategy *)&v4 _setState:state];
  [(MSPSenderMinimalStrategy *)self _sendInitialStateIfNeeded];
}

- (void)_sendInitialStateIfNeeded
{
  v55 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->super.super._participants count]&& [(NSMutableSet *)self->_participantsNeedingInitialState count])
  {
    v3 = [(GEOSharedNavState *)self->super.super._state copy];
    v4 = [objc_opt_class() _validateState:v3 forEvent:3];
    v5 = v4;
    v6 = MSPGetSharedTripLog(v4);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      v41 = v3;
      if (v7)
      {
        v8 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

        participantsNeedingInitialState = self->_participantsNeedingInitialState;
        v12 = selfCopy;
        v13 = [(NSMutableSet *)participantsNeedingInitialState count];
        v14 = self->_participantsNeedingInitialState;

        *buf = 138543875;
        v48 = selfCopy;
        v49 = 2048;
        v50 = v13;
        v51 = 2113;
        v52 = v14;
        _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[%{public}@] Need to send initial state to %lu participants: %{private}@", buf, 0x20u);
      }

      v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[NSMutableSet count](self->_participantsNeedingInitialState, "count")}];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v15 = self->_participantsNeedingInitialState;
      v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v43;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v43 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v42 + 1) + 8 * i);
            capabilitiesByParticipant = [(MSPSenderIDSStrategy *)self capabilitiesByParticipant];
            v22 = [capabilitiesByParticipant objectForKeyedSubscript:v20];
            v23 = [v22 count];

            if (v23)
            {
              [v6 addObject:v20];
            }
          }

          v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v17);
      }

      v24 = [v6 count];
      v25 = [(NSMutableSet *)self->_participantsNeedingInitialState count];
      v3 = v41;
      if (v24 != v25)
      {
        v26 = MSPGetSharedTripLog(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = MEMORY[0x277CCACA8];
          selfCopy2 = self;
          selfCopy2 = [v27 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

          v30 = selfCopy2;
          v31 = [v6 count];
          v32 = [(NSMutableSet *)self->_participantsNeedingInitialState count];

          *buf = 138543874;
          v48 = selfCopy2;
          v49 = 2048;
          v50 = v31;
          v51 = 2048;
          v52 = v32;
          _os_log_impl(&dword_25813A000, v26, OS_LOG_TYPE_INFO, "[%{public}@] only %lu/%lu participants are currently reachable for initial state", buf, 0x20u);
        }
      }

      if ([v6 count])
      {
        [(NSMutableSet *)self->_participantsNeedingInitialState minusSet:v6];
        [(MSPSenderIDSStrategy *)self _sendUpdatedWaypoints:v41 to:v6];
      }
    }

    else if (v7)
    {
      v33 = MEMORY[0x277CCACA8];
      selfCopy3 = self;
      selfCopy3 = [v33 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];

      v36 = [(NSMutableSet *)self->_participantsNeedingInitialState count];
      if ([v3 waypointInfosCount])
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v38 = v37;
      if ([v3 etaInfosCount])
      {
        v39 = @"YES";
      }

      else
      {
        v39 = @"NO";
      }

      v40 = v39;
      *buf = 138544130;
      v48 = selfCopy3;
      v49 = 2048;
      v50 = v36;
      v51 = 2114;
      v52 = v38;
      v53 = 2114;
      v54 = v40;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[%{public}@] Need to send initial state to %lu participants, but initial state isn't ready (hasWaypoints: %{public}@, hasETAInfos: %{public}@)", buf, 0x2Au);
    }
  }
}

- (void)addParticipants:(id)participants
{
  v5.receiver = self;
  v5.super_class = MSPSenderMinimalStrategy;
  participantsCopy = participants;
  [(MSPSenderIDSStrategy *)&v5 addParticipants:participantsCopy];
  [(NSMutableSet *)self->_participantsNeedingInitialState addObjectsFromArray:participantsCopy, v5.receiver, v5.super_class];

  [(MSPSenderMinimalStrategy *)self _sendInitialStateIfNeeded];
}

- (void)removeParticipants:(id)participants
{
  v7.receiver = self;
  v7.super_class = MSPSenderMinimalStrategy;
  participantsCopy = participants;
  [(MSPSenderStrategy *)&v7 removeParticipants:participantsCopy];
  participantsNeedingInitialState = self->_participantsNeedingInitialState;
  v6 = [MEMORY[0x277CBEB98] setWithArray:{participantsCopy, v7.receiver, v7.super_class}];

  [(NSMutableSet *)participantsNeedingInitialState minusSet:v6];
}

- (BOOL)removeParticipant:(id)participant forReason:(unint64_t)reason
{
  v21 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  if ([objc_opt_class() _supportsEvent:9])
  {
    v7 = [(NSMutableSet *)self->super.super._participants containsObject:participantCopy];
    if (v7)
    {
      v8 = MSPGetSharedTripLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

        *buf = 138543618;
        v18 = selfCopy;
        v19 = 2048;
        reasonCopy = reason;
        _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "[%{public}@] will remove and send stopped with reason: %lu", buf, 0x16u);
      }

      v12 = [(GEOSharedNavState *)self->super.super._state copy];
      [v12 setClosed:1];
      [v12 setClosureReason:reason];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      [v12 setClosedTimestamp:?];
      v13 = [MEMORY[0x277CBEB98] setWithObject:participantCopy];
      [(MSPSenderIDSStrategy *)self _sendStoppedUpdate:v12 to:v13];
    }
  }

  v16.receiver = self;
  v16.super_class = MSPSenderMinimalStrategy;
  v14 = [(MSPSenderStrategy *)&v16 removeParticipant:participantCopy forReason:reason];
  if (v14)
  {
    [(NSMutableSet *)self->_participantsNeedingInitialState removeObject:participantCopy];
  }

  return v14;
}

- (void)didFetchCapabilitiesForParticipants:(id)participants
{
  v7.receiver = self;
  v7.super_class = MSPSenderMinimalStrategy;
  participantsCopy = participants;
  [(MSPSenderIDSStrategy *)&v7 didFetchCapabilitiesForParticipants:participantsCopy];
  participantsNeedingInitialState = self->_participantsNeedingInitialState;
  v6 = [MEMORY[0x277CBEB98] setWithArray:{participantsCopy, v7.receiver, v7.super_class}];

  LODWORD(participantsNeedingInitialState) = [(NSMutableSet *)participantsNeedingInitialState intersectsSet:v6];
  if (participantsNeedingInitialState)
  {
    [(MSPSenderMinimalStrategy *)self _sendInitialStateIfNeeded];
  }
}

- (id)_filteredParticipantsForState:(id)state event:(unint64_t)event
{
  v8.receiver = self;
  v8.super_class = MSPSenderMinimalStrategy;
  v5 = [(MSPSenderIDSStrategy *)&v8 _filteredParticipantsForState:state event:event];
  v6 = [v5 mutableCopy];

  [v6 minusSet:self->_participantsNeedingInitialState];

  return v6;
}

@end