@interface ATXHomeScreenLogUploader
+ (BOOL)_shouldProcessATXUIEvent:(id)event startTime:(double)time;
- (ATXHomeScreenLogUploader)init;
- (void)uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:(id)activity customStartDate:(id)date dryRunCompletionHandler:(id)handler;
@end

@implementation ATXHomeScreenLogUploader

- (ATXHomeScreenLogUploader)init
{
  v20.receiver = self;
  v20.super_class = ATXHomeScreenLogUploader;
  v2 = [(ATXHomeScreenLogUploader *)&v20 init];
  if (v2)
  {
    v3 = objc_opt_new();
    widgetSetupDictionaries = v2->_widgetSetupDictionaries;
    v2->_widgetSetupDictionaries = v3;

    v5 = objc_opt_new();
    widgetEventDictionaries = v2->_widgetEventDictionaries;
    v2->_widgetEventDictionaries = v5;

    v7 = objc_opt_new();
    widgetRotationDictionaries = v2->_widgetRotationDictionaries;
    v2->_widgetRotationDictionaries = v7;

    v9 = objc_opt_new();
    systemEventDictionary = v2->_systemEventDictionary;
    v2->_systemEventDictionary = v9;

    v11 = objc_opt_new();
    systemChangeDictionary = v2->_systemChangeDictionary;
    v2->_systemChangeDictionary = v11;

    v13 = objc_opt_new();
    widgetAddSheetDictionaries = v2->_widgetAddSheetDictionaries;
    v2->_widgetAddSheetDictionaries = v13;

    v15 = objc_opt_new();
    widgetDiscoverabilityDictionaries = v2->_widgetDiscoverabilityDictionaries;
    v2->_widgetDiscoverabilityDictionaries = v15;

    v17 = objc_opt_new();
    tvWidgetLogHarvester = v2->_tvWidgetLogHarvester;
    v2->_tvWidgetLogHarvester = v17;
  }

  return v2;
}

