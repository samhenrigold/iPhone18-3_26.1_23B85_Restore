@interface _DKSyncLocalKnowledgeStorage
+ (void)_updateEventStatsWithFetchEventsTotal:(void *)total streamNameCounts:;
+ (void)_updateEventStatsWithFetchTombstonesTotal:(void *)total streamNameCounts:;
- (BOOL)deleteEventsWithEventIDs:(id)ds error:(id *)error;
- (BOOL)saveEvents:(id)events error:(id *)error;
- (BOOL)saveSyncedDownWindows:(id)windows peer:(id)peer transportName:(id)name error:(id *)error;
- (_DKSyncHistory)syncHistoryForPeer:(void *)peer streamName:(void *)name transportName:(void *)transportName type:(unint64_t *)type error:;
- (id)additionsSyncHistoryForPeer:(id)peer transportName:(id)name error:(id *)error;
- (id)deletionsSyncHistoryForPeer:(id)peer transportName:(id)name error:(id *)error;
- (id)initWithKnowledgeStorage:(id *)storage;
- (id)lastSyncDownDeletionDateForPeer:(id)peer transportName:(id)name error:(id *)error;
- (id)sortedEventsFromSyncWindows:(id)windows streamNames:(id)names compatibility:(id)compatibility limit:(unint64_t)limit fetchOrder:(int64_t)order error:(id *)error;
- (id)sortedEventsFromSyncWindows:(id)windows streamNames:(id)names limit:(unint64_t)limit fetchOrder:(int64_t)order error:(id *)error;
- (id)sortedSyncDownWindowsOverlappingBetweenDate:(id)date andDate:(id)andDate peer:(id)peer error:(id *)error;
- (id)tombstonesSinceDate:(id)date streamNames:(id)names limit:(unint64_t)limit endDate:(id *)endDate error:(id *)error;
- (void)setLastSyncDownDeletionDate:(id)date previousDate:(id)previousDate forPeer:(id)peer transportName:(id)name error:(id *)error;
@end

@implementation _DKSyncLocalKnowledgeStorage

- (id)sortedEventsFromSyncWindows:(id)windows streamNames:(id)names limit:(unint64_t)limit fetchOrder:(int64_t)order error:(id *)error
{
  namesCopy = names;
  windowsCopy = windows;
  v14 = +[_DKCompatibility currentCompatibility];
  v15 = [(_DKSyncLocalKnowledgeStorage *)self sortedEventsFromSyncWindows:windowsCopy streamNames:namesCopy compatibility:v14 limit:limit fetchOrder:order error:error];

  return v15;
}

