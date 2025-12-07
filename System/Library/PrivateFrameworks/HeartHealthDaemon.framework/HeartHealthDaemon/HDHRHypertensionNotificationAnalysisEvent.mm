@interface HDHRHypertensionNotificationAnalysisEvent
- (HDHRHypertensionNotificationAnalysisEvent)init;
- (HDHRHypertensionNotificationAnalysisEvent)initWithProfile:(id)profile dateInterval:(id)interval additionalPayload:(id)payload;
- (id)_daysSinceHTNLastEnabled:(id)enabled;
- (id)_dnuAdditionalPayload;
- (id)_dnuNumDaysWatchWornAnalyticsWithCalendar:(id)calendar;
- (id)_featureStatusForFeatureIdentifier:(id)identifier dataSource:(id)source error:(id *)error;
- (id)_ihaAdditionalPayload;
- (id)_ihaDemographicsPayloadWithDataSource:(id)source;
- (id)_isAFibHistoryEnabledWithDataSource:(id)source;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HDHRHypertensionNotificationAnalysisEvent

- (HDHRHypertensionNotificationAnalysisEvent)initWithProfile:(id)profile dateInterval:(id)interval additionalPayload:(id)payload
{
  profileCopy = profile;
  intervalCopy = interval;
  payloadCopy = payload;
  v14.receiver = self;
  v14.super_class = HDHRHypertensionNotificationAnalysisEvent;
  v11 = [(HDHRHypertensionNotificationAnalysisEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    objc_storeStrong(&v12->_dateInterval, interval);
    objc_storeStrong(&v12->_additionalPayload, payload);
  }

  return v12;
}

- (HDHRHypertensionNotificationAnalysisEvent)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  environmentDataSource = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = MEMORY[0x277CCABB0];
  environmentDataSource2 = [sourceCopy environmentDataSource];
  v12 = [v10 numberWithBool:{objc_msgSend(environmentDataSource2, "areHealthNotificationsAuthorized")}];
  [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCB7C8]];

  v13 = MEMORY[0x277CCABB0];
  environmentDataSource3 = [sourceCopy environmentDataSource];
  v15 = [v13 numberWithBool:{objc_msgSend(environmentDataSource3, "isImproveHealthAndActivityEnabled")}];
  [v9 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCB7F8]];

  environmentDataSource4 = [sourceCopy environmentDataSource];

  activePairedDeviceProductType = [environmentDataSource4 activePairedDeviceProductType];
  [v9 setObject:activePairedDeviceProductType forKeyedSubscript:*MEMORY[0x277CCB7B8]];

  v18 = [(HDHRHypertensionNotificationAnalysisEvent *)self _dnuNumDaysWatchWornAnalyticsWithCalendar:currentCalendar];
  [v9 hk_addEntriesFromNonNilDictionary:v18];

  _dnuAdditionalPayload = [(HDHRHypertensionNotificationAnalysisEvent *)self _dnuAdditionalPayload];
  [v9 hk_addEntriesFromNonNilDictionary:_dnuAdditionalPayload];

  return v9;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v148 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [(HDHRHypertensionNotificationAnalysisEvent *)self _ihaDemographicsPayloadWithDataSource:sourceCopy];
  [v6 hk_addEntriesFromNonNilDictionary:v7];

  _ihaAdditionalPayload = [(HDHRHypertensionNotificationAnalysisEvent *)self _ihaAdditionalPayload];
  [v6 hk_addEntriesFromNonNilDictionary:_ihaAdditionalPayload];

  v9 = *MEMORY[0x277CCBBA8];
  v10 = [MEMORY[0x277CCD250] correlationTypeForIdentifier:*MEMORY[0x277CCBBA8]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  p_dateInterval = &self->_dateInterval;
  v12 = HDAnalyticsCountOfSamples();
  v13 = 0;

  v126 = v10;
  if (v12)
  {
    v14 = HDHRAnalyticsPropertyNameTotalCountBpValuesEntered;
    v15 = v6;
    v16 = v12;
    v17 = v12;
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogAnalytics();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [HDHRHypertensionNotificationAnalysisEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v16 = 0;

    v17 = *MEMORY[0x277CCB7A0];
    v14 = HDHRAnalyticsPropertyNameTotalCountBpValuesEntered;
    v15 = v6;
  }

  [v15 setObject:v17 forKeyedSubscript:v14];
  v19 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8E0]];
  v20 = objc_loadWeakRetained(&self->_profile);
  v125 = v19;
  v21 = HDHRAnalyticsCountOfSamples(v20, v19, *p_dateInterval, 0);
  [v6 setObject:v21 forKeyedSubscript:HDHRAnalyticsPropertyNameNumStandHoursInPast30Days];

  v127 = sourceCopy;
  environmentDataSource = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  v25 = [MEMORY[0x277CBEAB8] hk_dateComponentsForCalendarUnit:32];
  v124 = currentCalendar;
  [v25 setCalendar:currentCalendar];

  v26 = objc_loadWeakRetained(&self->_profile);
  heartRateType = [MEMORY[0x277CCD830] heartRateType];
  selfCopy = self;
  v28 = objc_loadWeakRetained(&self->_profile);
  v29 = HDHRBackgroundHeartRateContextPredicate(v28);
  v123 = v25;
  v30 = HDAnalyticsCountOfIntervalsForQuantityType();
  v31 = 0;

  v128 = v30;
  if (v30)
  {
    v32 = HDHRAnalyticsPropertyNameNumBGHRHoursPast30Days;
    v33 = v6;
    v34 = v30;
  }

  else
  {
    _HKInitializeLogging();
    v35 = HKLogAnalytics();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [HDHRHypertensionNotificationAnalysisEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v34 = *MEMORY[0x277CCB7A0];
    v32 = HDHRAnalyticsPropertyNameNumBGHRHoursPast30Days;
    v33 = v6;
  }

  [v33 setObject:v34 forKeyedSubscript:v32];
  v36 = v16;

  p_isa = &selfCopy->super.isa;
  v38 = objc_loadWeakRetained(&selfCopy->_profile);
  v39 = *p_dateInterval;
  v40 = v38;
  v41 = v39;
  v42 = v9;
  v43 = v41;
  v44 = [MEMORY[0x277CCD720] correlationTypeForIdentifier:v42];
  v45 = HDSampleEntityPredicateForDateInterval();
  v137 = 0;
  v46 = [MEMORY[0x277D10848] samplesWithType:v44 profile:v40 encodingOptions:MEMORY[0x277CBEC10] predicate:v45 limit:0 anchor:0 error:&v137];
  v47 = v137;
  v121 = v45;
  v122 = v44;
  if (v47)
  {
    v48 = v47;
    v49 = 0;
    v50 = v47;
    v51 = v46;
    v52 = v36;
    v53 = v128;
    goto LABEL_39;
  }

  v120 = v43;
  v132 = v46;
  if (![v46 count])
  {
    _HKInitializeLogging();
    v95 = HKLogAnalytics();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      *v146 = 138412290;
      v147 = v120;
      _os_log_impl(&dword_229486000, v95, OS_LOG_TYPE_DEFAULT, "No Blood Pressure samples found for date interval: %@", v146, 0xCu);
    }

    v50 = 0;
    v49 = 0;
    v43 = v120;
    v51 = v46;
    v52 = v36;
    v53 = v128;
    goto LABEL_38;
  }

  v119 = v40;
  v131 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC980]];
  v54 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC978]];
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v55 = v46;
  v56 = [v55 countByEnumeratingWithState:&v133 objects:v146 count:16];
  if (!v56)
  {
    v51 = v46;

    v52 = v36;
    v53 = v128;
LABEL_34:
    _HKInitializeLogging();
    v91 = HKLogAnalytics();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v139 = v120;
      _os_log_impl(&dword_229486000, v91, OS_LOG_TYPE_DEFAULT, "Zero correlated Blood Pressure samples found for date interval: %@", buf, 0xCu);
    }

    v49 = 0;
    goto LABEL_37;
  }

  v57 = v56;
  v117 = v6;
  v118 = v36;
  v58 = 0;
  v59 = *v134;
  v60 = 0.0;
  v61 = 0.0;
  do
  {
    for (i = 0; i != v57; ++i)
    {
      if (*v134 != v59)
      {
        objc_enumerationMutation(v55);
      }

      v63 = *(*(&v133 + 1) + 8 * i);
      v64 = [v63 objectsForType:v131];
      allObjects = [v64 allObjects];
      firstObject = [allObjects firstObject];

      v67 = [v63 objectsForType:v54];
      allObjects2 = [v67 allObjects];
      firstObject2 = [allObjects2 firstObject];

      if (firstObject)
      {
        v70 = firstObject2 == 0;
      }

      else
      {
        v70 = 1;
      }

      if (!v70)
      {
        quantity = [firstObject quantity];
        millimeterOfMercuryUnit = [MEMORY[0x277CCDAB0] millimeterOfMercuryUnit];
        [quantity doubleValueForUnit:millimeterOfMercuryUnit];
        v74 = v73;

        v61 = v61 + v74;
        quantity2 = [firstObject2 quantity];
        millimeterOfMercuryUnit2 = [MEMORY[0x277CCDAB0] millimeterOfMercuryUnit];
        [quantity2 doubleValueForUnit:millimeterOfMercuryUnit2];
        v78 = v77;

        v60 = v60 + v78;
        ++v58;
      }

      v51 = v132;
    }

    v57 = [v55 countByEnumeratingWithState:&v133 objects:v146 count:16];
  }

  while (v57);

  v6 = v117;
  v52 = v118;
  v53 = v128;
  p_isa = &selfCopy->super.isa;
  if (!v58)
  {
    goto LABEL_34;
  }

  v116 = v54;
  v79 = v61 / v58;
  v80 = v60 / v58;
  _HKInitializeLogging();
  v81 = HKLogAnalytics();
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    v82 = [MEMORY[0x277CCABB0] numberWithInteger:v58];
    v83 = HKSensitiveLogItem();
    v84 = HKSensitiveLogItem();
    v85 = [MEMORY[0x277CCABB0] numberWithDouble:v79];
    v86 = HKSensitiveLogItem();
    v87 = [MEMORY[0x277CCABB0] numberWithDouble:v80];
    v88 = HKSensitiveLogItem();
    *buf = 138413058;
    v139 = v83;
    v140 = 2112;
    v141 = v84;
    v142 = 2112;
    v143 = v86;
    v144 = 2112;
    v145 = v88;
    _os_log_impl(&dword_229486000, v81, OS_LOG_TYPE_DEFAULT, "Blood Pressure average of %@ samples within date interval: %@ is systolic: %@ and diastolic: %@", buf, 0x2Au);

    v52 = v118;
    p_isa = &selfCopy->super.isa;
  }

  v89 = MEMORY[0x277CCD7E8];
  millimeterOfMercuryUnit3 = [MEMORY[0x277CCDAB0] millimeterOfMercuryUnit];
  v91 = [v89 quantityWithUnit:millimeterOfMercuryUnit3 doubleValue:v79];

  v92 = MEMORY[0x277CCD7E8];
  millimeterOfMercuryUnit4 = [MEMORY[0x277CCDAB0] millimeterOfMercuryUnit];
  v94 = [v92 quantityWithUnit:millimeterOfMercuryUnit4 doubleValue:v80];

  v49 = [MEMORY[0x277CCD080] categoryForClassificationGuidelines:0 systolic:v91 diastolic:v94];

  v53 = v128;
  v51 = v132;
  v54 = v116;
