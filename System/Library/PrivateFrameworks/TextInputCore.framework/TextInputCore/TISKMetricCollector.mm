@interface TISKMetricCollector
+ (BOOL)isSensorKitSupported:(id)supported;
+ (id)makeMetricCollector:(id)collector wordsThreshold:(unint64_t)threshold isTesting:(BOOL)testing;
- (BOOL)publishIfSessionStatsHasWordCountMoreThanThreshold:(id)threshold withSessionStartTime:(BOOL)time;
- (double)totalTimeSpan;
- (double)totalTimeSpanFromLastTap;
- (id)_consumeTypingSession:(id)session;
- (id)_insertEmojiSwitchEvents:(id)events;
- (id)_mapIDToLayout:(unint64_t)layout;
- (id)_retrieveSavedSessionSampleArray;
- (id)eventsDescription:(BOOL)description;
- (id)getWordBucketCategoryForWord:(id)word;
- (id)init:(id)init wordsThreshold:(unint64_t)threshold accentedLanguage:(BOOL)language skipTCCAuthorization:(BOOL)authorization;
- (id)lemmatizeWord:(id)word;
- (id)loadDataWithFilename:(id)filename;
- (id)privateEventsDescription;
- (int64_t)findIndexSessionStatsFromArray:(id)array thatHasLayout:(id)layout;
- (void)_clear;
- (void)_coalesceTaps;
- (void)_consumeDeleteWordEvent:(id)event;
- (void)_consumeInputsAndTouches:(id)touches occurenceTime:(double)time emojiSearchMode:(BOOL)mode;
- (void)_consumePathsAndPredictions:(id)predictions emojiSearchMode:(BOOL)mode;
- (void)_consumeUserAction:(id)action;
- (void)_consumeWordEntry:(id)entry;
- (void)_haltSessionTypingTimer:(id)timer event:(id)event;
- (void)_loadStatsFromDataStore;
- (void)_mapTapsToEvents;
- (void)_metricWalk;
- (void)_persistSavedSessionStatsArray;
- (void)_processEvents;
- (void)_resetConsumeState;
- (void)_setupTCCAuthNotification;
- (void)dealloc;
- (void)handleTypingSession:(id)session;
- (void)loadEmojiBucketDictionaryIfNecessary;
- (void)loadWordBucketDictionaryIfNecessary;
- (void)placeTaskOnWorkQueue:(id)queue;
- (void)processNewSessionStatsArray:(id)array;
- (void)removeSessionStatsWithNegativeDurationFromArray:(id)array ForTypingSession:(id)session;
- (void)sessionDidEnd:(id)end aligned:(id)aligned;
- (void)setupSessionStatsForLayouts;
- (void)testTCCAuthorization;
@end

@implementation TISKMetricCollector

- (void)removeSessionStatsWithNegativeDurationFromArray:(id)array ForTypingSession:(id)session
{
  sessionCopy = session;
  arrayCopy = array;
  v8 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__TISKMetricCollector_removeSessionStatsWithNegativeDurationFromArray_ForTypingSession___block_invoke;
  v11[3] = &unk_27872EC30;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = v8;
  v9 = v8;
  v10 = sessionCopy;
  [arrayCopy enumerateObjectsUsingBlock:v11];
  [arrayCopy removeObjectsAtIndexes:v9];
}

void __88__TISKMetricCollector_removeSessionStatsWithNegativeDurationFromArray_ForTypingSession___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 keyedMetrics];
  v7 = [v6 objectForKey:kTISKTotalSessionTypingDuration];

  if (v7)
  {
    [v7 doubleValue];
    if (v8 < 0.0)
    {
      v9 = v8;
      if (*(a1 + 32))
      {
        v37 = a3;
        v38 = v5;
        v10 = objc_alloc(MEMORY[0x277CBEB18]);
        v11 = [*(a1 + 32) userActionHistory];
        log = [v10 initWithCapacity:{objc_msgSend(v11, "count")}];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v36 = a1;
        v12 = [*(a1 + 32) userActionHistory];
        v13 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v41;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v41 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v40 + 1) + 8 * i);
              v18 = [v17 actionType];
              v19 = @"ot";
              if (v18 <= 5)
              {
                v19 = off_27872EC68[v18];
              }

              v20 = MEMORY[0x277CCACA8];
              [v17 startTime];
              v22 = v21;
              [v17 endTime];
              v24 = [v20 stringWithFormat:@"%@:%f:%f", v19, v22, v23];
              [log addObject:v24];
            }

            v14 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v14);
        }

        v25 = [log componentsJoinedByString:@"|"];
        v26 = IXADefaultLogFacility();
        v5 = v38;
        a1 = v36;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = MEMORY[0x277CCACA8];
          v28 = [v38 startTime];
          v29 = [v38 endTime];
          v30 = [*(v36 + 40) privateEventsDescription];
          v31 = [v27 stringWithFormat:@"%s [SK TypingTimer][SK Duration] Removing negative duration sessionStats found while reporting: %f %@ %@\n%@\n%@", "-[TISKMetricCollector removeSessionStatsWithNegativeDurationFromArray:ForTypingSession:]_block_invoke", *&v9, v28, v29, v25, v30];
          *buf = 138412290;
          v46 = v31;
          _os_log_error_impl(&dword_22CA55000, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        a3 = v37;
      }

      else
      {
        log = IXADefaultLogFacility();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v32 = MEMORY[0x277CCACA8];
          v33 = [v5 startTime];
          v34 = [v5 endTime];
          v35 = [v32 stringWithFormat:@"%s [SK TypingTimer][SK Duration] Removing negative duration sessionStats found while loading: %f %@ %@", "-[TISKMetricCollector removeSessionStatsWithNegativeDurationFromArray:ForTypingSession:]_block_invoke", *&v9, v33, v34];
          *buf = 138412290;
          v46 = v35;
          _os_log_error_impl(&dword_22CA55000, log, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      [*(a1 + 48) addIndex:a3];
    }
  }
}

