@interface HDMHMentalHealthDailyAnalyticsEvent
- (HDMHMentalHealthDailyAnalyticsEvent)initWithProfile:(id)profile settingsManager:(id)manager userDefaults:(id)defaults;
- (id)_IHAGatedDemographicsFieldsWithDataSource:(id)source;
- (id)_determineDaysSinceLastSampleWithSampleType:(id)type dataSource:(id)source;
- (id)_enumeratorForPastNDays:(int64_t)days withDataSource:(id)source forSampleType:(id)type withExtraPredicate:(id)predicate;
- (id)_featureStatusForFeatureIdentifier:(id)identifier dataSource:(id)source error:(id *)error;
- (id)_fetchDeviceContextAnalytics;
- (id)_hasLaunchedHealthAppInInterval:(int64_t)interval withDataSource:(id)source;
- (id)_hasLoggedStateOfMindInPastNDays:(int64_t)days withDataSource:(id)source;
- (id)_isFeatureEnabledForFeatureIdentifier:(id)identifier dataSource:(id)source featureAvailabilityContext:(id)context;
- (id)_isFeatureOnboardedForFeatureIdentifier:(id)identifier dataSource:(id)source;
- (id)_mostRecentAssessmentCategories;
- (id)_mostRecentAssessmentCategoryWithSampleType:(id)type;
- (id)_mostRecentStateOfMindPleasantnessRatings;
- (id)_mostRecentStateOfMindWithReflectiveInterval:(int64_t)interval;
- (id)_numAssessmentsCompletedWithDataSource:(id)source;
- (id)_numAssessmentsInPastNDays:(int64_t)days withDataSource:(id)source;
- (id)_numDailyStateOfMindLogsInPastNDays:(int64_t)days withDataSource:(id)source;
- (id)_numDaysStateOfMindLoggedInPast14DaysWithDataSource:(id)source;
- (id)_numDaysStateOfMindLoggedInPast30DaysWithDataSource:(id)source;
- (id)_numDaysStateOfMindLoggedInPastDayWithDataSource:(id)source;
- (id)_stateOfMindDaySummaryEnumeratorForPastNDays:(int64_t)days withDataSource:(id)source;
- (id)_weeksSinceLastHealthAppLaunchWithDataSource:(id)source;
- (id)_weeksSinceOnboardingWithDataSource:(id)source;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
- (int64_t)_bucketedWeeksSinceDate:(id)date dataSource:(id)source;
- (int64_t)numberOfDaysBetweenStartDate:(id)date endDate:(id)endDate withCalendar:(id)calendar;
@end

@implementation HDMHMentalHealthDailyAnalyticsEvent

