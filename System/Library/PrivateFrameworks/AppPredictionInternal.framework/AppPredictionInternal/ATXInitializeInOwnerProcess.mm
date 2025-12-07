@interface ATXInitializeInOwnerProcess
@end

@implementation ATXInitializeInOwnerProcess

void ___ATXInitializeInOwnerProcess_block_invoke()
{
  v71 = *MEMORY[0x277D85DE8];
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);
  v2 = dispatch_queue_create("deferredInit", v1);

  [MEMORY[0x277CC5A40] setPredicatePropertyLoadMode:2];
  v3 = +[ATXPrivacyReset sharedInstance];
  [MEMORY[0x277CEBCB0] createDirectoriesIfNeeded];
  if ([MEMORY[0x277D42598] isClassCLocked])
  {
    [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlocked:&__block_literal_global_389];
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
    v6 = _ATXDECBackupNeedsRestoring(v5);
    if (v6)
    {
      v7 = __atxlog_handle_backup(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Taking old backup path", buf, 2u);
      }

      v8 = [v5 stringByAppendingPathComponent:@"Backups/AppPredictionExpert"];
      v9 = _ATXExtractFilesFromDECBackupArchiveIfExists(v8, v5);
      v4 = v9;
      if (v9)
      {
        v10 = [MEMORY[0x277CCAA00] defaultManager];
        [v10 removeItemAtPath:v8 error:0];

        v12 = __atxlog_handle_backup(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Restored old backup", buf, 2u);
        }
      }
    }

    else
    {
      v13 = +[ATXBackupService backupService];
      [v13 restoreFromBackupIfNeccessary:&__block_literal_global_394];

      v4 = 0;
    }
  }

  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v16 = [v15 stringByAppendingPathComponent:@"restore_finished"];
  v17 = [v14 fileExistsAtPath:v16];

  if (v17)
  {
    v19 = __atxlog_handle_backup(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "already restored, not registering for restore state notifications", buf, 2u);
    }
  }

  else
  {
    if (!registerForRestoreStateNotifications_mobileBackup)
    {
      v18 = dlopen("/System/Library/PrivateFrameworks/MobileBackup.framework/MobileBackup", 1);
      registerForRestoreStateNotifications_mobileBackup = v18;
      if (!v18)
      {
        v20 = __atxlog_handle_backup(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          ___ATXInitializeInOwnerProcess_block_invoke_cold_1();
        }
      }
    }

    v19 = restoreStateQueue(v18);
    dispatch_async(v19, &__block_literal_global_489);
  }

  v21 = *MEMORY[0x277D86238];
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.apppredictionupdate", *MEMORY[0x277D86238], &__block_literal_global_498);
  atxRegisterCTSJobHandler("com.apple.duetexpertd.atxbackupnow", v21, &__block_literal_global_501);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.atxbackup", &__block_literal_global_514);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.atxtrain", &__block_literal_global_518);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.action.timeestimate", v21, &__block_literal_global_520);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.everydayshortcuts", v21, &__block_literal_global_523);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.everydayshortcuts-trigger", v21, &__block_literal_global_527);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.dailyroutines", v21, &__block_literal_global_529);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.dailyroutines-trigger", v21, &__block_literal_global_532);
  atxRegisterCTSJobHandler("com.apple.duetexpertd.updateAssetMetadata", v21, &__block_literal_global_535);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.magicalmoments", &__block_literal_global_539);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.anchormodeldataharvesting", &__block_literal_global_542);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.anchormodeltraining", &__block_literal_global_547);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.biome-ui-feedback-result-stream-writing", v21, &__block_literal_global_551);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.mode-entity-model-training", &__block_literal_global_555);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.mode-setup-prediction-training", v21, &__block_literal_global_559);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.urgency-tuning-global-metrics-logging", v21, &__block_literal_global_563);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.infoStorePeriodicCleanup", v21, &__block_literal_global_567);
  atxRegisterCTSJobHandlerForNonClassCLocked([@"com.apple.duetexpertd.appdirectory" UTF8String], v21, &__block_literal_global_573);
  atxRegisterCTSJobHandler([@"com.apple.duetexpertd.appdirectorylogging" UTF8String], v21, &__block_literal_global_578);
  v22 = MEMORY[0x277CFE360];
  v23 = [MEMORY[0x277CFE338] keyPathForFirstWakeupStatus];
  v24 = [v22 predicateForKeyPath:v23 equalToValue:&unk_283A55F28 withMinimumDurationInPreviousState:14400.0];

  v25 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.duetexpertd.information.userWakeUp" contextualPredicate:v24 clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:&__block_literal_global_582];
  v26 = [MEMORY[0x277CFE318] userContext];
  [v26 registerCallback:v25];

  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.timelinerelevance", v21, &__block_literal_global_593);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.tl_prediction", v21, &__block_literal_global_596);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.cardSuggestionClientCacheCleanup", v21, &__block_literal_global_602);
  v27 = objc_alloc(MEMORY[0x277CBEBD0]);
  v28 = [v27 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v29 = [v28 integerForKey:*MEMORY[0x277CEBB98]];
  if (v29 < 1)
  {
    atxRegisterCTSJobHandlerForNonClassCLocked([@"com.apple.duetexpertd.defaultwidgetsuggester" UTF8String], v21, &__block_literal_global_607);
  }

  else
  {
    v30 = v29;
    v31 = __atxlog_handle_home_screen(v29);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v70 = v30;
      _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "No longer running ATXDefaultWidgetSuggester CTS job due to feedback: %ld", buf, 0xCu);
    }
  }

  atxRegisterCTSJobHandler("com.apple.duetexpertd.widgetonboarding", v21, &__block_literal_global_610);
  atxRegisterCTSJobHandler("com.apple.duetexpertd.biomepruning", v21, &__block_literal_global_618);
  atxRegisterCTSJobHandler([@"com.apple.duetexpertd.focusMetricsLogging" UTF8String], v21, &__block_literal_global_624);
  atxRegisterCTSJobHandler("com.apple.duetexpertd.homescreenlogging", v21, &__block_literal_global_629);
  atxRegisterCTSJobHandler("com.apple.duetexpertd.nPlusOneStudyLogging", v21, &__block_literal_global_633);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.blendingbiomestreamlogging", v21, &__block_literal_global_637);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.refreshfacesuggestions", v21, &__block_literal_global_641);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.collectlockscreenmetrics", v21, &__block_literal_global_648);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.collectzkwmetrics", v21, &__block_literal_global_652);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.verticalmodelstraining", v21, &__block_literal_global_656);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.modelscoreharvesting", v21, &__block_literal_global_660);
  atxRegisterCTSJobHandlerForNonClassCLocked([@"com.apple.duetexpertd.updateInferredModeBiomeStream" UTF8String], v21, &__block_literal_global_666);
  atxRegisterCTSJobHandlerForNonClassCLocked([@"com.apple.duetexpertd.updateSuggestedPages" UTF8String], v21, &__block_literal_global_672);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.blending-shadow-logging", v21, &__block_literal_global_675);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.logModeActivityMetrics", v21, &__block_literal_global_679);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.logNotificationDigestMetrics", v21, &__block_literal_global_682);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.logDigestGlobalNotificationFeedback", v21, &__block_literal_global_686);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.pruneNotificationSuggestionDatastore", v21, &__block_literal_global_690);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.pruneNotificationsBasedOnHardLimits", v21, &__block_literal_global_695);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.pruneSuggestionsBasedOnHardLimits", v21, &__block_literal_global_698);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.analyzeNotificationsAndSuggestionsDatabase", v21, &__block_literal_global_701);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.notificationAndSuggestionDatastorePerfMetricsLogging", v21, &__block_literal_global_704);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.datastoremaintenance", &__block_literal_global_707);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.activitySuggestionFeedbackProcessing", v21, &__block_literal_global_711);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.homeScreenModificationMetricsLogger", v21, &__block_literal_global_715);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.ambientmetrics", v21, &__block_literal_global_719);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.carPlayMetrics", &__block_literal_global_724);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.timelinedonationspruning", v21, &__block_literal_global_729);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.notificationmetrics", &__block_literal_global_733);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, languagePrefChanged, @"AppleLanguagePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v33 = MEMORY[0x277D42598];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = ___ATXInitializeInOwnerProcess_block_invoke_401;
  v67[3] = &unk_278596BB8;
  v34 = v2;
  v68 = v34;
  [v33 runBlockWhenDeviceIsClassCUnlocked:v67];
  v35 = [MEMORY[0x277CCAB98] defaultCenter];
  v36 = [v35 addObserverForName:*MEMORY[0x277CEBB18] object:0 queue:0 usingBlock:&__block_literal_global_421];

  v37 = [MEMORY[0x277CCA9A0] defaultCenter];
  v38 = [v37 addObserverForName:*MEMORY[0x277CFC818] object:0 queue:0 usingBlock:&__block_literal_global_426];

  v39 = [MEMORY[0x277CCA9A0] defaultCenter];
  v40 = [v39 addObserverForName:*MEMORY[0x277CEBA78] object:0 queue:0 usingBlock:&__block_literal_global_430];

  dispatch_async(v34, &__block_literal_global_434);
  PMMInitializeInOwnerProcess();
  v41 = +[ATXServer sharedInstance];
  v42 = +[ATXParameterSuggestionServer sharedInstance];
  v43 = +[ATXActionPredictionServer sharedInstance];
  v44 = [MEMORY[0x277D785B0] sharedInstance];
  if (_PASIsInternalDevice())
  {
    v45 = +[ATXModeAutomationSuggestionTester sharedInstance];
  }

  [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlocked:&__block_literal_global_442];
  [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlockedWithQoS:25 block:&__block_literal_global_464];
  v46 = +[ATXWifiStateMonitor sharedInstance];
  v47 = [MEMORY[0x277CCAA00] defaultManager];
  v48 = restoreStateFinishedPath();
  if ([v47 fileExistsAtPath:v48])
  {
    v49 = +[ATXBackupService isBackupRestore];

    if (!v49)
    {
      v51 = __atxlog_handle_backup(v50);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v51, OS_LOG_TYPE_DEFAULT, "Scheduling app directory update after restore", buf, 2u);
      }

      [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlocked:&__block_literal_global_474];
    }
  }

  else
  {
  }

  v52 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v53 = [v52 stringByAppendingPathComponent:@"restored"];

  if ((v4 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "fileExistsAtPath:", v53), v55, v56))
  {
    v57 = __atxlog_handle_backup(v54);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v57, OS_LOG_TYPE_DEFAULT, "Restore marker seen, updating predictions immediately", buf, 2u);
    }

    v59 = __atxlog_handle_backup(v58);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = +[ATXBackupService isBackupRestore];
      *buf = 67109120;
      LODWORD(v70) = v60;
      _os_log_impl(&dword_2263AA000, v59, OS_LOG_TYPE_DEFAULT, "Scheduling app directory update after restore (based on ATXBackupService marker); isBackupRestore=%{BOOL}d", buf, 8u);
    }

    v61 = MEMORY[0x277D42598];
    v62 = MEMORY[0x277D85DD0];
    v63 = 3221225472;
    v64 = ___ATXInitializeInOwnerProcess_block_invoke_475;
    v65 = &unk_278596BB8;
    v66 = v53;
    [v61 runBlockWhenDeviceIsClassCUnlocked:&v62];
  }

  [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlocked:{&__block_literal_global_479, v62, v63, v64, v65}];
}

