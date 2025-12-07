@interface TATrackingAvoidanceService
+ (id)createRandomBytes:(unint64_t)bytes;
- (BOOL)shouldPerformDetection;
- (TATrackingAvoidanceService)initWithSettings:(id)settings;
- (TATrackingAvoidanceService)initWithTASettings:(id)settings;
- (id)sendUnstagingUpdatesAndRemoveUnstagingUpdatesRequests:(id)requests;
- (void)_performDetection;
- (void)_performUpdateIfNecessary:(id)necessary;
- (void)bootstrapDeviceRecord:(id)record;
- (void)bootstrapVisitState:(id)state;
- (void)debugForceSurfaceStagedDetections:(id)detections deviceType:(unint64_t)type detailsBitmask:(unsigned int)bitmask;
- (void)debugStageTADetection:(id)detection deviceType:(unint64_t)type detailsBitmask:(unsigned int)bitmask shouldRemoveDevice:(BOOL)device;
- (void)didRequestAIS:(id)s;
- (void)fetchTAUnknownBeacon:(id)beacon withCompletion:(id)completion;
- (void)filterAndStageDetectionResults:(id)results;
- (void)ingestTAEvent:(id)event;
- (void)notifyObserversOfRequests:(id)requests;
- (void)notifyObserversOfStagedSuspiciousDevices:(id)devices;
- (void)notifyObserversOfSuspiciousDeviceUpdate:(id)update;
- (void)notifyObserversOfSuspiciousDevices:(id)devices;
- (void)notifyObserversOfUnstagedSuspiciousDevices:(id)devices;
- (void)notifyObserversOfVisitStateChange;
- (void)visitState:(id)state didChangeStateFromType:(unint64_t)type toType:(unint64_t)toType;
- (void)visitState:(id)state didIssueMetricsSubmissionHint:(unint64_t)hint;
@end

@implementation TATrackingAvoidanceService

- (BOOL)shouldPerformDetection
{
  clock = [(TAStore *)self->_store clock];
  [clock timeIntervalSinceDate:self->_latestClassificationDate];
  v5 = v4;

  [(TATrackingAvoidanceServiceSettings *)self->_serviceSettings classificationTimeInterval];
  return v5 > v6;
}

- (void)_performDetection
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  visitState = [(TAStore *)self->_store visitState];
  state = [visitState state];

  if (state)
  {
    if (state == 2)
    {
      array = [MEMORY[0x277CBEA60] array];
      array2 = [MEMORY[0x277CBEA60] array];
      if ([(TATrackingAvoidanceServiceSettings *)self->_serviceSettings enableTAFilterGeneral])
      {
        v17 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService running TAFilterGeneral detector", buf, 2u);
        }

        store = self->_store;
        filterGeneralSettings = [(TASettings *)self->_settings filterGeneralSettings];
        v20 = [TAFilterGeneral filterSuspiciousDeviceWithStore:store settings:filterGeneralSettings andAppendOutgoingRequestsTo:v3];

        array = v20;
      }

      if (![(TATrackingAvoidanceServiceSettings *)self->_serviceSettings enableTAFilterLeavingLOI])
      {
        goto LABEL_21;
      }

      v21 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F2E2000, v21, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService running TAFilterLeavingLOI detector", buf, 2u);
      }

      v22 = self->_store;
      filterLeavingLOISettings = [(TASettings *)self->_settings filterLeavingLOISettings];
      v16 = [TAFilterLeavingLOI filterSuspiciousDeviceWithStore:v22 leavingLOISettings:filterLeavingLOISettings andAppendOutgoingRequestsTo:v3];
    }

    else
    {
      if (state != 1)
      {
        goto LABEL_22;
      }

      array = [MEMORY[0x277CBEA60] array];
      array2 = [MEMORY[0x277CBEA60] array];
      if ([(TATrackingAvoidanceServiceSettings *)self->_serviceSettings enableTAFilterVisits])
      {
        v9 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F2E2000, v9, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService running TAFilterVisits detector", buf, 2u);
        }

        v10 = self->_store;
        filterVisitsSettings = [(TASettings *)self->_settings filterVisitsSettings];
        v12 = [TAFilterVisits filterSuspiciousDeviceWithStore:v10 settings:filterVisitsSettings andAppendOutgoingRequestsTo:v3];

        array = v12;
      }

      if (![(TATrackingAvoidanceServiceSettings *)self->_serviceSettings enableTAFilterSingleVisit])
      {
        goto LABEL_21;
      }

      v13 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F2E2000, v13, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService running TAFilterSingleVisit detector", buf, 2u);
      }

      v14 = self->_store;
      filterLeavingLOISettings = [(TASettings *)self->_settings filterSingleVisitSettings];
      v16 = [TAFilterSingleVisit filterSuspiciousDeviceWithStore:v14 singleVisitSettings:filterLeavingLOISettings andAppendOutgoingRequestsTo:v3];
    }

    v23 = v16;

    array2 = v23;
