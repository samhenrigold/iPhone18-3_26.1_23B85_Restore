@interface ATXDigestOnboardingSuggestionClient
+ (id)sharedInstance;
+ (void)changeNumPreviousDaysToCheckForNotificationProblemToNumDays:(unint64_t)days;
+ (void)removeRandomizedSelectionForDigestOnboardingSuggestion;
+ (void)resetDigestOnboardingSuggestionsAtHour:(id)hour minute:(id)minute;
+ (void)resetRandomizedSelectionForDigestOnboardingSuggestion;
- (ATXDigestOnboardingSuggestionClient)init;
- (BOOL)hasNotificationProblemForPreviousNumDays:(int64_t)days;
- (id)notificationStreamPublisherForStartDate:(id)date;
- (void)_handleLocaleChange;
- (void)_invalidateTriggerOnMainQueue;
- (void)_registerForKVOChangesOnMainQueue;
- (void)_registerForLocaleChangeOnMainQueue;
- (void)_registerForOnboardingSuggestionOnMainQueueWithThresholdForShowingDigestOnboardingSuggestionToSeedUsers:(double)users thresholdForShowingDigestOnboardingSuggestion:(double)suggestion;
- (void)_registerForTriggerOnMainQueueAtHour:(int64_t)hour minute:(int64_t)minute;
- (void)_setProbabilityOfShowingDigestOnboardingToUser;
- (void)_suggestDigestOnboardingIfApplicableOnMainQueue;
- (void)_suggestDigestOnboardingIfApplicableOnMainQueueGivenNumberOfActiveNotifications:(unint64_t)notifications numberOfUniqueBundleIds:(unint64_t)ids minActive:(unint64_t)active minUnique:(unint64_t)unique;
- (void)_unregisterForKVOChangesOnMainQueue;
- (void)_unregisterForLocaleChangeOnMainQueue;
- (void)averageNumberOfNotifications:(id)notifications;
- (void)clientDidRejectOnboardingSuggestion;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerForOnboardingSuggestions;
- (void)registerObserver:(id)observer;
- (void)unregisterForOnboardingSuggestions;
@end

@implementation ATXDigestOnboardingSuggestionClient

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_0 != -1)
  {
    +[ATXDigestOnboardingSuggestionClient sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_0;

  return v3;
}

void __53__ATXDigestOnboardingSuggestionClient_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_0;
  sharedInstance__pasExprOnceResult_0 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXDigestOnboardingSuggestionClient)init
{
  v14.receiver = self;
  v14.super_class = ATXDigestOnboardingSuggestionClient;
  v2 = [(ATXDigestOnboardingSuggestionClient *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v4 = __atxlog_handle_notification_management(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(ATXDigestOnboardingSuggestionClient *)v4 init];
    }

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = weakObjectsHashTable;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("ATXDigestOnboardingSuggestionClient.queue", v7);
    queue = v3->_queue;
    v3->_queue = v8;

    v10 = objc_alloc(MEMORY[0x1E695E000]);
    v11 = [v10 initWithSuiteName:*MEMORY[0x1E69C5AC8]];
    userDefaults = v3->_userDefaults;
    v3->_userDefaults = v11;

    [(ATXDigestOnboardingSuggestionClient *)v3 _setProbabilityOfShowingDigestOnboardingToUser];
  }

  return v3;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__ATXDigestOnboardingSuggestionClient_registerObserver___block_invoke;
  v6[3] = &unk_1E80C0958;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)registerForOnboardingSuggestions
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ATXDigestOnboardingSuggestionClient_registerForOnboardingSuggestions__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_async(queue, block);
}

