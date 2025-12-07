@interface ARPCorrelationTask
- (ARPCorrelationTask)initWithCorrelationsFile:(id)file knowledgeStore:(id)store;
- (id)longFormVideoAppBundleIDs;
- (id)queryForMicroLocationsFromStartTime:(id)time endTime:(id)endTime maxEvents:(unint64_t)events overlappingNowPlayingEvents:(id)playingEvents;
- (void)execute;
- (void)execute:(id)execute microLocationEvents:(id)events;
@end

@implementation ARPCorrelationTask

- (ARPCorrelationTask)initWithCorrelationsFile:(id)file knowledgeStore:(id)store
{
  fileCopy = file;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = ARPCorrelationTask;
  v8 = [(ARPCorrelationTask *)&v12 init];
  if (v8)
  {
    v9 = [fileCopy copy];
    file = v8->_file;
    v8->_file = v9;

    objc_storeStrong(&v8->_knowledgeStore, store);
  }

  return v8;
}

- (id)queryForMicroLocationsFromStartTime:(id)time endTime:(id)endTime maxEvents:(unint64_t)events overlappingNowPlayingEvents:(id)playingEvents
{
  v48 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  endTimeCopy = endTime;
  playingEventsCopy = playingEvents;
  v11 = ARPLog(playingEventsCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    *&buf[4] = [playingEventsCopy count];
    *&buf[12] = 2048;
    *&buf[14] = events;
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "queryForMicroLocationsFromStartTime: nowPlayingEvents.count: %lu, maxEvents: %lu", buf, 0x16u);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = timeCopy;
    *&buf[12] = 2112;
    *&buf[14] = endTimeCopy;
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "queryForMicroLocationsFromStartTime: startTime: %@, endTime: %@", buf, 0x16u);
  }

  if ([playingEventsCopy count])
  {
    v12 = [objc_alloc(getBMDKEventStreamClass()) initWithDKStreamIdentifier:@"/inferred/microLocationVisit" contentProtection:*MEMORY[0x277CCA1A0]];
    v13 = MEMORY[0x277CCABB0];
    [timeCopy timeIntervalSinceReferenceDate];
    v14 = [v13 numberWithDouble:?];
    v15 = MEMORY[0x277CCABB0];
    [endTimeCopy timeIntervalSinceReferenceDate];
    v16 = [v15 numberWithDouble:?];
    v17 = [v12 publisherWithStartTime:v14 endTime:v16 maxEvents:0 lastN:0 reversed:1];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v17 == 0;
      _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "queryForMicroLocationsFromStartTime: publisherNil?:%d", buf, 8u);
    }

    +[ARPRoutingSession microLocationCorrelationGracePeriod];
    v19 = v18;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v19;
      _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "queryForMicroLocationsFromStartTime: microLocationCorrelationGracePeriod:%f", buf, 0xCu);
    }

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v41[3] = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v45 = __Block_byref_object_copy__0;
    v46 = __Block_byref_object_dispose__0;
    v47 = [playingEventsCopy objectAtIndexedSubscript:0];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __104__ARPCorrelationTask_queryForMicroLocationsFromStartTime_endTime_maxEvents_overlappingNowPlayingEvents___block_invoke_2;
    v29[3] = &unk_278C646C8;
    v35 = v19;
    v32 = buf;
    v33 = v41;
    v30 = playingEventsCopy;
    v21 = v20;
    v31 = v21;
    v34 = &v37;
    eventsCopy = events;
    v22 = [v17 sinkWithCompletion:&__block_literal_global_81 shouldContinue:v29];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v23 = v38[3];
      *v42 = 134217984;
      v43 = v23;
      _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "queryForMicroLocationsFromStartTime: found %lu microLocationEvents", v42, 0xCu);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v24 = [v21 count];
      *v42 = 134217984;
      v43 = v24;
      _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "queryForMicroLocationsFromStartTime: results.count: %lu", v42, 0xCu);
    }

    v25 = v31;
    v26 = v21;

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v41, 8);
  }

  else
  {
    v26 = MEMORY[0x277CBEBF8];
  }

  return v26;
}

