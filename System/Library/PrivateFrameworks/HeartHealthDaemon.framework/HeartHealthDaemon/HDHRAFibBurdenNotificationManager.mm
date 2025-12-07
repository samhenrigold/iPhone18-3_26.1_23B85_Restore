@interface HDHRAFibBurdenNotificationManager
+ (id)_buildNotificationBodyForCurrentPercentageString:(id)string isCurrentValueClamped:(BOOL)clamped previousPercentageString:(id)percentageString isPreviousValueClamped:(BOOL)valueClamped;
+ (id)_buildNotificationForAFibBurdenCurrentPercentage:(id)percentage isCurrentValueClamped:(BOOL)clamped previousPercentage:(id)previousPercentage isPreviousValueClamped:(BOOL)valueClamped startDate:(id)date endDate:(id)endDate currentDate:(id)currentDate expirationDate:(id)self0 uuid:(id)self1 calendar:(id)self2;
+ (id)_buildNotificationForLackOfAFibBurdenWithCurrentDate:(id)date expirationDate:(id)expirationDate shouldForwardToWatch:(BOOL)watch uuid:(id)uuid;
+ (id)_generateDateRangeStringForAnalysisSampleWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar isUnitTesting:(BOOL)testing;
+ (id)_julianDayFromDate:(id)date calendar:(id)calendar;
+ (id)_notificationBodyKeyForCurrentPercentageString:(id)string isCurrentValueClamped:(BOOL)clamped previousPercentageString:(id)percentageString isPreviousValueClamped:(BOOL)valueClamped;
- (HDHRAFibBurdenNotificationManager)initWithProfile:(id)profile;
- (HDHRAFibBurdenNotificationManager)initWithProfile:(id)profile modeDeterminer:(id)determiner notificationLastSentDateStore:(id)store calendarCache:(id)cache dateGenerator:(id)generator eventSubmissionManager:(id)manager;
- (id)_buildNotificationForMode:(id)mode;
- (id)_buildValueNotificationForMode:(id)mode currentDate:(id)date;
- (id)_generateExpirationDateWithCurrentDate:(id)date;
- (id)_userNotificationCenter;
- (void)_sendNotificationRequest:(id)request completion:(id)completion;
- (void)_sendNotificationWithMode:(id)mode completion:(id)completion;
- (void)sevenDayAnalysisScheduler:(id)scheduler didSuccessfullyCompleteAnalysisWithSample:(id)sample onboardedWithinAnalysisInterval:(BOOL)interval featureStatus:(id)status;
@end

@implementation HDHRAFibBurdenNotificationManager

- (HDHRAFibBurdenNotificationManager)initWithProfile:(id)profile
{
  v4 = MEMORY[0x277CCD0A0];
  profileCopy = profile;
  v6 = objc_alloc_init(v4);
  v7 = [[HDHRAFibBurdenNotificationModeDeterminer alloc] initWithProfile:profileCopy calendarCache:v6];
  v8 = [MEMORY[0x277D10718] hdhr_aFibBurdenProtectedSyncedDomainForProfile:profileCopy];
  v9 = objc_alloc(MEMORY[0x277CCCFE8]);
  v10 = HKHRAFibBurdenLogForCategory();
  v11 = [v9 initWithLoggingCategory:v10 healthDataSource:profileCopy];
  v12 = [(HDHRAFibBurdenNotificationManager *)self initWithProfile:profileCopy modeDeterminer:v7 notificationLastSentDateStore:v8 calendarCache:v6 dateGenerator:&__block_literal_global_5 eventSubmissionManager:v11];

  return v12;
}

