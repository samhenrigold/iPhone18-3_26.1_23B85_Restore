@interface HDSleepDaySummaryEnumerator
+ (id)sleepAnalysisQueryDescriptorForDateInterval:(id)interval options:(unint64_t)options;
+ (id)sleepTypesQueryDescriptorsForDateInterval:(id)interval options:(unint64_t)options;
- (BOOL)enumerateWithError:(id *)error handler:(id)handler;
- (HDSleepDaySummaryEnumerator)initWithProfile:(id)profile cachingSession:(id)session gregorianCalendar:(id)calendar morningIndexRange:(id)range ascending:(BOOL)ascending options:(unint64_t)options debugIdentifier:(id)identifier;
- (HDSleepIntervalSummaryBuilder)_updatedBuilderForMorningIndex:(void *)index fromBuilders:(int)builders createIfNeeded:;
- (uint64_t)_enumerateSleepDaySummariesForMorningIndexRanges:(uint64_t)ranges summariesToCache:(void *)cache error:(void *)error handler:(void *)handler;
- (void)_aggregationIntervalAdjustedMorningIndexFromMorningIndex:(void *)index;
- (void)_closeBuilders:(char *)builders fromIndex:(uint64_t)index toIndex:(void *)toIndex summariesToCache:(void *)cache handler:(_BYTE *)handler stop:;
@end

@implementation HDSleepDaySummaryEnumerator

- (HDSleepDaySummaryEnumerator)initWithProfile:(id)profile cachingSession:(id)session gregorianCalendar:(id)calendar morningIndexRange:(id)range ascending:(BOOL)ascending options:(unint64_t)options debugIdentifier:(id)identifier
{
  var1 = range.var1;
  var0 = range.var0;
  profileCopy = profile;
  sessionCopy = session;
  calendarCopy = calendar;
  identifierCopy = identifier;
  v31.receiver = self;
  v31.super_class = HDSleepDaySummaryEnumerator;
  v18 = [(HDSleepDaySummaryEnumerator *)&v31 init];
  v19 = v18;
  if (v18)
  {
    v29 = sessionCopy;
    objc_storeWeak(&v18->_profile, profileCopy);
    objc_storeStrong(&v19->_cachingSession, session);
    objc_storeStrong(&v19->_gregorianCalendar, calendar);
    v19->_morningIndexRange.start = var0;
    v19->_morningIndexRange.duration = var1;
    v19->_ascending = ascending;
    v19->_options = options;
    objc_storeStrong(&v19->_debugIdentifier, identifier);
    v20 = [MEMORY[0x277CBEAB8] hk_componentsWithDayIndex:var0 calendar:calendarCopy];
    date = [v20 date];
    v22 = [calendarCopy component:512 fromDate:date];

    v19->_cachedFirstDayOfWeek = var0 - v22 + 1;
    options = v19->_options;
    if ((options & 4) != 0 || (options & 0x18) == 0)
    {
      sessionCopy = [HDStatisticsCollectionCalculatorCachingSourceOrderProvider sleepSourceOrderProviderForProfile:profileCopy, sessionCopy];
    }

    else
    {
      sessionCopy = 0;
    }

    sourceOrderProvider = v19->_sourceOrderProvider;
    v19->_sourceOrderProvider = sessionCopy;

    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    adjustedMorningIndexCache = v19->_adjustedMorningIndexCache;
    v19->_adjustedMorningIndexCache = v26;

    sessionCopy = v29;
  }

  return v19;
}

