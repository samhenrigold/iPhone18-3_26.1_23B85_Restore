@interface HKMCProjectionAccuracyAnalytics
+ (BOOL)_isMetricEnabled;
+ (BOOL)shouldSubmit;
+ (id)_closestProjectionToLoggedDayIndex:(int64_t)index analysis:(id)analysis;
+ (id)_isSleepConfiguredForWristTemperatureMeasurementsWithError:(id *)error;
+ (void)submitMetricWithDayIndex:(int64_t)index oldMenstrualFlow:(int64_t)flow newMenstrualFlow:(int64_t)menstrualFlow analysis:(id)analysis isLoggingMultipleDays:(BOOL)days periodPredictionEnabled:(BOOL)enabled heartRateBasedPredictionEnabled:(BOOL)predictionEnabled wristTemperatureBasedPredictionEnabled:(BOOL)self0 isWristTemperatureInputDelivered:(BOOL)self1 internalLiveOnCycleFactorOverrideEnabled:(BOOL)self2 cycles:(id)self3;
@end

@implementation HKMCProjectionAccuracyAnalytics

+ (BOOL)shouldSubmit
{
  _isMetricEnabled = [self _isMetricEnabled];
  if (_isMetricEnabled)
  {

    LOBYTE(_isMetricEnabled) = [self _isAllowed];
  }

  return _isMetricEnabled;
}

+ (BOOL)_isMetricEnabled
{
  v2 = +[HKMCProjectionAccuracyMetric eventName];
  if (AnalyticsIsEventUsed())
  {
    hkmc_analyticsDebugModeEnabled = 1;
  }

  else
  {
    hkmc_menstrualCyclesDefaults = [MEMORY[0x277CBEBD0] hkmc_menstrualCyclesDefaults];
    hkmc_analyticsDebugModeEnabled = [hkmc_menstrualCyclesDefaults hkmc_analyticsDebugModeEnabled];
  }

  return hkmc_analyticsDebugModeEnabled;
}

+ (id)_closestProjectionToLoggedDayIndex:(int64_t)index analysis:(id)analysis
{
  menstruationProjections = [analysis menstruationProjections];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HKMCProjectionAccuracyAnalytics__closestProjectionToLoggedDayIndex_analysis___block_invoke;
  v8[3] = &__block_descriptor_40_e24_d16__0__HKMCProjection_8l;
  v8[4] = index;
  v6 = [menstruationProjections hk_firstObjectWithMinimumValueUsingEvaluationBlock:v8];

  return v6;
}

double __79__HKMCProjectionAccuracyAnalytics__closestProjectionToLoggedDayIndex_analysis___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mostLikelyDays] - *(a1 + 32);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return v2;
}

