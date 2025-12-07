@interface ATXModeEntityModelTrainer
+ (double)maxScoreWithThresholdGivenModeEntityScores:(id)scores;
+ (double)scoreThresholdGivenModeEntityScores:(id)scores modeEntityTypeIdentifier:(id)identifier;
+ (id)eventProviderForMode:(unint64_t)mode;
+ (id)eventProviderForScorableTime:(id)time;
+ (id)thresholdedModeEntityScores:(id)scores modeEntityTypeIdentifier:(id)identifier threshold:(double)threshold;
- (ATXModeEntityModelTrainer)init;
- (ATXModeEntityModelTrainer)initWithCacheBasePath:(id)path modeEntityStore:(id)store globalAppModeAffinityModel:(id)model globalInterruptingAppModel:(id)appModel globalWidgetPopularityModel:(id)popularityModel;
- (BOOL)persistModeEntityScores:(id)scores modeEntityTypeIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier modeConfigurationType:(int64_t)type;
- (BOOL)shouldDeferTrainingDueToRestoredBackup;
- (BOOL)shouldDeferTrainingDueToUpgrade;
- (id)pathForModeEntityTypeIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier modeConfigurationType:(int64_t)type;
- (void)trainWithTask:(id)task shouldSkipRetrainingIfTrainedRecently:(BOOL)recently shouldDeferTrainingOnRestoreOrUpgrade:(BOOL)upgrade;
@end

@implementation ATXModeEntityModelTrainer

- (ATXModeEntityModelTrainer)init
{
  modeCachesRootDirectory = [MEMORY[0x277CEBCB0] modeCachesRootDirectory];
  v4 = objc_opt_new();
  v5 = +[ATXGlobalAppModeAffinityModel modelWithAllInstalledAppsKnownToSpringBoard];
  v6 = +[ATXGlobalInterruptingAppModel modelWithAllInstalledAppsKnownToSpringBoard];
  v7 = +[ATXGlobalWidgetPopularityModel modelWithAllAvailableWidgets];
  v8 = [(ATXModeEntityModelTrainer *)self initWithCacheBasePath:modeCachesRootDirectory modeEntityStore:v4 globalAppModeAffinityModel:v5 globalInterruptingAppModel:v6 globalWidgetPopularityModel:v7];

  return v8;
}

- (ATXModeEntityModelTrainer)initWithCacheBasePath:(id)path modeEntityStore:(id)store globalAppModeAffinityModel:(id)model globalInterruptingAppModel:(id)appModel globalWidgetPopularityModel:(id)popularityModel
{
  pathCopy = path;
  storeCopy = store;
  modelCopy = model;
  appModelCopy = appModel;
  popularityModelCopy = popularityModel;
  v21.receiver = self;
  v21.super_class = ATXModeEntityModelTrainer;
  v17 = [(ATXModeEntityModelTrainer *)&v21 init];
  if (v17)
  {
    v18 = [pathCopy copy];
    cacheBasePath = v17->_cacheBasePath;
    v17->_cacheBasePath = v18;

    objc_storeStrong(&v17->_modeEntityStore, store);
    objc_storeStrong(&v17->_globalAppModeAffinityModel, model);
    objc_storeStrong(&v17->_globalInterruptingAppModel, appModel);
    objc_storeStrong(&v17->_globalWidgetPopularityModel, popularityModel);
  }

  return v17;
}

