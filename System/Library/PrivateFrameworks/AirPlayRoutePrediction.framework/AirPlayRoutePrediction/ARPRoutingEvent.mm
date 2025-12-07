@interface ARPRoutingEvent
+ (id)mostRecentRoutingEventInDateInterval:(id)interval knowledgeStore:(id)store eventLimit:(unint64_t)limit longFormVideoFilter:(id)filter;
- (ARPRoutingEvent)initWithBundleID:(id)d outputDeviceID:(id)iD interval:(id)interval probabilityVector:(id)vector;
- (id)description;
@end

@implementation ARPRoutingEvent

- (ARPRoutingEvent)initWithBundleID:(id)d outputDeviceID:(id)iD interval:(id)interval probabilityVector:(id)vector
{
  dCopy = d;
  iDCopy = iD;
  intervalCopy = interval;
  vectorCopy = vector;
  v22.receiver = self;
  v22.super_class = ARPRoutingEvent;
  v14 = [(ARPRoutingEvent *)&v22 init];
  if (v14)
  {
    v15 = [dCopy copy];
    bundleID = v14->_bundleID;
    v14->_bundleID = v15;

    v17 = [iDCopy copy];
    outputDeviceID = v14->_outputDeviceID;
    v14->_outputDeviceID = v17;

    v19 = [intervalCopy copy];
    interval = v14->_interval;
    v14->_interval = v19;

    objc_storeStrong(&v14->_probabilityVector, vector);
  }

  return v14;
}