- (void)_persistSavedSessionStatsArray
{
  v17 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  userModelDataStore = self->_userModelDataStore;
  normalizedIdentifier = [(TIInputMode *)self->_inputMode normalizedIdentifier];
  [(TIUserModelDataStore *)userModelDataStore purgeDataForKey:@"SensorKitDataKey" forInputMode:normalizedIdentifier beforeDate:date];

  if ([(NSMutableArray *)self->_savedSessionStatsArray count])
  {
    savedSessionStatsArray = self->_savedSessionStatsArray;
    v14 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:savedSessionStatsArray requiringSecureCoding:1 error:&v14];
    v8 = v14;
    if (v8)
    {
      normalizedIdentifier3 = IXADefaultLogFacility();
      if (os_log_type_enabled(normalizedIdentifier3, OS_LOG_TYPE_DEBUG))
      {
        v10 = MEMORY[0x277CCACA8];
        normalizedIdentifier2 = [(TIInputMode *)self->_inputMode normalizedIdentifier];
        v12 = [v10 stringWithFormat:@"%s [SensorKit] failed to archive stats for input mode %@", "-[TISKMetricCollector _persistSavedSessionStatsArray]", normalizedIdentifier2];
        *buf = 138412290;
        v16 = v12;
        _os_log_debug_impl(&dword_22CA55000, normalizedIdentifier3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    else
    {
      v13 = self->_userModelDataStore;
      normalizedIdentifier3 = [(TIInputMode *)self->_inputMode normalizedIdentifier];
      [(TIUserModelDataStore *)v13 addValue:&unk_28400BBF8 andSecondaryValue:&unk_28400BBF8 andRealValue:&unk_28400BBF8 andProperties:v7 forKey:@"SensorKitDataKey" forInputMode:normalizedIdentifier3 forDate:date];
    }
  }
}

- (id)_retrieveSavedSessionSampleArray
{
  v30 = *MEMORY[0x277D85DE8];
  userModelDataStore = self->_userModelDataStore;
  normalizedIdentifier = [(TIInputMode *)self->_inputMode normalizedIdentifier];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v6 = [(TIUserModelDataStore *)userModelDataStore getAllValuesForKey:@"SensorKitDataKey" forInputMode:normalizedIdentifier sinceDate:v5];

  if (v6 && [v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = MEMORY[0x277CCAAC8];
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    properties = [v7 properties];
    v27 = 0;
    v13 = [v8 unarchivedObjectOfClasses:v11 fromData:properties error:&v27];
    v14 = v27;

    if (v14)
    {
      v15 = IXADefaultLogFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v24 = MEMORY[0x277CCACA8];
        normalizedIdentifier2 = [(TIInputMode *)self->_inputMode normalizedIdentifier];
        v26 = [v24 stringWithFormat:@"%s [SensorKit] failed to unarchive stats for input mode %@", "-[TISKMetricCollector _retrieveSavedSessionSampleArray]", normalizedIdentifier2];
        *buf = 138412290;
        v29 = v26;
        _os_log_debug_impl(&dword_22CA55000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    indexSet = [MEMORY[0x277CCAB58] indexSet];
    if ([v13 count])
    {
      v17 = 0;
      do
      {
        v18 = [v13 objectAtIndexedSubscript:v17];
        startTime = [v18 startTime];
        [startTime timeIntervalSinceNow];
        v21 = fabs(v20);

        if (v21 > 86400.0)
        {
          [indexSet addIndex:v17];
        }

        ++v17;
      }

      while (v17 < [v13 count]);
    }

    [v13 removeObjectsAtIndexes:indexSet];
  }

  else
  {
    v13 = 0;
  }

  v22 = [v13 copy];

  return v22;
}

- (void)_loadStatsFromDataStore
{
  if (!self->_isLoaded)
  {
    self->_isLoaded = 1;
    _retrieveSavedSessionSampleArray = [(TISKMetricCollector *)self _retrieveSavedSessionSampleArray];
    v5 = _retrieveSavedSessionSampleArray;
    if (_retrieveSavedSessionSampleArray)
    {
      v8 = _retrieveSavedSessionSampleArray;
      v6 = [MEMORY[0x277CBEB18] arrayWithArray:_retrieveSavedSessionSampleArray];
      savedSessionStatsArray = self->_savedSessionStatsArray;
      self->_savedSessionStatsArray = v6;

      _retrieveSavedSessionSampleArray = [(TISKMetricCollector *)self removeSessionStatsWithNegativeDurationFromArray:self->_savedSessionStatsArray ForTypingSession:0];
      v5 = v8;
    }

    MEMORY[0x2821F96F8](_retrieveSavedSessionSampleArray, v5);
  }
}

- (void)handleTypingSession:(id)session
{
  v26 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (!self->_isTCCAuthorized)
  {
    v16 = IXADefaultLogFacility();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
LABEL_17:

      array = [MEMORY[0x277CBEB18] array];
      savedSessionStatsArray = self->_savedSessionStatsArray;
      self->_savedSessionStatsArray = array;
      goto LABEL_18;
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] failed TCC authorization - dropping session", "-[TISKMetricCollector handleTypingSession:]"];
    *buf = 138412290;
    v25 = v17;
LABEL_20:
    _os_log_debug_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

    goto LABEL_17;
  }

  dataWriter = [(TISKMetricCollector *)self dataWriter];
  if (!dataWriter || (v6 = dataWriter, -[TISKMetricCollector dataWriter](self, "dataWriter"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isReady], v7, v6, (v8 & 1) == 0))
  {
    v16 = IXADefaultLogFacility();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] writer is not ready - dropping session", "-[TISKMetricCollector handleTypingSession:]"];
    *buf = 138412290;
    v25 = v17;
    goto LABEL_20;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  savedSessionStatsArray = [sessionCopy userActionHistory];
  v10 = [savedSessionStatsArray countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
LABEL_6:
    v13 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(savedSessionStatsArray);
      }

      [*(*(&v19 + 1) + 8 * v13) occurenceTime];
      if (v14 < 0.0)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [savedSessionStatsArray countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:

    v15 = +[TISKMetricDefinition metricDefinitions];
    [(TISKMetricCollector *)self _loadStatsFromDataStore];
    savedSessionStatsArray = [(TISKMetricCollector *)self consumeTypingSession:sessionCopy];
    if (savedSessionStatsArray)
    {
      [(TISKMetricCollector *)self removeSessionStatsWithNegativeDurationFromArray:self->_savedSessionStatsArray ForTypingSession:sessionCopy];
      [(TISKMetricCollector *)self processNewSessionStatsArray:savedSessionStatsArray];
      [(TISKMetricCollector *)self _persistSavedSessionStatsArray];
      [(TISKMetricCollector *)self _clear];
    }
  }

LABEL_18:
}

- (void)sessionDidEnd:(id)end aligned:(id)aligned
{
  location[3] = *MEMORY[0x277D85DE8];
  endCopy = end;
  v6 = IXADefaultLogFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] enqueue session", "-[TISKMetricCollector sessionDidEnd:aligned:]"];
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v9;
    _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", location, 0xCu);
  }

  v7 = endCopy;
  objc_initWeak(location, self);
  objc_copyWeak(&v11, location);
  v10 = v7;
  v8 = v7;
  TIDispatchAsync();

  objc_destroyWeak(&v11);
  objc_destroyWeak(location);
}

void __45__TISKMetricCollector_sessionDidEnd_aligned___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = IXADefaultLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] dequeue session", "-[TISKMetricCollector sessionDidEnd:aligned:]_block_invoke"];
      *buf = 138412290;
      v6 = v4;
      _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    [WeakRetained handleTypingSession:*(a1 + 32)];
  }
}

- (BOOL)publishIfSessionStatsHasWordCountMoreThanThreshold:(id)threshold withSessionStartTime:(BOOL)time
{
  timeCopy = time;
  thresholdCopy = threshold;
  v7 = [thresholdCopy counter:kTISKNumberOfWordsCounter];
  integerValue = [v7 integerValue];

  wordAccumulationThreshold = [(TISKMetricCollector *)self wordAccumulationThreshold];
  if (integerValue >= wordAccumulationThreshold)
  {
    dataWriter = [(TISKMetricCollector *)self dataWriter];
    [dataWriter publishSessionStats:thresholdCopy withSessionStartTime:timeCopy];
  }

  return integerValue >= wordAccumulationThreshold;
}

- (void)processNewSessionStatsArray:(id)array
{
  v26 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [arrayCopy countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if (([v9 isEmpty] & 1) == 0 && !-[TISKMetricCollector publishIfSessionStatsHasWordCountMoreThanThreshold:withSessionStartTime:](self, "publishIfSessionStatsHasWordCountMoreThanThreshold:withSessionStartTime:", v9, 1))
        {
          savedSessionStatsArray = self->_savedSessionStatsArray;
          layout = [v9 layout];
          v12 = [(TISKMetricCollector *)self findIndexSessionStatsFromArray:savedSessionStatsArray thatHasLayout:layout];

          if (v12 == -1)
          {
            v16 = IXADefaultLogFacility();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] savedSessionStats is nil", "-[TISKMetricCollector processNewSessionStatsArray:]"];
              *buf = 138412290;
              v24 = v18;
              _os_log_debug_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            [(NSMutableArray *)self->_savedSessionStatsArray addObject:v9];
          }

          else
          {
            v13 = [(NSMutableArray *)self->_savedSessionStatsArray objectAtIndex:v12];
            v14 = IXADefaultLogFacility();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] savedSessionStats not nil, savedSessionStats class %@", "-[TISKMetricCollector processNewSessionStatsArray:]", objc_opt_class()];
              *buf = 138412290;
              v24 = v17;
              _os_log_debug_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            sessionIds = [v13 sessionIds];

            if (sessionIds)
            {
              [v13 merge:v9];
              if ([(TISKMetricCollector *)self publishIfSessionStatsHasWordCountMoreThanThreshold:v13 withSessionStartTime:0])
              {
                [(NSMutableArray *)self->_savedSessionStatsArray removeObjectAtIndex:v12];
              }
            }

            else
            {
              [(NSMutableArray *)self->_savedSessionStatsArray removeObjectAtIndex:v12];
              [(NSMutableArray *)self->_savedSessionStatsArray addObject:v9];
            }
          }
        }
      }

      v6 = [arrayCopy countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }
}