- (void)trainWithTask:(id)task shouldSkipRetrainingIfTrainedRecently:(BOOL)recently shouldDeferTrainingOnRestoreOrUpgrade:(BOOL)upgrade
{
  upgradeCopy = upgrade;
  recentlyCopy = recently;
  v99 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v8 = taskCopy;
  if (upgradeCopy)
  {
    if ([(ATXModeEntityModelTrainer *)self shouldDeferTrainingDueToRestoredBackup]|| (taskCopy = [(ATXModeEntityModelTrainer *)self shouldDeferTrainingDueToUpgrade], taskCopy))
    {
      [v8 setDone];
      goto LABEL_64;
    }
  }

  v9 = __atxlog_handle_notification_management(taskCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Started training Mode Entity Models...", buf, 2u);
  }

  [v8 setProgressUnits:5];
  v10 = objc_opt_new();
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v11 = allModesForTraining();
  v82 = [v11 countByEnumeratingWithState:&v90 objects:v98 count:16];
  if (v82)
  {
    v75 = 0;
    v83 = *v91;
    v81 = v10;
    v77 = v11;
LABEL_9:
    v12 = 0;
    while (1)
    {
      if (*v91 != v83)
      {
        objc_enumerationMutation(v11);
      }

      v13 = *(*(&v90 + 1) + 8 * v12);
      v14 = objc_autoreleasePoolPush();
      unsignedIntegerValue = [v13 unsignedIntegerValue];
      v16 = __atxlog_handle_notification_management(unsignedIntegerValue);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = ATXModeToString();
        *buf = 138412290;
        v95 = v17;
        _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Training Mode Entity Models for Mode %@...", buf, 0xCu);
      }

      if (recentlyCopy)
      {
        [v13 unsignedIntegerValue];
        v18 = ATXModeToString();
        v19 = [(ATXModeEntityModelTrainer *)self pathForModeEntityTypeIdentifier:@"apps" modeIdentifier:v18 modeConfigurationType:0];

        v20 = [MEMORY[0x277CEBCB0] modificationDateOfFileAtPath:v19];
        [v20 timeIntervalSinceNow];
        v22 = v21;

        if (v22 < 0.0 && v22 > -21600.0)
        {
          v24 = __atxlog_handle_notification_management(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            [v13 unsignedIntegerValue];
            v25 = ATXModeToString();
            *buf = 138412546;
            v95 = v25;
            v96 = 2048;
            v97 = -v22;
            _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "Skipping training of apps, contacts, and notification scores in Mode Entity Scorer for mode %@ since it was trained recently. Cache age: %.2f", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v14);
          goto LABEL_47;
        }
      }

      v26 = -[ATXAppModeModel initWithMode:modeEntityStore:globalAppModeAffinityModel:]([ATXAppModeModel alloc], "initWithMode:modeEntityStore:globalAppModeAffinityModel:", [v13 unsignedIntegerValue], self->_modeEntityStore, self->_globalAppModeAffinityModel);
      v27 = [(ATXAppModeModel *)v26 scoredEntitiesWithXPCActivity:v8];
      didDefer = [v8 didDefer];
      if (didDefer)
      {
        v31 = __atxlog_handle_notification_management(didDefer);
        if (!os_log_type_enabled(&v31->super, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_62;
        }

        v68 = ATXModeToString();
        *buf = 138412290;
        v95 = v68;
        v69 = "ATXAppModeModel: computing scoredEntities for %@, but deferring training because XPC activity asked for deferral";
LABEL_55:
        _os_log_impl(&dword_2263AA000, &v31->super, OS_LOG_TYPE_DEFAULT, v69, buf, 0xCu);

        goto LABEL_62;
      }

      v29 = ATXModeToString();
      [(ATXModeEntityModelTrainer *)self persistModeEntityScores:v27 modeEntityTypeIdentifier:@"apps" modeIdentifier:v29 modeConfigurationType:0];

      didDefer2 = [v8 didDefer];
      if (didDefer2)
      {
        v31 = __atxlog_handle_notification_management(didDefer2);
        if (!os_log_type_enabled(&v31->super, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_62;
        }

        v68 = ATXModeToString();
        *buf = 138412290;
        v95 = v68;
        v69 = "(Allow List) Finished training of app scores in Mode Entity Scorer for mode %@, but deferring training because XPC activity asked for deferral";
        goto LABEL_55;
      }

      v89 = v27;
      context = v14;
      v31 = [[ATXAppModeDenyListModel alloc] initWithMode:unsignedIntegerValue modeEntityStore:self->_modeEntityStore globalInterruptingAppModel:self->_globalInterruptingAppModel];
      v32 = [(ATXAppModeDenyListModel *)v31 scoredEntitiesWithXPCActivity:v8];
      didDefer3 = [v8 didDefer];
      if (didDefer3)
      {
        v70 = __atxlog_handle_notification_management(didDefer3);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = ATXModeToString();
          *buf = 138412290;
          v95 = v71;
          v72 = "ATXAppModeDenyListModel: computing scoredEntities for %@, but deferring training because XPC activity asked for deferral.";
          goto LABEL_60;
        }

LABEL_61:

        v14 = context;
        v27 = v89;
LABEL_62:

        objc_autoreleasePoolPop(v14);
        goto LABEL_63;
      }

      v34 = ATXModeToString();
      [(ATXModeEntityModelTrainer *)self persistModeEntityScores:v32 modeEntityTypeIdentifier:@"apps" modeIdentifier:v34 modeConfigurationType:1];

      didDefer4 = [v8 didDefer];
      if (didDefer4)
      {
        v70 = __atxlog_handle_notification_management(didDefer4);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = ATXModeToString();
          *buf = 138412290;
          v95 = v71;
          v72 = "(Deny List) Finished training of app scores in Mode Entity Scorer for mode %@, but deferring training because XPC activity asked for deferral.";
LABEL_60:
          _os_log_impl(&dword_2263AA000, v70, OS_LOG_TYPE_DEFAULT, v72, buf, 0xCu);
        }

        goto LABEL_61;
      }

      v85 = v31;
      v86 = v26;
      v36 = [[ATXContactModeModel alloc] initWithMode:unsignedIntegerValue contactStore:v10];
      scoredEntities = [(ATXContactModeModel *)v36 scoredEntities];
      v38 = [(ATXContactModeModel *)v36 purgeDeletedContacts:scoredEntities];

      v39 = ATXModeToString();
      v88 = v38;
      [(ATXModeEntityModelTrainer *)self persistModeEntityScores:v38 modeEntityTypeIdentifier:@"contacts" modeIdentifier:v39 modeConfigurationType:0];

      didDefer5 = [v8 didDefer];
      if (didDefer5)
      {
        v41 = __atxlog_handle_notification_management(didDefer5);
        v42 = v85;
        if (os_log_type_enabled(&v41->super, OS_LOG_TYPE_DEFAULT))
        {
          v43 = ATXModeToString();
          *buf = 138412290;
          v95 = v43;
          _os_log_impl(&dword_2263AA000, &v41->super, OS_LOG_TYPE_DEFAULT, "(Allow List) Finished training of contact scores in Mode Entity Scorer for mode %@, but deferring training because XPC activity asked for deferral.", buf, 0xCu);
        }

        v44 = 0;
      }

      else
      {
        v79 = v36;
        v41 = [[ATXContactModeDenyListModel alloc] initWithMode:unsignedIntegerValue contactStore:v10];
        [(ATXContactModeDenyListModel *)v41 scoredEntities];
        v46 = v45 = v10;
        [(ATXContactModeDenyListModel *)v41 purgeDeletedContacts:v46];
        v48 = v47 = v8;

        v49 = ATXModeToString();
        v80 = v48;
        v50 = v48;
        v8 = v47;
        [(ATXModeEntityModelTrainer *)self persistModeEntityScores:v50 modeEntityTypeIdentifier:@"contacts" modeIdentifier:v49 modeConfigurationType:1];

        didDefer6 = [v47 didDefer];
        if (didDefer6)
        {
          v52 = __atxlog_handle_notification_management(didDefer6);
          v78 = v52;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = ATXModeToString();
            *buf = 138412290;
            v95 = v53;
            _os_log_impl(&dword_2263AA000, v52, OS_LOG_TYPE_DEFAULT, "(Deny List) Finished training of contact scores in Mode Entity Scorer for mode %@, but deferring training because XPC activity asked for deferral.", buf, 0xCu);
          }

          v44 = 0;
          v42 = v85;
          v36 = v79;
        }

        else
        {
          v78 = [[ATXNotificationModeModel alloc] initWithMode:unsignedIntegerValue contactStore:v45];
          v54 = [(ATXNotificationModeModel *)v78 scoredEntitiesWithScoredAppEntities:v89 scoredContactEntities:v38];
          v55 = ATXModeToString();
          v76 = v54;
          [(ATXModeEntityModelTrainer *)self persistModeEntityScores:v54 modeEntityTypeIdentifier:@"notifications" modeIdentifier:v55 modeConfigurationType:0];

          didDefer7 = [v8 didDefer];
          if (didDefer7)
          {
            p_super = __atxlog_handle_notification_management(didDefer7);
            v42 = v85;
            v36 = v79;
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
            {
              v58 = ATXModeToString();
              *buf = 138412290;
              v95 = v58;
              _os_log_impl(&dword_2263AA000, p_super, OS_LOG_TYPE_DEFAULT, "Finished training of notification scores in Mode Entity Scorer for mode %@, but deferring training because XPC activity asked for deferral.", buf, 0xCu);
            }

            v44 = 0;
          }

          else
          {
            v74 = [[ATXWidgetModeModel alloc] initWithMode:unsignedIntegerValue globalWidgetPopularityModel:self->_globalWidgetPopularityModel];
            v59 = [(ATXWidgetModeModel *)v74 scoredEntitiesWithScoredAppEntities:v89];
            v60 = ATXModeToString();
            v73 = v59;
            [(ATXModeEntityModelTrainer *)self persistModeEntityScores:v59 modeEntityTypeIdentifier:@"widgets" modeIdentifier:v60 modeConfigurationType:0];

            v62 = __atxlog_handle_notification_management(v61);
            v36 = v79;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              v63 = ATXModeToString();
              *buf = 138412290;
              v95 = v63;
              _os_log_impl(&dword_2263AA000, v62, OS_LOG_TYPE_DEFAULT, "Finished training of widget scores in Mode Entity Scorer for mode %@.", buf, 0xCu);
            }

            didDefer8 = [v8 didDefer];
            v65 = didDefer8;
            v42 = v85;
            if (didDefer8)
            {
              v66 = __atxlog_handle_notification_management(didDefer8);
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
              {
                v67 = ATXModeToString();
                *buf = 138412290;
                v95 = v67;
                _os_log_impl(&dword_2263AA000, v66, OS_LOG_TYPE_DEFAULT, "Finished training of all entities for mode %@, but deferring training because XPC activity asked for deferral.", buf, 0xCu);
              }
            }

            else
            {
              ++v75;
              v66 = allModesForTraining();
              [v8 setProgressUnits:{(v75 / -[NSObject count](v66, "count") * 95.0)}];
            }

            v44 = v65 ^ 1;
            p_super = &v74->super;
          }
        }

        v11 = v77;
      }

      objc_autoreleasePoolPop(context);
      if (!v44)
      {
        v10 = v81;
        goto LABEL_63;
      }

