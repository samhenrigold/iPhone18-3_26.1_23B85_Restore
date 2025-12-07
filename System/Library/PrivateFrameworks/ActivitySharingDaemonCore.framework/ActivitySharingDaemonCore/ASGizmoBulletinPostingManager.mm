@interface ASGizmoBulletinPostingManager
- (ASBulletinPostingManagerDelegate)delegate;
- (ASGizmoBulletinPostingManager)initWithDatabaseClient:(id)client;
- (BOOL)_isPostingAllowed;
- (id)_batchedNotificationRequestsFromCodableBulletins:(id)bulletins withAdditions:(id)additions;
- (id)_notificationRequestFromCodableBulletin:(id)bulletin withAdditions:(id)additions;
- (void)_postNotificationRequest:(id)request;
- (void)_postQueuedNotificationRequestsIfPossible;
- (void)_queue_postNotificationRequests:(id)requests;
- (void)activitySharingManagerReady:(id)ready;
- (void)dealloc;
- (void)enqueueBulletins:(id)bulletins withPostingSyle:(int64_t)syle;
- (void)handleNotificationResponse:(id)response completion:(id)completion;
- (void)postFakeBulletins:(id)bulletins;
- (void)postNotificationRequest:(id)request;
- (void)registerNotificationCategories:(id)categories;
- (void)removeCompetitionNotificationsForFriendUUID:(id)d;
- (void)removeNotificationWithIdentifier:(id)identifier;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation ASGizmoBulletinPostingManager

- (ASGizmoBulletinPostingManager)initWithDatabaseClient:(id)client
{
  clientCopy = client;
  v22.receiver = self;
  v22.super_class = ASGizmoBulletinPostingManager;
  v6 = [(ASGizmoBulletinPostingManager *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databaseClient, client);
    v8 = HKCreateSerialDispatchQueue();
    notificationQueue = v7->_notificationQueue;
    v7->_notificationQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CE9028]);
    notificationStore = v7->_notificationStore;
    v7->_notificationStore = v10;

    v12 = [MEMORY[0x277CBEB98] set];
    notificationRequests = v7->_notificationRequests;
    v7->_notificationRequests = v12;

    v14 = objc_alloc_init(ASOnWristMonitor);
    onWristMonitor = v7->_onWristMonitor;
    v7->_onWristMonitor = v14;

    [(ASOnWristMonitor *)v7->_onWristMonitor setDelegate:v7];
    v16 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.ActivityMonitorApp"];
    userNotificationCenter = v7->_userNotificationCenter;
    v7->_userNotificationCenter = v16;

    v18 = v7->_notificationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__ASGizmoBulletinPostingManager_initWithDatabaseClient___block_invoke;
    block[3] = &unk_278C4B278;
    v21 = v7;
    dispatch_async(v18, block);
  }

  return v7;
}

uint64_t __56__ASGizmoBulletinPostingManager_initWithDatabaseClient___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) loadBulletins];
  v2 = *(*(a1 + 32) + 24);

  return [v2 removeBulletinsOlderThanInterval:864000.0];
}

- (void)activitySharingManagerReady:(id)ready
{
  [(ASDatabaseClient *)self->_databaseClient addNanoAlertSuppressionObserver:self];
  [(ASDatabaseClient *)self->_databaseClient addProtectedDataObserver:self];
  [(UNUserNotificationCenter *)self->_userNotificationCenter setDelegate:self];
  userNotificationCenter = self->_userNotificationCenter;

  [(UNUserNotificationCenter *)userNotificationCenter setWantsNotificationResponsesDelivered];
}

- (void)dealloc
{
  [(ASOnWristMonitor *)self->_onWristMonitor setDelegate:0];
  [(ASDatabaseClient *)self->_databaseClient removeNanoAlertSuppressionObserver:self];
  [(ASDatabaseClient *)self->_databaseClient removeProtectedDataObserver:self];
  v3.receiver = self;
  v3.super_class = ASGizmoBulletinPostingManager;
  [(ASGizmoBulletinPostingManager *)&v3 dealloc];
}

