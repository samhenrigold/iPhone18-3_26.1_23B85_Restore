@interface HDMCHeartStatisticsEnumerator
- (BOOL)enumerateWithError:(id *)error handler:(id)handler;
- (HDMCHeartStatisticsEnumerator)initWithProfile:(id)profile calendarCache:(id)cache dayIndexRange:(id)range databaseAccessibilityAssertion:(id)assertion;
- (id)_asleepSleepAnalysisDateIntervalTreeOnDayIndex:(int64_t)index calendar:(id)calendar error:(id *)error;
- (id)_cachingSessionWithCalendar:(id)calendar error:(id *)error;
- (id)_heartStatisticsForDayIndex:(int64_t)index calendar:(id)calendar errorOut:(id *)out;
@end

@implementation HDMCHeartStatisticsEnumerator

- (HDMCHeartStatisticsEnumerator)initWithProfile:(id)profile calendarCache:(id)cache dayIndexRange:(id)range databaseAccessibilityAssertion:(id)assertion
{
  var1 = range.var1;
  var0 = range.var0;
  profileCopy = profile;
  cacheCopy = cache;
  assertionCopy = assertion;
  v17.receiver = self;
  v17.super_class = HDMCHeartStatisticsEnumerator;
  v14 = [(HDMCHeartStatisticsEnumerator *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, profileCopy);
    objc_storeStrong(&v15->_calendarCache, cache);
    v15->_dayIndexRange.start = var0;
    v15->_dayIndexRange.duration = var1;
    objc_storeStrong(&v15->_databaseAccessibilityAssertion, assertion);
  }

  return v15;
}

- (id)_asleepSleepAnalysisDateIntervalTreeOnDayIndex:(int64_t)index calendar:(id)calendar error:(id *)error
{
  v29[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCD0C0];
  v9 = *MEMORY[0x277CCBAB8];
  calendarCopy = calendar;
  v11 = [v8 categoryTypeForIdentifier:v9];
  v12 = [MEMORY[0x277CCA970] hk_sleepDayIntervalForMorningIndex:index calendar:calendarCopy];

  v13 = HDSampleEntityPredicateForDateInterval();

  v14 = _HKCategoryValueSleepAnalysisAsleepValues();
  v15 = HDCategorySampleEntityPredicateEqualToValues();

  v16 = MEMORY[0x277D10B20];
  v29[0] = v13;
  v29[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v18 = [v16 predicateMatchingAllPredicates:v17];

  v19 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v21 = [v19 entityEnumeratorWithType:v11 profile:WeakRetained];

  [v21 setPredicate:v18];
  [v21 setLimitCount:0];
  v22 = objc_alloc_init(MEMORY[0x277CCD2D8]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __95__HDMCHeartStatisticsEnumerator__asleepSleepAnalysisDateIntervalTreeOnDayIndex_calendar_error___block_invoke;
  v27[3] = &unk_27865ABD0;
  v28 = v22;
  v23 = v22;
  if ([v21 enumerateWithError:error handler:v27])
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  return v24;
}

BOOL __95__HDMCHeartStatisticsEnumerator__asleepSleepAnalysisDateIntervalTreeOnDayIndex_calendar_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  objc_opt_class();
  v7 = HKSafeObject();
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCA970]);
    v9 = [v7 startDate];
    v10 = [v7 endDate];
    v11 = [v8 initWithStartDate:v9 endDate:v10];

    [*(a1 + 32) insertInterval:v11];
  }

  objc_autoreleasePoolPop(v6);
  return v7 != 0;
}