LABEL_47:
      ++v12;
      v10 = v81;
      if (v82 == v12)
      {
        v82 = [v11 countByEnumeratingWithState:&v90 objects:v98 count:16];
        if (v82)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  v11 = __atxlog_handle_notification_management([v8 setDone]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Finished training Mode Entity Models for all modes.", buf, 2u);
  }

LABEL_63:

LABEL_64:
}

- (BOOL)shouldDeferTrainingDueToRestoredBackup
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277D41CF0]];
  v4 = *MEMORY[0x277D41CC8];
  [v3 doubleForKey:*MEMORY[0x277D41CC8]];
  v6 = v5;
  timeIntervalSinceReferenceDate = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8 - v6;
  if (v8 - v6 >= 604800.0)
  {
    if (v6 > 0.0)
    {
      [v3 removeObjectForKey:v4];
    }
  }

  else
  {
    v10 = __atxlog_handle_notification_management(timeIntervalSinceReferenceDate);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Skipping retraining because backup was recently restored", v12, 2u);
    }
  }

  return v9 < 604800.0;
}

- (BOOL)shouldDeferTrainingDueToUpgrade
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277D41CF0]];
  v4 = *MEMORY[0x277D41CD0];
  [v3 doubleForKey:*MEMORY[0x277D41CD0]];
  if (v5 == 0.0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v7 = v6;
    [v3 setDouble:v4 forKey:?];
  }

  else
  {
    v7 = v5;
  }

  timeIntervalSinceReferenceDate = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v10 = v9 - v7;
  if (v10 < 604800.0)
  {
    v11 = __atxlog_handle_notification_management(timeIntervalSinceReferenceDate);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Skipping retraining because of recent upgrade", v13, 2u);
    }
  }

  return v10 < 604800.0;
}