- (id)sortedEventsFromSyncWindows:(id)windows streamNames:(id)names compatibility:(id)compatibility limit:(unint64_t)limit fetchOrder:(int64_t)order error:(id *)error
{
  v164 = *MEMORY[0x1E69E9840];
  windowsCopy = windows;
  namesCopy = names;
  compatibilityCopy = compatibility;
  if (error)
  {
    *error = 0;
  }

  if (![windowsCopy count] || !objc_msgSend(namesCopy, "count"))
  {
    v29 = 0;
    goto LABEL_49;
  }

  selfCopy = self;
  limitCopy = limit;
  errorCopy = error;
  v125 = windowsCopy;
  v128 = compatibilityCopy;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v16 = windowsCopy;
  v17 = [v16 countByEnumeratingWithState:&v135 objects:v163 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v136;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v136 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v135 + 1) + 8 * i);
        startDate = [(_DKSyncWindow *)v22 startDate];
        urgency = [(_DKSyncType *)v22 urgency];
        if (order == 2)
        {
          [_DKQuery predicateForEventsWithCreationInDateRangeFrom:startDate toBefore:urgency];
        }

        else
        {
          [_DKQuery predicateForEventsWithCreationInDateRangeFromAfter:startDate to:urgency];
        }
        v25 = ;

        if (v19)
        {
          v26 = MEMORY[0x1E696AB28];
          v162[0] = v19;
          v162[1] = v25;
          v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:2];
          v28 = [v26 orPredicateWithSubpredicates:v27];

          v19 = v28;
        }

        else
        {
          v19 = v25;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v135 objects:v163 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v30 = [_DKQuery predicateForEventsWithStreamNames:namesCopy];
  v31 = MEMORY[0x1E696AB28];
  v161[0] = v19;
  v123 = v30;
  v161[1] = v30;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:2];
  v33 = [v31 andPredicateWithSubpredicates:v32];

  v34 = +[_DKQuery predicateForEventsWithNullSourceDeviceID];
  v35 = MEMORY[0x1E696AB28];
  v160[0] = v33;
  v160[1] = v34;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:2];
  v37 = [v35 andPredicateWithSubpredicates:v36];

  v38 = +[_DKSystemEventStreams displayIsBacklit];
  name = [v38 name];

  v121 = name;
  v122 = v34;
  if ([namesCopy containsObject:name])
  {
    v119 = [_DKQuery predicateForEventsWithStreamName:name];
    v111 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v119];
    v40 = +[_DKAnyIntegerCategory type];
    v41 = [_DKCategory categoryWithInteger:1 type:v40];
    v116 = [_DKQuery predicateForEventsWithCategoryValue:v41];

    v113 = [_DKQuery predicateForEventsWithMinimumDuration:6.0];
    v42 = MEMORY[0x1E696AB28];
    v159[0] = v116;
    v159[1] = v113;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v159 count:2];
    v44 = [v42 andPredicateWithSubpredicates:v43];

    v45 = MEMORY[0x1E696AB28];
    v158[0] = v111;
    v158[1] = v44;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:2];
    v47 = [v45 orPredicateWithSubpredicates:v46];

    v48 = MEMORY[0x1E696AB28];
    v157[0] = v37;
    v157[1] = v47;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v157 count:2];
    v50 = [v48 andPredicateWithSubpredicates:v49];

    v37 = v50;
  }

  v51 = +[_DKSystemEventStreams nowPlayingStream];
  name2 = [v51 name];

  v120 = name2;
  if ([namesCopy containsObject:name2])
  {
    v117 = [_DKQuery predicateForEventsWithStreamName:name2];
    v53 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v117];
    v114 = [_DKQuery predicateForEventsWithStringValue:@"com.apple.quicklook.UIExtension"];
    v54 = +[_DKNowPlayingMetadataKey mediaType];
    v110 = [_DKQuery predicateForObjectsWithMetadataKey:v54 andStringValue:@"kMRMediaRemoteNowPlayingInfoTypeVideo"];

    v55 = +[_DKNowPlayingMetadataKey playing];
    v56 = [_DKQuery predicateForObjectsWithMetadataKey:v55 andIntegerValue:1];

    v57 = MEMORY[0x1E696AB28];
    v156[0] = v114;
    v156[1] = v110;
    v156[2] = v56;
    v58 = v56;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:3];
    v60 = [v57 andPredicateWithSubpredicates:v59];

    v61 = MEMORY[0x1E696AB28];
    v155[0] = v53;
    v155[1] = v60;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:2];
    v63 = [v61 orPredicateWithSubpredicates:v62];

    v64 = MEMORY[0x1E696AB28];
    v154[0] = v37;
    v154[1] = v63;
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:2];
    v66 = [v64 andPredicateWithSubpredicates:v65];

    v37 = v66;
  }

  v67 = +[_DKSystemEventStreams appActivityStream];
  name3 = [v67 name];

  v118 = name3;
  if ([namesCopy containsObject:name3])
  {
    v69 = [_DKQuery predicateForEventsWithStreamName:name3];
    v70 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v69];
    v71 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
    v72 = [_DKQuery predicateForObjectsWithMetadataKey:v71 andIntegerValue:1];

    v73 = MEMORY[0x1E696AB28];
    v153[0] = v70;
    v153[1] = v72;
    v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:2];
    v75 = [v73 orPredicateWithSubpredicates:v74];

    v76 = MEMORY[0x1E696AB28];
    v152[0] = v37;
    v152[1] = v75;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:2];
    v78 = v77 = v37;
    v79 = [v76 andPredicateWithSubpredicates:v78];

    v37 = v79;
  }

  v80 = +[_DKCompatibility currentCompatibility];
  v81 = [v128 isEqual:v80];

  if (v81)
  {
    v82 = 0x1E695D000;
  }

  else
  {
    eventPredicate = [v128 eventPredicate];
    v84 = MEMORY[0x1E696AB28];
    v151[0] = v37;
    v151[1] = eventPredicate;
    v82 = 0x1E695D000uLL;
    v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:2];
    v86 = [v84 andPredicateWithSubpredicates:v85];

    v37 = v86;
  }

  v115 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:order != 2];
  v150 = v115;
  v87 = [*(v82 + 3784) arrayWithObjects:&v150 count:1];
  v88 = [_DKEventQuery eventQueryWithPredicate:v37 eventStreams:0 offset:0 limit:limitCopy sortDescriptors:v87];
  v89 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKSyncLocalKnowledgeStorage.m"];
  v90 = [v89 stringByAppendingFormat:@":%d", 198];
  [v88 setClientName:v90];

  [v88 setTracker:&__block_literal_global_41];
  storage = selfCopy->_storage;
  v134 = 0;
  v29 = [(_DKKnowledgeStorage *)storage executeQuery:v88 error:&v134];
  v92 = v134;
  if (order == 2 && v29)
  {
    if (![v29 count])
    {
      goto LABEL_35;
    }

    reverseObjectEnumerator = [v29 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v29 = allObjects;
  }

  if (v29)
  {
LABEL_35:
    if ([v29 count])
    {
      v112 = v37;
      v95 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        v105 = [objc_opt_class() description];
        v106 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v29, "count")}];
        v107 = _DKSyncLoggingWindowsDescription(v16);
        v108 = _CDPrettyPrintCollection(namesCopy, 0, 0, 0);
        v109 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limitCopy];
        *buf = 138544386;
        v141 = v105;
        v142 = 2112;
        v143 = v106;
        v144 = 2114;
        v145 = v107;
        v146 = 2114;
        v147 = v108;
        v148 = 2112;
        v149 = v109;
        _os_log_debug_impl(&dword_191750000, v95, OS_LOG_TYPE_DEBUG, "%{public}@: Found %@ events in windows %{public}@ on streams %{public}@ with limit %@", buf, 0x34u);
      }

      v96 = objc_opt_new();
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v29 = v29;
      v97 = [v29 countByEnumeratingWithState:&v130 objects:v139 count:16];
      if (v97)
      {
        v98 = v97;
        v99 = *v131;
        do
        {
          for (j = 0; j != v98; ++j)
          {
            if (*v131 != v99)
            {
              objc_enumerationMutation(v29);
            }

            stream = [*(*(&v130 + 1) + 8 * j) stream];
            name4 = [stream name];
            [v96 addObject:name4];
          }

          v98 = [v29 countByEnumeratingWithState:&v130 objects:v139 count:16];
        }

        while (v98);
      }

      +[_DKSyncLocalKnowledgeStorage _updateEventStatsWithFetchEventsTotal:streamNameCounts:](_DKSyncLocalKnowledgeStorage, [v29 count], v96);
      v37 = v112;
    }
  }

  if (errorCopy)
  {
    v103 = v92;
    *errorCopy = v92;
  }

  windowsCopy = v125;
  compatibilityCopy = v128;
LABEL_49:

  return v29;
}