LABEL_37:

  v50 = 0;
  v40 = v119;
  v43 = v120;
LABEL_38:
  v48 = 0;
LABEL_39:

  v96 = v50;
  if (v96)
  {
    _HKInitializeLogging();
    v97 = HKLogAnalytics();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      [(HDHRHypertensionNotificationAnalysisEvent *)p_dateInterval makeIHAGatedEventPayloadWithDataSource:v96 error:v97];
    }

LABEL_42:

    [v6 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:HDHRAnalyticsPropertyNameMeanEnteredBpCategory];
    goto LABEL_47;
  }

  if (!v49)
  {
    _HKInitializeLogging();
    v97 = HKLogAnalytics();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      [(HDHRHypertensionNotificationAnalysisEvent *)p_dateInterval makeIHAGatedEventPayloadWithDataSource:v97 error:v110, v111, v112, v113, v114, v115];
    }

    goto LABEL_42;
  }

  v98 = HDHRBloodPressureClassificationAnalyticsString(v49);
  _HKInitializeLogging();
  v99 = HKLogAnalytics();
  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
  {
    v100 = HKSensitiveLogItem();
    *v146 = 138412290;
    v147 = v100;
    _os_log_impl(&dword_229486000, v99, OS_LOG_TYPE_DEFAULT, "Blood Pressure analytics classification: %@", v146, 0xCu);
  }

  [v6 setObject:v98 forKeyedSubscript:HDHRAnalyticsPropertyNameMeanEnteredBpCategory];