uint64_t ___ATXInitializeInOwnerProcess_block_invoke_2(uint64_t a1)
{
  v1 = __atxlog_handle_backup(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEFAULT, "Unlock seen. Checking for restore.", v3, 2u);
  }

  return xpc_transaction_exit_clean();
}

void ___ATXInitializeInOwnerProcess_block_invoke_391(uint64_t a1, int a2)
{
  v3 = __atxlog_handle_backup(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Restored new style backup. Restarting process...", buf, 2u);
    }

    v5 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
    v6 = [v5 stringByAppendingPathComponent:@"restored"];

    v7 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
    v8 = [v7 stringByAppendingPathComponent:@"restore_finished"];

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    [v9 createFileAtPath:v6 contents:0 attributes:0];

    v10 = [MEMORY[0x277CCAA00] defaultManager];
    [v10 createFileAtPath:v8 contents:0 attributes:0];

    exit(0);
  }

  if (v4)
  {
    *v11 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Didn't restore new style backup", v11, 2u);
  }
}

void ___ATXInitializeInOwnerProcess_block_invoke_401(uint64_t a1)
{
  ATXEnableMobileAssetDataVault(a1);
  v2 = +[ATXHeuristicActionProducer sharedInstance];
  v3 = +[ATXIntentMetadataCache sharedInstance];
  v4 = +[_ATXAppPredictor sharedInstance];
  v5 = +[_ATXFeedback sharedInstance];
  v6 = +[ATXUpdatePredictionsManager sharedInstance];
  v7 = dispatch_time(0, 100000000);
  dispatch_after(v7, *(a1 + 32), &__block_literal_global_409);
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = [v9 addObserverForName:*MEMORY[0x277CEBAF0] object:0 queue:0 usingBlock:&__block_literal_global_416];
}