- (HDMHMentalHealthDailyAnalyticsEvent)initWithProfile:(id)profile settingsManager:(id)manager userDefaults:(id)defaults
{
  profileCopy = profile;
  managerCopy = manager;
  defaultsCopy = defaults;
  v14.receiver = self;
  v14.super_class = HDMHMentalHealthDailyAnalyticsEvent;
  v11 = [(HDMHMentalHealthDailyAnalyticsEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    objc_storeStrong(&v12->_settingsManager, manager);
    objc_storeStrong(&v12->_userDefaults, defaults);
  }

  return v12;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = MEMORY[0x277CBEB38];
  sourceCopy = source;
  dictionary = [v5 dictionary];
  environmentDataSource = [sourceCopy environmentDataSource];
  activePairedDeviceProductType = [environmentDataSource activePairedDeviceProductType];
  [dictionary setObject:activePairedDeviceProductType forKeyedSubscript:@"activePairedWatchType"];

  environmentDataSource2 = [sourceCopy environmentDataSource];
  activePairedDeviceOSBuildNumber = [environmentDataSource2 activePairedDeviceOSBuildNumber];
  [dictionary setObject:activePairedDeviceOSBuildNumber forKeyedSubscript:*MEMORY[0x277CCB7B0]];

  _fetchDeviceContextAnalytics = [(HDMHMentalHealthDailyAnalyticsEvent *)self _fetchDeviceContextAnalytics];
  [dictionary addEntriesFromDictionary:_fetchDeviceContextAnalytics];

  v13 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationManager = [WeakRetained notificationManager];
  v16 = [v13 numberWithBool:{objc_msgSend(notificationManager, "areHealthNotificationsAuthorized")}];
  [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x277CCB7C8]];

  v17 = MEMORY[0x277CCABB0];
  environmentDataSource3 = [sourceCopy environmentDataSource];
  v19 = [v17 numberWithBool:{objc_msgSend(environmentDataSource3, "isImproveHealthAndActivityEnabled")}];
  [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x277CCB7F8]];

  v20 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _hasLaunchedHealthAppInInterval:7 withDataSource:sourceCopy];
  [dictionary setObject:v20 forKeyedSubscript:@"hasLaunchedHealthAppInLastWeek"];

  v21 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _hasLaunchedHealthAppInInterval:30 withDataSource:sourceCopy];
  [dictionary setObject:v21 forKeyedSubscript:@"hasLaunchedHealthAppInLastMonth"];

  v22 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _weeksSinceLastHealthAppLaunchWithDataSource:sourceCopy];
  [dictionary setObject:v22 forKeyedSubscript:@"weeksSinceLastHealthAppLaunch"];

  v23 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _isFeatureOnboardedForFeatureIdentifier:*MEMORY[0x277CCC100] dataSource:sourceCopy];
  [dictionary setObject:v23 forKeyedSubscript:@"isOnboarded"];

  v24 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _weeksSinceOnboardingWithDataSource:sourceCopy];
  [dictionary setObject:v24 forKeyedSubscript:@"weeksSinceOnboarded"];

  v25 = *MEMORY[0x277CCC0C0];
  v26 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _isFeatureOnboardedForFeatureIdentifier:*MEMORY[0x277CCC0C0] dataSource:sourceCopy];
  [dictionary setObject:v26 forKeyedSubscript:@"wereAssessmentsDelivered"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMHSettingsManager hasAnyStateOfMindReminderEnabled](self->_settingsManager, "hasAnyStateOfMindReminderEnabled")}];
  [dictionary setObject:v27 forKeyedSubscript:@"hasStateOfMindNotificationEnabled"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMHSettingsManager middayNotificationsEnabled](self->_settingsManager, "middayNotificationsEnabled")}];
  [dictionary setObject:v28 forKeyedSubscript:@"hasStateOfMindMidDayNotificationEnabled"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMHSettingsManager endOfDayNotificationsEnabled](self->_settingsManager, "endOfDayNotificationsEnabled")}];
  [dictionary setObject:v29 forKeyedSubscript:@"hasStateOfMindEndOfDayNotificationEnabled"];

  v30 = MEMORY[0x277CCABB0];
  customReminderSchedule = [(HKMHSettingsManager *)self->_settingsManager customReminderSchedule];
  v32 = [v30 numberWithInt:{objc_msgSend(customReminderSchedule, "count") != 0}];
  [dictionary setObject:v32 forKeyedSubscript:@"hasStateOfMindCustomNotificationEnabled"];

  v33 = *MEMORY[0x277CCBEA0];
  v34 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _isFeatureEnabledForFeatureIdentifier:v25 dataSource:sourceCopy featureAvailabilityContext:*MEMORY[0x277CCBEA0]];
  [dictionary setObject:v34 forKeyedSubscript:@"hasScheduledQuestionnairesEnabled"];

  v35 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _isFeatureEnabledForFeatureIdentifier:*MEMORY[0x277CCC108] dataSource:sourceCopy featureAvailabilityContext:v33];
  [dictionary setObject:v35 forKeyedSubscript:@"hasUnpleasantLoggingPatternsEnabled"];

  v36 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _hasLoggedStateOfMindInPastNDays:30 withDataSource:sourceCopy];
  [dictionary setObject:v36 forKeyedSubscript:@"hasLoggedStateOfMindInPast30Days"];

  v37 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _hasLoggedStateOfMindInPastNDays:7 withDataSource:sourceCopy];

  [dictionary setObject:v37 forKeyedSubscript:@"hasLoggedStateOfMindInPast7Days"];

  return dictionary;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = MEMORY[0x277CBEB38];
  sourceCopy = source;
  dictionary = [v5 dictionary];
  v8 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _IHAGatedDemographicsFieldsWithDataSource:sourceCopy];
  [dictionary addEntriesFromDictionary:v8];

  v9 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _numDaysStateOfMindLoggedInPast14DaysWithDataSource:sourceCopy];
  [dictionary addEntriesFromDictionary:v9];

  v10 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _numDaysStateOfMindLoggedInPast30DaysWithDataSource:sourceCopy];
  [dictionary addEntriesFromDictionary:v10];

  v11 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _numDaysStateOfMindLoggedInPastDayWithDataSource:sourceCopy];
  [dictionary addEntriesFromDictionary:v11];

  stateOfMindType = [MEMORY[0x277CCD8D8] stateOfMindType];
  v13 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _determineDaysSinceLastSampleWithSampleType:stateOfMindType dataSource:sourceCopy];
  [dictionary setObject:v13 forKeyedSubscript:@"daysSinceLastStateOfMindLogged"];

  _mostRecentStateOfMindPleasantnessRatings = [(HDMHMentalHealthDailyAnalyticsEvent *)self _mostRecentStateOfMindPleasantnessRatings];
  [dictionary addEntriesFromDictionary:_mostRecentStateOfMindPleasantnessRatings];

  v15 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _numAssessmentsCompletedWithDataSource:sourceCopy];
  [dictionary addEntriesFromDictionary:v15];

  v16 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD60]];
  v17 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _determineDaysSinceLastSampleWithSampleType:v16 dataSource:sourceCopy];

  v18 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD68]];
  v19 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _determineDaysSinceLastSampleWithSampleType:v18 dataSource:sourceCopy];

  if (v17 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  v21 = v20;
  [dictionary setObject:v21 forKeyedSubscript:@"daysSinceLastAssessment"];

  _mostRecentAssessmentCategories = [(HDMHMentalHealthDailyAnalyticsEvent *)self _mostRecentAssessmentCategories];
  [dictionary addEntriesFromDictionary:_mostRecentAssessmentCategories];

  return dictionary;
}