- (HDHRAFibBurdenNotificationManager)initWithProfile:(id)profile modeDeterminer:(id)determiner notificationLastSentDateStore:(id)store calendarCache:(id)cache dateGenerator:(id)generator eventSubmissionManager:(id)manager
{
  v34 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  determinerCopy = determiner;
  storeCopy = store;
  cacheCopy = cache;
  generatorCopy = generator;
  managerCopy = manager;
  v31.receiver = self;
  v31.super_class = HDHRAFibBurdenNotificationManager;
  v18 = [(HDHRAFibBurdenNotificationManager *)&v31 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_profile, profileCopy);
    v20 = MEMORY[0x22AACDB50](generatorCopy);
    dateGenerator = v19->_dateGenerator;
    v19->_dateGenerator = v20;

    objc_storeStrong(&v19->_eventSubmissionManager, manager);
    objc_storeStrong(&v19->_modeDeterminer, determiner);
    objc_storeStrong(&v19->_notificationLastSentDateStore, store);
    objc_storeStrong(&v19->_calendarCache, cache);
    v22 = HKDispatchQueueName();
    v23 = dispatch_queue_create(v22, 0);
    queue = v19->_queue;
    v19->_queue = v23;

    _HKInitializeLogging();
    v25 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      *buf = 138412290;
      v33 = v26;
      v27 = v26;
      _os_log_impl(&dword_229486000, v25, OS_LOG_TYPE_DEFAULT, "[%@] was created", buf, 0xCu);
    }
  }

  return v19;
}

- (void)sevenDayAnalysisScheduler:(id)scheduler didSuccessfullyCompleteAnalysisWithSample:(id)sample onboardedWithinAnalysisInterval:(BOOL)interval featureStatus:(id)status
{
  intervalCopy = interval;
  statusCopy = status;
  modeDeterminer = self->_modeDeterminer;
  v18 = 0;
  v11 = [(HDHRAFibBurdenNotificationModeDeterminer *)modeDeterminer notificationModeForCurrentValue:sample featureStatus:statusCopy onboardedWithinAnalysisInterval:intervalCopy error:&v18];
  v12 = v18;
  if (v11)
  {
    queue = self->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __151__HDHRAFibBurdenNotificationManager_sevenDayAnalysisScheduler_didSuccessfullyCompleteAnalysisWithSample_onboardedWithinAnalysisInterval_featureStatus___block_invoke;
    v15[3] = &unk_278660440;
    v15[4] = self;
    v16 = v11;
    v17 = statusCopy;
    dispatch_sync(queue, v15);
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [HDHRAFibBurdenNotificationManager sevenDayAnalysisScheduler:didSuccessfullyCompleteAnalysisWithSample:onboardedWithinAnalysisInterval:featureStatus:];
    }
  }
}

void __151__HDHRAFibBurdenNotificationManager_sevenDayAnalysisScheduler_didSuccessfullyCompleteAnalysisWithSample_onboardedWithinAnalysisInterval_featureStatus___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __151__HDHRAFibBurdenNotificationManager_sevenDayAnalysisScheduler_didSuccessfullyCompleteAnalysisWithSample_onboardedWithinAnalysisInterval_featureStatus___block_invoke_2;
  v6[3] = &unk_278660128;
  v7 = v2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  [v3 _sendNotificationWithMode:v7 completion:v6];
}

void __151__HDHRAFibBurdenNotificationManager_sevenDayAnalysisScheduler_didSuccessfullyCompleteAnalysisWithSample_onboardedWithinAnalysisInterval_featureStatus___block_invoke_2(void *a1)
{
  v2 = [HDHRAFibBurdenNotificationAnalyticsEvent alloc];
  v3 = a1[4];
  v4 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[6] + 8));
  v6 = [(HDHRAFibBurdenNotificationAnalyticsEvent *)v2 initWithNotificationMode:v3 featureStatus:v4 profile:WeakRetained];

  [*(a1[6] + 48) submitEvent:v6 error:0];
}

- (void)_sendNotificationWithMode:(id)mode completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = [(HDHRAFibBurdenNotificationManager *)self _buildNotificationForMode:mode];
  if (v7)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__HDHRAFibBurdenNotificationManager__sendNotificationWithMode_completion___block_invoke;
    v9[3] = &unk_27865FD68;
    v9[4] = self;
    v10 = completionCopy;
    [(HDHRAFibBurdenNotificationManager *)self _sendNotificationRequest:v7 completion:v9];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did not generate notification for mode, will not post notification", buf, 0xCu);
    }
  }
}