- (BOOL)enumerateWithError:(id *)error handler:(id)handler
{
  v97 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC320];
  v7 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    debugIdentifier = self->_debugIdentifier;
    v11 = v9;
    v12 = NSStringFromHKDayIndexRange();
    v13 = HKStringFromBool();
    v14 = HKSleepDaySummaryQueryOptionsStringRepresentation();
    *buf = 138544386;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = debugIdentifier;
    *&buf[22] = 2114;
    v94 = v12;
    *v95 = 2114;
    *&v95[2] = v13;
    *&v95[10] = 2114;
    *&v95[12] = v14;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Enumerate with range: %{public}@, ascending: %{public}@, options: %{public}@", buf, 0x34u);
  }

  v15 = self->_cachingSession;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  behavior = [daemon behavior];
  supportsCachedSleepDaySummaryQueries = [behavior supportsCachedSleepDaySummaryQueries];
  if (v15)
  {
    v20 = supportsCachedSleepDaySummaryQueries;
  }

  else
  {
    v20 = 0;
  }

  if ((v20 & 1) == 0)
  {
    _HKInitializeLogging();
    v26 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = objc_opt_class();
      v29 = self->_debugIdentifier;
      *buf = 138543618;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = v29;
      v30 = v28;
      _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Caching not enabled; enumerating without caching.", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (self->_morningIndexRange.start != *MEMORY[0x277CCBBF8] || self->_morningIndexRange.duration != *(MEMORY[0x277CCBBF8] + 8))
  {
    v32 = objc_loadWeakRetained(&self->_profile);
    database = [v32 database];
    v90 = 0;
    v84 = [(HDHealthEntity *)HDSampleEntity maxRowIDForPredicate:0 healthDatabase:database error:&v90];
    v34 = v90;

    if (!v84)
    {
      _HKInitializeLogging();
      v50 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v74 = v50;
        v75 = objc_opt_class();
        v76 = self->_debugIdentifier;
        *buf = 138543874;
        *&buf[4] = v75;
        *&buf[12] = 2114;
        *&buf[14] = v76;
        *&buf[22] = 2114;
        v94 = v34;
        v77 = v75;
        _os_log_error_impl(&dword_228986000, v74, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Error checking for max row ID to serve as cache anchor: %{public}@", buf, 0x20u);
      }

      v51 = v34;
      v35 = v51;
      if (v51)
      {
        if (error)
        {
          v52 = v51;
          v31 = 0;
          *error = v35;
        }

        else
        {
          _HKLogDroppedError();
          v31 = 0;
        }

        v49 = v35;
        goto LABEL_52;
      }

      v49 = 0;
      goto LABEL_49;
    }

    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v89 = v34;
    v36 = [(HDSampleAggregateCachingSession *)v15 cachesExistWithError:&v89];
    v37 = v89;

    if (v36 == 1)
    {
      _HKInitializeLogging();
      v53 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v54 = v53;
        v55 = objc_opt_class();
        v56 = self->_debugIdentifier;
        *buf = 138543618;
        *&buf[4] = v55;
        *&buf[12] = 2114;
        *&buf[14] = v56;
        v57 = v55;
        _os_log_impl(&dword_228986000, v54, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Cache exists! Returning cached sleep day summaries.", buf, 0x16u);
      }

      v87 = v37;
      v58 = v15;
      v83 = v84;
      v59 = v35;
      v60 = handlerCopy;
      v91[0] = 0;
      v91[1] = v91;
      v91[2] = 0x2020000000;
      v92 = 0;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __96__HDSleepDaySummaryEnumerator__enumerateCacheWithSession_anchor_summariesToCache_error_handler___block_invoke;
      v94 = &unk_278617208;
      *v95 = self;
      v61 = v60;
      *&v95[16] = v61;
      v96 = v91;
      v62 = v59;
      *&v95[8] = v62;
      v82 = [(HDSampleAggregateCachingSession *)v58 activateWithError:&v87 cacheHandler:buf];

      _Block_object_dispose(v91, 8);
      v44 = v87;

      v37 = v44;
      if (v82)
      {
LABEL_21:
        v86 = v44;
        v35 = v35;
        v45 = v15;
        v46 = v84;
        if ([v35 count])
        {
          if (v36 == 2 && ![(HDSampleAggregateCachingSession *)v45 activateWithError:&v86 cacheHandler:&__block_literal_global_338])
          {
            v48 = 0;
            goto LABEL_26;
          }

          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __101__HDSleepDaySummaryEnumerator__cacheSleepDaySummaries_cachingSession_cacheAnchor_isEmptyCache_error___block_invoke_2;
          v94 = &unk_278613630;
          *v95 = self;
          v47 = v35;
          *&v95[8] = v47;
          *&v95[16] = v46;
          [(HDSampleAggregateCachingSession *)v45 insertCaches:v47 anchor:*&v95[16] completion:buf];
        }

        v48 = 1;
LABEL_26:

        v49 = v86;
        if (v48)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __53__HDSleepDaySummaryEnumerator__finishCachingSession___block_invoke;
          v94 = &unk_2786130B0;
          *v95 = self;
          [(HDSampleAggregateCachingSession *)v45 finishWithCompletion:buf];
          v31 = 1;
LABEL_52:

          goto LABEL_53;
        }

        _HKInitializeLogging();
        v66 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          v78 = v66;
          v79 = objc_opt_class();
          v80 = self->_debugIdentifier;
          *buf = 138543874;
          *&buf[4] = v79;
          *&buf[12] = 2114;
          *&buf[14] = v80;
          *&buf[22] = 2114;
          v94 = v49;
          v81 = v79;
          _os_log_error_impl(&dword_228986000, v78, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Error caching sleep day summaries: %{public}@", buf, 0x20u);
        }

        v67 = v49;
        v49 = v67;
        if (v67)
        {
          if (error)
          {
            v68 = v67;
            *error = v49;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

LABEL_49:
        v31 = 0;
        goto LABEL_52;
      }
    }

    else if (v36 == 2)
    {
      _HKInitializeLogging();
      v38 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
        v40 = objc_opt_class();
        v41 = self->_debugIdentifier;
        *buf = 138543618;
        *&buf[4] = v40;
        *&buf[12] = 2114;
        *&buf[14] = v41;
        v42 = v40;
        _os_log_impl(&dword_228986000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Cache does not exist. Enumerating sleep day summaries from scratch.", buf, 0x16u);
      }

      v88 = v37;
      v43 = [(HDSleepDaySummaryEnumerator *)self _enumerateSleepDaySummariesForMorningIndexRanges:self->_morningIndexRange.duration summariesToCache:v35 error:&v88 handler:handlerCopy];
      v44 = v88;

      v37 = v44;
      if (v43)
      {
        goto LABEL_21;
      }
    }

    _HKInitializeLogging();
    v63 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v70 = v63;
      v71 = objc_opt_class();
      v72 = self->_debugIdentifier;
      *buf = 138543874;
      *&buf[4] = v71;
      *&buf[12] = 2114;
      *&buf[14] = v72;
      *&buf[22] = 2114;
      v94 = v37;
      v73 = v71;
      _os_log_error_impl(&dword_228986000, v70, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Error enumerating sleep day summaries: %{public}@", buf, 0x20u);
    }

    v64 = v37;
    v49 = v64;
    if (v64)
    {
      if (error)
      {
        v65 = v64;
        *error = v49;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_49;
  }

  _HKInitializeLogging();
  v21 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = objc_opt_class();
    v24 = self->_debugIdentifier;
    *buf = 138543618;
    *&buf[4] = v23;
    *&buf[12] = 2114;
    *&buf[14] = v24;
    v25 = v23;
    _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Client specified HKDayIndexRangeZero; enumerating without caching.", buf, 0x16u);
  }

LABEL_14:
  v31 = [(HDSleepDaySummaryEnumerator *)self _enumerateSleepDaySummariesForMorningIndexRanges:self->_morningIndexRange.duration summariesToCache:0 error:error handler:handlerCopy];
LABEL_53:

  return v31;
}

- (uint64_t)_enumerateSleepDaySummariesForMorningIndexRanges:(uint64_t)ranges summariesToCache:(void *)cache error:(void *)error handler:(void *)handler
{
  v144 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  handlerCopy = handler;
  if (!self)
  {
    v70 = 0;
    goto LABEL_97;
  }

  v107 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = *(self + 24);
  v11 = a2 == *MEMORY[0x277CCBBF8] && ranges == *(MEMORY[0x277CCBBF8] + 8);
  v12 = v11;
  v105 = v12;
  rangesCopy = ranges;
  v104 = a2;
  selfCopy = self;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v14 = [MEMORY[0x277CCA970] hk_sleepDayIntervalForMorningIndexRange:a2 calendar:{ranges, v10}];
    v15 = v14;
    if (v14)
    {
      v16 = objc_alloc(MEMORY[0x277CCA970]);
      startDate = [v15 startDate];
      v18 = [startDate dateByAddingTimeInterval:-172800.0];
      endDate = [v15 endDate];
      v13 = [v16 initWithStartDate:v18 endDate:endDate];
    }

    else
    {
      v13 = 0;
    }

    ranges = rangesCopy;
    a2 = v104;
  }

  v20 = v13;
  v110 = v20;
  if ((*(self + 56) & 2) != 0)
  {
  }

  else
  {
    v111 = +[HDDataEntity hk_timeZoneEncodingOptions];
    startDate2 = [v110 startDate];
    selfCopy2 = self;
    v22 = *(self + 80);
    *(self + 80) = 0;

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v24 = *(self + 72);
    *(self + 72) = v23;

    if (startDate2)
    {
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v25 = HKSleepScheduleWeekdayArrayFromWeekdays();
      v26 = 0;
      v27 = [v25 countByEnumeratingWithState:&v135 objects:buf count:16];
      if (v27)
      {
        v28 = *v136;
        while (2)
        {
          v29 = 0;
          v30 = v26;
          do
          {
            if (*v136 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v135 + 1) + 8 * v29);
            integerValue = [v31 integerValue];
            WeakRetained = objc_loadWeakRetained((selfCopy + 8));
            v130 = v30;
            v34 = [HDSleepScheduleEntity mostRecentSleepScheduleForWeekday:integerValue beforeDate:startDate2 profile:WeakRetained encodingOptions:v111 error:&v130];
            v26 = v130;

            [*(selfCopy + 72) setObject:v34 forKeyedSubscript:v31];
            if (v34)
            {
              v35 = 1;
            }

            else
            {
              v35 = v26 == 0;
            }

            if (!v35)
            {
              v75 = *(selfCopy + 72);
              *(selfCopy + 72) = 0;

              if (error)
              {
                v76 = v26;
                *error = v26;
              }

              else
              {
                _HKLogDroppedError();
              }

              goto LABEL_94;
            }

            ++v29;
            v30 = v26;
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v135 objects:buf count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      sleepDurationGoalType = [MEMORY[0x277CCD720] sleepDurationGoalType];
      v37 = objc_loadWeakRetained((selfCopy + 8));
      v38 = HDSampleEntityPredicateForStartDate(3, startDate2);
      v126 = v26;
      v39 = [(HDSampleEntity *)HDQuantitySampleEntity mostRecentSampleWithType:sleepDurationGoalType profile:v37 encodingOptions:v111 predicate:v38 anchor:0 error:&v126];
      v25 = v126;

      v40 = *(selfCopy + 80);
      *(selfCopy + 80) = v39;

      if (!*(selfCopy + 72))
      {
        v41 = v25;
        if (!v25)
        {
          v25 = 0;
          v26 = 0;
LABEL_94:

LABEL_95:
          v70 = 0;
          goto LABEL_96;
        }

LABEL_79:
        if (error)
        {
          v92 = v41;
          *error = v25;
        }

        else
        {
          _HKLogDroppedError();
        }

        v26 = v25;
        goto LABEL_94;
      }

      v41 = v25;
      if (!*(selfCopy + 80) && v25)
      {
        v42 = v25;
        goto LABEL_79;
      }

      selfCopy2 = selfCopy;
    }

    v139 = 0;
    v93 = objc_loadWeakRetained((selfCopy2 + 8));
    userCharacteristicsManager = [v93 userCharacteristicsManager];
    v95 = [MEMORY[0x277CCD0D0] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
    v96 = [userCharacteristicsManager userCharacteristicForType:v95 error:&v139];

    if (v96)
    {
      v97 = [v96 hk_dayIndexByAddingYears:18 gregorianCalendar:*(selfCopy + 24)];
    }

    else
    {
      v97 = 0;
    }

    v26 = v139;
    v98 = *(selfCopy + 96);
    *(selfCopy + 96) = v97;

    if (!*(selfCopy + 96) && v26)
    {
      if (error)
      {
        v99 = v26;
        *error = v26;
      }

      else
      {
        _HKLogDroppedError();
      }

      goto LABEL_95;
    }

    ranges = rangesCopy;
    a2 = v104;
    self = selfCopy;
  }

  v134 = 0;
  *&v135 = 0;
  *(&v135 + 1) = &v135;
  v136 = 0x2020000000uLL;
  if ((v105 & 1) == 0)
  {
    v43 = a2 + ranges - 1;
    if (ranges <= 0)
    {
      v43 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (*(self + 48))
    {
      v44 = a2;
    }

    else
    {
      v44 = v43;
    }

    v45 = [(HDSleepDaySummaryEnumerator *)self _aggregationIntervalAdjustedMorningIndexFromMorningIndex:v44];
    *(*(&v135 + 1) + 24) = v45;
  }

  v130 = 0;
  v131 = &v130;
  v132 = 0x2020000000;
  v133 = 0;
  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v129 = 0;
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 3221225472;
  v117 = __111__HDSleepDaySummaryEnumerator__enumerateSleepDaySummariesForMorningIndexRanges_summariesToCache_error_handler___block_invoke;
  v118 = &unk_2786171E0;
  selfCopy3 = self;
  v114 = v107;
  v120 = v114;
  v123 = &v135;
  v124 = &v126;
  v112 = cacheCopy;
  v121 = v112;
  v101 = handlerCopy;
  v122 = v101;
  v125 = &v130;
  v46 = v110;
  v47 = v116;
  if ((*(self + 56) & 2) == 0)
  {
    v48 = v46;
    v49 = [objc_opt_class() sleepTypesQueryDescriptorsForDateInterval:v48 options:{*(selfCopy + 56), v101}];

    v50 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:*(selfCopy + 48)];
    v51 = [HDMultiTypeSortedSampleIterator alloc];
    *buf = v50;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
    v53 = objc_loadWeakRetained((selfCopy + 8));
    v54 = [(HDMultiTypeSortedSampleIterator *)v51 initWithQueryDescriptors:v49 includeDeletedObjects:0 anchor:0 sortDescriptors:v52 bufferSize:100 profile:v53];

    *buf = 0;
    LODWORD(v53) = [(HDMultiTypeSortedSampleIterator *)v54 advanceWithError:buf];
    v55 = *buf;
    if (v53)
    {
      while ((v134 & 1) == 0)
      {
        v56 = objc_autoreleasePoolPush();
        sample = [(HDMultiTypeSortedSampleIterator *)v54 sample];
        v117(v47, sample, &v134);

        objc_autoreleasePoolPop(v56);
        *buf = v55;
        LOBYTE(v56) = [(HDMultiTypeSortedSampleIterator *)v54 advanceWithError:buf];
        v58 = *buf;

        v55 = v58;
        if ((v56 & 1) == 0)
        {
          if (v58)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }
      }
    }

    v58 = v55;
    if (v55)
    {
LABEL_50:
      if (([v58 hk_isHealthKitErrorWithCode:900] & 1) == 0)
      {
        v79 = v58;
        v74 = 0;
        v73 = v58;
        goto LABEL_59;
      }
    }

LABEL_51:
    v73 = 0;
    v74 = 1;
LABEL_59:
    LOBYTE(v139) = v74;

    v70 = v139;
    goto LABEL_60;
  }

  v59 = MEMORY[0x277CCD0C0];
  v60 = *MEMORY[0x277CCBAB8];
  v61 = v46;
  v62 = [v59 categoryTypeForIdentifier:{v60, v101}];
  v63 = [objc_opt_class() sleepAnalysisQueryDescriptorForDateInterval:v61 options:*(selfCopy + 56)];

  v64 = objc_loadWeakRetained((selfCopy + 8));
  v65 = [HDSampleEntity entityEnumeratorWithType:v62 profile:v64];

  samplePredicate = [v63 samplePredicate];
  [v65 setPredicate:samplePredicate];

  encodingOptions = [v63 encodingOptions];
  [v65 addEncodingOptionsFromDictionary:encodingOptions];

  v68 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:*(selfCopy + 48)];
  *buf = v68;
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
  [v65 setOrderingTerms:v69];

  v139 = 0;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __89__HDSleepDaySummaryEnumerator__enumerateSleepSamplesWithDateInterval_stop_error_handler___block_invoke;
  v141 = &unk_278617230;
  v142 = v47;
  v143 = &v134;
  v70 = [v65 enumerateWithError:&v139 handler:buf];
  v71 = v139;
  v72 = v71;
  if (v70)
  {
    v73 = 0;
  }

  else
  {
    v77 = v71;
    v73 = v77;
    if (v77)
    {
      v78 = v77;
    }
  }

LABEL_60:
  v80 = v73;
  v81 = v80;
  if ((v70 & 1) == 0)
  {
    v88 = v80;
    v89 = v88;
    if (v88)
    {
      if (error)
      {
        v90 = v88;
        *error = v89;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_71;
  }

  _HKInitializeLogging();
  v82 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    v83 = objc_opt_class();
    v84 = *(selfCopy + 64);
    v85 = v131[3];
    *buf = 138543874;
    *&buf[4] = v83;
    *&buf[12] = 2114;
    *&buf[14] = v84;
    *&buf[22] = 2050;
    v141 = v85;
    v86 = v83;
    _os_log_impl(&dword_228986000, v82, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Enumerated %{public}ld samples", buf, 0x20u);
  }

  if ((v134 & 1) == 0)
  {
    if (v105)
    {
      v87 = v127[3];
    }

    else
    {
      v87 = v104;
      if (*(selfCopy + 48) == 1)
      {
        if (rangesCopy <= 0)
        {
          v91 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_77;
        }

        v87 = rangesCopy + v104 - 1;
      }
    }

    v91 = v87;
    if (v87)
    {
LABEL_77:
      [(HDSleepDaySummaryEnumerator *)selfCopy _closeBuilders:v114 fromIndex:*(*(&v135 + 1) + 24) toIndex:v91 summariesToCache:v112 handler:v102 stop:&v134];
    }
  }

LABEL_71:

  _Block_object_dispose(&v126, 8);
  _Block_object_dispose(&v130, 8);
  _Block_object_dispose(&v135, 8);
LABEL_96:

LABEL_97:
  return v70;
}

- (void)_aggregationIntervalAdjustedMorningIndexFromMorningIndex:(void *)index
{
  integerValue = a2;
  v4 = index[14];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = index[7];
    if ((v7 & 0x10) != 0)
    {
      v8 = [MEMORY[0x277CBEAA8] hk_sleepMonthStartForMorningIndex:integerValue calendar:index[3]];
    }

    else
    {
      if ((v7 & 8) == 0)
      {
        goto LABEL_8;
      }

      v8 = [MEMORY[0x277CBEAA8] hk_sleepWeekStartForMorningIndex:integerValue calendar:index[3]];
    }

    v9 = v8;
    v10 = [v8 hk_morningIndexWithCalendar:index[3]];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    v12 = index[14];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
    [v12 setObject:v11 forKeyedSubscript:v13];

    integerValue = v10;
    goto LABEL_8;
  }

  integerValue = [v6 integerValue];
LABEL_8:

  return integerValue;
}

void __111__HDSleepDaySummaryEnumerator__enumerateSleepDaySummariesForMorningIndexRanges_summariesToCache_error_handler___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a1[8] + 8);
  v8 = *(a1[9] + 8);
  v9 = *(v5 + 24);
  v10 = a1[6];
  v11 = a1[7];
  v12 = a2;
  v52 = v6;
  v55 = v9;
  v54 = v10;
  v53 = v11;
  v50 = v8;
  v51 = v7;
  v13 = *(v7 + 24);
  v49 = *(v8 + 24);
  if (*(v5 + 48))
  {
    [v12 startDate];
  }

  else
  {
    [v12 endDate];
  }
  v14 = ;
  v15 = [v14 hk_morningIndexWithCalendar:v55];

  v16 = [(HDSleepDaySummaryEnumerator *)v5 _aggregationIntervalAdjustedMorningIndexFromMorningIndex:v15];
  v17 = v16;
  if (*(v5 + 48))
  {
    v18 = v16 - 1;
  }

  else
  {
    v18 = v16 + 1;
  }

  v19 = [(HDSleepDaySummaryEnumerator *)v5 _aggregationIntervalAdjustedMorningIndexFromMorningIndex:v18];
  if (v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = v17;
  }

  if (*(v5 + 48) == 1)
  {
    if (v17 <= v20)
    {
LABEL_12:
      v48 = v20;
      goto LABEL_15;
    }
  }

  else if (v17 >= v20)
  {
    goto LABEL_12;
  }

  [(HDSleepDaySummaryEnumerator *)v5 _closeBuilders:v52 fromIndex:v20 toIndex:v19 summariesToCache:v54 handler:v53 stop:a3];
  v48 = [(HDSleepDaySummaryEnumerator *)v5 _aggregationIntervalAdjustedMorningIndexFromMorningIndex:v17];
LABEL_15:
  v21 = [v12 sampleType];
  v22 = [v21 code];

  if (v22 == 198)
  {
    v23 = v12;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    [v23 weekdays];
    v24 = HKSleepScheduleWeekdayArrayFromWeekdays();
    v25 = [v24 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v57;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v57 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v56 + 1) + 8 * i);
          if ([v29 integerValue])
          {
            [*(v5 + 72) setObject:v23 forKeyedSubscript:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v26);
    }
  }

  v30 = [v12 sampleType];
  v31 = [v30 code];

  if (v31 == 197)
  {
    objc_storeStrong((v5 + 80), a2);
  }

  v32 = [v12 hk_morningIndexRangeWithCalendarWithCalendar:v55];
  v34 = v33;
  if (*(v5 + 32) != *MEMORY[0x277CCBBF8] || *(v5 + 40) != *(MEMORY[0x277CCBBF8] + 8))
  {
    v32 = HKIntersectionDayIndexRange();
    v34 = v35;
  }

  v36 = v12;
  v37 = v52;
  v38 = v32 + v34;
  if (v34 >= 1)
  {
    v39 = 0x7FFFFFFFFFFFFFFFLL;
    v40 = v32;
    do
    {
      v41 = [(HDSleepDaySummaryEnumerator *)v5 _aggregationIntervalAdjustedMorningIndexFromMorningIndex:v40];
      if (v41 != v39)
      {
        v42 = v41;
        v43 = [(HDSleepDaySummaryEnumerator *)v5 _updatedBuilderForMorningIndex:v41 fromBuilders:v37 createIfNeeded:1];
        [v43 addOrderedSample:v36];

        v39 = v42;
      }

      ++v40;
    }

    while (v40 < v38);
  }

  if (v49 >= v32)
  {
    v44 = v32;
  }

  else
  {
    v44 = v49;
  }

  v45 = v38 - 1;
  if (v34 <= 0)
  {
    v45 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v49 > v45)
  {
    v45 = v49;
  }

  if (*(v5 + 48) == 1)
  {
    v46 = v45;
  }

  else
  {
    v46 = v44;
  }

  *(v51 + 24) = v48;
  *(v50 + 24) = v46;

  ++*(*(a1[10] + 8) + 24);
}

- (void)_closeBuilders:(char *)builders fromIndex:(uint64_t)index toIndex:(void *)toIndex summariesToCache:(void *)cache handler:(_BYTE *)handler stop:
{
  v74 = *MEMORY[0x277D85DE8];
  v63 = a2;
  toIndexCopy = toIndex;
  cacheCopy = cache;
  _HKInitializeLogging();
  v12 = MEMORY[0x277CCC320];
  v13 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
  {
    v53 = v13;
    v54 = objc_opt_class();
    v55 = *(self + 64);
    v56 = v54;
    v57 = HKStringFromBool();
    *buf = 138544386;
    v65 = v54;
    v66 = 2114;
    v67 = v55;
    v12 = MEMORY[0x277CCC320];
    v68 = 2050;
    buildersCopy4 = builders;
    v70 = 2050;
    indexCopy = index;
    v72 = 2112;
    v73 = v57;
    _os_log_debug_impl(&dword_228986000, v53, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Closing builders from %{public}ld to %{public}ld (ascending = %@)", buf, 0x34u);
  }

  if (*(self + 48))
  {
    v15 = builders <= index;
  }

  else
  {
    v15 = builders >= index;
  }

  if (v15)
  {
    v17 = *MEMORY[0x277CCBBF8];
    v16 = *(MEMORY[0x277CCBBF8] + 8);
    *&v14 = 138543874;
    v58 = v14;
    indexCopy2 = index;
    do
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(self + 32);
      v20 = *(self + 40);
      v21 = v19 == v17 && v20 == v16;
      if (v21 || ((v22 = __OFSUB__(builders, v19), v23 = &builders[-v19], v23 < 0 == v22) ? (v24 = v23 < v20) : (v24 = 0), v24))
      {
        v33 = *(self + 56);
        if ((v33 & 0x10) != 0)
        {
          v39 = [(HDSleepDaySummaryEnumerator *)self _aggregationIntervalAdjustedMorningIndexFromMorningIndex:builders];
          if (builders == v39)
          {
            goto LABEL_24;
          }

          v46 = v39;
          _HKInitializeLogging();
          v47 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
          {
            v26 = v47;
            v48 = objc_opt_class();
            v49 = *(self + 64);
            *buf = 138544130;
            v65 = v48;
            v66 = 2114;
            v67 = v49;
            v68 = 2050;
            buildersCopy4 = builders;
            v70 = 2050;
            indexCopy = v46;
            v29 = v48;
            v30 = v26;
            v31 = "[%{public}@:%{public}@] Aggregating monthly! Skipping day index %{public}ld because it's beyond start of month index %{public}ld";
LABEL_29:
            v32 = 42;
LABEL_30:
            _os_log_debug_impl(&dword_228986000, v30, OS_LOG_TYPE_DEBUG, v31, buf, v32);
          }
        }

        else
        {
          if ((v33 & 8) == 0 || (v34 = [(HDSleepDaySummaryEnumerator *)self _aggregationIntervalAdjustedMorningIndexFromMorningIndex:builders], builders == v34))
          {
LABEL_24:
            v40 = v16;
            v41 = v17;
            v42 = [(HDSleepDaySummaryEnumerator *)self _updatedBuilderForMorningIndex:builders fromBuilders:v63 createIfNeeded:(*(self + 56) & 1) == 0];
            v43 = v42;
            if (v42)
            {
              createDaySummary = [v42 createDaySummary];
              periods = [createDaySummary periods];
              if ([periods count])
              {

LABEL_32:
                cacheCopy[2](cacheCopy, createDaySummary, handler);
                if (toIndexCopy)
                {
                  [toIndexCopy addObject:createDaySummary];
                }

                v51 = [MEMORY[0x277CCABB0] numberWithInteger:{builders, v58}];
                [v63 setObject:0 forKeyedSubscript:v51];

                if (*handler)
                {

                  objc_autoreleasePoolPop(v18);
                  break;
                }
              }

              else
              {
                v50 = *(self + 56);

                if ((v50 & 1) == 0)
                {
                  goto LABEL_32;
                }
              }

              index = indexCopy2;
              v12 = MEMORY[0x277CCC320];
            }

            v17 = v41;
            v16 = v40;
            goto LABEL_37;
          }

          v35 = v34;
          _HKInitializeLogging();
          v36 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
          {
            v26 = v36;
            v37 = objc_opt_class();
            v38 = *(self + 64);
            *buf = 138544130;
            v65 = v37;
            v66 = 2114;
            v67 = v38;
            v68 = 2050;
            buildersCopy4 = builders;
            v70 = 2050;
            indexCopy = v35;
            v29 = v37;
            v30 = v26;
            v31 = "[%{public}@:%{public}@] Aggregating weekly! Skipping day index %{public}ld because it's beyond start of week index %{public}ld";
            goto LABEL_29;
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        v25 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
        {
          v26 = v25;
          v27 = objc_opt_class();
          v28 = *(self + 64);
          *buf = v58;
          v65 = v27;
          v66 = 2114;
          v67 = v28;
          v68 = 2050;
          buildersCopy4 = builders;
          v29 = v27;
          v30 = v26;
          v31 = "[%{public}@:%{public}@] Skipping index out of range for morning index %{public}ld";
          v32 = 32;
          goto LABEL_30;
        }
      }

LABEL_37:
      objc_autoreleasePoolPop(v18);
      if (*(self + 48))
      {
        ++builders;
      }

      else
      {
        --builders;
      }

      if (*(self + 48))
      {
        v52 = builders <= index;
      }

      else
      {
        v52 = builders >= index;
      }
    }

    while (v52);
  }
}

BOOL __96__HDSleepDaySummaryEnumerator__enumerateCacheWithSession_anchor_summariesToCache_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v54 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = *(a1 + 32);
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  v13 = __OFSUB__(a4, v12);
  v14 = a4 - v12;
  v15 = v14 < 0 == v13 && v14 < v11;
  v16 = MEMORY[0x277CCC320];
  if (!v15)
  {
    _HKInitializeLogging();
    v17 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_FAULT))
    {
      v39 = v17;
      v40 = objc_opt_class();
      v43 = *(*(a1 + 32) + 64);
      v42 = v40;
      v41 = NSStringFromHKDayIndexRange();
      *aBlock = 138544386;
      *&aBlock[4] = v40;
      *&aBlock[12] = 2114;
      *&aBlock[14] = v43;
      *&aBlock[22] = 2050;
      v52 = a4;
      *v53 = 2114;
      *&v53[2] = v41;
      *&v53[10] = 2114;
      *&v53[12] = v9;
      _os_log_fault_impl(&dword_228986000, v39, OS_LOG_TYPE_FAULT, "[%{public}@:%{public}@] Error: Summary for morningIndex %{public}ld is out of bounds for expected morningIndexRange %{public}@: %{public}@", aBlock, 0x34u);
    }
  }

  _HKInitializeLogging();
  v18 = *v16;
  if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
  {
    v33 = v18;
    v34 = objc_opt_class();
    v35 = *(*(a1 + 32) + 64);
    v36 = v34;
    v37 = HKStringFromBool();
    *aBlock = 138544386;
    *&aBlock[4] = v34;
    *&aBlock[12] = 2114;
    *&aBlock[14] = v35;
    *&aBlock[22] = 2050;
    v52 = a4;
    *v53 = 2114;
    *&v53[2] = v37;
    *&v53[10] = 2114;
    *&v53[12] = v9;
    _os_log_debug_impl(&dword_228986000, v33, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Summary returned for dayIndex: %{public}ld, stale: %{public}@, summary: %{public}@", aBlock, 0x34u);
  }

  if (!v9 || v7)
  {
    v21 = *(a1 + 32);
    if (v21)
    {
      v45 = 0;
      v46 = &v45;
      v47 = 0x3032000000;
      v48 = __Block_byref_object_copy__29;
      v49 = __Block_byref_object_dispose__29;
      v50 = 0;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 3221225472;
      *&aBlock[16] = __69__HDSleepDaySummaryEnumerator__sleepDaySummaryForMorningIndex_error___block_invoke;
      v52 = &unk_2786172C0;
      *&v53[8] = &v45;
      *&v53[16] = sel__sleepDaySummaryForMorningIndex_error_;
      *v53 = v21;
      v22 = _Block_copy(aBlock);
      v44 = 0;
      v23 = [(HDSleepDaySummaryEnumerator *)v21 _enumerateSleepDaySummariesForMorningIndexRanges:a4 summariesToCache:1 error:0 handler:&v44, v22];
      v24 = v44;
      v25 = v24;
      if (v23)
      {
        v21 = 0;
        v26 = v46[5];
      }

      else
      {
        v27 = v24;
        v21 = v27;
        if (v27)
        {
          v28 = v27;
        }

        v26 = 0;
      }

      v20 = v26;

      _Block_object_dispose(&v45, 8);
    }

    else
    {
      v20 = 0;
    }

    v29 = v21;

    v19 = v20 != 0;
    if (v20)
    {
      (*(*(a1 + 48) + 16))();
      [*(a1 + 40) addObject:v20];
    }

    else
    {
      v30 = v29;
      v31 = v30;
      if (v30)
      {
        if (a5)
        {
          v32 = v30;
          *a5 = v31;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v19 = 1;
    v20 = v9;
  }

  return v19;
}

uint64_t __89__HDSleepDaySummaryEnumerator__enumerateSleepSamplesWithDateInterval_stop_error_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v4);

  return 1;
}

- (HDSleepIntervalSummaryBuilder)_updatedBuilderForMorningIndex:(void *)index fromBuilders:(int)builders createIfNeeded:
{
  v47 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  v8 = [(HDSleepDaySummaryEnumerator *)self _aggregationIntervalAdjustedMorningIndexFromMorningIndex:a2];
  v9 = 0x277CCA000uLL;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v11 = [indexCopy objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = builders == 0;
  }

  if (!v12)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
    {
      v37 = v13;
      v38 = objc_opt_class();
      v39 = *(self + 64);
      *buf = 138543874;
      *&buf[4] = v38;
      *&buf[12] = 2114;
      *&buf[14] = v39;
      *&buf[22] = 2050;
      v46 = v8;
      v40 = v38;
      _os_log_debug_impl(&dword_228986000, v37, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Creating builder for morning index %{public}ld", buf, 0x20u);
    }

    v14 = HKSleepScheduleWeekdayFromWeekdayComponent();
    v15 = *(self + 56);
    v16 = (v15 >> 5) & 2 | (v15 >> 2) & 1 | (v15 >> 4) & 8;
    if ((v15 & 2) == 0 || ([MEMORY[0x277CCDD30] sharedBehavior], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "features"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "timeInBedTracking"), v18, v17, v19))
    {
      v16 |= 4uLL;
    }

    v20 = *(self + 56);
    if ((v20 & 0x10) != 0)
    {
      v24 = [HDSleepIntervalSummaryBuilder alloc];
      WeakRetained = objc_loadWeakRetained((self + 8));
      v25 = [MEMORY[0x277CBEAA8] hk_noonWithDayIndex:v8 calendar:*(self + 24)];
      [*(self + 24) rangeOfUnit:16 inUnit:8 forDate:v25];
      v27 = v26;

      v28 = v27;
      v9 = 0x277CCA000;
      v23 = [(HDSleepDaySummaryBuilder *)v24 initWithProfile:WeakRetained dayIndexRange:v8 weekday:v28 options:v14 eighteenthBirthdayDayIndex:v16 gregorianCalendar:*(self + 96) sourceOrderProvider:*(self + 24), *(self + 104), *buf, *&buf[8], v46];
    }

    else if ((v20 & 8) != 0)
    {
      v29 = [HDSleepIntervalSummaryBuilder alloc];
      WeakRetained = objc_loadWeakRetained((self + 8));
      v23 = [(HDSleepDaySummaryBuilder *)v29 initWithProfile:WeakRetained dayIndexRange:v8 weekday:7 options:v14 eighteenthBirthdayDayIndex:v16 gregorianCalendar:*(self + 96) sourceOrderProvider:*(self + 24), *(self + 104), *buf, *&buf[8], v46];
    }

    else
    {
      v21 = [HDSleepDaySummaryBuilder alloc];
      WeakRetained = objc_loadWeakRetained((self + 8));
      v23 = [(HDSleepDaySummaryBuilder *)v21 initWithProfile:WeakRetained morningIndex:v8 weekday:v14 options:v16 eighteenthBirthdayDayIndex:*(self + 96) gregorianCalendar:*(self + 24) sourceOrderProvider:*(self + 104)];
    }

    v11 = v23;

    v30 = [*(v9 + 2992) numberWithInteger:v8];
    [indexCopy setObject:v11 forKeyedSubscript:v30];
  }

  if (v11 && (*(self + 56) & 2) == 0)
  {
    _HKInitializeLogging();
    v31 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
    {
      v41 = v31;
      v42 = objc_opt_class();
      v43 = *(self + 64);
      *buf = 138543874;
      *&buf[4] = v42;
      *&buf[12] = 2114;
      *&buf[14] = v43;
      *&buf[22] = 2050;
      v46 = v8;
      v44 = v42;
      _os_log_debug_impl(&dword_228986000, v41, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Updating builder with schedule and goal for morning index %{public}ld", buf, 0x20u);
    }

    v32 = HKSleepScheduleWeekdayFromWeekdayComponent();
    v33 = *(self + 72);
    v34 = [*(v9 + 2992) numberWithUnsignedInteger:v32];
    v35 = [v33 objectForKeyedSubscript:v34];

    if (v35)
    {
      [v11 addOrderedSample:v35];
    }

    if (*(self + 80))
    {
      [v11 addOrderedSample:?];
    }
  }

  return v11;
}

+ (id)sleepAnalysisQueryDescriptorForDateInterval:(id)interval options:(unint64_t)options
{
  optionsCopy = options;
  v20[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v6 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
  v7 = [&unk_283CAE800 hk_map:&__block_literal_global_33];
  v8 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v7];
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v8, 0}];
  if (intervalCopy)
  {
    v10 = HDSampleEntityPredicateForDateInterval(intervalCopy, v6);
    [v9 addObject:v10];
  }

  if ((optionsCopy & 0x20) != 0)
  {
    v11 = HDDataEntityPredicateForObjectsFromAppleWatchSources(1);
    [v9 addObject:v11];
  }

  v12 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v9];

  v13 = [HDQueryDescriptor alloc];
  v14 = objc_alloc(MEMORY[0x277CBEB98]);
  v20[0] = v6;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v16 = [v14 initWithArray:v15];
  v17 = +[HDDataEntity hk_timeZoneEncodingOptions];
  v18 = [(HDQueryDescriptor *)v13 initWithSampleTypes:v16 encodingOptions:v17 restrictedSourceEntities:0 authorizationFilter:0 samplePredicate:v12];

  return v18;
}

