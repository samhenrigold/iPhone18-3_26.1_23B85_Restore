@interface ATXModeEntityScorerServer
+ (id)sharedInstance;
- (ATXModeEntityScorerServer)initWithContactStoreProvider:(id)provider;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)saveScoredEntitiesToDisk:(id)disk mode:(id)mode modeEntityTypeIdentifier:(id)identifier modeConfigurationType:(int64_t)type;
- (id)dataFromFileHandle:(id)handle;
- (id)emptyModeEntityScore;
- (id)modeEntityScoresFromCacheForModeEntityTypeIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier modeConfigurationType:(int64_t)type;
- (id)pathForModeEntityTypeIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier modeConfigurationType:(int64_t)type;
- (id)rankedAppsForDenyListForMode:(unint64_t)mode;
- (id)rankedAppsForMode:(unint64_t)mode;
- (id)rankedEntitiesForMode:(unint64_t)mode entityTypeIdentifier:(id)identifier modeConfigurationType:(int64_t)type options:(unint64_t)options;
- (id)rankedWidgetsForMode:(unint64_t)mode;
- (id)scoredNotificationEntityForAppFromNotificationEntity:(id)entity notificationScores:(id)scores;
- (id)scoredNotificationEntityForContactFromNotificationEntity:(id)entity notificationScores:(id)scores;
- (void)assignModeEntityScores:(unint64_t)scores entityTypeIdentifier:(id)identifier entityIdentifier:(id)entityIdentifier score:(double)score modeConfigurationType:(int64_t)type reply:(id)reply;
- (void)dealloc;
- (void)modeEntityScoresFromCacheForModeEntityTypeIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier modeConfigurationType:(int64_t)type reply:(id)reply;
- (void)rankedAppsForDenyListForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedAppsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply;
- (void)rankedAppsForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedAppsForNotificationsForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedContactsForDenyListForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply;
- (void)rankedContactsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply;
- (void)rankedContactsForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedContactsForNotificationsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply;
- (void)rankedNotificationsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply;
- (void)rankedNotificationsForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedWidgetsForMode:(unint64_t)mode reply:(id)reply;
- (void)scoreApps:(id)apps mode:(unint64_t)mode reply:(id)reply;
- (void)scoreAppsForDenyList:(id)list mode:(unint64_t)mode reply:(id)reply;
- (void)scoreContacts:(id)contacts mode:(unint64_t)mode reply:(id)reply;
- (void)scoreContactsForDenyList:(id)list mode:(unint64_t)mode reply:(id)reply;
- (void)scoreEntities:(id)entities entityTypeIdentifier:(id)identifier mode:(unint64_t)mode modeConfigurationType:(int64_t)type;
- (void)scoreNotificationModeEntity:(id)entity modeEntityScores:(id)scores;
- (void)scoreNotifications:(id)notifications mode:(unint64_t)mode reply:(id)reply;
@end

@implementation ATXModeEntityScorerServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_23 != -1)
  {
    +[ATXModeEntityScorerServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_28;

  return v3;
}

void __43__ATXModeEntityScorerServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[ATXModeEntityScorerServer alloc] initWithContactStoreProvider:&__block_literal_global_19];
  v2 = sharedInstance__pasExprOnceResult_28;
  sharedInstance__pasExprOnceResult_28 = v1;

  objc_autoreleasePoolPop(v0);
}

id __43__ATXModeEntityScorerServer_sharedInstance__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();

  return v2;
}

- (ATXModeEntityScorerServer)initWithContactStoreProvider:(id)provider
{
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = ATXModeEntityScorerServer;
  v5 = [(ATXModeEntityScorerServer *)&v14 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.ModeEntityScorer"];
    listener = v5->_listener;
    v5->_listener = v6;

    [(NSXPCListener *)v5->_listener setDelegate:v5];
    [(NSXPCListener *)v5->_listener resume];
    v8 = objc_alloc(MEMORY[0x277D425E8]);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__ATXModeEntityScorerServer_initWithContactStoreProvider___block_invoke;
    v12[3] = &unk_27859E2B0;
    v13 = providerCopy;
    v9 = [v8 initWithBlock:v12 idleTimeout:3600.0];
    lazyStableContactRepresentationDataStore = v5->_lazyStableContactRepresentationDataStore;
    v5->_lazyStableContactRepresentationDataStore = v9;
  }

  return v5;
}

