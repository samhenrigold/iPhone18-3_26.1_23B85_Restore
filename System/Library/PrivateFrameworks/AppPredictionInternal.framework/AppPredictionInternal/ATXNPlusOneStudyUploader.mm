@interface ATXNPlusOneStudyUploader
- (BOOL)_processClientModelUpdateStreamFromStartTime:(double)time shortcutSuggestionHandler:(id)handler infoSuggestionHandler:(id)suggestionHandler activity:(id)activity;
- (id)_applyPrivacyFilterToEvents:(id)events;
- (id)_emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:(id)activity;
- (id)_preparedEventsFromEmptyEvents:(id)events activity:(id)activity;
- (id)_preparedEvents_appLaunchPopularity:(id)popularity activity:(id)activity;
- (id)_preparedEvents_appPushNotificationEnabled:(id)enabled activity:(id)activity;
- (id)_preparedEvents_appScreenTimeCategory:(id)category activity:(id)activity;
- (id)_preparedEvents_numAppLaunches:(id)launches activity:(id)activity;
- (id)_preparedEvents_suggestionCounts:(id)counts activity:(id)activity;
- (id)_preparedEvents_widgetExistsOnScreen:(id)screen activity:(id)activity;
- (void)_sendEventsToCoreAnalytics:(id)analytics;
- (void)dryRunResultFilterByExtensionBundleId:(id)id completionHandler:(id)handler;
- (void)uploadStudyDataToCoreAnalyticsWithActivity:(id)activity;
@end

@implementation ATXNPlusOneStudyUploader

- (void)uploadStudyDataToCoreAnalyticsWithActivity:(id)activity
{
  activityCopy = activity;
  v5 = dispatch_get_global_queue(9, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__ATXNPlusOneStudyUploader_uploadStudyDataToCoreAnalyticsWithActivity___block_invoke;
  v7[3] = &unk_278596C10;
  v8 = activityCopy;
  selfCopy = self;
  v6 = activityCopy;
  dispatch_async(v5, v7);
}

void __71__ATXNPlusOneStudyUploader_uploadStudyDataToCoreAnalyticsWithActivity___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_home_screen(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXNPlusOneStudyUploader: Start to prepare N+1 study data.", &v8, 2u);
  }

  if (([*(a1 + 32) didDefer] & 1) == 0)
  {
    v4 = [*(a1 + 40) _emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:*(a1 + 32)];
    if ([v4 count] && (objc_msgSend(*(a1 + 32), "didDefer") & 1) == 0)
    {
      v5 = [*(a1 + 40) _preparedEventsFromEmptyEvents:v4 activity:*(a1 + 32)];

      if ([v5 count] && (objc_msgSend(*(a1 + 32), "didDefer") & 1) == 0)
      {
        v4 = [*(a1 + 40) _applyPrivacyFilterToEvents:v5];

        if ([v4 count] && (objc_msgSend(*(a1 + 32), "didDefer") & 1) == 0)
        {
          v6 = __atxlog_handle_home_screen([*(a1 + 40) _sendEventsToCoreAnalytics:v4]);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = [v4 count];
            v8 = 134217984;
            v9 = v7;
            _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXNPlusOneStudyUploader: Sent %lu events to CoreAnalytics.", &v8, 0xCu);
          }
        }
      }

      else
      {
        v4 = v5;
      }
    }
  }
}

- (void)dryRunResultFilterByExtensionBundleId:(id)id completionHandler:(id)handler
{
  idCopy = id;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ATXNPlusOneStudyUploader_dryRunResultFilterByExtensionBundleId_completionHandler___block_invoke;
  block[3] = &unk_27859A950;
  block[4] = self;
  v12 = idCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = idCopy;
  dispatch_async(v8, block);
}

void __84__ATXNPlusOneStudyUploader_dryRunResultFilterByExtensionBundleId_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_home_screen(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __84__ATXNPlusOneStudyUploader_dryRunResultFilterByExtensionBundleId_completionHandler___block_invoke_cold_1();
  }

  v4 = [*(a1 + 32) _emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:0];
  v5 = v4;
  if (*(a1 + 40))
  {
    v6 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          v13 = [v12 extensionBundleId];
          v14 = [v13 isEqualToString:*(a1 + 40)];

          if (v14)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = v4;
  }

  v15 = [*(a1 + 32) _preparedEventsFromEmptyEvents:v6 activity:0];

  v16 = [*(a1 + 32) _applyPrivacyFilterToEvents:v15];

  v17 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v31;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v30 + 1) + 8 * j);
        v24 = [v23 coreAnalyticsEvent];
        v25 = [v24 mutableCopy];

        v26 = [v23 appScreenTimeCategory] - 1;
        v27 = @"Unknown";
        if (v26 <= 0xE)
        {
          v27 = off_27859D940[v26];
        }

        [v25 setObject:v27 forKeyedSubscript:@"appScreenTimeCategory"];
        [v17 addObject:v25];
      }

      v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v20);
  }

  v29 = __atxlog_handle_home_screen(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    __84__ATXNPlusOneStudyUploader_dryRunResultFilterByExtensionBundleId_completionHandler___block_invoke_cold_2(v18);
  }

  (*(*(a1 + 48) + 16))();
}

