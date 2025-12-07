@interface VCMetricSubmitter
+ (id)activityIdentifier;
+ (void)performWithDatabaseProvider:(id)provider;
+ (void)scheduleWithDatabaseProvider:(id)provider;
+ (void)scheduleWithScheduler:(id)scheduler databaseProvider:(id)provider;
- (BOOL)addWidgetMetricsToEvent:(id)event error:(id *)error;
- (BOOL)hasSeenAutoShortcutsSections;
- (BOOL)homeAutomationsPresent:(id *)present;
- (BOOL)isAppInstalled;
- (BOOL)isSleepEnabled;
- (VCMetricSubmitter)initWithCheckIn:(id)in event:(id)event databaseProvider:(id)provider;
- (VCMetricSubmitter)initWithDatabaseProvider:(id)provider;
- (int)coherenceSyncEnablementStatus:(id)status;
- (unsigned)averageShortcutCountPerFolder:(id)folder;
- (unsigned)folderCount:(id)count;
- (unsigned)numberOfAppSessions:(id *)sessions;
- (unsigned)numberOfPersonalAutomationsEnabled:(id)enabled;
- (unsigned)numberOfShortcutRuns:(id)runs;
- (unsigned)sleepShortcutCount:(id)count;
- (unsigned)uncategorizedShortcutCount:(id)count;
- (unsigned)watchShortcutCount:(id)count;
- (void)perform;
@end

@implementation VCMetricSubmitter

- (int)coherenceSyncEnablementStatus:(id)status
{
  statusCopy = status;
  if ([MEMORY[0x277D7C230] isSyncEnabled])
  {
    syncShortcutsUserDefaults = [MEMORY[0x277CBEBD0] syncShortcutsUserDefaults];
    v5 = [syncShortcutsUserDefaults BOOLForKey:*MEMORY[0x277D7D000]];

    if (v5)
    {
      v6 = 4;
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__1358;
      v23 = __Block_byref_object_dispose__1359;
      v24 = 0;
      v7 = dispatch_semaphore_create(0);
      v8 = WFShortcutsCloudKitContainer();
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __51__VCMetricSubmitter_coherenceSyncEnablementStatus___block_invoke;
      v16 = &unk_2788FE848;
      v18 = &v19;
      v9 = v7;
      v17 = v9;
      [v8 accountInfoWithCompletionHandler:&v13];
      v10 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v9, v10);
      v11 = v20[5];
      if (v11 && [v11 accountStatus] == 1)
      {
        if ([statusCopy coherenceSyncEnabled])
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }
      }

      else
      {
        v6 = 5;
      }

      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
    v6 = 5;
  }

  return v6;
}