ATXStableContactRepresentationDatastore *__58__ATXModeEntityScorerServer_initWithContactStoreProvider___block_invoke(uint64_t a1)
{
  v2 = [ATXStableContactRepresentationDatastore alloc];
  v3 = (*(*(a1 + 32) + 16))();
  v4 = [(ATXStableContactRepresentationDatastore *)v2 initWithContactStore:v3];

  return v4;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = ATXModeEntityScorerServer;
  [(ATXModeEntityScorerServer *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v105[2] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.ModeEntityScorer"];
  v7 = v6;
  if (v6 && (v6 = objc_opt_respondsToSelector(), (v6 & 1) != 0) && (v6 = [v7 BOOLValue], (v6 & 1) != 0))
  {
    selfCopy = self;
    v8 = __atxlog_handle_notification_management(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "ATXModeEntityScorerServer Established connection", buf, 2u);
    }

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283ABFE00];
    v10 = MEMORY[0x277CBEB98];
    v105[0] = objc_opt_class();
    v105[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:2];
    v12 = [v10 setWithArray:v11];
    [v9 setClasses:v12 forSelector:sel_scoreContacts_mode_reply_ argumentIndex:0 ofReply:1];

    v13 = MEMORY[0x277CBEB98];
    v104[0] = objc_opt_class();
    v104[1] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:2];
    v15 = [v13 setWithArray:v14];
    [v9 setClasses:v15 forSelector:sel_rankedContactsForMode_reply_ argumentIndex:0 ofReply:1];

    v16 = MEMORY[0x277CBEB98];
    v103[0] = objc_opt_class();
    v103[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:2];
    v18 = [v16 setWithArray:v17];
    [v9 setClasses:v18 forSelector:sel_rankedContactsForMode_options_reply_ argumentIndex:0 ofReply:1];

    v19 = MEMORY[0x277CBEB98];
    v102[0] = objc_opt_class();
    v102[1] = objc_opt_class();
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:2];
    v21 = [v19 setWithArray:v20];
    [v9 setClasses:v21 forSelector:sel_scoreContacts_mode_reply_ argumentIndex:0 ofReply:0];

    v22 = MEMORY[0x277CBEB98];
    v101[0] = objc_opt_class();
    v101[1] = objc_opt_class();
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:2];
    v24 = [v22 setWithArray:v23];
    [v9 setClasses:v24 forSelector:sel_scoreApps_mode_reply_ argumentIndex:0 ofReply:1];

    v25 = MEMORY[0x277CBEB98];
    v100[0] = objc_opt_class();
    v100[1] = objc_opt_class();
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:2];
    v27 = [v25 setWithArray:v26];
    [v9 setClasses:v27 forSelector:sel_rankedAppsForMode_reply_ argumentIndex:0 ofReply:1];

    v28 = MEMORY[0x277CBEB98];
    v99[0] = objc_opt_class();
    v99[1] = objc_opt_class();
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:2];
    v30 = [v28 setWithArray:v29];
    [v9 setClasses:v30 forSelector:sel_rankedAppsForMode_options_reply_ argumentIndex:0 ofReply:1];

    v31 = MEMORY[0x277CBEB98];
    v98[0] = objc_opt_class();
    v98[1] = objc_opt_class();
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:2];
    v33 = [v31 setWithArray:v32];
    [v9 setClasses:v33 forSelector:sel_scoreApps_mode_reply_ argumentIndex:0 ofReply:0];

    v34 = MEMORY[0x277CBEB98];
    v97[0] = objc_opt_class();
    v97[1] = objc_opt_class();
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:2];
    v36 = [v34 setWithArray:v35];
    [v9 setClasses:v36 forSelector:sel_scoreAppsForDenyList_mode_reply_ argumentIndex:0 ofReply:1];

    v37 = MEMORY[0x277CBEB98];
    v96[0] = objc_opt_class();
    v96[1] = objc_opt_class();
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:2];
    v39 = [v37 setWithArray:v38];
    [v9 setClasses:v39 forSelector:sel_rankedAppsForDenyListForMode_reply_ argumentIndex:0 ofReply:1];

    v40 = MEMORY[0x277CBEB98];
    v95[0] = objc_opt_class();
    v95[1] = objc_opt_class();
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:2];
    v42 = [v40 setWithArray:v41];
    [v9 setClasses:v42 forSelector:sel_scoreAppsForDenyList_mode_reply_ argumentIndex:0 ofReply:0];

    v43 = MEMORY[0x277CBEB98];
    v94[0] = objc_opt_class();
    v94[1] = objc_opt_class();
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
    v45 = [v43 setWithArray:v44];
    [v9 setClasses:v45 forSelector:sel_scoreContactsForDenyList_mode_reply_ argumentIndex:0 ofReply:1];

    v46 = MEMORY[0x277CBEB98];
    v93[0] = objc_opt_class();
    v93[1] = objc_opt_class();
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
    v48 = [v46 setWithArray:v47];
    [v9 setClasses:v48 forSelector:sel_rankedContactsForDenyListForMode_reply_ argumentIndex:0 ofReply:1];

    v49 = MEMORY[0x277CBEB98];
    v92[0] = objc_opt_class();
    v92[1] = objc_opt_class();
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
    v51 = [v49 setWithArray:v50];
    [v9 setClasses:v51 forSelector:sel_rankedContactsForDenyListForMode_options_reply_ argumentIndex:0 ofReply:1];

    v52 = MEMORY[0x277CBEB98];
    v91[0] = objc_opt_class();
    v91[1] = objc_opt_class();
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
    v54 = [v52 setWithArray:v53];
    [v9 setClasses:v54 forSelector:sel_scoreContactsForDenyList_mode_reply_ argumentIndex:0 ofReply:0];

    v55 = MEMORY[0x277CBEB98];
    v90[0] = objc_opt_class();
    v90[1] = objc_opt_class();
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
    v57 = [v55 setWithArray:v56];
    [v9 setClasses:v57 forSelector:sel_rankedWidgetsForMode_reply_ argumentIndex:0 ofReply:1];

    v58 = MEMORY[0x277CBEB98];
    v89[0] = objc_opt_class();
    v89[1] = objc_opt_class();
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
    v60 = [v58 setWithArray:v59];
    [v9 setClasses:v60 forSelector:sel_scoreNotifications_mode_reply_ argumentIndex:0 ofReply:1];

    v61 = MEMORY[0x277CBEB98];
    v88[0] = objc_opt_class();
    v88[1] = objc_opt_class();
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
    v63 = [v61 setWithArray:v62];
    [v9 setClasses:v63 forSelector:sel_scoreNotifications_mode_reply_ argumentIndex:0 ofReply:0];

    v64 = MEMORY[0x277CBEB98];
    v87[0] = objc_opt_class();
    v87[1] = objc_opt_class();
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
    v66 = [v64 setWithArray:v65];
    [v9 setClasses:v66 forSelector:sel_rankedNotificationsForMode_reply_ argumentIndex:0 ofReply:1];

    v67 = MEMORY[0x277CBEB98];
    v86[0] = objc_opt_class();
    v86[1] = objc_opt_class();
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
    v69 = [v67 setWithArray:v68];
    [v9 setClasses:v69 forSelector:sel_rankedNotificationsForMode_options_reply_ argumentIndex:0 ofReply:1];

    v70 = MEMORY[0x277CBEB98];
    v85[0] = objc_opt_class();
    v85[1] = objc_opt_class();
    v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
    v72 = [v70 setWithArray:v71];
    [v9 setClasses:v72 forSelector:sel_rankedAppsForNotificationsForMode_reply_ argumentIndex:0 ofReply:1];

    v73 = MEMORY[0x277CBEB98];
    v84[0] = objc_opt_class();
    v84[1] = objc_opt_class();
    v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];
    v75 = [v73 setWithArray:v74];
    [v9 setClasses:v75 forSelector:sel_rankedContactsForNotificationsForMode_reply_ argumentIndex:0 ofReply:1];

    v76 = MEMORY[0x277CBEB98];
    v83[0] = objc_opt_class();
    v83[1] = objc_opt_class();
    v83[2] = objc_opt_class();
    v77 = 1;
    v83[3] = objc_opt_class();
    v83[4] = objc_opt_class();
    v83[5] = objc_opt_class();
    v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:6];
    v79 = [v76 setWithArray:v78];
    [v9 setClasses:v79 forSelector:sel_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType_reply_ argumentIndex:0 ofReply:1];

    [connectionCopy setExportedInterface:v9];
    [connectionCopy setExportedObject:selfCopy];
    [connectionCopy setInterruptionHandler:&__block_literal_global_88_0];
    [connectionCopy setInvalidationHandler:&__block_literal_global_91_1];
    [connectionCopy resume];
  }

  else
  {
    v9 = __atxlog_handle_notification_management(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer listener:shouldAcceptNewConnection:];
    }

    v77 = 0;
  }

  return v77;
}