- (id)_emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:(id)activity
{
  activityCopy = activity;
  mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
  v18 = 0;
  v5 = [mEMORY[0x277CEB998] fetchHomeScreenWidgetDescriptorMetadataWithError:&v18];
  v6 = v18;

  if (v6)
  {
    v8 = __atxlog_handle_home_screen(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXNPlusOneStudyUploader _emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:];
    }

    v9 = 0;
  }

  else
  {
    v10 = objc_opt_new();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __84__ATXNPlusOneStudyUploader__emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity___block_invoke;
    v15[3] = &unk_27859D858;
    v16 = activityCopy;
    v11 = v10;
    v17 = v11;
    v12 = __atxlog_handle_home_screen([v5 enumerateKeysAndObjectsUsingBlock:v15]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ATXNPlusOneStudyUploader _emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:v11];
    }

    v13 = v17;
    v8 = v11;

    v9 = v8;
  }

  return v9;
}

void __84__ATXNPlusOneStudyUploader__emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if ([*(a1 + 32) didDefer])
  {
    *a4 = 1;
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [v7 extensionBundleId];
    [v9 setExtensionBundleId:v10];

    v11 = [v7 kind];
    [v9 setWidgetKind:v11];

    v12 = [v8 containerBundleId];
    v13 = [v12 length];

    if (v13)
    {
      v15 = [v8 containerBundleId];
      [v9 setAppBundleId:v15];
    }

    else
    {
      v15 = __atxlog_handle_home_screen(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __84__ATXNPlusOneStudyUploader__emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity___block_invoke_cold_1(v9);
      }
    }

    [*(a1 + 40) addObject:v9];
  }
}

- (void)_sendEventsToCoreAnalytics:(id)analytics
{
  v16 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v4 = __atxlog_handle_home_screen(analyticsCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _sendEventsToCoreAnalytics:];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = analyticsCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        coreAnalyticsEvent = [*(*(&v11 + 1) + 8 * v9) coreAnalyticsEvent];
        AnalyticsSendEvent();

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)_preparedEventsFromEmptyEvents:(id)events activity:(id)activity
{
  activityCopy = activity;
  v7 = [(ATXNPlusOneStudyUploader *)self _preparedEvents_widgetExistsOnScreen:events activity:activityCopy];
  if (![v7 count] || (objc_msgSend(activityCopy, "didDefer") & 1) != 0)
  {
    goto LABEL_3;
  }

  v9 = [(ATXNPlusOneStudyUploader *)self _preparedEvents_appPushNotificationEnabled:v7 activity:activityCopy];

  if (![v9 count] || (objc_msgSend(activityCopy, "didDefer") & 1) != 0)
  {
    goto LABEL_6;
  }

  v7 = [(ATXNPlusOneStudyUploader *)self _preparedEvents_appLaunchPopularity:v9 activity:activityCopy];

  if (![v7 count] || (objc_msgSend(activityCopy, "didDefer") & 1) != 0)
  {
    goto LABEL_3;
  }

  v9 = [(ATXNPlusOneStudyUploader *)self _preparedEvents_appScreenTimeCategory:v7 activity:activityCopy];

  if (![v9 count] || (objc_msgSend(activityCopy, "didDefer") & 1) != 0)
  {
LABEL_6:
    v8 = 0;
    v7 = v9;
    goto LABEL_7;
  }

  v7 = [(ATXNPlusOneStudyUploader *)self _preparedEvents_numAppLaunches:v9 activity:activityCopy];

  if (![v7 count] || (objc_msgSend(activityCopy, "didDefer") & 1) != 0)
  {
LABEL_3:
    v8 = 0;
    goto LABEL_7;
  }

  v11 = [(ATXNPlusOneStudyUploader *)self _preparedEvents_suggestionCounts:v7 activity:activityCopy];

  v13 = __atxlog_handle_home_screen(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _preparedEventsFromEmptyEvents:activity:];
  }

  v7 = v11;
  v8 = v7;