LABEL_21:
    [v4 addObjectsFromArray:array];
    [v4 addObjectsFromArray:array2];

    goto LABEL_22;
  }

  v64 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F2E2000, v64, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService not running detection in the unknown visit state", buf, 2u);
  }

LABEL_22:
  v66 = v3;
  clock = [(TAStore *)self->_store clock];
  latestClassificationDate = self->_latestClassificationDate;
  self->_latestClassificationDate = clock;

  v67 = v4;
  [(TATrackingAvoidanceService *)self filterAndStageDetectionResults:v4];
  deviceRecord = [(TAStore *)self->_store deviceRecord];
  getDetectionResultsToPush = [deviceRecord getDetectionResultsToPush];

  v69 = getDetectionResultsToPush;
  v28 = [TAFilterKnownDevices removeDuplicateSuspiciousDevices:getDetectionResultsToPush];
  store = [(TATrackingAvoidanceService *)self store];
  deviceRecord2 = [store deviceRecord];
  v68 = v28;
  v31 = [TAFilterKnownDevices removeIssuedDevices:v28 deviceRecord:deviceRecord2];

  deviceRecord3 = [(TAStore *)self->_store deviceRecord];
  v33 = [TAFilterObservationAggregator normalizeDualT18PoshAdvertisersAsPosh:v31 deviceRecord:deviceRecord3];

  visitState2 = [(TAStore *)self->_store visitState];
  visitSnapshotBuffer = [visitState2 visitSnapshotBuffer];
  visitState3 = [(TAStore *)self->_store visitState];
  interVisitMetricSnapshotBuffer = [visitState3 interVisitMetricSnapshotBuffer];
  clock2 = [(TAStore *)self->_store clock];
  v39 = [TAFilterObservationAggregator aggregateObservationsThroughHistoryForDetectionResults:v33 visitSnapshotBuffer:visitSnapshotBuffer intervisitSnapshotBuffer:interVisitMetricSnapshotBuffer clock:clock2];

  deviceRecord4 = [(TAStore *)self->_store deviceRecord];
  [TAFilterObservationAggregator attachAISInfo:v39 deviceRecord:deviceRecord4];

  if (_os_feature_enabled_impl())
  {
    getDailyAlertLimitPerAccessory = [(TATrackingAvoidanceService *)self getDailyAlertLimitPerAccessory];
    store2 = [(TATrackingAvoidanceService *)self store];
    deviceRecord5 = [store2 deviceRecord];
    v44 = [deviceRecord5 limitSuspiciousDevicesSentToObservers:v39 forDailyMaximum:getDailyAlertLimitPerAccessory];

    if ([v39 count])
    {
      v45 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        v46 = v45;
        v65 = [v69 count];
        v47 = [v68 count];
        v48 = [v31 count];
        v49 = [v67 count];
        v50 = [v44 count];
        v51 = [v39 count];
        *buf = 68290563;
        v71 = 0;
        v72 = 2082;
        v73 = "";
        v74 = 2049;
        v75 = v65;
        v76 = 2049;
        v77 = v47;
        v78 = 2049;
        v79 = v48;
        v80 = 2049;
        v81 = v49;
        v82 = 2049;
        v83 = v50;
        v84 = 2049;
        v85 = v51;
        _os_log_impl(&dword_26F2E2000, v46, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TATrackingAvoidanceService reporting suspicious devices, stagedDetectionsReadyForSubmission:%{private}lu, dedupedStagedDetectionsReadyForSubmission:%{private}lu, nonIssuedDedupedStagedDetectionsReadyForSubmission:%{private}lu, allUnfilteredSuspiciousDevices:%{private}lu, dailyAlertLimitFilteredDetectionWithHistoricalObservations:%{private}lu, detectionWithHistoricalObservations:%{private}lu}", buf, 0x4Eu);
      }
    }

    store3 = [(TATrackingAvoidanceService *)self store];
    deviceRecord6 = [store3 deviceRecord];
    [deviceRecord6 processSurfacedAlerts:v44];

    v54 = v66;
    [(TATrackingAvoidanceService *)self notifyObserversOfRequests:v66];
    [(TATrackingAvoidanceService *)self notifyObserversOfSuspiciousDevices:v44];

    v55 = v67;
  }

  else
  {
    v55 = v67;
    if ([v39 count])
    {
      v56 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        v57 = v56;
        v58 = [v69 count];
        v59 = [v68 count];
        v60 = [v31 count];
        v61 = [v67 count];
        *buf = 68290051;
        v71 = 0;
        v72 = 2082;
        v73 = "";
        v74 = 2049;
        v75 = v58;
        v76 = 2049;
        v77 = v59;
        v78 = 2049;
        v79 = v60;
        v80 = 2049;
        v81 = v61;
        _os_log_impl(&dword_26F2E2000, v57, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TATrackingAvoidanceService reporting suspicious devices, stagedDetectionsReadyForSubmission:%{private}lu, dedupedStagedDetectionsReadyForSubmission:%{private}lu, nonIssuedDedupedStagedDetectionsReadyForSubmission:%{private}lu, allUnfilteredSuspiciousDevices:%{private}lu}", buf, 0x3Au);
      }
    }

    store4 = [(TATrackingAvoidanceService *)self store];
    deviceRecord7 = [store4 deviceRecord];
    [deviceRecord7 processSurfacedAlerts:v39];

    v54 = v66;
    [(TATrackingAvoidanceService *)self notifyObserversOfRequests:v66];
    [(TATrackingAvoidanceService *)self notifyObserversOfSuspiciousDevices:v39];
  }
}