+ (id)mostRecentRoutingEventInDateInterval:(id)interval knowledgeStore:(id)store eventLimit:(unint64_t)limit longFormVideoFilter:(id)filter
{
  v133[3] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  storeCopy = store;
  filterCopy = filter;
  v93 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:0];
  v12 = MEMORY[0x277CFE260];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v15 = [v12 predicateForEventsWithEndInDateRangeFrom:startDate to:endDate];

  v16 = MEMORY[0x277CFE260];
  playing = [MEMORY[0x277CFE248] playing];
  v18 = [v16 predicateForObjectsWithMetadataKey:playing andIntegerValue:1];

  +[ARPRoutingSession minimumRoutingEventDuration];
  v19 = [MEMORY[0x277CFE260] predicateForEventsWithMinimumDuration:?];
  v20 = MEMORY[0x277CCA920];
  v90 = v18;
  v91 = v15;
  v133[0] = v15;
  v133[1] = v18;
  v89 = v19;
  v133[2] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:3];
  v22 = [v20 andPredicateWithSubpredicates:v21];

  v23 = MEMORY[0x277CFE1E0];
  nowPlayingStream = [MEMORY[0x277CFE298] nowPlayingStream];
  v132 = nowPlayingStream;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
  v92 = v11;
  v131 = v11;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
  v88 = v22;
  v27 = [v23 eventQueryWithPredicate:v22 eventStreams:v25 offset:0 limit:limit sortDescriptors:v26];

  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPRoutingSession.m"];
  v29 = [v28 stringByAppendingFormat:@":%d", 85];
  [v27 setClientName:v29];

  [v27 setTracker:&__block_literal_global_1];
  v120 = 0;
  v98 = storeCopy;
  v30 = v27;
  v31 = [storeCopy executeQuery:v27 error:&v120];
  v32 = v120;
  v33 = ARPLog(v32);
  v34 = v33;
  if (v32)
  {
    v35 = 0;
    goto LABEL_49;
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    [ARPRoutingEvent mostRecentRoutingEventInDateInterval:v31 knowledgeStore:v34 eventLimit:? longFormVideoFilter:?];
  }

  oslog = v34;

  v36 = MEMORY[0x277CFE1E0];
  microLocationVisitStream = [MEMORY[0x277CFE298] microLocationVisitStream];
  v130 = microLocationVisitStream;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v130 count:1];
  v39 = [v36 eventQueryWithPredicate:0 eventStreams:v38 offset:0 limit:1 sortDescriptors:0];

  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPRoutingSession.m"];
  v41 = [v40 stringByAppendingFormat:@":%d", 101];
  [v39 setClientName:v41];

  v96 = v39;
  [v39 setTracker:&__block_literal_global_17];
  if (!filterCopy)
  {
    sharedAVSystemController = [getAVSystemControllerClass() sharedAVSystemController];
    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v118[2] = __102__ARPRoutingEvent_mostRecentRoutingEventInDateInterval_knowledgeStore_eventLimit_longFormVideoFilter___block_invoke_2;
    v118[3] = &unk_278C64550;
    v119 = sharedAVSystemController;
    v43 = sharedAVSystemController;
    filterCopy = MEMORY[0x23EF1CFE0](v118);
  }

  v85 = v27;
  v86 = intervalCopy;
  +[ARPRoutingSession microLocationCorrelationGracePeriod];
  v45 = v44;
  v106 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v84 = v31;
  obj = v31;
  v46 = 0x277CFE000uLL;
  v47 = 0x277CFE000uLL;
  v108 = [obj countByEnumeratingWithState:&v114 objects:v129 count:16];
  if (v108)
  {
    v94 = 0;
    v95 = 0;
    v104 = 0;
    v107 = *v115;
    while (1)
    {
      v48 = 0;
      do
      {
        if (*v115 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v49 = *(*(&v114 + 1) + 8 * v48);
        context = objc_autoreleasePoolPush();
        metadata = [v49 metadata];
        outputDeviceIDs = [*(v47 + 584) outputDeviceIDs];
        v52 = [metadata objectForKeyedSubscript:outputDeviceIDs];

        v53 = ARPExtractLongFormVideoOutputDeviceIDs(v52);
        if ([v53 count] == 1)
        {
          firstObject = [v53 firstObject];
        }

        else
        {
          firstObject = 0;
        }

        v34 = oslog;
        stringValue = [v49 stringValue];
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          startDate2 = [v49 startDate];
          endDate2 = [v49 endDate];
          *buf = 138413058;
          v122 = stringValue;
          v123 = 2112;
          v124 = firstObject;
          v125 = 2112;
          v126 = startDate2;
          v127 = 2112;
          v128 = endDate2;
          _os_log_debug_impl(&dword_23EB15000, oslog, OS_LOG_TYPE_DEBUG, "Evaluating candiate event %@ -> %@. %@ - %@", buf, 0x2Au);

          v34 = oslog;
        }

        if (firstObject)
        {
          v56 = [v106 objectForKeyedSubscript:stringValue];
          if (!v56)
          {
            v56 = [MEMORY[0x277CCABB0] numberWithBool:{filterCopy[2](filterCopy, stringValue)}];
            [v106 setObject:v56 forKeyedSubscript:stringValue];
          }

          if ([v56 BOOLValue])
          {
            v100 = v52;
            startDate3 = [v49 startDate];
            v58 = [startDate3 dateByAddingTimeInterval:-v45];

            startDate4 = [v49 startDate];
            v60 = [startDate4 dateByAddingTimeInterval:v45];

            v101 = v58;
            v103 = v60;
            v102 = [*(v46 + 608) predicateForEventsWithStartInDateRangeFrom:v58 to:v60];
            [v96 setPredicate:?];
            v111 = v104;
            v61 = [v98 executeQuery:v96 error:&v111];
            v62 = v111;

            firstObject2 = [v61 firstObject];

            v105 = firstObject2;
            if (v62)
            {
              v64 = 0;
              v46 = 0x277CFE000;
              v52 = v100;
              v65 = v101;
              goto LABEL_36;
            }

            if (firstObject2)
            {
              metadata2 = [firstObject2 metadata];
              probabilityVector = [MEMORY[0x277CFE230] probabilityVector];
              v69 = [metadata2 objectForKeyedSubscript:probabilityVector];

              if (v69)
              {
                metadata3 = [firstObject2 metadata];
                probabilityVector2 = [MEMORY[0x277CFE230] probabilityVector];
                v87 = [metadata3 objectForKeyedSubscript:probabilityVector2];

                v72 = objc_alloc(MEMORY[0x277CCA970]);
                startDate5 = [v49 startDate];
                endDate3 = [v49 endDate];
                v75 = [v72 initWithStartDate:startDate5 endDate:endDate3];

                v76 = [ARPRoutingEvent alloc];
                stringValue2 = [v49 stringValue];
                v78 = [(ARPRoutingEvent *)v76 initWithBundleID:stringValue2 outputDeviceID:firstObject interval:v75 probabilityVector:v87];

                v79 = v75;
                v64 = 0;
                v94 = v87;
                v95 = v78;
                goto LABEL_34;
              }
            }

            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v65 = v101;
              v122 = v101;
              v123 = 2112;
              v124 = v103;
              _os_log_debug_impl(&dword_23EB15000, oslog, OS_LOG_TYPE_DEBUG, "Skipping candidate because there is no associated microlocation between %@ and %@", buf, 0x16u);
              v64 = 1;
              v79 = oslog;
              v46 = 0x277CFE000;
            }

            else
            {
              v64 = 1;
              v79 = oslog;
LABEL_34:
              v46 = 0x277CFE000;
              v65 = v101;
            }

            v52 = v100;

            v62 = 0;
LABEL_36:

            if ((v64 & 1) == 0)
            {

              objc_autoreleasePoolPop(context);
              v104 = v62;
              goto LABEL_46;
            }

            v104 = v62;
            v34 = oslog;
          }

          else
          {
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v122 = stringValue;
              _os_log_debug_impl(&dword_23EB15000, v34, OS_LOG_TYPE_DEBUG, "Skipping candidate because %@ is not a long form video app.", buf, 0xCu);
            }
          }

          v66 = stringValue;
          v47 = 0x277CFE000;
          goto LABEL_39;
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [ARPRoutingEvent mostRecentRoutingEventInDateInterval:v113 knowledgeStore:v34 eventLimit:? longFormVideoFilter:?];
        }

        v66 = v34;
        firstObject = stringValue;
LABEL_39:

        objc_autoreleasePoolPop(context);
        ++v48;
      }

      while (v108 != v48);
      v82 = [obj countByEnumeratingWithState:&v114 objects:v129 count:16];
      v108 = v82;
      if (!v82)
      {
        goto LABEL_47;
      }
    }
  }

  v94 = 0;
  v95 = 0;
  v104 = 0;
