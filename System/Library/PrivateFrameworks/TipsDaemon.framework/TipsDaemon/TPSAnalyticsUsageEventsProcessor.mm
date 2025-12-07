@interface TPSAnalyticsUsageEventsProcessor
+ (BOOL)_tipStatusValidForLiftProcessing:(id)processing contextualInfo:(id)info firstShownDate:(id)date;
+ (BOOL)_validateContextualInfo:(id)info forDisplayType:(unint64_t)type;
+ (id)_firstShownDateForTipStatus:(id)status;
+ (id)_notifiedDateForTipStatus:(id)status;
- (BOOL)_shouldCalculateLift:(id)lift;
- (TPSAnalyticsUsageEventsProcessor)init;
- (void)_calculateLift:(id)lift completion:(id)completion;
- (void)_countsForEvent:(id)event interval:(id)interval completion:(id)completion;
- (void)_saveHistoricalUsage:(id)usage completion:(id)completion;
- (void)_savePreHintRangeOutOfBounds:(BOOL)bounds forIdentifier:(id)identifier;
- (void)processAnalytics:(id)analytics;
- (void)resetAnalytics;
@end

@implementation TPSAnalyticsUsageEventsProcessor

- (TPSAnalyticsUsageEventsProcessor)init
{
  v6.receiver = self;
  v6.super_class = TPSAnalyticsUsageEventsProcessor;
  v2 = [(TPSAnalyticsProcessor *)&v6 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    currentDate = v2->_currentDate;
    v2->_currentDate = date;
  }

  return v2;
}