- (TATrackingAvoidanceService)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v5 = [[TASettings alloc] initWithSettings:settingsCopy];

  v6 = [(TATrackingAvoidanceService *)self initWithTASettings:v5];
  return v6;
}

- (TATrackingAvoidanceService)initWithTASettings:(id)settings
{
  settingsCopy = settings;
  v25.receiver = self;
  v25.super_class = TATrackingAvoidanceService;
  v6 = [(TATrackingAvoidanceService *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
    TARegisterLogs(v8, v9);
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [TATrackingAvoidanceService initWithTASettings:];
    }

    serviceSettings = [(TASettings *)v7->_settings serviceSettings];
    serviceSettings = v7->_serviceSettings;
    v7->_serviceSettings = serviceSettings;

    v12 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v7->_observers;
    v7->_observers = v12;

    v14 = [TAStore alloc];
    eventBufferSettings = [(TASettings *)v7->_settings eventBufferSettings];
    scanRequestSettings = [(TASettings *)v7->_settings scanRequestSettings];
    visitStateSettings = [(TASettings *)v7->_settings visitStateSettings];
    deviceRecordSettings = [(TASettings *)v7->_settings deviceRecordSettings];
    v19 = [(TAStore *)v14 initWithEventBufferSettings:eventBufferSettings scanRequestSettings:scanRequestSettings visitStateSettings:visitStateSettings deviceRecordSettings:deviceRecordSettings];
    store = v7->_store;
    v7->_store = v19;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    latestClassificationDate = v7->_latestClassificationDate;
    v7->_latestClassificationDate = distantPast;

    [(TAStore *)v7->_store addObserver:v7];
    stagedIntervisitMetrics = v7->_stagedIntervisitMetrics;
    v7->_stagedIntervisitMetrics = 0;
  }

  return v7;
}

- (void)fetchTAUnknownBeacon:(id)beacon withCompletion:(id)completion
{
  beaconCopy = beacon;
  completionCopy = completion;
  if (beaconCopy)
  {
    v8 = [(TAStore *)self->_store fetchTAUnknownBeacon:beaconCopy];
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [TATrackingAvoidanceService fetchTAUnknownBeacon:withCompletion:];
    }

    completionCopy[2](completionCopy, v8);
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TATrackingAvoidanceService fetchTAUnknownBeacon:withCompletion:];
  }
}

- (void)didRequestAIS:(id)s
{
  v28 = *MEMORY[0x277D85DE8];
  sCopy = s;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [allObjects countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    *&v7 = 138477827;
    v20 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          if ([(TASettings *)self->_settings aisFetchEnabled])
          {
            [v11 trackingAvoidanceService:self didRequestAIS:sCopy];
            continue;
          }

          v17 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v17;
            v14 = [sCopy description];
            *buf = v20;
            v26 = v14;
            v15 = v13;
            v16 = "#TATrackingAvoidanceService AIS fetch disabled :%{private}@";
            goto LABEL_13;
          }
        }

        else
        {
          v12 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v12;
            v14 = [sCopy description];
            *buf = v20;
            v26 = v14;
            v15 = v13;
            v16 = "#TATrackingAvoidanceService AIS fetch not implemented on connection stack :%{private}@";
LABEL_13:
            _os_log_impl(&dword_26F2E2000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
          }
        }

        deviceRecord = [(TAStore *)self->_store deviceRecord];
        address = [sCopy address];
        [deviceRecord forceUpdateAISFetchState:address state:8];
      }

      v8 = [allObjects countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }
}

