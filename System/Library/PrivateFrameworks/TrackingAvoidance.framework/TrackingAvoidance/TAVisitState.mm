@interface TAVisitState
+ (id)visitStateTypeToString:(unint64_t)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInSensitiveVisit;
- (BOOL)setState:(unint64_t)state;
- (BOOL)shouldCreateNewVisitSnapshotFromUnknownState:(id)state;
- (TAVisitState)initWithCoder:(id)coder;
- (TAVisitState)initWithSettings:(id)settings scanRequestSettings:(id)requestSettings;
- (id)description;
- (id)getDisplayEventsWithFirstPrecedingInInterval:(id)interval store:(id)store;
- (id)getLatestValidVisit;
- (id)getLatestValidVisitArrivalDate;
- (id)getLatestValidVisitDepartureDate;
- (unint64_t)evaluateLatestVisitSnapshotAndRecoverIfNecessaryWithStore:(id)store andAppendOutgoingRequestsTo:(id)to;
- (unint64_t)stateTransitionDecisionGivenTACLVisit:(id)visit;
- (void)closeLatestInterVisitSnapshotWithStore:(id)store arrivalVisit:(id)visit;
- (void)closeVisitSnapshotWithStore:(id)store visit:(id)visit;
- (void)description;
- (void)encodeWithCoder:(id)coder;
- (void)ingestTAEvent:(id)event store:(id)store appendOutgoingRequestsTo:(id)to;
- (void)issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:(id)snapshot store:(id)store andAppendOutgoingRequestsTo:(id)to;
- (void)issueVisitEntryScanRequestIfNecessaryWithOpenSnapshot:(id)snapshot clock:(id)clock andAppendOutgoingRequestsTo:(id)to;
- (void)labelLoiTypeForLastVisitSnapshot:(id)snapshot;
- (void)mergeWithAnotherTAVisitState:(id)state;
- (void)notifyObserversOfMetricsHint:(unint64_t)hint;
- (void)notifyObserversOfStateChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)openInterVisitBackupSnapshotWithArrivalVisit:(id)visit;
- (void)openInterVisitSnapshotWithStore:(id)store departureVisit:(id)visit;
- (void)openVisitSnapshotWithStore:(id)store visit:(id)visit andAppendOutgoingRequestsTo:(id)to;
- (void)performStateTransitionDecision:(unint64_t)decision store:(id)store visit:(id)visit andAppendOutgoingRequestsTo:(id)to;
- (void)purgeInterVisitSnapshotBufferWithCurrentDate:(id)date;
- (void)purgeVisitSnapshotBufferWithCurrentDate:(id)date;
- (void)purgeWithClock:(id)clock;
- (void)recoverInterVisitSnapshotWithArrivalVisit:(id)visit store:(id)store;
- (void)resetInterVisitBackupSnapshot;
- (void)updateImportantLOIs:(id)is currentDate:(id)date;
- (void)updateInterVisitBackupSnapshotWithStore:(id)store;
- (void)updateInterVisitSnapshot:(id)snapshot store:(id)store;
- (void)updateInterVisitSnapshotWithStore:(id)store;
@end

@implementation TAVisitState

- (BOOL)isInSensitiveVisit
{
  if (self->_state != 1)
  {
    return 0;
  }

  lastObject = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
  if (lastObject)
  {
    sensitiveLOITypes = [(TAVisitStateSettings *)self->_settings sensitiveLOITypes];
    if (sensitiveLOITypes)
    {
      sensitiveLOITypes2 = [(TAVisitStateSettings *)self->_settings sensitiveLOITypes];
      v6 = MEMORY[0x277CCABB0];
      lastObject2 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
      v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(lastObject2, "loiType")}];
      v9 = [sensitiveLOITypes2 containsObject:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getLatestValidVisitDepartureDate
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  bufferCopy = [(TACircularBuffer *)self->_visitSnapshotBuffer bufferCopy];
  reverseObjectEnumerator = [bufferCopy reverseObjectEnumerator];

  departureDate = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (departureDate)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != departureDate; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isClosed])
        {
          representativeVisit = [v7 representativeVisit];
          departureDate = [representativeVisit departureDate];

          goto LABEL_11;
        }
      }

      departureDate = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (departureDate)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return departureDate;
}

- (TAVisitState)initWithSettings:(id)settings scanRequestSettings:(id)requestSettings
{
  settingsCopy = settings;
  requestSettingsCopy = requestSettings;
  v25.receiver = self;
  v25.super_class = TAVisitState;
  v9 = [(TAVisitState *)&v25 init];
  v10 = v9;
  if (v9)
  {
    v9->_state = 0;
    objc_storeStrong(&v9->_settings, settings);
    v11 = [[TACircularBuffer alloc] initWithCapacity:[(TAVisitStateSettings *)v10->_settings visitSnapshotCapacity]];
    visitSnapshotBuffer = v10->_visitSnapshotBuffer;
    v10->_visitSnapshotBuffer = v11;

    v13 = [[TACircularBuffer alloc] initWithCapacity:[(TAVisitStateSettings *)v10->_settings interVisitMetricSnapshotCapacity]];
    interVisitMetricSnapshotBuffer = v10->_interVisitMetricSnapshotBuffer;
    v10->_interVisitMetricSnapshotBuffer = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    importantLois = v10->_importantLois;
    v10->_importantLois = v15;

    v17 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v10->_observers;
    v10->_observers = v17;

    v19 = [[TAScanRequest alloc] initWithSettings:requestSettingsCopy];
    scanRequest = v10->_scanRequest;
    v10->_scanRequest = v19;

    interVisitMetricsSnapshotBackup = v10->_interVisitMetricsSnapshotBackup;
    v10->_interVisitMetricsSnapshotBackup = 0;

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    nextPredictedLOIs = v10->_nextPredictedLOIs;
    v10->_nextPredictedLOIs = v22;
  }

  return v10;
}

+ (id)visitStateTypeToString:(unint64_t)string
{
  if (string > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1EB8[string];
  }
}