void __74__HDHRAFibBurdenNotificationManager__sendNotificationWithMode_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    v6 = *(v4 + 16);
    v7 = *(v6 + 16);
    v9 = a3;
    v8 = v7(v6);
    [v5 setNotificationSentDate:v8];

    (*(*(a1 + 40) + 16))();
  }
}

- (id)_userNotificationCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationManager = [WeakRetained notificationManager];

  return notificationManager;
}

- (id)_generateExpirationDateWithCurrentDate:(id)date
{
  calendarCache = self->_calendarCache;
  dateCopy = date;
  currentCalendar = [(HKCalendarCache *)calendarCache currentCalendar];
  v6 = [currentCalendar hk_dateByAddingDays:1 toDate:dateCopy];

  return v6;
}

- (void)_sendNotificationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HDHRAFibBurdenNotificationManager__sendNotificationRequest_completion___block_invoke;
  block[3] = &unk_278660468;
  block[4] = self;
  v11 = requestCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = requestCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __73__HDHRAFibBurdenNotificationManager__sendNotificationRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[%@] About to show AFib Burden Report notification", buf, 0xCu);
  }

  v5 = [*(a1 + 32) _userNotificationCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HDHRAFibBurdenNotificationManager__sendNotificationRequest_completion___block_invoke_330;
  v7[3] = &unk_27865FD68;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  [v5 postNotificationWithRequest:v6 completion:v7];
}

void __73__HDHRAFibBurdenNotificationManager__sendNotificationRequest_completion___block_invoke_330(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __73__HDHRAFibBurdenNotificationManager__sendNotificationRequest_completion___block_invoke_330_cold_1(a1, v4, v5);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_buildNotificationForMode:(id)mode
{
  v18 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v5 = (*(self->_dateGenerator + 2))();
  type = [modeCopy type];
  switch(type)
  {
    case 3:
      v10 = objc_opt_class();
      v11 = [(HDHRAFibBurdenNotificationManager *)self _generateExpirationDateWithCurrentDate:v5];
      shouldForwardToWatch = [modeCopy shouldForwardToWatch];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v9 = [v10 _buildNotificationForLackOfAFibBurdenWithCurrentDate:v5 expirationDate:v11 shouldForwardToWatch:shouldForwardToWatch uuid:uUIDString];

      break;
    case 2:
      _HKInitializeLogging();
      v7 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        selfCopy2 = self;
        v8 = "[%{public}@] Preparing notification with current and previous value";
        goto LABEL_8;
      }

LABEL_9:

      v9 = [(HDHRAFibBurdenNotificationManager *)self _buildValueNotificationForMode:modeCopy currentDate:v5];
      break;
    case 1:
      _HKInitializeLogging();
      v7 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        selfCopy2 = self;
        v8 = "[%{public}@] Preparing notification with current value only";
LABEL_8:
        _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, v8, &v16, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    default:
      v9 = 0;
      break;
  }

  return v9;
}