void ___ATXInitializeInOwnerProcess_block_invoke_2_407()
{
  v0 = +[ATXDigitalHealthBlacklist sharedInstance];
  v1 = [MEMORY[0x277CEB998] sharedInstance];
  v2 = [MEMORY[0x277CEB988] sharedInstance];
  [v2 refreshWithCompletion:0];
}

void ___ATXInitializeInOwnerProcess_block_invoke_3()
{
  v3 = [MEMORY[0x277CEB998] sharedInstance];
  v0 = [v3 fetchHomeScreenWidgetDescriptorMetadataWithError:0];
  if (v0)
  {
    v1 = ATXSharedDefaultHomeScreenItemUpdater();
    v2 = [v3 homeScreenDescriptors];
    [v1 updateDefaultsWithSystemDescriptors:v2 updateCarPlayDefaults:0 installDatesCache:v0 reason:@"Descriptor change"];
  }
}

void ___ATXInitializeInOwnerProcess_block_invoke_5()
{
  v0 = ATXSharedDefaultHomeScreenItemUpdater();
  [v0 updateDefaultsDueToRelevantHomeScreenConfigUpdate];
}

void ___ATXInitializeInOwnerProcess_block_invoke_7()
{
  v0 = ATXSharedDefaultHomeScreenItemUpdater();
  [v0 updateDefaultsDueToAmbientConfigUpdate];
}