- (id)_heartStatisticsForDayIndex:(int64_t)index calendar:(id)calendar errorOut:(id *)out
{
  v98[3] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCC2E8];
  calendarCopy = calendar;
  v10 = _HKLogSignpostIDGenerate();
  _HKInitializeLogging();
  v11 = *v8;
  if (os_signpost_enabled(*v8))
  {
    v12 = v11;
    v13 = v12;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:index];
      *buf = 138412290;
      v95 = v14;
      _os_signpost_emit_with_name_impl(&dword_2293D1000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "menstrual-cycles-heartStatisticsForDayIndex", "dayIndex=%@", buf, 0xCu);
    }
  }

  spid = v10;
  outCopy = out;
  heartRateType = [MEMORY[0x277CCD830] heartRateType];
  v92 = 0;
  v16 = [(HDMCHeartStatisticsEnumerator *)self _asleepSleepAnalysisDateIntervalTreeOnDayIndex:index calendar:calendarCopy error:&v92];
  v79 = v92;
  hdmc_tenthPercentileCalculator = [MEMORY[0x277D10890] hdmc_tenthPercentileCalculator];
  indexCopy = index;
  v18 = [MEMORY[0x277CCA970] hk_sleepDayIntervalForMorningIndex:index calendar:calendarCopy];

  v19 = HDSampleEntityPredicateForDateInterval();

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  metadataManager = [WeakRetained metadataManager];
  v22 = *MEMORY[0x277CCE030];
  v23 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_283CC3228, 0}];
  v24 = [metadataManager predicateWithMetadataKey:v22 allowedValues:v23];

  mergedIntervals = [v16 mergedIntervals];
  v26 = [mergedIntervals count];

  v81 = hdmc_tenthPercentileCalculator;
  if (!v26)
  {
    v55 = MEMORY[0x277D10B20];
    v98[0] = v19;
    v56 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
    v98[1] = v56;
    v98[2] = v24;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:3];
    v58 = [v55 predicateMatchingAllPredicates:v57];

    v59 = objc_loadWeakRetained(&self->_profile);
    v91 = v79;
    v60 = [hdmc_tenthPercentileCalculator hdmc_heartRateStatisticsWithProfile:v59 predicate:v58 errorOut:&v91];
    v44 = v91;

    if (!v44)
    {
      v50 = [MEMORY[0x277D11980] dailyHeartStatisticsWithDayIndex:indexCopy asleepStatistics:0 awakeStatistics:v60];
      _HKInitializeLogging();
      v64 = *MEMORY[0x277CCC2E8];
      if (os_signpost_enabled(*MEMORY[0x277CCC2E8]))
      {
        v65 = v64;
        v66 = v65;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
        {
          v67 = [MEMORY[0x277CCABB0] numberWithInteger:indexCopy];
          *buf = 138412546;
          v95 = v67;
          v96 = 2112;
          v97 = &unk_283CC3240;
          _os_signpost_emit_with_name_impl(&dword_2293D1000, v66, OS_SIGNPOST_INTERVAL_END, spid, "menstrual-cycles-daily-heart-statistics", "dayIndex=%@ sleepData=%@", buf, 0x16u);
        }
      }

      v68 = v81;
      goto LABEL_40;
    }

    if (outCopy)
    {
      v61 = v44;
      *outCopy = v44;
    }

    else
    {
      _HKLogDroppedError();
    }

    v50 = 0;
    v69 = 0;