+ (void)_updateEventStatsWithFetchEventsTotal:(void *)total streamNameCounts:
{
  v20 = *MEMORY[0x1E69E9840];
  totalCopy = total;
  objc_opt_self();
  if (_updateEventStatsWithFetchEventsTotal_streamNameCounts__fetchEventsCounterInitialized != -1)
  {
    +[_DKSyncLocalKnowledgeStorage _updateEventStatsWithFetchEventsTotal:streamNameCounts:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithFetchEventsTotal_streamNameCounts__fetchEventsTotalCounter incrementCountByNumber:a2];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = totalCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [_updateEventStatsWithFetchEventsTotal_streamNameCounts__fetchEventsCountersByStreamName objectForKeyedSubscript:v10];
        if (!v11)
        {
          v12 = MEMORY[0x1E696AEC0];
          v13 = [_DKEventStatsUtilities safeStringWithString:v10];
          v14 = [v12 stringWithFormat:@"sync_fetch_local_events_stream%@", v13];

          v11 = [_DKEventStatsCounter counterInCollection:v14 withEventName:?];
          [_updateEventStatsWithFetchEventsTotal_streamNameCounts__fetchEventsCountersByStreamName setObject:v11 forKeyedSubscript:v10];
        }

        -[_DKEventStatsCounter incrementCountByNumber:](v11, [v5 countForObject:v10]);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)tombstonesSinceDate:(id)date streamNames:(id)names limit:(unint64_t)limit endDate:(id *)endDate error:(id *)error
{
  v97 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  namesCopy = names;
  v13 = namesCopy;
  if (error)
  {
    *error = 0;
  }

  if ([namesCopy count])
  {
    selfCopy = self;
    endDateCopy = endDate;
    errorCopy = error;
    v72 = dateCopy;
    v14 = objc_opt_new();
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v71 = v13;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v80 objects:v96 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v81;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v81 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v80 + 1) + 8 * i);
          v21 = +[_DKTombstoneMetadataKey eventStreamName];
          v22 = [_DKQuery predicateForObjectsWithMetadataKey:v21 andStringValue:v20];
          [v14 addObject:v22];
        }

        v17 = [v15 countByEnumeratingWithState:&v80 objects:v96 count:16];
      }

      while (v17);
    }

    v23 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v14];
    date = [MEMORY[0x1E695DF00] date];
    dateCopy = v72;
    v25 = [_DKQuery predicateForEventsWithCreationInDateRangeFromAfter:v72 to:date];
    v26 = MEMORY[0x1E696AB28];
    v68 = v25;
    v69 = v23;
    v95[0] = v23;
    v95[1] = v25;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
    v28 = [v26 andPredicateWithSubpredicates:v27];

    if (limit < 1)
    {
      v31 = 0;
    }

    else
    {
      v29 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v30 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
      v94[0] = v29;
      v94[1] = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:2];
    }

    v33 = +[_DKSystemEventStreams tombstoneStream];
    v93 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
    limitCopy = limit;
    v74 = v31;
    v36 = [_DKEventQuery eventQueryWithPredicate:v28 eventStreams:v34 offset:0 limit:limitCopy sortDescriptors:v31];

    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKSyncLocalKnowledgeStorage.m"];
    v38 = [v37 stringByAppendingFormat:@":%d", 272];
    [v36 setClientName:v38];

    v39 = v36;
    [v36 setTracker:&__block_literal_global_34];
    [v36 setReadMetadata:1];
    storage = selfCopy->_storage;
    v79 = 0;
    v32 = [(_DKKnowledgeStorage *)storage executeQuery:v36 error:&v79];
    v65 = v79;
    if (v65)
    {
      v41 = +[_CDLogging syncChannel];
      v42 = errorCopy;
      v43 = v65;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        [_DKSyncLocalKnowledgeStorage tombstonesSinceDate:selfCopy streamNames:v65 limit:? endDate:? error:?];
      }
    }

    else if ([v32 count])
    {
      v62 = v36;
      v63 = date;
      v44 = objc_opt_new();
      v45 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v58 = [objc_opt_class() description];
        v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v32, "count")}];
        dk_localtimeString = [(NSDate *)v72 dk_localtimeString];
        v61 = _CDPrettyPrintCollection(v15, 0, 0, 0);
        *buf = 138544130;
        v86 = v58;
        v87 = 2112;
        v88 = v59;
        v89 = 2114;
        v90 = dk_localtimeString;
        v91 = 2114;
        v92 = v61;
        _os_log_debug_impl(&dword_191750000, v45, OS_LOG_TYPE_DEBUG, "%{public}@: Found %@ tombstones since %{public}@ on streams %{public}@", buf, 0x2Au);
      }

      v67 = v28;

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v46 = v32;
      v47 = [v46 countByEnumeratingWithState:&v75 objects:v84 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v76;
        do
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v76 != v49)
            {
              objc_enumerationMutation(v46);
            }

            metadata = [*(*(&v75 + 1) + 8 * j) metadata];
            v52 = +[_DKTombstoneMetadataKey eventStreamName];
            v53 = [metadata objectForKeyedSubscript:v52];

            if (v53)
            {
              [v44 addObject:v53];
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v75 objects:v84 count:16];
        }

        while (v48);
      }

      if (endDateCopy)
      {
        lastObject = [v46 lastObject];
        *endDateCopy = [lastObject creationDate];
      }

      +[_DKSyncLocalKnowledgeStorage _updateEventStatsWithFetchTombstonesTotal:streamNameCounts:](_DKSyncLocalKnowledgeStorage, [v46 count], v44);

      dateCopy = v72;
      v31 = v74;
      v42 = errorCopy;
      v39 = v62;
      date = v63;
      v43 = 0;
      v28 = v67;
    }

    else
    {
      v42 = errorCopy;
      v43 = 0;
      if (endDateCopy)
      {
        v55 = date;
        *endDateCopy = date;
      }
    }

    v13 = v71;
    if (v42)
    {
      v56 = v43;
      *v42 = v43;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

+ (void)_updateEventStatsWithFetchTombstonesTotal:(void *)total streamNameCounts:
{
  v20 = *MEMORY[0x1E69E9840];
  totalCopy = total;
  objc_opt_self();
  if (_updateEventStatsWithFetchTombstonesTotal_streamNameCounts__fetchTombstonesCounterInitialized != -1)
  {
    +[_DKSyncLocalKnowledgeStorage _updateEventStatsWithFetchTombstonesTotal:streamNameCounts:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithFetchTombstonesTotal_streamNameCounts__fetchTombstonesTotalCounter incrementCountByNumber:a2];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = totalCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [_updateEventStatsWithFetchTombstonesTotal_streamNameCounts__fetchTombstonesCountersByStreamName objectForKeyedSubscript:v10];
        if (!v11)
        {
          v12 = MEMORY[0x1E696AEC0];
          v13 = [_DKEventStatsUtilities safeStringWithString:v10];
          v14 = [v12 stringWithFormat:@"sync_fetch_local_tombstones_stream%@", v13];

          v11 = [_DKEventStatsCounter counterInCollection:v14 withEventName:?];
          [_updateEventStatsWithFetchTombstonesTotal_streamNameCounts__fetchTombstonesCountersByStreamName setObject:v11 forKeyedSubscript:v10];
        }

        -[_DKEventStatsCounter incrementCountByNumber:](v11, [v5 countForObject:v10]);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)sortedSyncDownWindowsOverlappingBetweenDate:(id)date andDate:(id)andDate peer:(id)peer error:(id *)error
{
  v95[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  andDateCopy = andDate;
  if (error)
  {
    *error = 0;
  }

  errorCopy = error;
  sourceDeviceID = [peer sourceDeviceID];
  v12 = [_DKSyncMetadataStorage windowStreamNameWithSourceDeviceID:sourceDeviceID];

  v13 = +[_DKAnyStringIdentifier type];
  v69 = v12;
  v14 = [_DKEventStream eventStreamWithName:v12 valueType:v13];
  v95[0] = v14;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:1];

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE"];
  v16 = [_DKQuery predicateForEventsWithStartInDateRangeFrom:dateCopy to:andDateCopy];
  v17 = [_DKQuery predicateForEventsWithEndInDateRangeFrom:dateCopy to:andDateCopy];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v70 = dateCopy;
  v19 = [_DKQuery predicateForEventsWithStartInDateRangeFrom:distantPast to:dateCopy];

  v20 = v15;
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v22 = [_DKQuery predicateForEventsWithEndInDateRangeFrom:andDateCopy to:distantFuture];

  v23 = MEMORY[0x1E696AB28];
  v66 = v22;
  v67 = v19;
  v94[0] = v19;
  v94[1] = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:2];
  v25 = [v23 andPredicateWithSubpredicates:v24];

  v26 = MEMORY[0x1E696AB28];
  v68 = v16;
  v93[0] = v16;
  v93[1] = v17;
  v27 = v17;
  v93[2] = v25;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:3];
  v29 = [v26 orPredicateWithSubpredicates:v28];

  v30 = MEMORY[0x1E696AB28];
  v64 = v29;
  v92[0] = v29;
  v92[1] = v20;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
  v32 = [v30 andPredicateWithSubpredicates:v31];

  v33 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v34 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:1];
  v62 = v33;
  v91[0] = v33;
  v91[1] = v34;
  v35 = v74;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
  v63 = v32;
  v37 = [_DKEventQuery eventQueryWithPredicate:v32 eventStreams:v74 offset:0 limit:0x7FFFFFFFFFFFFFFFLL sortDescriptors:v36];

  v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKSyncLocalKnowledgeStorage.m"];
  v39 = [v38 stringByAppendingFormat:@":%d", 411];
  [v37 setClientName:v39];

  [v37 setTracker:&__block_literal_global_69];
  storage = self->_storage;
  v79 = 0;
  v41 = [(_DKKnowledgeStorage *)storage executeQuery:v37 error:&v79];
  v42 = v79;
  v65 = v25;
  v61 = v34;
  if (v42)
  {
    v43 = +[_CDLogging syncChannel];
    v44 = v69;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v55 = [objc_opt_class() description];
      [v42 domain];
      v56 = v73 = v20;
      code = [v42 code];
      *buf = 138544386;
      v81 = v55;
      v82 = 2114;
      v83 = v69;
      v84 = 2114;
      v85 = v56;
      v86 = 2048;
      v87 = code;
      v88 = 2112;
      v89 = v42;
      _os_log_error_impl(&dword_191750000, v43, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch missing additions window for stream %{public}@: %{public}@:%lld (%@)", buf, 0x34u);

      v20 = v73;
      v35 = v74;
    }

    v45 = v70;
    v46 = errorCopy;
    if (errorCopy)
    {
      v47 = v42;
      v46 = 0;
      *errorCopy = v42;
    }
  }

  else
  {
    v46 = objc_opt_new();
    if ([v41 count])
    {
      v58 = v27;
      v60 = andDateCopy;
      v72 = v20;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v48 = v41;
      v49 = [v48 countByEnumeratingWithState:&v75 objects:v90 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v76;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v76 != v51)
            {
              objc_enumerationMutation(v48);
            }

            v53 = [[_DKSyncWindow alloc] initWithEvent:?];
            [v46 addObject:v53];
          }

          v50 = [v48 countByEnumeratingWithState:&v75 objects:v90 count:16];
        }

        while (v50);
      }

      v44 = v69;
      v45 = v70;
      v27 = v58;
      andDateCopy = v60;
      v20 = v72;
      v35 = v74;
    }

    else
    {
      v44 = v69;
      v45 = v70;
    }
  }

  return v46;
}

