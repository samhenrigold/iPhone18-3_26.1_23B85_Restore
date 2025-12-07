@interface PPLocalEventStore
+ (id)defaultStore;
- (BOOL)iterEventNameRecordsForClient:(id)client error:(id *)error block:(id)block;
- (PPLocalEventStore)init;
- (PPLocalEventStore)initWithTrialWrapper:(id)wrapper eventStorage:(id)storage;
- (double)_scoreForSecondsRelativeToNow:(double)now;
- (id)customObjectForKey:(id)key eventIdentifier:(id)identifier;
- (id)eventHighlightsFrom:(id)from to:(id)to options:(int)options;
- (id)eventNameRecordsForClient:(id)client error:(id *)error;
- (id)eventsFromDate:(id)date toDate:(id)toDate;
- (id)nlEventsFromDate:(id)date toDate:(id)toDate;
- (id)resolveEventNameRecordChanges:(id)changes client:(id)client error:(id *)error;
- (id)scoredEventsWithQuery:(id)query;
- (uint64_t)_isEventQueryRangeValidWithInterval:(double)interval andDuration:(double)duration;
- (void)_clearAndReloadAllCachesAndData;
- (void)_preloadEvents;
- (void)clearCaches;
- (void)enumerateEventsFromEKObjectIDs:(id)ds expandingRecurrencesInRange:(id)range usingBlock:(id)block;
- (void)registerFeedback:(id)feedback completion:(id)completion;
@end

@implementation PPLocalEventStore

+ (id)defaultStore
{
  if (defaultStore__pasOnceToken10 != -1)
  {
    dispatch_once(&defaultStore__pasOnceToken10, &__block_literal_global_132);
  }

  v3 = defaultStore__pasExprOnceResult_16400;

  return v3;
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  completionCopy = completion;
  v7 = pp_events_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138739971;
    v11 = feedbackCopy;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "Event feedback received: %{sensitive}@", &v10, 0xCu);
  }

  feedbackItems = [feedbackCopy feedbackItems];
  v9 = [feedbackItems count];

  if (v9)
  {
    [PPFeedbackStorage logFeedback:feedbackCopy domain:3 domainStatus:2 inBackground:0];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (id)scoredEventsWithQuery:(id)query
{
  v74 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v5 = pp_events_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v73 = queryCopy;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore: scoredEventsWithQuery: %@", buf, 0xCu);
  }

  v6 = +[PPSettings sharedInstance];
  v7 = [v6 bundleIdentifierIsEnabledForDonation:*MEMORY[0x277D3A5F0]];

  if ((v7 & 1) == 0)
  {
    v22 = pp_events_log_handle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore: ScoredEvents disabled due to settings", buf, 2u);
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = queryCopy;
    v65 = queryCopy;
    if (self)
    {
      v66 = objc_opt_new();
      fromDate = [v8 fromDate];
      toDate = [v8 toDate];
      v11 = fromDate;
      v12 = toDate;
      [v11 timeIntervalSinceReferenceDate];
      v14 = v13;
      [v12 timeIntervalSinceDate:v11];
      v16 = v15;
      if ([(PPLocalEventStore *)self _isEventQueryRangeValidWithInterval:v17 andDuration:v14, v15])
      {
        v18 = PPNewEKEventStore();
        v19 = [(PPEventStorage *)self->_storage suggestedEventsInRange:v14 ekStore:v16, v18];
        v20 = objc_opt_new();
        v21 = [MEMORY[0x277D3A390] convertBatchOfEKEvents:v19 calendarInternPool:v20];
      }

      else
      {
        v21 = MEMORY[0x277CBEBF8];
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v24 = v21;
      v48 = [v24 countByEnumeratingWithState:&v67 objects:buf count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v68;
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v68 != v50)
            {
              objc_enumerationMutation(v24);
            }

            v52 = *(*(&v67 + 1) + 8 * i);
            if ([v52 suggestedEventCategory])
            {
              matchingCategories = [v8 matchingCategories];
              if (!matchingCategories || (v54 = matchingCategories, [v8 matchingCategories], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedChar:", objc_msgSend(v52, "suggestedEventCategory")), v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v55, "containsObject:", v56), v56, v55, v54, v57))
              {
                v58 = [objc_alloc(MEMORY[0x277D3A4F8]) initWithPPEvent:v52];
                if (v58)
                {
                  [v66 addObject:v58];
                }
              }
            }
          }

          v49 = [v24 countByEnumeratingWithState:&v67 objects:buf count:16];
        }

        while (v49);
      }

LABEL_47:
LABEL_48:

      queryCopy = v65;
      goto LABEL_49;
    }

    goto LABEL_54;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = queryCopy;
      v65 = queryCopy;
      if (self)
      {
        v24 = objc_opt_new();
        fromDate2 = [v8 fromDate];
        v26 = [fromDate2 dateByAddingTimeInterval:-10368000.0];

        v64 = v8;
        toDate2 = [v8 toDate];
        v28 = [toDate2 dateByAddingTimeInterval:10368000.0];

        [v26 timeIntervalSinceReferenceDate];
        v30 = v29;
        v63 = v28;
        [v28 timeIntervalSinceDate:v26];
        v32 = v31;
        v62 = PPNewEKEventStore();
        v33 = [(PPEventStorage *)self->_storage suggestedEventsInRange:v30 ekStore:v32];
        v34 = pp_events_log_handle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v33 count];
          *buf = 134217984;
          v73 = v35;
          _os_log_impl(&dword_23224A000, v34, OS_LOG_TYPE_DEFAULT, "[PPLocalEventStore tripEventsWithQuery] Found %lu suggested events in the given range", buf, 0xCu);
        }

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v36 = v33;
        v37 = [v36 countByEnumeratingWithState:&v67 objects:buf count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v68;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v68 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v67 + 1) + 8 * j);
              v42 = +[PPTripAggregator keyForCategory:](PPTripAggregator, "keyForCategory:", [v41 pp_suggestedCategory]);
              if (v42)
              {
                v43 = [v24 objectForKeyedSubscript:v42];

                if (v43)
                {
                  v44 = [v24 objectForKeyedSubscript:v42];
                  v45 = [v44 arrayByAddingObject:v41];
                  [v24 setObject:v45 forKey:v42];
                }

                else
                {
                  v71 = v41;
                  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
                  [v24 setObject:v44 forKey:v42];
                }
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v67 objects:buf count:16];
          }

          while (v38);
        }

        v8 = v64;
        fromDate3 = [v64 fromDate];
        toDate3 = [v64 toDate];
        v66 = [PPTripAggregator tripEventsWithEvents:v24 from:fromDate3 to:toDate3];

        goto LABEL_47;
      }