LABEL_7:

  return v8;
}

- (id)_preparedEvents_widgetExistsOnScreen:(id)screen activity:(id)activity
{
  v72 = *MEMORY[0x277D85DE8];
  screenCopy = screen;
  activityCopy = activity;
  v6 = __atxlog_handle_home_screen(activityCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _preparedEvents_widgetExistsOnScreen:activity:];
  }

  v67 = 0;
  v41 = objc_opt_new();
  v7 = [v41 loadHomeScreenAndTodayPageConfigurationsWithError:&v67];
  v8 = v67;
  v42 = v8;
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  v40 = v7;
  if (v9)
  {
    v39 = screenCopy;
    v10 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = v7;
    v45 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v45)
    {
      v44 = *v64;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v64 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v63 + 1) + 8 * v12);
          if ([activityCopy didDefer])
          {
            screenCopy = v39;
            v11 = v39;

            goto LABEL_43;
          }

          v47 = v12;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          stacks = [v13 stacks];
          v50 = [stacks countByEnumeratingWithState:&v59 objects:v70 count:16];
          if (v50)
          {
            v49 = *v60;
            do
            {
              for (i = 0; i != v50; ++i)
              {
                if (*v60 != v49)
                {
                  objc_enumerationMutation(stacks);
                }

                v15 = *(*(&v59 + 1) + 8 * i);
                v55 = 0u;
                v56 = 0u;
                v57 = 0u;
                v58 = 0u;
                widgets = [v15 widgets];
                v17 = [widgets countByEnumeratingWithState:&v55 objects:v69 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v56;
                  do
                  {
                    for (j = 0; j != v18; ++j)
                    {
                      if (*v56 != v19)
                      {
                        objc_enumerationMutation(widgets);
                      }

                      v21 = *(*(&v55 + 1) + 8 * j);
                      extensionBundleId = [v21 extensionBundleId];
                      v23 = [v10 objectForKeyedSubscript:extensionBundleId];

                      if (!v23)
                      {
                        v24 = objc_opt_new();
                        extensionBundleId2 = [v21 extensionBundleId];
                        [v10 setObject:v24 forKeyedSubscript:extensionBundleId2];
                      }

                      extensionBundleId3 = [v21 extensionBundleId];
                      v27 = [v10 objectForKeyedSubscript:extensionBundleId3];
                      widgetKind = [v21 widgetKind];
                      [v27 addObject:widgetKind];
                    }

                    v18 = [widgets countByEnumeratingWithState:&v55 objects:v69 count:16];
                  }

                  while (v18);
                }
              }

              v50 = [stacks countByEnumeratingWithState:&v59 objects:v70 count:16];
            }

            while (v50);
          }

          v12 = v47 + 1;
        }

        while (v47 + 1 != v45);
        v45 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (v45)
        {
          continue;
        }

        break;
      }
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v29 = v39;
    v30 = [v29 countByEnumeratingWithState:&v51 objects:v68 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v52;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v52 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v51 + 1) + 8 * k);
          extensionBundleId4 = [v34 extensionBundleId];
          v36 = [v10 objectForKeyedSubscript:extensionBundleId4];
          widgetKind2 = [v34 widgetKind];
          [v34 setWidgetExistsOnScreen:{objc_msgSend(v36, "containsObject:", widgetKind2)}];
        }

        v31 = [v29 countByEnumeratingWithState:&v51 objects:v68 count:16];
      }

      while (v31);
    }

    v11 = v29;
    screenCopy = v39;
  }

  else
  {
    v10 = __atxlog_handle_home_screen(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXNPlusOneStudyUploader _preparedEvents_widgetExistsOnScreen:activity:];
    }

    v11 = 0;
  }

LABEL_43:

  return v11;
}

- (id)_preparedEvents_appPushNotificationEnabled:(id)enabled activity:(id)activity
{
  v33 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  activityCopy = activity;
  v7 = __atxlog_handle_home_screen(activityCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _preparedEvents_appPushNotificationEnabled:activity:];
  }

  currentNotificationSettingsCenter = [MEMORY[0x277D77F68] currentNotificationSettingsCenter];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = enabledCopy;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