- (id)_buildValueNotificationForMode:(id)mode currentDate:(id)date
{
  modeCopy = mode;
  dateCopy = date;
  currentPercentage = [modeCopy currentPercentage];
  if (!currentPercentage)
  {
    goto LABEL_8;
  }

  v9 = currentPercentage;
  currentValueClamped = [modeCopy currentValueClamped];
  if (!currentValueClamped)
  {
    goto LABEL_7;
  }

  v11 = currentValueClamped;
  currentValueDateInterval = [modeCopy currentValueDateInterval];
  if (!currentValueDateInterval)
  {

LABEL_7:
    goto LABEL_8;
  }

  v13 = currentValueDateInterval;
  currentValueUUID = [modeCopy currentValueUUID];

  if (currentValueUUID)
  {
    v15 = objc_opt_class();
    currentPercentage2 = [modeCopy currentPercentage];
    currentValueClamped2 = [modeCopy currentValueClamped];
    bOOLValue = [currentValueClamped2 BOOLValue];
    previousPercentage = [modeCopy previousPercentage];
    previousValueClamped = [modeCopy previousValueClamped];
    bOOLValue2 = [previousValueClamped BOOLValue];
    currentValueDateInterval2 = [modeCopy currentValueDateInterval];
    startDate = [currentValueDateInterval2 startDate];
    currentValueDateInterval3 = [modeCopy currentValueDateInterval];
    endDate = [currentValueDateInterval3 endDate];
    v18 = [(HDHRAFibBurdenNotificationManager *)self _generateExpirationDateWithCurrentDate:dateCopy];
    currentValueUUID2 = [modeCopy currentValueUUID];
    uUIDString = [currentValueUUID2 UUIDString];
    currentCalendar = [(HKCalendarCache *)self->_calendarCache currentCalendar];
    v22 = [v15 _buildNotificationForAFibBurdenCurrentPercentage:currentPercentage2 isCurrentValueClamped:bOOLValue previousPercentage:previousPercentage isPreviousValueClamped:bOOLValue2 startDate:startDate endDate:endDate currentDate:dateCopy expirationDate:v18 uuid:uUIDString calendar:currentCalendar];

    goto LABEL_11;
  }

LABEL_8:
  _HKInitializeLogging();
  v23 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    [HDHRAFibBurdenNotificationManager _buildValueNotificationForMode:v23 currentDate:?];
  }

  v22 = 0;
LABEL_11:

  return v22;
}

+ (id)_buildNotificationBodyForCurrentPercentageString:(id)string isCurrentValueClamped:(BOOL)clamped previousPercentageString:(id)percentageString isPreviousValueClamped:(BOOL)valueClamped
{
  valueClampedCopy = valueClamped;
  clampedCopy = clamped;
  v22 = *MEMORY[0x277D85DE8];
  percentageStringCopy = percentageString;
  stringCopy = string;
  v11 = [HDHRAFibBurdenNotificationManager _notificationBodyKeyForCurrentPercentageString:stringCopy isCurrentValueClamped:clampedCopy previousPercentageString:percentageStringCopy isPreviousValueClamped:valueClampedCopy];
  v12 = MEMORY[0x277CCACA8];
  if (percentageStringCopy)
  {
    v19 = stringCopy;
    v20 = percentageStringCopy;
    v13 = MEMORY[0x277CBEA60];
    v14 = &v19;
    v15 = 2;
  }

  else
  {
    v21 = stringCopy;
    v13 = MEMORY[0x277CBEA60];
    v14 = &v21;
    v15 = 1;
  }

  v16 = [v13 arrayWithObjects:v14 count:{v15, v19, v20, v21, v22}];
  v17 = [v12 localizedUserNotificationStringForKey:v11 arguments:v16];

  return v17;
}