LABEL_54:
      v66 = 0;
      goto LABEL_48;
    }

    v22 = pp_events_log_handle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      *buf = 138412290;
      v73 = v61;
      _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, "Unsupport event query object of class: %@", buf, 0xCu);
    }

LABEL_10:

    v66 = MEMORY[0x277CBEBF8];
    goto LABEL_49;
  }

  v23 = MEMORY[0x277CBEBF8];
  if (!self)
  {
    v23 = 0;
  }

  v66 = v23;
LABEL_49:

  return v66;
}

- (uint64_t)_isEventQueryRangeValidWithInterval:(double)interval andDuration:(double)duration
{
  v10 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (interval < 0.0)
    {
      v5 = pp_events_log_handle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 134217984;
        durationCopy = interval;
        v6 = "PPLocalEventStore: from date appears to be before the reference date(interval = %f) which is unsupported.";
LABEL_11:
        _os_log_error_impl(&dword_23224A000, v5, OS_LOG_TYPE_ERROR, v6, &v8, 0xCu);
        goto LABEL_7;
      }

      goto LABEL_7;
    }

    if (duration < 0.0)
    {
      v5 = pp_events_log_handle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 134217984;
        durationCopy = duration;
        v6 = "PPLocalEventStore: to date appears to be before from date(duration = %f) which is unsupported.";
        goto LABEL_11;
      }

LABEL_7:

      return 0;
    }

    return 1;
  }

  return result;
}

- (id)nlEventsFromDate:(id)date toDate:(id)toDate
{
  dateCopy = date;
  toDateCopy = toDate;
  [dateCopy timeIntervalSinceReferenceDate];
  v9 = v8;
  [toDateCopy timeIntervalSinceDate:dateCopy];
  v11 = v10;
  if ([(PPLocalEventStore *)self _isEventQueryRangeValidWithInterval:v12 andDuration:v9, v10])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__16315;
    v21 = __Block_byref_object_dispose__16316;
    v22 = 0;
    storage = self->_storage;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __45__PPLocalEventStore_nlEventsFromDate_toDate___block_invoke;
    v16[3] = &unk_278976620;
    v16[6] = v9;
    v16[7] = v11;
    v16[4] = self;
    v16[5] = &v17;
    [(PPEventStorage *)storage runBlockWithPurgerDisabled:v16];
    v14 = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

void __45__PPLocalEventStore_nlEventsFromDate_toDate___block_invoke(void *a1)
{
  v6 = [*(a1[4] + 16) nlEventsInRange:{a1[6], a1[7]}];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D3A390] convertBatchOfEKEvents:v6 calendarInternPool:v2];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)eventsFromDate:(id)date toDate:(id)toDate
{
  v25 = *MEMORY[0x277D85DE8];
  toDateCopy = toDate;
  dateCopy = date;
  [dateCopy timeIntervalSinceReferenceDate];
  v9 = v8;
  [toDateCopy timeIntervalSinceDate:dateCopy];
  v11 = v10;

  if ([(PPLocalEventStore *)self _isEventQueryRangeValidWithInterval:v12 andDuration:v9, v11])
  {
    if (self)
    {
      v13 = pp_events_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134218240;
        v22 = v9;
        v23 = 2048;
        v24 = v11;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore queried for range: %tu - %tu", &v21, 0x16u);
      }

      v14 = pp_events_signpost_handle();
      v15 = os_signpost_id_generate(v14);

      v16 = pp_events_signpost_handle();
      v17 = v16;
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        LOWORD(v21) = 0;
        _os_signpost_emit_with_name_impl(&dword_23224A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PPLocalEventStore.eventsInRange", "", &v21, 2u);
      }

      self = [(PPEventCache *)self->_eventCache objectForRange:v9, v11];
      v18 = pp_events_signpost_handle();
      v19 = v18;
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        LOWORD(v21) = 0;
        _os_signpost_emit_with_name_impl(&dword_23224A000, v19, OS_SIGNPOST_INTERVAL_END, v15, "PPLocalEventStore.eventsInRange", "", &v21, 2u);
      }
    }
  }

  else
  {
    self = MEMORY[0x277CBEBF8];
  }

  return self;
}