void __51__VCMetricSubmitter_coherenceSyncEnablementStatus___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)addWidgetMetricsToEvent:(id)event error:(id *)error
{
  v57 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v6 = objc_alloc_init(getATXHomeScreenConfigCacheClass());
  v53 = 0;
  v7 = [v6 loadHomeScreenAndTodayPageConfigurationsWithError:&v53];
  v8 = v53;
  v9 = v8;
  if (v7)
  {
    v26 = v8;
    v27 = v7;
    v29 = eventCopy;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v7;
    v32 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
    v28 = v6;
    v10 = 0;
    if (v32)
    {
      v39 = 0;
      v40 = 0;
      v38 = 0;
      v31 = *v50;
      v11 = *MEMORY[0x277D7A338];
      do
      {
        v12 = 0;
        do
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v12;
          v13 = *(*(&v49 + 1) + 8 * v12);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          stacks = [v13 stacks];
          v36 = [stacks countByEnumeratingWithState:&v45 objects:v55 count:16];
          if (v36)
          {
            v35 = *v46;
            do
            {
              v14 = 0;
              do
              {
                if (*v46 != v35)
                {
                  objc_enumerationMutation(stacks);
                }

                v37 = v14;
                v15 = *(*(&v45 + 1) + 8 * v14);
                v41 = 0u;
                v42 = 0u;
                v43 = 0u;
                v44 = 0u;
                widgets = [v15 widgets];
                v17 = [widgets countByEnumeratingWithState:&v41 objects:v54 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v42;
                  do
                  {
                    for (i = 0; i != v18; ++i)
                    {
                      if (*v42 != v19)
                      {
                        objc_enumerationMutation(widgets);
                      }

                      v21 = *(*(&v41 + 1) + 8 * i);
                      appBundleId = [v21 appBundleId];
                      extensionBundleId = [v21 extensionBundleId];
                      if (appBundleId | extensionBundleId && (([appBundleId isEqualToString:v11] & 1) != 0 || objc_msgSend(extensionBundleId, "isEqualToString:", @"Shortcuts")))
                      {
                        stackLayoutSize = [v15 stackLayoutSize];
                        switch(stackLayoutSize)
                        {
                          case 2:
                            ++v40;
                            break;
                          case 1:
                            ++v39;
                            break;
                          case 0:
                            ++v38;
                            break;
                        }

                        if ([v13 pageIndex] == 20000)
                        {
                          ++v10;
                        }
                      }
                    }

                    v18 = [widgets countByEnumeratingWithState:&v41 objects:v54 count:16];
                  }

                  while (v18);
                }

                v14 = v37 + 1;
              }

              while (v37 + 1 != v36);
              v36 = [stacks countByEnumeratingWithState:&v45 objects:v55 count:16];
            }

            while (v36);
          }

          v12 = v33 + 1;
        }

        while (v33 + 1 != v32);
        v32 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v32);
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v38 = 0;
    }

    eventCopy = v29;
    [v29 setNumberOfSmallWidgets:?];
    [v29 setNumberOfMediumWidgets:v39];
    [v29 setNumberOfLargeWidgets:v40];
    [v29 setNumberOfWidgetsOnHomeScreen:(v40 - v10 + v39 + v38)];
    [v29 setNumberOfWidgetsOnLoL:v10];
    v7 = v27;
    v6 = v28;
    v9 = v26;
  }

  else
  {
    *error = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:213456 underlyingError:v8];
  }

  return v7 != 0;
}

- (unsigned)sleepShortcutCount:(id)count
{
  v3 = [count sortedVisibleWorkflowsWithType:*MEMORY[0x277D7A8A8]];
  v4 = [v3 count];

  return v4;
}