- (BOOL)_isPostingAllowed
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CE91F8]];
  v4 = [v3 objectForKey:*MEMORY[0x277CE9290]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)_batchedNotificationRequestsFromCodableBulletins:(id)bulletins withAdditions:(id)additions
{
  v27 = *MEMORY[0x277D85DE8];
  bulletinsCopy = bulletins;
  additionsCopy = additions;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 134217984;
    v26 = [bulletinsCopy count];
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Batching %ld notifications", buf, 0xCu);
  }

  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(bulletinsCopy, "count")}];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __96__ASGizmoBulletinPostingManager__batchedNotificationRequestsFromCodableBulletins_withAdditions___block_invoke;
  v19[3] = &unk_278C4D008;
  v20 = additionsCopy;
  v21 = uUIDString;
  v22 = bulletinsCopy;
  v13 = v10;
  v23 = v13;
  selfCopy = self;
  v14 = bulletinsCopy;
  v15 = uUIDString;
  v16 = additionsCopy;
  [v14 enumerateObjectsUsingBlock:v19];
  v17 = v13;

  return v13;
}

void __96__ASGizmoBulletinPostingManager__batchedNotificationRequestsFromCodableBulletins_withAdditions___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  v5 = [*(a1 + 32) mutableCopy];
  v6 = *(a1 + 40);
  v7 = +[ASNotificationSentinelKeys awaitingSentinelKey];
  [v5 setObject:v6 forKeyedSubscript:v7];

  if (([*(a1 + 48) count] - 1) == a3)
  {
    v8 = *(a1 + 40);
    v9 = +[ASNotificationSentinelKeys sentinelKey];
    [v5 setObject:v8 forKeyedSubscript:v9];
  }

  v10 = *(a1 + 56);
  v11 = [*(a1 + 64) _notificationRequestFromCodableBulletin:v12 withAdditions:v5];
  [v10 addObject:v11];
}

- (id)_notificationRequestFromCodableBulletin:(id)bulletin withAdditions:(id)additions
{
  bulletinCopy = bulletin;
  additionsCopy = additions;
  v7 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v7 setCategoryIdentifier:*MEMORY[0x277CE9198]];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  type = [bulletinCopy type];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277CE9280]];

  friendListData = [bulletinCopy friendListData];
  [dictionary setObject:friendListData forKeyedSubscript:*MEMORY[0x277CE9260]];

  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(bulletinCopy, "competitionStage")}];
  [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277CE9258]];

  achievementData = [bulletinCopy achievementData];

  if (achievementData)
  {
    achievementData2 = [bulletinCopy achievementData];
    [dictionary setObject:achievementData2 forKeyedSubscript:*MEMORY[0x277CE9248]];
  }

  workoutData = [bulletinCopy workoutData];

  if (workoutData)
  {
    workoutData2 = [bulletinCopy workoutData];
    [dictionary setObject:workoutData2 forKeyedSubscript:*MEMORY[0x277CE9288]];
  }

  snapshotData = [bulletinCopy snapshotData];

  if (snapshotData)
  {
    snapshotData2 = [bulletinCopy snapshotData];
    [dictionary setObject:snapshotData2 forKeyedSubscript:*MEMORY[0x277CE9250]];
  }

  [dictionary addEntriesFromDictionary:additionsCopy];
  date = [MEMORY[0x277CBEAA8] date];
  v20 = ExpirationDateForBulletinTypeAndPublishDate(type, date);

  if (v20)
  {
    [v7 setExpirationDate:v20];
  }

  v21 = [MEMORY[0x277CE1F70] soundWithAlertType:19];
  [v21 setAlertTopic:*MEMORY[0x277D71F98]];
  [v7 setSound:v21];
  title = [bulletinCopy title];
  [v7 setTitle:title];

  v23 = ThreadIdentifierForBulletinType(type);
  [v7 setThreadIdentifier:v23];

  [v7 setUserInfo:dictionary];
  v24 = MEMORY[0x277CE1FC0];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v27 = [v24 requestWithIdentifier:uUIDString content:v7 trigger:0];

  friendUUID = [bulletinCopy friendUUID];
  v29 = [ASFriendNotificationContainer containerWithNotificationRequest:v27 friendUUID:friendUUID bulletinType:type];

  return v29;
}

- (void)postNotificationRequest:(id)request
{
  v10 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    identifier = [requestCopy identifier];
    v8 = 138412290;
    v9 = identifier;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Adding notification request with identifier %@", &v8, 0xCu);
  }

  [(ASGizmoBulletinPostingManager *)self _postNotificationRequest:requestCopy];
}

- (void)enqueueBulletins:(id)bulletins withPostingSyle:(int64_t)syle
{
  bulletinsCopy = bulletins;
  v7 = bulletinsCopy;
  if (syle)
  {
    [(ASGizmoBulletinPostingManager *)self postFakeBulletins:bulletinsCopy];
  }

  else
  {
    notificationQueue = self->_notificationQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__ASGizmoBulletinPostingManager_enqueueBulletins_withPostingSyle___block_invoke;
    v9[3] = &unk_278C4B250;
    v9[4] = self;
    v10 = bulletinsCopy;
    dispatch_async(notificationQueue, v9);
  }
}