- (BOOL)saveSyncedDownWindows:(id)windows peer:(id)peer transportName:(id)name error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  windowsCopy = windows;
  peerCopy = peer;
  nameCopy = name;
  v11 = peerCopy;
  sourceDeviceID = [peerCopy sourceDeviceID];
  v13 = [_DKSyncMetadataStorage windowStreamNameWithSourceDeviceID:sourceDeviceID];

  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(windowsCopy, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v15 = windowsCopy;
  v16 = [v15 countByEnumeratingWithState:&v51 objects:v69 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v52;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v52 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [_DKSyncMetadataStorage eventFromFetchedWindow:v13 windowStreamName:nameCopy transportName:?];
        if (v20)
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v51 objects:v69 count:16];
    }

    while (v17);
  }

  if ([v14 count])
  {
    storage = self->_storage;
    v50 = 0;
    v22 = [(_DKKnowledgeStorage *)storage saveObjects:v14 error:&v50];
    v23 = v50;
    v24 = +[_CDLogging syncChannel];
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
    if (v23 || !v22)
    {
      v26 = v11;
      if (v25)
      {
        v47 = [objc_opt_class() description];
        v29 = [v11 me];
        v30 = &stru_1F05B9908;
        v31 = @"pseudo ";
        if (!v29)
        {
          v31 = &stru_1F05B9908;
        }

        v42 = v31;
        identifier = [v11 identifier];
        model = [v11 model];
        if (model)
        {
          v36 = MEMORY[0x1E696AEC0];
          model2 = [v11 model];
          v30 = [v36 stringWithFormat:@" (%@)", model2];
        }

        domain = [v23 domain];
        code = [v23 code];
        *buf = 138544898;
        v56 = v47;
        v57 = 2114;
        v58 = v42;
        v59 = 2114;
        v60 = identifier;
        v61 = 2114;
        v62 = v30;
        v63 = 2114;
        v64 = domain;
        v65 = 2048;
        v66 = code;
        v67 = 2112;
        v68 = v23;
        _os_log_debug_impl(&dword_191750000, v24, OS_LOG_TYPE_DEBUG, "%{public}@: Failed to save additions windows for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

        if (model)
        {
        }
      }
    }

    else
    {
      v26 = v11;
      if (v25)
      {
        v48 = [objc_opt_class() description];
        v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
        v33 = &stru_1F05B9908;
        if ([v11 me])
        {
          v34 = @"pseudo ";
        }

        else
        {
          v34 = &stru_1F05B9908;
        }

        identifier2 = [v11 identifier];
        model3 = [v11 model];
        if (model3)
        {
          v39 = MEMORY[0x1E696AEC0];
          model2 = [v26 model];
          v33 = [v39 stringWithFormat:@" (%@)", model2];
        }

        v40 = _DKSyncLoggingWindowsDescription(v15);
        *buf = 138544642;
        v56 = v48;
        v57 = 2112;
        v58 = v45;
        v59 = 2114;
        v60 = v34;
        v61 = 2114;
        v62 = identifier2;
        v63 = 2114;
        v64 = v33;
        v65 = 2114;
        v66 = v40;
        _os_log_debug_impl(&dword_191750000, v24, OS_LOG_TYPE_DEBUG, "%{public}@: Saved %@ additions windows for %{public}@peer %{public}@%{public}@: windows %{public}@", buf, 0x3Eu);
        if (model3)
        {
        }
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = +[_DKSyncErrors internalFailure];
    v26 = v11;
  }

  if (error)
  {
    v27 = v23;
    *error = v23;
  }

  return v23 == 0;
}

- (id)lastSyncDownDeletionDateForPeer:(id)peer transportName:(id)name error:(id *)error
{
  v84[1] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  nameCopy = name;
  if (error)
  {
    *error = 0;
  }

  v63 = peerCopy;
  sourceDeviceID = [peerCopy sourceDeviceID];
  v66 = [_DKSyncMetadataStorage bookmarkStreamNameWithSourceDeviceID:sourceDeviceID];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (nameCopy)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"valueString == %@", nameCopy];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE"];
  }
  v65 = ;
  v11 = +[_DKAnyStringIdentifier type];
  v12 = [_DKEventStream eventStreamWithName:v66 valueType:v11];

  v62 = v12;
  v84[0] = v12;
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:0];
  v83[0] = v13;
  v83[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
  v16 = [_DKEventQuery eventQueryWithPredicate:v65 eventStreams:v64 offset:0 limit:1 sortDescriptors:v15];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKSyncLocalKnowledgeStorage.m"];
  v18 = [v17 stringByAppendingFormat:@":%d", 511];
  [v16 setClientName:v18];

  [v16 setTracker:&__block_literal_global_85];
  storage = selfCopy->_storage;
  v68 = 0;
  v20 = [(_DKKnowledgeStorage *)storage executeQuery:v16 error:&v68];
  v21 = v68;
  if (v21)
  {
    v22 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v56 = [objc_opt_class() description];
      v30 = [v63 me];
      v31 = &stru_1F05B9908;
      if (v30)
      {
        v31 = @"pseudo ";
      }

      v45 = v31;
      identifier = [v63 identifier];
      model = [v63 model];
      if (model)
      {
        v49 = MEMORY[0x1E696AEC0];
        model2 = [v63 model];
        v48 = [v49 stringWithFormat:@" (%@)", model2];
      }

      else
      {
        v48 = &stru_1F05B9908;
      }

      domain = [v21 domain];
      code = [v21 code];
      *buf = 138544898;
      v70 = v56;
      v71 = 2114;
      v72 = v45;
      v73 = 2114;
      v74 = identifier;
      v75 = 2114;
      v76 = v48;
      v77 = 2114;
      v78 = domain;
      v79 = 2048;
      v80 = code;
      v81 = 2112;
      v82 = v21;
      _os_log_debug_impl(&dword_191750000, v22, OS_LOG_TYPE_DEBUG, "%{public}@: Failed to find deletions bookmark for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

      if (model)
      {
      }
    }

    if (error)
    {
      v23 = v21;
      endDate = 0;
      *error = v21;
      goto LABEL_17;
    }

LABEL_16:
    endDate = 0;
    goto LABEL_17;
  }

  if (!v20 || ![v20 count])
  {
    v27 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v54 = [objc_opt_class() description];
      v34 = [v63 me];
      v35 = &stru_1F05B9908;
      if (v34)
      {
        v35 = @"pseudo ";
      }

      v50 = v35;
      identifier2 = [v63 identifier];
      model3 = [v63 model];
      if (model3)
      {
        v40 = MEMORY[0x1E696AEC0];
        model4 = [v63 model];
        v36 = [v40 stringWithFormat:@" (%@)", model4];
        v44 = model4;
      }

      else
      {
        v36 = &stru_1F05B9908;
      }

      *buf = 138544130;
      v70 = v54;
      v71 = 2114;
      v72 = v50;
      v73 = 2114;
      v74 = identifier2;
      v75 = 2114;
      v76 = v36;
      _os_log_debug_impl(&dword_191750000, v27, OS_LOG_TYPE_DEBUG, "%{public}@: No deletions bookmark found for %{public}@peer %{public}@%{public}@", buf, 0x2Au);
      if (model3)
      {
      }
    }

    goto LABEL_16;
  }

  firstObject = [v20 firstObject];
  endDate = [firstObject endDate];

  v26 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    model6 = v63;
    v58 = [objc_opt_class() description];
    v38 = [v63 me];
    v39 = &stru_1F05B9908;
    if (v38)
    {
      v39 = @"pseudo ";
    }

    v51 = v39;
    identifier3 = [v63 identifier];
    model5 = [v63 model];
    if (model5)
    {
      v47 = MEMORY[0x1E696AEC0];
      model6 = [v63 model];
      v46 = [v47 stringWithFormat:@" (%@)", model6];
    }

    else
    {
      v46 = &stru_1F05B9908;
    }

    dk_localtimeString = [(NSDate *)endDate dk_localtimeString];
    *buf = 138544642;
    v70 = v58;
    v71 = 2114;
    v72 = v51;
    v73 = 2114;
    v74 = identifier3;
    v75 = 2114;
    v76 = v46;
    v77 = 2114;
    v78 = nameCopy;
    v79 = 2112;
    v52 = dk_localtimeString;
    v80 = dk_localtimeString;
    _os_log_debug_impl(&dword_191750000, v26, OS_LOG_TYPE_DEBUG, "%{public}@: Found saved deletions bookmark for %{public}@peer %{public}@%{public}@ on  %{public}@: %@", buf, 0x3Eu);
    if (model5)
    {
    }
  }