- (unsigned)numberOfAppSessions:(id *)sessions
{
  v29[2] = *MEMORY[0x277D85DE8];
  checkIn = [(VCMetricSubmitter *)self checkIn];
  v5 = MEMORY[0x277CCA920];
  v6 = MEMORY[0x277CFE260];
  intervalStartDate = [checkIn intervalStartDate];
  currentDate = [checkIn currentDate];
  v9 = [v6 predicateForEventsWithStartOrEndInDateRangeWithFrom:intervalStartDate to:currentDate];
  v29[0] = v9;
  v10 = MEMORY[0x277CFE260];
  v11 = [MEMORY[0x277CFE1A8] withBundle:*MEMORY[0x277D7A338]];
  v12 = [v10 predicateForEventsWithIdentifierValue:v11];
  v29[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v14 = [v5 andPredicateWithSubpredicates:v13];

  v15 = MEMORY[0x277CFE1E0];
  appInFocusStream = [MEMORY[0x277CFE298] appInFocusStream];
  v28 = appInFocusStream;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v18 = [v15 eventQueryWithPredicate:v14 eventStreams:v17 offset:0 limit:0 sortDescriptors:MEMORY[0x277CBEBF8]];

  [v18 setResultType:1];
  [v18 setReadMetadata:0];
  knowledgeStore = [MEMORY[0x277CFE208] knowledgeStore];
  v27 = 0;
  v20 = [knowledgeStore executeQuery:v18 error:&v27];
  v21 = v27;

  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  firstObject = [v23 firstObject];

  if (firstObject && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [firstObject unsignedIntValue];
  }

  else
  {

    [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1296357 underlyingError:v21];
    *sessions = unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (unsigned)numberOfShortcutRuns:(id)runs
{
  runsCopy = runs;
  checkIn = [(VCMetricSubmitter *)self checkIn];
  intervalStartDate = [checkIn intervalStartDate];
  currentDate = [checkIn currentDate];
  v8 = [runsCopy sortedRunEventsWithSource:0 startDate:intervalStartDate endDate:currentDate];

  LODWORD(runsCopy) = [v8 count];
  return runsCopy;
}

- (unsigned)numberOfPersonalAutomationsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:enabledCopy];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  allConfiguredTriggers = [v4 allConfiguredTriggers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__VCMetricSubmitter_numberOfPersonalAutomationsEnabled___block_invoke;
  v7[3] = &unk_2788FE820;
  v7[4] = &v8;
  [allConfiguredTriggers enumerateObjectsUsingBlock:v7];

  LODWORD(allConfiguredTriggers) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return allConfiguredTriggers;
}

void *__56__VCMetricSubmitter_numberOfPersonalAutomationsEnabled___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isEnabled];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (unsigned)folderCount:(id)count
{
  sortedVisibleFolders = [count sortedVisibleFolders];
  v4 = [sortedVisibleFolders count];

  return v4;
}

- (unsigned)watchShortcutCount:(id)count
{
  v3 = MEMORY[0x277D7A1F8];
  countCopy = count;
  v5 = [v3 alloc];
  v6 = [v5 initWithWorkflowType:*MEMORY[0x277D7A8B0]];
  v7 = [countCopy sortedWorkflowsWithQuery:v6];

  LODWORD(countCopy) = [v7 count];
  return countCopy;
}

- (unsigned)uncategorizedShortcutCount:(id)count
{
  v3 = MEMORY[0x277D7A1F8];
  countCopy = count;
  v5 = [[v3 alloc] initWithLocation:1];
  v6 = [countCopy sortedWorkflowsWithQuery:v5];

  LODWORD(countCopy) = [v6 count];
  return countCopy;
}

- (unsigned)averageShortcutCountPerFolder:(id)folder
{
  folderCopy = folder;
  sortedVisibleFolders = [folderCopy sortedVisibleFolders];
  v5 = [sortedVisibleFolders count];

  if (v5)
  {
    v5 = [folderCopy countOfWorkflowsInAFolder] / v5;
  }

  return v5;
}

- (BOOL)homeAutomationsPresent:(id *)present
{
  v41 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D7C4F0] = [MEMORY[0x277D7C4F0] sharedManager];
  if ([mEMORY[0x277D7C4F0] status] == 1)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7A388] code:90210 userInfo:0];
    *present = v5 = 0;
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = mEMORY[0x277D7C4F0];
    homesToWhichWeCanAddHomeAutomations = [mEMORY[0x277D7C4F0] homesToWhichWeCanAddHomeAutomations];
    v23 = [homesToWhichWeCanAddHomeAutomations countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v23)
    {
      v7 = *v32;
      v25 = homesToWhichWeCanAddHomeAutomations;
      v22 = *v32;
      do
      {
        v8 = 0;
        do
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(homesToWhichWeCanAddHomeAutomations);
          }

          v24 = v8;
          v9 = *(*(&v31 + 1) + 8 * v8);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          triggers = [v9 triggers];
          v11 = [triggers countByEnumeratingWithState:&v27 objects:v39 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v28;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v28 != v13)
                {
                  objc_enumerationMutation(triggers);
                }

                v15 = *(*(&v27 + 1) + 8 * i);
                v16 = v15;
                if (v15)
                {
                  if ([v15 conformsToProtocol:&unk_2846171C8])
                  {
                    v17 = v16;
                  }

                  else
                  {
                    v17 = 0;
                  }
                }

                else
                {
                  v17 = 0;
                }

                v18 = v17;

                hf_triggerType = [v18 hf_triggerType];
                if (hf_triggerType != 7 && hf_triggerType)
                {

                  v5 = 1;
                  goto LABEL_28;
                }

                v20 = getWFEventTrackerLogObject();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v36 = "[VCMetricSubmitter homeAutomationsPresent:]";
                  v37 = 2114;
                  v38 = v16;
                  _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_ERROR, "%s Ignoring trigger of unknown or placeholder type: %{public}@", buf, 0x16u);
                }
              }

              v12 = [triggers countByEnumeratingWithState:&v27 objects:v39 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          v8 = v24 + 1;
          homesToWhichWeCanAddHomeAutomations = v25;
          v7 = v22;
        }

        while (v24 + 1 != v23);
        v23 = [v25 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v23);
    }

    v5 = 0;