- (void)bootstrapDeviceRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    deviceRecord = [(TAStore *)self->_store deviceRecord];
    [deviceRecord mergeWithAnotherDeviceRecord:recordCopy];
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TATrackingAvoidanceService bootstrapDeviceRecord:];
  }
}

- (void)bootstrapVisitState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    visitState = [(TAStore *)self->_store visitState];
    [visitState mergeWithAnotherTAVisitState:stateCopy];
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TATrackingAvoidanceService bootstrapVisitState:];
  }
}

- (void)notifyObserversOfSuspiciousDevices:(id)devices
{
  v56 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v5 = devicesCopy;
  if (devicesCopy && [devicesCopy count])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v31 = v5;
    obj = v5;
    v35 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v35)
    {
      v33 = *v46;
      selfCopy = self;
      do
      {
        v6 = 0;
        do
        {
          if (*v46 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v36 = v6;
          v7 = *(*(&v45 + 1) + 8 * v6);
          v8 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
          {
            v9 = v8;
            v10 = [v7 description];
            *buf = 138739971;
            v51 = v10;
            _os_log_impl(&dword_26F2E2000, v9, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService found:%{sensitive}@", buf, 0xCu);
          }

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          locationHistory = [v7 locationHistory];
          v12 = [locationHistory countByEnumeratingWithState:&v41 objects:v54 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v42;
            do
            {
              v15 = 0;
              do
              {
                if (*v42 != v14)
                {
                  objc_enumerationMutation(locationHistory);
                }

                v16 = TAStatusLog;
                if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
                {
                  v17 = *(*(&v41 + 1) + 8 * v15);
                  v18 = v16;
                  address = [v7 address];
                  v20 = [v17 description];
                  *buf = 138478083;
                  v51 = address;
                  v52 = 2117;
                  v53 = v20;
                  _os_log_debug_impl(&dword_26F2E2000, v18, OS_LOG_TYPE_DEBUG, "#TATrackingAvoidanceService detection location associated with %{private}@:%{sensitive}@", buf, 0x16u);
                }

                ++v15;
              }

              while (v13 != v15);
              v13 = [locationHistory countByEnumeratingWithState:&v41 objects:v54 count:16];
            }

            while (v13);
          }

          self = selfCopy;
          deviceRecord = [(TAStore *)selfCopy->_store deviceRecord];
          v22 = [TADeviceInformation alloc];
          latestAdvertisement = [v7 latestAdvertisement];
          date = [v7 date];
          v25 = [(TADeviceInformation *)v22 initWithTASPAdvertisement:latestAdvertisement deviceType:0 notificationState:1 date:date];
          [deviceRecord ingestTAEvent:v25 andAppendOutgoingRequestsTo:0];

          v6 = v36 + 1;
        }

        while (v36 + 1 != v35);
        v35 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v35);
    }

    allObjects = [(NSHashTable *)self->_observers allObjects];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v27 = [allObjects countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v38;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v38 != v29)
          {
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v37 + 1) + 8 * i) trackingAvoidanceService:self didFindSuspiciousDevices:obj];
        }

        v28 = [allObjects countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v28);
    }

    v5 = v31;
  }
}

- (void)notifyObserversOfRequests:(id)requests
{
  v34 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v5 = requestsCopy;
  if (requestsCopy && [requestsCopy count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(*(&v26 + 1) + 8 * i);
            v13 = v11;
            v14 = [v12 description];
            *buf = 138739971;
            v32 = v14;
            _os_log_impl(&dword_26F2E2000, v13, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService requesting:%{sensitive}@", buf, 0xCu);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v8);
    }

    allObjects = [(NSHashTable *)self->_observers allObjects];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [allObjects countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(allObjects);
          }

          v20 = *(*(&v22 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v20 trackingAvoidanceService:self requestingAdditionalInformation:v6];
          }
        }

        v17 = [allObjects countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }

    v5 = v21;
  }
}