+ (BOOL)_shouldProcessATXUIEvent:(id)event startTime:(double)time
{
  homeScreenEvent = [event homeScreenEvent];
  v6 = homeScreenEvent;
  if (homeScreenEvent && ([homeScreenEvent date], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "timeIntervalSinceReferenceDate"), v9 = v8, v7, v9 > time))
  {
    eventTypeString = [v6 eventTypeString];
    if ([eventTypeString isEqualToString:@"Unknown"])
    {
      v11 = 0;
    }

    else if ([eventTypeString isEqualToString:@"HomeScreenPageShown"])
    {
      v11 = 1;
    }

    else if ([eventTypeString isEqualToString:@"HomeScreenDisappeared"])
    {
      v11 = 2;
    }

    else if ([eventTypeString isEqualToString:@"StackChanged"])
    {
      v11 = 3;
    }

    else if ([eventTypeString isEqualToString:@"WidgetTapped"])
    {
      v11 = 4;
    }

    else if ([eventTypeString isEqualToString:@"WidgetLongLook"])
    {
      v11 = 5;
    }

    else if ([eventTypeString isEqualToString:@"WidgetUserFeedback"])
    {
      v11 = 6;
    }

    else if ([eventTypeString isEqualToString:@"UserStackConfigChanged"])
    {
      v11 = 7;
    }

    else if ([eventTypeString isEqualToString:@"DeviceLocked"])
    {
      v11 = 8;
    }

    else if ([eventTypeString isEqualToString:@"DeviceUnlocked"])
    {
      v11 = 9;
    }

    else if ([eventTypeString isEqualToString:@"PinnedWidgetAdded"])
    {
      v11 = 10;
    }

    else if ([eventTypeString isEqualToString:@"PinnedWidgetDeleted"])
    {
      v11 = 11;
    }

    else if ([eventTypeString isEqualToString:@"SpecialPageAppeared"])
    {
      v11 = 12;
    }

    else if ([eventTypeString isEqualToString:@"SpecialPageDisappeared"])
    {
      v11 = 13;
    }

    else if ([eventTypeString isEqualToString:@"StackShown"])
    {
      v11 = 14;
    }

    else if ([eventTypeString isEqualToString:@"StackDisappeared"])
    {
      v11 = 15;
    }

    else if ([eventTypeString isEqualToString:@"StackCreated"])
    {
      v11 = 16;
    }

    else if ([eventTypeString isEqualToString:@"StackDeleted"])
    {
      v11 = 17;
    }

    else if ([eventTypeString isEqualToString:@"WidgetAddedToStack"])
    {
      v11 = 18;
    }

    else if ([eventTypeString isEqualToString:@"WidgetRemovedFromStack"])
    {
      v11 = 19;
    }

    else if ([eventTypeString isEqualToString:@"StackVisibilityChanged"])
    {
      v11 = 20;
    }

    else if ([eventTypeString isEqualToString:@"AppAdded"])
    {
      v11 = 21;
    }

    else if ([eventTypeString isEqualToString:@"AppRemoved"])
    {
      v11 = 22;
    }

    else
    {
      v11 = 0;
    }

    v12 = vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v11 & 0x1E), xmmword_226872D40))) | ((v11 & 0x1E) == 8) | ((v11 - 3) < 2);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t __73__ATXHomeScreenLogUploader__timeBasedMergePublisher_withOtherPublishers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 timestamp];
  v7 = v6;
  [v5 timestamp];
  if (v7 >= v8)
  {
    [v4 timestamp];
    v11 = v10;
    [v5 timestamp];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:(id)activity customStartDate:(id)date dryRunCompletionHandler:(id)handler
{
  v132[2] = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  dateCopy = date;
  handlerCopy = handler;
  if (([activityCopy didDefer] & 1) == 0)
  {
    v81 = handlerCopy;
    v11 = objc_opt_new();
    v128 = 0;
    v83 = [v11 loadHomeScreenAndTodayPageConfigurationsWithError:&v128];
    v82 = v128;

    if (!v83 || v82)
    {
      v15 = __atxlog_handle_home_screen(v12);
      v16 = v15;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ATXHomeScreenLogUploader uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:];
        v16 = v15;
      }
    }

    else
    {
      if ([activityCopy didDefer])
      {
LABEL_47:

        handlerCopy = v81;
        goto LABEL_48;
      }

      if (dateCopy)
      {
        [dateCopy timeIntervalSinceNow];
        v14 = -v13;
      }

      else
      {
        v14 = 86400.0;
      }

      v80 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v14];
      [v80 timeIntervalSinceReferenceDate];
      v18 = v17;
      [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary updateSystemLevelSummaryForHomeScreenPages:v83 startDate:v80];
      [(ATXHomeScreenLogSystemChangeDictionary *)self->_systemChangeDictionary updateSystemChangeSummaryForHomeScreenPages:v83];
      [(ATXHomeScreenLogWidgetSetupDictionaries *)self->_widgetSetupDictionaries updateWidgetSetupSummaryForHomeScreenPages:v83];
      [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self->_widgetDiscoverabilityDictionaries generateWidgetDiscoverabilityMetricsWithActivity:activityCopy];
      [(ATXTVWidgetLogHarvester *)self->_tvWidgetLogHarvester generateTVWidgetMetrics];
      if (([activityCopy didDefer] & 1) == 0)
      {
        objc_initWeak(&location, self);
        v19 = dispatch_semaphore_create(0);
        mEMORY[0x277CEB450] = [MEMORY[0x277CEB450] sharedInstance];
        if ([MEMORY[0x277D42590] isiPad])
        {
          v20 = 2;
        }

        else
        {
          v20 = 0;
        }

        v124[0] = MEMORY[0x277D85DD0];
        v124[1] = 3221225472;
        v124[2] = __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke;
        v124[3] = &unk_2785A1A68;
        v21 = v19;
        v125 = v21;
        objc_copyWeak(&v126, &location);
        [mEMORY[0x277CEB450] fetchSuggestedGalleryItemsOfGridSize:v20 widgetFamilyMask:7294 withCompletionHandler:v124];
        v22 = [MEMORY[0x277D425A0] waitForSemaphore:v21 timeoutSeconds:2.0];
        if (v22 == 1)
        {
          v23 = __atxlog_handle_home_screen(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [ATXHomeScreenLogUploader uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:];
          }
        }

        v24 = dispatch_semaphore_create(0);
        v120[0] = MEMORY[0x277D85DD0];
        v120[1] = 3221225472;
        v120[2] = __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_30;
        v120[3] = &unk_2785A1A90;
        v78 = v24;
        v121 = v78;
        objc_copyWeak(&v123, &location);
        v25 = v21;
        v122 = v25;
        [mEMORY[0x277CEB450] fetchSmartStackOfVariant:0 completionHandler:v120];
        v26 = [MEMORY[0x277D425A0] waitForSemaphore:v78 timeoutSeconds:2.0];
        v71 = v25;
        if (v26 == 1)
        {
          v27 = __atxlog_handle_home_screen(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [ATXHomeScreenLogUploader uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:];
          }
        }

        v116 = 0;
        v117 = &v116;
        v118 = 0x2020000000;
        v119 = 0;
        v110 = 0;
        v111 = &v110;
        v112 = 0x3032000000;
        v113 = __Block_byref_object_copy__103;
        v114 = __Block_byref_object_dispose__103;
        v115 = objc_opt_new();
        v106 = 0;
        v107 = &v106;
        v108 = 0x2020000000;
        v109 = 0;
        v104[0] = 0;
        v104[1] = v104;
        v104[2] = 0x3032000000;
        v104[3] = __Block_byref_object_copy__103;
        v104[4] = __Block_byref_object_dispose__103;
        v105 = objc_opt_new();
        v102[0] = 0;
        v102[1] = v102;
        v102[2] = 0x2020000000;
        v103 = 0;
        v100[0] = 0;
        v100[1] = v100;
        v100[2] = 0x3032000000;
        v100[3] = __Block_byref_object_copy__103;
        v100[4] = __Block_byref_object_dispose__103;
        v101 = objc_opt_new();
        v28 = v14 + 43200.0;
        v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-(v14 + 43200.0)];
        [v29 timeIntervalSinceReferenceDate];
        v31 = v30;

        v32 = objc_opt_new();
        v77 = [v32 genericEventPublisherFromStartTime:v31];

        v33 = BiomeLibrary();
        v34 = [v33 App];
        inFocus = [v34 InFocus];
        v36 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
        v76 = [inFocus atx_publisherFromStartTime:v36];

        v37 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-(v28 + 3600.0)];
        [v37 timeIntervalSinceReferenceDate];
        v39 = v38;

        v40 = objc_opt_new();
        v75 = [v40 publisherFromStartTime:v39];

        v132[0] = v76;
        v132[1] = v75;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:2];
        v74 = [(ATXHomeScreenLogUploader *)self _timeBasedMergePublisher:v77 withOtherPublishers:v41];

        v42 = objc_opt_new();
        v43 = objc_opt_new();
        v44 = [v74 filterWithIsIncluded:&__block_literal_global_41_4];
        v89[0] = MEMORY[0x277D85DD0];
        v89[1] = 3221225472;
        v89[2] = __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_45;
        v89[3] = &unk_2785A1AB8;
        objc_copyWeak(v99, &location);
        v45 = activityCopy;
        v90 = v45;
        v93 = &v116;
        v72 = v43;
        v91 = v72;
        v46 = v42;
        v99[1] = v18;
        v73 = v46;
        v92 = v46;
        v94 = &v106;
        v95 = v100;
        v96 = v102;
        v97 = v104;
        v98 = &v110;
        v47 = [v44 sinkWithCompletion:&__block_literal_global_44_4 receiveInput:v89];

        if (([v45 didDefer] & 1) == 0)
        {
          [(ATXHomeScreenLogWidgetSetupDictionaries *)self->_widgetSetupDictionaries updateWidgetLevelParentAppLaunches:v111[5]];
          v48 = v117[3];
          timeIntervalSinceReferenceDate = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          if (v48 >= v50)
          {
            v67 = __atxlog_handle_home_screen(timeIntervalSinceReferenceDate);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              [ATXHomeScreenLogUploader uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:];
            }
          }

          else
          {
            v51 = __atxlog_handle_home_screen(timeIntervalSinceReferenceDate);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              [ATXHomeScreenLogUploader uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:];
            }

            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            removeAndReturnCompletedSessions = [v73 removeAndReturnCompletedSessions];
            v53 = [removeAndReturnCompletedSessions countByEnumeratingWithState:&v85 objects:v131 count:16];
            if (v53)
            {
              v54 = *v86;
              do
              {
                for (i = 0; i != v53; ++i)
                {
                  if (*v86 != v54)
                  {
                    objc_enumerationMutation(removeAndReturnCompletedSessions);
                  }

                  v56 = *(*(&v85 + 1) + 8 * i);
                  sessionEndDate = [v56 sessionEndDate];
                  [sessionEndDate timeIntervalSinceReferenceDate];
                  v59 = v58 < *&v18;

                  if (!v59)
                  {
                    [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary updateSystemLevelSummaryWithRotationSession:v56];
                    [(ATXHomeScreenLogWidgetRotationDictionaries *)self->_widgetRotationDictionaries updateWithRotationSession:v56];
                  }
                }

                v53 = [removeAndReturnCompletedSessions countByEnumeratingWithState:&v85 objects:v131 count:16];
              }

              while (v53);
            }

            [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary updateSystemLevelSummaryTotalUnlockSessions:v107[3]];
            [(ATXHomeScreenLogWidgetSetupDictionaries *)self->_widgetSetupDictionaries updateTotalUnlockSessions:v107[3]];
            [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary populateUnlockSessionEngagementSummaryFromManager:v72];
            [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary populateLifetimeNPlusOneStatistics];
            [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary populateHasBehavioralData];
            [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary populateUsedKettle];
            if (v81)
            {
              v129[0] = @"System Event Dictionary";
              dryRunResult = [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary dryRunResult];
              v130[0] = dryRunResult;
              v129[1] = @"System Change Dictionary";
              dryRunResult2 = [(ATXHomeScreenLogSystemChangeDictionary *)self->_systemChangeDictionary dryRunResult];
              v130[1] = dryRunResult2;
              v129[2] = @"Widget Setup Dictionary";
              dryRunResult3 = [(ATXHomeScreenLogWidgetSetupDictionaries *)self->_widgetSetupDictionaries dryRunResult];
              v130[2] = dryRunResult3;
              v129[3] = @"Widget Event Dictionary";
              dryRunResult4 = [(ATXHomeScreenLogWidgetEventDictionaries *)self->_widgetEventDictionaries dryRunResult];
              v130[3] = dryRunResult4;
              v129[4] = @"Widget Add Sheet Dictionary";
              dryRunResult5 = [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self->_widgetAddSheetDictionaries dryRunResult];
              v130[4] = dryRunResult5;
              v129[5] = @"Widget Rotation Dictionary";
              dryRunResult6 = [(ATXHomeScreenLogWidgetRotationDictionaries *)self->_widgetRotationDictionaries dryRunResult];
              v130[5] = dryRunResult6;
              v129[6] = @"Default Stack Metrics Dictionary";
              dryRunResult7 = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self->_widgetDiscoverabilityDictionaries dryRunResult];
              v130[6] = dryRunResult7;
              v129[7] = @"TV Widget Metrics Dictionary";
              dryRunResult8 = [(ATXTVWidgetLogHarvester *)self->_tvWidgetLogHarvester dryRunResult];
              v130[7] = dryRunResult8;
              v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:8];

              v68 = (*(v81 + 2))(v81, v67, 0);
              v69 = __atxlog_handle_home_screen(v68);
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2263AA000, v69, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenLogUploader: Daily CoreAnalytics log upload dry-run complete - no actual logs uploaded", buf, 2u);
              }
            }

            else
            {
              [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary sendToCoreAnalytics];
              [(ATXHomeScreenLogSystemChangeDictionary *)self->_systemChangeDictionary sendToCoreAnalytics];
              [(ATXHomeScreenLogWidgetSetupDictionaries *)self->_widgetSetupDictionaries sendToCoreAnalytics];
              [(ATXHomeScreenLogWidgetEventDictionaries *)self->_widgetEventDictionaries sendToCoreAnalytics];
              [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self->_widgetAddSheetDictionaries sendToCoreAnalytics];
              [(ATXHomeScreenLogWidgetRotationDictionaries *)self->_widgetRotationDictionaries sendToCoreAnalytics];
              [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self->_widgetDiscoverabilityDictionaries sendToCoreAnalytics];
              v67 = __atxlog_handle_home_screen([(ATXTVWidgetLogHarvester *)self->_tvWidgetLogHarvester sendToCoreAnalytics]);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2263AA000, v67, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenLogUploader: Daily CoreAnalytics log upload complete", buf, 2u);
              }
            }
          }
        }

        objc_destroyWeak(v99);
        _Block_object_dispose(v100, 8);

        _Block_object_dispose(v102, 8);
        _Block_object_dispose(v104, 8);

        _Block_object_dispose(&v106, 8);
        _Block_object_dispose(&v110, 8);

        _Block_object_dispose(&v116, 8);
        objc_destroyWeak(&v123);

        objc_destroyWeak(&v126);
        objc_destroyWeak(&location);
      }

      v16 = v80;
    }

    goto LABEL_47;
  }