- (id)_fetchDeviceContextAnalytics
{
  v31[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  deviceContextManager = [WeakRetained deviceContextManager];
  v4 = [deviceContextManager numberOfDeviceContextsPerDeviceType:0];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:&unk_2869D07F0];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &unk_2869D0808;
    }

    v8 = v7;

    v9 = [v4 objectForKeyedSubscript:&unk_2869D0820];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &unk_2869D0808;
    }

    v12 = v11;

    v13 = [v4 objectForKeyedSubscript:&unk_2869D0838];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &unk_2869D0808;
    }

    v16 = v15;

    v17 = [v4 objectForKeyedSubscript:&unk_2869D0850];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &unk_2869D0808;
    }

    v20 = v19;

    v21 = *MEMORY[0x277CCB7E8];
    v26[0] = *MEMORY[0x277CCB7D8];
    v26[1] = v21;
    v29[0] = v8;
    v29[1] = v16;
    v27 = *MEMORY[0x277CCB7F0];
    v28 = v27;
    v29[2] = v12;
    v29[3] = v20;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v26 count:4];
  }

  else
  {
    v23 = *MEMORY[0x277CCB7E8];
    v30[0] = *MEMORY[0x277CCB7D8];
    v30[1] = v23;
    v31[0] = &unk_2869D07D8;
    v31[1] = &unk_2869D07D8;
    v24 = *MEMORY[0x277CCB7E0];
    v30[2] = *MEMORY[0x277CCB7F0];
    v30[3] = v24;
    v31[2] = &unk_2869D07D8;
    v31[3] = &unk_2869D07D8;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
  }

  return v22;
}

- (id)_IHAGatedDemographicsFieldsWithDataSource:(id)source
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
    v12 = v11;
  }

  else
  {
    v12 = &unk_2869D07D8;
  }

  [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277CCB7C0]];
  v13 = [dictionary copy];

  return v13;
}

- (id)_featureStatusForFeatureIdentifier:(id)identifier dataSource:(id)source error:(id *)error
{
  identifierCopy = identifier;
  healthDataSource = [source healthDataSource];
  v9 = [healthDataSource featureStatusProviderForIdentifier:identifierCopy];

  v10 = [v9 featureStatusWithError:error];

  return v10;
}