LABEL_38:
    v68 = v81;
    goto LABEL_42;
  }

  v75 = v24;
  v27 = objc_loadWeakRetained(&self->_profile);
  metadataManager2 = [v27 metadataManager];
  v29 = MEMORY[0x22AACC010]();
  v30 = [metadataManager2 predicateWithMetadataKey:v22 allowedValues:v29];

  v31 = MEMORY[0x277D10B20];
  v32 = HDSampleEntityPredicateForDataType();
  v93[0] = v32;
  v93[1] = v19;
  v76 = v19;
  v33 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
  v93[2] = v33;
  v93[3] = v30;
  v74 = v30;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:4];
  v35 = [v31 predicateMatchingAllPredicates:v34];

  hdmc_tenthPercentileCalculator2 = [MEMORY[0x277D10890] hdmc_tenthPercentileCalculator];
  hdmc_tenthPercentileCalculator3 = [MEMORY[0x277D10890] hdmc_tenthPercentileCalculator];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__HDMCHeartStatisticsEnumerator__heartStatisticsForDayIndex_calendar_errorOut___block_invoke;
  aBlock[3] = &unk_27865AD20;
  aBlock[4] = self;
  v38 = v35;
  v87 = v38;
  v88 = v16;
  v39 = hdmc_tenthPercentileCalculator3;
  v89 = v39;
  v40 = hdmc_tenthPercentileCalculator2;
  v90 = v40;
  v41 = _Block_copy(aBlock);
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __79__HDMCHeartStatisticsEnumerator__heartStatisticsForDayIndex_calendar_errorOut___block_invoke_4;
  v83[3] = &unk_27865AD48;
  v42 = v39;
  v84 = v42;
  v43 = v41;
  v85 = v43;
  v82 = v79;
  LODWORD(v34) = [v40 performAddSampleTransaction:v83 error:&v82];
  v44 = v82;

  v45 = v16;
  v80 = v34;
  if (v34)
  {
    v72 = v38;
    v46 = v16;
    v47 = MEMORY[0x277D11980];
    currentStatistics = [v42 currentStatistics];
    currentStatistics2 = [v40 currentStatistics];
    v50 = [v47 dailyHeartStatisticsWithDayIndex:indexCopy asleepStatistics:currentStatistics awakeStatistics:currentStatistics2];

    _HKInitializeLogging();
    v51 = *MEMORY[0x277CCC2E8];
    if (!os_signpost_enabled(*MEMORY[0x277CCC2E8]))
    {
      v45 = v46;
      v38 = v72;
      goto LABEL_33;
    }

    v52 = v51;
    v53 = v52;
    if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      v45 = v46;
    }

    else
    {
      v45 = v46;
      if (os_signpost_enabled(v52))
      {
        v54 = [MEMORY[0x277CCABB0] numberWithInteger:indexCopy];
        *buf = 138412546;
        v95 = v54;
        v96 = 2112;
        v97 = &unk_283CC3258;
        _os_signpost_emit_with_name_impl(&dword_2293D1000, v53, OS_SIGNPOST_INTERVAL_END, spid, "menstrual-cycles-heartStatisticsForDayIndex", "dayIndex=%@ sleepData=%@", buf, 0x16u);
      }
    }

    v38 = v72;
  }

  else
  {
    v62 = v44;
    v53 = v62;
    if (v62)
    {
      if (outCopy)
      {
        v63 = v62;
        v50 = 0;
        *outCopy = v53;
      }

      else
      {
        _HKLogDroppedError();
        v50 = 0;
      }
    }

    else
    {
      v50 = 0;
    }
  }

LABEL_33:
  if (!v80)
  {
    v16 = v45;
    v69 = 0;
    v24 = v75;
    v19 = v76;
    goto LABEL_38;
  }

  v16 = v45;
  v68 = v81;
  if (!v44)
  {
    v24 = v75;
    v19 = v76;
LABEL_40:
    v50 = v50;
    v44 = 0;
    v69 = v50;
    goto LABEL_42;
  }

  v24 = v75;
  v19 = v76;
  if (outCopy)
  {
    v70 = v44;
    v69 = 0;
    *outCopy = v44;
  }

  else
  {
    _HKLogDroppedError();
    v69 = 0;
  }

LABEL_42:

  return v69;
}