- (id)eventHighlightsFrom:(id)from to:(id)to options:(int)options
{
  v125 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  v7 = +[PPSettings sharedInstance];
  v8 = [v7 bundleIdentifierIsEnabledForDonation:*MEMORY[0x277D3A5F0]];

  if (v8)
  {
    obj = [(PPLocalEventStore *)self eventsFromDate:fromCopy toDate:toCopy];
    v67 = objc_opt_new();
    v64 = [PPEventRankerDateUtils dateTwoWeeksPriorToDate:fromCopy];
    v76 = fromCopy;
    if (self)
    {
      v9 = [MEMORY[0x277CBEAA8] now];
      v10 = [v9 dateByAddingTimeInterval:1800.0];
      v11 = objc_opt_new();
      [v11 setFormatOptions:275];
      v12 = objc_opt_new();
      if (eventMetaDataFromDate_toDate__onceToken != -1)
      {
        dispatch_once(&eventMetaDataFromDate_toDate__onceToken, &__block_literal_global_157);
      }

      [eventMetaDataFromDate_toDate__invalidationTimer runAfterDelaySeconds:1 coalescingBehavior:1800.0];
      v13 = [PPEventMetadata eventMetadataWithTitlesAndParticipants:MEMORY[0x277CBEC10] earliestStartTime:0 eventCount:0 eventHasAlarmCount:-1.0];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_4;
      aBlock[3] = &unk_278975B68;
      v14 = v13;
      v112 = v14;
      v15 = _Block_copy(aBlock);
      v105 = 0;
      v106 = &v105;
      v107 = 0x3032000000;
      v108 = __Block_byref_object_copy__16315;
      v109 = __Block_byref_object_dispose__16316;
      v70 = v14;
      v110 = v70;
      v101 = 0;
      v102 = &v101;
      v103 = 0x2020000000;
      v104 = 0;
      v97 = 0;
      v98 = &v97;
      v99 = 0x2020000000;
      v100 = 0;
      v16 = eventMetaDataFromDate_toDate__cacheLock;
      *v82 = MEMORY[0x277D85DD0];
      v83 = 3221225472;
      v84 = __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_5;
      v85 = &unk_278975C00;
      v60 = v9;
      selfCopy2 = v60;
      v74 = v64;
      v87 = v74;
      v94 = &v101;
      v95 = &v97;
      v72 = v76;
      v88 = v72;
      selfCopy = self;
      v71 = v15;
      v93 = v71;
      v61 = v10;
      v90 = v61;
      v17 = v12;
      v91 = v17;
      v62 = v11;
      v92 = v62;
      v96 = &v105;
      [v16 runWithLockAcquired:v82];
      [v106[5] earliestStartTime];
      if (v18 != -1.0)
      {
        v19 = objc_alloc(MEMORY[0x277CBEA80]);
        v20 = [v19 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
        v21 = [v20 components:16 fromDate:v74 toDate:v72 options:0];
        v22 = [v21 day];
        if ([v17 count] < 2 || v22 < 9 || objc_msgSend(v17, "count") / (v22 + 1) < 0.55)
        {
          titlesAndParticipants = [v106[5] titlesAndParticipants];
          eventCount = [v106[5] eventCount];
          v25 = +[PPEventMetadata eventMetadataWithTitlesAndParticipants:earliestStartTime:eventCount:eventHasAlarmCount:](PPEventMetadata, "eventMetadataWithTitlesAndParticipants:earliestStartTime:eventCount:eventHasAlarmCount:", titlesAndParticipants, eventCount, [v106[5] eventHasAlarmCount], -1.0);
          v26 = v106[5];
          v106[5] = v25;
        }
      }

      v27 = pp_events_log_handle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v102[3];
        v29 = v98[3];
        [v106[5] earliestStartTime];
        v31 = v30;
        eventCount2 = [v106[5] eventCount];
        eventHasAlarmCount = [v106[5] eventHasAlarmCount];
        titlesAndParticipants2 = [v106[5] titlesAndParticipants];
        v35 = [titlesAndParticipants2 count];
        v36 = v106[5];
        *buf = 138545411;
        *&buf[4] = v74;
        *&buf[12] = 2114;
        *&buf[14] = v72;
        *&buf[22] = 2048;
        v115 = v28;
        *v116 = 2048;
        *&v116[2] = v29;
        *&v116[10] = 2048;
        *&v116[12] = v31;
        v117 = 2048;
        v118 = eventCount2;
        v119 = 2048;
        v120 = eventHasAlarmCount;
        v121 = 2048;
        v122 = v35;
        v123 = 2117;
        v124 = v36;
        _os_log_impl(&dword_23224A000, v27, OS_LOG_TYPE_DEFAULT, "eventMetaDataFromDate:%{public}@ toDate:%{public}@ (cached chunks %tu, misses %tu) = earliestStartTime:%f, eventCount:%tu, eventHasAlarmCount:%tu, titlesAndParticipants.count:%tu, %{sensitive}@", buf, 0x5Cu);
      }

      v63 = v106[5];
      _Block_object_dispose(&v97, 8);
      _Block_object_dispose(&v101, 8);
      _Block_object_dispose(&v105, 8);
    }

    else
    {
      v63 = 0;
    }

    v37 = [PPEventScorer alloc];
    titlesAndParticipants3 = [v63 titlesAndParticipants];
    [v63 earliestStartTime];
    v40 = v39;
    if (v63)
    {
      if ([v63 eventHasAlarmCount] && objc_msgSend(v63, "eventCount"))
      {
        eventHasAlarmCount2 = [v63 eventHasAlarmCount];
        v42 = [v63 eventCount] > eventHasAlarmCount2;
      }

      else
      {
        v42 = 1;
      }
    }

    else
    {
      v42 = 0;
    }

    v45 = +[PPTrialWrapper sharedInstance];
    v75 = [(PPEventScorer *)v37 initWithPastEventTitlesAndParticipants:titlesAndParticipants3 andEarliestStartTime:v42 shouldConsiderAlarms:options withOptions:v45 trialWrapper:v40];

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obja = obj;
    v46 = [obja countByEnumeratingWithState:&v78 objects:v113 count:16];
    if (v46)
    {
      v73 = *v79;
      do
      {
        v47 = 0;
        do
        {
          if (*v79 != v73)
          {
            objc_enumerationMutation(obja);
          }

          v48 = *(*(&v78 + 1) + 8 * v47);
          v49 = objc_autoreleasePoolPush();
          LOBYTE(v105) = 0;
          v50 = v48;
          v51 = v75;
          v52 = v76;
          if (self)
          {
            LOBYTE(v105) = 0;
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v115 = __Block_byref_object_copy__16315;
            *v116 = __Block_byref_object_dispose__16316;
            *&v116[8] = [(PPEventCache *)self->_eventCache cachedEventHighlightForEvent:v50 rankingOptions:options trialWrapper:self->_trialWrapper];
            v53 = *(*&buf[8] + 40);
            if (!v53)
            {
              v54 = objc_autoreleasePoolPush();
              storage = self->_storage;
              *v82 = MEMORY[0x277D85DD0];
              v83 = 3221225472;
              v84 = __95__PPLocalEventStore_eventHighlightForEvent_usingScorer_date_rankingOptions_loadedFromEventKit___block_invoke;
              v85 = &unk_278975B20;
              selfCopy2 = self;
              v56 = v50;
              v90 = buf;
              v91 = &v105;
              v87 = v56;
              v88 = v51;
              selfCopy = v52;
              [(PPEventStorage *)storage runBlockWithPurgerDisabled:v82];

              objc_autoreleasePoolPop(v54);
              v53 = *(*&buf[8] + 40);
            }

            v57 = v53;
            _Block_object_dispose(buf, 8);
          }

          else
          {
            v57 = 0;
          }

          if (v57 && ((options & 1) != 0 || [v57 isExtraordinary]))
          {
            [v67 addObject:v57];
          }

          objc_autoreleasePoolPop(v49);
          ++v47;
        }

        while (v46 != v47);
        v58 = [obja countByEnumeratingWithState:&v78 objects:v113 count:16];
        v46 = v58;
      }

      while (v58);
    }

    v44 = [v67 sortedArrayUsingComparator:&__block_literal_global_151_16327];

    v43 = obja;
  }

  else
  {
    v43 = pp_events_log_handle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *v82 = 0;
      _os_log_impl(&dword_23224A000, v43, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore: EventHighlights disabled due to settings", v82, 2u);
    }

    v44 = MEMORY[0x277CBEBF8];
  }

  return v44;
}