+ (id)_notificationBodyKeyForCurrentPercentageString:(id)string isCurrentValueClamped:(BOOL)clamped previousPercentageString:(id)percentageString isPreviousValueClamped:(BOOL)valueClamped
{
  valueClampedCopy = valueClamped;
  clampedCopy = clamped;
  stringCopy = string;
  percentageStringCopy = percentageString;
  if (percentageStringCopy)
  {
    if (clampedCopy)
    {
      v11 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_CLAMPED_SECOND_PERCENT";
      v12 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_CLAMPED_SECOND_CLAMPED_SAME";
      v13 = !valueClampedCopy;
    }

    else
    {
      if (valueClampedCopy)
      {
        v14 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_PERCENT_SECOND_CLAMPED";
        goto LABEL_11;
      }

      v15 = [stringCopy isEqualToString:percentageStringCopy];
      v11 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_PERCENT_SECOND_PERCENT";
      v12 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_PERCENT_SECOND_PERCENT_SAME";
      v13 = v15 == 0;
    }
  }

  else
  {
    v11 = @"AFIB_BURDEN_SINGLE_WEEK_NOTIFICATION_BODY_PERCENT";
    v12 = @"AFIB_BURDEN_SINGLE_WEEK_NOTIFICATION_BODY_CLAMPED";
    v13 = !clampedCopy;
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

LABEL_11:

  return v14;
}

+ (id)_buildNotificationForAFibBurdenCurrentPercentage:(id)percentage isCurrentValueClamped:(BOOL)clamped previousPercentage:(id)previousPercentage isPreviousValueClamped:(BOOL)valueClamped startDate:(id)date endDate:(id)endDate currentDate:(id)currentDate expirationDate:(id)self0 uuid:(id)self1 calendar:(id)self2
{
  valueClampedCopy = valueClamped;
  clampedCopy = clamped;
  v50[4] = *MEMORY[0x277D85DE8];
  previousPercentageCopy = previousPercentage;
  v48 = *MEMORY[0x277D13058];
  v17 = MEMORY[0x277CCACA8];
  calendarCopy = calendar;
  uuidCopy = uuid;
  expirationDateCopy = expirationDate;
  currentDateCopy = currentDate;
  endDateCopy = endDate;
  dateCopy = date;
  percentageCopy = percentage;
  v47 = [v17 localizedUserNotificationStringForKey:@"AFIB_BURDEN_NOTIFICATION_TITLE" arguments:MEMORY[0x277CBEBF8]];
  v21 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v21 setNumberStyle:1];
  [v21 setMaximumFractionDigits:0];
  v22 = [v21 stringFromNumber:percentageCopy];

  v46 = previousPercentageCopy;
  if (previousPercentageCopy)
  {
    v23 = [v21 stringFromNumber:previousPercentageCopy];
  }

  else
  {
    v23 = 0;
  }

  dateCopy = [HDHRAFibBurdenNotificationManager _notificationBodyKeyForCurrentPercentageString:v22 isCurrentValueClamped:clampedCopy previousPercentageString:v23 isPreviousValueClamped:valueClampedCopy, dateCopy];
  v25 = [HDHRAFibBurdenNotificationManager _buildNotificationBodyForCurrentPercentageString:v22 isCurrentValueClamped:clampedCopy previousPercentageString:v23 isPreviousValueClamped:valueClampedCopy];
  v26 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v26 setTitle:v47];
  v43 = v25;
  [v26 setBody:v25];
  [v26 setCategoryIdentifier:v48];
  v27 = dateCopy;
  [v26 setThreadIdentifier:v48];
  v41 = [MEMORY[0x277CE1F70] soundWithAlertType:25];
  [v26 setSound:?];
  [v26 setDate:currentDateCopy];

  [v26 setExpirationDate:expirationDateCopy];
  v28 = [HDHRAFibBurdenNotificationManager _generateDateRangeStringForAnalysisSampleWithStartDate:v39 endDate:endDateCopy calendar:calendarCopy];

  v29 = MEMORY[0x277CBEB38];
  v49[0] = @"currentPercentage";
  v49[1] = @"dateRange";
  v50[0] = v22;
  v50[1] = v28;
  v50[2] = dateCopy;
  v49[2] = @"watchBodyKey";
  v49[3] = @"firstValueClamped";
  v30 = [MEMORY[0x277CCABB0] numberWithBool:clampedCopy];
  v50[3] = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];
  v32 = [v29 dictionaryWithDictionary:v31];

  if (v23)
  {
    [v32 setObject:v23 forKeyedSubscript:@"previousPercentage"];
  }

  v33 = [MEMORY[0x277CCD0C0] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
  v34 = _HKCreateURLForSampleType();
  absoluteString = [v34 absoluteString];
  [v32 setObject:absoluteString forKeyedSubscript:*MEMORY[0x277CCE4E0]];

  [v32 setObject:&unk_283CD27E8 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  [v26 setUserInfo:v32];
  v36 = [MEMORY[0x277CE1FC0] requestWithIdentifier:uuidCopy content:v26 trigger:0];

  return v36;
}

+ (id)_buildNotificationForLackOfAFibBurdenWithCurrentDate:(id)date expirationDate:(id)expirationDate shouldForwardToWatch:(BOOL)watch uuid:(id)uuid
{
  watchCopy = watch;
  v9 = *MEMORY[0x277D13050];
  v10 = MEMORY[0x277CCACA8];
  uuidCopy = uuid;
  expirationDateCopy = expirationDate;
  dateCopy = date;
  v14 = MEMORY[0x277CBEBF8];
  v15 = [v10 localizedUserNotificationStringForKey:@"AFIB_BURDEN_LACK_OF_SAMPLE_NOTIFICATION_TITLE" arguments:MEMORY[0x277CBEBF8]];
  v16 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"AFIB_BURDEN_LACK_OF_SAMPLE_NOTIFICATION_BODY" arguments:v14];
  v17 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v17 setTitle:v15];
  [v17 setBody:v16];
  [v17 setCategoryIdentifier:v9];
  [v17 setThreadIdentifier:v9];
  v18 = [MEMORY[0x277CE1F70] soundWithAlertType:25];
  [v17 setSound:v18];
  [v17 setDate:dateCopy];

  [v17 setExpirationDate:expirationDateCopy];
  v19 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:MEMORY[0x277CBEC10]];
  v20 = [MEMORY[0x277CCD0C0] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
  v21 = _HKCreateURLForSampleType();
  absoluteString = [v21 absoluteString];
  [v19 setObject:absoluteString forKeyedSubscript:*MEMORY[0x277CCE4E0]];

  [v19 setObject:&unk_283CD27E8 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  [v19 setObject:@"AFIB_BURDEN_LACK_OF_SAMPLE_NOTIFICATION_BODY" forKeyedSubscript:@"watchBodyKey"];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:!watchCopy];
  [v19 setObject:v23 forKeyedSubscript:*MEMORY[0x277CCE4D8]];

  [v17 setUserInfo:v19];
  v24 = [MEMORY[0x277CE1FC0] requestWithIdentifier:uuidCopy content:v17 trigger:0];

  return v24;
}