void __64__ATXModeEntityScorerServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_notification_management(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __64__ATXModeEntityScorerServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v1);
  }
}

void __64__ATXModeEntityScorerServer_listener_shouldAcceptNewConnection___block_invoke_89(uint64_t a1)
{
  v1 = __atxlog_handle_notification_management(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __64__ATXModeEntityScorerServer_listener_shouldAcceptNewConnection___block_invoke_89_cold_1(v1);
  }
}

- (void)scoreContacts:(id)contacts mode:(unint64_t)mode reply:(id)reply
{
  v33 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  replyCopy = reply;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [contactsCopy countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = contactsCopy;
      v11 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v10);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        result = [(_PASLazyPurgeableResult *)self->_lazyStableContactRepresentationDataStore result];
        cnContactId = [v12 cnContactId];
        rawIdentifier = [v12 rawIdentifier];
        v16 = [result stableContactRepresentationForCnContactId:cnContactId rawIdentifier:rawIdentifier];
        stableContactIdentifier = [v16 stableContactIdentifier];
        [v12 setStableContactIdentifier:stableContactIdentifier];

        ++v11;
      }

      while (v8 != v11);
      contactsCopy = v10;
      v7 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v8 = v7;
    }

    while (v7);
  }

  if (replyCopy)
  {
    [(ATXModeEntityScorerServer *)self scoreEntities:contactsCopy entityTypeIdentifier:*MEMORY[0x277D41C90] mode:mode];
    replyCopy[2](replyCopy, contactsCopy, 0);
  }

  else
  {
    v18 = __atxlog_handle_notification_management(v7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v19 = MEMORY[0x277CBEAD8];
    v20 = *MEMORY[0x277CBE658];
    v21 = NSStringFromSelector(a2);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v19 raise:v20 format:{@"No reply handler provided for %@ in %@", v21, v23}];
  }
}

- (void)rankedContactsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = [(ATXModeEntityScorerServer *)self rankedContactsForMode:mode];
    replyCopy[2](replyCopy, v8, 0);
  }

  else
  {
    v9 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v10 raise:v11 format:{@"No reply handler provided for %@ in %@", v12, v14}];
  }
}