- (double)totalTimeSpanFromLastTap
{
  v3 = [(NSArray *)self->_sortedEvents count];
  v4 = 0.0;
  if ((v3 - 1) >= 0)
  {
    v5 = v3;
    do
    {
      v6 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:--v5];
      v7 = [v6 tap];
      if (v7)
      {
        v8 = v7;
        v9 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v5];
        v10 = [v9 tap];
        lastTouch = [v10 lastTouch];

        if (lastTouch)
        {
          v12 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v5];
          v13 = [v12 tap];

          lastTouch2 = [v13 lastTouch];
          [lastTouch2 timestamp];
          v16 = v15;
          v17 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:0];
          [v17 touchDownTimestamp];
          v4 = v16 - v18;

          return v4;
        }
      }

      else
      {
      }
    }

    while (v5 > 0);
  }

  return v4;
}

- (double)totalTimeSpan
{
  v3 = 0.0;
  if (![(NSArray *)self->_sortedEvents count])
  {
LABEL_5:
    v7 = 0;
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v4 = 0;
  while (1)
  {
    v5 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v4];
    hasTimestamp = [v5 hasTimestamp];

    if (hasTimestamp)
    {
      break;
    }

    if (++v4 >= [(NSArray *)self->_sortedEvents count])
    {
      goto LABEL_5;
    }
  }

  v7 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v4];
  if (!v7)
  {
    goto LABEL_6;
  }

  v10 = [(NSArray *)self->_sortedEvents count];
  while ((--v10 & 0x8000000000000000) == 0)
  {
    v11 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v10];
    hasTimestamp2 = [v11 hasTimestamp];

    if (hasTimestamp2)
    {
      v8 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v10];
      goto LABEL_14;
    }
  }

  v8 = 0;
LABEL_14:
  if (v7 != v8)
  {
    [v8 touchUpTimestamp];
    v14 = v13;
    [v7 touchDownTimestamp];
    v3 = v14 - v15;
  }

LABEL_7:

  return v3;
}

- (id)privateEventsDescription
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_string(MEMORY[0x277CCAB68], a2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_sortedEvents;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        privateDescription = [*(*(&v11 + 1) + 8 * i) privateDescription];
        [v3 appendString:privateDescription];

        [v3 appendString:@"|"];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)eventsDescription:(BOOL)description
{
  descriptionCopy = description;
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_sortedEvents;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 description];
        [v5 appendString:v12];

        if (descriptionCopy && [v11 type] != 13 && objc_msgSend(v11, "type") != 14 && objc_msgSend(v11, "type") != 7 && objc_msgSend(v11, "type") != 11)
        {
          v13 = MEMORY[0x277CCACA8];
          [v11 touchDownTimestamp];
          v15 = v14;
          [v11 touchUpTimestamp];
          v17 = [v13 stringWithFormat:@":%lf->%lf", v15, v16, v19];
          [v5 appendString:v17];
        }

        [v5 appendString:@"|"];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_coalesceTaps
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  taps = self->_taps;
  self->_taps = v3;

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v5 = [(NSMutableArray *)self->_touches count];
  v6 = 0;
  if (!v5)
  {
    goto LABEL_21;
  }

  do
  {
    v7 = v6;
    v18 = [(NSMutableArray *)self->_touches objectAtIndex:0];

    [(NSMutableArray *)self->_touches removeObjectAtIndex:0];
    v8 = [(NSMutableArray *)self->_layoutIDs objectAtIndex:0];
    integerValue = [v8 integerValue];

    [(NSMutableArray *)self->_layoutIDs removeObjectAtIndex:0];
    pathIndex = [v18 pathIndex];
    v11 = [TISKTap alloc];
    v12 = [(TISKMetricCollector *)self _mapIDToLayout:integerValue];
    v13 = [(TISKTap *)v11 init:v18 layout:v12];

    [v13 setPathIndex:pathIndex];
    if (![(NSMutableArray *)self->_touches count])
    {
      goto LABEL_15;
    }

    v14 = 0;
    while (1)
    {
      v15 = v18;
      v18 = [(NSMutableArray *)self->_touches objectAtIndex:v14];

      if ([v18 pathIndex] == pathIndex)
      {
        break;
      }

LABEL_12:
      if ([(NSMutableArray *)self->_touches count]<= ++v14)
      {
        goto LABEL_15;
      }
    }

    if ([v18 stage] == 1)
    {
      [v13 addDragTouch:v18];
LABEL_11:
      v19 = v14;
      std::vector<unsigned long>::push_back[abi:nn200100](&v20, &v19);
      goto LABEL_12;
    }

    if ([v18 stage] != 2 && objc_msgSend(v18, "stage") != 3 && objc_msgSend(v18, "stage") != 5)
    {
      if (![v18 stage])
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    [v13 setLastTouch:v18];
    v19 = v14;
    std::vector<unsigned long>::push_back[abi:nn200100](&v20, &v19);
LABEL_15:
    [(NSMutableArray *)self->_taps addObject:v13];
    v16 = v20;
    if ((((v21 - v20) >> 3) - 1) >= 0)
    {
      v17 = 8 * (((v21 - v20) >> 3) - 1);
      do
      {
        [(NSMutableArray *)self->_touches removeObjectAtIndex:*&v16[v17]];
        [(NSMutableArray *)self->_layoutIDs removeObjectAtIndex:*&v16[v17]];
        v17 -= 8;
      }

      while (v17 != -8);
    }

    v21 = v16;

    v5 = [(NSMutableArray *)self->_touches count];
    v6 = v18;
  }

  while (v5);
  if (v16)
  {
    operator delete(v16);
    v6 = v18;
  }

LABEL_21:

  MEMORY[0x2821F96F8](v5, v6);
}

- (id)_mapIDToLayout:(unint64_t)layout
{
  accentedLayoutsMap = self->_accentedLayoutsMap;
  if (accentedLayoutsMap)
  {
    v6 = [(NSMutableArray *)accentedLayoutsMap objectAtIndexedSubscript:layout];
  }

  else
  {
    layouts = [(TITypingSession *)self->_typingSession layouts];
    v6 = [layouts objectAtIndexedSubscript:layout];
  }

  return v6;
}