- (void)processAnalytics:(id)analytics
{
  v72 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  dateLastRun = [(TPSAnalyticsProcessor *)self dateLastRun];
  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  dataSource = [(TPSAnalyticsProcessor *)self dataSource];
  obj = [dataSource allTipStatus];

  v46 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v46)
  {
    v45 = *v65;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v65 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v64 + 1) + 8 * i);
        identifier = [v6 identifier];
        dataSource2 = [(TPSAnalyticsProcessor *)self dataSource];
        v9 = [dataSource2 contextualInfoForIdentifier:identifier];

        v10 = [objc_opt_class() _firstShownDateForTipStatus:v6];
        v11 = [objc_opt_class() _notifiedDateForTipStatus:v6];
        if ([objc_opt_class() _tipStatusValidForLiftProcessing:v6 contextualInfo:v9 firstShownDate:v10])
        {
          usageEvents = [v9 usageEvents];
          firstObject = [usageEvents firstObject];

          desiredOutcomePerformedDates = [v6 desiredOutcomePerformedDates];
          v15 = [desiredOutcomePerformedDates count];

          v16 = objc_alloc_init(TPSAnalyticsUsageInfo);
          -[TPSAnalyticsUsageInfo setOverrideHoldout:](v16, "setOverrideHoldout:", [v6 overrideHoldout]);
          [(TPSAnalyticsUsageInfo *)v16 setFirstShownDate:v10];
          [(TPSAnalyticsUsageInfo *)v16 setNotifiedDate:v11];
          [(TPSAnalyticsUsageInfo *)v16 setUsageEvent:firstObject];
          [(TPSAnalyticsUsageInfo *)v16 setIdentifier:identifier];
          [(TPSAnalyticsUsageInfo *)v16 setDesiredOutcomeCount:v15];
          [v43 addObject:v16];
        }
      }

      v46 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v46);
  }

  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = [v43 count];
  analytics = [MEMORY[0x277D71778] analytics];
  if (os_log_type_enabled(analytics, OS_LOG_TYPE_INFO))
  {
    v18 = v61[3];
    *buf = 134217984;
    v70 = v18;
    _os_log_impl(&dword_232D6F000, analytics, OS_LOG_TYPE_INFO, "Valid tips for usage event processing: %lu", buf, 0xCu);
  }

  if (v61[3])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__TPSAnalyticsUsageEventsProcessor_processAnalytics___block_invoke;
    aBlock[3] = &unk_2789B0C30;
    v59 = &v60;
    v58 = analyticsCopy;
    v19 = _Block_copy(aBlock);
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v21 = [currentCalendar dateByAddingUnit:16 value:-5 toDate:self->_currentDate options:0];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v22 = v43;
    v23 = [v22 countByEnumeratingWithState:&v53 objects:v68 count:16];
    if (v23)
    {
      v24 = *v54;
      do
      {
        v25 = 0;
        do
        {
          if (*v54 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v53 + 1) + 8 * v25);
          if (dateLastRun && ([*(*(&v53 + 1) + 8 * v25) firstShownDate], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "compare:", dateLastRun) == 1, v27, !v28))
          {
            if ([(TPSAnalyticsUsageEventsProcessor *)self _shouldCalculateLift:v26])
            {
              analytics2 = [MEMORY[0x277D71778] analytics];
              if (os_log_type_enabled(analytics2, OS_LOG_TYPE_INFO))
              {
                identifier2 = [v26 identifier];
                *buf = 138412290;
                v70 = identifier2;
                _os_log_impl(&dword_232D6F000, analytics2, OS_LOG_TYPE_INFO, "Lift threshold hit, calculating lift for: %@", buf, 0xCu);
              }

              dataSource3 = [(TPSAnalyticsProcessor *)self dataSource];
              experiment = [dataSource3 experiment];

              v48[0] = MEMORY[0x277D85DD0];
              v48[1] = 3221225472;
              v48[2] = __53__TPSAnalyticsUsageEventsProcessor_processAnalytics___block_invoke_6;
              v48[3] = &unk_2789B0C58;
              v48[4] = self;
              v48[5] = v26;
              v49 = dateLastRun;
              v50 = v21;
              v38 = experiment;
              v51 = v38;
              v52 = v19;
              [(TPSAnalyticsUsageEventsProcessor *)self _calculateLift:v26 completion:v48];
            }

            else
            {
              analytics3 = [MEMORY[0x277D71778] analytics];
              if (os_log_type_enabled(analytics3, OS_LOG_TYPE_INFO))
              {
                identifier3 = [v26 identifier];
                *buf = 138412290;
                v70 = identifier3;
                _os_log_impl(&dword_232D6F000, analytics3, OS_LOG_TYPE_INFO, "Lift threshold not yet hit for: %@", buf, 0xCu);
              }

              v19[2](v19);
            }
          }

          else
          {
            analytics4 = [MEMORY[0x277D71778] analytics];
            if (os_log_type_enabled(analytics4, OS_LOG_TYPE_INFO))
            {
              identifier4 = [v26 identifier];
              *buf = 138412290;
              v70 = identifier4;
              _os_log_impl(&dword_232D6F000, analytics4, OS_LOG_TYPE_INFO, "Tip shown since last run, saving historical usage: %@", buf, 0xCu);
            }

            firstShownDate = [v26 firstShownDate];
            v32 = [firstShownDate compare:v21] == -1;

            if (v32)
            {
              identifier5 = [v26 identifier];
              [(TPSAnalyticsUsageEventsProcessor *)self _savePreHintRangeOutOfBounds:1 forIdentifier:identifier5];
            }

            [(TPSAnalyticsUsageEventsProcessor *)self _saveHistoricalUsage:v26 completion:v19];
          }

          ++v25;
        }

        while (v23 != v25);
        v41 = [v22 countByEnumeratingWithState:&v53 objects:v68 count:16];
        v23 = v41;
      }

      while (v41);
    }
  }

  else
  {
    analyticsCopy[2]();
  }

  _Block_object_dispose(&v60, 8);
}