void __71__ATXDigestOnboardingSuggestionClient_registerForOnboardingSuggestions__block_invoke(uint64_t a1)
{
  v2 = +[ATXNotificationManagementMAConstants sharedInstance];
  v3 = [v2 digestOnboardingSuggestionHour];
  v4 = [v2 digestOnboardingSuggestionMinute];
  v5 = [v2 numPreviousDaysToCheckForNotificationProblemForDigestOnboardingSuggestion];
  [v2 thresholdForShowingDigestOnboardingSuggestionToSeedUsers];
  v7 = v6;
  [v2 thresholdForShowingDigestOnboardingSuggestion];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__ATXDigestOnboardingSuggestionClient_registerForOnboardingSuggestions__block_invoke_2;
  v9[3] = &unk_1E80C0C68;
  v9[4] = *(a1 + 32);
  v9[5] = v3;
  v9[6] = v4;
  v9[7] = v5;
  v9[8] = v7;
  v9[9] = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __71__ATXDigestOnboardingSuggestionClient_registerForOnboardingSuggestions__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setInteger:*(a1 + 40) forKey:@"digestOnboardingSuggestionHour"];
  [*(*(a1 + 32) + 16) setInteger:*(a1 + 48) forKey:@"digestOnboardingSuggestionMinute"];
  [*(*(a1 + 32) + 16) setInteger:*(a1 + 56) forKey:@"numPreviousDaysToCheckForNotificationProblem"];
  [*(a1 + 32) _registerForKVOChangesOnMainQueue];
  [*(a1 + 32) _registerForLocaleChangeOnMainQueue];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);

  return [v2 _registerForOnboardingSuggestionOnMainQueueWithThresholdForShowingDigestOnboardingSuggestionToSeedUsers:v3 thresholdForShowingDigestOnboardingSuggestion:v4];
}

- (void)_registerForOnboardingSuggestionOnMainQueueWithThresholdForShowingDigestOnboardingSuggestionToSeedUsers:(double)users thresholdForShowingDigestOnboardingSuggestion:(double)suggestion
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"probabilityOfShowingDigestOnboardingSuggestion"];
  [v7 doubleValue];
  v9 = v8;

  v11 = __atxlog_handle_notification_management(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    suggestionCopy = users;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "Digest Onboarding Suggestion Threshold for seed user = %f", &v17, 0xCu);
  }

  v13 = __atxlog_handle_notification_management(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    suggestionCopy = suggestion;
    _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "Digest Onboarding Suggestion Threshold for GM = %f", &v17, 0xCu);
  }

  isBetaBuild = [MEMORY[0x1E69C5CF8] isBetaBuild];
  if (isBetaBuild)
  {
    if (v9 >= users)
    {
      v15 = __atxlog_handle_notification_management(isBetaBuild);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134217984;
        suggestionCopy = v9;
        v16 = "Not registering for digest onboarding suggestion for seed user since the random number %f assigned to device is not less than threshold";
LABEL_13:
        _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, v16, &v17, 0xCu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

LABEL_10:
    [(ATXDigestOnboardingSuggestionClient *)self _registerForTriggerOnMainQueueAtHour:[(NSUserDefaults *)self->_userDefaults integerForKey:@"digestOnboardingSuggestionHour"] minute:[(NSUserDefaults *)self->_userDefaults integerForKey:@"digestOnboardingSuggestionMinute"]];
    return;
  }

  if (v9 < suggestion)
  {
    goto LABEL_10;
  }

  v15 = __atxlog_handle_notification_management(isBetaBuild);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    suggestionCopy = v9;
    v16 = "Not registering for digest onboarding suggestion since the random number %f assigned to device is not less than threshold";
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_registerForTriggerOnMainQueueAtHour:(int64_t)hour minute:(int64_t)minute
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_new();
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [currentCalendar components:60 fromDate:v7];
  if ([v9 hour] > hour)
  {
    v10 = [currentCalendar dateByAddingUnit:16 value:1 toDate:v7 options:2];
    v11 = [currentCalendar components:28 fromDate:v10];

    v9 = v11;
  }

  [v9 setHour:hour];
  [v9 setMinute:minute];
  v12 = [currentCalendar dateFromComponents:v9];
  v13 = __atxlog_handle_notification_management(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v12;
    _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXDigestOnboardingSuggestionClient: scheduling trigger for %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v14 = objc_alloc(MEMORY[0x1E695DFF0]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__ATXDigestOnboardingSuggestionClient__registerForTriggerOnMainQueueAtHour_minute___block_invoke;
  v18[3] = &unk_1E80C0CB8;
  objc_copyWeak(&v19, buf);
  v15 = [v14 initWithFireDate:v12 interval:1 repeats:v18 block:86400.0];
  trigger = self->_trigger;
  self->_trigger = v15;

  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  [currentRunLoop addTimer:self->_trigger forMode:*MEMORY[0x1E695D918]];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __83__ATXDigestOnboardingSuggestionClient__registerForTriggerOnMainQueueAtHour_minute___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _suggestDigestOnboardingIfApplicableOnMainQueue];
}

- (void)_invalidateTriggerOnMainQueue
{
  trigger = self->_trigger;
  if (trigger && [(NSTimer *)trigger isValid])
  {
    v4 = self->_trigger;

    [(NSTimer *)v4 invalidate];
  }
}

- (void)unregisterForOnboardingSuggestions
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__ATXDigestOnboardingSuggestionClient_unregisterForOnboardingSuggestions__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __73__ATXDigestOnboardingSuggestionClient_unregisterForOnboardingSuggestions__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _unregisterForLocaleChangeOnMainQueue];
  [*(a1 + 32) _unregisterForKVOChangesOnMainQueue];
  v2 = *(a1 + 32);

  return [v2 _invalidateTriggerOnMainQueue];
}