- (void)notifyObserversOfStateChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v8 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 visitState:self didChangeStateFromType:state toType:toState];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)notifyObserversOfMetricsHint:(unint64_t)hint
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 visitState:self didIssueMetricsSubmissionHint:hint];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)ingestTAEvent:(id)event store:(id)store appendOutgoingRequestsTo:(id)to
{
  v62 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  storeCopy = store;
  toCopy = to;
  if ([eventCopy isMemberOfClass:objc_opt_class()])
  {
    v48 = toCopy;
    selfCopy = self;
    v50 = storeCopy;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    bufferCopy = [(TACircularBuffer *)self->_visitSnapshotBuffer bufferCopy];
    reverseObjectEnumerator = [bufferCopy reverseObjectEnumerator];

    v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v52;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v17 = *(*(&v51 + 1) + 8 * i);
          getDate = [eventCopy getDate];
          representativeVisit = [v17 representativeVisit];
          arrivalDate = [representativeVisit arrivalDate];
          v21 = [getDate compare:arrivalDate];

          if (v21 == 1)
          {
            v29 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
            {
              [TAVisitState ingestTAEvent:v29 store:? appendOutgoingRequestsTo:?];
            }

            [v17 addUTAdvertisement:eventCopy];
            goto LABEL_21;
          }
        }

        v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v51 objects:v61 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    self = selfCopy;
    storeCopy = v50;
    toCopy = v48;
    if ([(TACircularBuffer *)selfCopy->_interVisitMetricSnapshotBuffer count])
    {
      lastObject = [(TACircularBuffer *)selfCopy->_interVisitMetricSnapshotBuffer lastObject];
      isClosed = [lastObject isClosed];

      if ((isClosed & 1) == 0)
      {
        scanRequest = selfCopy->_scanRequest;
        deviceRecord = [v50 deviceRecord];
        clock = [v50 clock];
        [(TAScanRequest *)scanRequest scheduleInterVisitScanForAdvertisement:eventCopy deviceRecord:deviceRecord clock:clock];

LABEL_24:
      }
    }
  }

  else
  {
    if ([eventCopy isMemberOfClass:objc_opt_class()])
    {
      if (![(TACircularBuffer *)self->_visitSnapshotBuffer count])
      {
        goto LABEL_27;
      }

      deviceRecord = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
      if (([deviceRecord isClosed] & 1) == 0)
      {
        getDate2 = [eventCopy getDate];
        latestLocation = [deviceRecord latestLocation];
        [latestLocation getDate];
        v26 = v25 = toCopy;
        v27 = [getDate2 compare:v26];

        toCopy = v25;
        if (v27 == 1)
        {
          v28 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
          {
            [TAVisitState ingestTAEvent:v28 store:? appendOutgoingRequestsTo:?];
          }

          [deviceRecord updateLatestLocation:eventCopy];
        }
      }

      goto LABEL_24;
    }

    if ([eventCopy isMemberOfClass:objc_opt_class()])
    {
      clock2 = [storeCopy clock];
      [(TAVisitState *)self updateImportantLOIs:eventCopy currentDate:clock2];
    }

    else if ([eventCopy isMemberOfClass:objc_opt_class()])
    {
      if ([eventCopy isTemporalOrderSensical])
      {
        v38 = [(TAVisitState *)self stateTransitionDecisionGivenTACLVisit:eventCopy];
        self->_lastStateTransition = v38;
        [(TAVisitState *)self performStateTransitionDecision:v38 store:storeCopy visit:eventCopy andAppendOutgoingRequestsTo:toCopy];
      }

      else
      {
        v40 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
        {
          [TAVisitState ingestTAEvent:v40 store:? appendOutgoingRequestsTo:?];
        }
      }
    }

    else if ([eventCopy isMemberOfClass:objc_opt_class()])
    {
      if ([eventCopy systemStateType] == 2)
      {
        lastObject2 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        deviceRecord = lastObject2;
        if (lastObject2)
        {
          [lastObject2 addSystemState:eventCopy];
        }

        goto LABEL_24;
      }
    }

    else if ([eventCopy isMemberOfClass:objc_opt_class()])
    {
      if ([(TACircularBuffer *)self->_visitSnapshotBuffer count])
      {
        deviceRecord = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        if (([deviceRecord isClosed] & 1) == 0)
        {
          getDate3 = [eventCopy getDate];
          representativeVisit2 = [deviceRecord representativeVisit];
          [representativeVisit2 arrivalDate];
          v44 = v43 = toCopy;
          v45 = [getDate3 compare:v44];

          toCopy = v43;
          if (v45 == 1)
          {
            v46 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
            {
              [TAVisitState ingestTAEvent:v46 store:? appendOutgoingRequestsTo:?];
            }

            [deviceRecord addScanState:eventCopy];
          }
        }

        goto LABEL_24;
      }
    }

    else if ([eventCopy isMemberOfClass:objc_opt_class()])
    {
      v47 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        v56 = 0;
        v57 = 2082;
        v58 = "";
        v59 = 2117;
        v60 = eventCopy;
        _os_log_impl(&dword_26F2E2000, v47, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAVisitState adding PLOI, PLOI:%{sensitive}@}", buf, 0x1Cu);
      }

      [(NSMutableArray *)self->_nextPredictedLOIs addObject:eventCopy];
    }
  }

LABEL_27:
  v35 = self->_scanRequest;
  clock3 = [storeCopy clock];
  v37 = [(TAScanRequest *)v35 evictScheduledInterVisitScanWithClock:clock3];

  if (v37)
  {
    [toCopy addObject:v37];
  }

  [(TAVisitState *)self updateInterVisitSnapshotWithStore:storeCopy];
  [(TAVisitState *)self updateInterVisitBackupSnapshotWithStore:storeCopy];
}

- (void)purgeWithClock:(id)clock
{
  clockCopy = clock;
  [(TAVisitState *)self purgeVisitSnapshotBufferWithCurrentDate:clockCopy];
  [(TAVisitState *)self purgeInterVisitSnapshotBufferWithCurrentDate:clockCopy];
}

- (BOOL)setState:(unint64_t)state
{
  v15 = *MEMORY[0x277D85DE8];
  state = self->_state;
  self->_state = state;
  v5 = TAStatusLog;
  if (state == state)
  {
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [TAVisitState setState:];
    }
  }

  else
  {
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v5;
      v8 = [TAVisitState visitStateTypeToString:state];
      v9 = [TAVisitState visitStateTypeToString:self->_state];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_26F2E2000, v7, OS_LOG_TYPE_DEFAULT, "#TAVisitState changing state from %@ to %@", &v11, 0x16u);
    }

    [(NSMutableArray *)self->_nextPredictedLOIs removeAllObjects];
    [(TAVisitState *)self notifyObserversOfStateChangeFromState:state toState:self->_state];
  }

  return state != state;
}

- (unint64_t)stateTransitionDecisionGivenTACLVisit:(id)visit
{
  visitCopy = visit;
  v5 = visitCopy;
  state = self->_state;
  if (state != 2)
  {
    if (state == 1)
    {
      if ([(TACircularBuffer *)self->_visitSnapshotBuffer count])
      {
        lastObject = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        isClosed = [lastObject isClosed];

        if (isClosed)
        {
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
          {
            [TAVisitState stateTransitionDecisionGivenTACLVisit:];
          }
        }

        else if ([v5 isTemporalOrderSensical])
        {
          if ([v5 hasDepartureDate])
          {
            v7 = 1;
            goto LABEL_41;
          }

          v19 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
          {
            [TAVisitState stateTransitionDecisionGivenTACLVisit:v19];
          }
        }

        else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
        {
          [TAVisitState stateTransitionDecisionGivenTACLVisit:];
        }
      }

      else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
      {
        [TAVisitState stateTransitionDecisionGivenTACLVisit:];
      }
    }

    else
    {
      if (state)
      {
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
        {
          [TAVisitState stateTransitionDecisionGivenTACLVisit:];
        }

        goto LABEL_40;
      }

      if ([visitCopy hasArrivalDate] && (objc_msgSend(v5, "hasDepartureDate") & 1) != 0)
      {
        v7 = 4;
        goto LABEL_41;
      }

      if ([v5 hasArrivalDate])
      {
        v7 = 3;
        goto LABEL_41;
      }

      v18 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    goto LABEL_40;
  }

  bufferCopy = [(TACircularBuffer *)self->_visitSnapshotBuffer bufferCopy];
  if ([bufferCopy count])
  {
    bufferCopy2 = [(TACircularBuffer *)self->_visitSnapshotBuffer bufferCopy];
    lastObject2 = [bufferCopy2 lastObject];
    representativeVisit = [lastObject2 representativeVisit];
    arrivalDate = [representativeVisit arrivalDate];
    arrivalDate2 = [v5 arrivalDate];
    v16 = [arrivalDate compare:arrivalDate2];

    if (v16 == 1)
    {
      v17 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        [TAVisitState stateTransitionDecisionGivenTACLVisit:v17];
      }

      goto LABEL_40;
    }
  }

  else
  {
  }

  if (![v5 hasArrivalDate] || !objc_msgSend(v5, "hasDepartureDate"))
  {
    if ([v5 hasArrivalDate])
    {
      v7 = 2;
      goto LABEL_41;
    }

    v18 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
LABEL_30:
      [TAVisitState stateTransitionDecisionGivenTACLVisit:v18];
    }

LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TAVisitState stateTransitionDecisionGivenTACLVisit:];
  }

  v7 = 5;
LABEL_41:

  return v7;
}