void ___ATXInitializeInOwnerProcess_block_invoke_9()
{
  v0 = ATXSharedDefaultHomeScreenItemUpdater();
  [v0 updateDefaultsDueToCarPlayConfigUpdate];
}

id ___ATXInitializeInOwnerProcess_block_invoke_11(uint64_t a1)
{
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    ___ATXInitializeInOwnerProcess_block_invoke_11_cold_1();
  }

  v2 = +[ATXMagicalMomentsAppPredictor sharedInstance];
  v3 = +[ATXClientModelSuggestionReceiver sharedInstance];
  [v3 start];

  v4 = +[ATXActionPredictionServer sharedInstance];
  v5 = +[ATXClientModelSuggestionReceiver sharedInstance];
  v6 = [v5 blendingLayerServer];
  [v4 registerForRealTimeRequestsWithBlendingLayerServer:v6];

  v7 = +[ATXModeAnchorModelSuggestionClient sharedInstance];
  v8 = +[ATXNotificationsLoggingServer sharedInstance];
  v9 = +[ATXActionNotificationServer sharedInstance];
  if ([MEMORY[0x277CEBC58] widgetSuggestionsEnabled])
  {
    v10 = +[ATXInfoSuggestionServer sharedInstance];
  }

  v11 = +[ATXContextHeuristicsServer sharedInstance];
  v12 = +[ATXModeEntityScorerServer sharedInstance];
  v13 = +[ATXSmartActivationEarlyExitDetectionLogger sharedInstance];
  v14 = +[ATXNotificationDigestRankerServer sharedInstance];
  v15 = +[ATXUserEducationSuggestionServer sharedInstance];
  v16 = +[ATXContextualEngine sharedInstance];
  v17 = +[ATXAnchorModelInferenceEngine sharedInstance];
  [v17 start];

  v18 = objc_alloc(MEMORY[0x277CBEBD0]);
  v19 = *MEMORY[0x277CEBD00];
  v20 = [v18 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v21 = [v20 BOOLForKey:@"ATXInitializationLanguageChangeDirty"];
  if (v21)
  {
    v22 = __atxlog_handle_default(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v53) = 0;
      _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "Language change detected upon process start - updating predictions once and immediately", &v53, 2u);
    }

    v53 = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = __updatePredictionsIfLanguageChanged_block_invoke;
    v56 = &unk_278596BB8;
    v57 = v20;
    dispatch_async(MEMORY[0x277D85CD0], &v53);
  }

  v23 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v19];
  v24 = *MEMORY[0x277CEBD78];
  v25 = [v23 objectForKey:*MEMORY[0x277CEBD78]];

  if (!v25)
  {
    v26 = [MEMORY[0x277CBEAA8] now];
    [v23 setObject:v26 forKey:v24];
    if ([v23 BOOLForKey:*MEMORY[0x277CEBD20]])
    {
      [v23 setObject:v26 forKey:*MEMORY[0x277CEBD18]];
      v27 = objc_alloc_init(MEMORY[0x277CEB568]);
      v28 = [v27 hasWidgetsOnTheHomeScreen];

      v29 = *MEMORY[0x277CEBD10];
      if (v28)
      {
        v30 = @"active";
      }

      else
      {
        v30 = @"abandoned";
      }
    }

    else
    {
      v29 = *MEMORY[0x277CEBD10];
      v30 = @"neverUsed";
    }

    [v23 setObject:v30 forKey:v29];
  }

  v31 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v19];
  v32 = *MEMORY[0x277CEBD48];
  v33 = [v31 integerForKey:*MEMORY[0x277CEBD48]];
  v34 = [MEMORY[0x277CCAC38] processInfo];
  v35 = v34;
  if (v34)
  {
    objc_msgSend_operatingSystemVersion(v34);
    v36 = v54;
  }

  else
  {
    v36 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
  }

  v37 = [MEMORY[0x277CCAC38] processInfo];
  v38 = v37;
  if (v37)
  {
    objc_msgSend_operatingSystemVersion(v37);
    v39 = v58;
  }

  else
  {
    v39 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
  }

  v40 = MEMORY[0x277CEBD58];
  v41 = MEMORY[0x277CEBD50];
  if (v39 <= v33)
  {
    v42 = [v31 integerForKey:*MEMORY[0x277CEBD58]];
  }

  else
  {
    [v31 removeObjectForKey:*MEMORY[0x277CEBD50]];
    v42 = -1;
  }

  if (v36 > v42)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [v31 setDouble:*v41 forKey:?];
    [v31 setInteger:v36 forKey:*v40];
  }

  v43 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v19];
  v44 = [v43 integerForKey:v32];
  v45 = [MEMORY[0x277CCAC38] processInfo];
  v46 = v45;
  if (v45)
  {
    objc_msgSend_operatingSystemVersion(v45);
    v47 = v53;
  }

  else
  {
    v47 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
  }

  if (v47 > v44)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [v43 setDouble:*MEMORY[0x277CEBD40] forKey:?];
    [v43 setInteger:v47 forKey:v32];
  }

  v48 = +[ATXSleepSuggestionServer sharedInstance];
  v49 = +[ATXSportsServer sharedInstance];
  if ([MEMORY[0x277CEBC58] isDigitalBalanceEnabled])
  {
    v50 = +[ATXUsageInsightsServer sharedInstance];
  }

  if ([MEMORY[0x277CEBC58] isNotificationCategorizationEnabled])
  {
    v51 = +[ATXNotificationCategorizationServer sharedInstance];
  }

  return +[ATXSettingsActionsServer sharedInstance];
}