- (void)_suggestDigestOnboardingIfApplicableOnMainQueue
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "%@: No observers registered", &v5, 0xCu);
}

void __86__ATXDigestOnboardingSuggestionClient__suggestDigestOnboardingIfApplicableOnMainQueue__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[ATXNotificationManagementMAConstants sharedInstance];
  v7 = [v6 digestOnboardingSuggestionMinimumActiveNotifications];
  v8 = [v6 digestOnboardingSuggestionMinimumUniqueBundleIds];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__ATXDigestOnboardingSuggestionClient__suggestDigestOnboardingIfApplicableOnMainQueue__block_invoke_2;
  v10[3] = &unk_1E80C0CE0;
  v9 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v12 = a2;
  v13 = a3;
  v14 = v7;
  v15 = v8;
  v11 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

- (void)_suggestDigestOnboardingIfApplicableOnMainQueueGivenNumberOfActiveNotifications:(unint64_t)notifications numberOfUniqueBundleIds:(unint64_t)ids minActive:(unint64_t)active minUnique:(unint64_t)unique
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = __atxlog_handle_notification_management(self);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138413314;
    v41 = v13;
    v42 = 2048;
    notificationsCopy = notifications;
    v44 = 2048;
    activeCopy = active;
    v46 = 2048;
    idsCopy = ids;
    v48 = 2048;
    uniqueCopy = unique;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "%@: Active notifications: %ld (min: %ld); unique apps: %ld (min: %ld)", buf, 0x34u);
  }

  v15 = __atxlog_handle_notification_management(v14);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (notifications < active || ids < unique)
  {
    if (v16)
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412290;
      v41 = v24;
      _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "%@: We do not have the minimum active notifications and unique apps", buf, 0xCu);
    }
  }

  else
  {
    if (v16)
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412290;
      v41 = v18;
      _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "%@: We have the minimum active notifications and unique apps", buf, 0xCu);
    }

    v15 = objc_opt_new();
    if ([v15 digestSetupComplete])
    {
      [(NSUserDefaults *)self->_userDefaults setBool:1 forKey:@"hasSetUpDigestBefore"];
    }

    v19 = [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"hasSetUpDigestBefore"];
    if (v19 & 1) != 0 || (v19 = [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"digestOnboardingSuggestionShown"], (v19))
    {
      v20 = __atxlog_handle_notification_management(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138412290;
        v41 = v22;
        _os_log_impl(&dword_1BF549000, v20, OS_LOG_TYPE_DEFAULT, "%@: Digest Onboarding has already been suggested", buf, 0xCu);
      }
    }

    else
    {
      v25 = __atxlog_handle_notification_management(v19);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138412290;
        v41 = v27;
        _os_log_impl(&dword_1BF549000, v25, OS_LOG_TYPE_DEFAULT, "%@: Suggesting Digest Onboarding to client", buf, 0xCu);
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v28 = self->_observers;
      v29 = [(NSHashTable *)v28 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v36;
        do
        {
          v32 = 0;
          do
          {
            if (*v36 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v35 + 1) + 8 * v32);
            v34 = objc_opt_new();
            [v33 digestOnboardingSuggestionClient:self didSuggestOnboarding:{v34, v35}];

            ++v32;
          }

          while (v30 != v32);
          v30 = [(NSHashTable *)v28 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v30);
      }

      [(NSUserDefaults *)self->_userDefaults setBool:1 forKey:@"digestOnboardingSuggestionShown"];
      [(ATXDigestOnboardingSuggestionClient *)self unregisterForOnboardingSuggestions];
    }
  }
}