- (id)pathForModeEntityTypeIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier modeConfigurationType:(int64_t)type
{
  cacheBasePath = self->_cacheBasePath;
  v8 = MEMORY[0x277CCACA8];
  modeIdentifierCopy = modeIdentifier;
  identifierCopy = identifier;
  modeIdentifierCopy = [[v8 alloc] initWithFormat:@"%@_%@", identifierCopy, modeIdentifierCopy];

  v12 = [(NSString *)cacheBasePath stringByAppendingPathComponent:modeIdentifierCopy];

  if (type == 1)
  {
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = NSStringForATXModeConfigurationType();
    v15 = [v13 initWithFormat:@"%@_%@", v12, v14];

    v12 = v15;
  }

  return v12;
}

- (BOOL)persistModeEntityScores:(id)scores modeEntityTypeIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier modeConfigurationType:(int64_t)type
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  scoresCopy = scores;
  [objc_opt_class() scoreThresholdGivenModeEntityScores:scoresCopy modeEntityTypeIdentifier:identifierCopy];
  v14 = [objc_opt_class() thresholdedModeEntityScores:scoresCopy modeEntityTypeIdentifier:identifierCopy threshold:v13];

  v15 = objc_autoreleasePoolPush();
  v16 = objc_autoreleasePoolPush();
  v27 = 0;
  v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v27];
  v18 = v27;
  objc_autoreleasePoolPop(v16);
  if (v17 || !v18)
  {
    v20 = [(ATXModeEntityModelTrainer *)self pathForModeEntityTypeIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy modeConfigurationType:type];
    v26 = 0;
    v21 = [v17 writeToFile:v20 options:1073741825 error:&v26];
    v22 = v26;
    v23 = __atxlog_handle_notification_management(v22);
    v24 = v23;
    if (v21)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = identifierCopy;
        _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "SUCCESS: Finished writing mode entity scores for mode entity type: %@.", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [ATXModeEntityModelTrainer persistModeEntityScores:modeEntityTypeIdentifier:modeIdentifier:modeConfigurationType:];
    }
  }

  else
  {
    v20 = __atxlog_handle_notification_management(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [ATXModeEntityModelTrainer persistModeEntityScores:modeEntityTypeIdentifier:modeIdentifier:modeConfigurationType:];
    }

    v21 = 0;
  }

  objc_autoreleasePoolPop(v15);
  return v21;
}