+ (id)_generateDateRangeStringForAnalysisSampleWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar isUnitTesting:(BOOL)testing
{
  testingCopy = testing;
  calendarCopy = calendar;
  v10 = MEMORY[0x277CCA978];
  endDateCopy = endDate;
  dateCopy = date;
  v13 = objc_alloc_init(v10);
  if (testingCopy)
  {
    locale = [calendarCopy locale];
    [v13 setLocale:locale];

    timeZone = [calendarCopy timeZone];
    [v13 setTimeZone:timeZone];
  }

  [v13 setDateStyle:2];
  [v13 setTimeStyle:0];
  v16 = [endDateCopy dateByAddingTimeInterval:-1.0];

  v17 = [v13 stringFromDate:dateCopy toDate:v16];

  return v17;
}

+ (id)_julianDayFromDate:(id)date calendar:(id)calendar
{
  calendarCopy = calendar;
  dateCopy = date;
  v7 = [dateCopy hk_dayIndexWithCalendar:calendarCopy];
  v8 = [calendarCopy components:32 fromDate:dateCopy];

  hour = [v8 hour];
  v10 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:v7 atHour:hour calendar:calendarCopy];

  return v10;
}

void __73__HDHRAFibBurdenNotificationManager__sendNotificationRequest_completion___block_invoke_330_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 138412546;
  v7 = objc_opt_class();
  v8 = 2112;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%@] error requesting notification: %@)", &v6, 0x16u);
}

- (void)_buildValueNotificationForMode:(uint64_t)a1 currentDate:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_229486000, a2, OS_LOG_TYPE_FAULT, "[%{public}@] Current value indicated to be present but not all components of current value present.", &v2, 0xCu);
}

@end