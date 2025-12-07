@interface MSPSenderStrategy
+ (BOOL)_validateState:(id)state forEvent:(unint64_t)event;
- (BOOL)removeParticipant:(id)participant forReason:(unint64_t)reason;
- (BOOL)setState:(id)state forEvent:(unint64_t)event;
- (MSPSenderStrategy)init;
- (void)_setState:(id)state;
- (void)addParticipants:(id)participants;
- (void)removeParticipants:(id)participants;
@end

@implementation MSPSenderStrategy

- (MSPSenderStrategy)init
{
  v6.receiver = self;
  v6.super_class = MSPSenderStrategy;
  v2 = [(MSPSenderStrategy *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    participants = v2->_participants;
    v2->_participants = v3;
  }

  return v2;
}

- (void)_setState:(id)state
{
  self->_state = [state copy];

  MEMORY[0x2821F96F8]();
}

- (void)addParticipants:(id)participants
{
  v15 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v5 = MSPGetSharedTripLog(participantsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    *buf = 138543875;
    v10 = selfCopy;
    v11 = 2048;
    v12 = [participantsCopy count];
    v13 = 2113;
    v14 = participantsCopy;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "[%{public}@] add %lu participants: %{private}@", buf, 0x20u);
  }

  [(NSMutableSet *)self->_participants addObjectsFromArray:participantsCopy];
}

- (void)removeParticipants:(id)participants
{
  v24 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v5 = [MEMORY[0x277CBEB98] setWithArray:participantsCopy];
  v6 = [v5 count];
  v7 = [participantsCopy count];
  if (v6 != v7)
  {
    v8 = MSPGetSharedTripLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      if (self)
      {
        v9 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      *buf = 138543619;
      v19 = selfCopy;
      v20 = 2113;
      v21 = participantsCopy;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_FAULT, "[%{public}@] - found duplicate handles in array to remove: %{private}@", buf, 0x16u);
    }
  }

  v12 = [(NSMutableSet *)self->_participants intersectsSet:v5];
  if (v12)
  {
    v13 = MSPGetSharedTripLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = MEMORY[0x277CCACA8];
      selfCopy2 = self;
      selfCopy2 = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

      v17 = [v5 count];
      *buf = 138543875;
      v19 = selfCopy2;
      v20 = 2048;
      v21 = v17;
      v22 = 2113;
      v23 = v5;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_INFO, "[%{public}@] remove %lu participants: %{private}@", buf, 0x20u);
    }

    [(NSMutableSet *)self->_participants minusSet:v5];
  }
}

- (BOOL)removeParticipant:(id)participant forReason:(unint64_t)reason
{
  v17 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  v6 = [(NSMutableSet *)self->_participants containsObject:participantCopy];
  v7 = v6;
  if (v6)
  {
    v8 = MSPGetSharedTripLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

      *buf = 138543619;
      v14 = selfCopy;
      v15 = 2113;
      v16 = participantCopy;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "[%{public}@] remove participant: %{private}@", buf, 0x16u);
    }

    [(NSMutableSet *)self->_participants removeObject:participantCopy];
  }

  return v7;
}

+ (BOOL)_validateState:(id)state forEvent:(unint64_t)event
{
  stateCopy = state;
  if (![stateCopy hasGroupIdentifier])
  {
    goto LABEL_21;
  }

  v6 = 1;
  if (event > 4)
  {
    if (event > 7)
    {
      if (event == 8)
      {
        if ([stateCopy hasEtaInfo])
        {
          hasWaypointInfos = [stateCopy hasWaypointInfos];
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      if (event == 9)
      {
        hasWaypointInfos = [stateCopy hasClosed];
        goto LABEL_20;
      }
    }

    else if (event == 5)
    {
      if (![stateCopy hasRouteInfo])
      {
        goto LABEL_21;
      }

      routeInfo = [stateCopy routeInfo];
      if (![routeInfo coordinatesCount])
      {
        routeInfo2 = [stateCopy routeInfo];
        v6 = [routeInfo2 routingPathLegsCount] != 0;
      }
    }

    else if (event == 7)
    {
      hasWaypointInfos = [stateCopy hasArrived];
      goto LABEL_20;
    }
  }

  else if (event < 5)
  {
    if ([stateCopy hasEtaInfo] && objc_msgSend(stateCopy, "hasWaypointInfos"))
    {
      hasWaypointInfos = [stateCopy hasTransportType];
LABEL_20:
      v6 = hasWaypointInfos;
      goto LABEL_22;
    }

LABEL_21:
    v6 = 0;
  }

LABEL_22:

  return v6;
}

- (BOOL)setState:(id)state forEvent:(unint64_t)event
{
  v28 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (![objc_opt_class() _supportsEvent:event])
  {
LABEL_16:
    v19 = 0;
    goto LABEL_21;
  }

  v7 = [objc_opt_class() _validateState:stateCopy forEvent:event];
  if ((v7 & 1) == 0)
  {
    v14 = MSPGetSharedTripLog(v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
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

      if (event > 9)
      {
        v18 = @"(none)";
      }

      else
      {
        v18 = off_279866058[event];
      }

      *buf = 138543875;
      v23 = selfCopy;
      v24 = 2114;
      v25 = v18;
      v26 = 2113;
      v27 = stateCopy;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@: incoming state failed validation: %{private}@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  v8 = [(NSMutableSet *)self->_participants count];
  if (v8)
  {
    v9 = MSPGetSharedTripLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = MEMORY[0x277CCACA8];
      selfCopy2 = self;
      selfCopy2 = [v10 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

      if (event > 9)
      {
        v13 = @"(none)";
      }

      else
      {
        v13 = off_279866058[event];
      }

      v20 = [(NSMutableSet *)self->_participants count];
      *buf = 138543874;
      v23 = selfCopy2;
      v24 = 2114;
      v25 = v13;
      v26 = 2048;
      v27 = v20;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ (%lu participants)", buf, 0x20u);
    }
  }

  [(MSPSenderStrategy *)self _setState:stateCopy];
  v19 = 1;
LABEL_21:

  return v19;
}

@end