LABEL_17:
  objc_sync_exit(selfCopy);

  v28 = endDate;
  return endDate;
}

- (void)setLastSyncDownDeletionDate:(id)date previousDate:(id)previousDate forPeer:(id)peer transportName:(id)name error:(id *)error
{
  v77 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  previousDateCopy = previousDate;
  peerCopy = peer;
  nameCopy = name;
  v14 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v57 = [objc_opt_class() description];
    dk_localtimeString = [(NSDate *)previousDateCopy dk_localtimeString];
    dk_localtimeString2 = [(NSDate *)dateCopy dk_localtimeString];
    if ([peerCopy me])
    {
      v31 = @"pseudo ";
    }

    else
    {
      v31 = &stru_1F05B9908;
    }

    identifier = [peerCopy identifier];
    model = [peerCopy model];
    if (model)
    {
      v35 = MEMORY[0x1E696AEC0];
      model2 = [peerCopy model];
      v34 = [v35 stringWithFormat:@" (%@)", model2];
    }

    else
    {
      v34 = &stru_1F05B9908;
    }

    *buf = 138544898;
    v64 = v57;
    v65 = 2114;
    v66 = dk_localtimeString;
    v67 = 2114;
    v68 = dk_localtimeString2;
    v69 = 2114;
    v70 = v31;
    v71 = 2114;
    v72 = identifier;
    v73 = 2114;
    v74 = v34;
    v75 = 2114;
    v76 = nameCopy;
    _os_log_debug_impl(&dword_191750000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Setting last sync down deletion bookmark [%{public}@ ending %{public}@] for %{public}@peer %{public}@%{public}@ on %{public}@", buf, 0x48u);
    if (model)
    {
    }
  }

  if (error)
  {
    *error = 0;
  }

  sourceDeviceID = [peerCopy sourceDeviceID];
  v16 = [_DKSyncMetadataStorage bookmarkStreamNameWithSourceDeviceID:sourceDeviceID];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = +[_DKAnyStringIdentifier type];
  v19 = [_DKEventStream eventStreamWithName:v16 valueType:v18];

  v20 = [_DKEvent eventWithStream:v19 startDate:previousDateCopy endDate:dateCopy identifierStringValue:nameCopy metadata:0];
  v21 = v20;
  if (v20)
  {
    storage = selfCopy->_storage;
    v62 = v20;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
    v61 = 0;
    v24 = [(_DKKnowledgeStorage *)storage saveObjects:v23 error:&v61];
    v25 = v61;

    if (v25 == 0 || v24)
    {
      v26 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v53 = [objc_opt_class() description];
        v27 = [peerCopy me];
        v28 = &stru_1F05B9908;
        if (v27)
        {
          v28 = @"pseudo ";
        }

        v47 = v28;
        identifier2 = [peerCopy identifier];
        model3 = [peerCopy model];
        if (model3)
        {
          v38 = MEMORY[0x1E696AEC0];
          model4 = [peerCopy model];
          v29 = [v38 stringWithFormat:@" (%@)", model4];
        }

        else
        {
          v29 = &stru_1F05B9908;
        }

        dk_localtimeString3 = [(NSDate *)dateCopy dk_localtimeString];
        *buf = 138544386;
        v64 = v53;
        v65 = 2114;
        v66 = v47;
        v67 = 2114;
        v68 = identifier2;
        v69 = 2114;
        v70 = v29;
        v71 = 2112;
        v49 = dk_localtimeString3;
        v72 = dk_localtimeString3;
        _os_log_debug_impl(&dword_191750000, v26, OS_LOG_TYPE_DEBUG, "%{public}@: Saved deletions bookmark for %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
        if (model3)
        {
        }
      }
    }

    else
    {
      v26 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v55 = [objc_opt_class() description];
        v36 = [peerCopy me];
        v37 = &stru_1F05B9908;
        if (v36)
        {
          v37 = @"pseudo ";
        }

        v45 = v37;
        identifier3 = [peerCopy identifier];
        model5 = [peerCopy model];
        if (model5)
        {
          v40 = MEMORY[0x1E696AEC0];
          model6 = [peerCopy model];
          v48 = [v40 stringWithFormat:@" (%@)", model6];
        }

        else
        {
          v48 = &stru_1F05B9908;
        }

        domain = [v25 domain];
        code = [v25 code];
        *buf = 138544898;
        v64 = v55;
        v65 = 2114;
        v66 = v45;
        v67 = 2114;
        v68 = identifier3;
        v69 = 2114;
        v70 = v48;
        v71 = 2114;
        v72 = domain;
        v73 = 2048;
        v74 = code;
        v75 = 2112;
        v76 = v25;
        _os_log_debug_impl(&dword_191750000, v26, OS_LOG_TYPE_DEBUG, "%{public}@: Failed to save deletions bookmark for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

        if (model5)
        {
        }
      }
    }
  }

  else
  {
    v25 = +[_DKSyncErrors internalFailure];
  }

  objc_sync_exit(selfCopy);
  if (error)
  {
    v30 = v25;
    *error = v25;
  }
}