uint64_t __52__PPLocalEventStore_eventHighlightsFrom_to_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D3A578];
  v5 = a3;
  [a2 score];
  v7 = v6;
  [v5 score];
  v9 = v8;

  return [v4 reverseCompareDouble:v7 withDouble:v9];
}

void __95__PPLocalEventStore_eventHighlightForEvent_usingScorer_date_rankingOptions_loadedFromEventKit___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) eventIdentifier];
  v4 = [v2 eventWithIdentifier:v3];

  if (v4)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      *v5 = 1;
    }

    v6 = [*(a1 + 48) scoreEvent:v4 usingDate:*(a1 + 56)];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(*(a1 + 32) + 8) setEventHighlight:*(*(*(a1 + 64) + 8) + 40)];
    if ([*(*(*(a1 + 64) + 8) + 40) isExtraordinary])
    {
      v9 = [*(*(*(a1 + 64) + 8) + 40) endDate];
      [v9 timeIntervalSinceNow];
      v11 = v10;

      if (v11 <= 0.0)
      {
        v13 = pp_events_log_handle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *v14 = 0;
          _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "Suppressing metrics logging of past event", v14, 2u);
        }
      }

      else
      {
        v12 = +[PPEventMetricsLogger defaultLogger];
        [v12 logEventInteractionForEventHighlight:*(*(*(a1 + 64) + 8) + 40) interface:0 actionType:0];
      }
    }
  }
}

void *__50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ([*(a1 + 32) isEqual:v3])
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;

  return v4;
}