+ (void)submitMetricWithDayIndex:(int64_t)index oldMenstrualFlow:(int64_t)flow newMenstrualFlow:(int64_t)menstrualFlow analysis:(id)analysis isLoggingMultipleDays:(BOOL)days periodPredictionEnabled:(BOOL)enabled heartRateBasedPredictionEnabled:(BOOL)predictionEnabled wristTemperatureBasedPredictionEnabled:(BOOL)self0 isWristTemperatureInputDelivered:(BOOL)self1 internalLiveOnCycleFactorOverrideEnabled:(BOOL)self2 cycles:(id)self3
{
  v89 = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  cyclesCopy = cycles;
  if ([self shouldSubmit])
  {
    daysCopy = days;
    menstruationProjections = [analysisCopy menstruationProjections];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __301__HKMCProjectionAccuracyAnalytics_submitMetricWithDayIndex_oldMenstrualFlow_newMenstrualFlow_analysis_isLoggingMultipleDays_periodPredictionEnabled_heartRateBasedPredictionEnabled_wristTemperatureBasedPredictionEnabled_isWristTemperatureInputDelivered_internalLiveOnCycleFactorOverrideEnabled_cycles___block_invoke;
    v82[3] = &__block_descriptor_40_e24_B16__0__HKMCProjection_8l;
    v82[4] = index;
    v21 = [menstruationProjections hk_firstObjectPassingTest:v82];

    mostLikelyDays = [v21 mostLikelyDays];
    v25 = index >= mostLikelyDays && index - mostLikelyDays < v23;
    v73 = v25;
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v72 = HKMCTodayIndex(hk_gregorianCalendar);

    if (cyclesCopy)
    {
      selfCopy = self;
      v28 = MEMORY[0x277CCABB0];
      v29 = [cyclesCopy count];
      if (v29)
      {
        firstObject = [cyclesCopy firstObject];
        self = [firstObject menstruationSegment];
        v30 = index - [self days] < 11;
      }

      else
      {
        v30 = 0;
      }

      v80 = [v28 numberWithInt:v30];
      if (v29)
      {
      }

      self = selfCopy;
    }

    else
    {
      v80 = 0;
    }

    v76 = cyclesCopy;
    enabledCopy = enabled;
    if (v21)
    {
      v38 = v21;
    }

    else
    {
      v38 = [self _closestProjectionToLoggedDayIndex:index analysis:analysisCopy];
      if (!v38)
      {
        v47 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 0;
LABEL_26:
        v48 = NSStringFromPredictionPrimarySource([v38 predictionPrimarySource]);
        [v38 allDays];
        v50 = v49;
        isPartiallyLogged = [v38 isPartiallyLogged];
        v81 = 0;
        v51 = [self _isSleepConfiguredForWristTemperatureMeasurementsWithError:&v81];
        v52 = v81;
        v53 = v52;
        if (v51 || !v52)
        {
          v68 = v52;
          v70 = v21;
          v55 = [HKMCProjectionAccuracyMetric alloc];
          HKMCActiveWatchPairedProductType();
          v57 = v56 = v47;
          v69 = v51;
          BYTE3(v67) = overrideEnabled;
          BYTE2(v67) = [v51 BOOLValue];
          LOWORD(v67) = __PAIR16__(delivered, basedPredictionEnabled);
          BYTE2(v66) = daysCopy;
          BYTE1(v66) = predictionEnabled;
          LOBYTE(v66) = enabledCopy;
          v58 = [HKMCProjectionAccuracyMetric initWithOverlapMostLikelyDays:v55 overlapProjectedDays:"initWithOverlapMostLikelyDays:overlapProjectedDays:overlapNone:predictionPrimarySource:totalDayRange:partiallyLogged:periodPredictionEnabled:heartRateBasedPredictionEnabled:isLoggingMultipleDays:daysAgoLogged:isOngoingPeriod:activePairedWatchProductType:daysFromMostLikelyStart:daysFromMostLikelyEnd:daysFromProjectedStart:daysFromProjectedEnd:wristTemperatureBasedPredictionEnabled:isWristTemperatureInputDelivered:isSleepConfiguredForWristTemperatureMeasurements:internalLiveOnCycleFactorOverrideEnabled:" overlapNone:v73 predictionPrimarySource:v21 != 0 totalDayRange:v21 == 0 partiallyLogged:v48 periodPredictionEnabled:v50 heartRateBasedPredictionEnabled:isPartiallyLogged isLoggingMultipleDays:v66 daysAgoLogged:v72 - index isOngoingPeriod:v80 activePairedWatchProductType:v57 daysFromMostLikelyStart:v79 daysFromMostLikelyEnd:v78 daysFromProjectedStart:v77 daysFromProjectedEnd:v56 wristTemperatureBasedPredictionEnabled:v67 isWristTemperatureInputDelivered:? isSleepConfiguredForWristTemperatureMeasurements:? internalLiveOnCycleFactorOverrideEnabled:?];

          v59 = +[HKMCProjectionAccuracyMetric eventName];
          eventPayload = [(HKMCProjectionAccuracyMetric *)v58 eventPayload];
          AnalyticsSendEvent();

          _HKInitializeLogging();
          v61 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
          {
            v62 = v61;
            v63 = objc_opt_class();
            v64 = v63;
            v65 = HKSensitiveLogItem();
            *buf = 138543618;
            v84 = v63;
            v85 = 2114;
            v86 = v65;
            _os_log_impl(&dword_2518FC000, v62, OS_LOG_TYPE_DEFAULT, "[%{public}@] Submitted metric %{public}@", buf, 0x16u);
          }

          v21 = v70;
          v47 = v56;
          v53 = v68;
          v51 = v69;
        }

        else
        {
          _HKInitializeLogging();
          v54 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
          {
            [HKMCProjectionAccuracyAnalytics submitMetricWithDayIndex:v54 oldMenstrualFlow:self newMenstrualFlow:? analysis:? isLoggingMultipleDays:? periodPredictionEnabled:? heartRateBasedPredictionEnabled:? wristTemperatureBasedPredictionEnabled:? isWristTemperatureInputDelivered:? internalLiveOnCycleFactorOverrideEnabled:? cycles:?];
          }
        }

        cyclesCopy = v76;
        goto LABEL_34;
      }
    }

    v79 = [MEMORY[0x277CCABB0] numberWithInteger:{index - objc_msgSend(v38, "mostLikelyDays")}];
    v39 = MEMORY[0x277CCABB0];
    mostLikelyDays2 = [v38 mostLikelyDays];
    v42 = v41 + mostLikelyDays2 - 1;
    if (v41 <= 0)
    {
      v42 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v78 = [v39 numberWithInteger:index - v42];
    v77 = [MEMORY[0x277CCABB0] numberWithInteger:{index - objc_msgSend(v38, "allDays")}];
    v43 = MEMORY[0x277CCABB0];
    allDays = [v38 allDays];
    v46 = v45 + allDays - 1;
    if (v45 <= 0)
    {
      v46 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v47 = [v43 numberWithInteger:index - v46];
    goto LABEL_26;
  }

  _HKInitializeLogging();
  v31 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v32 = v31;
    v33 = objc_opt_class();
    v34 = MEMORY[0x277CCABB0];
    v35 = v33;
    v36 = [v34 numberWithBool:{objc_msgSend(self, "_isMetricEnabled")}];
    v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "_isAllowed")}];
    *buf = 138543874;
    v84 = v33;
    v85 = 2114;
    v86 = v36;
    v87 = 2114;
    v88 = v37;
    _os_log_impl(&dword_2518FC000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping submitting metric. isMetricEnabled: %{public}@, isHealthDataSubmissionAllowed: %{public}@", buf, 0x20u);
  }