LABEL_47:

  v101 = [MEMORY[0x277CCD8D8] dataTypeWithCode:139];
  v102 = objc_loadWeakRetained(p_isa + 1);
  v103 = HDAnalyticsCountOfSamples();
  v104 = 0;

  v105 = v103;
  if (!v52)
  {
    _HKInitializeLogging();
    v106 = HKLogAnalytics();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      [HDHRHypertensionNotificationAnalysisEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v105 = *MEMORY[0x277CCB7A0];
  }

  [v6 setObject:v105 forKeyedSubscript:HDHRAnalyticsPropertyNameNumHRVValuesPast30Days];
  v107 = [p_isa _isAFibHistoryEnabledWithDataSource:v127];
  [v6 setObject:v107 forKeyedSubscript:HDHRAnalyticsPropertyNameIsAfibHistoryEnabled];

  v108 = [p_isa _daysSinceHTNLastEnabled:v127];
  [v6 setObject:v108 forKeyedSubscript:HDHRAnalyticsPropertyNameDaysSinceNotificationsLastEnabled];

  return v6;
}

- (id)_dnuAdditionalPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NSDictionary *)self->_additionalPayload objectForKeyedSubscript:HDHRAnalyticsPropertyNameNumScores];
  v5 = v4;
  v6 = *MEMORY[0x277CCB7A0];
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *MEMORY[0x277CCB7A0];
  }

  [v3 setObject:v7 forKeyedSubscript:HDHRAnalyticsPropertyNameNumScores];

  v8 = [(NSDictionary *)self->_additionalPayload objectForKeyedSubscript:HDHRAnalyticsPropertyNameValidScoreDays];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  [v3 setObject:v10 forKeyedSubscript:HDHRAnalyticsPropertyNameValidScoreDays];

  return v3;
}