void __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_5(id *a1, void *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_6;
  v73[3] = &unk_278975B90;
  v58 = a1;
  v74 = a1[4];
  v56 = v3;
  v53 = [v3 indexesOfObjectsPassingTest:v73];
  [v3 removeObjectsAtIndexes:v53];
  v54 = objc_opt_new();
  [a1[5] timeIntervalSinceReferenceDate];
  v5 = v4;
  [a1[6] timeIntervalSinceReferenceDate];
  v57 = vcvtmd_u64_f64(v5 / 14400.0);
  for (i = vcvtpd_u64_f64(v6 / 14400.0); v57 <= i; ++v57)
  {
    v59 = objc_opt_new();
    [v59 setChunkIndex:v57];
    v7 = [v56 indexOfObject:v59 inSortedRange:0 options:objc_msgSend(v56 usingComparator:{"count"), 1024, &__block_literal_global_170}];
    if (v7 < [v56 count] && (objc_msgSend(v56, "objectAtIndexedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "chunkIndex") == v57, v8, v9))
    {
      ++*(*(v58[12] + 1) + 24);
      [v56 objectAtIndexedSubscript:v7];
      v59 = v10 = v59;
    }

    else
    {
      ++*(*(v58[13] + 1) + 24);
      v11 = objc_opt_new();
      v79 = 0;
      v80 = &v79;
      v81 = 0x2020000000;
      v82 = 0xBFF0000000000000;
      *&v75 = 0;
      *(&v75 + 1) = &v75;
      v76 = 0x2020000000uLL;
      v69 = 0;
      v70 = &v69;
      v71 = 0x2020000000;
      v72 = 0;
      v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v57 * 14400.0];
      v13 = [v12 dateByAddingTimeInterval:14400.0];
      v14 = *(v58[7] + 2);
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_8;
      v62[3] = &unk_278975BD8;
      v15 = v12;
      v63 = v15;
      v10 = v11;
      v64 = v10;
      v65 = v54;
      v66 = &v79;
      v67 = &v75;
      v68 = &v69;
      [v14 iterateEventsFrom:v15 to:v13 inChunks:1 withBlock:v62];
      if (v70[3])
      {
        [*(v58[7] + 2) attemptToPurgeImmediately];
      }

      v16 = v58[11];
      v17 = [v10 copy];
      v18 = [PPEventMetadata eventMetadataWithTitlesAndParticipants:v17 earliestStartTime:v70[3] eventCount:*(*(&v75 + 1) + 24) eventHasAlarmCount:v80[3]];

      v19 = v16[2](v16, v18);
      [v59 setMetadata:v19];

      [v59 setExpiration:v58[8]];
      [v56 insertObject:v59 atIndex:v7];

      _Block_object_dispose(&v69, 8);
      _Block_object_dispose(&v75, 8);
      _Block_object_dispose(&v79, 8);
    }

    v20 = [v59 metadata];
    v21 = [v20 eventCount] == 0;

    if (!v21)
    {
      v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v57 * 14400.0 + 7200.0];
      v23 = v58[9];
      v24 = [v58[10] stringFromDate:v22];
      [v23 addObject:v24];
    }

    v60 = *(*(v58[14] + 1) + 40);
    v25 = [v59 metadata];
    v61 = v25;
    if (v60)
    {
      v26 = [v25 titlesAndParticipants];
      v27 = [v26 count] == 0;

      v28 = [v60 titlesAndParticipants];
      v29 = v28;
      if (!v27)
      {
        v30 = [v28 count] == 0;

        if (v30)
        {
          v29 = [v61 titlesAndParticipants];
        }

        else
        {
          v31 = [v60 titlesAndParticipants];
          v32 = [v31 mutableCopy];

          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v33 = [v61 titlesAndParticipants];
          v34 = [v33 countByEnumeratingWithState:&v75 objects:&v79 count:16];
          if (v34)
          {
            v35 = *v76;
            do
            {
              for (j = 0; j != v34; ++j)
              {
                if (*v76 != v35)
                {
                  objc_enumerationMutation(v33);
                }

                v37 = *(*(&v75 + 1) + 8 * j);
                v38 = [v60 titlesAndParticipants];
                v39 = [v38 objectForKeyedSubscript:v37];

                v40 = [v61 titlesAndParticipants];
                v41 = [v40 objectForKeyedSubscript:v37];

                if (v39)
                {
                  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v41, "unsignedIntegerValue") + objc_msgSend(v39, "unsignedIntegerValue")}];
                  [v32 setObject:v42 forKeyedSubscript:v37];
                }

                else
                {
                  [v32 setObject:v41 forKeyedSubscript:v37];
                }
              }

              v34 = [v33 countByEnumeratingWithState:&v75 objects:&v79 count:16];
            }

            while (v34);
          }

          v29 = [v32 copy];
        }
      }

      [v60 earliestStartTime];
      v44 = v43 == -1.0;
      [v61 earliestStartTime];
      v46 = v45 != -1.0;
      [v60 earliestStartTime];
      v48 = v47;
      [v61 earliestStartTime];
      if ((v48 < v49) ^ v44 ^ v46)
      {
        v48 = v49;
      }

      v50 = +[PPEventMetadata eventMetadataWithTitlesAndParticipants:earliestStartTime:eventCount:eventHasAlarmCount:](PPEventMetadata, "eventMetadataWithTitlesAndParticipants:earliestStartTime:eventCount:eventHasAlarmCount:", v29, [v61 eventCount] + objc_msgSend(v60, "eventCount"), objc_msgSend(v61, "eventHasAlarmCount") + objc_msgSend(v60, "eventHasAlarmCount"), v48);
    }

    else
    {
      v50 = 0;
    }

    v51 = *(v58[14] + 1);
    v52 = *(v51 + 40);
    *(v51 + 40) = v50;
  }
}

BOOL __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 expiration];
  v4 = [v2 compare:v3] != -1;

  return v4;
}

uint64_t __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_8(void *a1, void *a2)
{
  v13 = a2;
  v3 = a1[4];
  v4 = [v13 startDate];
  v5 = [v3 compare:v4];

  if (v5 != 1)
  {
    [PPEventScorer enrichDictionary:a1[5] withEvent:v13 interningSet:a1[6]];
    if (([v13 isAllDay] & 1) == 0)
    {
      v6 = [v13 startDate];
      [PPEventRankerDateUtils secondsFromMidnight:v6];
      v8 = v7;

      v9 = *(a1[7] + 8);
      v10 = *(v9 + 24);
      if (v8 < v10 || v10 == -1.0)
      {
        *(v9 + 24) = v8;
      }
    }

    if ([v13 hasAlarms])
    {
      ++*(*(a1[8] + 8) + 24);
    }

    ++*(*(a1[9] + 8) + 24);
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 chunkIndex];
  if (v6 == [v5 chunkIndex])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 chunkIndex];
    if (v8 < [v5 chunkIndex])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

void __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D425F8]);
  v1 = objc_opt_new();
  v2 = [v0 initWithGuardedData:v1];
  v3 = eventMetaDataFromDate_toDate__cacheLock;
  eventMetaDataFromDate_toDate__cacheLock = v2;

  v6 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"eventMetaDataFromDate:toDate: cache clearing queue" qosClass:9];
  v4 = [objc_alloc(MEMORY[0x277D42628]) initWithQueue:v6 leewaySeconds:&__block_literal_global_161 operation:60.0];
  v5 = eventMetaDataFromDate_toDate__invalidationTimer;
  eventMetaDataFromDate_toDate__invalidationTimer = v4;
}