- (BOOL)saveEvents:(id)events error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  storage = self->_storage;
  v19 = 0;
  v8 = [(_DKKnowledgeStorage *)storage saveObjects:eventsCopy error:&v19];
  v9 = v19;
  v10 = v9;
  if (error && v9)
  {
    v11 = v9;
    *error = v10;
  }

  v12 = +[_CDLogging syncChannel];
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_DKSyncLocalKnowledgeStorage saveEvents:eventsCopy error:?];
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_opt_class() description];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(eventsCopy, "count")}];
    domain = [v10 domain];
    code = [v10 code];
    *buf = 138544386;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    v24 = 2114;
    v25 = domain;
    v26 = 2048;
    v27 = code;
    v28 = 2112;
    v29 = v10;
    _os_log_error_impl(&dword_191750000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save %@ events: %{public}@:%lld (%@)", buf, 0x34u);
  }

  return v8;
}

- (BOOL)deleteEventsWithEventIDs:(id)ds error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
  }

  v5 = [MEMORY[0x1E695DFD8] setWithArray:ds];
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(uuid IN %@)", v5];
    v7 = [(_DKKnowledgeStorage *)self->_storage deleteEventsMatchingPredicate:v6 limit:0x7FFFFFFFFFFFFFFFLL];
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_DKSyncLocalKnowledgeStorage deleteEventsWithEventIDs:v6 error:?];
    }

    v9 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = [objc_opt_class() description];
      *buf = 138543874;
      v13 = v11;
      v14 = 2048;
      v15 = v7;
      v16 = 2048;
      v17 = [v5 count];
      _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: Deleted %lu events from %lu specified", buf, 0x20u);
    }
  }

  return 1;
}