uint64_t __66__ASGizmoBulletinPostingManager_enqueueBulletins_withPostingSyle___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeBulletinsOlderThanInterval:864000.0];
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) allObjects];
  [v2 addBulletins:v3];

  v4 = *(a1 + 32);

  return [v4 _postQueuedNotificationRequestsIfPossible];
}

- (void)removeCompetitionNotificationsForFriendUUID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  uUIDString = [dCopy UUIDString];
  v6 = [(ASGizmoBulletinPostingManager *)self recordIDForFriendUUID:uUIDString];
  if (v6)
  {
    ASLoggingInitialize();
    v7 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = dCopy;
      _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Found competition request bulletin record to withdraw for friend: %{public}@", buf, 0xCu);
    }

    v12 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    [(ASGizmoBulletinPostingManager *)self _withdrawNotificationRequestsWithIdentifiers:v8];

    [(ASGizmoBulletinPostingManager *)self removeRecordIDForFriendUUID:uUIDString];
  }

  else
  {
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__ASGizmoBulletinPostingManager_removeCompetitionNotificationsForFriendUUID___block_invoke;
    block[3] = &unk_278C4B250;
    block[4] = self;
    v11 = uUIDString;
    dispatch_async(notificationQueue, block);
  }
}

void __77__ASGizmoBulletinPostingManager_removeCompetitionNotificationsForFriendUUID___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __77__ASGizmoBulletinPostingManager_removeCompetitionNotificationsForFriendUUID___block_invoke_2;
  v2[3] = &unk_278C4D030;
  v3 = *(a1 + 40);
  [v1 removeBulletinsMatchingCriteria:v2];
}

uint64_t __77__ASGizmoBulletinPostingManager_removeCompetitionNotificationsForFriendUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 5)
  {
    v4 = [v3 friendUUID];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeNotificationWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = identifierCopy;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Withdrawing bulletin with identifier %@", buf, 0xCu);
  }

  v7 = identifierCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  [(ASGizmoBulletinPostingManager *)self _withdrawNotificationRequestsWithIdentifiers:v6];
}

- (void)registerNotificationCategories:(id)categories
{
  categoriesCopy = categories;
  userNotificationCenter = self->_userNotificationCenter;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ASGizmoBulletinPostingManager_registerNotificationCategories___block_invoke;
  v7[3] = &unk_278C4C410;
  v8 = categoriesCopy;
  selfCopy = self;
  v6 = categoriesCopy;
  [(UNUserNotificationCenter *)userNotificationCenter getNotificationCategoriesWithCompletionHandler:v7];
}

void __64__ASGizmoBulletinPostingManager_registerNotificationCategories___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 setByAddingObjectsFromSet:*(a1 + 32)];
  [*(*(a1 + 40) + 64) setNotificationCategories:v3];
}

- (void)_postQueuedNotificationRequestsIfPossible
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  databaseClient = self->_databaseClient;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__ASGizmoBulletinPostingManager__postQueuedNotificationRequestsIfPossible__block_invoke;
  v13[3] = &unk_278C4BD60;
  v15 = v18;
  v5 = v3;
  v14 = v5;
  [(ASDatabaseClient *)databaseClient isActivityAlertSuppressionEnabledWithCompletion:v13];
  dispatch_group_enter(v5);
  onWristMonitor = self->_onWristMonitor;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__ASGizmoBulletinPostingManager__postQueuedNotificationRequestsIfPossible__block_invoke_2;
  v10[3] = &unk_278C4BD60;
  v12 = v16;
  v7 = v5;
  v11 = v7;
  [(ASOnWristMonitor *)onWristMonitor getWristState:v10];
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ASGizmoBulletinPostingManager__postQueuedNotificationRequestsIfPossible__block_invoke_3;
  block[3] = &unk_278C4D098;
  block[4] = self;
  block[5] = v18;
  block[6] = v16;
  dispatch_group_notify(v7, notificationQueue, block);

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
}