- (void)rankedContactsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v10 = [(ATXModeEntityScorerServer *)self rankedContactsForMode:mode options:options];
    replyCopy[2](replyCopy, v10, 0);
  }

  else
  {
    v11 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

- (void)scoreApps:(id)apps mode:(unint64_t)mode reply:(id)reply
{
  appsCopy = apps;
  replyCopy = reply;
  if (replyCopy)
  {
    [(ATXModeEntityScorerServer *)self scoreEntities:appsCopy entityTypeIdentifier:*MEMORY[0x277D41C88] mode:mode];
    replyCopy[2](replyCopy, appsCopy, 0);
  }

  else
  {
    v11 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

- (void)rankedAppsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = [(ATXModeEntityScorerServer *)self rankedAppsForMode:mode];
    replyCopy[2](replyCopy, v8, 0);
  }

  else
  {
    v9 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v10 raise:v11 format:{@"No reply handler provided for %@ in %@", v12, v14}];
  }
}

- (void)rankedAppsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply
{
  v8 = MEMORY[0x277CBEB98];
  replyCopy = reply;
  v10 = [v8 alloc];
  v11 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;

  v15 = [v10 initWithArray:v14];
  v16 = [(ATXModeEntityScorerServer *)self rankedEntitiesForMode:mode entityTypeIdentifier:*MEMORY[0x277D41C88] options:options];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__ATXModeEntityScorerServer_rankedAppsForMode_options_reply___block_invoke;
  v19[3] = &unk_27859E2D8;
  v20 = v15;
  v17 = v15;
  v18 = [v16 _pas_filteredArrayWithTest:v19];
  replyCopy[2](replyCopy, v18, 0);
}

uint64_t __61__ATXModeEntityScorerServer_rankedAppsForMode_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CEB3B8];
  v5 = [v3 bundleId];
  if ([v4 isInstalledAndNotRestrictedForBundle:v5])
  {
    v6 = *(a1 + 32);
    v7 = [v3 bundleId];
    v8 = [v6 containsObject:v7] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)rankedAppsForMode:(unint64_t)mode
{
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  v10 = [v5 initWithArray:v9];
  v11 = [(ATXModeEntityScorerServer *)self rankedEntitiesForMode:mode entityTypeIdentifier:*MEMORY[0x277D41C88] options:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__ATXModeEntityScorerServer_rankedAppsForMode___block_invoke;
  v15[3] = &unk_27859E2D8;
  v16 = v10;
  v12 = v10;
  v13 = [v11 _pas_filteredArrayWithTest:v15];

  return v13;
}

uint64_t __47__ATXModeEntityScorerServer_rankedAppsForMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CEB3B8];
  v5 = [v3 bundleId];
  if ([v4 isInstalledAndNotRestrictedForBundle:v5])
  {
    v6 = *(a1 + 32);
    v7 = [v3 bundleId];
    v8 = [v6 containsObject:v7] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)rankedWidgetsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = [(ATXModeEntityScorerServer *)self rankedWidgetsForMode:mode];
    replyCopy[2](replyCopy, v8, 0);
  }

  else
  {
    v9 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v10 raise:v11 format:{@"No reply handler provided for %@ in %@", v12, v14}];
  }
}

- (id)rankedWidgetsForMode:(unint64_t)mode
{
  v3 = [(ATXModeEntityScorerServer *)self rankedEntitiesForMode:mode entityTypeIdentifier:*MEMORY[0x277D41CF8] options:0];
  v4 = [v3 _pas_filteredArrayWithTest:&__block_literal_global_100_0];

  return v4;
}

uint64_t __50__ATXModeEntityScorerServer_rankedWidgetsForMode___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 widget];
  v3 = [v2 extensionIdentity];
  v4 = [v3 containerBundleIdentifier];

  if (ATXBundleIdIsFakeContainerBundleId())
  {
    v5 = 1;
  }

  else
  {
    v5 = [MEMORY[0x277CEB3B8] isInstalledAndNotRestrictedForBundle:v4];
  }

  return v5;
}

- (void)scoreNotifications:(id)notifications mode:(unint64_t)mode reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  replyCopy = reply;
  if (replyCopy)
  {
    v10 = *MEMORY[0x277D41CD8];
    v11 = ATXModeToString();
    v12 = [(ATXModeEntityScorerServer *)self modeEntityScoresFromCacheForModeEntityTypeIdentifier:v10 modeIdentifier:v11 modeConfigurationType:0];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = notificationsCopy;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(ATXModeEntityScorerServer *)self scoreNotificationModeEntity:*(*(&v23 + 1) + 8 * i) modeEntityScores:v12];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    replyCopy[2](replyCopy, v13, 0);
  }

  else
  {
    v18 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v19 = MEMORY[0x277CBEAD8];
    v20 = *MEMORY[0x277CBE658];
    v12 = NSStringFromSelector(a2);
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v19 raise:v20 format:{@"No reply handler provided for %@ in %@", v12, v22}];
  }
}

