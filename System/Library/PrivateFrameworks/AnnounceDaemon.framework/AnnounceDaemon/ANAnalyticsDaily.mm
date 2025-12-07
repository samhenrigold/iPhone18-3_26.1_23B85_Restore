@interface ANAnalyticsDaily
- (ANAnalyticsDaily)init;
- (ANAnalyticsDaily)initWithBackgroundActivity:(id)activity defaults:(id)defaults homesProvider:(id)provider messagingConnection:(id)connection;
- (ANAnalyticsDailyDelegate)delegate;
- (id)_dailyResponse;
- (id)_stringForDeferredResult:(int64_t)result;
- (void)_cleanup;
- (void)_collectForAnnounce:(id)announce;
- (void)_collectForAnnouncementsInHome:(id)home completion:(id)completion;
- (void)_collectForHome:(id)home homes:(id)homes;
- (void)_collectPayload:(id)payload;
- (void)_executeBackgroundActivity:(id)activity;
- (void)_recordExecutionTime;
- (void)_registerRapportDailyRequest;
- (void)_reportEventStorage;
- (void)_resetDailyAnnouncements;
- (void)announcementSent:(id)sent inHome:(id)home;
- (void)recordReachableHomes:(id)homes;
- (void)start;
@end

@implementation ANAnalyticsDaily

- (ANAnalyticsDaily)init
{
  v3 = objc_alloc_init(ANBackgroundActivity);
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v5 = +[ANHomeManager shared];
  v6 = objc_alloc_init(ANAnalyticsDailyMessaging);
  v7 = [(ANAnalyticsDaily *)self initWithBackgroundActivity:v3 defaults:mEMORY[0x277CEAB80] homesProvider:v5 messagingConnection:v6];

  return v7;
}

- (ANAnalyticsDaily)initWithBackgroundActivity:(id)activity defaults:(id)defaults homesProvider:(id)provider messagingConnection:(id)connection
{
  activityCopy = activity;
  defaultsCopy = defaults;
  providerCopy = provider;
  connectionCopy = connection;
  v20.receiver = self;
  v20.super_class = ANAnalyticsDaily;
  v15 = [(ANAnalyticsDaily *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_backgroundActivity, activity);
    objc_storeStrong(&v16->_defaults, defaults);
    v17 = objc_opt_new();
    eventStorage = v16->_eventStorage;
    v16->_eventStorage = v17;

    objc_storeStrong(&v16->_homesProvider, provider);
    objc_storeStrong(&v16->_messagingConnection, connection);
  }

  return v16;
}

- (void)start
{
  v13 = *MEMORY[0x277D85DE8];
  defaults = [(ANAnalyticsDaily *)self defaults];
  v4 = [defaults BOOLForDefault:*MEMORY[0x277CEA818]];

  v6 = ANLogHandleAnalyticsDaily(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      *buf = 138412290;
      v12 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily starting.", buf, 0xCu);
    }

    [(ANAnalyticsDaily *)self _registerRapportDailyRequest];
    objc_initWeak(buf, self);
    backgroundActivity = [(ANAnalyticsDaily *)self backgroundActivity];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __25__ANAnalyticsDaily_start__block_invoke;
    v9[3] = &unk_278C86F28;
    objc_copyWeak(&v10, buf);
    [backgroundActivity scheduleWithBlock:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v7)
    {
      *buf = 138412290;
      v12 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily events disabled.", buf, 0xCu);
    }
  }
}

void __25__ANAnalyticsDaily_start__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleAnalyticsDaily(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily executing.", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _recordExecutionTime];

  v6 = objc_loadWeakRetained((a1 + 32));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__ANAnalyticsDaily_start__block_invoke_5;
  v8[3] = &unk_278C86F00;
  v9 = v3;
  v7 = v3;
  [v6 _executeBackgroundActivity:v8];
}

- (void)recordReachableHomes:(id)homes
{
  homesCopy = homes;
  eventStorage = [(ANAnalyticsDaily *)self eventStorage];
  [eventStorage save:@"reachableHome" counter:homesCopy];
}