LABEL_34:
}

BOOL __301__HKMCProjectionAccuracyAnalytics_submitMetricWithDayIndex_oldMenstrualFlow_newMenstrualFlow_analysis_isLoggingMultipleDays_periodPredictionEnabled_heartRateBasedPredictionEnabled_wristTemperatureBasedPredictionEnabled_isWristTemperatureInputDelivered_internalLiveOnCycleFactorOverrideEnabled_cycles___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 allDays];
  return v2 >= v3 && v2 - v3 < v4;
}

+ (id)_isSleepConfiguredForWristTemperatureMeasurementsWithError:(id *)error
{
  v5 = [objc_alloc(MEMORY[0x277D62528]) initWithIdentifier:@"HKMCProjectionAccuracyAnalytics" healthStore:0 options:2];
  v20 = 0;
  v6 = [v5 currentSleepEventRecordWithError:&v20];
  v7 = v20;
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    sleepCoachingOnboardingFirstCompletedDate = [v6 sleepCoachingOnboardingFirstCompletedDate];
    sleepTrackingOnboardingFirstCompletedDate = [v6 sleepTrackingOnboardingFirstCompletedDate];
    v12 = sleepTrackingOnboardingFirstCompletedDate;
    if (sleepCoachingOnboardingFirstCompletedDate)
    {
      v13 = sleepTrackingOnboardingFirstCompletedDate == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      hasSleepFocusMode = 0;
    }

    else
    {
      hasSleepFocusMode = [v5 hasSleepFocusMode];
    }

    v17 = [MEMORY[0x277CCABB0] numberWithBool:hasSleepFocusMode];
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [(HKMCProjectionAccuracyAnalytics *)v14 _isSleepConfiguredForWristTemperatureMeasurementsWithError:self];
    }

    if (error)
    {
      v16 = v8;
      v17 = 0;
      *error = v8;
    }

    else
    {
      _HKLogDroppedError();
      v17 = 0;
    }
  }

  return v17;
}

+ (void)submitMetricWithDayIndex:(void *)a1 oldMenstrualFlow:(uint64_t)a2 newMenstrualFlow:analysis:isLoggingMultipleDays:periodPredictionEnabled:heartRateBasedPredictionEnabled:wristTemperatureBasedPredictionEnabled:isWristTemperatureInputDelivered:internalLiveOnCycleFactorOverrideEnabled:cycles:.cold.1(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v5, v6, "[%{public}@] Error computing if sleep is configured for wrist temperature: %{public}@", v7, v8, v9, v10);
}

+ (void)_isSleepConfiguredForWristTemperatureMeasurementsWithError:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v5, v6, "[%{public}@] Error retrieving sleep event record: %{public}@", v7, v8, v9, v10);
}

@end