- (void)notifyObserversOfSuspiciousDeviceUpdate:(id)update
{
  v53[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (updateCopy)
  {
    v29 = updateCopy;
    v53[0] = updateCopy;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
    selfCopy = self;
    deviceRecord = [(TAStore *)self->_store deviceRecord];
    v7 = [TAFilterObservationAggregator normalizeDualT18PoshAdvertisersAsPosh:v5 deviceRecord:deviceRecord];

    v8 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v7 description];
      *buf = 138739971;
      v48 = v10;
      _os_log_impl(&dword_26F2E2000, v9, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService update:%{sensitive}@", buf, 0xCu);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v7;
    v31 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v31)
    {
      v30 = *v43;
      do
      {
        v11 = 0;
        do
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v11;
          v12 = *(*(&v42 + 1) + 8 * v11);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          locationHistory = [v12 locationHistory];
          v14 = [locationHistory countByEnumeratingWithState:&v38 objects:v51 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v39;
            do
            {
              v17 = 0;
              do
              {
                if (*v39 != v16)
                {
                  objc_enumerationMutation(locationHistory);
                }

                v18 = TAStatusLog;
                if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
                {
                  v19 = *(*(&v38 + 1) + 8 * v17);
                  v20 = v18;
                  address = [v12 address];
                  v22 = [v19 description];
                  *buf = 138478083;
                  v48 = address;
                  v49 = 2117;
                  v50 = v22;
                  _os_log_debug_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_DEBUG, "#TATrackingAvoidanceService update location associated with %{private}@:%{sensitive}@", buf, 0x16u);
                }

                ++v17;
              }

              while (v15 != v17);
              v15 = [locationHistory countByEnumeratingWithState:&v38 objects:v51 count:16];
            }

            while (v15);
          }

          v11 = v33 + 1;
        }

        while (v33 + 1 != v31);
        v31 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v31);
    }

    allObjects = [(NSHashTable *)selfCopy->_observers allObjects];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = [allObjects countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v34 + 1) + 8 * i) trackingAvoidanceService:selfCopy didUpdateSuspiciousDevices:obj];
        }

        v25 = [allObjects countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v25);
    }

    updateCopy = v29;
  }
}

- (void)notifyObserversOfStagedSuspiciousDevices:(id)devices
{
  v37 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v5 = devicesCopy;
  if (devicesCopy && [devicesCopy count])
  {
    deviceRecord = [(TAStore *)self->_store deviceRecord];
    v7 = [TAFilterObservationAggregator normalizeDualT18PoshAdvertisersAsPosh:v5 deviceRecord:deviceRecord];

    allObjects = [(NSHashTable *)self->_observers allObjects];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = [allObjects countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(allObjects);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v13 trackingAvoidanceService:self didStageSuspiciousDevices:v7];
          }
        }

        v10 = [allObjects countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v10);
    }

    v23 = v7;
    v24 = v5;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(*(&v25 + 1) + 8 * j);
            v21 = v19;
            v22 = [v20 description];
            *buf = 138739971;
            v34 = v22;
            _os_log_impl(&dword_26F2E2000, v21, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService staged:%{sensitive}@", buf, 0xCu);
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v16);
    }

    v5 = v24;
  }
}

- (void)notifyObserversOfUnstagedSuspiciousDevices:(id)devices
{
  v19 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v5 = devicesCopy;
  if (devicesCopy && [devicesCopy count])
  {
    deviceRecord = [(TAStore *)self->_store deviceRecord];
    v7 = [TAFilterObservationAggregator normalizeDualT18PoshAdvertisersAsPosh:v5 deviceRecord:deviceRecord];

    allObjects = [(NSHashTable *)self->_observers allObjects];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(allObjects);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 trackingAvoidanceService:self didUnstageSuspiciousDevices:v7];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)notifyObserversOfVisitStateChange
{
  v14 = *MEMORY[0x277D85DE8];
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 visitStateChangedForTrackingAvoidanceService:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)visitState:(id)state didChangeStateFromType:(unint64_t)type toType:(unint64_t)toType
{
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [TATrackingAvoidanceService visitState:didChangeStateFromType:toType:];
  }

  [(TATrackingAvoidanceService *)self _performDetection];
  [(TATrackingAvoidanceService *)self notifyObserversOfVisitStateChange];
}

- (void)visitState:(id)state didIssueMetricsSubmissionHint:(unint64_t)hint
{
  v27[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  switch(hint)
  {
    case 2uLL:
      if (self->_stagedIntervisitMetrics)
      {
        v21 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&dword_26F2E2000, v21, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService reporting the previous intervisit-based metrics", v25, 2u);
        }

        stagedIntervisitMetrics = self->_stagedIntervisitMetrics;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&stagedIntervisitMetrics count:1];
        [(TATrackingAvoidanceService *)self notifyObserversOfRequests:v22];

        v23 = self->_stagedIntervisitMetrics;
        self->_stagedIntervisitMetrics = 0;
      }

      break;
    case 1uLL:
      v15 = [TACoreAnalyticMetricManager computeMetricsInterVisit:self->_store];
      v9 = v15;
      if (v15 && [v15 count])
      {
        v16 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&dword_26F2E2000, v16, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService staging previous inter-visit metrics", v25, 2u);
        }

        v17 = [TAOutgoingRequests alloc];
        clock = [(TAStore *)self->_store clock];
        v19 = [(TAOutgoingRequests *)v17 initWithRequestKey:@"DonatingInterVisitMetrics" additionalInformation:v9 date:clock];
        v20 = self->_stagedIntervisitMetrics;
        self->_stagedIntervisitMetrics = v19;
      }

      goto LABEL_14;
    case 0uLL:
      store = self->_store;
      filterVisitsSettings = [(TASettings *)self->_settings filterVisitsSettings];
      v9 = [TACoreAnalyticMetricManager computeMetricsVisit:store withFilterVisitsSettings:filterVisitsSettings];

      if (v9 && [v9 count])
      {
        v10 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService reporting the previous visit-based metrics", v25, 2u);
        }

        v11 = [TAOutgoingRequests alloc];
        clock2 = [(TAStore *)self->_store clock];
        v13 = [(TAOutgoingRequests *)v11 initWithRequestKey:@"DonatingVisitMetrics" additionalInformation:v9 date:clock2];

        v27[0] = v13;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
        [(TATrackingAvoidanceService *)self notifyObserversOfRequests:v14];
      }