- (id)_insertEmojiSwitchEvents:(id)events
{
  v65 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if (![eventsCopy count])
  {
    v42 = eventsCopy;
    goto LABEL_55;
  }

  v4 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v54 = eventsCopy;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v60 objects:v64 count:16];
  v59 = v4;
  if (!v6)
  {
    v11 = 0;
    v10 = 0;
    v41 = v5;
    goto LABEL_37;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *v61;
  v57 = v5;
  do
  {
    v13 = 0;
    v14 = v10;
    do
    {
      if (*v61 != v12)
      {
        objc_enumerationMutation(v5);
      }

      v15 = *(*(&v60 + 1) + 8 * v13);
      type = [v15 type];
      if (type <= 0x11)
      {
        if (((1 << type) & 0x1ABFD) != 0)
        {
          emojiSearchMode = [v15 emojiSearchMode];
          if (v8)
          {
            if (emojiSearchMode)
            {
              goto LABEL_11;
            }

            if (v9)
            {
              v25 = [TISKEmojiSearchEvent alloc];
              [v11 touchUpTimestamp];
              v27 = -[TISKEmojiSearchEvent init:engaged:order:](v25, "init:engaged:order:", 0, [v14 order] + 1, v26);
              [v59 addObject:v27];
            }

            v28 = [TISKEmojiSwitchEvent alloc];
            [v11 touchUpTimestamp];
            v24 = -[TISKEmojiSwitchEvent init:emojiSearchMode:order:](v28, "init:emojiSearchMode:order:", 0, [v14 order] + 2, v29);
            v8 = 0;
            v9 = 0;
            goto LABEL_25;
          }

          if (!emojiSearchMode)
          {
            v8 = 0;
            goto LABEL_27;
          }

          v18 = [TISKEmojiSwitchEvent alloc];
          [v15 touchDownTimestamp];
          v8 = 1;
          v20 = -[TISKEmojiSwitchEvent init:emojiSearchMode:order:](v18, "init:emojiSearchMode:order:", 1, [v15 order] - 2, v19);
          v21 = v59;
          [v59 addObject:v20];

          v22 = [TISKEmojiSearchEvent alloc];
          [v15 touchDownTimestamp];
          v24 = -[TISKEmojiSearchEvent init:engaged:order:](v22, "init:engaged:order:", 1, [v15 order] - 1, v23);
          v9 = 1;
        }

        else
        {
          if (type == 12)
          {
            if (v9 & 1 | ((v8 & 1) == 0))
            {
              goto LABEL_27;
            }

            v33 = [TISKEmojiSearchEvent alloc];
            [v15 touchDownTimestamp];
            v9 = 1;
            v32 = -[TISKEmojiSearchEvent init:engaged:order:](v33, "init:engaged:order:", 1, [v15 order] - 1, v34);
          }

          else
          {
            if (type != 17)
            {
              goto LABEL_27;
            }

            if (v8)
            {
LABEL_11:
              v8 = 1;
              goto LABEL_27;
            }

            v30 = [TISKEmojiSwitchEvent alloc];
            [v15 touchDownTimestamp];
            v8 = 1;
            v32 = -[TISKEmojiSwitchEvent init:emojiSearchMode:order:](v30, "init:emojiSearchMode:order:", 1, [v15 order] - 1, v31);
          }

          v24 = v32;
LABEL_25:
          v21 = v59;
        }

        [v21 addObject:v24];

        v5 = v57;
      }

LABEL_27:
      v10 = v15;

      if ([v10 hasTimestamp])
      {
        v35 = v10;

        v11 = v35;
      }

      ++v13;
      v14 = v10;
    }

    while (v7 != v13);
    v7 = [v5 countByEnumeratingWithState:&v60 objects:v64 count:16];
  }

  while (v7);

  if (v8)
  {
    v4 = v59;
    if (v9)
    {
      v36 = [TISKEmojiSearchEvent alloc];
      [v11 touchUpTimestamp];
      v38 = -[TISKEmojiSearchEvent init:engaged:order:](v36, "init:engaged:order:", 0, [v10 order] + 1, v37);
      [v59 addObject:v38];
    }

    v39 = [TISKEmojiSwitchEvent alloc];
    [v11 touchUpTimestamp];
    v41 = -[TISKEmojiSwitchEvent init:emojiSearchMode:order:](v39, "init:emojiSearchMode:order:", 0, [v10 order] + 2, v40);
    [v59 addObject:v41];
LABEL_37:
  }

  else
  {
    v4 = v59;
  }

  v42 = objc_opt_new();
  if ([v5 count])
  {
    v56 = v42;
    v58 = 0;
    v43 = 0;
    v44 = 0;
    while (1)
    {
      v45 = v58;
      if ([v4 count] <= v58)
      {
        break;
      }

      v46 = v44;
      v47 = [v5 objectAtIndexedSubscript:v43];
      order = [v47 order];
      v49 = [v4 objectAtIndexedSubscript:v58];
      if (order >= [v49 order])
      {
        ++v58;
        v50 = [v4 objectAtIndexedSubscript:v45];
        v44 = v46;
      }

      else
      {
        v44 = (v46 + 1);
        v50 = [v5 objectAtIndexedSubscript:v43];
      }

      [v56 addObject:v50];

      v43 = v44;
      v4 = v59;
      if ([v5 count] <= v44)
      {
        v45 = v58;
        goto LABEL_49;
      }
    }

    v43 = v44;
LABEL_49:
    v42 = v56;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  if ([v5 count] > v43)
  {
    do
    {
      v51 = [v5 objectAtIndexedSubscript:v43];
      [v42 addObject:v51];

      ++v43;
    }

    while ([v5 count] > v43);
  }

  for (; [v4 count] > v45; ++v45)
  {
    v52 = [v4 objectAtIndexedSubscript:v45];
    [v42 addObject:v52];
  }

  eventsCopy = v55;
LABEL_55:

  return v42;
}

- (void)_mapTapsToEvents
{
  selfCopy = self;
  v59 = *MEMORY[0x277D85DE8];
  layouts = [(TITypingSession *)self->_typingSession layouts];
  v4 = [layouts objectAtIndexedSubscript:0];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = selfCopy->_taps;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_30;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v55;
  v50 = *v55;
  do
  {
    v9 = 0;
    v51 = v6;
    do
    {
      if (*v55 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v54 + 1) + 8 * v9);
      if ([v10 isDownUpTap])
      {
        if (v7)
        {
          emojiSearchMode = [v7 emojiSearchMode];
          v12 = [v7 order] + 10;
        }

        else
        {
          emojiSearchMode = 0;
          v12 = 0;
        }

        layout = [v10 layout];

        v53 = emojiSearchMode;
        if (v7 && v4 != layout)
        {
          [v4 frame];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;
          layout2 = [v10 layout];
          [layout2 frame];
          v61.origin.x = v23;
          v61.origin.y = v24;
          v61.size.width = v25;
          v61.size.height = v26;
          v60.origin.x = v15;
          v60.origin.y = v17;
          v60.size.width = v19;
          v60.size.height = v21;
          v27 = CGRectEqualToRect(v60, v61);

          if (v27)
          {
            v28 = [TISKLayoutSwitchEvent alloc];
            [v7 touchUpTimestamp];
            v30 = v29;
            layout3 = [v10 layout];
            v32 = [(TISKLayoutSwitchEvent *)v28 init:layout3 layout:emojiSearchMode emojiSearchMode:v12 order:v30];
          }

          else
          {
            currentSessionStatsArray = selfCopy->_currentSessionStatsArray;
            layout4 = [v10 layout];
            v35 = [(TISKMetricCollector *)selfCopy findIndexSessionStatsFromArray:currentSessionStatsArray thatHasLayout:layout4];

            layout3 = [(NSMutableArray *)selfCopy->_currentSessionStatsArray objectAtIndex:v35];
            v32 = [[TISKBucketSwitchEvent alloc] init:layout3 emojiSearchMode:emojiSearchMode order:v12];
          }

          v36 = v32;

          ++v12;
          [(NSMutableArray *)selfCopy->_events addObject:v36];
          layout5 = [v10 layout];

          v4 = layout5;
        }

        v38 = selfCopy;
        touchToEventMap = selfCopy->_touchToEventMap;
        v40 = MEMORY[0x277CCABB0];
        lastTouch = [v10 lastTouch];
        v42 = [v40 numberWithLong:lastTouch];
        v43 = [(NSMutableDictionary *)touchToEventMap objectForKey:v42];

        if (v43)
        {
          [v43 setTap:v10];
          selfCopy = v38;
          v6 = v51;
          goto LABEL_22;
        }

        stringForIntendedKey = [v10 stringForIntendedKey];
        v45 = stringForIntendedKey;
        v6 = v51;
        if (stringForIntendedKey)
        {
          isEqualToString = objc_msgSend_isEqualToString_(stringForIntendedKey);
          v47 = off_27872D6B8;
          selfCopy = v38;
          if ((isEqualToString & 1) != 0 || (v48 = objc_msgSend_isEqualToString_(v45), v47 = off_27872D690, v48))
          {
            v43 = [objc_alloc(*v47) init:v10 emojiSearchMode:v53 order:v12];
            [(NSMutableArray *)v38->_events addObject:v43];

LABEL_22:
            v45 = v43;

            v7 = v45;
          }
        }

        else
        {
          selfCopy = v38;
        }

        v8 = v50;
      }

      ++v9;
    }

    while (v6 != v9);
    v49 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    v6 = v49;
  }

  while (v49);
LABEL_30:
}