LABEL_5:
    v13 = 0;
    v27 = v11;
    while (1)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v28 + 1) + 8 * v13);
      if ([activityCopy didDefer])
      {
        break;
      }

      appBundleId = [v14 appBundleId];

      if (appBundleId)
      {
        appBundleId2 = [v14 appBundleId];
        v17 = [currentNotificationSettingsCenter notificationSourceWithIdentifier:appBundleId2];

        if (([v17 isHiddenFromSettings] & 1) != 0 || (objc_msgSend(v17, "sourceSettings"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "notificationSettings"), v19 = v9, v20 = currentNotificationSettingsCenter, v21 = objc_claimAutoreleasedReturnValue(), v22 = v12, v23 = objc_msgSend(v21, "authorizationStatus"), v21, currentNotificationSettingsCenter = v20, v9 = v19, v18, v24 = v23 == 1, v12 = v22, v11 = v27, !v24))
        {
          [v14 setAppPushNotificationEnabled:1];
        }
      }

      else
      {
        [v14 setAppPushNotificationEnabled:1];
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:

    v25 = v9;
  }

  return v9;
}

- (id)_preparedEvents_appLaunchPopularity:(id)popularity activity:(id)activity
{
  v25 = *MEMORY[0x277D85DE8];
  popularityCopy = popularity;
  activityCopy = activity;
  v7 = __atxlog_handle_home_screen(activityCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _preparedEvents_appLaunchPopularity:activity:];
  }

  v8 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v9 = [v8 histogramForLaunchType:0];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = popularityCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
LABEL_5:
    v14 = 0;
    while (1)
    {
      if (*v21 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v20 + 1) + 8 * v14);
      if ([activityCopy didDefer])
      {
        break;
      }

      appBundleId = [v15 appBundleId];

      if (appBundleId)
      {
        appBundleId2 = [v15 appBundleId];
        [v9 overallLaunchPopularityForBundleId:appBundleId2];
        [v15 setAppLaunchPopularity:?];
      }

      else
      {
        [v15 setAppLaunchPopularity:1.0];
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:

    v18 = v10;
  }

  return v10;
}

- (id)_preparedEvents_appScreenTimeCategory:(id)category activity:(id)activity
{
  categoryCopy = category;
  activityCopy = activity;
  v7 = __atxlog_handle_home_screen(activityCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _preparedEvents_appScreenTimeCategory:activity:];
  }

  v8 = objc_opt_new();
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke;
  v15 = &unk_27859D8A8;
  v16 = activityCopy;
  v17 = v8;
  v9 = v8;
  v10 = activityCopy;
  [categoryCopy enumerateObjectsUsingBlock:&v12];
  [categoryCopy removeObjectsAtIndexes:{v9, v12, v13, v14, v15}];

  return categoryCopy;
}

void __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) didDefer])
  {
    *a4 = 1;
  }

  else
  {
    v8 = [v7 appBundleId];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = dispatch_semaphore_create(0);
      v11 = MEMORY[0x277CF9658];
      v12 = [v7 appBundleId];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_2;
      v21[3] = &unk_27859D880;
      v13 = v7;
      v22 = v13;
      v14 = *(a1 + 40);
      v24 = v10;
      v25 = a3;
      v23 = v14;
      v15 = v10;
      [v11 categoryForBundleID:v12 withCompletionHandler:v21];

      v16 = MEMORY[0x277D425A0];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_213;
      v17[3] = &unk_278599E28;
      v18 = v13;
      v19 = *(a1 + 40);
      v20 = a3;
      [v16 waitForSemaphore:v15 timeoutSeconds:0 onAcquire:v17 onTimeout:5.0];

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      [v7 setAppScreenTimeCategory:0];
    }
  }
}

void __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = __atxlog_handle_home_screen(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 40) addIndex:*(a1 + 56)];
  }

  else
  {
    v8 = [a2 identifier];
    if ([v8 isEqualToString:*MEMORY[0x277CF9618]])
    {
      v9 = 1;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CF9610]])
    {
      v9 = 2;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CF9620]])
    {
      v9 = 3;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CF95D8]])
    {
      v9 = 4;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CF9608]])
    {
      v9 = 5;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CF95D0]])
    {
      v9 = 6;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CF95C0]])
    {
      v9 = 7;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CF95F0]])
    {
      v9 = 8;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CF95C8]])
    {
      v9 = 9;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CF95F8]])
    {
      v9 = 10;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CF95E0]])
    {
      v9 = 11;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CF95E8]])
    {
      v9 = 12;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CF9630]])
    {
      v9 = 13;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CF9600]])
    {
      v9 = 14;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CF9628]])
    {
      v9 = 15;
    }

    else
    {
      v9 = 0;
    }

    [*(a1 + 32) setAppScreenTimeCategory:v9];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_213(uint64_t a1, uint64_t a2)
{
  v3 = __atxlog_handle_home_screen(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_213_cold_1(a1);
  }

  return [*(a1 + 40) addIndex:*(a1 + 48)];
}