LABEL_14:

      break;
    default:
      v24 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        [TATrackingAvoidanceService visitState:hint didIssueMetricsSubmissionHint:v24];
      }

      break;
  }
}

- (void)filterAndStageDetectionResults:(id)results
{
  v28 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  deviceRecord = [(TAStore *)self->_store deviceRecord];
  v21 = resultsCopy;
  v6 = [TAFilterKnownDevices removeAndProcessBackgroundDetections:resultsCopy deviceRecord:deviceRecord];

  deviceRecord2 = [(TAStore *)self->_store deviceRecord];
  v20 = v6;
  v8 = [TAFilterKnownDevices removeKnownSuspiciousDevices:v6 deviceRecord:deviceRecord2];

  v9 = [TAFilterKnownDevices removeDuplicateSuspiciousDevices:v8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        deviceRecord3 = [(TAStore *)self->_store deviceRecord];
        latestAdvertisement = [v14 latestAdvertisement];
        clock = [(TAStore *)self->_store clock];
        [deviceRecord3 stageDevice:latestAdvertisement withCurrentDate:clock];

        deviceRecord4 = [(TAStore *)self->_store deviceRecord];
        v26 = v14;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
        [deviceRecord4 stageDetectionResults:v19];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v11);
  }

  [(TATrackingAvoidanceService *)self notifyObserversOfStagedSuspiciousDevices:v9];
}

- (void)_performUpdateIfNecessary:(id)necessary
{
  v35 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  deviceRecord = [(TAStore *)self->_store deviceRecord];
  address = [necessaryCopy address];
  v7 = [deviceRecord hasSurfacedNotificationFor:address];

  if (v7)
  {
    eventBuffer = [(TAStore *)self->_store eventBuffer];
    v9 = [eventBuffer getLatestElementOf:objc_opt_class()];

    if (v9)
    {
      scanDate = [necessaryCopy scanDate];
      timestamp = [v9 timestamp];
      [scanDate timeIntervalSinceDate:timestamp];
      v13 = v12;

      filterGeneralSettings = [(TASettings *)self->_settings filterGeneralSettings];
      [filterGeneralSettings thresholdOfLocationRelevance];
      v16 = v15;

      if (v13 <= v16)
      {
        v18 = [TASuspiciousDevice alloc];
        getDate = [necessaryCopy getDate];
        v26 = v9;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
        v21 = [[TAMetricsDetection alloc] initWithDetectionType:0 visitDetectionMetrics:0 generalDetectionMetrics:0 singleVisitDetectionMetrics:0 latestAdvertisement:necessaryCopy];
        deviceRecord2 = [(TAStore *)self->_store deviceRecord];
        address2 = [necessaryCopy address];
        v24 = [deviceRecord2 getAccessoryInfo:address2];
        v25 = [(TASuspiciousDevice *)v18 initWithLatestAdv:necessaryCopy detectionSummary:&unk_287F6FFF8 date:getDate locHistory:v20 detectionMetrics:v21 detectionType:0 immediacyType:0 accessoryInfo:v24 forceSurfaceReason:0];

        [(TATrackingAvoidanceService *)self notifyObserversOfSuspiciousDeviceUpdate:v25];
      }

      else
      {
        v17 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289539;
          v28 = 0;
          v29 = 2082;
          v30 = "";
          v31 = 2113;
          v32 = necessaryCopy;
          v33 = 2117;
          v34 = v9;
          _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TATrackingAvoidanceService location too stale to update, advertisement:%{private}@, latestLocation:%{sensitive}@}", buf, 0x26u);
        }
      }
    }
  }
}