id ___ATXInitializeInOwnerProcess_block_invoke_462()
{
  v0 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  v1 = +[ATXAppDirectoryServer sharedInstance];
  v2 = +[ATXDefaultWidgetSuggesterServer sharedInstance];
  v3 = +[ATXSuggestedPagesServer sharedInstance];
  v4 = +[ATXFaceSuggestionServer sharedInstance];
  return +[_ATXAppProtectionMonitor sharedInstance];
}

void ___ATXInitializeInOwnerProcess_block_invoke_472(uint64_t a1, uint64_t a2)
{
  performPostRestoreTasks(a1, a2);
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = restoreStateFinishedPath();
  [v3 removeItemAtPath:v2 error:0];
}

void ___ATXInitializeInOwnerProcess_block_invoke_475(uint64_t a1, uint64_t a2)
{
  performPostRestoreTasks(a1, a2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ATXInitializeInOwnerProcess_block_invoke_2_476;
  block[3] = &unk_278596BB8;
  v4 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void ___ATXInitializeInOwnerProcess_block_invoke_2_476(uint64_t a1)
{
  ATXUpdatePredictionsImmediatelyWithReason(11);
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 removeItemAtPath:*(a1 + 32) error:0];
}

void ___ATXInitializeInOwnerProcess_block_invoke_3_477(uint64_t a1)
{
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    ___ATXInitializeInOwnerProcess_block_invoke_3_477_cold_1();
  }

  v2 = +[ATXServer consumerSubTypesToUpdate];
  v3 = [ATXFileUtil cachesAreValidForConsumerSubTypes:v2];

  if (!v3)
  {
    v5 = __atxlog_handle_default(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "At least one cache is invalid or stale. Triggering an update", v6, 2u);
    }

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_483);
  }
}

void ___ATXInitializeInOwnerProcess_block_invoke_cold_1()
{
  dlerror();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v0, v1, "Could not load MobileBackup: %s", v2, v3, v4, v5);
}

@end