- (void)averageNumberOfNotifications:(id)notifications
{
  notificationsCopy = notifications;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__ATXDigestOnboardingSuggestionClient_averageNumberOfNotifications___block_invoke;
  v7[3] = &unk_1E80C0D78;
  v7[4] = self;
  v8 = notificationsCopy;
  v6 = notificationsCopy;
  dispatch_async(queue, v7);
}

void __68__ATXDigestOnboardingSuggestionClient_averageNumberOfNotifications___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = objc_opt_new();
  v4 = [v2 dateByAddingUnit:16 value:-7 toDate:v3 options:2];

  v5 = [*(a1 + 32) notificationStreamPublisherForStartDate:v4];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__ATXDigestOnboardingSuggestionClient_averageNumberOfNotifications___block_invoke_3;
  v13[3] = &unk_1E80C0D50;
  v6 = v4;
  v14 = v6;
  v15 = &v16;
  v7 = [v5 sinkWithCompletion:&__block_literal_global_27 receiveInput:v13];
  v8 = v17[3];
  v9 = __atxlog_handle_notification_management(v7);
  v10 = v8 / 7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v10;
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "Average Number of notifications being sent to client = %lu", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v10, v11, v12);
  _Block_object_dispose(&v16, 8);
}

void __68__ATXDigestOnboardingSuggestionClient_averageNumberOfNotifications___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = [a2 eventBody];
  v3 = [v10 bundleID];
  if (v3)
  {
    v4 = v3;
    v5 = [v10 absoluteTimestamp];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;
    [*(a1 + 32) timeIntervalSinceReferenceDate];
    v9 = v8;

    if (v7 >= v9)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }
}

- (BOOL)hasNotificationProblemForPreviousNumDays:(int64_t)days
{
  v50 = *MEMORY[0x1E69E9840];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = objc_opt_new();
  v32 = [currentCalendar dateByAddingUnit:16 value:-days toDate:v6 options:0];

  v31 = objc_opt_new();
  v7 = __atxlog_handle_notification_management(v31);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ATXDigestOnboardingSuggestionClient hasNotificationProblemForPreviousNumDays:]";
    *&buf[12] = 2112;
    *&buf[14] = v32;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: Checking for notification problem from start date: %@", buf, 0x16u);
  }

  v8 = objc_opt_new();
  if (days >= 1)
  {
    daysCopy = days;
    do
    {
      v10 = objc_opt_new();
      [v8 addObject:v10];

      --daysCopy;
    }

    while (daysCopy);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v49 = 0;
  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v12 = [(ATXDigestOnboardingSuggestionClient *)self notificationStreamPublisherForStartDate:v11];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __80__ATXDigestOnboardingSuggestionClient_hasNotificationProblemForPreviousNumDays___block_invoke_2;
  v39[3] = &unk_1E80C0DA0;
  v30 = currentCalendar;
  v40 = v30;
  v41 = buf;
  v13 = [v12 sinkWithCompletion:&__block_literal_global_32 shouldContinue:v39];

  if (*(*&buf[8] + 24))
  {
    v15 = [(ATXDigestOnboardingSuggestionClient *)self notificationStreamPublisherForStartDate:v32];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __80__ATXDigestOnboardingSuggestionClient_hasNotificationProblemForPreviousNumDays___block_invoke_2_38;
    v33[3] = &unk_1E80C0DC8;
    v34 = v32;
    v35 = v30;
    v36 = v31;
    daysCopy2 = days;
    v16 = v8;
    v37 = v16;
    v17 = [v15 sinkWithCompletion:&__block_literal_global_37 receiveInput:v33];

    v18 = 0;
    do
    {
      v19 = [v16 count];
      v20 = v18 >= v19;
      if (v18 >= v19)
      {
        break;
      }

      v21 = [v16 objectAtIndexedSubscript:v18];
      v22 = __atxlog_handle_notification_management(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = [v16 objectAtIndexedSubscript:v18];
        v26 = [v25 count];
        *v42 = 138412802;
        v43 = v24;
        v44 = 2048;
        v45 = v18 + 1;
        v46 = 2048;
        v47 = v26;
        _os_log_impl(&dword_1BF549000, v22, OS_LOG_TYPE_DEFAULT, "%@: Number of apps receving notifications on day %lu: %lu", v42, 0x20u);
      }

      v27 = [v21 count] > 5;
      ++v18;
    }

    while (v27);

    v28 = v34;
  }

  else
  {
    v28 = __atxlog_handle_notification_management(v14);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 136315138;
      v43 = "[ATXDigestOnboardingSuggestionClient hasNotificationProblemForPreviousNumDays:]";
      _os_log_impl(&dword_1BF549000, v28, OS_LOG_TYPE_DEFAULT, "%s: Not suggesting digest onboarding because there likely isn't enough data in the notification database.", v42, 0xCu);
    }

    v20 = 0;
  }

  _Block_object_dispose(buf, 8);
  return v20;
}