void __53__TPSAnalyticsUsageEventsProcessor_processAnalytics___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__TPSAnalyticsUsageEventsProcessor_processAnalytics___block_invoke_2;
  block[3] = &unk_2789B0C30;
  v2 = *(a1 + 32);
  v1 = v2;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __53__TPSAnalyticsUsageEventsProcessor_processAnalytics___block_invoke_2(uint64_t result)
{
  if (!--*(*(*(result + 40) + 8) + 24))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __53__TPSAnalyticsUsageEventsProcessor_processAnalytics___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [*(a1 + 40) identifier];
  v9 = [v7 _preHintRangeOutOfBoundsForIdentifier:v8];
  v10 = [v6 loadValueForKey:v9 class:objc_opt_class()];
  v11 = [v10 BOOLValue];

  v12 = [*(a1 + 48) compare:*(a1 + 56)] == -1;
  v13 = [TPSAnalyticsEventProcessedUsageEvents alloc];
  v14 = *(a1 + 40);
  v15 = *(a1 + 64);
  v16 = [MEMORY[0x277CBEAA8] date];
  v22 = [(TPSAnalyticsEventProcessedUsageEvents *)v13 initWithUsageInfo:v14 experiment:v15 preHintUsageCount:a2 postHintUsageCount:a3 preHintRangeOutOfBounds:v11 postHintRangeOutOfBounds:v12 date:v16];

  v17 = [MEMORY[0x277D71620] sharedInstance];
  [v17 logAnalyticsEvent:v22];

  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [*(a1 + 40) identifier];
  v21 = [v19 _usageEventsProcessedKeyForIdentifier:v20];
  [v18 saveValue:MEMORY[0x277CBEC38] forKey:v21];

  (*(*(a1 + 72) + 16))();
}

- (void)resetAnalytics
{
  v7.receiver = self;
  v7.super_class = TPSAnalyticsUsageEventsProcessor;
  [(TPSAnalyticsProcessor *)&v7 resetAnalytics];
  [(TPSAnalyticsProcessor *)self setDateLastRun:0];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];

  allKeys = [dictionaryRepresentation allKeys];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__TPSAnalyticsUsageEventsProcessor_resetAnalytics__block_invoke;
  v6[3] = &unk_2789B0C80;
  v6[4] = self;
  [allKeys enumerateObjectsUsingBlock:v6];
}

void __50__TPSAnalyticsUsageEventsProcessor_resetAnalytics__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasPrefix:@"TPSAnalyticsUsageEvents"])
  {
    [objc_opt_class() saveValue:0 forKey:v2];
  }
}

- (BOOL)_shouldCalculateLift:(id)lift
{
  liftCopy = lift;
  crunchingIntervalInDays = [MEMORY[0x277D71740] crunchingIntervalInDays];
  if (crunchingIntervalInDays)
  {
    if (crunchingIntervalInDays == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 20;
    }

    else
    {
      v6 = crunchingIntervalInDays;
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [currentCalendar dateByAddingUnit:16 value:-v6 toDate:self->_currentDate options:0];

    firstShownDate = [liftCopy firstShownDate];
    v10 = [firstShownDate compare:v8] == -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_calculateLift:(id)lift completion:(id)completion
{
  liftCopy = lift;
  completionCopy = completion;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  firstShownDate = [liftCopy firstShownDate];
  v10 = [currentCalendar dateByAddingUnit:16 value:19 toDate:firstShownDate options:0];

  v11 = objc_alloc(MEMORY[0x277CCA970]);
  firstShownDate2 = [liftCopy firstShownDate];
  v13 = [v11 initWithStartDate:firstShownDate2 endDate:v10];

  usageEvent = [liftCopy usageEvent];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__TPSAnalyticsUsageEventsProcessor__calculateLift_completion___block_invoke;
  v17[3] = &unk_2789B0CA8;
  v17[4] = self;
  v18 = liftCopy;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = liftCopy;
  [(TPSAnalyticsUsageEventsProcessor *)self _countsForEvent:usageEvent interval:v13 completion:v17];
}

uint64_t __62__TPSAnalyticsUsageEventsProcessor__calculateLift_completion___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = [*(a1 + 40) identifier];
  v5 = [v3 _preHintUsageKeyForIdentifier:v4];
  v6 = [v2 loadValueForKey:v5 class:objc_opt_class()];
  [v6 integerValue];

  v7 = *(*(a1 + 48) + 16);

  return v7();
}

- (void)_savePreHintRangeOutOfBounds:(BOOL)bounds forIdentifier:(id)identifier
{
  boundsCopy = bounds;
  identifierCopy = identifier;
  v8 = [objc_opt_class() _preHintRangeOutOfBoundsForIdentifier:identifierCopy];

  v6 = objc_opt_class();
  v7 = [MEMORY[0x277CCABB0] numberWithBool:boundsCopy];
  [v6 saveValue:v7 forKey:v8];
}

- (void)_saveHistoricalUsage:(id)usage completion:(id)completion
{
  usageCopy = usage;
  completionCopy = completion;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  firstShownDate = [usageCopy firstShownDate];
  v10 = [currentCalendar dateByAddingUnit:16 value:-20 toDate:firstShownDate options:0];

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  firstShownDate2 = [usageCopy firstShownDate];
  v13 = [currentCalendar2 dateByAddingUnit:16 value:-1 toDate:firstShownDate2 options:0];

  v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:v13];
  usageEvent = [usageCopy usageEvent];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__TPSAnalyticsUsageEventsProcessor__saveHistoricalUsage_completion___block_invoke;
  v18[3] = &unk_2789B0CA8;
  v18[4] = self;
  v19 = usageCopy;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = usageCopy;
  [(TPSAnalyticsUsageEventsProcessor *)self _countsForEvent:usageEvent interval:v14 completion:v18];
}

void __68__TPSAnalyticsUsageEventsProcessor__saveHistoricalUsage_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = [*(a1 + 40) identifier];
  v6 = [v4 _preHintUsageKeyForIdentifier:v5];

  v7 = [MEMORY[0x277D71778] analytics];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_232D6F000, v7, OS_LOG_TYPE_INFO, "Saving value: %@ for key: %@", &v11, 0x16u);
  }

  v9 = objc_opt_class();
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v9 saveValue:v10 forKey:v6];

  (*(*(a1 + 48) + 16))();
}