- (void)performStateTransitionDecision:(unint64_t)decision store:(id)store visit:(id)visit andAppendOutgoingRequestsTo:(id)to
{
  v67 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  visitCopy = visit;
  toCopy = to;
  if (decision > 2)
  {
    if (decision == 3)
    {
      [(TAVisitState *)self openVisitSnapshotWithStore:storeCopy visit:visitCopy andAppendOutgoingRequestsTo:toCopy];
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      allValues = [(NSMutableDictionary *)self->_importantLois allValues];
      v29 = [allValues countByEnumeratingWithState:&v55 objects:v65 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v56;
        do
        {
          v32 = 0;
          do
          {
            if (*v56 != v31)
            {
              objc_enumerationMutation(allValues);
            }

            bufferCopy = [*(*(&v55 + 1) + 8 * v32) bufferCopy];
            [(TAVisitState *)self labelLoiTypeForLastVisitSnapshot:bufferCopy];

            ++v32;
          }

          while (v30 != v32);
          v30 = [allValues countByEnumeratingWithState:&v55 objects:v65 count:16];
        }

        while (v30);
      }

      lastObject = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
      clock = [storeCopy clock];
      [(TAVisitState *)self issueVisitEntryScanRequestIfNecessaryWithOpenSnapshot:lastObject clock:clock andAppendOutgoingRequestsTo:toCopy];

      goto LABEL_35;
    }

    if (decision == 4)
    {
      if ([(TAVisitState *)self shouldCreateNewVisitSnapshotFromUnknownState:visitCopy])
      {
        [(TAVisitState *)self openVisitSnapshotWithStore:storeCopy visit:visitCopy andAppendOutgoingRequestsTo:toCopy];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        allValues2 = [(NSMutableDictionary *)self->_importantLois allValues];
        v40 = [allValues2 countByEnumeratingWithState:&v51 objects:v64 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v52;
          do
          {
            v43 = 0;
            do
            {
              if (*v52 != v42)
              {
                objc_enumerationMutation(allValues2);
              }

              bufferCopy2 = [*(*(&v51 + 1) + 8 * v43) bufferCopy];
              [(TAVisitState *)self labelLoiTypeForLastVisitSnapshot:bufferCopy2];

              ++v43;
            }

            while (v41 != v43);
            v41 = [allValues2 countByEnumeratingWithState:&v51 objects:v64 count:16];
          }

          while (v41);
        }

        [(TAVisitState *)self closeVisitSnapshotWithStore:storeCopy visit:visitCopy];
      }

      [(TAVisitState *)self openInterVisitSnapshotWithStore:storeCopy departureVisit:visitCopy];
      lastObject2 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];

      if (lastObject2)
      {
        lastObject3 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        [(TAVisitState *)self issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:lastObject3 store:storeCopy andAppendOutgoingRequestsTo:toCopy];
      }

      goto LABEL_51;
    }

    if (decision != 5)
    {
LABEL_36:
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
      {
        [TAVisitState performStateTransitionDecision:store:visit:andAppendOutgoingRequestsTo:];
      }

      goto LABEL_53;
    }

    [(TAVisitState *)self closeLatestInterVisitSnapshotWithStore:storeCopy arrivalVisit:visitCopy];
    [(TAVisitState *)self notifyObserversOfMetricsHint:1];
    [(TAVisitState *)self openVisitSnapshotWithStore:storeCopy visit:visitCopy andAppendOutgoingRequestsTo:toCopy];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    allValues3 = [(NSMutableDictionary *)self->_importantLois allValues];
    v22 = [allValues3 countByEnumeratingWithState:&v47 objects:v63 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v48;
      do
      {
        v25 = 0;
        do
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(allValues3);
          }

          bufferCopy3 = [*(*(&v47 + 1) + 8 * v25) bufferCopy];
          [(TAVisitState *)self labelLoiTypeForLastVisitSnapshot:bufferCopy3];

          ++v25;
        }

        while (v23 != v25);
        v23 = [allValues3 countByEnumeratingWithState:&v47 objects:v63 count:16];
      }

      while (v23);
    }

    [(TAVisitState *)self openInterVisitBackupSnapshotWithArrivalVisit:visitCopy];
    [(TAVisitState *)self closeVisitSnapshotWithStore:storeCopy visit:visitCopy];
    if ([(TAVisitState *)self evaluateLatestVisitSnapshotAndRecoverIfNecessaryWithStore:storeCopy andAppendOutgoingRequestsTo:toCopy]== 1)
    {
      [(TAVisitState *)self openInterVisitSnapshotWithStore:storeCopy departureVisit:visitCopy];
      lastObject4 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
      [(TAVisitState *)self issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:lastObject4 store:storeCopy andAppendOutgoingRequestsTo:toCopy];

      [(TAVisitState *)self notifyObserversOfMetricsHint:0];
      [(TAVisitState *)self notifyObserversOfMetricsHint:2];
    }
  }

  else
  {
    if (decision)
    {
      if (decision != 1)
      {
        if (decision == 2)
        {
          [(TAVisitState *)self openVisitSnapshotWithStore:storeCopy visit:visitCopy andAppendOutgoingRequestsTo:toCopy];
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          allValues4 = [(NSMutableDictionary *)self->_importantLois allValues];
          v14 = [allValues4 countByEnumeratingWithState:&v59 objects:v66 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v60;
            do
            {
              v17 = 0;
              do
              {
                if (*v60 != v16)
                {
                  objc_enumerationMutation(allValues4);
                }

                bufferCopy4 = [*(*(&v59 + 1) + 8 * v17) bufferCopy];
                [(TAVisitState *)self labelLoiTypeForLastVisitSnapshot:bufferCopy4];

                ++v17;
              }

              while (v15 != v17);
              v15 = [allValues4 countByEnumeratingWithState:&v59 objects:v66 count:16];
            }

            while (v15);
          }

          lastObject5 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
          clock2 = [storeCopy clock];
          [(TAVisitState *)self issueVisitEntryScanRequestIfNecessaryWithOpenSnapshot:lastObject5 clock:clock2 andAppendOutgoingRequestsTo:toCopy];

          [(TAVisitState *)self closeLatestInterVisitSnapshotWithStore:storeCopy arrivalVisit:visitCopy];
          [(TAVisitState *)self notifyObserversOfMetricsHint:1];
LABEL_35:
          [(TAVisitState *)self openInterVisitBackupSnapshotWithArrivalVisit:visitCopy];
          selfCopy2 = self;
          v37 = 1;
LABEL_52:
          [(TAVisitState *)selfCopy2 setState:v37];
          goto LABEL_53;
        }

        goto LABEL_36;
      }

      [(TAVisitState *)self closeVisitSnapshotWithStore:storeCopy visit:visitCopy];
      if ([(TAVisitState *)self evaluateLatestVisitSnapshotAndRecoverIfNecessaryWithStore:storeCopy andAppendOutgoingRequestsTo:toCopy]== 1)
      {
        [(TAVisitState *)self openInterVisitSnapshotWithStore:storeCopy departureVisit:visitCopy];
        lastObject6 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        [(TAVisitState *)self issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:lastObject6 store:storeCopy andAppendOutgoingRequestsTo:toCopy];

        [(TAVisitState *)self notifyObserversOfMetricsHint:0];
        [(TAVisitState *)self notifyObserversOfMetricsHint:2];
      }

LABEL_51:
      selfCopy2 = self;
      v37 = 2;
      goto LABEL_52;
    }

    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [TAVisitState performStateTransitionDecision:store:visit:andAppendOutgoingRequestsTo:];
    }
  }

LABEL_53:
}

- (void)openVisitSnapshotWithStore:(id)store visit:(id)visit andAppendOutgoingRequestsTo:(id)to
{
  v41 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  visitCopy = visit;
  toCopy = to;
  v10 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_DEFAULT, "#TAVisitState creating new snapshot", buf, 2u);
  }

  v11 = [[TAVisitSnapshot alloc] initWithTACLVisit:visitCopy uniqueUTBufferCap:[(TAVisitStateSettings *)self->_settings uniqueUTObservationCapPerVisit] displayEventBufferSizeCap:[(TAVisitStateSettings *)self->_settings visitDisplayBufferCapacity] maxNSigmaBetweenLastLocationAndVisit:[(TAVisitStateSettings *)self->_settings maxNSigmaBetweenLastLocationAndVisit]];
  v12 = MEMORY[0x277CCA970];
  arrivalDate = [visitCopy arrivalDate];
  departureDate = [visitCopy departureDate];
  v15 = [v12 createIntervalSafelyWithStartDate:arrivalDate endDate:departureDate];

  eventBuffer = [storeCopy eventBuffer];
  v17 = [eventBuffer getAllTAEventsOf:objc_opt_class() between:v15];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      v22 = 0;
      do
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(TAVisitSnapshot *)v11 addUTAdvertisement:*(*(&v34 + 1) + 8 * v22++)];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v20);
  }

  v23 = [(TAVisitState *)self getDisplayEventsWithFirstPrecedingInInterval:v15 store:storeCopy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      v27 = 0;
      do
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(TAVisitSnapshot *)v11 addSystemState:*(*(&v30 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v25);
  }

  v28 = [(TACircularBuffer *)self->_visitSnapshotBuffer add:v11];
}