BOOL __80__ATXDigestOnboardingSuggestionClient_hasNotificationProblemForPreviousNumDays___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [a2 eventBody];
  v4 = [v3 bundleID];

  if (v4)
  {
    v6 = [v3 absoluteTimestamp];
    v7 = *(a1 + 32);
    v8 = objc_opt_new();
    v9 = [v7 components:16 fromDate:v6 toDate:v8 options:0];

    v10 = [v9 day];
    if (v10 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = -v10;
    }

    v12 = __atxlog_handle_notification_management(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v3 bundleID];
      v18 = 136315906;
      v19 = "[ATXDigestOnboardingSuggestionClient hasNotificationProblemForPreviousNumDays:]_block_invoke";
      v20 = 2048;
      v21 = v11;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "%s: First valid notification event in the stream occurred %ld days ago on %@ from %@", &v18, 0x2Au);
    }

    v15 = __atxlog_handle_notification_management(v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v11 > 0xE)
    {
      if (v16)
      {
        v18 = 136315138;
        v19 = "[ATXDigestOnboardingSuggestionClient hasNotificationProblemForPreviousNumDays:]_block_invoke";
        _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "%s: There's enough notification data on the device to show the digest onboarding suggestion.", &v18, 0xCu);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      if (v16)
      {
        v18 = 136315394;
        v19 = "[ATXDigestOnboardingSuggestionClient hasNotificationProblemForPreviousNumDays:]_block_invoke";
        v20 = 2048;
        v21 = 14;
        _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "%s: Not enough notification data to show digest onboarding suggestion since first valid notification event in the stream was less than %ld days old. This means we likely don't have enough data in the notification database to return a correct list of apps ranked by non-time-sensitive / non-message notification counts.", &v18, 0x16u);
      }
    }
  }

  else
  {
    v6 = __atxlog_handle_notification_management(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[ATXDigestOnboardingSuggestionClient hasNotificationProblemForPreviousNumDays:]_block_invoke_2";
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "%s: Event didn't have bundleId, continuing.", &v18, 0xCu);
    }
  }

  return v4 == 0;
}

void __80__ATXDigestOnboardingSuggestionClient_hasNotificationProblemForPreviousNumDays___block_invoke_2_38(uint64_t a1, void *a2)
{
  v17 = [a2 eventBody];
  v3 = [v17 bundleID];
  if (v3)
  {
    v4 = v3;
    v5 = [v17 absoluteTimestamp];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;
    [*(a1 + 32) timeIntervalSinceReferenceDate];
    v9 = v8;

    if (v7 >= v9)
    {
      v10 = *(a1 + 40);
      v11 = [v17 absoluteTimestamp];
      v12 = [v10 components:16 fromDate:v11 toDate:*(a1 + 48) options:0];

      v13 = [v12 day];
      if (v13 >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = -v13;
      }

      if (v14 < *(a1 + 64))
      {
        v15 = [*(a1 + 56) objectAtIndexedSubscript:?];
        v16 = [v17 bundleID];
        [v15 addObject:v16];
      }
    }
  }
}