- (id)sendUnstagingUpdatesAndRemoveUnstagingUpdatesRequests:(id)requests
{
  v26 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = requestsCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 key];
        v13 = [v12 isEqualToString:@"UnstagingUpdate"];

        if (v13)
        {
          additionalInformation = [v11 additionalInformation];
          v15 = [additionalInformation objectForKeyedSubscript:@"UnstagingUpdate"];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = MEMORY[0x277CBEBF8];
          }

          [array2 addObjectsFromArray:v17];
        }

        else
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  [(TATrackingAvoidanceService *)self notifyObserversOfUnstagedSuspiciousDevices:array2];
  v18 = [array copy];

  return v18;
}

- (void)ingestTAEvent:(id)event
{
  v26 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (eventCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (_os_feature_enabled_impl() & 1) == 0)
    {
      v5 = eventCopy;
      if ([v5 isPosh])
      {
        v6 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v6;
          descriptionDictionary = [v5 descriptionDictionary];
          v22 = 68289283;
          *v23 = 0;
          *&v23[4] = 2082;
          *&v23[6] = "";
          v24 = 2113;
          v25 = descriptionDictionary;
          _os_log_impl(&dword_26F2E2000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TATrackingAvoidanceService skip adv ff not enabled, adv:%{private}@}", &v22, 0x1Cu);
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    v9 = [MEMORY[0x277CBEAA8] now];
    getDate = [eventCopy getDate];
    [v9 timeIntervalSinceDate:getDate];
    v12 = v11;

    [(TASettings *)self->_settings futureEventToleranceInterval];
    if (v12 >= -v13)
    {
      v17 = TAEventsLog;
      if (os_log_type_enabled(TAEventsLog, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138739971;
        *v23 = eventCopy;
        _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_DEFAULT, "%{sensitive}@", &v22, 0xCu);
      }

      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(TAStore *)self->_store addTAEvent:eventCopy andAppendOutgoingRequestsTo:v5];
      v18 = [(TATrackingAvoidanceService *)self sendUnstagingUpdatesAndRemoveUnstagingUpdatesRequests:v5];
      if ([(TATrackingAvoidanceService *)self shouldPerformDetection])
      {
        v19 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22) = 0;
          _os_log_impl(&dword_26F2E2000, v19, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService significant time elapsed, performing classification now", &v22, 2u);
        }

        [(TATrackingAvoidanceService *)self _performDetection];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(TATrackingAvoidanceService *)self _performUpdateIfNecessary:eventCopy];
      }

      deviceRecord = [(TAStore *)self->_store deviceRecord];
      v21 = [TAFilterKnownDevices removeMetricsFromKnownDevices:v18 deviceRecord:deviceRecord];

      [(TATrackingAvoidanceService *)self notifyObserversOfRequests:v21];
      goto LABEL_22;
    }

    v14 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = [eventCopy description];
      v22 = 68289283;
      *v23 = 0;
      *&v23[4] = 2082;
      *&v23[6] = "";
      v24 = 2117;
      v25 = v16;
      _os_log_impl(&dword_26F2E2000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TATrackingAvoidanceService event is dated too far in the future, not ingesting, event:%{sensitive}@}", &v22, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [TATrackingAvoidanceService ingestTAEvent:];
  }

LABEL_23:
}

+ (id)createRandomBytes:(unint64_t)bytes
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = v7 - ((bytes + 15) & 0xFFFFFFFFFFFFFFF0);
  arc4random_buf(v4, bytes);
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:bytes];

  return v5;
}