- (void)closeVisitSnapshotWithStore:(id)store visit:(id)visit
{
  v35 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  if ([visitCopy hasDepartureDate])
  {
    lastObject = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];

    if (lastObject)
    {
      lastObject2 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
      isClosed = [lastObject2 isClosed];

      if (isClosed)
      {
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
        {
          [TAVisitState closeVisitSnapshotWithStore:visit:];
        }
      }

      else
      {
        lastObject3 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        v10 = [lastObject3 setDepartureVisit:visitCopy];

        if ((v10 & 1) == 0 && os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
        {
          [TAVisitState closeVisitSnapshotWithStore:visit:];
        }

        v27 = visitCopy;
        v11 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          visitSnapshotBuffer = self->_visitSnapshotBuffer;
          v13 = v11;
          lastObject4 = [(TACircularBuffer *)visitSnapshotBuffer lastObject];
          latestUtAdvertisements = [lastObject4 latestUtAdvertisements];
          *buf = 134349056;
          v34 = [latestUtAdvertisements count];
          _os_log_impl(&dword_26F2E2000, v13, OS_LOG_TYPE_DEFAULT, "#TAVisitState closing snapshot. Closed snapshot has %{public}lu objects.", buf, 0xCu);
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        lastObject5 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        latestUtAdvertisements2 = [lastObject5 latestUtAdvertisements];
        allKeys = [latestUtAdvertisements2 allKeys];

        v19 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v29;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v29 != v21)
              {
                objc_enumerationMutation(allKeys);
              }

              v23 = TAStatusLog;
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
              {
                v24 = *(*(&v28 + 1) + 8 * i);
                v25 = v23;
                hexString = [v24 hexString];
                *buf = 138477827;
                v34 = hexString;
                _os_log_impl(&dword_26F2E2000, v25, OS_LOG_TYPE_DEFAULT, "#TAVisitState keys in snapshot:%{private}@", buf, 0xCu);
              }
            }

            v20 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v20);
        }

        visitCopy = v27;
      }
    }

    else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      [TAVisitState closeVisitSnapshotWithStore:visit:];
    }
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
  {
    [TAVisitState closeVisitSnapshotWithStore:visit:];
  }
}

- (void)updateImportantLOIs:(id)is currentDate:(id)date
{
  isCopy = is;
  dateCopy = date;
  importantLois = self->_importantLois;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(isCopy, "type")}];
  v10 = [(NSMutableDictionary *)importantLois objectForKey:v9];

  if (!v10)
  {
    v10 = [[TACircularBuffer alloc] initWithCapacity:[(TAVisitStateSettings *)self->_settings loiBufferPerTypeCapacity]];
    v11 = self->_importantLois;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(isCopy, "type")}];
    [(NSMutableDictionary *)v11 setObject:v10 forKey:v12];
  }

  bufferCopy = [(TACircularBuffer *)v10 bufferCopy];
  v14 = [bufferCopy indexOfObject:isCopy inSortedRange:0 options:-[TACircularBuffer count](v10 usingComparator:{"count"), 1024, &__block_literal_global_3}];

  if (v14 >= [(TACircularBuffer *)v10 count])
  {
    v16 = [(TACircularBuffer *)v10 add:isCopy];
  }

  else
  {
    v15 = [(TACircularBuffer *)v10 insert:isCopy at:v14];
  }

  firstObject = [(TACircularBuffer *)v10 firstObject];
  getDate = [firstObject getDate];
  [dateCopy timeIntervalSinceDate:getDate];
  v20 = v19;
  [(TAVisitStateSettings *)self->_settings loiBufferTimeIntervalOfRetention];
  v22 = v21;

  if (v20 >= v22)
  {
    v23 = MEMORY[0x277CCAC30];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __48__TAVisitState_updateImportantLOIs_currentDate___block_invoke_2;
    v30 = &unk_279DD1E98;
    v31 = dateCopy;
    selfCopy = self;
    v24 = [v23 predicateWithBlock:&v27];
    v25 = [(TACircularBuffer *)v10 removeUntilFirstPredicateFail:v24, v27, v28, v29, v30];
  }

  bufferCopy2 = [(TACircularBuffer *)v10 bufferCopy];
  [(TAVisitState *)self labelLoiTypeForLastVisitSnapshot:bufferCopy2];
}

uint64_t __48__TAVisitState_updateImportantLOIs_currentDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 getDate];
  v6 = [v4 getDate];

  v7 = [v5 compare:v6];
  return v7;
}

BOOL __48__TAVisitState_updateImportantLOIs_currentDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 getDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;
  [*(*(a1 + 40) + 56) loiBufferTimeIntervalOfRetention];
  v8 = v6 > v7;

  return v8;
}

- (void)labelLoiTypeForLastVisitSnapshot:(id)snapshot
{
  v17 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  if ([(TACircularBuffer *)self->_visitSnapshotBuffer count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = snapshotCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          lastObject = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
          [lastObject updateLoiType:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)issueVisitEntryScanRequestIfNecessaryWithOpenSnapshot:(id)snapshot clock:(id)clock andAppendOutgoingRequestsTo:(id)to
{
  toCopy = to;
  v8 = [(TAScanRequest *)self->_scanRequest evaluateVisitEntry:snapshot clock:clock];
  if (v8)
  {
    [toCopy addObject:v8];
  }
}

- (void)issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:(id)snapshot store:(id)store andAppendOutgoingRequestsTo:(id)to
{
  snapshotCopy = snapshot;
  storeCopy = store;
  toCopy = to;
  if ([snapshotCopy isClosed])
  {
    representativeVisit = [snapshotCopy representativeVisit];
    departureDate = [representativeVisit departureDate];

    clock = [storeCopy clock];
    v14 = [clock compare:departureDate];

    if (v14 == -1)
    {
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        [TAVisitState issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:store:andAppendOutgoingRequestsTo:];
      }
    }

    else
    {
      v15 = MEMORY[0x277CCA970];
      clock2 = [storeCopy clock];
      v26 = departureDate;
      v17 = [v15 createIntervalSafelyWithStartDate:departureDate endDate:clock2];

      scanRequest = self->_scanRequest;
      v19 = [(TAVisitState *)self getDisplayEventsWithFirstPrecedingInInterval:v17 store:storeCopy];
      eventBuffer = [storeCopy eventBuffer];
      v21 = [eventBuffer getAllTAEventsOf:objc_opt_class() between:v17];
      deviceRecord = [storeCopy deviceRecord];
      [storeCopy clock];
      v24 = v23 = toCopy;
      v25 = [(TAScanRequest *)scanRequest evaluateInterVisitAfterVisitExit:snapshotCopy displayEvents:v19 advertisements:v21 deviceRecord:deviceRecord clock:v24];

      toCopy = v23;
      if (v25)
      {
        [v23 addObject:v25];
      }

      departureDate = v26;
    }
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
  {
    [TAVisitState issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:store:andAppendOutgoingRequestsTo:];
  }
}

- (void)openInterVisitSnapshotWithStore:(id)store departureVisit:(id)visit
{
  visitCopy = visit;
  storeCopy = store;
  departureDate = [visitCopy departureDate];
  v8 = MEMORY[0x277CCA970];
  departureDate2 = [visitCopy departureDate];
  detectionDate = [visitCopy detectionDate];

  v11 = [v8 createIntervalSafelyWithStartDate:departureDate2 endDate:detectionDate];

  v12 = [[TAInterVisitMetricsSnapshot alloc] initWithTime:departureDate maxUniqueAddresses:[(TAVisitStateSettings *)self->_settings uniqueUTObservationCapPerVisit]];
  [(TAVisitStateSettings *)self->_settings thresholdOfLocationRelevance];
  v13 = [TAFilterGeneral filteredInterVisitMetadataWithVisitAdjustment:storeCopy inInterval:v11 withLocRelevanceThreshold:?];
  endDate = [v11 endDate];
  [(TAInterVisitMetricsSnapshot *)v12 updateInterVisitMetric:v13 store:storeCopy withUpdatedTime:endDate andCloseSnapshot:0];

  v15 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer add:v12];
}

- (void)closeLatestInterVisitSnapshotWithStore:(id)store arrivalVisit:(id)visit
{
  storeCopy = store;
  visitCopy = visit;
  if ([(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer count])
  {
    lastObject = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer lastObject];
    isClosed = [lastObject isClosed];

    if ((isClosed & 1) == 0)
    {
      lastObject2 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer lastObject];
      lastUpdateTime = [lastObject2 lastUpdateTime];
      arrivalDate = [visitCopy arrivalDate];
      v12 = [lastUpdateTime laterDate:arrivalDate];

      v13 = MEMORY[0x277CCA970];
      lastUpdateTime2 = [lastObject2 lastUpdateTime];
      v15 = [v13 createIntervalSafelyWithStartDate:lastUpdateTime2 endDate:v12];

      [(TAVisitStateSettings *)self->_settings thresholdOfLocationRelevance];
      v16 = [TAFilterGeneral filteredInterVisitMetadataWithVisitAdjustment:storeCopy inInterval:v15 withLocRelevanceThreshold:?];
      [lastObject2 updateInterVisitMetric:v16 store:storeCopy withUpdatedTime:v12 andCloseSnapshot:1];

      [lastObject2 visitEntryDelayCorrection:visitCopy store:storeCopy];
    }
  }
}

- (void)updateInterVisitSnapshotWithStore:(id)store
{
  storeCopy = store;
  if (self->_state == 2)
  {
    if (-[TACircularBuffer count](self->_interVisitMetricSnapshotBuffer, "count") && (-[TACircularBuffer lastObject](self->_interVisitMetricSnapshotBuffer, "lastObject"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isClosed], v5, !v6))
    {
      lastObject = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer lastObject];
      [(TAVisitState *)self updateInterVisitSnapshot:lastObject store:storeCopy];
    }

    else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [TAVisitState updateInterVisitSnapshotWithStore:];
    }
  }
}