- (void)_metricWalk
{
  currentSessionStatsArray = self->_currentSessionStatsArray;
  layouts = [(TITypingSession *)self->_typingSession layouts];
  v5 = [layouts objectAtIndexedSubscript:0];
  v6 = [(TISKMetricCollector *)self findIndexSessionStatsFromArray:currentSessionStatsArray thatHasLayout:v5];

  v7 = [(NSMutableArray *)self->_currentSessionStatsArray objectAtIndex:v6];
  if (![(NSArray *)self->_sortedEvents count])
  {
    goto LABEL_32;
  }

  v8 = 0;
  v15 = 0;
  do
  {
    if (!v8)
    {
      [v7 addSample:&unk_28400BBE0 forKey:kTISKEpisodeCount];
    }

    v9 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v8];
    type = [v9 type];
    if (type > 12)
    {
      if ((type - 15) < 2 || type == 13)
      {
        [(TISKMetricCollector *)self _haltSessionTypingTimer:v7 event:v15];

LABEL_16:
        v15 = 0;
        goto LABEL_28;
      }

      if (type == 14)
      {
        [(TISKMetricCollector *)self _haltSessionTypingTimer:v7 event:v15];

        [v9 reportToSession:v7];
        sessionStats = [v9 sessionStats];

        v15 = 0;
        v7 = sessionStats;
        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if (type == 7)
    {
      goto LABEL_9;
    }

    if (type != 10)
    {
      if (type == 11)
      {
LABEL_9:
        [v9 reportToSession:v7];
        goto LABEL_28;
      }

LABEL_23:
      if (!v15)
      {
        [v7 startTypingTimerWithEvent:v9];
      }

      [v9 reportToSession:v7];
      [v9 reportInterKeyTiming:v7 previousEvent:v15];
      goto LABEL_26;
    }

    [v9 reportToSession:v7];
    if (!v15)
    {
      goto LABEL_16;
    }

    if ([v15 type] == 5 || objc_msgSend(v15, "type") == 2)
    {
      v12 = [v15 tap];
      [v9 setTap:v12];

LABEL_26:
      if ([v9 hasTimestamp])
      {
        v14 = v9;

        v15 = v14;
      }
    }

LABEL_28:

    ++v8;
  }

  while ([(NSArray *)self->_sortedEvents count]> v8);
  if (!v15)
  {
LABEL_32:
    v15 = 0;
    goto LABEL_33;
  }

  if ([v15 type] != 14)
  {
    [v7 haltTypingTimerWithEvent:v15];
    goto LABEL_34;
  }

LABEL_33:
  [v7 haltTypingTimer];
LABEL_34:
}

- (id)getWordBucketCategoryForWord:(id)word
{
  wordCopy = word;
  [(TISKMetricCollector *)self loadWordBucketDictionaryIfNecessary];
  lowercaseString = [wordCopy lowercaseString];

  punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v7 = [lowercaseString stringByTrimmingCharactersInSet:punctuationCharacterSet];

  v8 = [MEMORY[0x277D6F320] createStringByReplacingStylizedQuotesToStraightQuotes:v7];

  v9 = [(NSDictionary *)self->_wordBucketDictionary objectForKey:v8];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [(TISKMetricCollector *)self lemmatizeWord:v8];
    v10 = [(NSDictionary *)self->_wordBucketDictionary objectForKey:v11];

    if (!v10)
    {
      if (self->_previousWord)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", self->_previousWord, v8];
        v10 = [(NSDictionary *)self->_wordBucketDictionary objectForKey:v12];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  previousWord = self->_previousWord;
  self->_previousWord = v8;

  return v10;
}

- (id)lemmatizeWord:(id)word
{
  [(NLTagger *)self->_tagger setString:word];
  tagger = self->_tagger;
  v5 = *MEMORY[0x277CD8958];

  return [(NLTagger *)tagger tagAtIndex:0 unit:0 scheme:v5 tokenRange:0];
}

- (void)loadEmojiBucketDictionaryIfNecessary
{
  if (!self->_emojiBuckets)
  {
    v4 = [(TISKMetricCollector *)self loadDataWithFilename:@"emojiBuckets"];
    emojiBuckets = self->_emojiBuckets;
    self->_emojiBuckets = v4;

    MEMORY[0x2821F96F8](v4, emojiBuckets);
  }
}

- (void)loadWordBucketDictionaryIfNecessary
{
  if (!self->_wordBucketDictionary)
  {
    v4 = [(TISKMetricCollector *)self loadDataWithFilename:@"wordBuckets"];
    wordBucketDictionary = self->_wordBucketDictionary;
    self->_wordBucketDictionary = v4;

    MEMORY[0x2821F96F8](v4, wordBucketDictionary);
  }
}

- (void)_haltSessionTypingTimer:(id)timer event:(id)event
{
  if (event)
  {
    [timer haltTypingTimerWithEvent:event];
  }

  else
  {
    [timer haltTypingTimer];
  }
}

- (void)_processEvents
{
  v37 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_events count])
  {
    if ([(NSMutableArray *)self->_events count])
    {
      v3 = 0;
      do
      {
        v4 = [(NSMutableArray *)self->_events objectAtIndexedSubscript:v3];
        if ([v4 isMissingATouch])
        {
          v5 = -[TISKTouchlessInputEvent init:order:]([TISKTouchlessInputEvent alloc], "init:order:", [v4 emojiSearchMode], objc_msgSend(v4, "order"));
          [(NSMutableArray *)self->_events setObject:v5 atIndexedSubscript:v3];
        }

        ++v3;
      }

      while (v3 < [(NSMutableArray *)self->_events count]);
    }

    v6 = MEMORY[0x277CBEB18];
    v7 = [(NSMutableArray *)self->_events sortedArrayUsingComparator:&__block_literal_global_224];
    v8 = [v6 arrayWithArray:v7];

    v9 = [(TISKMetricCollector *)self _insertEmojiSwitchEvents:v8];
    sortedEvents = self->_sortedEvents;
    self->_sortedEvents = v9;

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy_;
    v34 = __Block_byref_object_dispose_;
    array = [MEMORY[0x277CBEB18] array];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __37__TISKMetricCollector__processEvents__block_invoke_225;
    aBlock[3] = &unk_278733760;
    aBlock[4] = &v30;
    v11 = _Block_copy(aBlock);
    if ([(NSArray *)self->_sortedEvents count])
    {
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v13];
        if ([v14 type] == 3)
        {
          break;
        }

        if ([v14 type] != 11)
        {
          v11[2](v11);
          if (![v14 type])
          {
            [v14 setWordPosition:v12];
            if (v12 == 4)
            {
              for (i = 0; i != -5; --i)
              {
                v16 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v13 + i];
                [v16 setIsShortWord:0];
              }
            }

            else if (v12 >= 5)
            {
              [v14 setIsShortWord:0];
            }

            ++v12;
            goto LABEL_14;
          }

          goto LABEL_13;
        }

LABEL_14:

        if (++v13 >= [(NSArray *)self->_sortedEvents count])
        {
          goto LABEL_23;
        }
      }

      [v31[5] addObject:v14];
LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }

LABEL_23:
    v11[2](v11);
    [(TISKMetricCollector *)self _metricWalk];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = self->_currentSessionStatsArray;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v25 + 1) + 8 * j);
          startTime = [v22 startTime];
          [(TISKMetricCollector *)self totalTimeSpan];
          v24 = [startTime dateByAddingTimeInterval:?];
          [v22 setEndTime:v24];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v36 count:16];
      }

      while (v19);
    }

    _Block_object_dispose(&v30, 8);
  }
}