- (void)_recordExecutionTime
{
  v24 = *MEMORY[0x277D85DE8];
  defaults = [(ANAnalyticsDaily *)self defaults];
  v4 = *MEMORY[0x277CEA820];
  v5 = [defaults numberForDefault:*MEMORY[0x277CEA820]];

  v6 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];

  [v8 doubleValue];
  v10 = v9;
  [v5 doubleValue];
  v12 = v10 - v11;
  doubleValue = [v5 doubleValue];
  v15 = v14;
  v16 = ANLogHandleAnalyticsDaily(doubleValue);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15 == 0.0)
  {
    if (v17)
    {
      v20 = 138412546;
      v21 = &stru_2851BDB18;
      v22 = 2048;
      v23 = v12;
      v18 = "%@AnalyticsDaily first scheduled background activity at: %f";
LABEL_6:
      _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, v18, &v20, 0x16u);
    }
  }

  else if (v17)
  {
    v20 = 138412546;
    v21 = &stru_2851BDB18;
    v22 = 2048;
    v23 = v12;
    v18 = "%@AnalyticsDaily time since last scheduled background activity: %f";
    goto LABEL_6;
  }

  defaults2 = [(ANAnalyticsDaily *)self defaults];
  [defaults2 setNumber:v8 forDefault:v4];
}

- (void)_executeBackgroundActivity:(id)activity
{
  v12 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = ANLogHandleAnalyticsDaily(activityCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily collecting.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ANAnalyticsDaily__executeBackgroundActivity___block_invoke;
  v7[3] = &unk_278C86F50;
  objc_copyWeak(&v9, buf);
  v6 = activityCopy;
  v8 = v6;
  [(ANAnalyticsDaily *)self _collectPayload:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

uint64_t __47__ANAnalyticsDaily__executeBackgroundActivity___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = ANLogHandleAnalyticsDaily(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v11 = MEMORY[0x277CCACA8];
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v5 = [WeakRetained _stringForDeferredResult:a4];
        v12 = [v11 stringWithFormat:@"deferred: %@", v5];
      }

      else
      {
        v12 = @"completed";
      }

      *buf = 138412546;
      v22 = &stru_2851BDB18;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily %@.", buf, 0x16u);
      if (a4)
      {
      }
    }
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v8 setObject:v13 forKeyedSubscript:@"deferred"];

  v14 = objc_loadWeakRetained((a1 + 40));
  v15 = [v14 delegate];
  [v15 dailyReport:@"dailystate" withPayload:v8];

  v16 = objc_loadWeakRetained((a1 + 40));
  [v16 _reportEventStorage];

  v17 = objc_loadWeakRetained((a1 + 40));
  v18 = [v17 delegate];
  [v18 dailyReportComplete];

  v19 = objc_loadWeakRetained((a1 + 40));
  [v19 _cleanup];

  return (*(*(a1 + 32) + 16))();
}

- (void)_collectPayload:(id)payload
{
  payloadCopy = payload;
  v5 = objc_opt_new();
  homesProvider = [(ANAnalyticsDaily *)self homesProvider];
  homes = [homesProvider homes];
  v8 = [homes copy];

  backgroundActivity = [(ANAnalyticsDaily *)self backgroundActivity];
  LODWORD(homes) = [backgroundActivity shouldDefer];

  if (homes)
  {
    payloadCopy[2](payloadCopy, v5, 2, 1);
  }

  else
  {
    [(ANAnalyticsDaily *)self _collectForAnnounce:v5];
    backgroundActivity2 = [(ANAnalyticsDaily *)self backgroundActivity];
    shouldDefer = [backgroundActivity2 shouldDefer];

    if (shouldDefer)
    {
      payloadCopy[2](payloadCopy, v5, 2, 2);
    }

    else
    {
      [(ANAnalyticsDaily *)self _collectForHome:v5 homes:v8];
      backgroundActivity3 = [(ANAnalyticsDaily *)self backgroundActivity];
      shouldDefer2 = [backgroundActivity3 shouldDefer];

      if (shouldDefer2)
      {
        payloadCopy[2](payloadCopy, v5, 2, 3);
      }

      else
      {
        objc_initWeak(&location, self);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __36__ANAnalyticsDaily__collectPayload___block_invoke;
        v14[3] = &unk_278C86F78;
        objc_copyWeak(&v17, &location);
        v16 = payloadCopy;
        v15 = v5;
        [(ANAnalyticsDaily *)self _collectForAnnouncementsInHome:v15 completion:v14];

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }
    }
  }
}

uint64_t __36__ANAnalyticsDaily__collectPayload___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained backgroundActivity];
  [v3 shouldDefer];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)_stringForDeferredResult:(int64_t)result
{
  if ((result - 1) > 3)
  {
    return @"None";
  }

  else
  {
    return off_278C86FE8[result - 1];
  }
}