- (void)scoreNotificationModeEntity:(id)entity modeEntityScores:(id)scores
{
  entityCopy = entity;
  scoresCopy = scores;
  identifier = [entityCopy identifier];
  v8 = [scoresCopy objectForKeyedSubscript:identifier];

  if (v8)
  {
    scoreMetadata = [v8 scoreMetadata];
LABEL_11:
    v21 = scoreMetadata;
    [entityCopy setScoreMetadata:scoreMetadata];
    goto LABEL_12;
  }

  appEntity = [entityCopy appEntity];

  contactEntity = [entityCopy contactEntity];

  if (!appEntity || !contactEntity)
  {
    scoreMetadata = [(ATXModeEntityScorerServer *)self emptyModeEntityScore];
    goto LABEL_11;
  }

  v12 = [(ATXModeEntityScorerServer *)self scoredNotificationEntityForAppFromNotificationEntity:entityCopy notificationScores:scoresCopy];
  v13 = [(ATXModeEntityScorerServer *)self scoredNotificationEntityForContactFromNotificationEntity:entityCopy notificationScores:scoresCopy];
  if (v12 | v13)
  {
    if (!v12 || ([v12 scoreMetadata], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "score"), v16 = v15, objc_msgSend(v13, "scoreMetadata"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "score"), v19 = v18, v17, v14, v20 = v12, v16 < v19))
    {
      v20 = v13;
    }

    v21 = v20;
    scoreMetadata2 = [v21 scoreMetadata];
  }

  else
  {
    scoreMetadata2 = [(ATXModeEntityScorerServer *)self emptyModeEntityScore];
    v21 = 0;
  }

  [entityCopy setScoreMetadata:scoreMetadata2];

LABEL_12:
}

- (id)emptyModeEntityScore
{
  v2 = objc_alloc(MEMORY[0x277CEB698]);
  v3 = objc_opt_new();
  v4 = [v2 initWithScore:0 featureVector:v3 uuid:0.0];

  return v4;
}

- (id)scoredNotificationEntityForAppFromNotificationEntity:(id)entity notificationScores:(id)scores
{
  scoresCopy = scores;
  appEntity = [entity appEntity];
  v7 = [objc_alloc(MEMORY[0x277CEB720]) initWithAppEntity:appEntity];
  identifier = [v7 identifier];
  v9 = [scoresCopy objectForKeyedSubscript:identifier];

  return v9;
}

- (id)scoredNotificationEntityForContactFromNotificationEntity:(id)entity notificationScores:(id)scores
{
  scoresCopy = scores;
  contactEntity = [entity contactEntity];
  v7 = [objc_alloc(MEMORY[0x277CEB720]) initWithContactEntity:contactEntity];
  identifier = [v7 identifier];
  v9 = [scoresCopy objectForKeyedSubscript:identifier];

  return v9;
}

- (void)rankedNotificationsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = [(ATXModeEntityScorerServer *)self rankedNotificationsForMode:mode];
    replyCopy[2](replyCopy, v8, 0);
  }

  else
  {
    v9 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v10 raise:v11 format:{@"No reply handler provided for %@ in %@", v12, v14}];
  }
}

- (void)rankedNotificationsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v10 = [(ATXModeEntityScorerServer *)self rankedNotificationsForMode:mode options:options];
    replyCopy[2](replyCopy, v10, 0);
  }

  else
  {
    v11 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

- (void)rankedAppsForNotificationsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = [(ATXModeEntityScorerServer *)self rankedEntitiesForMode:mode entityTypeIdentifier:*MEMORY[0x277D41CD8] options:0];
    v9 = [v8 _pas_filteredArrayWithTest:&__block_literal_global_105_1];

    v10 = objc_opt_new();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__ATXModeEntityScorerServer_rankedAppsForNotificationsForMode_reply___block_invoke_2;
    v16[3] = &unk_27859E340;
    v17 = v10;
    v11 = v10;
    [v9 enumerateObjectsUsingBlock:v16];
    replyCopy[2](replyCopy, v11, 0);
  }

  else
  {
    v12 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v13 = MEMORY[0x277CBEAD8];
    v14 = *MEMORY[0x277CBE658];
    v9 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v11 = NSStringFromClass(v15);
    [v13 raise:v14 format:{@"No reply handler provided for %@ in %@", v9, v11}];
  }
}

BOOL __69__ATXModeEntityScorerServer_rankedAppsForNotificationsForMode_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contactEntity];

  return v2 == 0;
}

void __69__ATXModeEntityScorerServer_rankedAppsForNotificationsForMode_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 appEntity];
  v4 = [v3 scoreMetadata];

  [v5 setScoreMetadata:v4];
  [*(a1 + 32) addObject:v5];
}

- (void)rankedContactsForNotificationsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v10 = [(ATXModeEntityScorerServer *)self rankedEntitiesForMode:mode entityTypeIdentifier:*MEMORY[0x277D41CD8] options:options];
    v11 = [v10 _pas_filteredArrayWithTest:&__block_literal_global_109];

    v12 = objc_opt_new();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __81__ATXModeEntityScorerServer_rankedContactsForNotificationsForMode_options_reply___block_invoke_2;
    v18[3] = &unk_27859E340;
    v19 = v12;
    v13 = v12;
    [v11 enumerateObjectsUsingBlock:v18];
    replyCopy[2](replyCopy, v13, 0);
  }

  else
  {
    v14 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CBE658];
    v11 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v13 = NSStringFromClass(v17);
    [v15 raise:v16 format:{@"No reply handler provided for %@ in %@", v11, v13}];
  }
}

BOOL __81__ATXModeEntityScorerServer_rankedContactsForNotificationsForMode_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 appEntity];

  return v2 == 0;
}