uint64_t __37__TISKMetricCollector__processEvents__block_invoke_225(uint64_t a1)
{
  if ([*(*(*(a1 + 32) + 8) + 40) count] >= 2)
  {
    v2 = [*(*(*(a1 + 32) + 8) + 40) count] - 1;
    if (v2 >= 0)
    {
      v3 = 0;
      do
      {
        v4 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndex:v2];
        [v4 setDeletePostion:v3];

        --v2;
        ++v3;
      }

      while (v2 != -1);
    }
  }

  v5 = *(*(*(a1 + 32) + 8) + 40);

  return [v5 removeAllObjects];
}

uint64_t __37__TISKMetricCollector__processEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 order];
  v6 = [v4 order];

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)_consumePathsAndPredictions:(id)predictions emojiSearchMode:(BOOL)mode
{
  modeCopy = mode;
  predictionsCopy = predictions;
  acceptedCandidate = [predictionsCopy acceptedCandidate];
  v7 = predictionsCopy;
  if (acceptedCandidate)
  {
    acceptedString = [predictionsCopy acceptedString];
    if (acceptedString)
    {
      v9 = acceptedString;
      acceptedString2 = [predictionsCopy acceptedString];
      v11 = [acceptedString2 length];

      v7 = predictionsCopy;
      if (!v11)
      {
        goto LABEL_21;
      }

      acceptedCandidate2 = [predictionsCopy acceptedCandidate];
      isContinuousPathConversion = [acceptedCandidate2 isContinuousPathConversion];

      if (isContinuousPathConversion)
      {
        allTouchesM = [predictionsCopy allTouchesM];
        lastObject = [allTouchesM lastObject];

        if (lastObject)
        {
          v16 = [TISKPathEvent alloc];
          acceptedCandidate3 = [predictionsCopy acceptedCandidate];
          allTouchesM2 = [predictionsCopy allTouchesM];
          v19 = [(TISKPathEvent *)v16 init:lastObject candidate:acceptedCandidate3 allTouches:allTouchesM2 emojiSearchMode:modeCopy order:self->_eventOrder];

          touchToEventMap = self->_touchToEventMap;
          v21 = [MEMORY[0x277CCABB0] numberWithLong:lastObject];
          [(NSMutableDictionary *)touchToEventMap setObject:v19 forKey:v21];
        }

        else
        {
          v19 = [[TISKTouchlessInputEvent alloc] init:modeCopy order:self->_eventOrder];
        }

        [(NSMutableArray *)self->_events addObject:v19];
        self->_eventOrder += 100;
      }

      else
      {
        v7 = predictionsCopy;
        if (modeCopy)
        {
          goto LABEL_21;
        }

        if ([(NSMutableArray *)self->_events count])
        {
          lastObject2 = [(NSMutableArray *)self->_events lastObject];
          eventOrder = [lastObject2 order];
        }

        else
        {
          eventOrder = self->_eventOrder;
        }

        v24 = eventOrder + 1;
        if (([predictionsCopy wordEntryType] & 4) != 0)
        {
          acceptedCandidate4 = [predictionsCopy acceptedCandidate];
          candidate = [acceptedCandidate4 candidate];
          _containsEmoji = [candidate _containsEmoji];

          if (_containsEmoji)
          {
            [(TISKMetricCollector *)self loadEmojiBucketDictionaryIfNecessary];
            emojiBuckets = self->_emojiBuckets;
            acceptedString3 = [predictionsCopy acceptedString];
            v30 = [(NSDictionary *)emojiBuckets objectForKey:acceptedString3];
          }

          else
          {
            v30 = 0;
          }

          v31 = [TISKPredictionBarEvent alloc];
          [predictionsCopy occurenceTime];
          v32 = [(TISKPredictionBarEvent *)v31 init:_containsEmoji emojiPrediction:0 emojiSearchMode:eventOrder + 1 order:v30 emojiBucketCategory:?];
          [(NSMutableArray *)self->_events addObject:v32];
          v24 = eventOrder + 2;
        }

        wordEntryType = [predictionsCopy wordEntryType];
        events = self->_events;
        v35 = [TISKCandidateAcceptEvent alloc];
        acceptedCandidate5 = [predictionsCopy acceptedCandidate];
        acceptedCandidate6 = [predictionsCopy acceptedCandidate];
        candidate2 = [acceptedCandidate6 candidate];
        v39 = [(TISKMetricCollector *)self getWordBucketCategoryForWord:candidate2];
        v40 = [(TISKCandidateAcceptEvent *)v35 init:acceptedCandidate5 emojiSearchMode:0 order:v24 wordBucketCategory:v39 isAutocorrection:wordEntryType & 1];
        [(NSMutableArray *)events addObject:v40];

        self->_eventOrder += 100;
      }
    }

    else
    {
    }

    v7 = predictionsCopy;
  }

LABEL_21:
}

- (void)_consumeInputsAndTouches:(id)touches occurenceTime:(double)time emojiSearchMode:(BOOL)mode
{
  modeCopy = mode;
  v38 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = touches;
  v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        touchEvent = [v11 touchEvent];

        if (touchEvent)
        {
          eventOrder = self->_eventOrder;
          sessionParams = [(TITypingSession *)self->_typingSession sessionParams];
          wordSeparator = [sessionParams wordSeparator];
          v16 = [TISKInputEvent makeInputEvent:v11 emojiSearchMode:modeCopy order:eventOrder wordSeparator:wordSeparator accentedLanguage:self->_accentedLanguage];

          touchToEventMap = self->_touchToEventMap;
          v18 = MEMORY[0x277CCABB0];
          touchEvent2 = [v11 touchEvent];
          v20 = [v18 numberWithLong:touchEvent2];
          [(NSMutableDictionary *)touchToEventMap setObject:v16 forKey:v20];
          goto LABEL_8;
        }

        v16 = objc_msgSend_string(v11);
        if (![v16 length])
        {
          goto LABEL_10;
        }

        v21 = objc_msgSend_string(v11);
        sessionParams2 = [(TITypingSession *)self->_typingSession sessionParams];
        wordSeparator2 = [sessionParams2 wordSeparator];
        isEqualToString = objc_msgSend_isEqualToString_(v21);

        if ((isEqualToString & 1) == 0)
        {
          v25 = objc_msgSend_string(v11);
          _containsEmoji = [v25 _containsEmoji];

          if (_containsEmoji)
          {
            [(TISKMetricCollector *)self loadEmojiBucketDictionaryIfNecessary];
            v27 = [TISKEmojiInputEvent alloc];
            v28 = self->_eventOrder;
            emojiBuckets = self->_emojiBuckets;
            touchEvent2 = objc_msgSend_string(v11);
            v20 = [(NSDictionary *)emojiBuckets objectForKey:touchEvent2];
            v16 = [(TISKEmojiInputEvent *)v27 init:modeCopy emojiSearchMode:v28 order:v20 emojiBucketCategory:time];
LABEL_8:
          }

          else
          {
            v16 = [[TISKTouchlessInputEvent alloc] init:modeCopy order:self->_eventOrder];
          }

          self->_eventOrder += 100;
          [(NSMutableArray *)self->_events addObject:v16];
LABEL_10:
        }

        ++v10;
      }

      while (v8 != v10);
      v30 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      v8 = v30;
    }

    while (v30);
  }
}

- (void)_consumeDeleteWordEvent:(id)event
{
  eventCopy = event;
  keyboardState = [eventCopy keyboardState];
  emojiSearchMode = [keyboardState emojiSearchMode];

  allKeyboardInputs = [eventCopy allKeyboardInputs];
  [eventCopy occurenceTime];
  [(TISKMetricCollector *)self _consumeInputsAndTouches:allKeyboardInputs occurenceTime:emojiSearchMode emojiSearchMode:?];

  touches = self->_touches;
  allTouches = [eventCopy allTouches];
  [(NSMutableArray *)touches addObjectsFromArray:allTouches];

  layoutIDs = self->_layoutIDs;
  touchLayoutsM = [eventCopy touchLayoutsM];

  [(NSMutableArray *)layoutIDs addObjectsFromArray:touchLayoutsM];
  events = self->_events;
  v13 = [[TISKWordDeleteEvent alloc] initWithEmojiSearchMode:emojiSearchMode order:self->_eventOrder];
  [(NSMutableArray *)events addObject:v13];
}