BOOL __104__ARPCorrelationTask_queryForMicroLocationsFromStartTime_endTime_maxEvents_overlappingNowPlayingEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 dkEvent];
  while (1)
  {
    v6 = [*(*(*(a1 + 48) + 8) + 40) startDate];
    v7 = [v5 endDate];
    [v6 timeIntervalSinceDate:v7];
    v9 = v8;
    v10 = *(a1 + 72);

    if (v9 <= v10)
    {
      break;
    }

    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 24) + 1;
    *(v11 + 24) = v12;
    if (v12 == [*(a1 + 32) count])
    {
      v21 = 0;
      goto LABEL_9;
    }

    v13 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v16 = [v5 startDate];
  v17 = [*(*(*(a1 + 48) + 8) + 40) startDate];
  [v16 timeIntervalSinceDate:v17];
  v19 = v18;
  v20 = *(a1 + 72);

  if (v19 <= v20)
  {
    [*(a1 + 40) addObject:v5];
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 24) + 1;
    *(v22 + 24) = v23;
    v21 = v23 < *(a1 + 80);
  }

  else
  {
    v21 = 1;
  }

LABEL_9:

  return v21;
}

- (void)execute
{
  v3 = _os_activity_create(&dword_23EB15000, "CoreDuet: ARPCorrelationTask execute", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v3, &v4);
  os_activity_scope_leave(&v4);

  [(ARPCorrelationTask *)self execute:0 microLocationEvents:0];
}

- (void)execute:(id)execute microLocationEvents:(id)events
{
  v59[3] = *MEMORY[0x277D85DE8];
  executeCopy = execute;
  eventsCopy = events;
  v8 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:0];
  v9 = 0x278C64000uLL;
  if (executeCopy)
  {
    v10 = executeCopy;
    v11 = v10;
  }

  else
  {
    v15 = MEMORY[0x277CFE260];
    playing = [MEMORY[0x277CFE248] playing];
    v14 = [v15 predicateForObjectsWithMetadataKey:playing andIntegerValue:1];

    longFormVideoAppBundleIDs = [(ARPCorrelationTask *)self longFormVideoAppBundleIDs];
    [MEMORY[0x277CFE260] predicateForEventsWithStringValueInValues:longFormVideoAppBundleIDs];
    file = v48 = self;
    +[ARPRoutingSession minimumRoutingEventDuration];
    v12 = [MEMORY[0x277CFE260] predicateForEventsWithMinimumDuration:?];
    v19 = MEMORY[0x277CCA920];
    v59[0] = file;
    v59[1] = v14;
    v59[2] = v12;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
    v21 = [v19 andPredicateWithSubpredicates:v20];

    v22 = MEMORY[0x277CFE1E0];
    nowPlayingStream = [MEMORY[0x277CFE298] nowPlayingStream];
    v58 = nowPlayingStream;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
    v47 = v8;
    v57 = v8;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    v26 = [v22 eventQueryWithPredicate:v21 eventStreams:v24 offset:0 limit:512 sortDescriptors:v25];

    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPCorrelationTask.m"];
    v28 = [v27 stringByAppendingFormat:@":%d", 283];
    [v26 setClientName:v28];

    [v26 setTracker:&__block_literal_global_95];
    knowledgeStore = [(ARPCorrelationTask *)v48 knowledgeStore];
    v50 = 0;
    v11 = [knowledgeStore executeQuery:v26 error:&v50];
    v30 = v50;

    if (v30)
    {
      v32 = ARPLog(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [ARPCorrelationTask execute:microLocationEvents:];
      }

      v8 = v47;
      executeCopy = 0;
      goto LABEL_28;
    }

    v8 = v47;
    executeCopy = 0;
    self = v48;
    v9 = 0x278C64000;
  }

  v12 = ARPLog(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v11 count];
    *buf = 134217984;
    v52 = v13;
    _os_log_impl(&dword_23EB15000, v12, OS_LOG_TYPE_INFO, "[ARPCorrelationTask execute:microLocationEvents:] nowPlayingEvents.count:%lu", buf, 0xCu);
  }

  if (eventsCopy)
  {
    v14 = eventsCopy;
  }

  else if ([v11 count])
  {
    v33 = v8;
    [*(v9 + 784) microLocationCorrelationGracePeriod];
    v35 = v34;
    lastObject = [v11 lastObject];
    startDate = [lastObject startDate];
    v38 = [startDate dateByAddingTimeInterval:-v35];

    firstObject = [v11 firstObject];
    startDate2 = [firstObject startDate];
    v41 = [startDate2 dateByAddingTimeInterval:v35];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23EB15000, v12, OS_LOG_TYPE_INFO, "Calling queryForMicroLocationsFromStartTime v1.0a:", buf, 2u);
    }

    v14 = -[ARPCorrelationTask queryForMicroLocationsFromStartTime:endTime:maxEvents:overlappingNowPlayingEvents:](self, "queryForMicroLocationsFromStartTime:endTime:maxEvents:overlappingNowPlayingEvents:", v41, v38, 2 * [v11 count], v11);

    v8 = v33;
    v9 = 0x278C64000;
  }

  else
  {
    v14 = 0;
  }

  [*(v9 + 784) routingSessionTimeout];
  v43 = v42;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v44 = [v11 count];
    v45 = [v14 count];
    *buf = 134218496;
    v52 = v44;
    v53 = 2048;
    v54 = v45;
    v55 = 2048;
    v56 = v43;
    _os_log_impl(&dword_23EB15000, v12, OS_LOG_TYPE_INFO, "nowPlayingEventsArg microLocationEvents: nowPlayingEvents.count: %lu microLocationEvents.count: %lu, routingSessionTimeout: %f", buf, 0x20u);
  }

  if ([v11 count] && objc_msgSend(v14, "count"))
  {
    longFormVideoAppBundleIDs = [*(v9 + 784) routingSessionsFromNowPlayingEvents:v11 microLocationEvents:v14 routingSessionTimeout:v43];
  }

  else
  {
    longFormVideoAppBundleIDs = MEMORY[0x277CBEBF8];
  }

  file = [(ARPCorrelationTask *)self file];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(ARPCorrelationTask *)longFormVideoAppBundleIDs execute:file microLocationEvents:v12];
  }

  v46 = *(v9 + 784);
  v49 = 0;
  [v46 writeSessions:longFormVideoAppBundleIDs routingSessionTimeout:file file:&v49 error:v43];
  v30 = v49;
  if (v30)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ARPCorrelationTask execute:microLocationEvents:];
    }