- (void)openInterVisitBackupSnapshotWithArrivalVisit:(id)visit
{
  arrivalDate = [visit arrivalDate];
  v4 = [[TAInterVisitMetricsSnapshot alloc] initWithTime:arrivalDate maxUniqueAddresses:[(TAVisitStateSettings *)self->_settings uniqueUTObservationCapPerVisit]];
  interVisitMetricsSnapshotBackup = self->_interVisitMetricsSnapshotBackup;
  self->_interVisitMetricsSnapshotBackup = v4;
}

- (void)resetInterVisitBackupSnapshot
{
  interVisitMetricsSnapshotBackup = self->_interVisitMetricsSnapshotBackup;
  self->_interVisitMetricsSnapshotBackup = 0;
  MEMORY[0x2821F96F8](self, interVisitMetricsSnapshotBackup);
}

- (void)updateInterVisitBackupSnapshotWithStore:(id)store
{
  storeCopy = store;
  if (self->_state == 1)
  {
    interVisitMetricsSnapshotBackup = self->_interVisitMetricsSnapshotBackup;
    if (interVisitMetricsSnapshotBackup && ![(TAInterVisitMetricsSnapshot *)interVisitMetricsSnapshotBackup isClosed])
    {
      [(TAVisitState *)self updateInterVisitSnapshot:self->_interVisitMetricsSnapshotBackup store:storeCopy];
    }

    else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      [TAVisitState updateInterVisitBackupSnapshotWithStore:];
    }
  }
}

- (unint64_t)evaluateLatestVisitSnapshotAndRecoverIfNecessaryWithStore:(id)store andAppendOutgoingRequestsTo:(id)to
{
  *&v26[5] = *MEMORY[0x277D85DE8];
  storeCopy = store;
  toCopy = to;
  if ([(TACircularBuffer *)self->_visitSnapshotBuffer count])
  {
    lastObject = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
    isClosed = [lastObject isClosed];

    if (isClosed)
    {
      lastObject2 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
      [(TAVisitStateSettings *)self->_settings qualitySnapshotDwellDuration];
      v12 = v11;
      [(TAVisitStateSettings *)self->_settings qualitySnapshotDisplayOnDuration];
      v14 = [lastObject2 evaluateSnapshotQualityWithMinDwellDuration:v12 minDisplayOnDuration:v13];
      v15 = TAStatusLog;
      if (v14 == 1)
      {
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&dword_26F2E2000, v15, OS_LOG_TYPE_DEFAULT, "#TAVisitState Visit snapshot quality is good.", &v25, 2u);
        }

        goto LABEL_24;
      }

      if (v14 != 2)
      {
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
        {
          [TAVisitState evaluateLatestVisitSnapshotAndRecoverIfNecessaryWithStore:andAppendOutgoingRequestsTo:];
        }

        goto LABEL_24;
      }

      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        representativeVisit = [lastObject2 representativeVisit];
        v18 = [representativeVisit description];
        v25 = 138739971;
        *v26 = v18;
        _os_log_impl(&dword_26F2E2000, v16, OS_LOG_TYPE_DEFAULT, "#TAVisitState Visit snapshot quality is bad. Performing operations to remove bad visit: %{sensitive}@", &v25, 0xCu);
      }

      lastObject3 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer lastObject];

      if (lastObject3)
      {
        lastObject4 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer lastObject];
        [lastObject4 updateWithInterVisitMetricsSnapshot:self->_interVisitMetricsSnapshotBackup store:storeCopy];
      }

      else
      {
        if (!self->_interVisitMetricsSnapshotBackup)
        {
LABEL_23:
          removeLastObject = [(TACircularBuffer *)self->_visitSnapshotBuffer removeLastObject];
LABEL_24:
          [(TAVisitState *)self resetInterVisitBackupSnapshot];

          goto LABEL_25;
        }

        v21 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 68289026;
          v26[0] = 0;
          LOWORD(v26[1]) = 2082;
          *(&v26[1] + 2) = "";
          _os_log_impl(&dword_26F2E2000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAVisitState using intervisit backup for first intervisit snapshot}", &v25, 0x12u);
        }

        v22 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer add:self->_interVisitMetricsSnapshotBackup];
        lastObject4 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        [(TAVisitState *)self issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:lastObject4 store:storeCopy andAppendOutgoingRequestsTo:toCopy];
      }

      goto LABEL_23;
    }

    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      [TAVisitState evaluateLatestVisitSnapshotAndRecoverIfNecessaryWithStore:andAppendOutgoingRequestsTo:];
    }
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
  {
    [TAVisitState evaluateLatestVisitSnapshotAndRecoverIfNecessaryWithStore:andAppendOutgoingRequestsTo:];
  }

  v14 = 0;
LABEL_25:

  return v14;
}