LABEL_28:
    mEMORY[0x277D7C4F0] = v26;
  }

  return v5;
}

- (BOOL)hasSeenAutoShortcutsSections
{
  workflowUserDefaults = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v4 = [workflowUserDefaults valueForKey:*MEMORY[0x277D7CD40]];

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v4 = 0;
    goto LABEL_6;
  }

  intervalStartDate = [(VCMetricCheckIn *)self->_checkIn intervalStartDate];
  v6 = [intervalStartDate compare:v4];

  if (v6 != -1)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

- (BOOL)isSleepEnabled
{
  v2 = [objc_alloc(MEMORY[0x277D7C4E0]) initWithSleepFeature:1];
  v3 = [v2 sleepOnboardingStatus] == 1;

  return v3;
}

- (BOOL)isAppInstalled
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  v3 = *MEMORY[0x277D7A338];
  v9 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v9];
  v5 = v9;
  if (v5)
  {
    applicationState = getWFEventTrackerLogObject();
    if (os_log_type_enabled(applicationState, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v11 = "[VCMetricSubmitter isAppInstalled]";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_23103C000, applicationState, OS_LOG_TYPE_FAULT, "%s Error accessing LSApplicationRecord for Shortcuts: %@", buf, 0x16u);
    }

    isInstalled = 0;
  }

  else
  {
    applicationState = [v4 applicationState];
    isInstalled = [applicationState isInstalled];
  }

  return isInstalled;
}