- (id)_isFeatureOnboardedForFeatureIdentifier:(id)identifier dataSource:(id)source
{
  v4 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:identifier dataSource:source error:0];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isOnboardingRecordPresent")}];
  }

  else
  {
    v6 = *MEMORY[0x277CCB798];
  }

  v7 = v6;

  return v7;
}

- (id)_isFeatureEnabledForFeatureIdentifier:(id)identifier dataSource:(id)source featureAvailabilityContext:(id)context
{
  contextCopy = context;
  v9 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:identifier dataSource:source error:0];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:contextCopy];
    v12 = [v11 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  }

  else
  {
    v13 = *MEMORY[0x277CCB798];
  }

  v14 = v13;

  return v14;
}

- (id)_hasLaunchedHealthAppInInterval:(int64_t)interval withDataSource:(id)source
{
  sourceCopy = source;
  _healthAppLastOpenedDate = [(HDMHMentalHealthDailyAnalyticsEvent *)self _healthAppLastOpenedDate];
  if (_healthAppLastOpenedDate)
  {
    environmentDataSource = [sourceCopy environmentDataSource];
    currentDate = [environmentDataSource currentDate];

    environmentDataSource2 = [sourceCopy environmentDataSource];
    calendarCache = [environmentDataSource2 calendarCache];
    currentCalendar = [calendarCache currentCalendar];

    v13 = [(HDMHMentalHealthDailyAnalyticsEvent *)self numberOfDaysBetweenStartDate:_healthAppLastOpenedDate endDate:currentDate withCalendar:currentCalendar];
    v14 = v13 > -1 && v13 <= interval;
    v15 = MEMORY[0x277CBEC28];
    if (v14)
    {
      v15 = MEMORY[0x277CBEC38];
    }

    v16 = v15;
  }

  else
  {
    v16 = *MEMORY[0x277CCB798];
  }

  return v16;
}

- (id)_weeksSinceLastHealthAppLaunchWithDataSource:(id)source
{
  sourceCopy = source;
  _healthAppLastOpenedDate = [(HDMHMentalHealthDailyAnalyticsEvent *)self _healthAppLastOpenedDate];
  if (_healthAppLastOpenedDate)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMHMentalHealthDailyAnalyticsEvent _bucketedWeeksSinceDate:dataSource:](self, "_bucketedWeeksSinceDate:dataSource:", _healthAppLastOpenedDate, sourceCopy)}];
  }

  else
  {
    v6 = *MEMORY[0x277CCB7A0];
  }

  v7 = v6;

  return v7;
}

- (id)_stateOfMindDaySummaryEnumeratorForPastNDays:(int64_t)days withDataSource:(id)source
{
  sourceCopy = source;
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];

  environmentDataSource2 = [sourceCopy environmentDataSource];

  calendarCache = [environmentDataSource2 calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  v12 = [currentDate hk_dayIndexWithCalendar:currentCalendar] - days;
  v13 = [HDMHDaySummaryEnumerator alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(v17) = 1;
  v15 = [(HDMHDaySummaryEnumerator *)v13 initWithProfile:WeakRetained dayIndexRange:v12 gregorianCalendar:days predicate:currentCalendar pendingDailyStateOfMind:0 ascending:0, v17];

  return v15;
}

- (id)_numDaysStateOfMindLoggedInPast14DaysWithDataSource:(id)source
{
  v26[2] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v5 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _stateOfMindDaySummaryEnumeratorForPastNDays:14 withDataSource:sourceCopy];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v13[5] = &v15;
  v14 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__HDMHMentalHealthDailyAnalyticsEvent__numDaysStateOfMindLoggedInPast14DaysWithDataSource___block_invoke;
  v13[3] = &unk_2798AAEF0;
  v13[4] = &v19;
  v6 = [v5 enumerateWithError:&v14 handler:v13];
  v7 = v14;
  if (v6)
  {
    v23[0] = @"numDaysDailyStateOfMindLoggedPast2Weeks";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v20[3]];
    v24[0] = v8;
    v23[1] = @"numDaysMomentaryStateOfMindLoggedPast2Weeks";
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v16[3]];
    v24[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  }

  else
  {
    v11 = *MEMORY[0x277CCB7A0];
    v25[0] = @"numDaysDailyStateOfMindLoggedPast2Weeks";
    v25[1] = @"numDaysMomentaryStateOfMindLoggedPast2Weeks";
    v26[0] = v11;
    v26[1] = v11;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v10;
}