- (void)_consumeWordEntry:(id)entry
{
  entryCopy = entry;
  keyboardState = [entryCopy keyboardState];
  emojiSearchMode = [keyboardState emojiSearchMode];

  allKeyboardInputs = [entryCopy allKeyboardInputs];
  [entryCopy occurenceTime];
  [(TISKMetricCollector *)self _consumeInputsAndTouches:allKeyboardInputs occurenceTime:emojiSearchMode emojiSearchMode:?];

  [(TISKMetricCollector *)self _consumePathsAndPredictions:entryCopy emojiSearchMode:emojiSearchMode];
  touches = self->_touches;
  allTouches = [entryCopy allTouches];
  [(NSMutableArray *)touches addObjectsFromArray:allTouches];

  layoutIDs = self->_layoutIDs;
  touchLayoutsM = [entryCopy touchLayoutsM];

  [(NSMutableArray *)layoutIDs addObjectsFromArray:touchLayoutsM];
}

- (void)_consumeUserAction:(id)action
{
  actionCopy = action;
  if ([actionCopy actionType] == 2 && -[NSMutableArray count](self->_events, "count"))
  {
    events = self->_events;
    v5 = [TISKCursorMoveEvent alloc];
    [actionCopy occurenceTime];
    v7 = v6;
    keyboardState = [actionCopy keyboardState];
    v9 = -[TISKCursorMoveEvent init:emojiSearchMode:order:](v5, "init:emojiSearchMode:order:", [keyboardState emojiSearchMode], self->_eventOrder, v7);
    [(NSMutableArray *)events addObject:v9];

    self->_eventOrder += 100;
  }
}

- (id)_consumeTypingSession:(id)session
{
  v27 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  [(TISKMetricCollector *)self _resetConsumeState];
  objc_storeStrong(&self->_typingSession, session);
  [(TISKMetricCollector *)self setupSessionStatsForLayouts];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = sessionCopy;
  userActionHistory = [sessionCopy userActionHistory];
  v7 = [userActionHistory countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(userActionHistory);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        keyboardState = [v11 keyboardState];
        textInputTraits = [keyboardState textInputTraits];
        if ([textInputTraits autocorrectionType] == 1)
        {
          keyboardState2 = [v11 keyboardState];
          emojiSearchMode = [keyboardState2 emojiSearchMode];

          if (!emojiSearchMode)
          {
            continue;
          }
        }

        else
        {
        }

        actionType = [v11 actionType];
        if (actionType == 1)
        {
          [(TISKMetricCollector *)self _consumeDeleteWordEvent:v11];
        }

        else if (actionType)
        {
          [(TISKMetricCollector *)self _consumeUserAction:v11];
        }

        else
        {
          [(TISKMetricCollector *)self _consumeWordEntry:v11];
        }
      }

      v8 = [userActionHistory countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  while (1)
  {
    lastObject = [(NSMutableArray *)self->_events lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      break;
    }

    [(NSMutableArray *)self->_events removeLastObject];
  }

  if ([(NSMutableArray *)self->_touches count])
  {
    [(TISKMetricCollector *)self _coalesceTaps];
    [(TISKMetricCollector *)self _mapTapsToEvents];
    [(TISKMetricCollector *)self _processEvents];
    v19 = self->_currentSessionStatsArray;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)setupSessionStatsForLayouts
{
  v39 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(TITypingSession *)self->_typingSession layouts];
  v3 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v35;
    v29 = *v35;
    do
    {
      v6 = 0;
      v30 = v4;
      do
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * v6);
        if ([(TISKMetricCollector *)self findIndexSessionStatsFromArray:self->_currentSessionStatsArray thatHasLayout:v7]== -1)
        {
          v33 = [TISKSessionStats alloc];
          startTime = [(TITypingSession *)self->_typingSession startTime];
          endTime = [(TITypingSession *)self->_typingSession endTime];
          identifier = self->_identifier;
          locale = [(TITypingSession *)self->_typingSession locale];
          localeIdentifier = [locale localeIdentifier];
          v12 = MEMORY[0x277CBEB18];
          sessionId = [(TITypingSession *)self->_typingSession sessionId];
          uUIDString = [sessionId UUIDString];
          v15 = [v12 arrayWithObject:uUIDString];
          v16 = [(TISKSessionStats *)v33 init:startTime endDate:endTime identifier:identifier version:@"v.1.0" inputMode:localeIdentifier sessionIds:v15 layout:v7];

          v5 = v29;
          v4 = v30;

          [(NSMutableArray *)self->_currentSessionStatsArray addObject:v16];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v4);
  }

  if (self->_accentedLanguage)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    array = [MEMORY[0x277CBEB18] array];
    accentedLayoutsMap = self->_accentedLayoutsMap;
    self->_accentedLayoutsMap = array;

    layouts = [(TITypingSession *)self->_typingSession layouts];
    v21 = [layouts count];

    if (v21)
    {
      v22 = 0;
      do
      {
        layouts2 = [(TITypingSession *)self->_typingSession layouts];
        v24 = [layouts2 objectAtIndexedSubscript:v22];

        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v24, "firstKeyString")}];
        v26 = [dictionary objectForKey:v25];
        if (!v26)
        {
          [dictionary setObject:v24 forKey:v25];
          v26 = v24;
        }

        [(NSMutableArray *)self->_accentedLayoutsMap setObject:v26 atIndexedSubscript:v22];

        ++v22;
        layouts3 = [(TITypingSession *)self->_typingSession layouts];
        v28 = [layouts3 count];
      }

      while (v22 < v28);
    }
  }
}