LABEL_48:
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = __atxlog_handle_home_screen(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_cold_2();
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[6] updateWidgetAddSheetSummaryForSuggestions:v5];
    }

    else
    {
      v11 = __atxlog_handle_home_screen(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_cold_1();
      }
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (v6 || !v7)
  {
    v13 = __atxlog_handle_home_screen(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_30_cold_2();
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v10 = *(WeakRetained + 6);
      v11 = [v5 firstObject];
      [v10 updateWidgetAddSheetSummaryForDefaultStack:v11];

      v12 = *(a1 + 32);
    }

    else
    {
      v14 = __atxlog_handle_home_screen(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_30_cold_1();
      }

      v12 = *(a1 + 40);
    }

    dispatch_semaphore_signal(v12);
  }
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_home_screen(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_2_cold_1(v2, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenLogUploader: Daily CoreAnalytics log processing (task 1 of 2) complete", v6, 2u);
  }
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_45(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained && ([*(a1 + 32) didDefer] & 1) == 0)
  {
    v5 = *(*(*(a1 + 56) + 8) + 24);
    [v3 timestamp];
    if (v5 >= v6)
    {
      v6 = v5;
    }

    *(*(*(a1 + 56) + 8) + 24) = v6;
    v7 = [v3 eventBody];

    if (v7)
    {
      v9 = [v3 eventBody];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = *(a1 + 40);
        v12 = [v3 eventBody];
        v13 = [v11 updateSessionStateWithUIEvent:v12];

        v14 = *(a1 + 48);
        v15 = [v3 eventBody];
        [v14 updateWithUIEvent:v15];
      }

      else
      {
        v13 = 0;
      }

      v17 = [v3 eventBody];
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if (v18)
      {
        v19 = *(a1 + 48);
        v20 = [v3 eventBody];
        [v19 updateWithBlendingUICacheUpdate:v20];
      }

      else
      {
        v21 = [v3 eventBody];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
        }

        else
        {
          v22 = objc_opt_class();
          v23 = [v3 eventBody];
          LODWORD(v22) = [v22 _shouldProcessATXUIEvent:v23 startTime:*(a1 + 112)];

          if (!v22)
          {
            goto LABEL_37;
          }
        }

        if (v13 == 1)
        {
          ++*(*(*(a1 + 64) + 8) + 24);
          [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
          *(*(*(a1 + 80) + 8) + 24) = 0;
        }

        v24 = [v3 eventBody];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = v24;
          v57 = v13;
          v25 = *(*(*(a1 + 88) + 8) + 40);
          v26 = [v24 homeScreenEvent];
          v27 = [v26 stackId];
          v28 = [v25 objectForKeyedSubscript:v27];
          v29 = [v28 eventBody];
          v55 = [v29 homeScreenEvent];

          v30 = a1;
          [ATXHomeScreenLogUploaderUtilities stackShownEventsForPseudoTapIfPossible:*(*(*(a1 + 88) + 8) + 40) currentEvent:v3];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          obj = v62 = 0u;
          v31 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v60;
            do
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v60 != v33)
                {
                  objc_enumerationMutation(obj);
                }

                v35 = *(*(&v59 + 1) + 8 * i);
                [WeakRetained[4] updateSystemLevelSummaryForWidgetPseudoTapWithStackShownEvent:v35];
                [WeakRetained[2] updateWidgetLevelSummaryForWidgetPseudoTapWithStackShownEvent:v35];
                v36 = MEMORY[0x277CEB9B0];
                v37 = [v35 widgetBundleId];
                v38 = [v35 widgetKind];
                v39 = [v36 stringRepresentationForExtensionBundleId:v37 kind:v38];

                [*(*(*(v30 + 72) + 8) + 40) setObject:v35 forKeyedSubscript:v39];
              }

              v32 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
            }

            while (v32);
          }

          v40 = WeakRetained[4];
          v24 = v56;
          v41 = [v56 homeScreenEvent];
          [v40 updateSystemLevelSummaryForHomeScreenEvent:v41];

          v42 = WeakRetained[5];
          v43 = [v56 homeScreenEvent];
          [v42 updateSystemChangeSummaryForHomeScreenEvent:v43];

          v44 = WeakRetained[2];
          v45 = [v56 homeScreenEvent];
          [v44 updateWidgetLevelSummaryForHomeScreenEvent:v45 lastStackEvent:v55];

          v13 = v57;
          a1 = v30;
        }

        else
        {
          v46 = [v3 eventBody];
          objc_opt_class();
          v47 = objc_opt_isKindOfClass();

          if (v47)
          {
            v48 = v24;
            if ([ATXHomeScreenLogUploaderUtilities isValidAppLaunch:v48])
            {
              v49 = *(*(*(a1 + 96) + 8) + 40);
              v50 = [v48 bundleID];
              [ATXHomeScreenLogUploaderUtilities incrementDictionary:v49 forKey:v50];

              *(*(*(a1 + 80) + 8) + 24) = 1;
            }
          }
        }

        if (v13 == 2 && (*(*(*(a1 + 80) + 8) + 24) & 1) == 0 && [*(*(*(a1 + 72) + 8) + 40) count])
        {
          v51 = WeakRetained[4];
          v52 = [*(*(*(a1 + 72) + 8) + 40) allValues];
          [v51 updateSystemLevelUnlockSessionsWithWidgetDwell:v52];

          v53 = WeakRetained[2];
          v54 = [*(*(*(a1 + 72) + 8) + 40) allValues];
          [v53 updateUnlockSessionsWithWidgetDwell:v54];
        }
      }
    }

    else
    {
      v16 = __atxlog_handle_home_screen(v8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_45_cold_1();
      }
    }
  }

LABEL_37:
}

- (void)uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_30_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_30_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXHomeScreenLogUploader: Error in CoreAnalytics log processing (task 1 of 2) : %@", v4, 0xCu);
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_45_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end