- (void)enumerateEventsFromEKObjectIDs:(id)ds expandingRecurrencesInRange:(id)range usingBlock:(id)block
{
  dsCopy = ds;
  rangeCopy = range;
  blockCopy = block;
  storage = self->_storage;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__PPLocalEventStore_enumerateEventsFromEKObjectIDs_expandingRecurrencesInRange_usingBlock___block_invoke;
  v15[3] = &unk_278977290;
  v15[4] = self;
  v16 = dsCopy;
  v17 = rangeCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = rangeCopy;
  v14 = dsCopy;
  [(PPEventStorage *)storage runBlockWithPurgerDisabled:v15];
}

- (id)customObjectForKey:(id)key eventIdentifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__16315;
  v21 = __Block_byref_object_dispose__16316;
  v22 = 0;
  storage = self->_storage;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__PPLocalEventStore_customObjectForKey_eventIdentifier___block_invoke;
  v13[3] = &unk_2789763B0;
  v13[4] = self;
  v9 = identifierCopy;
  v14 = v9;
  v16 = &v17;
  v10 = keyCopy;
  v15 = v10;
  [(PPEventStorage *)storage runBlockWithPurgerDisabled:v13];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __56__PPLocalEventStore_customObjectForKey_eventIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) eventWithIdentifier:a1[5]];
  if (v2)
  {
    v7 = v2;
    v3 = objc_autoreleasePoolPush();
    v4 = [v7 customObjectForKey:a1[6]];
    v5 = *(a1[7] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    objc_autoreleasePoolPop(v3);
    v2 = v7;
  }
}

- (id)resolveEventNameRecordChanges:(id)changes client:(id)client error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  clientCopy = client;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(changesCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = changesCopy;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        if ([(PPEventStorage *)self->_storage eventKitChangeIsEvent:v14])
        {
          storage = self->_storage;
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __64__PPLocalEventStore_resolveEventNameRecordChanges_client_error___block_invoke;
          v20[3] = &unk_278975A60;
          v20[4] = self;
          v20[5] = v14;
          v21 = v8;
          [(PPEventStorage *)storage runBlockWithPurgerDisabled:v20];
        }

        else
        {
          v17 = pp_events_log_handle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v27 = v14;
            _os_log_debug_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEBUG, "skipping non-event change: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v11);
  }

  return v8;
}

void __64__PPLocalEventStore_resolveEventNameRecordChanges_client_error___block_invoke(uint64_t a1)
{
  v1 = a1;
  v45 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) resolveEventFromEKChange:*(a1 + 40)];
  if (!v2)
  {
    v30 = pp_events_log_handle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v33 = *(v1 + 40);
      *buf = 138412290;
      v44 = v33;
      _os_log_debug_impl(&dword_23224A000, v30, OS_LOG_TYPE_DEBUG, "deleted event: %@", buf, 0xCu);
    }

    if (*(v1 + 32))
    {
      v31 = MEMORY[0x277D3A3A0];
      v32 = [*(v1 + 40) stringRepresentation];
      v29 = [v31 eventNameRecordWithScore:v32 eventIdentifier:3 changeType:&stru_284759D38 title:&stru_284759D38 location:MEMORY[0x277CBEBF8] participantNames:0.0];
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_24;
  }

  if ([*(*(v1 + 32) + 16) shouldIngestEvent:v2])
  {
    v3 = pp_events_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v34 = [v2 eventIdentifier];
      *buf = 138412290;
      v44 = v34;
      _os_log_debug_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEBUG, "modified event: %@", buf, 0xCu);
    }

    v37 = v1;
    v38 = v2;
    v4 = *(v1 + 32);
    v5 = v2;
    if (v4)
    {
      v6 = objc_opt_new();
      v7 = [v5 startDate];
      v35 = v6;
      [v7 timeIntervalSinceDate:v6];
      v9 = [PPLocalEventStore _scoreForSecondsRelativeToNow:v8];

      v10 = objc_alloc(MEMORY[0x277CBEB18]);
      v11 = [v5 attendees];
      v12 = [v10 initWithCapacity:{objc_msgSend(v11, "count")}];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v36 = v5;
      v13 = [v5 attendees];
      v14 = [v13 countByEnumeratingWithState:&v39 objects:buf count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v40;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v39 + 1) + 8 * i);
            v19 = objc_autoreleasePoolPush();
            v20 = [v18 name];
            if (v20)
            {
              v21 = v20;
              v22 = [v18 name];
              v23 = [v22 length];

              if (v23)
              {
                v24 = [v18 name];
                [v12 addObject:v24];
              }
            }

            objc_autoreleasePoolPop(v19);
          }

          v15 = [v13 countByEnumeratingWithState:&v39 objects:buf count:16];
        }

        while (v15);
      }

      v5 = v36;
      v25 = [v36 locationWithoutPrediction];
      if (![v25 length])
      {

        v25 = 0;
      }

      v1 = v37;
      v26 = MEMORY[0x277D3A3A0];
      v27 = [v36 eventIdentifier];
      v28 = [v36 title];
      v29 = [v26 eventNameRecordWithScore:v27 eventIdentifier:0 changeType:v28 title:v25 location:v12 participantNames:v9];

      v2 = v38;
    }

    else
    {
      v29 = 0;
      v1 = v37;
    }

    [v29 setChangeType:1];
LABEL_24:
    [*(v1 + 48) addObject:v29];
  }
}