uint64_t __79__HDMCHeartStatisticsEnumerator__heartStatisticsForDayIndex_calendar_errorOut___block_invoke(uint64_t a1, void *a2)
{
  v4 = (a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = [WeakRetained database];
  v7 = [MEMORY[0x277D106B8] contextForReadingProtectedData];
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__HDMCHeartStatisticsEnumerator__heartStatisticsForDayIndex_calendar_errorOut___block_invoke_2;
  v18[3] = &unk_27865ACF8;
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = *v4;
  v17 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v19 = v17;
  v20 = v11;
  v21 = *(a1 + 64);
  v12 = [v6 performTransactionWithContext:v7 error:&v22 block:v18 inaccessibilityHandler:0];
  v13 = v22;

  if ((v12 & 1) == 0)
  {
    v14 = v13;
    if (v14)
    {
      if (a2)
      {
        v15 = v14;
        *a2 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v12;
}

uint64_t __79__HDMCHeartStatisticsEnumerator__heartStatisticsForDayIndex_calendar_errorOut___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [MEMORY[0x277D10778] metadataValueStatementWithTransaction:a2];
  v6 = MEMORY[0x277D10818];
  v7 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v20 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HDMCHeartStatisticsEnumerator__heartStatisticsForDayIndex_calendar_errorOut___block_invoke_3;
  v15[3] = &unk_27865ACD0;
  v15[4] = *(a1 + 40);
  v9 = v5;
  v16 = v9;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v10 = [v6 orderedQuantityValuesBySeriesForPredicate:v7 profile:WeakRetained options:1 error:&v20 handler:v15];
  v11 = v20;

  if ((v10 & 1) == 0)
  {
    v12 = v11;
    if (v12)
    {
      if (a3)
      {
        v13 = v12;
        *a3 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v10;
}

uint64_t __79__HDMCHeartStatisticsEnumerator__heartStatisticsForDayIndex_calendar_errorOut___block_invoke_3(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v23 = [WeakRetained metadataManager];
  v24 = [v23 metadataForObjectID:a2 baseMetadata:0 keyFilter:0 statement:*(a1 + 40) error:a13];

  v25 = *MEMORY[0x277CCE030];
  v26 = [v24 objectForKeyedSubscript:*MEMORY[0x277CCE030]];

  if (v26)
  {
    if ([*(a1 + 48) hasOverlapWithStartTime:a6 endTime:a7])
    {
      v27 = *(a1 + 56);
      v28 = a5;
      v29 = a6;
      v30 = a7;
    }

    else
    {
      v32 = [v24 objectForKeyedSubscript:v25];
      [v32 integerValue];
      IsSedentary = HKMCHeartRateContextIsSedentary();

      if (!IsSedentary)
      {
        v31 = 1;
        goto LABEL_9;
      }

      v27 = *(a1 + 64);
      v28 = a5;
      v29 = a3;
      v30 = a4;
    }

    v31 = [v27 addSampleValue:a10 startTime:a13 endTime:v28 sourceID:v29 error:v30];
  }

  else
  {
    v31 = 0;
  }

LABEL_9:

  return v31;
}

- (BOOL)enumerateWithError:(id *)error handler:(id)handler
{
  v94 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  currentCalendar = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v7 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v87 = 0;
  v10 = [v7 maxRowIDForPredicate:0 healthDatabase:database error:&v87];
  v11 = v87;

  if (!v10)
  {
    v12 = v11;
    if (v12)
    {
      if (error)
      {
        v16 = v12;
        v14 = 0;
        *error = v12;
LABEL_18:
        v15 = v12;
        goto LABEL_58;
      }

      _HKLogDroppedError();
    }

    v14 = 0;
    goto LABEL_18;
  }

  v86 = v11;
  v12 = [(HDMCHeartStatisticsEnumerator *)self _cachingSessionWithCalendar:currentCalendar error:&v86];
  v13 = v86;

  if (!v12 && v13)
  {
    v14 = 0;
    v15 = v13;
    goto LABEL_58;
  }

  v85 = v13;
  v17 = [v12 cachesExistWithError:&v85];
  v15 = v85;

  if (v17 == 2)
  {
    v56 = v15;
    errorCopy = error;
    v72 = v10;
    _HKInitializeLogging();
    v30 = MEMORY[0x277CCC2E8];
    v31 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = objc_opt_class();
      *buf = 138543362;
      v89 = v33;
      v34 = v33;
      _os_log_impl(&dword_2293D1000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] No cache exists so we need to query all heart statistics data and save to our cache", buf, 0xCu);
    }

    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    start = self->_dayIndexRange.start;
    v58 = currentCalendar;
    while (1)
    {
      v36 = objc_autoreleasePoolPush();
      v84 = 0;
      v37 = [(HDMCHeartStatisticsEnumerator *)self _heartStatisticsForDayIndex:start calendar:currentCalendar errorOut:&v84];
      v38 = v84;
      if (v37)
      {
        if (([v37 isEmpty]& 1) == 0)
        {
          _HKInitializeLogging();
          v39 = *v30;
          if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
          {
            v68 = v39;
            v50 = objc_opt_class();
            log = MEMORY[0x277CCABB0];
            v71 = v50;
            loga = [log numberWithInteger:start];
            *buf = 138543874;
            v89 = v50;
            v90 = 2112;
            v91 = loga;
            v92 = 2114;
            v93 = v37;
            _os_log_debug_impl(&dword_2293D1000, v68, OS_LOG_TYPE_DEBUG, "[%{public}@] Statistics created for dayIndex: %@ heart statistics:%{public}@", buf, 0x20u);
          }

          [v29 addObject:{v37, v56}];
          if ([v29 count] >= 0x14)
          {
            v83[0] = MEMORY[0x277D85DD0];
            v83[1] = 3221225472;
            v83[2] = __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke;
            v83[3] = &unk_27865A7A0;
            v83[4] = self;
            [v12 insertCaches:v29 anchor:v72 completion:v83];
            _HKInitializeLogging();
            v40 = *v30;
            v41 = os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT);
            v42 = v29;
            if (v41)
            {
              logb = v40;
              v60 = objc_opt_class();
              v43 = MEMORY[0x277CCABB0];
              v69 = v60;
              firstObject = [v29 firstObject];
              v59 = [v43 numberWithInteger:{-[NSObject dayIndex](firstObject, "dayIndex")}];
              v44 = MEMORY[0x277CCABB0];
              lastObject = [v29 lastObject];
              v46 = [v44 numberWithInteger:{objc_msgSend(lastObject, "dayIndex")}];
              *buf = 138543874;
              v89 = v60;
              v90 = 2112;
              v91 = v59;
              v92 = 2112;
              v93 = v46;
              _os_log_impl(&dword_2293D1000, logb, OS_LOG_TYPE_DEFAULT, "[%{public}@] Statistics saved from dayIndex:%@ to dayIndex: %@", buf, 0x20u);

              currentCalendar = v58;
            }

            v29 = objc_alloc_init(MEMORY[0x277CBEB18]);

            v30 = MEMORY[0x277CCC2E8];
          }

          handlerCopy[2](handlerCopy, v37);
        }
      }

      else
      {
        _HKInitializeLogging();
        v47 = *v30;
        if (os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
        {
          v67 = v47;
          v49 = objc_opt_class();
          logc = MEMORY[0x277CCABB0];
          v70 = v49;
          logd = [logc numberWithInteger:start];
          *buf = 138543874;
          v89 = v49;
          v90 = 2114;
          v91 = v38;
          v92 = 2112;
          v93 = logd;
          _os_log_error_impl(&dword_2293D1000, v67, OS_LOG_TYPE_ERROR, "[%{public}@] Error creating heart statistics: %{public}@ for dayIndex: %@", buf, 0x20u);
        }
      }

      objc_autoreleasePoolPop(v36);
      if (v38)
      {
        break;
      }

      ++start;
      duration = self->_dayIndexRange.duration;
      if (duration >= 1 && duration + self->_dayIndexRange.start <= start)
      {
        v82[0] = MEMORY[0x277D85DD0];
        v82[1] = 3221225472;
        v82[2] = __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_324;
        v82[3] = &unk_27865A7A0;
        v82[4] = self;
        v10 = v72;
        [v12 insertCaches:v29 anchor:v72 completion:v82];
        v28 = 1;
        v15 = v56;
        error = errorCopy;
        goto LABEL_47;
      }
    }

    if (errorCopy)
    {
      v51 = v38;
      *errorCopy = v38;
    }

    else
    {
      _HKLogDroppedError();
    }

    v10 = v72;

    v14 = 0;
    v15 = v56;
  }

  else
  {
    if (v17 == 1)
    {
      _HKInitializeLogging();
      v20 = MEMORY[0x277CCC2E8];
      v21 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = objc_opt_class();
        *buf = 138543362;
        v89 = v23;
        v24 = v23;
        _os_log_impl(&dword_2293D1000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cache exists and will be returning values from cache", buf, 0xCu);
      }

      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v81 = v15;
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_325;
      v76[3] = &unk_27865AD70;
      v76[4] = self;
      v80 = handlerCopy;
      v77 = currentCalendar;
      v78 = v15;
      v26 = v25;
      v79 = v26;
      v27 = v15;
      v28 = [v12 activateWithError:&v81 cacheHandler:v76];
      v15 = v81;

      if (v28)
      {
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_327;
        v75[3] = &unk_27865A7A0;
        v75[4] = self;
        [v12 insertCaches:v26 anchor:v10 completion:v75];
        v29 = v26;
      }

      else
      {
        _HKInitializeLogging();
        v52 = *v20;
        v29 = v26;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          [(HDMCHeartStatisticsEnumerator *)v52 enumerateWithError:v15 handler:?];
        }
      }

LABEL_47:
    }

    else
    {
      if (!v17)
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
        {
          [HDMCHeartStatisticsEnumerator enumerateWithError:v18 handler:?];
        }

        v15 = v15;
        if (v15)
        {
          if (error)
          {
            v19 = v15;
            *error = v15;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v14 = 0;
        goto LABEL_58;
      }

      v28 = 1;
    }

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_328;
    v74[3] = &unk_27865A7A0;
    v74[4] = self;
    [v12 finishWithCompletion:{v74, v56}];
    v14 = (v15 == 0) & v28;
    if (!v14)
    {
      v53 = v15;
      if (v15)
      {
        if (error)
        {
          v54 = v53;
          *error = v53;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

LABEL_58:

  return v14;
}

void __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_cold_1(a1, v6);
    }
  }
}

void __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_324(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_cold_1(a1, v6);
    }
  }
}

uint64_t __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_325(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = *(a1 + 32);
  v11 = v10[2];
  v12 = __OFSUB__(a4, v11);
  v13 = a4 - v11;
  if (v13 < 0 != v12 || v13 >= v10[3])
  {
LABEL_16:
    v21 = 1;
    goto LABEL_17;
  }

  if ((a3 & 1) == 0)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEBUG))
    {
      v25 = v20;
      v26 = objc_opt_class();
      v27 = MEMORY[0x277CCABB0];
      v28 = v26;
      v29 = [v27 numberWithInteger:a4];
      *buf = 138543874;
      v43 = v26;
      v44 = 2112;
      v45 = v29;
      v46 = 2114;
      v47 = v9;
      _os_log_debug_impl(&dword_2293D1000, v25, OS_LOG_TYPE_DEBUG, "[%{public}@] Statistics returned for dayIndex:%@ heart statistics:%{public}@", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
    goto LABEL_16;
  }

  v15 = *(a1 + 40);
  v41 = 0;
  v16 = [v10 _heartStatisticsForDayIndex:a4 calendar:v15 errorOut:&v41];
  v17 = v41;
  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC2E8];
  v19 = *MEMORY[0x277CCC2E8];
  if (v16)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v30 = v18;
      v31 = objc_opt_class();
      v32 = MEMORY[0x277CCABB0];
      v33 = v31;
      v34 = [v32 numberWithInteger:a4];
      *buf = 138543874;
      v43 = v31;
      v44 = 2112;
      v45 = v34;
      v46 = 2114;
      v47 = v16;
      _os_log_debug_impl(&dword_2293D1000, v30, OS_LOG_TYPE_DEBUG, "[%{public}@] Statistics created for dayIndex:%@ heart statistics:%{public}@", buf, 0x20u);
    }

    [*(a1 + 56) addObject:v16];
    if (([v16 isEmpty] & 1) == 0)
    {
      (*(*(a1 + 64) + 16))();
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v35 = v18;
    v36 = objc_opt_class();
    v37 = *(a1 + 48);
    v38 = MEMORY[0x277CCABB0];
    v39 = v36;
    v40 = [v38 numberWithInteger:a4];
    *buf = 138543874;
    v43 = v36;
    v44 = 2114;
    v45 = v37;
    v46 = 2112;
    v47 = v40;
    _os_log_error_impl(&dword_2293D1000, v35, OS_LOG_TYPE_ERROR, "[%{public}@] Error creating heart statistics: %{public}@ for dayIndex: %@", buf, 0x20u);
  }

  v23 = v17;
  if (v23)
  {
    if (a5)
    {
      v24 = v23;
      *a5 = v23;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v21 = 0;
LABEL_17:

  return v21;
}

void __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_327(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_cold_1(a1, v6);
    }
  }
}

void __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_328(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_328_cold_1(a1, v6);
    }
  }
}