- (void)debugStageTADetection:(id)detection deviceType:(unint64_t)type detailsBitmask:(unsigned int)bitmask shouldRemoveDevice:(BOOL)device
{
  deviceCopy = device;
  v57 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  v11 = TAStatusLog;
  if (detectionCopy)
  {
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      hexString = [detectionCopy hexString];
      *buf = 68289539;
      *v52 = 0;
      *&v52[4] = 2082;
      *&v52[6] = "";
      v53 = 2113;
      v54 = hexString;
      v55 = 1026;
      v56 = deviceCopy;
      _os_log_impl(&dword_26F2E2000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TATrackingAvoidanceService start stageTADetection for, address:%{private}@, shouldRemoveSingleDeviceRecord:%{public}hhd}", buf, 0x22u);
    }

    if (deviceCopy)
    {
      deviceRecord = [(TAStore *)self->_store deviceRecord];
      [deviceRecord removeDevice:detectionCopy];
    }

    if (type >= 4)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0xF4E4D400 >> (8 * type);
    }

    date = [MEMORY[0x277CBEAA8] date];
    v17 = &unk_287F6FEA8;
    if (bitmask == 3)
    {
      v17 = &unk_287F6FED8;
    }

    if (bitmask == 1)
    {
      v18 = &unk_287F6FEC0;
    }

    else
    {
      v18 = v17;
    }

    v19 = [TASPAdvertisement alloc];
    v20 = [TATrackingAvoidanceService createRandomBytes:22];
    v21 = [TATrackingAvoidanceService createRandomBytes:2];
    LODWORD(v45) = bitmask;
    v47 = date;
    v22 = [(TASPAdvertisement *)v19 initWithAddress:detectionCopy advertisementData:v20 status:v15 & 0x3FC reserved:v21 rssi:-55 scanDate:date detailsBitmask:v45 uuid:0 protocolID:v18];

    deviceRecord2 = [(TAStore *)self->_store deviceRecord];
    getDate = [(TASPAdvertisement *)v22 getDate];
    [deviceRecord2 stageDevice:v22 withCurrentDate:getDate];

    deviceRecord3 = [(TAStore *)self->_store deviceRecord];
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [deviceRecord3 ingestTAEvent:v22 andAppendOutgoingRequestsTo:v26];

    v27 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:date sinceDate:-5400.0];
    v28 = [TASPAdvertisement alloc];
    v29 = [TATrackingAvoidanceService createRandomBytes:22];
    v30 = [TATrackingAvoidanceService createRandomBytes:2];
    LODWORD(v46) = bitmask;
    v31 = [(TASPAdvertisement *)v28 initWithAddress:detectionCopy advertisementData:v29 status:v15 & 0x3FC reserved:v30 rssi:-55 scanDate:v27 detailsBitmask:v46 uuid:0 protocolID:v18];

    deviceRecord4 = [(TAStore *)self->_store deviceRecord];
    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [deviceRecord4 ingestTAEvent:v31 andAppendOutgoingRequestsTo:v33];

    v34 = [[TALocationLite alloc] initWithTimestamp:v27 latitude:37.3348314 longitude:-122.008961 horizontalAccuracy:100.0];
    v35 = [TASuspiciousDevice alloc];
    v50 = v34;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    v37 = [[TAMetricsDetection alloc] initWithDetectionType:1 visitDetectionMetrics:0 generalDetectionMetrics:0 singleVisitDetectionMetrics:0 latestAdvertisement:v22];
    v38 = [(TASuspiciousDevice *)v35 initWithLatestAdv:v22 detectionSummary:&unk_287F70020 date:v47 locHistory:v36 detectionMetrics:v37 detectionType:1 immediacyType:1 accessoryInfo:0 forceSurfaceReason:0];

    deviceRecord5 = [(TAStore *)self->_store deviceRecord];
    v49 = v38;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    [deviceRecord5 stageDetectionResults:v40];

    v48 = v38;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    [(TATrackingAvoidanceService *)self notifyObserversOfStagedSuspiciousDevices:v41];

    v42 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v42;
      hexString2 = [detectionCopy hexString];
      *buf = 138477827;
      *v52 = hexString2;
      _os_log_impl(&dword_26F2E2000, v43, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService end stageDevice %{private}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TATrackingAvoidanceService debugStageTADetection:deviceType:detailsBitmask:shouldRemoveDevice:];
  }
}

- (void)debugForceSurfaceStagedDetections:(id)detections deviceType:(unint64_t)type detailsBitmask:(unsigned int)bitmask
{
  v24 = *MEMORY[0x277D85DE8];
  detectionsCopy = detections;
  v9 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    hexString = [detectionsCopy hexString];
    *buf = 138477827;
    v23 = hexString;
    _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService forceSurfaceStagedDetections for address: %{private}@", buf, 0xCu);
  }

  if (type >= 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xF4E4D400 >> (8 * type);
  }

  v13 = [TASPAdvertisement alloc];
  v14 = [TATrackingAvoidanceService createRandomBytes:22];
  v15 = [TATrackingAvoidanceService createRandomBytes:2];
  v16 = [MEMORY[0x277CBEAA8] now];
  LODWORD(v21) = bitmask;
  v17 = [(TASPAdvertisement *)v13 initWithAddress:detectionsCopy advertisementData:v14 status:v12 & 0x3FC reserved:v15 rssi:-55 scanDate:v16 detailsBitmask:v21 uuid:0 protocolID:0];

  deviceRecord = [(TAStore *)self->_store deviceRecord];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [deviceRecord ingestTAEvent:v17 andAppendOutgoingRequestsTo:v19];

  deviceRecord2 = [(TAStore *)self->_store deviceRecord];
  [deviceRecord2 forceStagedDetectionsToSurfaceImmediatelyWithAdvertisement:v17 withReason:0];

  [(TATrackingAvoidanceService *)self _performDetection];
}

- (void)visitState:didChangeStateFromType:toType:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)visitState:(uint64_t)a1 didIssueMetricsSubmissionHint:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_26F2E2000, a2, OS_LOG_TYPE_ERROR, "#TATrackingAvoidanceService unrecognized metrics hint %lu", &v2, 0xCu);
}

- (void)ingestTAEvent:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end