- (void)_reportEventStorage
{
  v34 = *MEMORY[0x277D85DE8];
  eventStorage = [(ANAnalyticsDaily *)self eventStorage];
  eventsToReport = [eventStorage eventsToReport];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [eventsToReport allKeys];
  v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v20 = *v29;
    v21 = eventsToReport;
    do
    {
      v8 = 0;
      v22 = v6;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        if ([v9 isEqualToString:{@"reachableHome", v20, v21}])
        {
          v10 = [ANAnalyticsCounter alloc];
          v11 = [eventsToReport objectForKeyedSubscript:v9];
          delegate2 = -[ANAnalyticsCounter initWithHexCount:](v10, "initWithHexCount:", [v11 unsignedLongLongValue]);

          v13 = [(ANAnalyticsCounter *)delegate2 payload:@"home" keyTwo:@"rooms"];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v25;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v24 + 1) + 8 * i);
                delegate = [(ANAnalyticsDaily *)self delegate];
                [delegate dailyReport:v9 withPayload:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v15);
            v7 = v20;
            eventsToReport = v21;
            v6 = v22;
          }
        }

        else
        {
          delegate2 = [(ANAnalyticsDaily *)self delegate];
          v13 = [eventsToReport objectForKeyedSubscript:v9];
          [(ANAnalyticsCounter *)delegate2 dailyReport:v9 withPayload:v13];
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }
}

- (void)_cleanup
{
  eventStorage = [(ANAnalyticsDaily *)self eventStorage];
  [eventStorage erase];
}

- (void)_collectForAnnounce:(id)announce
{
  v3 = MEMORY[0x277CCABB0];
  v4 = MEMORY[0x277CEAB38];
  announceCopy = announce;
  v6 = [v3 numberWithBool:{objc_msgSend(v4, "isAnnounceEnabled")}];
  [announceCopy setObject:v6 forKeyedSubscript:@"enabled"];
}