- (id)_cachingSessionWithCalendar:(id)calendar error:(id *)error
{
  v61[2] = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  sourceManager = [WeakRetained sourceManager];
  v55 = 0;
  v8 = [sourceManager localDeviceSourceWithError:&v55];
  v9 = v55;

  v51 = v8;
  if (v8)
  {
    v10 = objc_loadWeakRetained(&self->_profile);
    metadataManager = [v10 metadataManager];
    v12 = *MEMORY[0x277CCE030];
    v13 = MEMORY[0x22AACC010]();
    v49 = [metadataManager predicateWithMetadataKey:v12 allowedValues:v13];

    v14 = MEMORY[0x277D10B20];
    v15 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
    v61[0] = v15;
    v61[1] = v49;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
    v47 = [v14 predicateMatchingAllPredicates:v16];

    v17 = _HKCategoryValueSleepAnalysisAsleepValues();
    v48 = HDCategorySampleEntityPredicateEqualToValues();

    v59 = *MEMORY[0x277D10400];
    v60 = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v50 = v9;
    v19 = objc_alloc(MEMORY[0x277D10820]);
    v20 = MEMORY[0x277CBEB98];
    v21 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
    v58 = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
    v23 = [v20 setWithArray:v22];
    v46 = [v19 initWithSampleTypes:v23 encodingOptions:v18 restrictedSourceEntities:0 authorizationFilter:0 samplePredicate:v48];

    v24 = objc_alloc(MEMORY[0x277D10820]);
    v25 = MEMORY[0x277CBEB98];
    heartRateType = [MEMORY[0x277CCD830] heartRateType];
    v57 = heartRateType;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    v28 = [v25 setWithArray:v27];
    v44 = [v24 initWithSampleTypes:v28 encodingOptions:v18 restrictedSourceEntities:0 authorizationFilter:0 samplePredicate:v47];

    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    v29 = MEMORY[0x277CCACA8];
    name = [localTimeZone name];
    v31 = [v29 stringWithFormat:@"%@_%@", @"menstrualCycles", name];

    v32 = [MEMORY[0x277CCA970] hk_sleepDayIntervalForMorningIndexRange:self->_dayIndexRange.start calendar:{self->_dayIndexRange.duration, calendarCopy}];
    v33 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v33 setDay:1];
    v34 = objc_alloc(MEMORY[0x277D10840]);
    v35 = objc_loadWeakRetained(&self->_profile);
    v36 = objc_opt_class();
    startDate = [v32 startDate];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __67__HDMCHeartStatisticsEnumerator__cachingSessionWithCalendar_error___block_invoke;
    v53[3] = &unk_27865AD98;
    v54 = calendarCopy;
    v38 = [v34 initWithProfile:v35 cachingIdentifier:v31 sourceEntity:v51 queryDescriptor:v44 cachedClass:v36 queryInterval:v32 anchorDate:startDate intervalComponents:v33 timeIntervalToBucketIndex:v53];

    v56 = v46;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    [v38 setInvalidationQueryDescriptors:v39];

    v9 = v50;
    [v38 setAccessibilityAssertion:self->_databaseAccessibilityAssertion];
  }

  else
  {
    v40 = v9;
    if (v40)
    {
      if (error)
      {
        v41 = v40;
        *error = v40;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v42 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_FAULT))
    {
      [HDMCHeartStatisticsEnumerator _cachingSessionWithCalendar:v42 error:?];
    }

    v38 = 0;
  }

  return v38;
}