+ (id)sleepTypesQueryDescriptorsForDateInterval:(id)interval options:(unint64_t)options
{
  v19[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = [self sleepAnalysisQueryDescriptorForDateInterval:intervalCopy options:options];
  v19[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v10 = [v7 initWithArray:v9];

  if ((options & 2) == 0)
  {
    v11 = [MEMORY[0x277CCD8D8] dataTypeWithCode:198];
    v18[0] = v11;
    v12 = [MEMORY[0x277CCD830] dataTypeWithCode:197];
    v18[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__HDSleepDaySummaryEnumerator_sleepTypesQueryDescriptorsForDateInterval_options___block_invoke;
    v16[3] = &unk_278617278;
    v17 = intervalCopy;
    v14 = [v13 hk_map:v16];
    [v10 addObjectsFromArray:v14];
  }

  return v10;
}

HDQueryDescriptor *__81__HDSleepDaySummaryEnumerator_sleepTypesQueryDescriptorsForDateInterval_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = HDSampleEntityPredicateForDateInterval(v4, v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = [HDQueryDescriptor alloc];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v3];
  v8 = +[HDDataEntity hk_timeZoneEncodingOptions];
  v9 = [(HDQueryDescriptor *)v6 initWithSampleTypes:v7 encodingOptions:v8 restrictedSourceEntities:0 authorizationFilter:0 samplePredicate:v5];

  return v9;
}

void __53__HDSleepDaySummaryEnumerator__finishCachingSession___block_invoke(uint64_t a1, char a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC320];
  v7 = *MEMORY[0x277CCC320];
  if ((a2 & 1) == 0)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v8 = v6;
    v12 = objc_opt_class();
    v13 = *(*(a1 + 32) + 64);
    v14 = 138543874;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    v18 = 2114;
    v19 = v5;
    v11 = v12;
    _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Error finishing caching session: %{public}@", &v14, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
    v9 = objc_opt_class();
    v10 = *(*(a1 + 32) + 64);
    v14 = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v11 = v9;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Finished caching session!", &v14, 0x16u);
LABEL_4:
  }

LABEL_6:
}