- (id)getDisplayEventsWithFirstPrecedingInInterval:(id)interval store:(id)store
{
  storeCopy = store;
  intervalCopy = interval;
  eventBuffer = [storeCopy eventBuffer];
  v8 = [eventBuffer getAllTAEventsOf:objc_opt_class() andEventSubtype:2 between:intervalCopy];

  v9 = MEMORY[0x277CCA970];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  startDate = [intervalCopy startDate];

  v12 = [v9 createIntervalSafelyWithStartDate:distantPast endDate:startDate];

  eventBuffer2 = [storeCopy eventBuffer];

  v14 = [eventBuffer2 getAllTAEventsOf:objc_opt_class() andEventSubtype:2 between:v12];

  if (![v14 count] || objc_msgSend(v14, "count") && objc_msgSend(v8, "count") && (objc_msgSend(v14, "lastObject"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "firstObject"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqual:", v16), v16, v15, v17))
  {
    v18 = v8;
  }

  else
  {
    v19 = MEMORY[0x277CBEB18];
    lastObject = [v14 lastObject];
    v18 = [v19 arrayWithObject:lastObject];

    [v18 addObjectsFromArray:v8];
  }

  return v18;
}

- (void)updateInterVisitSnapshot:(id)snapshot store:(id)store
{
  v26 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  storeCopy = store;
  v8 = objc_alloc(MEMORY[0x277CBEAA8]);
  [(TAVisitStateSettings *)self->_settings interVisitSnapshotUpdateInterval];
  v10 = v9;
  lastUpdateTime = [snapshotCopy lastUpdateTime];
  v12 = [v8 initWithTimeInterval:lastUpdateTime sinceDate:v10];

  clock = [storeCopy clock];
  v14 = [v12 compare:clock];

  if (v14 == -1)
  {
    v15 = MEMORY[0x277CCA970];
    lastUpdateTime2 = [snapshotCopy lastUpdateTime];
    clock2 = [storeCopy clock];
    v18 = [v15 createIntervalSafelyWithStartDate:lastUpdateTime2 endDate:clock2];

    [(TAVisitStateSettings *)self->_settings thresholdOfLocationRelevance];
    v19 = [TAFilterGeneral filteredInterVisitMetadataWithVisitAdjustment:storeCopy inInterval:v18 withLocRelevanceThreshold:?];
    endDate = [v18 endDate];
    [snapshotCopy updateInterVisitMetric:v19 store:storeCopy withUpdatedTime:endDate andCloseSnapshot:0];

    v21 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      accumulatedDeviceMetrics = [snapshotCopy accumulatedDeviceMetrics];
      v24 = 134283521;
      v25 = [accumulatedDeviceMetrics count];
      _os_log_impl(&dword_26F2E2000, v22, OS_LOG_TYPE_DEFAULT, "#TAVisitState inter-visit snapshot updated; tracking %{private}lu devices", &v24, 0xCu);
    }
  }
}

- (void)purgeVisitSnapshotBufferWithCurrentDate:(id)date
{
  dateCopy = date;
  if ([(TACircularBuffer *)self->_visitSnapshotBuffer count])
  {
    firstObject = [(TACircularBuffer *)self->_visitSnapshotBuffer firstObject];
    if ([firstObject isClosed])
    {
      firstObject2 = [(TACircularBuffer *)self->_visitSnapshotBuffer firstObject];
      representativeVisit = [firstObject2 representativeVisit];
      departureDate = [representativeVisit departureDate];
      [dateCopy timeIntervalSinceDate:departureDate];
      v10 = v9;
      [(TAVisitStateSettings *)self->_settings snapshotBufferTimeIntervalOfRetention];
      v12 = v11;

      if (v10 >= v12)
      {
        v13 = MEMORY[0x277CCAC30];
        v16 = MEMORY[0x277D85DD0];
        v17 = 3221225472;
        v18 = __56__TAVisitState_purgeVisitSnapshotBufferWithCurrentDate___block_invoke;
        v19 = &unk_279DD1E98;
        v20 = dateCopy;
        selfCopy = self;
        v14 = [v13 predicateWithBlock:&v16];
        v15 = [(TACircularBuffer *)self->_visitSnapshotBuffer removeUntilFirstPredicateFail:v14, v16, v17, v18, v19];
      }
    }

    else
    {
    }
  }
}

BOOL __56__TAVisitState_purgeVisitSnapshotBufferWithCurrentDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = v3;
    if ([v4 isClosed])
    {
      v5 = *(a1 + 32);
      v6 = [v4 representativeVisit];
      v7 = [v6 departureDate];
      [v5 timeIntervalSinceDate:v7];
      v9 = v8;
      [*(*(a1 + 40) + 56) snapshotBufferTimeIntervalOfRetention];
      v11 = v9 > v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      __56__TAVisitState_purgeVisitSnapshotBufferWithCurrentDate___block_invoke_cold_1(v12);
    }

    v11 = 1;
  }

  return v11;
}

- (void)purgeInterVisitSnapshotBufferWithCurrentDate:(id)date
{
  dateCopy = date;
  if ([(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer count])
  {
    firstObject = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer firstObject];
    if ([firstObject isClosed])
    {
      firstObject2 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer firstObject];
      lastUpdateTime = [firstObject2 lastUpdateTime];
      [dateCopy timeIntervalSinceDate:lastUpdateTime];
      v9 = v8;
      [(TAVisitStateSettings *)self->_settings snapshotBufferTimeIntervalOfRetention];
      v11 = v10;

      if (v9 >= v11)
      {
        v12 = MEMORY[0x277CCAC30];
        v15 = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __61__TAVisitState_purgeInterVisitSnapshotBufferWithCurrentDate___block_invoke;
        v18 = &unk_279DD1E98;
        v19 = dateCopy;
        selfCopy = self;
        v13 = [v12 predicateWithBlock:&v15];
        v14 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer removeUntilFirstPredicateFail:v13, v15, v16, v17, v18];
      }
    }

    else
    {
    }
  }
}

BOOL __61__TAVisitState_purgeInterVisitSnapshotBufferWithCurrentDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = v3;
    if ([v4 isClosed])
    {
      v5 = *(a1 + 32);
      v6 = [v4 lastUpdateTime];
      [v5 timeIntervalSinceDate:v6];
      v8 = v7;
      [*(*(a1 + 40) + 56) snapshotBufferTimeIntervalOfRetention];
      v10 = v8 > v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      __61__TAVisitState_purgeInterVisitSnapshotBufferWithCurrentDate___block_invoke_cold_1(v11);
    }

    v10 = 1;
  }

  return v10;
}

- (id)getLatestValidVisitArrivalDate
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  bufferCopy = [(TACircularBuffer *)self->_visitSnapshotBuffer bufferCopy];
  reverseObjectEnumerator = [bufferCopy reverseObjectEnumerator];

  arrivalDate = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (arrivalDate)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != arrivalDate; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isClosed])
        {
          representativeVisit = [v7 representativeVisit];
          arrivalDate = [representativeVisit arrivalDate];

          goto LABEL_11;
        }
      }

      arrivalDate = [reverseObjectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (arrivalDate)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return arrivalDate;
}

- (id)getLatestValidVisit
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  bufferCopy = [(TACircularBuffer *)self->_visitSnapshotBuffer bufferCopy];
  reverseObjectEnumerator = [bufferCopy reverseObjectEnumerator];

  if ([reverseObjectEnumerator countByEnumeratingWithState:v6 objects:v7 count:16])
  {
    representativeVisit = [**(&v6[0] + 1) representativeVisit];
  }

  else
  {
    representativeVisit = 0;
  }

  return representativeVisit;
}