uint64_t __67__HDMCHeartStatisticsEnumerator__cachingSessionWithCalendar_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  v3 = [v2 hk_morningIndexWithCalendar:*(a1 + 32)];

  return v3;
}

- (void)enumerateWithError:(uint64_t)a3 handler:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  *v13 = 138543618;
  *&v13[4] = OUTLINED_FUNCTION_3();
  *&v13[12] = 2112;
  *&v13[14] = a3;
  v6 = *&v13[4];
  OUTLINED_FUNCTION_1(&dword_2293D1000, v7, v8, "[%{public}@] Error activating cache and enumerating over existing caches: %@", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16]);
}

- (void)enumerateWithError:(void *)a1 handler:.cold.2(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error checking for caches in cacheStore: %{public}@", v7, v8, v9, v10);
}

void __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a1, a2);
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error saving statistics in cache store: %{public}@", v7, v8, v9, v10);
}

void __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_328_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a1, a2);
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Failed to finish caching session: %{public}@", v7, v8, v9, v10);
}

- (void)_cachingSessionWithCalendar:(void *)a1 error:.cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  _os_log_fault_impl(&dword_2293D1000, v1, OS_LOG_TYPE_FAULT, "[%{public}@] Error retrieving source to create cache store: %{public}@", v5, 0x16u);
}

@end