void __74__ASGizmoBulletinPostingManager__postQueuedNotificationRequestsIfPossible__block_invoke_3(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) isProtectedDataAvailable];
  v3 = v2;
  if (*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 48) + 8) + 24) & v2)
  {
    ASLoggingInitialize();
    v4 = MEMORY[0x277CE8FF8];
    v5 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Posting queued notifications", buf, 2u);
    }

    v6 = [*(*(a1 + 32) + 24) bulletins];
    v7 = [v6 hk_filter:&__block_literal_global_15];

    v8 = [*(*(a1 + 32) + 24) bulletins];
    v9 = [v8 hk_filter:&__block_literal_global_326];

    ASLoggingInitialize();
    v10 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v7 count];
      *buf = 134217984;
      *v49 = v12;
      _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Notifications to post: %ld", buf, 0xCu);
    }

    ASLoggingInitialize();
    v13 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v9 count];
      *buf = 134217984;
      *v49 = v15;
      _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Notifications to defer: %ld", buf, 0xCu);
    }

    if ([v7 count])
    {
      ASLoggingInitialize();
      v16 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "Posting standard notifications, deferring important notifications", buf, 2u);
      }

      v17 = v9;
      v9 = v7;
    }

    else
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v22 = v21 - *(*(a1 + 32) + 48);
      ASLoggingInitialize();
      v23 = *v4;
      v24 = os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT);
      if (v22 <= 300.0)
      {
        if (v24)
        {
          *buf = 0;
          _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "Not allowing important notifications - not enough time has elapsed since previous deferral", buf, 2u);
        }

        v17 = v9;
        goto LABEL_33;
      }

      if (v24)
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "No standard notifications to post, allowing important notifications", buf, 2u);
      }

      v17 = 0;
    }

    v41 = v9;
    v40 = [v9 hk_filter:&__block_literal_global_329_0];
    v25 = [*(a1 + 32) _batchedNotificationRequestsFromCodableBulletins:?];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v44;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v44 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v43 + 1) + 8 * i);
          if ([v30 notificationRequestType] == 5)
          {
            v31 = [v30 notificationRequest];
            v32 = [v31 identifier];
            v33 = *(*(a1 + 32) + 56);
            v34 = [v30 friendUUID];
            [v33 setObject:v32 forKeyedSubscript:v34];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v27);
    }

    v35 = *(a1 + 32);
    v36 = [v25 hk_map:&__block_literal_global_333];
    [v35 _queue_postNotificationRequests:v36];

    [*(*(a1 + 32) + 24) removeAllBulletins];
    if ([v17 count])
    {
      ASLoggingInitialize();
      v37 = *MEMORY[0x277CE8FF8];
      if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v37, OS_LOG_TYPE_DEFAULT, "At least one bulletin was deferred, scheduling another attempt", buf, 2u);
      }

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      *(*(a1 + 32) + 48) = v38;
      [*(*(a1 + 32) + 24) addBulletins:v17];
      v39 = dispatch_time(0, 300000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__ASGizmoBulletinPostingManager__postQueuedNotificationRequestsIfPossible__block_invoke_334;
      block[3] = &unk_278C4B278;
      block[4] = *(a1 + 32);
      dispatch_after(v39, MEMORY[0x277D85CD0], block);
    }

    v7 = v41;
LABEL_33:

    return;
  }

  ASLoggingInitialize();
  v18 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(*(a1 + 40) + 8) + 24);
    v20 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109632;
    *v49 = v19;
    *&v49[4] = 1024;
    *&v49[6] = v20;
    v50 = 1024;
    v51 = v3;
    _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "Not posting queued notifications, isSuppressed=%{BOOL}d isOnWrist=%{BOOL}d protectedDataAvailable=%{BOOL}d", buf, 0x14u);
  }
}

uint64_t __74__ASGizmoBulletinPostingManager__postQueuedNotificationRequestsIfPossible__block_invoke_323(uint64_t a1, void *a2)
{
  v2 = ThreadIdentifierForBulletinType([a2 type]);
  v3 = [v2 isEqualToString:@"com.apple.ActivitySharing.default.thread"];

  return v3;
}

uint64_t __74__ASGizmoBulletinPostingManager__postQueuedNotificationRequestsIfPossible__block_invoke_2_324(uint64_t a1, void *a2)
{
  v2 = ThreadIdentifierForBulletinType([a2 type]);
  if ([v2 isEqualToString:@"com.apple.ActivitySharing.competitions.thread"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"com.apple.ActivityMonitorApp.challenges.thread"];
  }

  return v3;
}