- (double)_scoreForSecondsRelativeToNow:(double)now
{
  v1 = now / 3600.0;
  if (now / 3600.0 <= -3.0)
  {
    return 0.3;
  }

  if (v1 <= -2.0)
  {
    return 0.4;
  }

  result = 0.5;
  if (v1 > -1.0)
  {
    result = 0.7;
    if (v1 > 0.0)
    {
      if (v1 <= 1.0)
      {
        return 0.9;
      }

      else if (v1 <= 2.0)
      {
        return 0.85;
      }

      else if (v1 <= 3.0)
      {
        return 0.8;
      }

      else if (v1 > 4.0)
      {
        if (v1 <= 5.0)
        {
          return 0.6;
        }

        else
        {
          result = 0.5;
          if (v1 > 6.0)
          {
            result = 0.4;
            if (v1 > 7.0)
            {
              result = 0.3;
              if (v1 > 8.0)
              {
                if (v1 <= 9.0)
                {
                  return 0.2;
                }

                else if (v1 <= 10.0)
                {
                  return 0.15;
                }

                else if (v1 <= 11.0)
                {
                  return 0.12;
                }

                else
                {
                  return dbl_232418590[v1 > 12.0];
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (id)eventNameRecordsForClient:(id)client error:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v5 = objc_opt_new();
  v6 = [v5 dateByAddingTimeInterval:-7200.0];
  v39 = v5;
  v7 = [v5 dateByAddingTimeInterval:43200.0];
  selfCopy = self;
  v8 = [(PPLocalEventStore *)self eventsFromDate:v6 toDate:v7];

  v44 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v8;
  v45 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v45)
  {
    v42 = *v51;
    do
    {
      v9 = 0;
      do
      {
        if (*v51 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v50 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = v10;
        if (selfCopy)
        {
          v48 = v11;
          v49 = v9;
          v13 = objc_opt_new();
          startDate = [v12 startDate];
          v46 = v13;
          [startDate timeIntervalSinceDate:v13];
          v16 = [PPLocalEventStore _scoreForSecondsRelativeToNow:v15];

          v17 = objc_alloc(MEMORY[0x277CBEB18]);
          attendees = [v12 attendees];
          v19 = [v17 initWithCapacity:{objc_msgSend(attendees, "count")}];

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v47 = v12;
          attendees2 = [v12 attendees];
          v21 = [attendees2 countByEnumeratingWithState:&v54 objects:v59 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v55;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v55 != v23)
                {
                  objc_enumerationMutation(attendees2);
                }

                v25 = *(*(&v54 + 1) + 8 * i);
                v26 = objc_autoreleasePoolPush();
                name = [v25 name];
                if (name)
                {
                  v28 = name;
                  name2 = [v25 name];
                  v30 = [name2 length];

                  if (v30)
                  {
                    name3 = [v25 name];
                    [v19 addObject:name3];
                  }
                }

                objc_autoreleasePoolPop(v26);
              }

              v22 = [attendees2 countByEnumeratingWithState:&v54 objects:v59 count:16];
            }

            while (v22);
          }

          v32 = MEMORY[0x277D3A3A0];
          v12 = v47;
          eventIdentifier = [v47 eventIdentifier];
          title = [v47 title];
          location = [v47 location];
          v36 = [v32 eventNameRecordWithScore:eventIdentifier eventIdentifier:0 changeType:title title:location location:v19 participantNames:v16];

          v11 = v48;
          v9 = v49;
        }

        else
        {
          v36 = 0;
        }

        [v44 addObject:v36];
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v9 != v45);
      v37 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      v45 = v37;
    }

    while (v37);
  }

  return v44;
}

- (BOOL)iterEventNameRecordsForClient:(id)client error:(id *)error block:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = [(PPLocalEventStore *)self eventNameRecordsForClient:client error:error];
  v10 = v9;
  if (v9)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        v18 = 0;
        blockCopy[2](blockCopy, v16, &v18);
        if (v18)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  return v10 != 0;
}

- (PPLocalEventStore)init
{
  v3 = +[PPTrialWrapper sharedInstance];
  v4 = +[PPEventStorage defaultStorage];
  v5 = [(PPLocalEventStore *)self initWithTrialWrapper:v3 eventStorage:v4];

  return v5;
}

- (PPLocalEventStore)initWithTrialWrapper:(id)wrapper eventStorage:(id)storage
{
  wrapperCopy = wrapper;
  storageCopy = storage;
  v39.receiver = self;
  v39.super_class = PPLocalEventStore;
  v10 = [(PPLocalEventStore *)&v39 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_storage, storage);
    v12 = [[PPEventCache alloc] initWithEventStorage:v11->_storage];
    eventCache = v11->_eventCache;
    v11->_eventCache = v12;

    objc_storeStrong(&v11->_trialWrapper, wrapper);
    v14 = objc_alloc(MEMORY[0x277D425F8]);
    v15 = objc_opt_new();
    v16 = [v14 initWithGuardedData:v15];
    lock = v11->_lock;
    v11->_lock = v16;

    v18 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPLocalEventStore-bufferedChanges" qosClass:9];
    objc_initWeak(&location, v11);
    v19 = objc_alloc(MEMORY[0x277D42568]);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __55__PPLocalEventStore_initWithTrialWrapper_eventStorage___block_invoke;
    v35[3] = &unk_2789759F0;
    v37 = a2;
    v20 = v11;
    v36 = v20;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __55__PPLocalEventStore_initWithTrialWrapper_eventStorage___block_invoke_2;
    v33[3] = &unk_278975A38;
    objc_copyWeak(&v34, &location);
    v21 = [v19 initWithQueue:v18 leewaySeconds:v35 coalesceData:v33 operation:10.0];
    v22 = v20[6];
    v20[6] = v21;

    objc_initWeak(&from, v20);
    v23 = MEMORY[0x277D3A458];
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __52__PPLocalEventStore__setupCalendarVisibilityManager__block_invoke;
    v44 = &unk_278975AD8;
    objc_copyWeak(&v45, &from);
    v24 = [v23 addCalendarVisibilityObserverForLifetimeOfObject:v20 block:&v41];
    [(PPEventStorage *)v11->_storage setInvisibleCalendarIdentifiers:v24];
    objc_destroyWeak(&v45);

    objc_destroyWeak(&from);
    v25 = v20[6];
    v26 = v11->_lock;
    v27 = MEMORY[0x277D3A458];
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __46__PPLocalEventStore__registerForNotifications__block_invoke;
    v44 = &unk_278975AB0;
    v45 = v26;
    v46 = v25;
    v28 = v25;
    v29 = v26;
    [v27 addEventKitObserverForLifetimeOfObject:v20 block:&v41];
    v30 = +[PPTrialWrapper sharedInstance];
    v31 = [v30 addUpdateHandlerForNamespaceName:@"PERSONALIZATION_PORTRAIT_EVENTS" block:&__block_literal_global_145_16370];

    [(PPLocalEventStore *)v20 _preloadEvents];
    objc_destroyWeak(&v34);

    objc_destroyWeak(&location);
  }

  return v11;
}

id __55__PPLocalEventStore_initWithTrialWrapper_eventStorage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 count])
    {
      if ([v6 count])
      {
        [v5 removeObjectsInArray:v6];
        [v5 addObjectsFromArray:v6];
      }

      else
      {
        [v5 removeAllObjects];
      }
    }
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v6];
    if (!v5)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPLocalEventStore.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"accumulatedData"}];

      v5 = 0;
    }
  }

  return v5;
}