void __91__HDMHMentalHealthDailyAnalyticsEvent__numDaysStateOfMindLoggedInPast14DaysWithDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dailyStateOfMind];

  if (v4)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  v5 = [v3 momentaryStatesOfMind];

  v6 = [v5 count];
  if (v6)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (id)_numDaysStateOfMindLoggedInPast30DaysWithDataSource:(id)source
{
  v40[4] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v5 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _stateOfMindDaySummaryEnumeratorForPastNDays:30 withDataSource:sourceCopy];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v15[8] = &v21;
  v16 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__HDMHMentalHealthDailyAnalyticsEvent__numDaysStateOfMindLoggedInPast30DaysWithDataSource___block_invoke;
  v15[3] = &unk_2798AAF18;
  v15[4] = &v17;
  v15[5] = &v33;
  v15[6] = &v29;
  v15[7] = &v25;
  v6 = [v5 enumerateWithError:&v16 handler:v15];
  v7 = v16;
  if (v18[3] <= 29)
  {
    v22[3] = 0;
  }

  if (v6)
  {
    v37[0] = @"numDaysDailyStateOfMindLoggedPast30Days";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v34[3]];
    v38[0] = v8;
    v37[1] = @"numDaysMomentaryStateOfMindLoggedPast30Days";
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v30[3]];
    v38[1] = v9;
    v37[2] = @"numMomentaryStateOfMindLogsPerDayPast30DaysMax";
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v26[3]];
    v38[2] = v10;
    v37[3] = @"numMomentaryStateOfMindLogsPerDayPast30DaysMin";
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v22[3]];
    v38[3] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
  }

  else
  {
    v13 = *MEMORY[0x277CCB7A0];
    v39[0] = @"numDaysDailyStateOfMindLoggedPast30Days";
    v39[1] = @"numDaysMomentaryStateOfMindLoggedPast30Days";
    v40[0] = v13;
    v40[1] = v13;
    v39[2] = @"numMomentaryStateOfMindLogsPerDayPast30DaysMax";
    v39[3] = @"numMomentaryStateOfMindLogsPerDayPast30DaysMin";
    v40[2] = v13;
    v40[3] = v13;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  return v12;
}

void __91__HDMHMentalHealthDailyAnalyticsEvent__numDaysStateOfMindLoggedInPast30DaysWithDataSource___block_invoke(void *a1, void *a2)
{
  ++*(*(a1[4] + 8) + 24);
  v3 = a2;
  v4 = [v3 dailyStateOfMind];

  if (v4)
  {
    ++*(*(a1[5] + 8) + 24);
  }

  v5 = [v3 momentaryStatesOfMind];

  v6 = [v5 count];
  if (v6)
  {
    ++*(*(a1[6] + 8) + 24);
  }

  v7 = *(a1[7] + 8);
  v8 = *(v7 + 24);
  if (v8 <= v6)
  {
    v8 = v6;
  }

  *(v7 + 24) = v8;
  v9 = *(a1[8] + 8);
  v10 = *(v9 + 24);
  if (v10 >= v6)
  {
    v10 = v6;
  }

  *(v9 + 24) = v10;
}

- (id)_numDaysStateOfMindLoggedInPastDayWithDataSource:(id)source
{
  v22[2] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v5 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _stateOfMindDaySummaryEnumeratorForPastNDays:1 withDataSource:sourceCopy];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v13[4] = &v15;
  v14 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__HDMHMentalHealthDailyAnalyticsEvent__numDaysStateOfMindLoggedInPastDayWithDataSource___block_invoke;
  v13[3] = &unk_2798AAF40;
  v6 = [v5 enumerateWithError:&v14 handler:v13];
  v7 = v14;
  v8 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _numDailyStateOfMindLogsInPastNDays:1 withDataSource:sourceCopy];
  if (v6)
  {
    v19[0] = @"numMomentaryStateOfMindLogsPastDay";
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v16[3]];
    v19[1] = @"numDailyStateOfMindLogsPastDay";
    v20[0] = v9;
    v20[1] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v11 = *MEMORY[0x277CCB7A0];
    v21[0] = @"numMomentaryStateOfMindLogsPastDay";
    v21[1] = @"numDailyStateOfMindLogsPastDay";
    v22[0] = v11;
    v22[1] = v11;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  }

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __88__HDMHMentalHealthDailyAnalyticsEvent__numDaysStateOfMindLoggedInPastDayWithDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 momentaryStatesOfMind];
  *(*(*(a1 + 32) + 8) + 24) = [v3 count];
}

