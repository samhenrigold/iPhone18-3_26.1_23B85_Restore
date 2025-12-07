@interface ATXDigestSetupFlowProvider
- (ATXDigestSetupFlowProvider)init;
- (ATXDigestSetupFlowProvider)initWithDatastore:(id)datastore;
- (id)appsSortedByNumOfNotificationsGivenNumOfDays:(unint64_t)days;
- (unint64_t)numDaysSinceTimestamp:(double)timestamp;
- (void)addRemainingAppsWithNoNotificationVolume:(id)volume;
@end

@implementation ATXDigestSetupFlowProvider

- (ATXDigestSetupFlowProvider)init
{
  v3 = objc_opt_new();
  v4 = [(ATXDigestSetupFlowProvider *)self initWithDatastore:v3];

  return v4;
}

- (ATXDigestSetupFlowProvider)initWithDatastore:(id)datastore
{
  datastoreCopy = datastore;
  v9.receiver = self;
  v9.super_class = ATXDigestSetupFlowProvider;
  v6 = [(ATXDigestSetupFlowProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_datastore, datastore);
    v7->_containsMessageAndTimeSensitiveData = 1;
    v7->_numDaysOfData = 0;
  }

  return v7;
}

- (id)appsSortedByNumOfNotificationsGivenNumOfDays:(unint64_t)days
{
  v20 = *MEMORY[0x277D85DE8];
  [(ATXNotificationAndSuggestionDatastore *)self->_datastore receiveTimeStampOfFirstNotification];
  v6 = v5;
  timeIntervalSinceReferenceDate = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8 - (86400 * days);
  v10 = __atxlog_handle_notification_management(timeIntervalSinceReferenceDate);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v6 == 0.0)
  {
    if (v11)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Notifications database was empty", &v18, 2u);
    }

    v12 = 0;
  }

  else
  {
    if (v11)
    {
      v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
      v18 = 138412290;
      v19 = v13;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "First notification in the database was on: %@", &v18, 0xCu);
    }

    v12 = [(ATXDigestSetupFlowProvider *)self numDaysSinceTimestamp:v6];
  }

  self->_numDaysOfData = v12;
  v14 = [(ATXNotificationAndSuggestionDatastore *)self->_datastore appSortedByNumOfNotificationsSinceTimestamp:v9];
  v15 = [v14 mutableCopy];

  v16 = __atxlog_handle_notification_management([(ATXDigestSetupFlowProvider *)self addRemainingAppsWithNoNotificationVolume:v15]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [(ATXDigestSetupFlowProvider *)v15 appsSortedByNumOfNotificationsGivenNumOfDays:v16];
  }

  return v15;
}

- (unint64_t)numDaysSinceTimestamp:(double)timestamp
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:timestamp];
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [currentCalendar components:16 fromDate:v5 toDate:v6 options:2];

  v8 = [v7 day];
  return v8 + 1;
}

- (void)addRemainingAppsWithNoNotificationVolume:(id)volume
{
  v36 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  v4 = +[_ATXAppIconState sharedInstance];
  v5 = MEMORY[0x277CBEB58];
  allAppsKnownToSpringBoard = [v4 allAppsKnownToSpringBoard];
  v7 = [v5 setWithArray:allAppsKnownToSpringBoard];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = volumeCopy;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        bundleId = [v13 bundleId];
        v15 = [v7 containsObject:bundleId];

        if (v15)
        {
          bundleId2 = [v13 bundleId];
          [v7 removeObject:bundleId2];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  v17 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v7;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * j);
        v24 = objc_alloc(MEMORY[0x277CEB348]);
        v25 = [v24 initWithBundleId:v23 numBasicNotifications:0 numMessageNotifications:0 numTimeSenstiveNonMessageNotifications:{0, v26}];
        [v17 addObject:v25];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  [v8 addObjectsFromArray:v17];
}

- (void)appsSortedByNumOfNotificationsGivenNumOfDays:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Total number of apps being returned: %lu", &v3, 0xCu);
}

@end