- (void)_collectForHome:(id)home homes:(id)homes
{
  v41 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = homes;
  v33 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v33)
  {
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v32 = *v37;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v37 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v36 + 1) + 8 * v9);
      backgroundActivity = [(ANAnalyticsDaily *)self backgroundActivity];
      shouldDefer = [backgroundActivity shouldDefer];

      if (shouldDefer)
      {
        break;
      }

      v35 = v6;
      hmu_isCurrentUserAdministrator = [v10 hmu_isCurrentUserAdministrator];
      hmu_isCurrentUserOwner = [v10 hmu_isCurrentUserOwner];
      hmu_isRemoteAccessAllowedForCurrentUser = [v10 hmu_isRemoteAccessAllowedForCurrentUser];
      currentUser = [v10 currentUser];
      announceUserSettings = [currentUser announceUserSettings];
      deviceNotificationMode = [announceUserSettings deviceNotificationMode];

      switch(deviceNotificationMode)
      {
        case 1:
          ++v29;
          break;
        case 2:
          ++v30;
          break;
        case 3:
          ++v28;
          break;
      }

      v8 += hmu_isCurrentUserAdministrator;
      v7 += hmu_isCurrentUserOwner;
      v5 += hmu_isCurrentUserAdministrator ^ 1;
      ++v9;
      v6 = v35 + hmu_isRemoteAccessAllowedForCurrentUser;
      if (v33 == v9)
      {
        v33 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v33)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(obj, "count")}];
  [homeCopy setObject:v19 forKeyedSubscript:@"homes"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [homeCopy setObject:v20 forKeyedSubscript:@"homesAsAdmin"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [homeCopy setObject:v21 forKeyedSubscript:@"homesAsOwner"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  [homeCopy setObject:v22 forKeyedSubscript:@"homesAsSharedUser"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  [homeCopy setObject:v23 forKeyedSubscript:@"homesWithRemoteAccess"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
  [homeCopy setObject:v24 forKeyedSubscript:@"deliveriesSetToAnywhere"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
  [homeCopy setObject:v25 forKeyedSubscript:@"deliveriesSetToNever"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
  [homeCopy setObject:v26 forKeyedSubscript:@"deliveriesSetToWhenHome"];
}

- (void)_collectForAnnouncementsInHome:(id)home completion:(id)completion
{
  v65 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  completionCopy = completion;
  _isCoordinationDevice = [(ANAnalyticsDaily *)self _isCoordinationDevice];
  if ((_isCoordinationDevice & 1) == 0)
  {
    v12 = ANLogHandleAnalyticsDaily(_isCoordinationDevice);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v64 = &stru_2851BDB18;
      v36 = "%@AnalyticsDaily ignoring collection for announcements in home. This device is not included in daily events coordination.";
LABEL_18:
      _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, v36, buf, 0xCu);
    }

LABEL_19:

    completionCopy[2](completionCopy);
    goto LABEL_24;
  }

  messagingConnection = [(ANAnalyticsDaily *)self messagingConnection];
  isDeviceAnalyticsCoordinator = [messagingConnection isDeviceAnalyticsCoordinator];

  v12 = ANLogHandleAnalyticsDaily(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if ((isDeviceAnalyticsCoordinator & 1) == 0)
  {
    if (v13)
    {
      *buf = 138412290;
      v64 = &stru_2851BDB18;
      v36 = "%@AnalyticsDaily ignoring collection for announcements in home. This HomePod was not elected.";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v13)
  {
    *buf = 138412290;
    v64 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily this HomePod was elected.", buf, 0xCu);
  }

  v14 = dispatch_group_create();
  v42 = objc_opt_new();
  defaults = [(ANAnalyticsDaily *)self defaults];
  v16 = [defaults objectForDefault:*MEMORY[0x277CEA8A8]];

  v17 = [[ANAnalyticsDailyAnnouncements alloc] initWithDictionary:v16];
  shouldReport = [(ANAnalyticsDailyAnnouncements *)v17 shouldReport];
  if (shouldReport)
  {
    v39 = v16;
    v40 = completionCopy;
    v41 = homeCopy;
    selfCopy = self;
    messagingConnection2 = [(ANAnalyticsDaily *)self messagingConnection];
    devicesCountingAnnouncements = [messagingConnection2 devicesCountingAnnouncements];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v22 = devicesCountingAnnouncements;
    v23 = [v22 countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v59;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v59 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v58 + 1) + 8 * i);
          dispatch_group_enter(v14);
          messagingConnection3 = [(ANAnalyticsDaily *)selfCopy messagingConnection];
          v29 = [v22 objectForKeyedSubscript:v27];
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __62__ANAnalyticsDaily__collectForAnnouncementsInHome_completion___block_invoke;
          v54[3] = &unk_278C86FA0;
          v55 = v42;
          v56 = v17;
          v57 = v14;
          [messagingConnection3 sendDailyRequest:v29 handler:v54];
        }

        v24 = [v22 countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v24);
    }

    objc_initWeak(buf, selfCopy);
    v38 = dispatch_get_global_queue(9, 0);
    v30 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v38);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__ANAnalyticsDaily__collectForAnnouncementsInHome_completion___block_invoke_2;
    aBlock[3] = &unk_278C86EB8;
    v50 = v30;
    homeCopy = v41;
    v51 = v41;
    v52 = v17;
    v53 = v40;
    v31 = v30;
    v32 = _Block_copy(aBlock);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__ANAnalyticsDaily__collectForAnnouncementsInHome_completion___block_invoke_3;
    block[3] = &unk_278C86868;
    objc_copyWeak(&v48, buf);
    v33 = v32;
    v47 = v33;
    dispatch_group_notify(v14, v38, block);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __62__ANAnalyticsDaily__collectForAnnouncementsInHome_completion___block_invoke_88;
    handler[3] = &unk_278C86868;
    objc_copyWeak(&v45, buf);
    v44 = v33;
    v34 = v33;
    dispatch_source_set_event_handler(v31, handler);
    v35 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(v31, v35, 0x77359400uLL, 0);
    dispatch_resume(v31);

    objc_destroyWeak(&v45);
    completionCopy = v40;
    objc_destroyWeak(&v48);

    objc_destroyWeak(buf);
    v16 = v39;
  }

  else
  {
    v37 = ANLogHandleAnalyticsDaily(shouldReport);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v64 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v37, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily not reporting for announcements in home since last report was too recent.", buf, 0xCu);
    }

    completionCopy[2](completionCopy);
  }

LABEL_24:
}

void __62__ANAnalyticsDaily__collectForAnnouncementsInHome_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ANAnalyticsDailyAnnouncements alloc] initWithDictionary:v3];

  [*(a1 + 32) lock];
  [*(a1 + 40) merge:v4];
  [*(a1 + 32) unlock];
  dispatch_group_leave(*(a1 + 48));
}