- (id)_preparedEvents_numAppLaunches:(id)launches activity:(id)activity
{
  v60 = *MEMORY[0x277D85DE8];
  launchesCopy = launches;
  activityCopy = activity;
  v7 = __atxlog_handle_home_screen(activityCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _preparedEvents_numAppLaunches:activity:];
  }

  v8 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v9 = launchesCopy;
  v10 = [v9 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v10)
  {
    v11 = *v56;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v56 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v55 + 1) + 8 * i);
        appBundleId = [v13 appBundleId];
        v15 = appBundleId == 0;

        if (v15)
        {
          appBundleId4 = objc_opt_new();
          [v13 setAppLaunchCounts:appBundleId4];
        }

        else
        {
          appBundleId2 = [v13 appBundleId];
          v17 = [v8 objectForKeyedSubscript:appBundleId2];
          v18 = v17 == 0;

          if (v18)
          {
            v19 = objc_opt_new();
            appBundleId3 = [v13 appBundleId];
            [v8 setObject:v19 forKeyedSubscript:appBundleId3];
          }

          appBundleId4 = [v13 appBundleId];
          v22 = [v8 objectForKeyedSubscript:appBundleId4];
          [v13 setAppLaunchCounts:v22];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v10);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v24 = v23;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v26 = v25;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v28 = v27;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v30 = v29;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v32 = v31;
  if ([activityCopy didDefer])
  {
    v33 = v9;
  }

  else
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__57;
    v53 = __Block_byref_object_dispose__57;
    v54 = v9;
    v34 = BiomeLibrary();
    v35 = [v34 App];
    inFocus = [v35 InFocus];
    v37 = [MEMORY[0x277CCABB0] numberWithDouble:v32 + -2419200.0];
    v38 = [inFocus atx_publisherFromStartTime:v37];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke;
    v48[3] = &unk_278597540;
    v48[4] = &v49;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke_218;
    v41[3] = &unk_27859D8D0;
    v42 = activityCopy;
    v43 = v8;
    v44 = v30 + -1209600.0;
    v45 = v28 + -604800.0;
    v46 = v26 + -259200.0;
    v47 = v24 + -86400.0;
    v39 = [v38 sinkWithCompletion:v48 receiveInput:v41];

    v33 = v50[5];
    _Block_object_dispose(&v49, 8);
  }

  return v33;
}

void __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (v4)
  {
    v5 = __atxlog_handle_home_screen(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke_cold_1(v3);
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

void __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke_218(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) didDefer] & 1) == 0)
  {
    v4 = [v3 eventBody];

    if (v4)
    {
      v6 = [v3 eventBody];
      if ([v6 starting])
      {
        v7 = *(a1 + 40);
        v8 = [v6 bundleID];
        v9 = [v7 objectForKeyedSubscript:v8];

        if (v9)
        {
          v10 = *(a1 + 40);
          v11 = [v6 bundleID];
          v12 = [v10 objectForKeyedSubscript:v11];

          [v12 setNumAppLaunchPast28Day:{objc_msgSend(v12, "numAppLaunchPast28Day") + 1}];
          v13 = [v6 absoluteTimestamp];
          [v13 timeIntervalSinceReferenceDate];
          v15 = v14;
          v16 = *(a1 + 48);

          if (v15 > v16)
          {
            [v12 setNumAppLaunchPast14Day:{objc_msgSend(v12, "numAppLaunchPast14Day") + 1}];
          }

          v17 = [v6 absoluteTimestamp];
          [v17 timeIntervalSinceReferenceDate];
          v19 = v18;
          v20 = *(a1 + 56);

          if (v19 > v20)
          {
            [v12 setNumAppLaunchPast7Day:{objc_msgSend(v12, "numAppLaunchPast7Day") + 1}];
          }

          v21 = [v6 absoluteTimestamp];
          [v21 timeIntervalSinceReferenceDate];
          v23 = v22;
          v24 = *(a1 + 64);

          if (v23 > v24)
          {
            [v12 setNumAppLaunchPast3Day:{objc_msgSend(v12, "numAppLaunchPast3Day") + 1}];
          }

          v25 = [v6 absoluteTimestamp];
          [v25 timeIntervalSinceReferenceDate];
          v27 = v26;
          v28 = *(a1 + 72);

          if (v27 > v28)
          {
            [v12 setNumAppLaunchPastDay:{objc_msgSend(v12, "numAppLaunchPastDay") + 1}];
          }
        }
      }
    }

    else
    {
      v29 = __atxlog_handle_home_screen(v5);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke_218_cold_1(v3);
      }
    }
  }
}