- (id)initWithKnowledgeStorage:(id *)storage
{
  v4 = a2;
  if (storage)
  {
    v7.receiver = storage;
    v7.super_class = _DKSyncLocalKnowledgeStorage;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    storage = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return storage;
}

- (_DKSyncHistory)syncHistoryForPeer:(void *)peer streamName:(void *)name transportName:(void *)transportName type:(unint64_t *)type error:
{
  typeCopy = type;
  v204[1] = *MEMORY[0x1E69E9840];
  model2 = a2;
  nameCopy = name;
  v178 = model2;
  transportNameCopy = transportName;
  v176 = nameCopy;
  if (!self)
  {
    v63 = 0;
    goto LABEL_36;
  }

  peerCopy = peer;
  v14 = +[_CDLogging syncChannel];
  v15 = &stru_1F05B9908;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v65 = nameCopy;
    v66 = [objc_opt_class() description];
    if ([model2 me])
    {
      v67 = @"pseudo ";
    }

    else
    {
      v67 = &stru_1F05B9908;
    }

    identifier = [model2 identifier];
    model = [model2 model];
    if (model)
    {
      v75 = MEMORY[0x1E696AEC0];
      model2 = [model2 model];
      v15 = [v75 stringWithFormat:@" (%@)", model2];
    }

    *buf = 138544642;
    v185 = v66;
    v186 = 2114;
    v187 = transportNameCopy;
    v188 = 2114;
    v189 = v67;
    v190 = 2114;
    v191 = identifier;
    v192 = 2114;
    v193 = v15;
    v194 = 2114;
    nameCopy = v65;
    v195 = v65;
    _os_log_debug_impl(&dword_191750000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Fetching %{public}@ sync history for %{public}@peer %{public}@%{public}@ on %{public}@", buf, 0x3Eu);
    if (model)
    {
    }
  }

  v16 = +[_DKAnyStringIdentifier type];
  v17 = [_DKEventStream eventStreamWithName:peerCopy valueType:v16];

  v172 = v17;
  v204[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v204 count:1];
  v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-86400.0];
  date = [MEMORY[0x1E695DF00] date];
  v170 = v19;
  v20 = [_DKQuery predicateForEventsWithCreationInDateRangeFromAfter:v19 to:?];
  v21 = v20;
  v166 = v20;
  if (nameCopy)
  {
    nameCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"valueString == %@", nameCopy];
    v22 = MEMORY[0x1E696AB28];
    v203[0] = v21;
    v203[1] = nameCopy;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v203 count:2];
    v24 = [v22 andPredicateWithSubpredicates:v23];
  }

  else
  {
    v24 = v20;
  }

  v181 = v18;
  v25 = [_DKEventQuery eventQueryWithPredicate:v24 eventStreams:v18 offset:0 limit:0x7FFFFFFFFFFFFFFFLL sortDescriptors:0];
  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKSyncLocalKnowledgeStorage.m"];
  v129 = 615;
  v27 = [v26 stringByAppendingFormat:@":%d"];
  [v25 setClientName:v27];

  [v25 setTracker:&__block_literal_global_88];
  [v25 setResultType:1];
  v28 = *(self + 8);
  v183 = 0;
  v29 = [v28 executeQuery:v25 error:&v183];
  v30 = v183;
  v164 = v29;
  if (v30)
  {
    v31 = v30;
    distantPast = +[_CDLogging syncChannel];
    if (os_log_type_enabled(distantPast, OS_LOG_TYPE_ERROR))
    {
      v69 = [objc_opt_class() description];
      v70 = [v178 me];
      v71 = &stru_1F05B9908;
      if (v70)
      {
        v71 = @"pseudo ";
      }

      v162 = v71;
      identifier2 = [v178 identifier];
      model3 = [v178 model];
      if (model3)
      {
        v76 = MEMORY[0x1E696AEC0];
        model4 = [v178 model];
        v155 = [v76 stringWithFormat:@" (%@)", model4];
      }

      else
      {
        v155 = &stru_1F05B9908;
      }

      domain = [v31 domain];
      [v31 code];
      OUTLINED_FUNCTION_0_13();
      v189 = v162;
      v190 = v78;
      v191 = identifier2;
      v192 = v78;
      v193 = v155;
      v194 = v78;
      v195 = domain;
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_6_8(&dword_191750000, v79, v80, "%{public}@: Failed to fetch %{public}@ sync count for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", v81, v82, v83, v84, v129, model8, v133, v136, v140, v143, v148, log, model4, v162, v164, v166, date, v170, v172, typeCopy, v176, v178, transportNameCopy, v181, v182, v183);

      if (model3)
      {
      }
    }

    v33 = 0;
LABEL_32:

    v49 = v24;
    v52 = v25;
    goto LABEL_33;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = +[_CDLogging syncChannel];
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v36 = [objc_opt_class() description];
    v44 = OUTLINED_FUNCTION_5_4(v36, v37, v38, v39, v40, v41, v42, v43, 615, model8, v133, v136, v140, v143, v148, log, model4, identifier3, v164, v166, date, v170, v172, typeCopy, v176, v178);
    v45 = @"pseudo ";
    if (!v44)
    {
      v45 = &stru_1F05B9908;
    }

    model4 = v45;
    identifier3 = [v27 identifier];
    model5 = [v27 model];
    if (model5)
    {
      v148 = MEMORY[0x1E696AEC0];
      log = [v27 model];
      v47 = [v148 stringWithFormat:@" (%@)", log];
    }

    else
    {
      v47 = &stru_1F05B9908;
    }

    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_8();
    v108 = "%{public}@: Failed to fetch %{public}@ sync count for %{public}@peer %{public}@%{public}@ due to invalid type";
LABEL_90:
    _os_log_error_impl(&dword_191750000, v34, OS_LOG_TYPE_ERROR, v108, buf, 0x34u);
    if (model5)
    {
    }

    goto LABEL_18;
  }

  if ([v29 count])
  {
    v34 = [v29 objectAtIndexedSubscript:0];
    integerValue = [v34 integerValue];
    goto LABEL_19;
  }

  v34 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v115 = [objc_opt_class() description];
    v123 = OUTLINED_FUNCTION_5_4(v115, v116, v117, v118, v119, v120, v121, v122, 615, model8, v133, v136, v140, v143, v148, log, model4, identifier3, v164, v166, date, v170, v172, typeCopy, v176, v178);
    v124 = @"pseudo ";
    if (!v123)
    {
      v124 = &stru_1F05B9908;
    }

    model4 = v124;
    identifier3 = [v27 identifier];
    model5 = [v27 model];
    if (model5)
    {
      v148 = MEMORY[0x1E696AEC0];
      log = [v27 model];
      v47 = [v148 stringWithFormat:@" (%@)", log];
    }

    else
    {
      v47 = &stru_1F05B9908;
    }

    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_8();
    v108 = "%{public}@: Failed to fetch %{public}@ sync count for %{public}@peer %{public}@%{public}@ due to missing value";
    goto LABEL_90;
  }

LABEL_18:
  integerValue = 0;