+ (id)thresholdedModeEntityScores:(id)scores modeEntityTypeIdentifier:(id)identifier threshold:(double)threshold
{
  v39 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  identifierCopy = identifier;
  if (([identifierCopy isEqualToString:@"apps"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"contacts"))
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = scoresCopy;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = [v10 objectForKeyedSubscript:{v15, v26}];
          scoreMetadata = [v16 scoreMetadata];
          [scoreMetadata score];
          v19 = v18;

          if (v19 >= threshold)
          {
            [v9 setObject:v16 forKeyedSubscript:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v12);
    }

    v21 = __atxlog_handle_notification_management(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v10 count];
      v23 = v22 - [v9 count];
      v24 = [v10 count];
      *buf = 136315906;
      v31 = "+[ATXModeEntityModelTrainer thresholdedModeEntityScores:modeEntityTypeIdentifier:threshold:]";
      v32 = 2048;
      v33 = v23;
      v34 = 2048;
      v35 = v24;
      v36 = 2048;
      thresholdCopy = threshold;
      _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "%s Filtered out %ld/%ld entities because their scores were < %f", buf, 0x2Au);
    }
  }

  else
  {
    v9 = scoresCopy;
  }

  return v9;
}

+ (double)scoreThresholdGivenModeEntityScores:(id)scores modeEntityTypeIdentifier:(id)identifier
{
  scoresCopy = scores;
  identifierCopy = identifier;
  v8 = +[_ATXGlobals sharedInstance];
  [v8 scoreThresholdForSavingAppsToModeFiles];
  v10 = v9;
  [v8 scoreThresholdForSavingContactsToModeFiles];
  v12 = v11;
  if (([identifierCopy isEqualToString:@"apps"] & 1) == 0)
  {
    v10 = 1.0;
    if (![identifierCopy isEqualToString:@"contacts"])
    {
      goto LABEL_6;
    }

    v10 = v12;
  }

  [self maxScoreWithThresholdGivenModeEntityScores:scoresCopy];
  if (v13 >= v10)
  {
    v10 = v13;
  }

LABEL_6:

  return v10;
}