- (id)_preparedEvents_suggestionCounts:(id)counts activity:(id)activity
{
  v99 = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  activityCopy = activity;
  v6 = __atxlog_handle_home_screen(activityCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _preparedEvents_suggestionCounts:activity:];
  }

  v7 = objc_opt_new();
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v8 = countsCopy;
  v9 = [v8 countByEnumeratingWithState:&v82 objects:v98 count:16];
  if (v9)
  {
    v10 = *v83;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v83 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v82 + 1) + 8 * i);
        extensionBundleId = [v12 extensionBundleId];
        widgetKind = [v12 widgetKind];
        v15 = [extensionBundleId stringByAppendingString:widgetKind];

        [v7 setObject:v12 forKeyedSubscript:v15];
      }

      v9 = [v8 countByEnumeratingWithState:&v82 objects:v98 count:16];
    }

    while (v9);
  }

  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__57;
  v56 = __Block_byref_object_dispose__57;
  v36 = v8;
  v57 = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__ATXNPlusOneStudyUploader__preparedEvents_suggestionCounts_activity___block_invoke;
  aBlock[3] = &unk_27859D8F8;
  v18 = v16;
  v46 = v18;
  v19 = v7;
  v47 = v19;
  v48 = &v52;
  v49 = &v70;
  v50 = &v74;
  v51 = &v78;
  v20 = _Block_copy(aBlock);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __70__ATXNPlusOneStudyUploader__preparedEvents_suggestionCounts_activity___block_invoke_223;
  v38[3] = &unk_27859D8F8;
  v21 = v17;
  v39 = v21;
  v22 = v19;
  v40 = v22;
  v41 = &v52;
  v42 = &v58;
  v43 = &v62;
  v44 = &v66;
  v23 = _Block_copy(v38);
  if ([activityCopy didDefer])
  {
    goto LABEL_15;
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v25 = [(ATXNPlusOneStudyUploader *)self _processClientModelUpdateStreamFromStartTime:v20 shortcutSuggestionHandler:v23 infoSuggestionHandler:activityCopy activity:v24 + -86400.0];
  if (v25)
  {
    v26 = __atxlog_handle_home_screen(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v29 = v79[3];
      v30 = v75[3];
      v31 = v71[3];
      v32 = v67[3];
      v33 = v63[3];
      v34 = v59[3];
      *buf = 134219264;
      v87 = v29;
      v88 = 2048;
      v89 = v30;
      v90 = 2048;
      v91 = v31;
      v92 = 2048;
      v93 = v32;
      v94 = 2048;
      v95 = v33;
      v96 = 2048;
      v97 = v34;
      _os_log_debug_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEBUG, "ATXNPlusOneStudyUploader: totalShortcutConversionCount %lu (high threshold) %lu (med threshold) %lu (low threshold), totalInfoHeuristicsCount %lu (high threshold) %lu (med threshold) %lu (low threshold).", buf, 0x3Eu);
    }

LABEL_15:
    v27 = v53[5];
    goto LABEL_17;
  }

  v27 = 0;
LABEL_17:

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);

  return v27;
}