- (void)perform
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = getWFEventTrackerLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[VCMetricSubmitter perform]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_INFO, "%s Attempting to perform checkin", buf, 0xCu);
  }

  checkIn = [(VCMetricSubmitter *)self checkIn];
  isCheckInAllowed = [checkIn isCheckInAllowed];

  if (isCheckInAllowed)
  {
    databaseProvider = [(VCMetricSubmitter *)self databaseProvider];
    v24 = 0;
    date = [databaseProvider databaseWithError:&v24];
    v8 = v24;

    if (!date)
    {
      v14 = getWFEventTrackerLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v26 = "[VCMetricSubmitter perform]";
        v27 = 2114;
        v28 = v8;
        _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_INFO, "%s Checkin is not possible because no database is available; %{public}@", buf, 0x16u);
      }

      goto LABEL_16;
    }

    event = [(VCMetricSubmitter *)self event];
    [event setInstalled:{-[VCMetricSubmitter isAppInstalled](self, "isAppInstalled")}];
    [event setSharingEnabled:{-[VCMetricSubmitter isSharingEnabled](self, "isSharingEnabled")}];
    [event setPersonalAutomationsEnabled:{-[VCMetricSubmitter personalAutomationsEnabled:](self, "personalAutomationsEnabled:", date)}];
    [event setSleepEnabled:{-[VCMetricSubmitter isSleepEnabled](self, "isSleepEnabled")}];
    v23 = 0;
    v10 = [(VCMetricSubmitter *)self homeAutomationsPresent:&v23];
    v11 = v23;
    [event setHomeAutomationsEnabled:v10];
    [event setAverageShortcutCountPerFolder:{-[VCMetricSubmitter averageShortcutCountPerFolder:](self, "averageShortcutCountPerFolder:", date)}];
    [event setShortcutsCount:{-[VCMetricSubmitter shortcutsCount:](self, "shortcutsCount:", date)}];
    [event setUncategorizedShortcutCount:{-[VCMetricSubmitter uncategorizedShortcutCount:](self, "uncategorizedShortcutCount:", date)}];
    [event setWatchShortcutCount:{-[VCMetricSubmitter watchShortcutCount:](self, "watchShortcutCount:", date)}];
    [event setFolderCount:{-[VCMetricSubmitter folderCount:](self, "folderCount:", date)}];
    [event setNumberOfPersonalAutomationsEnabled:{-[VCMetricSubmitter numberOfPersonalAutomationsEnabled:](self, "numberOfPersonalAutomationsEnabled:", date)}];
    [event setAppComplicationSlotsUsed:{objc_msgSend(MEMORY[0x277D7C280], "appComplicationSlotsUsed")}];
    [event setShortcutComplicationSlotsUsed:{objc_msgSend(MEMORY[0x277D7C280], "shortcutComplicationSlotsUsed")}];
    [event setShortcutRunCount:{-[VCMetricSubmitter numberOfShortcutRuns:](self, "numberOfShortcutRuns:", date)}];
    v22 = v11;
    v12 = [(VCMetricSubmitter *)self numberOfAppSessions:&v22];
    v13 = v22;

    [event setAppSessionCount:v12];
    [event setSleepShortcutsCount:{-[VCMetricSubmitter sleepShortcutCount:](self, "sleepShortcutCount:", date)}];
    [event setAutoShortcutsSectionsViewed:{-[VCMetricSubmitter hasSeenAutoShortcutsSections](self, "hasSeenAutoShortcutsSections")}];
    [event setCoherenceSyncEnablement:{-[VCMetricSubmitter coherenceSyncEnablementStatus:](self, "coherenceSyncEnablementStatus:", date)}];
    [event setCoherenceBlobSize:{-[NSObject libraryBlobSize](date, "libraryBlobSize")}];
    v21 = v13;
    [(VCMetricSubmitter *)self addWidgetMetricsToEvent:event error:&v21];
    v14 = v21;

    if (v14)
    {
      v15 = getWFEventTrackerLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v26 = "[VCMetricSubmitter perform]";
        v27 = 2114;
        v28 = v14;
        v16 = "%s Checkin is not possible because of an error: %{public}@";
        v17 = v15;
        v18 = OS_LOG_TYPE_FAULT;
        v19 = 22;
LABEL_14:
        _os_log_impl(&dword_23103C000, v17, v18, v16, buf, v19);
      }
    }

    else
    {
      [event track];
      checkIn2 = [(VCMetricSubmitter *)self checkIn];
      [checkIn2 updateCheckInToNow];

      v15 = getWFEventTrackerLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v26 = "[VCMetricSubmitter perform]";
        v16 = "%s Checkin completed successfully";
        v17 = v15;
        v18 = OS_LOG_TYPE_INFO;
        v19 = 12;
        goto LABEL_14;
      }
    }

LABEL_16:
    goto LABEL_17;
  }

  v8 = getWFEventTrackerLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    date = [MEMORY[0x277CBEAA8] date];
    *buf = 136315394;
    v26 = "[VCMetricSubmitter perform]";
    v27 = 2112;
    v28 = date;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, "%s Checkin is not allowed at this time: %@", buf, 0x16u);
LABEL_17:
  }
}