void __81__ATXModeEntityScorerServer_rankedContactsForNotificationsForMode_options_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 contactEntity];
  v4 = [v3 scoreMetadata];

  [v5 setScoreMetadata:v4];
  [*(a1 + 32) addObject:v5];
}

- (void)scoreAppsForDenyList:(id)list mode:(unint64_t)mode reply:(id)reply
{
  listCopy = list;
  replyCopy = reply;
  if (replyCopy)
  {
    [(ATXModeEntityScorerServer *)self scoreEntitiesForDenyList:listCopy entityTypeIdentifier:*MEMORY[0x277D41C88] mode:mode];
    replyCopy[2](replyCopy, listCopy, 0);
  }

  else
  {
    v11 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

- (void)rankedAppsForDenyListForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = [(ATXModeEntityScorerServer *)self rankedAppsForDenyListForMode:mode];
    replyCopy[2](replyCopy, v8, 0);
  }

  else
  {
    v9 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v10 raise:v11 format:{@"No reply handler provided for %@ in %@", v12, v14}];
  }
}

- (id)rankedAppsForDenyListForMode:(unint64_t)mode
{
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  v10 = [v5 initWithArray:v9];
  v11 = [(ATXModeEntityScorerServer *)self rankedEntitiesForDenyListForMode:mode entityTypeIdentifier:*MEMORY[0x277D41C88] options:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__ATXModeEntityScorerServer_rankedAppsForDenyListForMode___block_invoke;
  v15[3] = &unk_27859E2D8;
  v16 = v10;
  v12 = v10;
  v13 = [v11 _pas_filteredArrayWithTest:v15];

  return v13;
}

uint64_t __58__ATXModeEntityScorerServer_rankedAppsForDenyListForMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CEB3B8];
  v5 = [v3 bundleId];
  if ([v4 isInstalledAndNotRestrictedForBundle:v5])
  {
    v6 = *(a1 + 32);
    v7 = [v3 bundleId];
    v8 = [v6 containsObject:v7] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)scoreContactsForDenyList:(id)list mode:(unint64_t)mode reply:(id)reply
{
  listCopy = list;
  replyCopy = reply;
  if (replyCopy)
  {
    [(ATXModeEntityScorerServer *)self scoreEntitiesForDenyList:listCopy entityTypeIdentifier:*MEMORY[0x277D41C90] mode:mode];
    replyCopy[2](replyCopy, listCopy, 0);
  }

  else
  {
    v11 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

- (void)rankedContactsForDenyListForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v10 = [(ATXModeEntityScorerServer *)self rankedContactsForDenyListForMode:mode options:options];
    replyCopy[2](replyCopy, v10, 0);
  }

  else
  {
    v11 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

- (void)scoreEntities:(id)entities entityTypeIdentifier:(id)identifier mode:(unint64_t)mode modeConfigurationType:(int64_t)type
{
  v29 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  identifierCopy = identifier;
  v11 = ATXModeToString();
  v12 = [(ATXModeEntityScorerServer *)self modeEntityScoresFromCacheForModeEntityTypeIdentifier:identifierCopy modeIdentifier:v11 modeConfigurationType:type];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = entitiesCopy;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
        identifier = [v18 identifier];
        v20 = [v12 objectForKeyedSubscript:identifier];

        if (v20)
        {
          scoreMetadata = [v20 scoreMetadata];
        }

        else
        {
          v22 = objc_alloc(MEMORY[0x277CEB698]);
          v23 = objc_opt_new();
          scoreMetadata = [v22 initWithScore:0 featureVector:v23 uuid:0.0];
        }

        [v18 setScoreMetadata:scoreMetadata];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }
}

- (id)rankedEntitiesForMode:(unint64_t)mode entityTypeIdentifier:(id)identifier modeConfigurationType:(int64_t)type options:(unint64_t)options
{
  optionsCopy = options;
  v54 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v10 = ATXModeToString();
  selfCopy = self;
  v11 = [(ATXModeEntityScorerServer *)self modeEntityScoresFromCacheForModeEntityTypeIdentifier:identifierCopy modeIdentifier:v10 modeConfigurationType:type];

  v12 = [identifierCopy isEqualToString:*MEMORY[0x277D41C90]];
  if (v12)
  {
    if ((optionsCopy & 1) == 0)
    {
      lazyStableContactRepresentationDataStore = self->_lazyStableContactRepresentationDataStore;
      v14 = v11;
      result = [(_PASLazyPurgeableResult *)lazyStableContactRepresentationDataStore result];
      v11 = [result refreshCnContactIdsGivenContactEntities:v14];

      goto LABEL_22;
    }

    v31 = __atxlog_handle_notification_management(v12);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v32 = "Skipping contact id refresh because option was specified for ranked contact entities.";
    goto LABEL_20;
  }

  v16 = [identifierCopy isEqualToString:*MEMORY[0x277D41CD8]];
  if (!v16)
  {
    goto LABEL_22;
  }

  if (optionsCopy)
  {
    v31 = __atxlog_handle_notification_management(v16);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
LABEL_21:

      goto LABEL_22;
    }

    *buf = 0;
    v32 = "Skipping contact id refresh because option was specified for ranked notification entities.";
LABEL_20:
    _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
    goto LABEL_21;
  }

  v42 = identifierCopy;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v41 = v11;
  obj = [v41 allValues];
  v17 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v46;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v45 + 1) + 8 * i);
        contactEntity = [v21 contactEntity];

        if (contactEntity)
        {
          result2 = [(_PASLazyPurgeableResult *)selfCopy->_lazyStableContactRepresentationDataStore result];
          contactEntity2 = [v21 contactEntity];
          identifier = [contactEntity2 identifier];
          v51 = identifier;
          contactEntity3 = [v21 contactEntity];
          v52 = contactEntity3;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          v28 = [result2 refreshCnContactIdsGivenContactEntities:v27];

          allValues = [v28 allValues];
          firstObject = [allValues firstObject];
          [v21 setContactEntity:firstObject];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v18);
  }

  v11 = v41;
  identifierCopy = v42;