void __70__ATXNPlusOneStudyUploader__preparedEvents_suggestionCounts_activity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scoreSpecification];
  v5 = [v4 suggestedConfidenceCategory];

  if (v5 >= 2)
  {
    v6 = [v3 executableSpecification];
    v7 = [v6 executableClassString];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 isEqualToString:v9];

    if (v10)
    {
      v11 = [v3 executableSpecification];
      v12 = [v11 executableObject];

      if (([*(a1 + 32) containsObject:v12] & 1) == 0)
      {
        [*(a1 + 32) addObject:v12];
        v13 = [v12 intent];
        if (v13)
        {
          v14 = v13;
          v15 = +[ATXIntentMetadataCache sharedInstance];
          v16 = [v12 intent];
          v17 = [v15 isEligibleForWidgetsForIntent:v16];

          if (v17)
          {
            v18 = [MEMORY[0x277CEB998] sharedInstance];
            v19 = [v12 intent];
            v20 = [v18 homeScreenDescriptorForIntent:v19];

            if (v20)
            {
              v21 = [v20 extensionBundleIdentifier];
              v22 = [v20 kind];
              v23 = [v21 stringByAppendingString:v22];

              v24 = [*(a1 + 40) objectForKeyedSubscript:v23];
              v25 = v24;
              if (v24)
              {
                [v24 setSuggestionCountShortcutConversionLow:{objc_msgSend(v24, "suggestionCountShortcutConversionLow") + 1}];
                ++*(*(*(a1 + 56) + 8) + 24);
                v26 = [v3 scoreSpecification];
                v27 = [v26 suggestedConfidenceCategory];

                if (v27 >= 3)
                {
                  [v25 setSuggestionCountShortcutConversionMed:{objc_msgSend(v25, "suggestionCountShortcutConversionMed") + 1}];
                  ++*(*(*(a1 + 64) + 8) + 24);
                  v28 = [v3 scoreSpecification];
                  v29 = [v28 suggestedConfidenceCategory];

                  if (v29 == 4)
                  {
                    [v25 setSuggestionCountShortcutConversionHigh:{objc_msgSend(v25, "suggestionCountShortcutConversionHigh") + 1}];
                    ++*(*(*(a1 + 72) + 8) + 24);
                  }
                }
              }

              else
              {
                v30 = __atxlog_handle_home_screen(0);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
                {
                  __70__ATXNPlusOneStudyUploader__preparedEvents_suggestionCounts_activity___block_invoke_cold_1();
                }

                v31 = *(*(a1 + 48) + 8);
                v32 = *(v31 + 40);
                *(v31 + 40) = 0;
              }
            }
          }
        }
      }
    }
  }
}

void __70__ATXNPlusOneStudyUploader__preparedEvents_suggestionCounts_activity___block_invoke_223(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scoreSpecification];
  v5 = [v4 suggestedConfidenceCategory];

  if (v5 >= 2)
  {
    v6 = [v3 executableSpecification];
    v7 = [v6 executableObject];

    v8 = *(a1 + 32);
    v9 = [v7 suggestionIdentifier];
    LOBYTE(v8) = [v8 containsObject:v9];

    if ((v8 & 1) == 0)
    {
      v10 = *(a1 + 32);
      v11 = [v7 suggestionIdentifier];
      [v10 addObject:v11];

      v12 = [v7 widgetBundleIdentifier];
      v13 = [v7 widgetKind];
      v14 = [v12 stringByAppendingString:v13];

      v15 = [*(a1 + 40) objectForKeyedSubscript:v14];
      v16 = v15;
      if (v15)
      {
        [v15 setSuggestionCountInfoHeuristicLow:{objc_msgSend(v15, "suggestionCountInfoHeuristicLow") + 1}];
        ++*(*(*(a1 + 56) + 8) + 24);
        v17 = [v3 scoreSpecification];
        v18 = [v17 suggestedConfidenceCategory];

        if (v18 >= 3)
        {
          [v16 setSuggestionCountInfoHeuristicMed:{objc_msgSend(v16, "suggestionCountInfoHeuristicMed") + 1}];
          ++*(*(*(a1 + 64) + 8) + 24);
          v19 = [v3 scoreSpecification];
          v20 = [v19 suggestedConfidenceCategory];

          if (v20 == 4)
          {
            [v16 setSuggestionCountInfoHeuristicHigh:{objc_msgSend(v16, "suggestionCountInfoHeuristicHigh") + 1}];
            ++*(*(*(a1 + 72) + 8) + 24);
          }
        }
      }

      else
      {
        v21 = __atxlog_handle_home_screen(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          __70__ATXNPlusOneStudyUploader__preparedEvents_suggestionCounts_activity___block_invoke_223_cold_1();
        }

        v22 = *(*(a1 + 48) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = 0;
      }
    }
  }
}

- (BOOL)_processClientModelUpdateStreamFromStartTime:(double)time shortcutSuggestionHandler:(id)handler infoSuggestionHandler:(id)suggestionHandler activity:(id)activity
{
  handlerCopy = handler;
  suggestionHandlerCopy = suggestionHandler;
  activityCopy = activity;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v28 = 0;
  v29[0] = &v28;
  v29[1] = 0x2020000000;
  v29[2] = 0;
  v12 = objc_opt_new();
  v13 = [v12 publisherFromStartTime:time];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke;
  v27[3] = &unk_278597540;
  v27[4] = &v30;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke_225;
  v22[3] = &unk_27859D920;
  v14 = activityCopy;
  v23 = v14;
  v15 = handlerCopy;
  v24 = v15;
  v26 = &v28;
  v16 = suggestionHandlerCopy;
  v25 = v16;
  v17 = [v13 sinkWithCompletion:v27 receiveInput:v22];

  v19 = __atxlog_handle_home_screen(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [ATXNPlusOneStudyUploader _processClientModelUpdateStreamFromStartTime:v29 shortcutSuggestionHandler:v19 infoSuggestionHandler:? activity:?];
  }

  v20 = *(v31 + 24);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v30, 8);

  return v20;
}