- (id)_ihaAdditionalPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NSDictionary *)self->_additionalPayload objectForKeyedSubscript:HDHRAnalyticsPropertyNameAlertStatus];
  v5 = v4;
  v6 = *MEMORY[0x277CCB7A0];
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *MEMORY[0x277CCB7A0];
  }

  [v3 setObject:v7 forKeyedSubscript:HDHRAnalyticsPropertyNameAlertStatus];

  v8 = [(NSDictionary *)self->_additionalPayload objectForKeyedSubscript:HDHRAnalyticsPropertyNameMeanScore];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  [v3 setObject:v10 forKeyedSubscript:HDHRAnalyticsPropertyNameMeanScore];

  return v3;
}

- (id)_dnuNumDaysWatchWornAnalyticsWithCalendar:(id)calendar
{
  v43 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CBEAB8] hk_dateComponentsForCalendarUnit:32];
  v36 = calendarCopy;
  [v6 setCalendar:calendarCopy];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  heartRateType = [MEMORY[0x277CCD830] heartRateType];
  v9 = objc_loadWeakRetained(&self->_profile);
  v10 = HDHRBackgroundHeartRateContextPredicate(v9);
  v41 = 0;
  v11 = HDAnalyticsStatisticsCollectionOfIntervalsForQuantityType();
  v12 = 0;

  if (v11)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    statistics = [v11 statistics];
    v14 = [statistics countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v32 = v12;
      v33 = v11;
      v34 = v6;
      v35 = v5;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = *v38;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(statistics);
          }

          v22 = *(*(&v37 + 1) + 8 * i);
          if ([v22 dataCount])
          {
            startDate = [v22 startDate];
            v24 = [startDate hk_dayIndexWithCalendar:v36];

            if (v24 == v16)
            {
              ++v19;
            }

            else
            {
              if (v19 > 7)
              {
                ++v17;
              }

              if (v19 > 11)
              {
                ++v18;
              }

              v16 = v24;
              v19 = 1;
            }
          }
        }

        v15 = [statistics countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v15);

      if (v19 <= 7)
      {
        v25 = v17;
      }

      else
      {
        v25 = v17 + 1;
      }

      if (v19 <= 11)
      {
        v26 = v18;
      }

      else
      {
        v26 = v18 + 1;
      }

      v6 = v34;
      v5 = v35;
      v12 = v32;
      v11 = v33;
    }

    else
    {

      v25 = 0;
      v26 = 0;
    }

    v29 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
    [v5 setObject:v29 forKeyedSubscript:HDHRAnalyticsPropertyNameNumDaysWatchWornMoreThan8Hours];

    v30 = [MEMORY[0x277CCABB0] numberWithInteger:v26];
    [v5 setObject:v30 forKeyedSubscript:HDHRAnalyticsPropertyNameNumDaysWatchWornMoreThan12Hours];
  }

  else
  {
    _HKInitializeLogging();
    v27 = HKLogAnalytics();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [HDHRHypertensionNotificationAnalysisEvent _dnuNumDaysWatchWornAnalyticsWithCalendar:];
    }

    v28 = *MEMORY[0x277CCB7A0];
    [v5 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:HDHRAnalyticsPropertyNameNumDaysWatchWornMoreThan8Hours];
    [v5 setObject:v28 forKeyedSubscript:HDHRAnalyticsPropertyNameNumDaysWatchWornMoreThan12Hours];
  }

  return v5;
}