LABEL_46:
  v34 = oslog;
LABEL_47:

  v32 = v104;
  if (!v104)
  {
    v30 = v85;
    intervalCopy = v86;
    v31 = v84;
    v35 = v95;
    goto LABEL_52;
  }

  v30 = v85;
  intervalCopy = v86;
  v31 = v84;
  v35 = v95;
LABEL_49:
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    [ARPRoutingEvent mostRecentRoutingEventInDateInterval:v32 knowledgeStore:v34 eventLimit:? longFormVideoFilter:?];
  }

LABEL_52:
  objc_autoreleasePoolPop(v93);

  return v35;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  bundleID = [(ARPRoutingEvent *)self bundleID];
  outputDeviceID = [(ARPRoutingEvent *)self outputDeviceID];
  interval = [(ARPRoutingEvent *)self interval];
  probabilityVector = [(ARPRoutingEvent *)self probabilityVector];
  v9 = [v3 stringWithFormat:@"<%@ %p> bundleID: %@, outputDeviceID: %@, interval: %@, microLocationProbabilityVector: %@", v4, self, bundleID, outputDeviceID, interval, probabilityVector];

  return v9;
}

+ (void)mostRecentRoutingEventInDateInterval:(void *)a1 knowledgeStore:(NSObject *)a2 eventLimit:longFormVideoFilter:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_23EB15000, a2, OS_LOG_TYPE_DEBUG, "Found %@ candidate events for most recent routing event", &v4, 0xCu);
}

+ (void)mostRecentRoutingEventInDateInterval:(os_log_t)log knowledgeStore:eventLimit:longFormVideoFilter:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_23EB15000, log, OS_LOG_TYPE_DEBUG, "Skipping candidate because it doesn't have exactly one output device.", buf, 2u);
}

+ (void)mostRecentRoutingEventInDateInterval:(uint64_t)a1 knowledgeStore:(NSObject *)a2 eventLimit:longFormVideoFilter:.cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23EB15000, a2, OS_LOG_TYPE_ERROR, "Error fetching most recent routing event: %@", &v2, 0xCu);
}

@end