- (void)mergeWithAnotherTAVisitState:(id)state
{
  v82 = *MEMORY[0x277D85DE8];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  stateCopy = state;
  visitSnapshotBuffer = [stateCopy visitSnapshotBuffer];
  bufferCopy = [visitSnapshotBuffer bufferCopy];
  reverseObjectEnumerator = [bufferCopy reverseObjectEnumerator];

  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v60 objects:v81 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v61;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v61 != v10)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v12 = *(*(&v60 + 1) + 8 * i);
        if ([v12 isClosed])
        {
          v13 = [(TACircularBuffer *)self->_visitSnapshotBuffer insert:v12 at:0];
          ++v9;
        }
      }

      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v60 objects:v81 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  interVisitMetricSnapshotBuffer = [stateCopy interVisitMetricSnapshotBuffer];
  bufferCopy2 = [interVisitMetricSnapshotBuffer bufferCopy];
  reverseObjectEnumerator2 = [bufferCopy2 reverseObjectEnumerator];

  v17 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v56 objects:v80 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v57;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v57 != v20)
        {
          objc_enumerationMutation(reverseObjectEnumerator2);
        }

        v22 = *(*(&v56 + 1) + 8 * j);
        if ([v22 isClosed])
        {
          v23 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer insert:v22 at:0];
          ++v19;
        }
      }

      v18 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v56 objects:v80 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v43 = v19;
  v44 = v9;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [stateCopy importantLois];
  v24 = [obj countByEnumeratingWithState:&v52 objects:v79 count:16];
  if (v24)
  {
    v25 = v24;
    v46 = *v53;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v53 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v52 + 1) + 8 * k);
        importantLois = [stateCopy importantLois];
        v29 = [importantLois objectForKeyedSubscript:v27];

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        bufferCopy3 = [v29 bufferCopy];
        v31 = [bufferCopy3 countByEnumeratingWithState:&v48 objects:v78 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v49;
          do
          {
            for (m = 0; m != v32; ++m)
            {
              if (*v49 != v33)
              {
                objc_enumerationMutation(bufferCopy3);
              }

              v35 = *(*(&v48 + 1) + 8 * m);
              getDate = [v35 getDate];
              [(TAVisitState *)self updateImportantLOIs:v35 currentDate:getDate];
            }

            v32 = [bufferCopy3 countByEnumeratingWithState:&v48 objects:v78 count:16];
          }

          while (v32);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v52 objects:v79 count:16];
    }

    while (v25);
  }

  v37 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    visitSnapshotBuffer = self->_visitSnapshotBuffer;
    v39 = v37;
    v40 = [(TACircularBuffer *)visitSnapshotBuffer count];
    v41 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer count];
    importantLois2 = [(TAVisitState *)self importantLois];
    *buf = 68290307;
    v65 = 0;
    v66 = 2082;
    v67 = "";
    v68 = 2049;
    v69 = v44;
    v70 = 2049;
    v71 = v43;
    v72 = 2049;
    v73 = v40;
    v74 = 2049;
    v75 = v41;
    v76 = 2117;
    v77 = importantLois2;
    _os_log_impl(&dword_26F2E2000, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAVisitState merging with other TAVisitState, numVisitSnapshotsAttemptedToAdd:%{private}llu, numInterVisitSnapshotsAttemptedToAdded:%{private}llu, self.numVisitSnapshot:%{private}lu, self.numInterVisitSnapshot:%{private}lu, self.importantLois:%{sensitive}@}", buf, 0x44u);
  }
}

- (BOOL)shouldCreateNewVisitSnapshotFromUnknownState:(id)state
{
  v23 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ([stateCopy isTemporalOrderSensical] && objc_msgSend(stateCopy, "hasDepartureDate"))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    visitSnapshotBuffer = [(TAVisitState *)self visitSnapshotBuffer];
    bufferCopy = [visitSnapshotBuffer bufferCopy];
    reverseObjectEnumerator = [bufferCopy reverseObjectEnumerator];

    v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          representativeVisit = [*(*(&v18 + 1) + 8 * i) representativeVisit];
          dateInterval = [representativeVisit dateInterval];
          dateInterval2 = [stateCopy dateInterval];
          v15 = [dateInterval intersectsDateInterval:dateInterval2];

          if (v15)
          {
            v16 = 0;
            goto LABEL_14;
          }
        }

        v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v16 = 1;
LABEL_14:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)recoverInterVisitSnapshotWithArrivalVisit:(id)visit store:(id)store
{
  v29 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  storeCopy = store;
  eventBuffer = [storeCopy eventBuffer];
  getEarliestEventDate = [eventBuffer getEarliestEventDate];

  arrivalDate = [visitCopy arrivalDate];
  v11 = arrivalDate;
  if (getEarliestEventDate && arrivalDate && [arrivalDate compare:getEarliestEventDate] != -1)
  {
    v12 = [MEMORY[0x277CCA970] createIntervalSafelyWithStartDate:getEarliestEventDate endDate:v11];
    v13 = [TAInterVisitMetricsSnapshot alloc];
    startDate = [v12 startDate];
    v15 = [(TAInterVisitMetricsSnapshot *)v13 initWithTime:startDate maxUniqueAddresses:[(TAVisitStateSettings *)self->_settings uniqueUTObservationCapPerVisit]];

    [(TAVisitStateSettings *)self->_settings thresholdOfLocationRelevance];
    v16 = [TAFilterGeneral filteredInterVisitMetadataWithVisitAdjustment:storeCopy inInterval:v12 withLocRelevanceThreshold:?];
    endDate = [v12 endDate];
    [(TAInterVisitMetricsSnapshot *)v15 updateInterVisitMetric:v16 store:storeCopy withUpdatedTime:endDate andCloseSnapshot:1];

    v18 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer add:v15];
    v19 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2113;
      v26 = v12;
      v27 = 2117;
      v28 = visitCopy;
      _os_log_impl(&dword_26F2E2000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAVisitState recovered intervisit snapshot, interval:%{private}@, arrivalVisit:%{sensitive}@}", &v21, 0x26u);
    }
  }

  else
  {
    v20 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 68289026;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      _os_log_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAVisitState aborting intervisit snapshot recovery due unreasonable dates}", &v21, 0x12u);
    }
  }
}

- (id)description
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"StateType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v14[1] = @"State";
  v15[0] = v4;
  v5 = [TAVisitState visitStateTypeToString:self->_state];
  v15[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v13 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v6 error:&v13];
  v8 = v13;
  if (v8)
  {
    v9 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAVisitState *)v9 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v7;
  }

  v11 = string;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      state = [(TAVisitState *)self state];
      if (state != [(TAVisitState *)v6 state])
      {
        v11 = 0;
LABEL_41:

        goto LABEL_42;
      }

      visitSnapshotBuffer = [(TAVisitState *)self visitSnapshotBuffer];
      visitSnapshotBuffer2 = [(TAVisitState *)v6 visitSnapshotBuffer];
      if (visitSnapshotBuffer != visitSnapshotBuffer2)
      {
        visitSnapshotBuffer3 = [(TAVisitState *)self visitSnapshotBuffer];
        visitSnapshotBuffer4 = [(TAVisitState *)v6 visitSnapshotBuffer];
        v57 = visitSnapshotBuffer3;
        if (![visitSnapshotBuffer3 isEqual:?])
        {
          v11 = 0;
          goto LABEL_39;
        }
      }

      interVisitMetricSnapshotBuffer = [(TAVisitState *)self interVisitMetricSnapshotBuffer];
      interVisitMetricSnapshotBuffer2 = [(TAVisitState *)v6 interVisitMetricSnapshotBuffer];
      if (interVisitMetricSnapshotBuffer != interVisitMetricSnapshotBuffer2)
      {
        interVisitMetricSnapshotBuffer3 = [(TAVisitState *)self interVisitMetricSnapshotBuffer];
        interVisitMetricSnapshotBuffer4 = [(TAVisitState *)v6 interVisitMetricSnapshotBuffer];
        if (![interVisitMetricSnapshotBuffer3 isEqual:?])
        {
          v11 = 0;
LABEL_37:

LABEL_38:
          if (visitSnapshotBuffer == visitSnapshotBuffer2)
          {
LABEL_40:

            goto LABEL_41;
          }

LABEL_39:

          goto LABEL_40;
        }
      }

      importantLois = [(TAVisitState *)self importantLois];
      importantLois2 = [(TAVisitState *)v6 importantLois];
      v55 = importantLois;
      v16 = importantLois == importantLois2;
      v17 = importantLois2;
      if (v16)
      {
        v52 = importantLois2;
      }

      else
      {
        importantLois3 = [(TAVisitState *)self importantLois];
        importantLois4 = [(TAVisitState *)v6 importantLois];
        v49 = importantLois3;
        if (![importantLois3 isEqual:?])
        {
          v11 = 0;
          v25 = v17;
          v26 = v55;
LABEL_35:

LABEL_36:
          if (interVisitMetricSnapshotBuffer == interVisitMetricSnapshotBuffer2)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        v52 = v17;
      }

      settings = [(TAVisitState *)self settings];
      settings2 = [(TAVisitState *)v6 settings];
      v50 = settings;
      v51 = interVisitMetricSnapshotBuffer3;
      v16 = settings == settings2;
      v21 = settings2;
      if (!v16)
      {
        settings3 = [(TAVisitState *)self settings];
        settings4 = [(TAVisitState *)v6 settings];
        v43 = settings3;
        if (![settings3 isEqual:?])
        {
          v23 = v52;
          v11 = 0;
          v24 = v50;
LABEL_33:

LABEL_34:
          v26 = v55;
          v25 = v23;
          v16 = v55 == v23;
          interVisitMetricSnapshotBuffer3 = v51;
          if (v16)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }

      scanRequest = [(TAVisitState *)self scanRequest];
      scanRequest2 = [(TAVisitState *)v6 scanRequest];
      v46 = scanRequest;
      v47 = v21;
      v44 = interVisitMetricSnapshotBuffer2;
      if (scanRequest == scanRequest2)
      {
        v41 = interVisitMetricSnapshotBuffer;
        v30 = v52;
      }

      else
      {
        scanRequest3 = [(TAVisitState *)self scanRequest];
        scanRequest4 = [(TAVisitState *)v6 scanRequest];
        v40 = scanRequest3;
        v29 = [scanRequest3 isEqual:?];
        v30 = v52;
        if (!v29)
        {
          v11 = 0;
          v37 = scanRequest2;
          v36 = v46;
          goto LABEL_30;
        }

        v41 = interVisitMetricSnapshotBuffer;
      }

      interVisitMetricsSnapshotBackup = [(TAVisitState *)self interVisitMetricsSnapshotBackup];
      interVisitMetricsSnapshotBackup2 = [(TAVisitState *)v6 interVisitMetricsSnapshotBackup];
      v33 = interVisitMetricsSnapshotBackup2;
      if (interVisitMetricsSnapshotBackup == interVisitMetricsSnapshotBackup2)
      {

        v11 = 1;
      }

      else
      {
        [(TAVisitState *)self interVisitMetricsSnapshotBackup];
        v34 = v53 = v30;
        interVisitMetricsSnapshotBackup3 = [(TAVisitState *)v6 interVisitMetricsSnapshotBackup];
        v11 = [v34 isEqual:interVisitMetricsSnapshotBackup3];

        v30 = v53;
      }

      v37 = scanRequest2;
      v36 = v46;
      interVisitMetricSnapshotBuffer = v41;
      if (v46 == scanRequest2)
      {
        v23 = v30;
LABEL_32:

        v24 = v50;
        v21 = v47;
        interVisitMetricSnapshotBuffer2 = v44;
        if (v50 == v47)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

LABEL_30:
      v23 = v30;

      goto LABEL_32;
    }

    v11 = 0;
  }

LABEL_42:

  return v11;
}