- (void)_countsForEvent:(id)event interval:(id)interval completion:(id)completion
{
  v7 = MEMORY[0x277D716C8];
  completionCopy = completion;
  completionCopy[2](completionCopy, [v7 countsForEvent:event interval:interval]);
}

+ (id)_firstShownDateForTipStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy displayType] && objc_msgSend(statusCopy, "displayType") != 1)
  {
    hintWouldHaveBeenDisplayedDate = [statusCopy hintWouldHaveBeenDisplayedDate];
    v6 = hintWouldHaveBeenDisplayedDate;
    if (hintWouldHaveBeenDisplayedDate)
    {
      firstObject = hintWouldHaveBeenDisplayedDate;
    }

    else
    {
      hintDisplayedDates = [statusCopy hintDisplayedDates];
      firstObject = [hintDisplayedDates firstObject];
    }
  }

  else
  {
    firstObject = [statusCopy contentViewedDate];
  }

  return firstObject;
}

+ (id)_notifiedDateForTipStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy displayType] && objc_msgSend(statusCopy, "displayType") != 1)
  {
    firstObject = 0;
  }

  else
  {
    hintWouldHaveBeenDisplayedDate = [statusCopy hintWouldHaveBeenDisplayedDate];
    v5 = hintWouldHaveBeenDisplayedDate;
    if (hintWouldHaveBeenDisplayedDate)
    {
      firstObject = hintWouldHaveBeenDisplayedDate;
    }

    else
    {
      hintDisplayedDates = [statusCopy hintDisplayedDates];
      firstObject = [hintDisplayedDates firstObject];
    }
  }

  return firstObject;
}

+ (BOOL)_tipStatusValidForLiftProcessing:(id)processing contextualInfo:(id)info firstShownDate:(id)date
{
  infoCopy = info;
  processingCopy = processing;
  v10 = objc_opt_class();
  identifier = [processingCopy identifier];
  v12 = [v10 _usageEventsProcessedKeyForIdentifier:identifier];
  v13 = [self loadValueForKey:v12 class:objc_opt_class()];
  bOOLValue = [v13 BOOLValue];

  v15 = objc_opt_class();
  displayType = [processingCopy displayType];

  v17 = [v15 _validateContextualInfo:infoCopy forDisplayType:displayType];
  if (date)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18 & (bOOLValue ^ 1);
}

+ (BOOL)_validateContextualInfo:(id)info forDisplayType:(unint64_t)type
{
  infoCopy = info;
  v6 = infoCopy;
  if (type)
  {
    v7 = infoCopy != 0;
  }

  else
  {
    usageEvents = [infoCopy usageEvents];
    if ([usageEvents count])
    {
      v7 = 1;
    }

    else
    {
      desiredOutcomeCondition = [v6 desiredOutcomeCondition];
      rules = [desiredOutcomeCondition rules];
      v7 = [rules count] != 0;
    }
  }

  return v7;
}

@end