LABEL_22:
  allValues2 = [v11 allValues];
  v34 = [allValues2 mutableCopy];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = objc_opt_new();
  }

  v37 = v36;

  v38 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scoreMetadata.score" ascending:0];
  v50 = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  [v37 sortUsingDescriptors:v39];

  return v37;
}

- (id)pathForModeEntityTypeIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier modeConfigurationType:(int64_t)type
{
  v7 = MEMORY[0x277CEBCB0];
  modeIdentifierCopy = modeIdentifier;
  identifierCopy = identifier;
  modeCachesRootDirectory = [v7 modeCachesRootDirectory];
  modeIdentifierCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", identifierCopy, modeIdentifierCopy];

  v12 = [modeCachesRootDirectory stringByAppendingPathComponent:modeIdentifierCopy];

  if (type == 1)
  {
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = NSStringForATXModeConfigurationType();
    v15 = [v13 initWithFormat:@"%@_%@", v12, v14];

    v12 = v15;
  }

  return v12;
}

- (void)modeEntityScoresFromCacheForModeEntityTypeIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier modeConfigurationType:(int64_t)type reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v12 = [(ATXModeEntityScorerServer *)self modeEntityScoresFromCacheForModeEntityTypeIdentifier:identifier modeIdentifier:modeIdentifier modeConfigurationType:type];
    replyCopy[2](replyCopy, v12, 0);
  }

  else
  {
    v13 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v14 = MEMORY[0x277CBEAD8];
    v15 = *MEMORY[0x277CBE658];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No reply handler provided for %@ in %@", v16, v18}];
  }
}

- (id)modeEntityScoresFromCacheForModeEntityTypeIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier modeConfigurationType:(int64_t)type
{
  v48 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  v10 = objc_autoreleasePoolPush();
  v11 = [(ATXModeEntityScorerServer *)self pathForModeEntityTypeIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy modeConfigurationType:type];
  v41 = 0;
  v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v11 options:1 error:&v41];
  v13 = v41;
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v36 = v11;
    v37 = v10;
    v38 = modeIdentifierCopy;
    v39 = identifierCopy;
    v18 = objc_autoreleasePoolPush();
    v34 = MEMORY[0x277CCAAC8];
    v35 = v18;
    context = objc_autoreleasePoolPush();
    v32 = objc_alloc(MEMORY[0x277CBEB98]);
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v32 initWithObjects:{v19, v20, v21, v22, v23, v24, v25, v26, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(context);
    v40 = 0;
    v28 = [v34 unarchivedObjectOfClasses:v27 fromData:v12 error:&v40];
    v16 = v40;

    objc_autoreleasePoolPop(v35);
    if (!v28 || v16)
    {
      v30 = __atxlog_handle_notification_management(v29);
      modeIdentifierCopy = v38;
      identifierCopy = v39;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v43 = v39;
        v44 = 2112;
        v45 = v38;
        v46 = 2112;
        v47 = v16;
        _os_log_error_impl(&dword_2263AA000, v30, OS_LOG_TYPE_ERROR, "Couldn't deserialized cached model results for EntityType: %@, Mode: %@. Error: %@", buf, 0x20u);
      }

      v17 = 0;
    }

    else
    {
      v17 = v28;
      modeIdentifierCopy = v38;
      identifierCopy = v39;
    }

    v11 = v36;
    v10 = v37;
  }

  else
  {
    v16 = __atxlog_handle_notification_management(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v43 = identifierCopy;
      v44 = 2112;
      v45 = modeIdentifierCopy;
      v46 = 2112;
      v47 = v14;
      _os_log_error_impl(&dword_2263AA000, v16, OS_LOG_TYPE_ERROR, "Couldn't find any cached model results for EntityType: %@, Mode: %@. Error: %@", buf, 0x20u);
    }

    v17 = 0;
  }

  objc_autoreleasePoolPop(v10);

  return v17;
}