uint64_t __74__ASGizmoBulletinPostingManager__postQueuedNotificationRequestsIfPossible__block_invoke_327(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 type];
  v4 = MEMORY[0x277CBEAA8];
  [v2 timestamp];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  v6 = ExpirationDateForBulletinTypeAndPublishDate(v3, v5);
  ASLoggingInitialize();
  v7 = MEMORY[0x277CE8FF8];
  v8 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v5;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Publish date is %@", &v17, 0xCu);
  }

  if (v6 && ([MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate], v10 = v9, objc_msgSend(v6, "timeIntervalSinceReferenceDate"), v10 > v11))
  {
    ASLoggingInitialize();
    v14 = *v7;
    v12 = 0;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v2 title];
      v17 = 134218242;
      v18 = v3;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "Dropping queued bulletin because it's been queued for too long: %lu / %@", &v17, 0x16u);

      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t __74__ASGizmoBulletinPostingManager__postQueuedNotificationRequestsIfPossible__block_invoke_334(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "Deferred bulletin dispatch timer fired", v4, 2u);
  }

  return [*(a1 + 32) _postQueuedNotificationRequestsIfPossible];
}

- (void)_queue_postNotificationRequests:(id)requests
{
  v19 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "GizmoBulletinPostingManager queue post notification requests", buf, 2u);
  }

  dispatch_assert_queue_V2(self->_notificationQueue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = requestsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ASGizmoBulletinPostingManager *)self _postNotificationRequest:*(*(&v13 + 1) + 8 * v10++), v13];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [(NSSet *)self->_notificationRequests setByAddingObjectsFromArray:v6];
  notificationRequests = self->_notificationRequests;
  self->_notificationRequests = v11;
}

- (void)_postNotificationRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  if ([(ASGizmoBulletinPostingManager *)self _isPostingAllowed])
  {
    userNotificationCenter = self->_userNotificationCenter;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__ASGizmoBulletinPostingManager__postNotificationRequest___block_invoke;
    v7[3] = &unk_278C4C438;
    objc_copyWeak(&v8, &location);
    [(UNUserNotificationCenter *)userNotificationCenter addNotificationRequest:requestCopy withCompletionHandler:v7];
    objc_destroyWeak(&v8);
  }

  else
  {
    ASLoggingInitialize();
    v6 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Activity sharing notifications disabled in settings", buf, 2u);
    }
  }

  objc_destroyWeak(&location);
}

void __58__ASGizmoBulletinPostingManager__postNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      __58__ASGizmoBulletinPostingManager__postNotificationRequest___block_invoke_cold_1(a1, v4, v3);
    }
  }
}

- (void)postFakeBulletins:(id)bulletins
{
  v15[1] = *MEMORY[0x277D85DE8];
  bulletinsCopy = bulletins;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "GizmoBulletinPostingManager post fake notification requests", buf, 2u);
  }

  allObjects = [bulletinsCopy allObjects];

  v14 = *MEMORY[0x277CE9270];
  v15[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v8 = [(ASGizmoBulletinPostingManager *)self _batchedNotificationRequestsFromCodableBulletins:allObjects withAdditions:v7];

  notificationQueue = self->_notificationQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__ASGizmoBulletinPostingManager_postFakeBulletins___block_invoke;
  v11[3] = &unk_278C4B250;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(notificationQueue, v11);
}

void __51__ASGizmoBulletinPostingManager_postFakeBulletins___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) hk_map:&__block_literal_global_338];
  [v1 _queue_postNotificationRequests:v2];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = responseCopy;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "GizmoBulletinPostingManager received notification response: %{public}@", buf, 0xCu);
  }

  actionIdentifier = [responseCopy actionIdentifier];
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  v15 = [objc_alloc(MEMORY[0x277CE9138]) initWithActionIdentifier:actionIdentifier userInfo:userInfo];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __109__ASGizmoBulletinPostingManager_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  v17[3] = &unk_278C4C178;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [(ASGizmoBulletinPostingManager *)self handleNotificationResponse:v15 completion:v17];
}

- (void)handleNotificationResponse:(id)response completion:(id)completion
{
  completionCopy = completion;
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained bulletinPostingManager:self didReceiveNotificationResponse:responseCopy];

  completionCopy[2](completionCopy, 1, 0);
}

- (ASBulletinPostingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __58__ASGizmoBulletinPostingManager__postNotificationRequest___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = 138543618;
  v9 = objc_opt_class();
  v10 = 2114;
  v11 = a3;
  v7 = v9;
  _os_log_error_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_ERROR, "%{public}@ error requesting notification request %{public}@", &v8, 0x16u);
}

@end