void __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (v4)
  {
    v5 = __atxlog_handle_home_screen(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke_cold_1(v3);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke_225(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) didDefer] & 1) == 0)
  {
    v4 = [v3 eventBody];

    if (!v4)
    {
      v6 = __atxlog_handle_home_screen(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke_225_cold_1(v3);
      }

      goto LABEL_15;
    }

    v6 = [v3 eventBody];
    v7 = MEMORY[0x277D42070];
    v8 = [v6 clientModelId];
    v9 = [v7 clientModelTypeFromClientModelId:v8];

    if (v9 <= 0x12)
    {
      if (((1 << v9) & 0x88A) != 0)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = [v6 suggestions];
        v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v26;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = objc_autoreleasePoolPush();
              (*(*(a1 + 40) + 16))();
              objc_autoreleasePoolPop(v15);
            }

            v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
          }

          while (v12);
        }
      }

      else
      {
        if (v9 != 18)
        {
          goto LABEL_15;
        }

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = [v6 suggestions];
        v16 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v22;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v22 != v18)
              {
                objc_enumerationMutation(v10);
              }

              v20 = objc_autoreleasePoolPush();
              (*(*(a1 + 48) + 16))();
              objc_autoreleasePoolPop(v20);
            }

            v17 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v17);
        }
      }

      ++*(*(*(a1 + 56) + 8) + 24);
    }

LABEL_15:
  }
}

- (id)_applyPrivacyFilterToEvents:(id)events
{
  v21 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if ([MEMORY[0x277D42590] isInternalBuild])
  {
    v4 = eventsCopy;
  }

  else
  {
    v4 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = eventsCopy;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          appBundleId = [v10 appBundleId];
          if (appBundleId)
          {
            v12 = appBundleId;
            appLaunchCounts = [v10 appLaunchCounts];
            numAppLaunchPast28Day = [appLaunchCounts numAppLaunchPast28Day];

            if (numAppLaunchPast28Day < 5)
            {
              continue;
            }
          }

          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

void __84__ATXNPlusOneStudyUploader_dryRunResultFilterByExtensionBundleId_completionHandler___block_invoke_cold_2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "ATXNPlusOneStudyUploader: Sent %lu events to atxtool.", v3, v4, v5, v6);
}

- (void)_emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "ATXNPlusOneStudyUploader: Error fetching widget descriptors - %{public}@", v1, 0xCu);
}

- (void)_emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity:(void *)a1 .cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "ATXNPlusOneStudyUploader: There are %lu widgets eligible for N+1 on this device.", v3, v4, v5, v6);
}

void __84__ATXNPlusOneStudyUploader__emptyEventsForAllWidgetDescriptorsOnDeviceWithActivity___block_invoke_cold_1(void *a1)
{
  v2 = [a1 extensionBundleId];
  v8 = [a1 widgetKind];
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_preparedEvents_widgetExistsOnScreen:activity:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "ATXNPlusOneStudyUploader: Error loading Home Screen config - %{public}@", v1, 0xCu);
}

void __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) appBundleId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __75__ATXNPlusOneStudyUploader__preparedEvents_appScreenTimeCategory_activity___block_invoke_213_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) appBundleId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __68__ATXNPlusOneStudyUploader__preparedEvents_numAppLaunches_activity___block_invoke_218_cold_1(void *a1)
{
  [a1 error];
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)_processClientModelUpdateStreamFromStartTime:(uint64_t)a1 shortcutSuggestionHandler:(NSObject *)a2 infoSuggestionHandler:activity:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 24);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXNPlusOneStudyUploader: Processed %lu relevant client model updates in the past 24 hrs.", &v3, 0xCu);
}

void __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __130__ATXNPlusOneStudyUploader__processClientModelUpdateStreamFromStartTime_shortcutSuggestionHandler_infoSuggestionHandler_activity___block_invoke_225_cold_1(void *a1)
{
  [a1 error];
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

@end