- (id)dataFromFileHandle:(id)handle
{
  if (handle)
  {
    v9 = 0;
    v3 = [handle readDataToEndOfFileAndReturnError:&v9];
    v4 = v9;
    v5 = v4;
    if (!v3 || v4)
    {
      v7 = __atxlog_handle_notification_management(v4);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ATXModeEntityScorerServer dataFromFileHandle:];
      }

      v6 = 0;
    }

    else
    {
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)assignModeEntityScores:(unint64_t)scores entityTypeIdentifier:(id)identifier entityIdentifier:(id)entityIdentifier score:(double)score modeConfigurationType:(int64_t)type reply:(id)reply
{
  v45 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  entityIdentifierCopy = entityIdentifier;
  replyCopy = reply;
  if (replyCopy)
  {
    v17 = ATXModeToString();
    v18 = [(ATXModeEntityScorerServer *)self modeEntityScoresFromCacheForModeEntityTypeIdentifier:identifierCopy modeIdentifier:v17 modeConfigurationType:type];
    v19 = [v18 mutableCopy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = objc_opt_new();
    }

    v25 = v21;

    v28 = [v25 objectForKeyedSubscript:entityIdentifierCopy];

    if (v28)
    {
      v30 = [v25 objectForKeyedSubscript:entityIdentifierCopy];
      scoreMetadata = [v30 scoreMetadata];
      [scoreMetadata setScore:score];
    }

    else
    {
      v32 = __atxlog_handle_notification_management(v29);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315395;
        v42 = "[ATXModeEntityScorerServer assignModeEntityScores:entityTypeIdentifier:entityIdentifier:score:modeConfigurationType:reply:]";
        v43 = 2117;
        v44 = entityIdentifierCopy;
        _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "%s: Entity with identifier: '%{sensitive}@' was not in the cache. Creating a new entry.", buf, 0x16u);
      }

      if ([identifierCopy isEqual:@"apps"])
      {
        v33 = [objc_alloc(MEMORY[0x277CEB390]) initWithBundleId:entityIdentifierCopy];
      }

      else
      {
        v34 = [identifierCopy isEqual:@"contacts"];
        if (!v34)
        {
          v40 = __atxlog_handle_notification_management(v34);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            [ATXModeEntityScorerServer assignModeEntityScores:entityTypeIdentifier:entityIdentifier:score:modeConfigurationType:reply:];
          }

          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%s: Unsupported entity type '%@'", "-[ATXModeEntityScorerServer assignModeEntityScores:entityTypeIdentifier:entityIdentifier:score:modeConfigurationType:reply:]", identifierCopy}];
          goto LABEL_18;
        }

        v33 = [objc_alloc(MEMORY[0x277CEB420]) initWithDisplayName:entityIdentifierCopy rawIdentifier:entityIdentifierCopy cnContactId:entityIdentifierCopy];
      }

      v30 = v33;
      v35 = objc_alloc(MEMORY[0x277CEB698]);
      uUID = [MEMORY[0x277CCAD78] UUID];
      v37 = [v35 initWithScore:0 featureVector:uUID uuid:score];
      [v30 setScoreMetadata:v37];

      [v25 setObject:v30 forKeyedSubscript:entityIdentifierCopy];
    }

LABEL_18:
    v38 = ATXModeToString();
    v39 = [(ATXModeEntityScorerServer *)self saveScoredEntitiesToDisk:v25 mode:v38 modeEntityTypeIdentifier:identifierCopy modeConfigurationType:type];

    replyCopy[2](replyCopy, v39, 0);
    goto LABEL_19;
  }

  v22 = __atxlog_handle_notification_management(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [ATXModeEntityScorerServer scoreContacts:mode:reply:];
  }

  v23 = MEMORY[0x277CBEAD8];
  v24 = *MEMORY[0x277CBE658];
  v25 = NSStringFromSelector(a2);
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  [v23 raise:v24 format:{@"No reply handler provided for %@ in %@", v25, v27}];

LABEL_19:
}

- (BOOL)saveScoredEntitiesToDisk:(id)disk mode:(id)mode modeEntityTypeIdentifier:(id)identifier modeConfigurationType:(int64_t)type
{
  v32 = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  modeCopy = mode;
  identifierCopy = identifier;
  v13 = objc_autoreleasePoolPush();
  v14 = [(ATXModeEntityScorerServer *)self pathForModeEntityTypeIdentifier:identifierCopy modeIdentifier:modeCopy modeConfigurationType:type];
  v15 = objc_autoreleasePoolPush();
  v25 = 0;
  v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:diskCopy requiringSecureCoding:1 error:&v25];
  v17 = v25;
  objc_autoreleasePoolPop(v15);
  if (v17)
  {
    v19 = __atxlog_handle_notification_management(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer saveScoredEntitiesToDisk:mode:modeEntityTypeIdentifier:modeConfigurationType:];
    }

LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  v24 = 0;
  v20 = [v16 writeToFile:v14 options:1073741825 error:&v24];
  v17 = v24;
  v21 = __atxlog_handle_notification_management(v17);
  v19 = v21;
  if ((v20 & 1) == 0)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v27 = identifierCopy;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v17;
      _os_log_fault_impl(&dword_2263AA000, v19, OS_LOG_TYPE_FAULT, "FAILURE: Unable to write mode entity scores for mode entity type: %@ to path: %@. Error: %@", buf, 0x20u);
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = identifierCopy;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "SUCCESS: Finished writing mode entity scores for mode entity type: %@ to path: %@.", buf, 0x16u);
  }

  v22 = 1;
LABEL_11:

  objc_autoreleasePoolPop(v13);
  return v22;
}

- (void)scoreContacts:mode:reply:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_3_9();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v4, v5, "No reply handler provided for %@ in %@", v6, v7, v8, v9);
}

@end