LABEL_28:
  }
}

- (id)longFormVideoAppBundleIDs
{
  v29[1] = *MEMORY[0x277D85DE8];
  nowPlayingStream = [MEMORY[0x277CFE298] nowPlayingStream];
  v29[0] = nowPlayingStream;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];

  v5 = [MEMORY[0x277CFE1E0] eventQueryWithPredicate:0 eventStreams:v4 offset:0 limit:0 sortDescriptors:0];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPCorrelationTask.m"];
  v7 = [v6 stringByAppendingFormat:@":%d", 340];
  [v5 setClientName:v7];

  [v5 setTracker:&__block_literal_global_97];
  [v5 setGroupByProperties:&unk_2851429D8];
  [v5 setResultType:3];
  knowledgeStore = [(ARPCorrelationTask *)self knowledgeStore];
  v27 = 0;
  v9 = [knowledgeStore executeQuery:v5 error:&v27];
  v10 = v27;

  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = v11;
  if (v10)
  {
    sharedAVSystemController = ARPLog(v11);
    if (os_log_type_enabled(sharedAVSystemController, OS_LOG_TYPE_ERROR))
    {
      [ARPCorrelationTask longFormVideoAppBundleIDs];
    }
  }

  else
  {
    v22 = v4;
    sharedAVSystemController = [getAVSystemControllerClass() sharedAVSystemController];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [v9 valueForKey:@"valueString"];
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          if ([sharedAVSystemController hasRouteSharingPolicyLongFormVideo:v19])
          {
            [v12 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v16);
    }

    v4 = v22;
  }

  allObjects = [v12 allObjects];

  return allObjects;
}

- (void)execute:(NSObject *)a3 microLocationEvents:.cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_23EB15000, a3, OS_LOG_TYPE_DEBUG, "Archiving %@ sessions to %@ for correlation task.", v6, 0x16u);
}

@end