- (VCMetricSubmitter)initWithCheckIn:(id)in event:(id)event databaseProvider:(id)provider
{
  inCopy = in;
  eventCopy = event;
  providerCopy = provider;
  if (inCopy)
  {
    if (eventCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCMetricSubmitter.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"event"}];

    if (providerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCMetricSubmitter.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"checkIn"}];

  if (!eventCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (providerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCMetricSubmitter.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"provider"}];

LABEL_4:
  v20.receiver = self;
  v20.super_class = VCMetricSubmitter;
  v13 = [(VCMetricSubmitter *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_checkIn, in);
    objc_storeStrong(&v14->_event, event);
    objc_storeStrong(&v14->_databaseProvider, provider);
    v15 = v14;
  }

  return v14;
}

- (VCMetricSubmitter)initWithDatabaseProvider:(id)provider
{
  providerCopy = provider;
  v5 = [VCMetricCheckIn recentCheckInWithMode:0];
  v6 = objc_alloc_init(MEMORY[0x277D7C658]);
  v7 = [(VCMetricSubmitter *)self initWithCheckIn:v5 event:v6 databaseProvider:providerCopy];

  return v7;
}

+ (void)performWithDatabaseProvider:(id)provider
{
  providerCopy = provider;
  v4 = [objc_alloc(objc_opt_class()) initWithDatabaseProvider:providerCopy];

  [v4 perform];
}

+ (void)scheduleWithScheduler:(id)scheduler databaseProvider:(id)provider
{
  v22 = *MEMORY[0x277D85DE8];
  schedulerCopy = scheduler;
  providerCopy = provider;
  v9 = providerCopy;
  if (schedulerCopy)
  {
    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCMetricSubmitter.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"scheduler"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCMetricSubmitter.m" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"provider"}];

LABEL_3:
  v10 = getWFEventTrackerLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    activityIdentifier = [self activityIdentifier];
    *buf = 136315394;
    v19 = "+[VCMetricSubmitter scheduleWithScheduler:databaseProvider:]";
    v20 = 2114;
    v21 = activityIdentifier;
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEBUG, "%s Scheduling metric check in activity: (%{public}@)", buf, 0x16u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__VCMetricSubmitter_scheduleWithScheduler_databaseProvider___block_invoke;
  v15[3] = &unk_2788FE898;
  v16 = v9;
  selfCopy = self;
  v12 = v9;
  [schedulerCopy scheduleWithRunHandler:v15];
}

uint64_t __60__VCMetricSubmitter_scheduleWithScheduler_databaseProvider___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__VCMetricSubmitter_scheduleWithScheduler_databaseProvider___block_invoke_2;
  block[3] = &unk_2788FE870;
  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v10 = v6;
  v11 = v4;
  v7 = v4;
  dispatch_async(v5, block);

  return 0;
}

uint64_t __60__VCMetricSubmitter_scheduleWithScheduler_databaseProvider___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = getWFEventTrackerLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 48) activityIdentifier];
    v6 = 136315394;
    v7 = "+[VCMetricSubmitter scheduleWithScheduler:databaseProvider:]_block_invoke_2";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_INFO, "%s Scheduling metric checkin activity invoked: (%{public}@)", &v6, 0x16u);
  }

  [*(a1 + 48) performWithDatabaseProvider:*(a1 + 32)];
  return (*(*(a1 + 40) + 16))();
}

+ (void)scheduleWithDatabaseProvider:(id)provider
{
  providerCopy = provider;
  v5 = [WFXPCActivityScheduler alloc];
  activityIdentifier = [self activityIdentifier];
  v7 = [(WFXPCActivityScheduler *)v5 initWithActivityIdentifier:activityIdentifier];

  [self scheduleWithScheduler:v7 databaseProvider:providerCopy];
}

+ (id)activityIdentifier
{
  result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"+[VCMetricSubmitter activityIdentifier] must be overridden"];
  __break(1u);
  return result;
}

@end