- (id)_hasLoggedStateOfMindInPastNDays:(int64_t)days withDataSource:(id)source
{
  sourceCopy = source;
  v7 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _stateOfMindDaySummaryEnumeratorForPastNDays:days withDataSource:sourceCopy];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = MEMORY[0x277CBEC28];
  v12[4] = &v14;
  v13 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__HDMHMentalHealthDailyAnalyticsEvent__hasLoggedStateOfMindInPastNDays_withDataSource___block_invoke;
  v12[3] = &unk_2798AAF40;
  LODWORD(self) = [v7 enumerateWithError:&v13 handler:v12];
  v8 = v13;
  v9 = (v15 + 5);
  if (!self)
  {
    v9 = MEMORY[0x277CCB798];
  }

  v10 = *v9;

  _Block_object_dispose(&v14, 8);

  return v10;
}

void __87__HDMHMentalHealthDailyAnalyticsEvent__hasLoggedStateOfMindInPastNDays_withDataSource___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 dailyStateOfMind];
  if (v3)
  {
  }

  else
  {
    v4 = [v7 momentaryStatesOfMind];

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = MEMORY[0x277CBEC38];

LABEL_5:
}

- (id)_enumeratorForPastNDays:(int64_t)days withDataSource:(id)source forSampleType:(id)type withExtraPredicate:(id)predicate
{
  predicateCopy = predicate;
  typeCopy = type;
  sourceCopy = source;
  environmentDataSource = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  environmentDataSource2 = [sourceCopy environmentDataSource];

  currentDate = [environmentDataSource2 currentDate];

  v18 = [currentCalendar dateByAddingUnit:16 value:-days toDate:currentDate options:0];
  v19 = objc_alloc(MEMORY[0x277CCA970]);
  v20 = [v19 initWithStartDate:v18 duration:(*MEMORY[0x277CCB828] * days)];
  v21 = [objc_msgSend(typeCopy "dataObjectClass")];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v23 = [v21 entityEnumeratorWithProfile:WeakRetained];

  v24 = MEMORY[0x277D10B70];
  v25 = HDSampleEntityPredicateForDateInterval();

  v26 = [v24 compoundPredicateWithPredicate:v25 otherPredicate:predicateCopy];

  [v23 setPredicate:v26];

  return v23;
}

- (id)_numAssessmentsInPastNDays:(int64_t)days withDataSource:(id)source
{
  v25[2] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v7 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD68]];
  v8 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _enumeratorForPastNDays:days withDataSource:sourceCopy forSampleType:v7 withExtraPredicate:0];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14[5] = &v16;
  v15 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__HDMHMentalHealthDailyAnalyticsEvent__numAssessmentsInPastNDays_withDataSource___block_invoke;
  v14[3] = &unk_2798AAF68;
  v14[4] = &v20;
  LOBYTE(v7) = [v8 enumerateWithError:&v15 handler:v14];
  v9 = v15;
  if (v7)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v21[3]];
    v24[0] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v17[3]];
    v24[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  }

  else
  {
    v25[0] = *MEMORY[0x277CCB7A0];
    v25[1] = v25[0];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v12;
}

uint64_t __81__HDMHMentalHealthDailyAnalyticsEvent__numAssessmentsInPastNDays_withDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return 1;
}