- (TAVisitState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = TAVisitState;
  v5 = [(TAVisitState *)&v35 init];
  if (v5)
  {
    v5->_state = [coderCopy decodeIntegerForKey:@"State"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Settings"];
    settings = v5->_settings;
    v5->_settings = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"VisitBuffer"];
    visitSnapshotBuffer = v5->_visitSnapshotBuffer;
    v5->_visitSnapshotBuffer = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"InterVisitBuffer"];
    interVisitMetricSnapshotBuffer = v5->_interVisitMetricSnapshotBuffer;
    v5->_interVisitMetricSnapshotBuffer = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v20 setWithObjects:{v21, v22, v23, v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"LOIs"];
    importantLois = v5->_importantLois;
    v5->_importantLois = v26;

    v28 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v5->_observers;
    v5->_observers = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ScanReq"];
    scanRequest = v5->_scanRequest;
    v5->_scanRequest = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InterBackup"];
    interVisitMetricsSnapshotBackup = v5->_interVisitMetricsSnapshotBackup;
    v5->_interVisitMetricsSnapshotBackup = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInteger:state forKey:@"State"];
  [coderCopy encodeObject:self->_settings forKey:@"Settings"];
  [coderCopy encodeObject:self->_visitSnapshotBuffer forKey:@"VisitBuffer"];
  [coderCopy encodeObject:self->_interVisitMetricSnapshotBuffer forKey:@"InterVisitBuffer"];
  [coderCopy encodeObject:self->_importantLois forKey:@"LOIs"];
  [coderCopy encodeObject:self->_scanRequest forKey:@"ScanReq"];
  [coderCopy encodeObject:self->_interVisitMetricsSnapshotBackup forKey:@"InterBackup"];
}

- (void)ingestTAEvent:(void *)a1 store:appendOutgoingRequestsTo:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() description];
  [v3 UTF8String];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26F2E2000, v4, v5, "#TAVisitState Adding %{private}s to snapshot", v6, v7, v8, v9);
}

- (void)ingestTAEvent:(void *)a1 store:appendOutgoingRequestsTo:.cold.2(void *a1)
{
  v2 = a1;
  v4 = OUTLINED_FUNCTION_10(v2, v3);
  v5 = NSStringFromClass(v4);
  [v5 UTF8String];
  v6 = [OUTLINED_FUNCTION_8() description];
  [v6 UTF8String];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_4(&dword_26F2E2000, v7, v8, "#TAVisitState not adding %{public}s due to %{public}s:%{sensitive}s", v9, v10, v11, v12);
}

- (void)ingestTAEvent:(void *)a1 store:appendOutgoingRequestsTo:.cold.3(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() description];
  [v3 UTF8String];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26F2E2000, v4, v5, "Updating %{sensitive}s to snapshot", v6, v7, v8, v9);
}

- (void)ingestTAEvent:(void *)a1 store:appendOutgoingRequestsTo:.cold.4(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() description];
  [v3 UTF8String];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26F2E2000, v4, v5, "#TAVisitState Considering to add %{private}s for snapshot", v6, v7, v8, v9);
}

- (void)stateTransitionDecisionGivenTACLVisit:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v4 = OUTLINED_FUNCTION_10(v2, v3);
  v5 = NSStringFromClass(v4);
  [v5 UTF8String];
  v6 = [OUTLINED_FUNCTION_8() description];
  [v6 UTF8String];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_4(&dword_26F2E2000, v7, v8, "#TAVisitState not adding %{public}s due to %{public}s:%{sensitive}s", v9, v10, v11, v12);
}

- (void)stateTransitionDecisionGivenTACLVisit:(void *)a1 .cold.2(void *a1)
{
  v2 = a1;
  v4 = OUTLINED_FUNCTION_10(v2, v3);
  v5 = NSStringFromClass(v4);
  [v5 UTF8String];
  v6 = [OUTLINED_FUNCTION_8() description];
  [v6 UTF8String];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_4(&dword_26F2E2000, v7, v8, "#TAVisitState not adding %{public}s due to %{public}s:%{sensitive}s", v9, v10, v11, v12);
}

- (void)stateTransitionDecisionGivenTACLVisit:(void *)a1 .cold.5(void *a1)
{
  v2 = a1;
  v4 = OUTLINED_FUNCTION_10(v2, v3);
  v5 = NSStringFromClass(v4);
  [v5 UTF8String];
  v6 = [OUTLINED_FUNCTION_8() description];
  [v6 UTF8String];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_4(&dword_26F2E2000, v7, v8, "#TAVisitState not considering %{public}s due to %{public}s:%{sensitive}s", v9, v10, v11, v12);
}

void __56__TAVisitState_purgeVisitSnapshotBufferWithCurrentDate___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_9();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1(&dword_26F2E2000, v5, v6, "#TAVisitState seeing class type %@ in a predicate supposed to be used for TAVisitSnapshot object only", v7, v8, v9, v10);
}

void __61__TAVisitState_purgeInterVisitSnapshotBufferWithCurrentDate___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_9();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1(&dword_26F2E2000, v5, v6, "#TAVisitState seeing class type %@ in a predicate supposed to be used for TAInterVisitMetricsSnapshot object only", v7, v8, v9, v10);
}

- (void)description
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_3();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&dword_26F2E2000, selfCopy, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", v7, 0x16u);
}

@end