void __55__PPLocalEventStore_initWithTrialWrapper_eventStorage___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [*(WeakRetained + 5) runWithLockAcquired:&__block_literal_global_16380];
      v6 = pp_events_log_handle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134217984;
        v20 = [v3 count];
        _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore: processing %tu EventKit changes", &v19, 0xCu);
      }

      v7 = [v3 count];
      v8 = objc_autoreleasePoolPush();
      if (v7)
      {
        v9 = v5[1];
        v10 = [v3 array];
        v11 = [v9 refreshCacheWithChanges:v10];

        v12 = pp_events_log_handle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 first];
          v14 = [v13 count];
          v19 = 134217984;
          v20 = v14;
          _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore: changed event count is %tu", &v19, 0xCu);
        }

        v15 = +[PPEventKitImporter defaultInstance];
        [v15 importChangedEvents:v11];
      }

      else
      {
        [(PPLocalEventStore *)v5 _clearAndReloadAllCachesAndData];
      }

      objc_autoreleasePoolPop(v8);
      v17 = pp_events_log_handle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v3 count];
        v19 = 134217984;
        v20 = v18;
        _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore: finished processing %tu EventKit changes", &v19, 0xCu);
      }
    }
  }

  else
  {
    v16 = pp_events_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v19) = 0;
      _os_log_fault_impl(&dword_23224A000, v16, OS_LOG_TYPE_FAULT, "accumulatedData was unexpectedly nil", &v19, 2u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }
}

- (void)_preloadEvents
{
  v2 = pp_events_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_events_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPLocalEventStore.preloadEvents", "", buf, 2u);
  }

  v6 = objc_opt_new();
  v7 = [v6 dateByAddingTimeInterval:-600.0];
  v8 = [v6 dateByAddingTimeInterval:176400.0];
  v9 = [self eventsFromDate:v7 toDate:v8];

  v10 = pp_events_signpost_handle();
  v11 = v10;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_END, v3, "PPLocalEventStore.preloadEvents", "", v12, 2u);
  }
}

void __46__PPLocalEventStore__registerForNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16315;
  v16 = __Block_byref_object_dispose__16316;
  v17 = 0;
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__PPLocalEventStore__registerForNotifications__block_invoke_2;
  v11[3] = &unk_278975A88;
  v11[4] = &v12;
  [v4 runWithLockAcquired:v11];
  v5 = [MEMORY[0x277CBEAA8] now];
  [v5 timeIntervalSinceDate:v13[5]];
  v7 = v6;

  v8 = [v3 count] != 0;
  v9 = v7 <= 300.0;
  v10 = 120.0;
  if (!v8 || !v9)
  {
    v10 = 1.0;
  }

  [*(a1 + 40) processData:v3 afterDelaySeconds:v8 & v9 coalescingBehavior:v10];
  _Block_object_dispose(&v12, 8);
}

void __46__PPLocalEventStore__registerForNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = v5[1];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEAA8] distantPast];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v4);
  if (!v3)
  {
  }
}

void __52__PPLocalEventStore__setupCalendarVisibilityManager__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = pp_events_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = [v3 count];
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore: reloading events due to EKCalendarVisibilityManager visibilityChanged (%tu invisible calendars)", &v6, 0xCu);
    }

    [WeakRetained[2] setInvisibleCalendarIdentifiers:v3];
    [(PPLocalEventStore *)WeakRetained _clearAndReloadAllCachesAndData];
  }
}

- (void)_clearAndReloadAllCachesAndData
{
  [self clearCaches];
  [(PPLocalEventStore *)self _preloadEvents];
  v2 = +[PPEventKitImporter defaultInstance];
  [v2 deleteAndReimportAllData];
}

void __55__PPLocalEventStore_initWithTrialWrapper_eventStorage___block_invoke_123(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 now];
  v5 = v3[1];
  v3[1] = v4;
}

void __33__PPLocalEventStore_defaultStore__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = defaultStore__pasExprOnceResult_16400;
  defaultStore__pasExprOnceResult_16400 = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)clearCaches
{
  [(PPEventCache *)self->_eventCache removeAllObjects];
  storage = self->_storage;

  [(PPEventStorage *)storage clearCaches];
}

@end