- (id)notificationStreamPublisherForStartDate:(id)date
{
  dateCopy = date;
  v5 = BiomeLibrary();
  notification = [v5 Notification];
  usage = [notification Usage];
  v8 = [usage atx_publisherFromStartDate:dateCopy];

  _notificationStreamFilterBlock = [(ATXDigestOnboardingSuggestionClient *)self _notificationStreamFilterBlock];
  v10 = [v8 filterWithIsIncluded:_notificationStreamFilterBlock];

  return v10;
}

uint64_t __69__ATXDigestOnboardingSuggestionClient__notificationStreamFilterBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 eventBody];

  if (v3)
  {
    v4 = [v2 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = isKindOfClass;
    if ((isKindOfClass & 1) == 0)
    {
      v7 = __atxlog_handle_notification_management(isKindOfClass);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __69__ATXDigestOnboardingSuggestionClient__notificationStreamFilterBlock__block_invoke_cold_1(v4, v7);
      }

      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D930];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v8 raise:v9 format:{@"Encountered event in ATXDigestOnboardingSuggestionClient that was of unknown class. Expected BMNotificationUsage. Received: %@", v11}];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)_unregisterForLocaleChangeOnMainQueue
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];
}

- (void)_registerForLocaleChangeOnMainQueue
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleLocaleChange name:*MEMORY[0x1E695D8F0] object:0];
}

- (void)_handleLocaleChange
{
  [(ATXDigestOnboardingSuggestionClient *)self unregisterForOnboardingSuggestions];

  [(ATXDigestOnboardingSuggestionClient *)self registerForOnboardingSuggestions];
}

- (void)_setProbabilityOfShowingDigestOnboardingToUser
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"probabilityOfShowingDigestOnboardingSuggestion"];

  if (!v3)
  {
    v4 = arc4random_uniform(0xFFFFFFFF);
    v5 = v4 / 4294967300.0;
    v6 = __atxlog_handle_notification_management(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = v5;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "Random number being assigned for digest onboarding suggestion = %f", &v9, 0xCu);
    }

    userDefaults = self->_userDefaults;
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    [(NSUserDefaults *)userDefaults setObject:v8 forKey:@"probabilityOfShowingDigestOnboardingSuggestion"];
  }
}

+ (void)resetDigestOnboardingSuggestionsAtHour:(id)hour minute:(id)minute
{
  hourCopy = hour;
  minuteCopy = minute;
  v6 = objc_alloc(MEMORY[0x1E695E000]);
  v7 = [v6 initWithSuiteName:*MEMORY[0x1E69C5AC8]];
  [v7 setBool:0 forKey:@"hasSetUpDigestBefore"];
  [v7 setBool:0 forKey:@"digestOnboardingSuggestionShown"];
  if (hourCopy)
  {
    [v7 setInteger:objc_msgSend(hourCopy forKey:{"integerValue"), @"digestOnboardingSuggestionHour"}];
  }

  if (minuteCopy)
  {
    [v7 setInteger:objc_msgSend(minuteCopy forKey:{"integerValue"), @"digestOnboardingSuggestionMinute"}];
  }
}

+ (void)removeRandomizedSelectionForDigestOnboardingSuggestion
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x1E69C5AC8]];
  v4 = __atxlog_handle_notification_management([v3 setObject:&unk_1F3E60D68 forKey:@"probabilityOfShowingDigestOnboardingSuggestion"]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "Removed randomized selection for digest onboarding suggestion", v5, 2u);
  }
}

+ (void)resetRandomizedSelectionForDigestOnboardingSuggestion
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x1E69C5AC8]];
  v4 = __atxlog_handle_notification_management([v3 removeObjectForKey:@"probabilityOfShowingDigestOnboardingSuggestion"]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "Resetting randomized selection for digest onboarding suggestion", v5, 2u);
  }
}

+ (void)changeNumPreviousDaysToCheckForNotificationProblemToNumDays:(unint64_t)days
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x1E69C5AC8]];
  v6 = __atxlog_handle_notification_management([v5 setInteger:days forKey:@"numPreviousDaysToCheckForNotificationProblem"]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    daysCopy = days;
    _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "Change number of previous days to check for notification problem to %lu", &v7, 0xCu);
  }
}