- (id)_numAssessmentsCompletedWithDataSource:(id)source
{
  v14[4] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v5 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _numAssessmentsInPastNDays:30 withDataSource:sourceCopy];
  v6 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _numAssessmentsInPastNDays:180 withDataSource:sourceCopy];

  v13[0] = @"numDepressionAssessmentsCompletedPast30Days";
  v7 = [v5 objectAtIndexedSubscript:0];
  v14[0] = v7;
  v13[1] = @"numAnxietyAssessmentsCompletedPast30Days";
  v8 = [v5 objectAtIndexedSubscript:1];
  v14[1] = v8;
  v13[2] = @"numDepressionAssessmentsCompletedPast180Days";
  v9 = [v6 objectAtIndexedSubscript:0];
  v14[2] = v9;
  v13[3] = @"numAnxietyAssessmentsCompletedPast180Days";
  v10 = [v6 objectAtIndexedSubscript:1];
  v14[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

- (id)_numDailyStateOfMindLogsInPastNDays:(int64_t)days withDataSource:(id)source
{
  v24 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v7 = [MEMORY[0x277D10880] predicateForReflectiveInterval:2 equals:1];
  stateOfMindType = [MEMORY[0x277CCD8D8] stateOfMindType];
  v9 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _enumeratorForPastNDays:days withDataSource:sourceCopy forSampleType:stateOfMindType withExtraPredicate:v7];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v17[4] = &v19;
  v18 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__HDMHMentalHealthDailyAnalyticsEvent__numDailyStateOfMindLogsInPastNDays_withDataSource___block_invoke;
  v17[3] = &unk_2798AAF90;
  v10 = [v9 enumerateWithError:&v18 handler:v17];
  v11 = v18;
  if (v11)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      [(HDMHMentalHealthDailyAnalyticsEvent *)v13 _numDailyStateOfMindLogsInPastNDays:v11 withDataSource:v23, v12];
    }
  }

  if (v10)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v20[3]];
  }

  else
  {
    v14 = *MEMORY[0x277CCB7A0];
  }

  v15 = v14;

  _Block_object_dispose(&v19, 8);

  return v15;
}

uint64_t __90__HDMHMentalHealthDailyAnalyticsEvent__numDailyStateOfMindLogsInPastNDays_withDataSource___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return 1;
}

- (id)_determineDaysSinceLastSampleWithSampleType:(id)type dataSource:(id)source
{
  sourceCopy = source;
  typeCopy = type;
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];

  environmentDataSource2 = [sourceCopy environmentDataSource];

  calendarCache = [environmentDataSource2 calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  v13 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v22 = 0;
  v15 = [v13 mostRecentSampleWithType:typeCopy profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v22];

  v16 = v22;
  if (v16 && (_HKInitializeLogging(), v17 = *MEMORY[0x277CCC2F0], os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR)))
  {
    [(HDMHMentalHealthDailyAnalyticsEvent *)v17 _determineDaysSinceLastSampleWithSampleType:v16 dataSource:?];
    if (v15)
    {
      goto LABEL_4;
    }
  }

  else if (v15)
  {
LABEL_4:
    v18 = MEMORY[0x277CCABB0];
    startDate = [v15 startDate];
    v20 = [v18 numberWithInteger:{-[HDMHMentalHealthDailyAnalyticsEvent numberOfDaysBetweenStartDate:endDate:withCalendar:](self, "numberOfDaysBetweenStartDate:endDate:withCalendar:", startDate, currentDate, currentCalendar)}];

    goto LABEL_7;
  }

  v20 = *MEMORY[0x277CCB7A0];
LABEL_7:

  return v20;
}

- (int64_t)numberOfDaysBetweenStartDate:(id)date endDate:(id)endDate withCalendar:(id)calendar
{
  v5 = [calendar components:16 fromDate:date toDate:endDate options:0];
  v6 = [v5 day];

  return v6;
}

- (id)_mostRecentAssessmentCategories
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD68]];
  v4 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _mostRecentAssessmentCategoryWithSampleType:v3];

  v5 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD60]];
  v6 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _mostRecentAssessmentCategoryWithSampleType:v5];

  v9[0] = @"mostRecentDepressionsAssessmentCategory";
  v9[1] = @"mostRecentAnxietyAssessmentCategory";
  v10[0] = v4;
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)_mostRecentStateOfMindPleasantnessRatings
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _mostRecentStateOfMindWithReflectiveInterval:2];
  v4 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _mostRecentStateOfMindWithReflectiveInterval:1];
  v7[0] = @"mostRecentDailyPleasantnessRating";
  v7[1] = @"mostRecentMomentaryPleasantnessRating";
  v8[0] = v3;
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)_weeksSinceOnboardingWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCC100] dataSource:sourceCopy error:0];
  v6 = v5;
  if (v5)
  {
    if ([v5 isOnboardingRecordPresent])
    {
      v7 = MEMORY[0x277CCABB0];
      onboardingRecord = [v6 onboardingRecord];
      onboardingCompletion = [onboardingRecord onboardingCompletion];
      completionDate = [onboardingCompletion completionDate];
      v11 = [v7 numberWithInteger:{-[HDMHMentalHealthDailyAnalyticsEvent _bucketedWeeksSinceDate:dataSource:](self, "_bucketedWeeksSinceDate:dataSource:", completionDate, sourceCopy)}];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = *MEMORY[0x277CCB798];
  }

  return v11;
}