LABEL_19:

  if (nameCopy)
  {
    v48 = nameCopy;
  }

  else
  {
    v48 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE"];
  }

  v49 = v48;

  v50 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v202 = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v202 count:1];
  v52 = [_DKEventQuery eventQueryWithPredicate:v49 eventStreams:v181 offset:0 limit:1 sortDescriptors:v51];

  v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKSyncLocalKnowledgeStorage.m"];
  v54 = [v53 stringByAppendingFormat:@":%d"];
  [v52 setClientName:v54];

  [v52 setTracker:&__block_literal_global_91];
  v55 = *(self + 8);
  v182 = 0;
  v56 = [v55 executeQuery:v52 error:&v182];
  v31 = v182;
  if (v31)
  {
    lastObject = +[_CDLogging syncChannel];
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
    {
      v85 = [objc_opt_class() description];
      v93 = OUTLINED_FUNCTION_5_4(v85, v86, v87, v88, v89, v90, v91, v92, 645, model8, v133, v136, v140, v143, v148, log, model4, identifier3, v164, v166, date, v170, v172, typeCopy, v176, v178);
      v94 = @"pseudo ";
      if (!v93)
      {
        v94 = &stru_1F05B9908;
      }

      v149 = v94;
      identifier4 = [0x1E7366000 identifier];
      loga = [0x1E7366000 model];
      if (loga)
      {
        v159 = MEMORY[0x1E696AEC0];
        model6 = [0x1E7366000 model];
        v144 = [v159 stringWithFormat:@" (%@)", model6];
      }

      else
      {
        v144 = &stru_1F05B9908;
      }

      domain2 = [v31 domain];
      [v31 code];
      OUTLINED_FUNCTION_0_13();
      v189 = v149;
      v190 = v101;
      v191 = identifier4;
      v192 = v101;
      v193 = v144;
      v194 = v101;
      v195 = domain2;
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_6_8(&dword_191750000, v102, v103, "%{public}@: Failed to fetch last %{public}@ sync date for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", v104, v105, v106, v107, v130, v132, v134, v137, v141, model6, v149, loga, v144, identifier4, v165, v167, v169, v171, v173, v175, v177, v179, transportNameCopy, v181, v182, v183);

      if (logb)
      {
      }
    }

    v33 = 0;
LABEL_28:

    goto LABEL_29;
  }

  if ([v56 count])
  {
    v156 = v56;
    identifier3 = v50;
    lastObject = [v56 lastObject];
    creationDate = [lastObject creationDate];
    v33 = [[_DKSyncHistory alloc] initWithLastSyncDate:creationDate lastDaySyncCount:integerValue];
    v59 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v150 = creationDate;
      logc = v59;
      v138 = integerValue;
      v111 = [objc_opt_class() description];
      v112 = [v178 me];
      v113 = @"pseudo ";
      if (!v112)
      {
        v113 = &stru_1F05B9908;
      }

      v135 = v113;
      identifier5 = [v178 identifier];
      model7 = [v178 model];
      if (model7)
      {
        v147 = MEMORY[0x1E696AEC0];
        model8 = [v178 model];
        v131 = [v147 stringWithFormat:@" (%@)", model8];
      }

      else
      {
        v131 = &stru_1F05B9908;
      }

      dk_localtimeString = [(NSDate *)creationDate dk_localtimeString];
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v138];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_0_13();
      v189 = v135;
      v190 = v126;
      v191 = identifier5;
      v192 = v126;
      v193 = v131;
      v194 = v126;
      v195 = v176;
      v196 = v126;
      v139 = dk_localtimeString;
      v197 = dk_localtimeString;
      v198 = 2112;
      v199 = v127;
      v128 = v127;
      v200 = 2112;
      v201 = v33;
      _os_log_debug_impl(&dword_191750000, logc, OS_LOG_TYPE_DEBUG, "%{public}@: Found %{public}@ sync history for %{public}@peer %{public}@%{public}@ on %{public}@ with last sync date of %{public}@ and with %@ syncs in the previous day: %@", buf, 0x5Cu);

      if (model7)
      {
      }

      creationDate = v150;
      v59 = logc;
    }

    v56 = v156;
    v50 = identifier3;
    goto LABEL_28;
  }

  v33 = 0;
LABEL_29:

  if (!(v31 | v33))
  {
    v60 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      v95 = [objc_opt_class() description];
      if ([v178 me])
      {
        v96 = @"pseudo ";
      }

      else
      {
        v96 = &stru_1F05B9908;
      }

      identifier6 = [v178 identifier];
      model9 = [v178 model];
      if (model9)
      {
        v109 = MEMORY[0x1E696AEC0];
        identifier3 = [v178 model];
        v161 = [v109 stringWithFormat:@" (%@)", identifier3];
      }

      else
      {
        v161 = &stru_1F05B9908;
      }

      OUTLINED_FUNCTION_0_13();
      v189 = v96;
      v190 = v110;
      v191 = identifier6;
      v192 = v110;
      v193 = v161;
      _os_log_debug_impl(&dword_191750000, v60, OS_LOG_TYPE_DEBUG, "%{public}@: No %{public}@ sync history for %{public}@peer %{public}@%{public}@", buf, 0x34u);
      if (model9)
      {
      }
    }

    v61 = [_DKSyncHistory alloc];
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v33 = [(_DKSyncHistory *)v61 initWithLastSyncDate:distantPast lastDaySyncCount:0];
    v31 = 0;
    v24 = v49;
    v25 = v52;
    goto LABEL_32;
  }

LABEL_33:
  if (typeCopy)
  {
    v62 = v31;
    *typeCopy = v31;
  }

  v63 = v33;

LABEL_36:

  return v63;
}

- (id)additionsSyncHistoryForPeer:(id)peer transportName:(id)name error:(id *)error
{
  nameCopy = name;
  peerCopy = peer;
  sourceDeviceID = [peerCopy sourceDeviceID];
  v9 = [_DKSyncMetadataStorage windowStreamNameWithSourceDeviceID:sourceDeviceID];

  v10 = OUTLINED_FUNCTION_4_8();
  v16 = [(_DKSyncLocalKnowledgeStorage *)v10 syncHistoryForPeer:v11 streamName:v12 transportName:v13 type:v14 error:v15];

  return v16;
}

- (id)deletionsSyncHistoryForPeer:(id)peer transportName:(id)name error:(id *)error
{
  nameCopy = name;
  peerCopy = peer;
  sourceDeviceID = [peerCopy sourceDeviceID];
  v9 = [_DKSyncMetadataStorage bookmarkStreamNameWithSourceDeviceID:sourceDeviceID];

  v10 = OUTLINED_FUNCTION_4_8();
  v16 = [(_DKSyncLocalKnowledgeStorage *)v10 syncHistoryForPeer:v11 streamName:v12 transportName:v13 type:v14 error:v15];

  return v16;
}

- (void)tombstonesSinceDate:(uint64_t)a1 streamNames:(void *)a2 limit:endDate:error:.cold.1(uint64_t a1, void *a2)
{
  v3 = [objc_opt_class() description];
  v9 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);
}

- (void)saveEvents:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v3 = [objc_opt_class() description];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)deleteEventsWithEventIDs:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v7 = [objc_opt_class() description];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end