+ (double)maxScoreWithThresholdGivenModeEntityScores:(id)scores
{
  v28 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = scoresCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKeyedSubscript:{*(*(&v23 + 1) + 8 * v9), v23}];
        v11 = objc_alloc(MEMORY[0x277CCABB0]);
        scoreMetadata = [v10 scoreMetadata];
        [scoreMetadata score];
        v13 = [v11 initWithDouble:?];

        [v4 addObject:v13];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
  v15 = [MEMORY[0x277CBEA60] arrayWithObject:v14];
  v16 = [v4 sortedArrayUsingDescriptors:v15];

  v17 = +[_ATXGlobals sharedInstance];
  maxElementsToPerisistPerEntityForModeBackup = [v17 maxElementsToPerisistPerEntityForModeBackup];
  if ([v16 count] <= maxElementsToPerisistPerEntityForModeBackup)
  {
    if (![v16 count])
    {
LABEL_14:
      v21 = 0.0;
      goto LABEL_15;
    }

    maxElementsToPerisistPerEntityForModeBackup = [v16 count];
  }

  else if (!maxElementsToPerisistPerEntityForModeBackup)
  {
    goto LABEL_14;
  }

  v19 = [v16 objectAtIndexedSubscript:{maxElementsToPerisistPerEntityForModeBackup - 1, v23}];
  [v19 doubleValue];
  v21 = v20;

LABEL_15:
  return v21;
}

+ (id)eventProviderForScorableTime:(id)time
{
  timeCopy = time;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = [self eventProviderForMode:{objc_msgSend(timeCopy, "atxMode")}];
  }

  else
  {
    v7 = __atxlog_handle_notification_management(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXModeEntityModelTrainer *)timeCopy eventProviderForScorableTime:v7];
    }

    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE658];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v8 raise:v9 format:{@"Received invalid scorable time class %@", v11}];

    v6 = 0;
  }

  return v6;
}

+ (id)eventProviderForMode:(unint64_t)mode
{
  if (mode - 8 >= 4)
  {
    if (mode == 12)
    {
      v6 = objc_opt_new();
      modeCopy = 12;
    }

    else
    {
      v6 = [ATXUnifiedModeStreamModeEventProvider alloc];
      modeCopy = mode;
    }

    v4 = [(ATXModeTransitionModeEventProvider *)v6 initWithMode:modeCopy];
  }

  else
  {
    v3 = __atxlog_handle_notification_management(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [ATXModeEntityModelTrainer eventProviderForMode:v3];
    }

    v4 = 0;
  }

  return v4;
}

+ (void)eventProviderForScorableTime:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Received invalid scorable time class %@", &v5, 0xCu);
}

@end