- (int64_t)_bucketedWeeksSinceDate:(id)date dataSource:(id)source
{
  dateCopy = date;
  environmentDataSource = [source environmentDataSource];
  v7 = [environmentDataSource bucketedNumberOfWeeksSinceDate:dateCopy];

  v8 = *MEMORY[0x277CCB7A0];
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  integerValue = [v9 integerValue];
  return integerValue;
}

- (id)_mostRecentAssessmentCategoryWithSampleType:(id)type
{
  v24 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v17 = 0;
  v7 = [v5 mostRecentSampleWithType:typeCopy profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v17];
  v8 = v17;

  if (v8)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      v14 = v9;
      v15 = objc_opt_class();
      *buf = 138543874;
      v19 = v15;
      v20 = 2112;
      v21 = typeCopy;
      v22 = 2112;
      v23 = v8;
      v16 = v15;
      _os_log_error_impl(&dword_258977000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving last sample %@: %@", buf, 0x20u);
    }

LABEL_4:
    v10 = &stru_2869CE0C8;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 risk];
    v11 = NSStringFromHKGAD7AssessmentRisk();
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC2F0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
      {
        [(HDMHMentalHealthDailyAnalyticsEvent *)v13 _mostRecentAssessmentCategoryWithSampleType:?];
      }

      goto LABEL_4;
    }

    [v7 risk];
    v11 = NSStringFromHKPHQ9AssessmentRisk();
  }

  v10 = v11;
LABEL_10:

  return v10;
}

- (id)_mostRecentStateOfMindWithReflectiveInterval:(int64_t)interval
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D10880] predicateForReflectiveInterval:?];
  v5 = MEMORY[0x277D10848];
  stateOfMindType = [MEMORY[0x277CCD8D8] stateOfMindType];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v18 = 0;
  v8 = [v5 mostRecentSampleWithType:stateOfMindType profile:WeakRetained encodingOptions:0 predicate:v4 anchor:0 error:&v18];
  v9 = v18;

  if (v9)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = v12;
      v14 = NSStringFromHKStateOfMindReflectiveInterval();
      *buf = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&dword_258977000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving last state of mind sample %@: %@", buf, 0x20u);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 valenceClassification];
      v15 = NSStringFromHKStateOfMindValenceClassification();
      goto LABEL_9;
    }

    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [(HDMHMentalHealthDailyAnalyticsEvent *)v16 _mostRecentAssessmentCategoryWithSampleType:?];
    }
  }

  v15 = &stru_2869CE0C8;
LABEL_9:

  return v15;
}

- (void)_numDailyStateOfMindLogsInPastNDays:(uint64_t)a3 withDataSource:(NSObject *)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  v6 = a1;
  _os_log_error_impl(&dword_258977000, a4, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving daily state of mind logs: %@", a3, 0x16u);
}

- (void)_determineDaysSinceLastSampleWithSampleType:(uint64_t)a3 dataSource:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  *v12 = 138543618;
  *&v12[4] = objc_opt_class();
  *&v12[12] = 2112;
  *&v12[14] = a3;
  v5 = *&v12[4];
  OUTLINED_FUNCTION_0(&dword_258977000, v6, v7, "[%{public}@] Error retrieving days since last sample: %@", v8, v9, v10, v11, *v12, *&v12[8], *&v12[16]);
}

- (void)_mostRecentAssessmentCategoryWithSampleType:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Retrieved sample of unexpected type: %{private}@", v7, v8, v9, v10);
}

@end