void __101__HDSleepDaySummaryEnumerator__cacheSleepDaySummaries_cachingSession_cacheAnchor_isEmptyCache_error___block_invoke_2(void *a1, char a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC320];
  v7 = *MEMORY[0x277CCC320];
  if ((a2 & 1) == 0)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v8 = v6;
    v15 = objc_opt_class();
    v16 = *(a1[4] + 64);
    v18 = 138543874;
    v19 = v15;
    v20 = 2114;
    v21 = v16;
    v22 = 2114;
    v23 = v5;
    v17 = v15;
    _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Error updating cache: %{public}@", &v18, 0x20u);

    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
    v9 = objc_opt_class();
    v10 = a1[5];
    v11 = *(a1[4] + 64);
    v12 = v9;
    v13 = [v10 count];
    v14 = a1[6];
    v18 = 138544130;
    v19 = v9;
    v20 = 2114;
    v21 = v11;
    v22 = 2050;
    v23 = v13;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Updated cache with %{public}ld sleep day summaries (anchor: %{public}@)", &v18, 0x2Au);

LABEL_4:
  }

LABEL_6:
}

void __69__HDSleepDaySummaryEnumerator__sleepDaySummaryForMorningIndex_error___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a1[6] object:a1[4] file:@"HDSleepDaySummaryEnumerator.m" lineNumber:845 description:@"Handler should only be called once since we're only enumerating samples for a single day."];

    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
  }

  *(v6 + 40) = v5;

  *a3 = 1;
}

@end