intptr_t __62__ANAnalyticsDaily__collectForAnnouncementsInHome_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = dispatch_source_testcancel(v2);
  if (!result)
  {
    dispatch_source_cancel(v2);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "announcementsCount")}];
    [*(a1 + 40) setObject:v4 forKeyedSubscript:@"homeAnnouncements"];

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "homesCount")}];
    [*(a1 + 40) setObject:v5 forKeyedSubscript:@"homesUsingAnnounce"];

    v6 = *(*(a1 + 56) + 16);

    return v6();
  }

  return result;
}

uint64_t __62__ANAnalyticsDaily__collectForAnnouncementsInHome_completion___block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resetDailyAnnouncements];

  v4 = ANLogHandleAnalyticsDaily(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily completed collecting announcements made in home.", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void __62__ANAnalyticsDaily__collectForAnnouncementsInHome_completion___block_invoke_88(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained backgroundActivity];
  v4 = [v3 shouldDefer];

  if (v4)
  {
    v6 = ANLogHandleAnalyticsDaily(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily should defer while collecting announcements in home.", &v7, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)announcementSent:(id)sent inHome:(id)home
{
  v19 = *MEMORY[0x277D85DE8];
  sentCopy = sent;
  homeCopy = home;
  _isCoordinationDevice = [(ANAnalyticsDaily *)self _isCoordinationDevice];
  if (_isCoordinationDevice)
  {
    defaults = [(ANAnalyticsDaily *)self defaults];
    v10 = *MEMORY[0x277CEA8A8];
    v11 = [defaults objectForDefault:*MEMORY[0x277CEA8A8]];

    v12 = [[ANAnalyticsDailyAnnouncements alloc] initWithDictionary:v11];
    groupID = [sentCopy groupID];
    [(ANAnalyticsDailyAnnouncements *)v12 incrementCountInHome:homeCopy group:groupID];

    defaults2 = [(ANAnalyticsDaily *)self defaults];
    dictionary = [(ANAnalyticsDailyAnnouncements *)v12 dictionary];
    [defaults2 setObject:dictionary forDefault:v10];
  }

  else
  {
    v16 = ANLogHandleAnalyticsDaily(_isCoordinationDevice);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily ignoring tracking of announcements sent. This device is not included in daily events coordination.", &v17, 0xCu);
    }
  }
}

- (void)_registerRapportDailyRequest
{
  location[3] = *MEMORY[0x277D85DE8];
  _isCoordinationDevice = [(ANAnalyticsDaily *)self _isCoordinationDevice];
  if (_isCoordinationDevice)
  {
    objc_initWeak(location, self);
    messagingConnection = [(ANAnalyticsDaily *)self messagingConnection];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__ANAnalyticsDaily__registerRapportDailyRequest__block_invoke;
    v6[3] = &unk_278C86FC8;
    objc_copyWeak(&v7, location);
    [messagingConnection registerDailyRequest:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = ANLogHandleAnalyticsDaily(_isCoordinationDevice);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily ignoring registration for rapport activation. This device is not included in daily events coordination.", location, 0xCu);
    }
  }
}

id __48__ANAnalyticsDaily__registerRapportDailyRequest__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 _dailyResponse];
  }

  else
  {
    v6 = ANLogHandleAnalyticsDaily(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily lost reference count for self on daily request registration.", &v8, 0xCu);
    }

    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (id)_dailyResponse
{
  defaults = [(ANAnalyticsDaily *)self defaults];
  v4 = [defaults objectForDefault:*MEMORY[0x277CEA8A8]];

  v5 = [[ANAnalyticsDailyAnnouncements alloc] initWithDictionary:v4];
  [(ANAnalyticsDaily *)self _resetDailyAnnouncements];
  dictionary = [(ANAnalyticsDailyAnnouncements *)v5 dictionary];

  return dictionary;
}

- (void)_resetDailyAnnouncements
{
  v3 = [ANAnalyticsDailyAnnouncements alloc];
  v4 = [MEMORY[0x277CBEAA8] now];
  [v4 timeIntervalSince1970];
  v7 = [(ANAnalyticsDailyAnnouncements *)v3 initWithLastAccess:?];

  defaults = [(ANAnalyticsDaily *)self defaults];
  dictionary = [(ANAnalyticsDailyAnnouncements *)v7 dictionary];
  [defaults setObject:dictionary forDefault:*MEMORY[0x277CEA8A8]];
}

- (ANAnalyticsDailyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end