- (int64_t)findIndexSessionStatsFromArray:(id)array thatHasLayout:(id)layout
{
  arrayCopy = array;
  layoutCopy = layout;
  if ([arrayCopy count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [arrayCopy objectAtIndex:v7];
      layout = [v8 layout];
      [layout frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [layoutCopy frame];
      v25.origin.x = v18;
      v25.origin.y = v19;
      v25.size.width = v20;
      v25.size.height = v21;
      v24.origin.x = v11;
      v24.origin.y = v13;
      v24.size.width = v15;
      v24.size.height = v17;
      v22 = CGRectEqualToRect(v24, v25);

      if (v22)
      {
        break;
      }

      if (++v7 >= [arrayCopy count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = -1;
  }

  return v7;
}

- (void)_clear
{
  events = self->_events;
  self->_events = 0;

  touches = self->_touches;
  self->_touches = 0;

  layoutIDs = self->_layoutIDs;
  self->_layoutIDs = 0;

  touchToEventMap = self->_touchToEventMap;
  self->_touchToEventMap = 0;

  sortedEvents = self->_sortedEvents;
  self->_sortedEvents = 0;

  currentSessionStatsArray = self->_currentSessionStatsArray;
  self->_currentSessionStatsArray = 0;

  accentedLayoutsMap = self->_accentedLayoutsMap;
  self->_accentedLayoutsMap = 0;
}

- (void)_resetConsumeState
{
  array = [MEMORY[0x277CBEB18] array];
  currentSessionStatsArray = self->_currentSessionStatsArray;
  self->_currentSessionStatsArray = array;

  array2 = [MEMORY[0x277CBEB18] array];
  events = self->_events;
  self->_events = array2;

  array3 = [MEMORY[0x277CBEB18] array];
  touches = self->_touches;
  self->_touches = array3;

  array4 = [MEMORY[0x277CBEB18] array];
  layoutIDs = self->_layoutIDs;
  self->_layoutIDs = array4;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  touchToEventMap = self->_touchToEventMap;
  self->_touchToEventMap = dictionary;

  sortedEvents = self->_sortedEvents;
  self->_sortedEvents = 0;

  self->_eventOrder = 100;
}

- (void)_setupTCCAuthNotification
{
  v16 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  handler = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __48__TISKMetricCollector__setupTCCAuthNotification__block_invoke;
  v11 = &unk_27872EC08;
  objc_copyWeak(&v12, &location);
  if (notify_register_dispatch("com.apple.tcc.access.changed", &self->_tccNotifyToken, workQueue, &handler))
  {
    v4 = IXADefaultLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = MEMORY[0x277CCACA8];
      normalizedIdentifier = [(TIInputMode *)self->_inputMode normalizedIdentifier];
      v7 = [v5 stringWithFormat:@"%s [SensorKit] failed to setup notification with TCC for input mode %@", "-[TISKMetricCollector _setupTCCAuthNotification]", normalizedIdentifier, handler, v9, v10, v11];
      *buf = 138412290;
      v15 = v7;
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    self->_tccNotifyToken = -1;
  }

  else
  {
    [(TISKMetricCollector *)self testTCCAuthorization];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __48__TISKMetricCollector__setupTCCAuthNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained testTCCAuthorization];
}

- (void)testTCCAuthorization
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = TCCAccessCopyBundleIdentifiersForService();
  v4 = v3;
  if (!self->_skipTCCAuthorization && ![v3 count])
  {
    dataWriter = IXADefaultLogFacility();
    if (os_log_type_enabled(dataWriter, OS_LOG_TYPE_DEBUG))
    {
      v13 = MEMORY[0x277CCACA8];
      normalizedIdentifier = [(TIInputMode *)self->_inputMode normalizedIdentifier];
      v15 = [v13 stringWithFormat:@"%s [SensorKit] TCC is not authorized for input mode %@", "-[TISKMetricCollector testTCCAuthorization]", normalizedIdentifier];
      *buf = 138412290;
      v17 = v15;
      _os_log_debug_impl(&dword_22CA55000, dataWriter, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v6 = 0;
    goto LABEL_11;
  }

  v5 = IXADefaultLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = MEMORY[0x277CCACA8];
    normalizedIdentifier2 = [(TIInputMode *)self->_inputMode normalizedIdentifier];
    v12 = [v10 stringWithFormat:@"%s [SensorKit] Got TCC authorization for input mode %@", "-[TISKMetricCollector testTCCAuthorization]", normalizedIdentifier2];
    *buf = 138412290;
    v17 = v12;
    _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  if (!self->_dataWriter)
  {
    v7 = +[SRSensorWriterWrapper writerInstance];
    v8 = objc_alloc_init(SRSensorWriterWrapper);
    dataWriter = self->_dataWriter;
    self->_dataWriter = v8;
    v6 = 1;
LABEL_11:

    goto LABEL_12;
  }

  v6 = 1;
LABEL_12:
  self->_isTCCAuthorized = v6;
}

- (void)dealloc
{
  tccNotifyToken = self->_tccNotifyToken;
  if (tccNotifyToken != -1)
  {
    notify_cancel(tccNotifyToken);
  }

  v4.receiver = self;
  v4.super_class = TISKMetricCollector;
  [(TISKMetricCollector *)&v4 dealloc];
}

- (id)loadDataWithFilename:(id)filename
{
  v3 = MEMORY[0x277CCA8D8];
  filenameCopy = filename;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:filenameCopy withExtension:@"plist"];

  v9 = 0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v6 error:&v9];

  return v7;
}

- (id)init:(id)init wordsThreshold:(unint64_t)threshold accentedLanguage:(BOOL)language skipTCCAuthorization:(BOOL)authorization
{
  v42 = *MEMORY[0x277D85DE8];
  initCopy = init;
  v39.receiver = self;
  v39.super_class = TISKMetricCollector;
  v12 = [(TISKMetricCollector *)&v39 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_inputMode, init);
    currentSessionStatsArray = v13->_currentSessionStatsArray;
    v13->_currentSessionStatsArray = 0;

    v13->_wordPosition = -1;
    dataWriter = v13->_dataWriter;
    v13->_dataWriter = 0;

    v13->_wordAccumulationThreshold = 8;
    if (os_variant_has_internal_ui())
    {
      v13->_wordAccumulationThreshold = threshold;
    }

    array = [MEMORY[0x277CBEB18] array];
    savedSessionStatsArray = v13->_savedSessionStatsArray;
    v13->_savedSessionStatsArray = array;

    v13->_isLoaded = 0;
    mEMORY[0x277D6F548] = [MEMORY[0x277D6F548] sharedUserModelDataStore];
    userModelDataStore = v13->_userModelDataStore;
    v13->_userModelDataStore = mEMORY[0x277D6F548];

    v13->_accentedLanguage = language;
    accentedLayoutsMap = v13->_accentedLayoutsMap;
    v13->_accentedLayoutsMap = 0;

    v21 = +[TICryptographer sharedCryptographer];
    normalizedIdentifier = [(TIInputMode *)v13->_inputMode normalizedIdentifier];
    v23 = normalizedIdentifier;
    if (normalizedIdentifier)
    {
      v24 = normalizedIdentifier;
    }

    else
    {
      v24 = @"KEYBOARD";
    }

    v25 = [v21 stringDigestForName:v24];
    identifier = v13->_identifier;
    v13->_identifier = v25;

    if (!v13->_identifier)
    {
      v13->_identifier = @"KEYBOARD-digest";
      v27 = IXADefaultLogFacility();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] _identifier is nil", "-[TISKMetricCollector init:wordsThreshold:accentedLanguage:skipTCCAuthorization:]"];
        *buf = 138412290;
        v41 = v38;
        _os_log_error_impl(&dword_22CA55000, v27, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_attr_make_with_qos_class(v28, QOS_CLASS_UTILITY, 0);

    v30 = dispatch_queue_create("com.apple.textInput.TCCNotification", v29);
    workQueue = v13->_workQueue;
    v13->_workQueue = v30;

    v13->_tccNotifyToken = -1;
    v13->_isTCCAuthorized = 0;
    v13->_skipTCCAuthorization = authorization;
    v32 = objc_alloc(MEMORY[0x277CD89D8]);
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CD8958], 0}];
    v34 = [v32 initWithTagSchemes:v33];
    tagger = v13->_tagger;
    v13->_tagger = v34;

    previousWord = v13->_previousWord;
    v13->_previousWord = 0;
  }

  [(TISKMetricCollector *)v13 _setupTCCAuthNotification];

  return v13;
}

+ (BOOL)isSensorKitSupported:(id)supported
{
  v16 = *MEMORY[0x277D85DE8];
  normalizedIdentifier = [supported normalizedIdentifier];
  v4 = TIInputModeGetLanguage();

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [&unk_28400B868 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(&unk_28400B868);
        }

        if (objc_msgSend_isEqualToString_(v4))
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [&unk_28400B868 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

+ (id)makeMetricCollector:(id)collector wordsThreshold:(unint64_t)threshold isTesting:(BOOL)testing
{
  testingCopy = testing;
  v22 = *MEMORY[0x277D85DE8];
  collectorCopy = collector;
  if ([TISKMetricCollector isSensorKitSupported:collectorCopy])
  {
    normalizedIdentifier = [collectorCopy normalizedIdentifier];
    v9 = TIInputModeGetLanguage();

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [&unk_28400B880 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(&unk_28400B880);
          }

          if (objc_msgSend_isEqualToString_(v9))
          {
            v14 = 1;
            goto LABEL_13;
          }
        }

        v11 = [&unk_28400B880 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_13:
    v15 = [[TISKMetricCollector alloc] init:collectorCopy wordsThreshold:threshold accentedLanguage:v14 skipTCCAuthorization:testingCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)placeTaskOnWorkQueue:(id)queue
{
  queueCopy = queue;
  v3 = queueCopy;
  TIDispatchAsync();
}

uint64_t __66__TISKMetricCollector_TISKSessionStatsTest__placeTaskOnWorkQueue___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = IXADefaultLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] dequeue session", "-[TISKMetricCollector(TISKSessionStatsTest) placeTaskOnWorkQueue:]_block_invoke"];
    *buf = 138412290;
    v6 = v4;
    _os_log_debug_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

@end