- (id)_ihaDemographicsPayloadWithDataSource:(id)source
{
  sourceCopy = source;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  healthDataSource = [sourceCopy healthDataSource];
  v6 = [healthDataSource biologicalSexWithError:0];

  if (v6)
  {
    v7 = HKAnalyticsPropertyValueForBiologicalSex();
    [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  else
  {
    [dictionary setObject:*MEMORY[0x277CCB800] forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  healthDataSource2 = [sourceCopy healthDataSource];
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];
  v11 = [healthDataSource2 ageWithCurrentDate:currentDate error:0];

  if (v11)
  {
    v12 = *MEMORY[0x277CCB7C0];
    v13 = dictionary;
    v14 = v11;
  }

  else
  {
    v14 = *MEMORY[0x277CCB7A0];
    v12 = *MEMORY[0x277CCB7C0];
    v13 = dictionary;
  }

  [v13 setObject:v14 forKeyedSubscript:v12];

  return dictionary;
}

- (id)_featureStatusForFeatureIdentifier:(id)identifier dataSource:(id)source error:(id *)error
{
  identifierCopy = identifier;
  healthDataSource = [source healthDataSource];
  v9 = [healthDataSource featureStatusProviderForIdentifier:identifierCopy];

  v10 = [v9 featureStatusWithError:error];

  return v10;
}

- (id)_isAFibHistoryEnabledWithDataSource:(id)source
{
  healthDataSource = [source healthDataSource];
  v4 = [healthDataSource featureStatusProviderForIdentifier:*MEMORY[0x277CCBFF0]];

  v5 = [v4 featureStatusWithError:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v8 = [v7 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]];

    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "isOnboardingRecordPresent") & v8}];
  }

  else
  {
    v9 = *MEMORY[0x277CCB798];
  }

  v10 = v9;

  return v10;
}

- (id)_daysSinceHTNLastEnabled:(id)enabled
{
  enabledCopy = enabled;
  healthDataSource = [enabledCopy healthDataSource];
  v5 = [healthDataSource featureStatusProviderForIdentifier:*MEMORY[0x277CCC068]];

  v6 = [v5 featureStatusWithError:0];
  v7 = v6;
  if (v6 && [v6 isOnboardingRecordPresent] && (objc_msgSend(v7, "onboardingRecord"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "featureSettings"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9) && (objc_msgSend(v7, "onboardingRecord"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "featureSettings"), v11 = objc_claimAutoreleasedReturnValue(), v12 = *MEMORY[0x277CCC120], objc_msgSend(v11, "numberForKey:", *MEMORY[0x277CCC120]), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "intValue"), v13, v11, v10, v14 == 1))
  {
    onboardingRecord = [v7 onboardingRecord];
    featureSettings = [onboardingRecord featureSettings];
    v17 = [featureSettings modificationDateForKey:v12];

    if (v17)
    {
      environmentDataSource = [enabledCopy environmentDataSource];
      currentDate = [environmentDataSource currentDate];

      environmentDataSource2 = [enabledCopy environmentDataSource];
      calendarCache = [environmentDataSource2 calendarCache];
      currentCalendar = [calendarCache currentCalendar];

      v23 = [currentCalendar components:16 fromDate:v17 toDate:currentDate options:0];
      v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "day")}];
    }

    else
    {
      v24 = *MEMORY[0x277CCB798];
    }
  }

  else
  {
    v24 = *MEMORY[0x277CCB798];
  }

  return v24;
}

- (void)makeIHAGatedEventPayloadWithDataSource:(os_log_t)log error:.cold.3(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "Could not get average blood pressure for date interval: %@ with error: %{public}@", &v4, 0x16u);
}

- (void)makeIHAGatedEventPayloadWithDataSource:(uint64_t)a3 error:(uint64_t)a4 .cold.4(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_4(&dword_229486000, a2, a3, "Average blood pressure classification is nil for date interval: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end