- (void)_registerForKVOChangesOnMainQueue
{
  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    if (!self->_hasRegisteredKVO)
    {
      [(NSUserDefaults *)self->_userDefaults addObserver:self forKeyPath:@"digestOnboardingSuggestionHour" options:0 context:0];
      [(NSUserDefaults *)self->_userDefaults addObserver:self forKeyPath:@"digestOnboardingSuggestionMinute" options:0 context:0];
      [(NSUserDefaults *)self->_userDefaults addObserver:self forKeyPath:@"probabilityOfShowingDigestOnboardingSuggestion" options:0 context:0];
      self->_hasRegisteredKVO = 1;
    }
  }
}

- (void)_unregisterForKVOChangesOnMainQueue
{
  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    if (self->_hasRegisteredKVO)
    {
      [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"digestOnboardingSuggestionHour" context:0];
      [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"digestOnboardingSuggestionMinute" context:0];
      [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"probabilityOfShowingDigestOnboardingSuggestion" context:0];
      self->_hasRegisteredKVO = 0;
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([pathCopy isEqualToString:@"digestOnboardingSuggestionHour"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"digestOnboardingSuggestionMinute") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"probabilityOfShowingDigestOnboardingSuggestion"))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__ATXDigestOnboardingSuggestionClient_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E80C0958;
    v15 = pathCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ATXDigestOnboardingSuggestionClient;
    [(ATXDigestOnboardingSuggestionClient *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

void __86__ATXDigestOnboardingSuggestionClient_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqualToString:@"probabilityOfShowingDigestOnboardingSuggestion"];
  if (v2)
  {
    v3 = [*(*(a1 + 40) + 16) objectForKey:@"probabilityOfShowingDigestOnboardingSuggestion"];

    if (!v3)
    {
      v4 = [*(a1 + 40) _setProbabilityOfShowingDigestOnboardingToUser];
    }

    v5 = __atxlog_handle_notification_management(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "registering for onboarding suggestions again, since the random number has been changed";
LABEL_8:
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }
  }

  else
  {
    v5 = __atxlog_handle_notification_management(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "registering for onboarding suggestions again, since the suggestion time has been changed";
      goto LABEL_8;
    }
  }

  [*(a1 + 40) _invalidateTriggerOnMainQueue];
  v7 = *(a1 + 40);
  v8 = *(v7 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__ATXDigestOnboardingSuggestionClient_observeValueForKeyPath_ofObject_change_context___block_invoke_50;
  block[3] = &unk_1E80C0C90;
  block[4] = v7;
  dispatch_async(v8, block);
}

void __86__ATXDigestOnboardingSuggestionClient_observeValueForKeyPath_ofObject_change_context___block_invoke_50(uint64_t a1)
{
  v2 = +[ATXNotificationManagementMAConstants sharedInstance];
  [v2 thresholdForShowingDigestOnboardingSuggestionToSeedUsers];
  v4 = v3;
  [v2 thresholdForShowingDigestOnboardingSuggestion];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__ATXDigestOnboardingSuggestionClient_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
  block[3] = &unk_1E80C0E10;
  block[4] = *(a1 + 32);
  block[5] = v4;
  block[6] = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)dealloc
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(ATXDigestOnboardingSuggestionClient *)self _unregisterForKVOChangesOnMainQueue];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__ATXDigestOnboardingSuggestionClient_dealloc__block_invoke;
    block[3] = &unk_1E80C0C90;
    block[4] = self;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  v3.receiver = self;
  v3.super_class = ATXDigestOnboardingSuggestionClient;
  [(ATXDigestOnboardingSuggestionClient *)&v3 dealloc];
}

- (void)clientDidRejectOnboardingSuggestion
{
  v3 = __atxlog_handle_notification_management(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "ATXDigestOnboardingSuggestionClient: client rejected onboarding suggestion", v4, 2u);
  }

  [objc_opt_class() resetDigestOnboardingSuggestionsAtHour:0 minute:0];
  [(ATXDigestOnboardingSuggestionClient *)self unregisterForOnboardingSuggestions];
  [(ATXDigestOnboardingSuggestionClient *)self registerForOnboardingSuggestions];
}

void __69__ATXDigestOnboardingSuggestionClient__notificationStreamFilterBlock__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Encountered event in ATXDigestOnboardingSuggestionClient that was of unknown class. Expected BMNotificationUsage. Received: %@", &v5, 0xCu);
}

@end