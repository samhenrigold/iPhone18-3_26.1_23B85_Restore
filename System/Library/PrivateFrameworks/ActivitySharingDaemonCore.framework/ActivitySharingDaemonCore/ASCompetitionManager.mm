@interface ASCompetitionManager
- (ASCompetitionManager)initWithDatabaseClient:(id)client isWatch:(BOOL)watch;
- (ASCompetitionManagerSecureCloudDelegate)secureCloudDelegate;
- (BOOL)_shouldSkipLocalLegacyCompetitionList:(id)list;
- (BOOL)_shouldSkipLocalSecureCloudCompetitionList:(id)list;
- (BOOL)_shouldSkipRemoteLegacyCompetitionList:(id)list contact:(id)contact;
- (id)_archivedCompetitionListByMergingCurrentCompetitionList:(id)list;
- (id)_competitionListsFromContacts:(id)contacts withUpdatedScore:(id)score cloudType:(unint64_t)type;
- (id)_contactsWithActiveCompetitions;
- (id)_loadOrCreateCurrentCompetitionListForFriendWithUUID:(id)d;
- (id)_localCompetitionForRemoteCompetition:(id)competition friendUUID:(id)d;
- (id)_queue_competitionListsToSaveForCloudType:(unint64_t)type;
- (id)_queue_rollCompetitionListForwardForContact:(id)contact;
- (id)_scoreCapCelebrationAnchor;
- (id)archivedCompetitionListForFriendWithUUID:(id)d;
- (id)competitionsForFriendWithUUID:(id)d;
- (id)currentCompetitionListForFriendWithUUID:(id)d;
- (id)recordForCurrentCompetitionList:(id)list contact:(id)contact;
- (id)recordsToSave;
- (id)secureCloudCompetitionListsToSave;
- (int64_t)_queue_rollIndexBackwards:(int64_t)backwards calendar:(id)calendar;
- (void)_handleAcceptedCompetitionFromFriendWithUUID:(id)d activity:(id)activity cloudKitGroup:(id)group;
- (void)_handleCompetitionRequestFromFriendWithUUID:(id)d activity:(id)activity cloudKitGroup:(id)group;
- (void)_loadCachedCompetitionsAndNotifyObservers;
- (void)_queue_autoAcceptCompetitionRequestFromContact:(id)contact activity:(id)activity cloudKitGroup:(id)group completion:(id)completion;
- (void)_queue_cleanUpLegacyCompetitionLists:(id)lists activity:(id)activity cloudKitGroup:(id)group;
- (void)_queue_cleanUpSecureCloudCompetitionLists:(id)lists activity:(id)activity cloudKitGroup:(id)group;
- (void)_queue_completeCompetitionIfNecessaryForFriendWithUUID:(id)d activity:(id)activity cloudKitGroup:(id)group;
- (void)_queue_handleNewRemoteCompetitionList:(id)list contact:(id)contact;
- (void)_queue_handleSavedCompetitionListRecords:(id)records;
- (void)_queue_handleSavedRecords:(id)records activity:(id)activity group:(id)group;
- (void)_queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs:(id)ds;
- (void)_queue_setActivityDataVisibleIfNecessaryForContact:(id)contact completion:(id)completion;
- (void)_queue_showCompetitionAcceptedForFriendWithUUID:(id)d competition:(id)competition;
- (void)_queue_showCompetitionEndedWithFriendWithUUID:(id)d;
- (void)_queue_showCompetitionRequestFromFriendWithUUID:(id)d competition:(id)competition;
- (void)_queue_showScoreCapCelebrationForFriendsWithCappedInProgressCompetitions:(id)competitions;
- (void)_queue_updateLegacyCompetitionsWithScores:(id)scores forContacts:(id)contacts completion:(id)completion;
- (void)_queue_updateScoresWithTodaySummary:(id)summary yesterdaySummary:(id)yesterdaySummary activity:(id)activity cloudKitGroup:(id)group;
- (void)_queue_updateSecureCloudCompetitionsWithScores:(id)scores forContacts:(id)contacts completion:(id)completion;
- (void)_saveCurrentCompetitionList:(id)list archivedCompetitionList:(id)competitionList contact:(id)contact activity:(id)activity cloudKitGroup:(id)group completion:(id)completion;
- (void)_saveLegacyCompetitionList:(id)list archivedCompetitionList:(id)competitionList contact:(id)contact activity:(id)activity cloudKitGroup:(id)group completion:(id)completion;
- (void)_saveSecureCloudCompetitionList:(id)list archivedCompetitionList:(id)competitionList contact:(id)contact cloudKitGroup:(id)group completion:(id)completion;
- (void)_setScoreCapCelebrationAnchor:(id)anchor;
- (void)acceptCompetitionRequestFromFriendWithUUID:(id)d completion:(id)completion;
- (void)activityDataManager:(id)manager didUpdateTodaySummary:(id)summary yesterdaySummary:(id)yesterdaySummary;
- (void)activitySharingManagerReady:(id)ready;
- (void)addObserver:(id)observer;
- (void)cloudKitManager:(id)manager didBeginUpdatesForFetchWithType:(int64_t)type;
- (void)cloudKitManager:(id)manager didEndUpdatesForFetchWithType:(int64_t)type activity:(id)activity cloudKitGroup:(id)group changesProcessedHandler:(id)handler;
- (void)cloudKitManager:(id)manager didReceiveNewCompetitionLists:(id)lists moreComing:(BOOL)coming changesProcessedHandler:(id)handler;
- (void)cloudKitManager:(id)manager didReceiveNewCompetitionListsForSelf:(id)self moreComing:(BOOL)coming changesProcessedHandler:(id)handler;
- (void)completeCompetitionWithFriendWithUUID:(id)d completion:(id)completion;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)deleteCachedCompetitions;
- (void)ignoreCompetitionRequestFromFriendWithUUID:(id)d completion:(id)completion;
- (void)loadCachedCompetitions;
- (void)periodicUpdateManager:(id)manager didSaveRecords:(id)records activity:(id)activity;
- (void)removeObserver:(id)observer;
- (void)rollCompetitionWithFriendWithUUID:(id)d completion:(id)completion;
- (void)secureCloudDidFailToSaveRecords:(id)records;
- (void)secureCloudDidSaveRecords:(id)records;
- (void)sendCompetitionRequestToFriendWithUUID:(id)d completion:(id)completion;
- (void)storePushedCompetitionListRecords:(id)records;
- (void)updateAllActiveCompetitionsWithScores:(id)scores completion:(id)completion;
@end

@implementation ASCompetitionManager

- (ASCompetitionManager)initWithDatabaseClient:(id)client isWatch:(BOOL)watch
{
  clientCopy = client;
  v19.receiver = self;
  v19.super_class = ASCompetitionManager;
  v8 = [(ASCompetitionManager *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_databaseClient, client);
    v10 = HKCreateSerialUtilityDispatchQueue();
    serialQueue = v9->_serialQueue;
    v9->_serialQueue = v10;

    v12 = HKCreateSerialUtilityDispatchQueue();
    observerQueue = v9->_observerQueue;
    v9->_observerQueue = v12;

    v14 = [[ASAsyncTransactionQueue alloc] initWithDescription:@"CompetitionManagerTransaction" targetSerialQueue:v9->_serialQueue];
    transactionQueue = v9->_transactionQueue;
    v9->_transactionQueue = v14;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = weakObjectsHashTable;

    v9->_deviceParticipatesInAutomaticCompetitionManagement = watch;
  }

  return v9;
}

- (void)activitySharingManagerReady:(id)ready
{
  readyCopy = ready;
  achievementManager = [readyCopy achievementManager];
  objc_storeWeak(&self->_achievementManager, achievementManager);

  competitionBulletinManager = [readyCopy competitionBulletinManager];
  objc_storeWeak(&self->_competitionBulletinManager, competitionBulletinManager);

  contactsManager = [readyCopy contactsManager];
  objc_storeWeak(&self->_contactsManager, contactsManager);

  friendListManager = [readyCopy friendListManager];
  objc_storeWeak(&self->_friendListManager, friendListManager);

  relationshipManager = [readyCopy relationshipManager];
  objc_storeWeak(&self->_relationshipManager, relationshipManager);

  activityDataManager = [readyCopy activityDataManager];
  objc_storeWeak(&self->_activityDataManager, activityDataManager);

  WeakRetained = objc_loadWeakRetained(&self->_activityDataManager);
  [WeakRetained addObserver:self];

  cloudKitManager = [readyCopy cloudKitManager];
  objc_storeWeak(&self->_cloudKitManager, cloudKitManager);

  v13 = objc_loadWeakRetained(&self->_cloudKitManager);
  [v13 addObserver:self];

  periodicUpdateManager = [readyCopy periodicUpdateManager];

  objc_storeWeak(&self->_periodicUpdateManager, periodicUpdateManager);
  v15 = objc_loadWeakRetained(&self->_periodicUpdateManager);
  [v15 addProvider:self];

  self->_competitionStore = [[ASCompetitionStore alloc] initWithDatabaseClient:self->_databaseClient];

  MEMORY[0x2821F96F8]();
}

- (void)loadCachedCompetitions
{
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "CompetitionManager attempting to load cached competitions", v4, 2u);
  }

  [(ASDatabaseClient *)self->_databaseClient addProtectedDataObserver:self];
  [(ASCompetitionManager *)self _loadCachedCompetitionsAndNotifyObservers];
}

- (void)deleteCachedCompetitions
{
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "CompetitionManager deleting all cached competitions", v4, 2u);
  }

  [(ASCompetitionStore *)self->_competitionStore deleteCachedCompetitions];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ASCompetitionManager_addObserver___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(observerQueue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__ASCompetitionManager_removeObserver___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(observerQueue, v7);
}

- (void)sendCompetitionRequestToFriendWithUUID:(id)d completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = dCopy;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CompetitionManager attempting to send competition request to friend: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_relationshipManager);
  v10 = [WeakRetained insertPlaceholderRelationshipEvent:10 friendUUID:dCopy];

  v11 = objc_loadWeakRetained(&self->_relationshipManager);
  v12 = [v11 insertPlaceholderRelationshipEvent:6 friendUUID:dCopy];

  v14 = ASCloudKitGroupUserActionExplicit(v13);
  v15 = objc_loadWeakRetained(&self->_cloudKitManager);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke;
  v21[3] = &unk_278C4D160;
  v21[4] = self;
  v22 = v10;
  v23 = v12;
  v24 = dCopy;
  v25 = v14;
  v26 = completionCopy;
  v27 = 10;
  v16 = v14;
  v17 = dCopy;
  v18 = completionCopy;
  v19 = v12;
  v20 = v10;
  [v15 fetchAllChangesWithPriority:2 activity:0 group:v16 completion:v21];
}

void __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 64));
    [WeakRetained removePlaceholderRelationshipEventWithToken:*(a1 + 40)];

    v15 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v15 removePlaceholderRelationshipEventWithToken:*(a1 + 48)];

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v7 = *(v6 + 88);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2;
    v16[3] = &unk_278C4D138;
    v16[4] = v6;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v19 = *(a1 + 72);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v17 = v13;
    v18 = v12;
    v20 = *(a1 + 80);
    [v7 performTransaction:v16];
  }
}

void __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "CompetitionManager fetch complete, proceeding with send competition request", buf, 2u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_310;
  v17[3] = &unk_278C4D0C0;
  v5 = *(a1 + 40);
  v17[4] = *(a1 + 32);
  v18 = v5;
  v19 = *(a1 + 48);
  v20 = *(a1 + 72);
  v21 = v3;
  v6 = v3;
  v7 = MEMORY[0x23EF0EB00](v17);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v9 = [WeakRetained contactWithUUID:*(a1 + 56)];

  v10 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2_312;
  v12[3] = &unk_278C4D110;
  v15 = v7;
  v12[4] = v10;
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v16 = *(a1 + 80);
  v11 = v7;
  [v10 _queue_setActivityDataVisibleIfNecessaryForContact:v9 completion:v12];
}

uint64_t __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_310(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 64));
  [WeakRetained removePlaceholderRelationshipEventWithToken:a1[5]];

  v7 = objc_loadWeakRetained((a1[4] + 64));
  [v7 removePlaceholderRelationshipEventWithToken:a1[6]];

  (*(a1[7] + 16))();
  v8 = *(a1[8] + 16);

  return v8();
}

void __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2_312(uint64_t a1, char a2, void *a3, void *a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  ASLoggingInitialize();
  v9 = MEMORY[0x277CE8FD8];
  v10 = *MEMORY[0x277CE8FD8];
  if (v7 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2_312_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionManager checking friend eligibility", buf, 2u);
    }

    v51 = 0;
    v11 = ASValidateEligibilityForOutgoingCompetitionRequest();
    v12 = 0;
    if (v11)
    {
      v13 = [*(a1 + 32) _loadOrCreateCurrentCompetitionListForFriendWithUUID:*(a1 + 40)];
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
      v46 = [WeakRetained friendWithUUID:*(a1 + 40)];

      v15 = [v8 primaryRelationship];
      v16 = [v15 hasCompletedCompetition];

      if (v16)
      {
        ASLoggingInitialize();
        v17 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "CompetitionManager relationship has completed competition, archiving and copying previous badge style", buf, 2u);
        }

        v18 = [v13 currentCompetition];
        v19 = [v18 preferredVictoryBadgeStyles];

        v20 = [*(a1 + 32) _archivedCompetitionListByMergingCurrentCompetitionList:v13];
      }

      else
      {
        v21 = [*(*(a1 + 32) + 80) archivedCompetitionListForFriendWithUUID:*(a1 + 40)];
        v22 = [v21 competitions];
        v23 = [v22 count];

        ASLoggingInitialize();
        v24 = *v9;
        v25 = os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT);
        if (v23)
        {
          if (v25)
          {
            *buf = 0;
            _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "CompetitionManager relationship has archived competitions, copying previous badge style", buf, 2u);
          }

          v26 = [v21 competitions];
          v27 = [v26 lastObject];
          v28 = [v27 preferredVictoryBadgeStyles];
        }

        else
        {
          if (v25)
          {
            *buf = 0;
            _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "CompetitionManager relationship doesn't have a previous competition, generating preferred badge styles", buf, 2u);
          }

          v26 = objc_loadWeakRetained((*(a1 + 32) + 48));
          v27 = [v26 friends];
          v28 = ASPreferredCompetitionVictoryBadgeStylesForFriend();
        }

        v19 = v28;

        v20 = 0;
      }

      v45 = v12;
      ASLoggingInitialize();
      v29 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 40);
        v31 = v29;
        v32 = [v8 displayName];
        *buf = 138543618;
        v54 = v30;
        v55 = 2112;
        v56 = v32;
        _os_log_impl(&dword_23E5E3000, v31, OS_LOG_TYPE_DEFAULT, "CompetitionManager building competition for friend: %{public}@ - %@", buf, 0x16u);
      }

      v33 = objc_alloc_init(MEMORY[0x277CE90D8]);
      v34 = [MEMORY[0x277CCAD78] UUID];
      [v33 setUUID:v34];

      v35 = ASCompetitionCalculateStartDateComponentsForFriend();
      [v33 setStartDateComponents:v35];

      v36 = ASCompetitionDurationDateComponentsForNewCompetitions();
      [v33 setDurationDateComponents:v36];

      [v33 setPreferredVictoryBadgeStyles:v19];
      [v33 setMaximumNumberOfPointsPerDay:ASCompetitionMaximumPointsPerDayForNewCompetitions()];
      v52 = v33;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
      [v13 setCompetitions:v37];

      ASLoggingInitialize();
      v38 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v33;
        _os_log_impl(&dword_23E5E3000, v38, OS_LOG_TYPE_DEFAULT, "CompetitionManager built new competition: %@", buf, 0xCu);
      }

      v39 = *(a1 + 32);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_316;
      v47[3] = &unk_278C4D0E8;
      v40 = *(a1 + 48);
      v41 = *(a1 + 56);
      v50 = *(a1 + 64);
      v44 = *(a1 + 32);
      v42 = *(&v44 + 1);
      *&v43 = *(a1 + 48);
      *(&v43 + 1) = v41;
      v48 = v44;
      v49 = v43;
      [v39 _saveCurrentCompetitionList:v13 archivedCompetitionList:v20 contact:v8 activity:0 cloudKitGroup:v40 completion:v47];

      v12 = v45;
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_316(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    [WeakRetained updateRelationshipWithCompetitionEvent:*(a1 + 64) friendUUID:*(a1 + 40) activity:0 cloudKitGroup:*(a1 + 48) completion:*(a1 + 56)];
  }
}

- (void)acceptCompetitionRequestFromFriendWithUUID:(id)d completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = dCopy;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CompetitionManager attempting to accept competition request to friend: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_relationshipManager);
  v10 = [WeakRetained insertPlaceholderRelationshipEvent:11 friendUUID:dCopy];

  v11 = objc_loadWeakRetained(&self->_relationshipManager);
  v12 = [v11 insertPlaceholderRelationshipEvent:6 friendUUID:dCopy];

  v13 = objc_loadWeakRetained(&self->_friendListManager);
  [v13 updateFitnessAppBadgeCount];

  v15 = ASCloudKitGroupUserActionExplicit(v14);
  v16 = objc_loadWeakRetained(&self->_cloudKitManager);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke;
  v22[3] = &unk_278C4D160;
  v22[4] = self;
  v23 = v10;
  v24 = v12;
  v25 = dCopy;
  v26 = v15;
  v27 = completionCopy;
  v28 = 11;
  v17 = v15;
  v18 = dCopy;
  v19 = completionCopy;
  v20 = v12;
  v21 = v10;
  [v16 fetchAllChangesWithPriority:2 activity:0 group:v17 completion:v22];
}

void __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 64));
    [WeakRetained removePlaceholderRelationshipEventWithToken:*(a1 + 40)];

    v15 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v15 removePlaceholderRelationshipEventWithToken:*(a1 + 48)];

    v16 = objc_loadWeakRetained((*(a1 + 32) + 48));
    [v16 updateFitnessAppBadgeCount];

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v7 = *(v6 + 88);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_2;
    v17[3] = &unk_278C4D1B0;
    v17[4] = v6;
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v20 = *(a1 + 72);
    v11 = *(a1 + 64);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v18 = v13;
    v19 = v12;
    v21 = *(a1 + 80);
    [v7 performTransaction:v17];
  }
}

void __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = MEMORY[0x277CE8FD8];
  v5 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "CompetitionManager fetch complete, proceeding with accept", buf, 2u);
  }

  ASLoggingInitialize();
  v6 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "CompetitionManager unhiding from friend if hidden", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v8 = [WeakRetained contactWithUUID:*(a1 + 40)];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_319;
  v16[3] = &unk_278C4D188;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v20 = v3;
  v21 = *(a1 + 72);
  v12 = *(a1 + 40);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v17 = v14;
  v18 = v13;
  v19 = *(a1 + 64);
  v22 = *(a1 + 80);
  v15 = v3;
  [v9 _queue_setActivityDataVisibleIfNecessaryForContact:v8 completion:v16];
}

void __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_319(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_2_320;
  v42[3] = &unk_278C4D0C0;
  v9 = *(a1 + 40);
  v42[4] = *(a1 + 32);
  v43 = v9;
  v44 = *(a1 + 48);
  v45 = *(a1 + 72);
  v46 = *(a1 + 80);
  v10 = MEMORY[0x23EF0EB00](v42);
  ASLoggingInitialize();
  v11 = MEMORY[0x277CE8FD8];
  v12 = *MEMORY[0x277CE8FD8];
  if (v7 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2_312_cold_1();
    }

    (v10)[2](v10, a2, v7);
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "CompetitionManager checking friend eligibility", buf, 2u);
    }

    v41 = 0;
    v13 = ASValidateEligibilityForAcceptingCompetitionRequest();
    v14 = 0;
    if (v13)
    {
      ASLoggingInitialize();
      v15 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v8 displayName];
        *buf = 138412290;
        v49 = v17;
        _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "CompetitionManager found friend with incoming request: %@", buf, 0xCu);
      }

      v18 = [*(*(a1 + 32) + 80) currentRemoteCompetitionForContact:v8];
      if (v18)
      {
        v34 = v14;
        v19 = [*(*(a1 + 32) + 80) currentCompetitionListForFriendWithUUID:*(a1 + 56)];
        v35 = [v19 currentCompetition];
        v20 = [v35 UUID];
        v21 = [v18 UUID];
        v22 = [v20 isEqual:v21];

        if ((v22 & 1) == 0)
        {
          ASLoggingInitialize();
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
          {
            __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_319_cold_2();
          }

          v23 = [v18 UUID];
          [v35 setUUID:v23];
        }

        ASLoggingInitialize();
        v24 = *v11;
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "CompetitionManager updating competition start date before accepting", buf, 2u);
        }

        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
        v26 = [WeakRetained friendWithUUID:*(a1 + 56)];

        v27 = [v18 startDateComponents];
        v28 = ASCompetitionCalculateStartDateComponentsForFriendWithProposedStartDate();
        [v35 setStartDateComponents:v28];

        v47 = v35;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
        [v19 setCompetitions:v29];

        v30 = *(a1 + 32);
        v31 = *(a1 + 64);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_322;
        v36[3] = &unk_278C4D0E8;
        v32 = v10;
        v33 = *(a1 + 32);
        v39 = v32;
        v36[4] = v33;
        v40 = *(a1 + 88);
        v37 = *(a1 + 56);
        v38 = *(a1 + 64);
        [v30 _saveCurrentCompetitionList:v19 archivedCompetitionList:0 contact:v8 activity:0 cloudKitGroup:v31 completion:v36];

        v14 = v34;
      }

      else
      {
        ASLoggingInitialize();
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
        {
          __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_319_cold_3();
        }

        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:6 userInfo:0];
        (v10)[2](v10, 0, v19);
      }
    }

    else
    {
      (v10)[2](v10, 0, v14);
    }
  }
}

void __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_2_320(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 64));
  [WeakRetained removePlaceholderRelationshipEventWithToken:a1[5]];

  v6 = objc_loadWeakRetained((a1[4] + 64));
  [v6 removePlaceholderRelationshipEventWithToken:a1[6]];

  v7 = objc_loadWeakRetained((a1[4] + 48));
  [v7 updateFitnessAppBadgeCount];

  (*(a1[7] + 16))();
  (*(a1[8] + 16))();
}

void __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_322(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v8 = *(*(a1 + 56) + 16);

    v8();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v5 = *(a1 + 64);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_2_323;
    v9[3] = &unk_278C4BA08;
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 56);
    [WeakRetained updateRelationshipWithCompetitionEvent:v5 friendUUID:v6 activity:0 cloudKitGroup:v7 completion:v9];
  }
}

void __78__ASCompetitionManager_acceptCompetitionRequestFromFriendWithUUID_completion___block_invoke_2_323(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 8));
  [WeakRetained requestTemplateUpdate];

  (*(*(a1 + 40) + 16))();
}

- (void)ignoreCompetitionRequestFromFriendWithUUID:(id)d completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = dCopy;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CompetitionManager attempting to ignore competition request from friend: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_relationshipManager);
  v10 = [WeakRetained insertPlaceholderRelationshipEvent:12 friendUUID:dCopy];

  v11 = objc_loadWeakRetained(&self->_friendListManager);
  [v11 updateFitnessAppBadgeCount];

  v13 = ASCloudKitGroupUserActionExplicit(v12);
  v14 = objc_loadWeakRetained(&self->_cloudKitManager);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke;
  v19[3] = &unk_278C4D228;
  v19[4] = self;
  v20 = v10;
  v22 = v13;
  v23 = completionCopy;
  v24 = 12;
  v21 = dCopy;
  v15 = v13;
  v16 = dCopy;
  v17 = completionCopy;
  v18 = v10;
  [v14 fetchAllChangesWithPriority:2 activity:0 group:v15 completion:v19];
}

void __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 64));
    [WeakRetained removePlaceholderRelationshipEventWithToken:*(a1 + 40)];

    v14 = objc_loadWeakRetained((*(a1 + 32) + 48));
    [v14 updateFitnessAppBadgeCount];

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v7 = *(v6 + 88);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke_2;
    v15[3] = &unk_278C4D200;
    v15[4] = v6;
    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10 = *(a1 + 64);
    v18 = *(a1 + 72);
    *&v11 = *(a1 + 56);
    *(&v11 + 1) = v10;
    *&v12 = v8;
    *(&v12 + 1) = v9;
    v16 = v12;
    v17 = v11;
    [v7 performTransaction:v15];
  }
}

void __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v5 = [WeakRetained contactWithUUID:*(a1 + 40)];

  v6 = [v5 primaryRelationship];
  if ([v6 hasIncomingCompetitionRequest] && !objc_msgSend(v6, "isCompetitionActive"))
  {
    v11 = objc_loadWeakRetained((*(a1 + 32) + 64));
    v12 = *(a1 + 72);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke_324;
    v15[3] = &unk_278C4D1D8;
    v13 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v14 = *(a1 + 56);
    v16 = *(a1 + 48);
    v17 = *(a1 + 64);
    v18 = v3;
    [v11 updateRelationshipWithCompetitionEvent:v12 friendUUID:v13 activity:0 cloudKitGroup:v14 completion:v15];
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke_2_cold_1();
    }

    v7 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v7 removePlaceholderRelationshipEventWithToken:*(a1 + 48)];

    v8 = objc_loadWeakRetained((*(a1 + 32) + 48));
    [v8 updateFitnessAppBadgeCount];

    v9 = *(a1 + 64);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:0 userInfo:0];
    (*(v9 + 16))(v9, 0, v10);

    v3[2](v3);
  }
}

uint64_t __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke_324(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 64));
  [WeakRetained removePlaceholderRelationshipEventWithToken:a1[5]];

  v7 = objc_loadWeakRetained((a1[4] + 48));
  [v7 updateFitnessAppBadgeCount];

  (*(a1[6] + 16))();
  v8 = *(a1[7] + 16);

  return v8();
}

- (id)competitionsForFriendWithUUID:(id)d
{
  competitionStore = self->_competitionStore;
  dCopy = d;
  v6 = [(ASCompetitionStore *)competitionStore archivedCompetitionListForFriendWithUUID:dCopy];
  competitions = [v6 competitions];
  v8 = [MEMORY[0x277CBEBF8] arrayByAddingObjectsFromArray:competitions];

  v9 = [(ASCompetitionStore *)self->_competitionStore currentCompetitionListForFriendWithUUID:dCopy];

  competitions2 = [v9 competitions];
  v11 = [v8 arrayByAddingObjectsFromArray:competitions2];

  return v11;
}

- (void)activityDataManager:(id)manager didUpdateTodaySummary:(id)summary yesterdaySummary:(id)yesterdaySummary
{
  summaryCopy = summary;
  yesterdaySummaryCopy = yesterdaySummary;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__ASCompetitionManager_activityDataManager_didUpdateTodaySummary_yesterdaySummary___block_invoke;
  block[3] = &unk_278C4BB98;
  block[4] = self;
  v13 = summaryCopy;
  v14 = yesterdaySummaryCopy;
  v10 = yesterdaySummaryCopy;
  v11 = summaryCopy;
  dispatch_async(serialQueue, block);
}

void __83__ASCompetitionManager_activityDataManager_didUpdateTodaySummary_yesterdaySummary___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = ASCloudKitGroupUserActionImplicit(a1);
  [v1 _queue_updateScoresWithTodaySummary:v2 yesterdaySummary:v3 activity:0 cloudKitGroup:v4];
}

- (void)cloudKitManager:(id)manager didBeginUpdatesForFetchWithType:(int64_t)type
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ASCompetitionManager_cloudKitManager_didBeginUpdatesForFetchWithType___block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __72__ASCompetitionManager_cloudKitManager_didBeginUpdatesForFetchWithType___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "CompetitionManager preparing for new records", buf, 2u);
  }

  v3 = [MEMORY[0x277CBEB98] set];
  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  *(v4 + 120) = v3;

  v6 = [MEMORY[0x277CBEB98] set];
  v7 = *(a1 + 32);
  v8 = *(v7 + 128);
  *(v7 + 128) = v6;

  v9 = [MEMORY[0x277CBEB98] set];
  v10 = *(a1 + 32);
  v11 = *(v10 + 136);
  *(v10 + 136) = v9;

  v12 = [MEMORY[0x277CBEB98] set];
  v13 = *(a1 + 32);
  v14 = *(v13 + 144);
  *(v13 + 144) = v12;

  v15 = [MEMORY[0x277CBEB98] set];
  v16 = *(a1 + 32);
  v17 = *(v16 + 168);
  *(v16 + 168) = v15;

  v18 = [MEMORY[0x277CBEB98] set];
  v19 = *(a1 + 32);
  v20 = *(v19 + 176);
  *(v19 + 176) = v18;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v22 = [WeakRetained contacts];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v56;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v56 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v55 + 1) + 8 * i);
        v29 = [v28 primaryRelationship];
        v30 = [v28 primaryRemoteRelationship];
        if ([v30 isAwaitingCompetitionResponse])
        {
          v31 = [v30 dateForLatestOutgoingCompetitionRequest];
          HasExpired = ASCompetitionRequestHasExpired();

          if ((HasExpired & 1) == 0)
          {
            v33 = *(*(a1 + 32) + 120);
            v34 = [v28 UUID];
            v35 = [v33 setByAddingObject:v34];
            v36 = *(a1 + 32);
            v37 = *(v36 + 120);
            *(v36 + 120) = v35;
          }
        }

        if ([v29 hasOutgoingCompetitionRequest] && objc_msgSend(v29, "isCompetitionActive"))
        {
          v38 = *(*(a1 + 32) + 128);
          v39 = [v28 UUID];
          v40 = [v38 setByAddingObject:v39];
          v41 = *(a1 + 32);
          v42 = *(v41 + 128);
          *(v41 + 128) = v40;
        }

        if ([v29 hasCompletedCompetition] && objc_msgSend(v30, "hasCompletedCompetition"))
        {
          v43 = *(*(a1 + 32) + 136);
          v44 = [v28 UUID];
          v45 = [v43 setByAddingObject:v44];
          v46 = *(a1 + 32);
          v47 = *(v46 + 136);
          *(v46 + 136) = v45;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v25);
  }

  ASLoggingInitialize();
  v48 = MEMORY[0x277CE8FD8];
  v49 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v50 = *(*(a1 + 32) + 120);
    *buf = 138412290;
    v60 = v50;
    _os_log_impl(&dword_23E5E3000, v49, OS_LOG_TYPE_DEFAULT, "CompetitionManager existing friends awaiting my response: %@", buf, 0xCu);
  }

  ASLoggingInitialize();
  v51 = *v48;
  if (os_log_type_enabled(*v48, OS_LOG_TYPE_DEFAULT))
  {
    v52 = *(*(a1 + 32) + 128);
    *buf = 138412290;
    v60 = v52;
    _os_log_impl(&dword_23E5E3000, v51, OS_LOG_TYPE_DEFAULT, "CompetitionManager existing friends that accepted my request: %@", buf, 0xCu);
  }

  ASLoggingInitialize();
  v53 = *v48;
  if (os_log_type_enabled(*v48, OS_LOG_TYPE_DEFAULT))
  {
    v54 = *(*(a1 + 32) + 136);
    *buf = 138412290;
    v60 = v54;
    _os_log_impl(&dword_23E5E3000, v53, OS_LOG_TYPE_DEFAULT, "CompetitionManager existing friends with completed competitions: %@", buf, 0xCu);
  }
}

- (void)cloudKitManager:(id)manager didReceiveNewCompetitionListsForSelf:(id)self moreComing:(BOOL)coming changesProcessedHandler:(id)handler
{
  selfCopy = self;
  handlerCopy = handler;
  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionManager received new non-remote competitions", buf, 2u);
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__ASCompetitionManager_cloudKitManager_didReceiveNewCompetitionListsForSelf_moreComing_changesProcessedHandler___block_invoke;
  block[3] = &unk_278C4BA30;
  v15 = selfCopy;
  selfCopy2 = self;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = selfCopy;
  dispatch_async(serialQueue, block);
}

void __112__ASCompetitionManager_cloudKitManager_didReceiveNewCompetitionListsForSelf_moreComing_changesProcessedHandler___block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v58;
    v7 = MEMORY[0x277CE8FD8];
    *&v4 = 134218240;
    v54 = v4;
    v55 = v2;
    do
    {
      v8 = 0;
      do
      {
        if (*v58 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v57 + 1) + 8 * v8);
        v10 = [v9 friendUUID];

        if (v10)
        {
          if ([*(a1 + 40) _shouldSkipLocalLegacyCompetitionList:v9])
          {
            ASLoggingInitialize();
            v11 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "CompetitionManager received legacy competition to clean up", buf, 2u);
            }

            v12 = [*(*(a1 + 40) + 168) setByAddingObject:v9];
            v13 = *(a1 + 40);
            v14 = *(v13 + 168);
            *(v13 + 168) = v12;
LABEL_17:

            goto LABEL_18;
          }

          if ([*(a1 + 40) _shouldSkipLocalSecureCloudCompetitionList:v9])
          {
            ASLoggingInitialize();
            v16 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "CompetitionManager received secure cloud competition to clean up", buf, 2u);
            }

            v17 = [*(*(a1 + 40) + 176) setByAddingObject:v9];
            v18 = *(a1 + 40);
            v14 = *(v18 + 176);
            *(v18 + 176) = v17;
            goto LABEL_17;
          }

          v19 = *(*(a1 + 40) + 144);
          v20 = [v9 friendUUID];
          v21 = [v19 setByAddingObject:v20];
          v22 = *(a1 + 40);
          v23 = *(v22 + 144);
          *(v22 + 144) = v21;

          if (![v9 type])
          {
            v24 = *(*(a1 + 40) + 80);
            v25 = [v9 friendUUID];
            v26 = [v24 currentCompetitionListForFriendWithUUID:v25];

            v56 = v26;
            v27 = [v26 currentCompetition];
            v28 = [v9 currentCompetition];
            v29 = [v27 UUID];
            [v28 UUID];
            v31 = v30 = v7;
            v32 = [v29 isEqual:v31];

            v7 = v30;
            if (v32)
            {
              ASLoggingInitialize();
              v33 = *v30;
              if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v62 = v27;
                _os_log_debug_impl(&dword_23E5E3000, v33, OS_LOG_TYPE_DEBUG, "CompetitionManager existingCurrentCompetition=%@", buf, 0xCu);
              }

              ASLoggingInitialize();
              v34 = *v30;
              if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v62 = v28;
                _os_log_debug_impl(&dword_23E5E3000, v34, OS_LOG_TYPE_DEBUG, "CompetitionManager updatedCurrentCompetition=%@", buf, 0xCu);
              }

              v35 = [v27 myTotalScore];
              if (v35 > [v28 myTotalScore])
              {
                ASLoggingInitialize();
                v36 = *v30;
                if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT))
                {
                  v37 = v36;
                  v38 = [v27 myTotalScore];
                  v39 = [v28 myTotalScore];
                  *buf = v54;
                  v62 = v38;
                  v63 = 2048;
                  v64 = v39;
                  _os_log_impl(&dword_23E5E3000, v37, OS_LOG_TYPE_DEFAULT, "CompetitionManager local view of competition has a higher score, keeping the current local value (%lu vs %lu)", buf, 0x16u);
                }

                v40 = [v27 scores];
                [v28 setScores:v40];
              }

              v41 = [v27 opponentTotalScore];
              if (v41 > [v28 opponentTotalScore])
              {
                ASLoggingInitialize();
                v42 = *v30;
                if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = v42;
                  v44 = [v27 opponentTotalScore];
                  v45 = [v28 opponentTotalScore];
                  *buf = v54;
                  v62 = v44;
                  v63 = 2048;
                  v64 = v45;
                  _os_log_impl(&dword_23E5E3000, v43, OS_LOG_TYPE_DEFAULT, "CompetitionManager local view of competition has a higher opponent score, keeping the current local value (%lu vs %lu)", buf, 0x16u);
                }

                v46 = [v27 opponentScores];
                [v28 setOpponentScores:v46];
              }
            }

            v2 = v55;
          }
        }

        else
        {
          ASLoggingInitialize();
          v15 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v62 = v9;
            _os_log_error_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_ERROR, "CompetitionManager found competition list missing a friendUUID: %@", buf, 0xCu);
          }
        }

LABEL_18:
        ++v8;
      }

      while (v5 != v8);
      v47 = [v2 countByEnumeratingWithState:&v57 objects:v65 count:16];
      v5 = v47;
    }

    while (v47);
  }

  v48 = *(*(a1 + 40) + 168);
  v49 = *(a1 + 32);
  v50 = [v48 allObjects];
  v51 = [v49 arrayByExcludingObjectsInArray:v50];

  v52 = [*(*(a1 + 40) + 176) allObjects];
  v53 = [v51 arrayByExcludingObjectsInArray:v52];

  [*(*(a1 + 40) + 80) saveCompetitionLists:v53];
  (*(*(a1 + 48) + 16))();
}

- (void)cloudKitManager:(id)manager didReceiveNewCompetitionLists:(id)lists moreComing:(BOOL)coming changesProcessedHandler:(id)handler
{
  listsCopy = lists;
  handlerCopy = handler;
  ASLoggingInitialize();
  v11 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "CompetitionManager received new remote competitions", buf, 2u);
  }

  serialQueue = self->_serialQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__ASCompetitionManager_cloudKitManager_didReceiveNewCompetitionLists_moreComing_changesProcessedHandler___block_invoke;
  v15[3] = &unk_278C4B9C0;
  v16 = listsCopy;
  selfCopy = self;
  comingCopy = coming;
  v18 = handlerCopy;
  v13 = handlerCopy;
  v14 = listsCopy;
  dispatch_async(serialQueue, v15);
}

uint64_t __105__ASCompetitionManager_cloudKitManager_didReceiveNewCompetitionLists_moreComing_changesProcessedHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __105__ASCompetitionManager_cloudKitManager_didReceiveNewCompetitionLists_moreComing_changesProcessedHandler___block_invoke_2;
        v23[3] = &unk_278C4B6B8;
        v23[4] = v7;
        v9 = [WeakRetained contactMatchingCriteriaBlock:v23];

        if (v9)
        {
          if ([*(a1 + 40) _shouldSkipRemoteLegacyCompetitionList:v7 contact:v9])
          {
            ASLoggingInitialize();
            v10 = *MEMORY[0x277CE8FD8];
            if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionManager skipping remote legacy competition list", buf, 2u);
            }
          }

          else
          {
            [*(a1 + 40) _queue_handleNewRemoteCompetitionList:v7 contact:v9];
            v12 = *(*(a1 + 40) + 144);
            v13 = [v9 UUID];
            v14 = [v12 setByAddingObject:v13];
            v15 = *(a1 + 40);
            v16 = *(v15 + 144);
            *(v15 + 144) = v14;
          }
        }

        else
        {
          ASLoggingInitialize();
          v11 = *MEMORY[0x277CE8FD8];
          if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = v7;
            _os_log_error_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_ERROR, "CompetitionManager couldn't find a matching friend for this remote competition list: %@", buf, 0xCu);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v4);
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v17 = *(a1 + 40);
    v18 = [v17[18] copy];
    [v17 _queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs:v18];

    v19 = [MEMORY[0x277CBEB98] set];
    v20 = *(a1 + 40);
    v21 = *(v20 + 144);
    *(v20 + 144) = v19;
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t __105__ASCompetitionManager_cloudKitManager_didReceiveNewCompetitionLists_moreComing_changesProcessedHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 primaryRemoteRelationship];
  v4 = [v3 UUID];
  v5 = [*(a1 + 32) friendUUID];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (void)cloudKitManager:(id)manager didEndUpdatesForFetchWithType:(int64_t)type activity:(id)activity cloudKitGroup:(id)group changesProcessedHandler:(id)handler
{
  activityCopy = activity;
  groupCopy = group;
  handlerCopy = handler;
  managerCopy = manager;
  ASLoggingInitialize();
  v15 = MEMORY[0x277CE8FD8];
  v16 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "CompetitionManager CK fetch complete", buf, 2u);
  }

  hasCompletedFirstFetch = [managerCopy hasCompletedFirstFetch];

  if ((hasCompletedFirstFetch & 1) == 0)
  {
    ASLoggingInitialize();
    v18 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "CompetitionManager CK fetch is the first on this device, avoid notifying about already-processed changes", buf, 2u);
    }
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__ASCompetitionManager_cloudKitManager_didEndUpdatesForFetchWithType_activity_cloudKitGroup_changesProcessedHandler___block_invoke;
  block[3] = &unk_278C4D250;
  v27 = hasCompletedFirstFetch ^ 1;
  block[4] = self;
  v24 = activityCopy;
  v25 = groupCopy;
  v26 = handlerCopy;
  v20 = handlerCopy;
  v21 = groupCopy;
  v22 = activityCopy;
  dispatch_async(serialQueue, block);
}

void __117__ASCompetitionManager_cloudKitManager_didEndUpdatesForFetchWithType_activity_cloudKitGroup_changesProcessedHandler___block_invoke(uint64_t a1)
{
  v90 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "CompetitionManager checking each friend for updated competition state", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v4 = [WeakRetained contacts];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v4;
  v73 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
  if (!v73)
  {
    v70 = 0;
    v69 = 0;
    goto LABEL_60;
  }

  v70 = 0;
  v69 = 0;
  v6 = *v78;
  *&v5 = 138412290;
  v68 = v5;
  v71 = *v78;
  do
  {
    for (i = 0; i != v73; ++i)
    {
      if (*v78 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v77 + 1) + 8 * i);
      v9 = [v8 primaryRelationship];
      v10 = [v8 primaryRemoteRelationship];
      if ([v10 isAwaitingCompetitionResponse])
      {
        v11 = [v10 dateForLatestOutgoingCompetitionRequest];
        HasExpired = ASCompetitionRequestHasExpired();

        if ((HasExpired & 1) == 0)
        {
          v13 = [v9 hasIncomingCompetitionRequest];
          v14 = ASIgnoredMostRecentCompetitionRequestFromContact();
          v15 = *(*(a1 + 32) + 120);
          v16 = [v8 UUID];
          if ([v15 containsObject:v16])
          {
            v17 = 1;
          }

          else
          {
            v17 = *(a1 + 64);
          }

          ASLoggingInitialize();
          v18 = *MEMORY[0x277CE8FD8];
          if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
          {
            v19 = v18;
            v20 = [v8 displayName];
            *buf = 138413058;
            v82 = v20;
            v83 = 1024;
            v84 = v13;
            v85 = 1024;
            v86 = v14;
            v87 = 1024;
            v88 = v17 & 1;
            _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "CompetitionManager [%@] is awaiting response from me, alreadyProcessed=%d alreadyIgnored=%d alreadyNotified=%d", buf, 0x1Eu);
          }

          if (((ASPairedDeviceSupportsCompetitions() | v17) & 1) == 0)
          {
            ASLoggingInitialize();
            v21 = *MEMORY[0x277CE8FD8];
            v6 = v71;
            if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
            {
              __117__ASCompetitionManager_cloudKitManager_didEndUpdatesForFetchWithType_activity_cloudKitGroup_changesProcessedHandler___block_invoke_cold_1(&v75, v76, v21);
            }

            v22 = objc_loadWeakRetained((*(a1 + 32) + 32));
            [v22 showGizmoVersionTooLowForCompetitionRequestFrom:v8];
            goto LABEL_24;
          }

          v6 = v71;
          if (((v13 | v14) & 1) == 0)
          {
            v23 = *(*(a1 + 32) + 120);
            v24 = MEMORY[0x277CBEB98];
            v25 = [v8 UUID];
            v26 = [v24 setWithObject:v25];
            v27 = [v23 hk_minus:v26];
            v28 = *(a1 + 32);
            v29 = *(v28 + 120);
            *(v28 + 120) = v27;

LABEL_23:
            v30 = *(a1 + 32);
            v22 = [v8 UUID];
            [v30 _handleCompetitionRequestFromFriendWithUUID:v22 activity:*(a1 + 40) cloudKitGroup:*(a1 + 48)];
            v69 = 1;
LABEL_24:

            goto LABEL_25;
          }

          if ((v17 & 1) == 0)
          {
            goto LABEL_23;
          }

          v69 = 1;
        }
      }

LABEL_25:
      if ([v9 hasOutgoingCompetitionRequest] && objc_msgSend(v10, "isCompetitionActive"))
      {
        v31 = [v9 isAwaitingCompetitionResponse];
        v32 = *(*(a1 + 32) + 128);
        v33 = [v8 UUID];
        if ([v32 containsObject:v33])
        {
          v34 = 1;
        }

        else
        {
          v34 = *(a1 + 64);
        }

        ASLoggingInitialize();
        v35 = *MEMORY[0x277CE8FD8];
        if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
        {
          v36 = v35;
          v37 = [v8 displayName];
          *buf = 138412802;
          v82 = v37;
          v83 = 1024;
          v84 = v31 ^ 1;
          v6 = v71;
          v85 = 1024;
          v86 = v34 & 1;
          _os_log_impl(&dword_23E5E3000, v36, OS_LOG_TYPE_DEFAULT, "CompetitionManager [%@] accepted my request, alreadyProcessed=%d alreadyNotified=%d", buf, 0x18u);
        }

        if (v31)
        {
          v38 = *(*(a1 + 32) + 128);
          v39 = MEMORY[0x277CBEB98];
          v40 = [v8 UUID];
          v41 = [v39 setWithObject:v40];
          v42 = [v38 hk_minus:v41];
          v43 = *(a1 + 32);
          v44 = *(v43 + 128);
          *(v43 + 128) = v42;

          v6 = v71;
          goto LABEL_35;
        }

        if ((v34 & 1) == 0)
        {
LABEL_35:
          v45 = *(a1 + 32);
          v46 = [v8 UUID];
          [v45 _handleAcceptedCompetitionFromFriendWithUUID:v46 activity:*(a1 + 40) cloudKitGroup:*(a1 + 48)];
        }

        BYTE4(v70) = (v31 | v34) ^ 1;
      }

      if ([v9 hasIncomingCompetitionRequest] && objc_msgSend(v10, "isCompetitionActive") && (objc_msgSend(v9, "isAwaitingCompetitionResponse") & 1) == 0)
      {
        ASLoggingInitialize();
        v47 = *MEMORY[0x277CE8FD8];
        if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
        {
          v48 = v47;
          v49 = [v8 displayName];
          *buf = v68;
          v82 = v49;
          _os_log_impl(&dword_23E5E3000, v48, OS_LOG_TYPE_DEFAULT, "CompetitionManager accepted [%@] request, requesting template update", buf, 0xCu);
        }

        BYTE4(v70) = 1;
      }

      if ([v9 hasCompletedCompetition] && objc_msgSend(v10, "hasCompletedCompetition"))
      {
        v50 = *(*(a1 + 32) + 136);
        v51 = [v8 UUID];
        if ([v50 containsObject:v51])
        {
          v52 = 1;
        }

        else
        {
          v52 = *(a1 + 64);
        }

        ASLoggingInitialize();
        v53 = *MEMORY[0x277CE8FD8];
        if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
        {
          v54 = v53;
          v55 = [v8 displayName];
          *buf = 138412546;
          v82 = v55;
          v83 = 1024;
          v84 = v52 & 1;
          _os_log_impl(&dword_23E5E3000, v54, OS_LOG_TYPE_DEFAULT, "CompetitionManager [%@] competition complete, alreadyNotified=%d", buf, 0x12u);
        }

        if ((v52 & 1) == 0)
        {
          v56 = *(a1 + 32);
          v57 = *(v56 + 96);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __117__ASCompetitionManager_cloudKitManager_didEndUpdatesForFetchWithType_activity_cloudKitGroup_changesProcessedHandler___block_invoke_327;
          block[3] = &unk_278C4B250;
          block[4] = v56;
          block[5] = v8;
          dispatch_async(v57, block);
        }

        LOBYTE(v70) = 1;
      }

      if (([v9 isCompetitionActive] & 1) != 0 || ASIgnoredMostRecentCompetitionRequestFromContact())
      {
        v58 = objc_loadWeakRetained((*(a1 + 32) + 32));
        v59 = [v8 UUID];
        [v58 withdrawCompetitionRequestNotificationForFriendWithUUID:v59];
      }

      v60 = *(a1 + 32);
      v61 = [v8 UUID];
      [v60 _queue_completeCompetitionIfNecessaryForFriendWithUUID:v61 activity:*(a1 + 40) cloudKitGroup:*(a1 + 48)];
    }

    v73 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
  }

  while (v73);
LABEL_60:

  [*(a1 + 32) _queue_cleanUpLegacyCompetitionLists:*(*(a1 + 32) + 168) activity:*(a1 + 40) cloudKitGroup:*(a1 + 48)];
  [*(a1 + 32) _queue_cleanUpSecureCloudCompetitionLists:*(*(a1 + 32) + 176) activity:*(a1 + 40) cloudKitGroup:*(a1 + 48)];
  v62 = *(a1 + 32);
  v63 = [v62[18] copy];
  [v62 _queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs:v63];

  if (v69)
  {
    v64 = objc_loadWeakRetained((*(a1 + 32) + 48));
    [v64 updateFitnessAppBadgeCount];
  }

  if ((v70 & 0x100000000) != 0)
  {
    v65 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v65 requestTemplateUpdate];
  }

  if (v70)
  {
    v66 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v66 requestEarnedInstanceUpdate];
  }

  v67 = objc_loadWeakRetained((*(a1 + 32) + 8));
  [v67 removeAllUnusedTemplates];

  (*(*(a1 + 56) + 16))();
}

void __117__ASCompetitionManager_cloudKitManager_didEndUpdatesForFetchWithType_activity_cloudKitGroup_changesProcessedHandler___block_invoke_327(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) UUID];
  [v1 _queue_showCompetitionEndedWithFriendWithUUID:v2];
}

- (id)recordsToSave
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = objc_alloc_init(MEMORY[0x277CBEB98]);
  serialQueue = self->_serialQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ASCompetitionManager_recordsToSave__block_invoke;
  v6[3] = &unk_278C4BC10;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  allObjects = [v8[5] allObjects];
  _Block_object_dispose(&v7, 8);

  return allObjects;
}

void __37__ASCompetitionManager_recordsToSave__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_legacyCompetitionListsToSave];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ASCompetitionManager_recordsToSave__block_invoke_2;
  v6[3] = &unk_278C4D278;
  v6[4] = *(a1 + 32);
  v3 = [v2 hk_map:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __37__ASCompetitionManager_recordsToSave__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v5 = [v3 friendUUID];
  v6 = [WeakRetained contactWithUUID:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) recordForCurrentCompetitionList:v3 contact:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)periodicUpdateManager:(id)manager didSaveRecords:(id)records activity:(id)activity
{
  recordsCopy = records;
  activityCopy = activity;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__ASCompetitionManager_periodicUpdateManager_didSaveRecords_activity___block_invoke;
  block[3] = &unk_278C4BB98;
  block[4] = self;
  v13 = recordsCopy;
  v14 = activityCopy;
  v10 = activityCopy;
  v11 = recordsCopy;
  dispatch_async(serialQueue, block);
}

void __70__ASCompetitionManager_periodicUpdateManager_didSaveRecords_activity___block_invoke(uint64_t a1)
{
  v2 = ASCloudKitGroupCoreDuetTriggered(a1);
  [*(a1 + 32) _queue_handleSavedRecords:*(a1 + 40) activity:*(a1 + 48) group:v2];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  v14 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v6 = MEMORY[0x277CE8FD8];
  v7 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 67109120;
    LODWORD(v13) = availableCopy;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "CompetitionManager observed protected data availability: %{BOOL}d", &v12, 8u);
  }

  _scoreCapCelebrationAnchor = [(ASCompetitionManager *)self _scoreCapCelebrationAnchor];
  scoreCapCelebrationAnchor = self->_scoreCapCelebrationAnchor;
  self->_scoreCapCelebrationAnchor = _scoreCapCelebrationAnchor;

  ASLoggingInitialize();
  v10 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_scoreCapCelebrationAnchor;
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionManager found protected data available, setting current score cap celebration anchor to %@", &v12, 0xCu);
  }

  [(ASCompetitionManager *)self _loadCachedCompetitionsAndNotifyObservers];
}

- (void)_handleCompetitionRequestFromFriendWithUUID:(id)d activity:(id)activity cloudKitGroup:(id)group
{
  dCopy = d;
  activityCopy = activity;
  groupCopy = group;
  if (self->_deviceParticipatesInAutomaticCompetitionManagement)
  {
    transactionQueue = self->_transactionQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke;
    v13[3] = &unk_278C4D2F0;
    v13[4] = self;
    v14 = dCopy;
    v15 = activityCopy;
    v16 = groupCopy;
    [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v13];
  }

  else
  {
    ASLoggingInitialize();
    v12 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "CompetitionManager not handling competition request, device does not participate in competition management", buf, 2u);
    }
  }
}

void __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v5 = [WeakRetained contactWithUUID:*(a1 + 40)];

  ASLoggingInitialize();
  v6 = MEMORY[0x277CE8FD8];
  v7 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = v7;
    v10 = [v5 displayName];
    *buf = 138543618;
    v58 = v8;
    v59 = 2112;
    v60 = v10;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "CompetitionManager handling competition request from friend: %{public}@ - %@", buf, 0x16u);
  }

  v11 = [v5 primaryRelationship];
  v12 = [v5 primaryRemoteRelationship];
  if (![v11 hasOutgoingCompetitionRequest] || (objc_msgSend(v12, "isCompetitionActive") & 1) != 0 || (objc_msgSend(v12, "hasIgnoredCompetitionRequest") & 1) != 0 || (objc_msgSend(v11, "dateForLatestOutgoingCompetitionRequest"), v13 = objc_claimAutoreleasedReturnValue(), HasExpired = ASCompetitionRequestHasExpired(), v13, (HasExpired & 1) != 0))
  {
    v15 = [*(a1 + 32) _loadOrCreateCurrentCompetitionListForFriendWithUUID:*(a1 + 40)];
    v16 = [v5 primaryRelationship];
    v17 = [v16 hasIncomingCompetitionRequest];

    if (v17)
    {
      ASLoggingInitialize();
      v18 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "CompetitionManager friend is not in awaiting response state", buf, 2u);
      }

      ASLoggingInitialize();
      v19 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "CompetitionManager probably from another device saving to CK sooner - just notify", buf, 2u);
      }

      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      v22 = [v15 currentCompetition];
      [v21 _queue_showCompetitionRequestFromFriendWithUUID:v20 competition:v22];

LABEL_13:
      v3[2](v3);
      goto LABEL_37;
    }

    if ((ASValidateEligibilityForIncomingCompetitionRequest() & 1) == 0)
    {
      ASLoggingInitialize();
      v27 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v27, OS_LOG_TYPE_DEFAULT, "CompetitionManager incoming request failed validation, aborting", buf, 2u);
      }

      goto LABEL_13;
    }

    v23 = [*(*(a1 + 32) + 80) currentRemoteCompetitionForContact:v5];
    v24 = v23;
    if (v23)
    {
      v48 = v23;
      v25 = [v5 primaryRelationship];
      v26 = [v25 hasCompletedCompetition];

      if (v26)
      {
        v47 = [*(a1 + 32) _archivedCompetitionListByMergingCurrentCompetitionList:v15];
      }

      else
      {
        v47 = 0;
      }

      ASLoggingInitialize();
      v28 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = v48;
        _os_log_impl(&dword_23E5E3000, v28, OS_LOG_TYPE_DEFAULT, "CompetitionManager found remote competition: %@", buf, 0xCu);
      }

      ASLoggingInitialize();
      v29 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v29, OS_LOG_TYPE_DEFAULT, "CompetitionManager building local view of competition", buf, 2u);
      }

      v30 = [*(a1 + 32) _localCompetitionForRemoteCompetition:v48 friendUUID:*(a1 + 40)];
      v56 = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
      [v15 setCompetitions:v31];

      v32 = *(a1 + 32);
      v33 = *(a1 + 48);
      v46 = *(a1 + 56);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke_330;
      v49[3] = &unk_278C4D2C8;
      v53 = v3;
      v45 = *(a1 + 32);
      v34 = *(&v45 + 1);
      v35 = *(a1 + 48);
      v36 = *(a1 + 56);
      *&v37 = v35;
      v24 = v48;
      *(&v37 + 1) = v36;
      v50 = v45;
      v51 = v37;
      v52 = v30;
      v38 = v30;
      [v32 _saveCurrentCompetitionList:v15 archivedCompetitionList:v47 contact:v5 activity:v33 cloudKitGroup:v46 completion:v49];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke_cold_1();
      }

      v3[2](v3);
    }
  }

  else
  {
    ASLoggingInitialize();
    v39 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v39, OS_LOG_TYPE_DEFAULT, "CompetitionManager already sent a pending competition request to this friend", buf, 2u);
    }

    ASLoggingInitialize();
    v40 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v40, OS_LOG_TYPE_DEFAULT, "CompetitionManager this is likely due to simultaneous requests from each side", buf, 2u);
    }

    ASLoggingInitialize();
    v41 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v41, OS_LOG_TYPE_DEFAULT, "CompetitionManager attempting to auto-accept this request", buf, 2u);
    }

    v42 = *(a1 + 32);
    v44 = *(a1 + 48);
    v43 = *(a1 + 56);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke_329;
    v54[3] = &unk_278C4C178;
    v55 = v3;
    [v42 _queue_autoAcceptCompetitionRequestFromContact:v5 activity:v44 cloudKitGroup:v43 completion:v54];
    v15 = v55;
  }

LABEL_37:
}

void __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke_330(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v11 = *(*(a1 + 72) + 16);

    v11();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke_2;
    v13[3] = &unk_278C4D2A0;
    v8 = *(a1 + 72);
    v12 = *(a1 + 32);
    v9 = *(&v12 + 1);
    *&v10 = *(a1 + 64);
    *(&v10 + 1) = v8;
    v14 = v12;
    v15 = v10;
    [WeakRetained updateRelationshipWithCompetitionEvent:105 friendUUID:v5 activity:v6 cloudKitGroup:v7 completion:v13];
  }
}

void __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  (*(*(a1 + 56) + 16))();
  if (!a3 && a2)
  {
    ASLoggingInitialize();
    v6 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Successfully handled incoming competition request, notifying via BB", buf, 2u);
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__ASCompetitionManager__handleCompetitionRequestFromFriendWithUUID_activity_cloudKitGroup___block_invoke_331;
    block[3] = &unk_278C4BB98;
    block[4] = v8;
    v11 = v7;
    v12 = *(a1 + 48);
    dispatch_async(v9, block);
  }
}

- (void)_handleAcceptedCompetitionFromFriendWithUUID:(id)d activity:(id)activity cloudKitGroup:(id)group
{
  dCopy = d;
  activityCopy = activity;
  groupCopy = group;
  if (self->_deviceParticipatesInAutomaticCompetitionManagement)
  {
    transactionQueue = self->_transactionQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke;
    v13[3] = &unk_278C4D2F0;
    v13[4] = self;
    v14 = dCopy;
    v15 = activityCopy;
    v16 = groupCopy;
    [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v13];
  }

  else
  {
    ASLoggingInitialize();
    v12 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "CompetitionManager not handling accepted competition, device does not participate in competition management", buf, 2u);
    }
  }
}

void __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke(id *a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1[4] + 5);
  v5 = [WeakRetained contactWithUUID:a1[5]];

  ASLoggingInitialize();
  v6 = MEMORY[0x277CE8FD8];
  v7 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[5];
    v9 = v7;
    v10 = [v5 displayName];
    *buf = 138543618;
    v38 = v8;
    v39 = 2112;
    v40 = v10;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "CompetitionManager handling accepted competition from friend: %{public}@ - %@", buf, 0x16u);
  }

  v11 = [*(a1[4] + 10) currentCompetitionListForFriendWithUUID:a1[5]];
  v12 = [v11 currentCompetition];
  if (v12)
  {
    v13 = [v5 primaryRelationship];
    v14 = [v13 isCompetitionActive];

    if (v14)
    {
      ASLoggingInitialize();
      v15 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "CompetitionManager local view has already acknowledged remote acceptance - just notify", buf, 2u);
      }

      v3[2](v3);
      [a1[4] _queue_showCompetitionAcceptedForFriendWithUUID:a1[5] competition:v12];
    }

    else
    {
      v16 = [*(a1[4] + 10) currentRemoteCompetitionForContact:v5];
      ASLoggingInitialize();
      v17 = *v6;
      v18 = *v6;
      if (v16)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = v16;
          _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "CompetitionManager found remote competition: %@", buf, 0xCu);
        }

        ASLoggingInitialize();
        v19 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "CompetitionManager updating local view of competition", buf, 2u);
        }

        v20 = [v16 startDateComponents];
        [v12 setStartDateComponents:v20];

        v21 = [v16 durationDateComponents];
        [v12 setDurationDateComponents:v21];

        v22 = [v16 preferredVictoryBadgeStyles];
        [v12 setPreferredVictoryBadgeStyles:v22];

        [v12 setMaximumNumberOfPointsPerDay:{objc_msgSend(v16, "maximumNumberOfPointsPerDay")}];
        v36 = v12;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
        [v11 setCompetitions:v23];

        v24 = a1[4];
        v25 = a1[6];
        v26 = a1[7];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke_332;
        v29[3] = &unk_278C4D318;
        v27 = v3;
        v28 = a1[4];
        v35 = v27;
        v29[4] = v28;
        v30 = v5;
        v31 = a1[6];
        v32 = a1[7];
        v33 = a1[5];
        v34 = v12;
        [v24 _saveCurrentCompetitionList:v11 archivedCompetitionList:0 contact:v30 activity:v25 cloudKitGroup:v26 completion:v29];
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke_cold_1();
        }

        v3[2](v3);
      }
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke_cold_2();
    }

    v3[2](v3);
  }
}

void __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke_332(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v10 = *(*(a1 + 80) + 16);

    v10();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v5 = [*(a1 + 40) UUID];
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke_2;
    v11[3] = &unk_278C4D2A0;
    v8 = *(a1 + 80);
    v9 = *(a1 + 32);
    v14 = v8;
    v11[4] = v9;
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    [WeakRetained updateRelationshipWithCompetitionEvent:106 friendUUID:v5 activity:v6 cloudKitGroup:v7 completion:v11];
  }
}

void __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3 && a2)
  {
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Successfully acknowledged accepted competition request, notifying via BB", buf, 2u);
    }

    (*(*(a1 + 56) + 16))();
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained requestTemplateUpdate];

    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__ASCompetitionManager__handleAcceptedCompetitionFromFriendWithUUID_activity_cloudKitGroup___block_invoke_333;
    block[3] = &unk_278C4BB98;
    block[4] = v7;
    v10 = v6;
    v11 = *(a1 + 48);
    dispatch_async(v8, block);
  }
}

- (void)_saveCurrentCompetitionList:(id)list archivedCompetitionList:(id)competitionList contact:(id)contact activity:(id)activity cloudKitGroup:(id)group completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  listCopy = list;
  competitionListCopy = competitionList;
  contactCopy = contact;
  activityCopy = activity;
  groupCopy = group;
  completionCopy = completion;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __118__ASCompetitionManager__saveCurrentCompetitionList_archivedCompetitionList_contact_activity_cloudKitGroup_completion___block_invoke;
  v27 = &unk_278C4D340;
  selfCopy = self;
  v20 = completionCopy;
  v29 = v20;
  v21 = MEMORY[0x23EF0EB00](&v24);
  if ([contactCopy cloudType])
  {
    if (ASSecureCloudEnabled() && [contactCopy cloudType] == 1)
    {
      [(ASCompetitionManager *)self _saveSecureCloudCompetitionList:listCopy archivedCompetitionList:competitionListCopy contact:contactCopy cloudKitGroup:groupCopy completion:v21];
    }

    else
    {
      ASLoggingInitialize();
      v22 = *MEMORY[0x277CE8FD8];
      if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = contactCopy;
        _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "Invalid cloud type to save competition list for contact %@", buf, 0xCu);
      }

      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:9 userInfo:0];
      (*(v20 + 2))(v20, 0, v23);
    }
  }

  else
  {
    [(ASCompetitionManager *)self _saveLegacyCompetitionList:listCopy archivedCompetitionList:competitionListCopy contact:contactCopy activity:activityCopy cloudKitGroup:groupCopy completion:v21];
  }
}

void __118__ASCompetitionManager__saveCurrentCompetitionList_archivedCompetitionList_contact_activity_cloudKitGroup_completion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __118__ASCompetitionManager__saveCurrentCompetitionList_archivedCompetitionList_contact_activity_cloudKitGroup_completion___block_invoke_2;
  block[3] = &unk_278C4D250;
  v19 = a2;
  v15 = v7;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

uint64_t __118__ASCompetitionManager__saveCurrentCompetitionList_archivedCompetitionList_contact_activity_cloudKitGroup_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1 && !*(a1 + 32))
  {
    [*(a1 + 40) _queue_handleSavedCompetitionListRecords:*(a1 + 48)];
  }

  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_saveSecureCloudCompetitionList:(id)list archivedCompetitionList:(id)competitionList contact:(id)contact cloudKitGroup:(id)group completion:(id)completion
{
  completionCopy = completion;
  groupCopy = group;
  contactCopy = contact;
  competitionListCopy = competitionList;
  listCopy = list;
  WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);
  [WeakRetained competitionManager:self saveCurrentCompetitionList:listCopy archivedCompetitionList:competitionListCopy contact:contactCopy group:groupCopy completion:completionCopy];
}

- (void)_saveLegacyCompetitionList:(id)list archivedCompetitionList:(id)competitionList contact:(id)contact activity:(id)activity cloudKitGroup:(id)group completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  listCopy = list;
  competitionListCopy = competitionList;
  contactCopy = contact;
  completionCopy = completion;
  groupCopy = group;
  activityCopy = activity;
  ASLoggingInitialize();
  v20 = MEMORY[0x277CE8FD8];
  v21 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = listCopy;
    v39 = 2112;
    v40 = competitionListCopy;
    _os_log_impl(&dword_23E5E3000, v21, OS_LOG_TYPE_DEFAULT, "CompetitionManager saving competition lists in CloudKit, current: %@ archived: %@", buf, 0x16u);
  }

  systemFieldsOnlyRecord = [listCopy systemFieldsOnlyRecord];

  if (!systemFieldsOnlyRecord)
  {
    ASLoggingInitialize();
    v23 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "CompetitionManager current competition list doesn't exist yet, creating", buf, 2u);
    }
  }

  v24 = [(ASCompetitionManager *)self recordForCurrentCompetitionList:listCopy contact:contactCopy];
  v36 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  if (competitionListCopy)
  {
    v35 = groupCopy;
    v26 = completionCopy;
    selfCopy = self;
    v28 = contactCopy;
    systemFieldsOnlyRecord2 = [competitionListCopy systemFieldsOnlyRecord];

    if (!systemFieldsOnlyRecord2)
    {
      ASLoggingInitialize();
      v30 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v30, OS_LOG_TYPE_DEFAULT, "CompetitionManager archived competition list doesn't exist yet, creating", buf, 2u);
      }
    }

    v31 = +[ASCloudKitManager relationshipZone];
    v32 = [competitionListCopy recordWithZoneID:v31 recordEncryptionType:0];

    v33 = [v25 arrayByAddingObject:v32];

    v25 = v33;
    contactCopy = v28;
    self = selfCopy;
    completionCopy = v26;
    groupCopy = v35;
  }

  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  [WeakRetained saveRecordsIntoPrivateDatabase:v25 priority:2 activity:activityCopy group:groupCopy completion:completionCopy];
}

- (void)_queue_updateScoresWithTodaySummary:(id)summary yesterdaySummary:(id)yesterdaySummary activity:(id)activity cloudKitGroup:(id)group
{
  v107 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  yesterdaySummaryCopy = yesterdaySummary;
  activityCopy = activity;
  groupCopy = group;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_hasFetchedProtectedData)
  {
    _contactsWithActiveCompetitions = [(ASCompetitionManager *)self _contactsWithActiveCompetitions];
    v13 = [MEMORY[0x277CBEB98] set];
    ASLoggingInitialize();
    v14 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      *buf = 134218240;
      v104 = [_contactsWithActiveCompetitions count];
      v105 = 2048;
      _activitySummaryIndex = [summaryCopy _activitySummaryIndex];
      _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "CompetitionManager updating scores for competitions with %lu friends, summaryIndex=%lld", buf, 0x16u);
    }

    v87 = v13;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    obj = _contactsWithActiveCompetitions;
    selfCopy = self;
    v90 = [obj countByEnumeratingWithState:&v98 objects:v102 count:16];
    if (v90)
    {
      v81 = v93;
      v86 = MEMORY[0x277CBEBF8];
      v89 = *v99;
      *&v16 = 138543618;
      v80 = v16;
      v17 = MEMORY[0x277CE8FD8];
      do
      {
        for (i = 0; i != v90; ++i)
        {
          if (*v99 != v89)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v98 + 1) + 8 * i);
          competitionStore = self->_competitionStore;
          uUID = [v19 UUID];
          v22 = [(ASCompetitionStore *)competitionStore currentCompetitionListForFriendWithUUID:uUID];

          currentCompetition = [v22 currentCompetition];
          ASLoggingInitialize();
          v24 = *v17;
          if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            displayName = [v19 displayName];
            *buf = 138412546;
            v104 = displayName;
            v105 = 2112;
            _activitySummaryIndex = currentCompetition;
            _os_log_impl(&dword_23E5E3000, v25, OS_LOG_TYPE_DEFAULT, "Current competition for friend %@ is %@", buf, 0x16u);
          }

          if (currentCompetition)
          {
            if (ASCompetitionNeedsScoreUpdateForSummary())
            {
              ASLoggingInitialize();
              v27 = *v17;
              if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
              {
                v28 = v27;
                uUID2 = [v19 UUID];
                *buf = 138412546;
                v104 = uUID2;
                v105 = 2112;
                _activitySummaryIndex = currentCompetition;
                _os_log_impl(&dword_23E5E3000, v28, OS_LOG_TYPE_DEFAULT, "CompetitionManager updating competition score for friend with UUID:%@ with current competition: %@", buf, 0x16u);
              }

              myTotalScore = [currentCompetition myTotalScore];
              currentCacheIndex = [currentCompetition currentCacheIndex];
              v32 = ASCompetitionCalculateUpdatedScores();
              [currentCompetition setScores:v32];

              [currentCompetition setCurrentCacheIndex:{objc_msgSend(summaryCopy, "_activitySummaryIndex")}];
              ASLoggingInitialize();
              v33 = *v17;
              if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
              {
                v34 = v33;
                [currentCompetition scores];
                v84 = myTotalScore;
                v35 = currentCacheIndex;
                v36 = yesterdaySummaryCopy;
                v38 = v37 = summaryCopy;
                v39 = ASFormattedSequence();
                myTotalScore2 = [currentCompetition myTotalScore];
                *buf = 138412546;
                v104 = v39;
                v105 = 2048;
                _activitySummaryIndex = myTotalScore2;
                _os_log_impl(&dword_23E5E3000, v34, OS_LOG_TYPE_DEFAULT, "CompetitionManager calculated new scores: %@(=%lu)", buf, 0x16u);

                summaryCopy = v37;
                yesterdaySummaryCopy = v36;
                currentCacheIndex = v35;
                myTotalScore = v84;

                v17 = MEMORY[0x277CE8FD8];
              }

              if ([currentCompetition myTotalScore] == myTotalScore && objc_msgSend(currentCompetition, "currentCacheIndex") == currentCacheIndex)
              {
                ASLoggingInitialize();
                v41 = *v17;
                self = selfCopy;
                if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_23E5E3000, v41, OS_LOG_TYPE_DEFAULT, "CompetitionManager no change in scores, not persisting or notifying", buf, 2u);
                }
              }

              else
              {
                v46 = [v86 arrayByAddingObject:v22];

                uUID3 = [v19 UUID];
                v48 = [v87 setByAddingObject:uUID3];

                v86 = v46;
                v17 = MEMORY[0x277CE8FD8];
                v87 = v48;
                self = selfCopy;
              }
            }

            else if ([summaryCopy isPaused])
            {
              [currentCompetition setCurrentCacheIndex:{objc_msgSend(summaryCopy, "_activitySummaryIndex")}];
            }

            if (self->_deviceParticipatesInAutomaticCompetitionManagement && [currentCompetition hasCalculatedFinalScore] && (objc_msgSend(currentCompetition, "hasPushedFinalScore") & 1) == 0)
            {
              ASLoggingInitialize();
              v49 = *v17;
              if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23E5E3000, v49, OS_LOG_TYPE_DEFAULT, "CompetitionManager competition is ready to push final cache index, pushing immediately", buf, 2u);
              }

              transactionQueue = self->_transactionQueue;
              v92[0] = MEMORY[0x277D85DD0];
              v92[1] = 3221225472;
              v93[0] = __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke;
              v93[1] = &unk_278C4D390;
              v93[2] = self;
              v94 = v22;
              v95 = v19;
              v96 = activityCopy;
              v97 = groupCopy;
              [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v92];

              v17 = MEMORY[0x277CE8FD8];
            }
          }

          else
          {
            ASLoggingInitialize();
            v42 = *v17;
            if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
            {
              v43 = v42;
              uUID4 = [v19 UUID];
              displayName2 = [v19 displayName];
              *buf = v80;
              v104 = uUID4;
              v105 = 2112;
              _activitySummaryIndex = displayName2;
              _os_log_error_impl(&dword_23E5E3000, v43, OS_LOG_TYPE_ERROR, "Competition is active with friend, but couldn't find a current competition: %{public}@ - %@", buf, 0x16u);
            }
          }
        }

        v90 = [obj countByEnumeratingWithState:&v98 objects:v102 count:16];
      }

      while (v90);
    }

    else
    {
      v86 = MEMORY[0x277CBEBF8];
    }

    v52 = v86;
    v53 = v87;
    if ([v86 count])
    {
      if (self->_deviceParticipatesInAutomaticCompetitionManagement)
      {
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke_4;
        v91[3] = &unk_278C4D3B8;
        v91[4] = self;
        v54 = [obj hk_map:v91];
        v55 = [v54 hk_filter:&__block_literal_global_16];
        if ([v55 count])
        {
          selfCopy2 = self;
          v57 = yesterdaySummaryCopy;
          v58 = summaryCopy;
          anyObject = [v55 anyObject];
          v60 = selfCopy2->_competitionStore;
          uUID5 = [anyObject UUID];
          v62 = [(ASCompetitionStore *)v60 currentCompetitionListForFriendWithUUID:uUID5];

          currentCompetition2 = [v62 currentCompetition];
          ASLoggingInitialize();
          v64 = MEMORY[0x277CE8FD8];
          v65 = *MEMORY[0x277CE8FD8];
          if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
          {
            v66 = v65;
            uUID6 = [anyObject UUID];
            *buf = 138412546;
            v104 = uUID6;
            v105 = 2112;
            _activitySummaryIndex = currentCompetition2;
            _os_log_impl(&dword_23E5E3000, v66, OS_LOG_TYPE_DEFAULT, "CompetitionManager is evaluating whether score cap has been hit with friend with UUID: %@, competition: %@", buf, 0x16u);

            v64 = MEMORY[0x277CE8FD8];
          }

          ASLoggingInitialize();
          v68 = *v64;
          if (os_log_type_enabled(*v64, OS_LOG_TYPE_DEFAULT))
          {
            scoreCapCelebrationAnchor = selfCopy->_scoreCapCelebrationAnchor;
            *buf = 138412290;
            v104 = scoreCapCelebrationAnchor;
            _os_log_impl(&dword_23E5E3000, v68, OS_LOG_TYPE_DEFAULT, "CompetitionManager current score cap celebration anchor is %@", buf, 0xCu);
          }

          integerValue = [(NSNumber *)selfCopy->_scoreCapCelebrationAnchor integerValue];
          if (integerValue >= [currentCompetition2 currentCacheIndex])
          {
            ASLoggingInitialize();
            v79 = *MEMORY[0x277CE8FD8];
            if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23E5E3000, v79, OS_LOG_TYPE_DEFAULT, "CompetitionManager score cap celebration has already been alerted about today", buf, 2u);
            }
          }

          else
          {
            [currentCompetition2 currentCacheIndex];
            v71 = ASCompetitionDailyScoreForParticipantWithCacheIndex();
            maximumNumberOfPointsPerDay = [currentCompetition2 maximumNumberOfPointsPerDay];
            v73 = MEMORY[0x277CE8FD8];
            if (v71 >= maximumNumberOfPointsPerDay)
            {
              ASLoggingInitialize();
              v74 = *v73;
              if (os_log_type_enabled(*v73, OS_LOG_TYPE_DEFAULT))
              {
                v75 = v74;
                maximumNumberOfPointsPerDay2 = [currentCompetition2 maximumNumberOfPointsPerDay];
                *buf = 134218240;
                v104 = v71;
                v105 = 2048;
                _activitySummaryIndex = maximumNumberOfPointsPerDay2;
                _os_log_impl(&dword_23E5E3000, v75, OS_LOG_TYPE_DEFAULT, "CompetitionManager today score of %lu is greater than score cap of %lu, posting score cap celebration", buf, 0x16u);
              }

              [(ASCompetitionManager *)selfCopy _queue_showScoreCapCelebrationForFriendsWithCappedInProgressCompetitions:v55];
              v77 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(currentCompetition2, "currentCacheIndex")}];
              [(ASCompetitionManager *)selfCopy _setScoreCapCelebrationAnchor:v77];
            }
          }

          summaryCopy = v58;
          yesterdaySummaryCopy = v57;
          self = selfCopy;
          v52 = v86;
          v53 = v87;
        }

        else
        {
          ASLoggingInitialize();
          v78 = *MEMORY[0x277CE8FD8];
          if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23E5E3000, v78, OS_LOG_TYPE_DEFAULT, "CompetitionManager not posting score cap celebration, couldn't find any friends with active competitions", buf, 2u);
          }
        }
      }

      [(ASCompetitionStore *)self->_competitionStore saveCompetitionLists:v52];
      [(ASCompetitionManager *)self _queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs:v53];
    }
  }

  else
  {
    ASLoggingInitialize();
    v51 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v51, OS_LOG_TYPE_DEFAULT, "CompetitionManager not updating scores, protected data not yet fetched", buf, 2u);
    }
  }
}

void __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke_2;
  v10[3] = &unk_278C4D368;
  v10[4] = v4;
  v10[5] = v7;
  v11 = v6;
  v12 = a1[8];
  v13 = v3;
  v9 = v3;
  [v4 _saveCurrentCompetitionList:v5 archivedCompetitionList:0 contact:v7 activity:v11 cloudKitGroup:v8 completion:v10];
}

void __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 || !a2)
  {
    v8 = *(*(a1 + 64) + 16);

    v8();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v5 = [*(a1 + 40) UUID];
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke_3;
    v9[3] = &unk_278C4C178;
    v10 = *(a1 + 64);
    [WeakRetained updateRelationshipWithCompetitionEvent:13 friendUUID:v5 activity:v6 cloudKitGroup:v7 completion:v9];
  }
}

id __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 48));
  v5 = [v3 UUID];

  v6 = [WeakRetained friendWithUUID:v5];

  return v6;
}

BOOL __100__ASCompetitionManager__queue_updateScoresWithTodaySummary_yesterdaySummary_activity_cloudKitGroup___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 currentCompetition];
  v4 = [v3 stage];

  v5 = [v2 currentCompetition];

  v6 = [v5 maximumNumberOfPointsPerDay];
  return v4 == 1 && v6 != 0;
}

- (void)_queue_handleSavedCompetitionListRecords:(id)records
{
  v14 = *MEMORY[0x277D85DE8];
  serialQueue = self->_serialQueue;
  recordsCopy = records;
  dispatch_assert_queue_V2(serialQueue);
  v6 = [recordsCopy hk_filter:&__block_literal_global_341];

  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 134217984;
    v13 = [v6 count];
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CompetitionManager handling %ld competition list records", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__ASCompetitionManager__queue_handleSavedCompetitionListRecords___block_invoke_342;
  v11[3] = &unk_278C4D400;
  v11[4] = self;
  v9 = [v6 hk_map:v11];
  [(ASCompetitionStore *)self->_competitionStore saveCompetitionLists:v9];
  v10 = [v9 hk_mapToSet:&__block_literal_global_348];
  [(ASCompetitionManager *)self _queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs:v10];
}

uint64_t __65__ASCompetitionManager__queue_handleSavedCompetitionListRecords___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CE8ED8]];

  return v3;
}

id __65__ASCompetitionManager__queue_handleSavedCompetitionListRecords___block_invoke_342(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CE90E0] competitionListWithRecord:a2];
  v4 = *(*(a1 + 32) + 80);
  v5 = [v3 friendUUID];
  v6 = [v4 currentCompetitionListForFriendWithUUID:v5];

  v7 = [v3 currentCompetition];
  v8 = [v6 currentCompetition];
  v9 = [v8 UUID];
  v10 = [v7 UUID];
  if ([v9 isEqual:v10])
  {
    v11 = [v8 opponentTotalScore];
    v12 = [v7 opponentTotalScore];

    if (v11 == v12)
    {
      goto LABEL_8;
    }

    ASLoggingInitialize();
    v13 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v7 UUID];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "CompetitionManager local view of competition %@ has a more up-to-date opponent score, keeping it", &v17, 0xCu);
    }

    v9 = [v8 opponentScores];
    [v7 setOpponentScores:v9];
  }

  else
  {
  }

LABEL_8:

  return v3;
}

- (void)_queue_handleNewRemoteCompetitionList:(id)list contact:(id)contact
{
  v28 = *MEMORY[0x277D85DE8];
  listCopy = list;
  contactCopy = contact;
  dispatch_assert_queue_V2(self->_serialQueue);
  ASLoggingInitialize();
  v8 = MEMORY[0x277CE8FD8];
  v9 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = listCopy;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "CompetitionManager saving remote competition list: %@", buf, 0xCu);
  }

  [(ASCompetitionStore *)self->_competitionStore saveRemoteCompetitionList:listCopy];
  primaryRelationship = [contactCopy primaryRelationship];
  isCompetitionActive = [primaryRelationship isCompetitionActive];

  if (isCompetitionActive)
  {
    competitionStore = self->_competitionStore;
    uUID = [contactCopy UUID];
    v14 = [(ASCompetitionStore *)competitionStore currentCompetitionListForFriendWithUUID:uUID];

    currentCompetition = [v14 currentCompetition];
    currentCompetition2 = [listCopy currentCompetition];
    uUID2 = [currentCompetition UUID];
    uUID3 = [currentCompetition2 UUID];
    v19 = [uUID2 isEqual:uUID3];

    ASLoggingInitialize();
    v20 = *v8;
    v21 = *v8;
    if (v19)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v20, OS_LOG_TYPE_DEFAULT, "CompetitionManager updating local competition to reflect remote opponent score", buf, 2u);
      }

      scores = [currentCompetition2 scores];
      [currentCompetition setOpponentScores:scores];

      v23 = self->_competitionStore;
      v25 = v14;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      [(ASCompetitionStore *)v23 saveCompetitionLists:v24];
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ASCompetitionManager _queue_handleNewRemoteCompetitionList:contact:];
    }
  }
}

- (void)_queue_showCompetitionRequestFromFriendWithUUID:(id)d competition:(id)competition
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  competitionCopy = competition;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(NSSet *)self->_existingFriendUUIDsAwaitingMyCompetitionResponse containsObject:dCopy])
  {
    ASLoggingInitialize();
    v8 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = dCopy;
      _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Not posting competition request bulletin for friend UUID %@, previously posted", &v17, 0xCu);
    }
  }

  else
  {
    v9 = [(NSSet *)self->_existingFriendUUIDsAwaitingMyCompetitionResponse setByAddingObject:dCopy];
    existingFriendUUIDsAwaitingMyCompetitionResponse = self->_existingFriendUUIDsAwaitingMyCompetitionResponse;
    self->_existingFriendUUIDsAwaitingMyCompetitionResponse = v9;

    WeakRetained = objc_loadWeakRetained(&self->_friendListManager);
    v12 = [WeakRetained friendWithUUID:dCopy];

    ASLoggingInitialize();
    v13 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      displayName = [v12 displayName];
      v17 = 138543618;
      v18 = dCopy;
      v19 = 2112;
      v20 = displayName;
      _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "CompetitionManager posting competition request bulletin for friend: %{public}@ - %@", &v17, 0x16u);
    }

    v16 = objc_loadWeakRetained(&self->_competitionBulletinManager);
    [v16 showCompetitionRequestNotificationForFriend:v12 competition:competitionCopy withPostingStyle:0];
  }
}

- (void)_queue_showCompetitionAcceptedForFriendWithUUID:(id)d competition:(id)competition
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  competitionCopy = competition;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(NSSet *)self->_existingFriendUUIDsWithAcceptedCompetitionRequestsFromMe containsObject:dCopy])
  {
    ASLoggingInitialize();
    v8 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = dCopy;
      _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Not posting bulletin competition accepted bulletin for friend UUID %@, previously posted", &v17, 0xCu);
    }
  }

  else
  {
    v9 = [(NSSet *)self->_existingFriendUUIDsWithAcceptedCompetitionRequestsFromMe setByAddingObject:dCopy];
    existingFriendUUIDsWithAcceptedCompetitionRequestsFromMe = self->_existingFriendUUIDsWithAcceptedCompetitionRequestsFromMe;
    self->_existingFriendUUIDsWithAcceptedCompetitionRequestsFromMe = v9;

    WeakRetained = objc_loadWeakRetained(&self->_friendListManager);
    v12 = [WeakRetained friendWithUUID:dCopy];

    ASLoggingInitialize();
    v13 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      displayName = [v12 displayName];
      v17 = 138543618;
      v18 = dCopy;
      v19 = 2112;
      v20 = displayName;
      _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "CompetitionManager posting competition accepted bulletin for friend: %{public}@ - %@", &v17, 0x16u);
    }

    v16 = objc_loadWeakRetained(&self->_competitionBulletinManager);
    [v16 showCompetitionAcceptedNotificationForFriend:v12 competition:competitionCopy withPostingStyle:0];
  }
}

- (void)_queue_showCompetitionEndedWithFriendWithUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([(NSSet *)self->_existingFriendUUIDsWithCompletedCompetitions containsObject:dCopy])
  {
    ASLoggingInitialize();
    v5 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = dCopy;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Not posting bulletin competition completed bulletin for friend UUID %@, previously posted", &v15, 0xCu);
    }
  }

  else
  {
    v6 = [(NSSet *)self->_existingFriendUUIDsWithCompletedCompetitions setByAddingObject:dCopy];
    existingFriendUUIDsWithCompletedCompetitions = self->_existingFriendUUIDsWithCompletedCompetitions;
    self->_existingFriendUUIDsWithCompletedCompetitions = v6;

    WeakRetained = objc_loadWeakRetained(&self->_friendListManager);
    v9 = [WeakRetained friendWithUUID:dCopy];

    ASLoggingInitialize();
    v10 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      displayName = [v9 displayName];
      v15 = 138543618;
      v16 = dCopy;
      v17 = 2112;
      v18 = displayName;
      _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "CompetitionManager posting competition ended with friend: %{public}@ - %@", &v15, 0x16u);
    }

    v13 = objc_loadWeakRetained(&self->_competitionBulletinManager);
    mostRecentlyCompletedCompetition = [v9 mostRecentlyCompletedCompetition];
    [v13 showCompetitionEndedNotificationForFriend:v9 competition:mostRecentlyCompletedCompetition withPostingStyle:0];
  }
}

- (void)_queue_showScoreCapCelebrationForFriendsWithCappedInProgressCompetitions:(id)competitions
{
  v9 = *MEMORY[0x277D85DE8];
  competitionsCopy = competitions;
  dispatch_assert_queue_V2(self->_serialQueue);
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = competitionsCopy;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "CompetitionManager posting score cap celebration with friends %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_competitionBulletinManager);
  [WeakRetained showCompetitionScoreCapCelebrationForFriends:competitionsCopy withPostingStyle:0];
}

- (void)_queue_autoAcceptCompetitionRequestFromContact:(id)contact activity:(id)activity cloudKitGroup:(id)group completion:(id)completion
{
  v43[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  activityCopy = activity;
  groupCopy = group;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_serialQueue);
  v14 = [(ASCompetitionStore *)self->_competitionStore currentRemoteCompetitionForContact:contactCopy];
  if (v14)
  {
    competitionStore = self->_competitionStore;
    uUID = [contactCopy UUID];
    v17 = [(ASCompetitionStore *)competitionStore currentCompetitionListForFriendWithUUID:uUID];

    competitions = [v17 competitions];
    firstObject = [competitions firstObject];

    ASLoggingInitialize();
    v20 = *MEMORY[0x277CE8FD8];
    if (firstObject)
    {
      v34 = groupCopy;
      v35 = activityCopy;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v20, OS_LOG_TYPE_DEFAULT, "CompetitionManager comparing UUIDs to decide if we should accept", buf, 2u);
      }

      uUID2 = [v14 UUID];
      uUIDString = [uUID2 UUIDString];
      v33 = firstObject;
      uUID3 = [firstObject UUID];
      uUIDString2 = [uUID3 UUIDString];
      v25 = [uUIDString compare:uUIDString2];

      ASLoggingInitialize();
      v26 = *MEMORY[0x277CE8FD8];
      v27 = os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT);
      if (v25 == -1)
      {
        activityCopy = v35;
        if (v27)
        {
          *buf = 0;
          _os_log_impl(&dword_23E5E3000, v26, OS_LOG_TYPE_DEFAULT, "CompetitionManager this device should accept, rebuilding local competition in accepting role", buf, 2u);
        }

        uUID4 = [contactCopy UUID];
        v31 = [(ASCompetitionManager *)self _localCompetitionForRemoteCompetition:v14 friendUUID:uUID4];

        v43[0] = v31;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
        [v17 setCompetitions:v30];

        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __105__ASCompetitionManager__queue_autoAcceptCompetitionRequestFromContact_activity_cloudKitGroup_completion___block_invoke;
        v36[3] = &unk_278C4D2C8;
        v41 = completionCopy;
        v36[4] = self;
        v37 = contactCopy;
        v38 = v35;
        groupCopy = v34;
        v39 = v34;
        v40 = v31;
        v32 = v31;
        [(ASCompetitionManager *)self _saveCurrentCompetitionList:v17 archivedCompetitionList:0 contact:v37 activity:v38 cloudKitGroup:v39 completion:v36];
      }

      else
      {
        groupCopy = v34;
        activityCopy = v35;
        if (v27)
        {
          *buf = 0;
          _os_log_impl(&dword_23E5E3000, v26, OS_LOG_TYPE_DEFAULT, "CompetitionManager this device should *not* accept", buf, 2u);
        }

        (*(completionCopy + 2))(completionCopy, 1, 0);
      }

      firstObject = v33;
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
      {
        [ASCompetitionManager _queue_autoAcceptCompetitionRequestFromContact:activity:cloudKitGroup:completion:];
      }

      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:5 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v28);
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      [ASCompetitionManager _queue_autoAcceptCompetitionRequestFromContact:activity:cloudKitGroup:completion:];
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:6 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v17);
  }
}

void __105__ASCompetitionManager__queue_autoAcceptCompetitionRequestFromContact_activity_cloudKitGroup_completion___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v12 = *(*(a1 + 72) + 16);

    v12();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v5 = [*(a1 + 40) UUID];
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __105__ASCompetitionManager__queue_autoAcceptCompetitionRequestFromContact_activity_cloudKitGroup_completion___block_invoke_2;
    v14[3] = &unk_278C4D448;
    v13 = *(a1 + 32);
    v8 = *(&v13 + 1);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v15 = v13;
    v16 = v11;
    [WeakRetained updateRelationshipWithCompetitionEvent:11 friendUUID:v5 activity:v6 cloudKitGroup:v7 completion:v14];
  }
}

void __105__ASCompetitionManager__queue_autoAcceptCompetitionRequestFromContact_activity_cloudKitGroup_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5 && a2)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__ASCompetitionManager__queue_autoAcceptCompetitionRequestFromContact_activity_cloudKitGroup_completion___block_invoke_3;
    block[3] = &unk_278C4BB98;
    block[4] = v7;
    v10 = v6;
    v11 = *(a1 + 48);
    dispatch_async(v8, block);
  }

  (*(*(a1 + 56) + 16))();
}

void __105__ASCompetitionManager__queue_autoAcceptCompetitionRequestFromContact_activity_cloudKitGroup_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUID];
  [v2 _queue_showCompetitionAcceptedForFriendWithUUID:v3 competition:*(a1 + 48)];
}

- (void)_queue_completeCompetitionIfNecessaryForFriendWithUUID:(id)d activity:(id)activity cloudKitGroup:(id)group
{
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  activityCopy = activity;
  groupCopy = group;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_deviceParticipatesInAutomaticCompetitionManagement)
  {
    WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
    v12 = [WeakRetained contactWithUUID:dCopy];

    primaryRelationship = [v12 primaryRelationship];
    isCompetitionActive = [primaryRelationship isCompetitionActive];

    if (isCompetitionActive)
    {
      v15 = [(ASCompetitionStore *)self->_competitionStore currentRemoteCompetitionForContact:v12];
      competitionStore = self->_competitionStore;
      uUID = [v12 UUID];
      v18 = [(ASCompetitionStore *)competitionStore currentCompetitionListForFriendWithUUID:uUID];

      currentCompetition = [v18 currentCompetition];
      if (currentCompetition && v15)
      {
        if (ASCompetitionIsReadyToComplete())
        {
          ASLoggingInitialize();
          v20 = *MEMORY[0x277CE8FD8];
          if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
          {
            log = v20;
            uUID2 = [v12 UUID];
            displayName = [v12 displayName];
            *buf = 138543618;
            v39 = uUID2;
            v40 = 2112;
            v41 = displayName;
            _os_log_impl(&dword_23E5E3000, log, OS_LOG_TYPE_DEFAULT, "CompetitionManager competition with friend is ready to complete: %{public}@ - %@", buf, 0x16u);
          }

          transactionQueue = self->_transactionQueue;
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke;
          v29[3] = &unk_278C4D498;
          v30 = currentCompetition;
          v31 = v15;
          selfCopy = self;
          v33 = v18;
          v34 = v12;
          v35 = activityCopy;
          v36 = groupCopy;
          v37 = dCopy;
          [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v29];
        }
      }

      else
      {
        ASLoggingInitialize();
        v23 = *MEMORY[0x277CE8FD8];
        if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
        {
          v24 = v23;
          uUID3 = [v12 UUID];
          displayName2 = [v12 displayName];
          *buf = 138544130;
          v39 = uUID3;
          v40 = 2112;
          v41 = displayName2;
          v42 = 2112;
          v43 = currentCompetition;
          v44 = 2112;
          v45 = v15;
          _os_log_error_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_ERROR, "CompetitionManager tried to check if competition is ready to complete, but couldn't find both a local and remote view of the competition: %{public}@ - %@, localCompetition=%@, remoteCompetition=%@", buf, 0x2Au);
        }
      }
    }
  }
}

void __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "CompetitionManager pushing competition one last time with updated opponent score", buf, 2u);
  }

  v5 = [*(a1 + 40) scores];
  [*(a1 + 32) setOpponentScores:v5];

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke_349;
  v12[3] = &unk_278C4D2C8;
  v17 = v3;
  v12[4] = v6;
  v13 = v8;
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v11 = v3;
  [v6 _saveCurrentCompetitionList:v7 archivedCompetitionList:0 contact:v8 activity:v9 cloudKitGroup:v10 completion:v12];
}

void __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke_349(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke_349_cold_1();
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v7 = [*(a1 + 40) UUID];
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke_350;
    v10[3] = &unk_278C4D470;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    [WeakRetained updateRelationshipWithCompetitionEvent:14 friendUUID:v7 activity:v8 cloudKitGroup:v9 completion:v10];
  }
}

uint64_t __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke_350(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3 && a2)
  {
    ASLoggingInitialize();
    v6 = MEMORY[0x277CE8FD8];
    v7 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "CompetitionManager successfully completed competition", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1[4] + 40));
    v9 = [WeakRetained contactWithUUID:a1[5]];

    v10 = [v9 primaryRemoteRelationship];
    v11 = [v10 hasCompletedCompetition];

    if (v11)
    {
      ASLoggingInitialize();
      v12 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "CompetitionManager remote competition is also complete, we can notify", buf, 2u);
      }

      v13 = objc_loadWeakRetained((a1[4] + 8));
      [v13 requestEarnedInstanceUpdate];

      v14 = objc_loadWeakRetained((a1[4] + 8));
      [v14 removeUnusedTemplatesForFriendWithUUID:a1[5]];

      v16 = a1[4];
      v15 = a1[5];
      v17 = *(v16 + 96);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke_351;
      v19[3] = &unk_278C4B250;
      v19[4] = v16;
      v20 = v15;
      dispatch_async(v17, v19);
    }
  }

  return (*(a1[6] + 16))(a1[6], a2, a3, a4, a5);
}

- (void)_queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs:(id)ds
{
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_serialQueue);
  if ([dsCopy count])
  {
    observerQueue = self->_observerQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __86__ASCompetitionManager__queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs___block_invoke;
    v6[3] = &unk_278C4B250;
    v6[4] = self;
    v7 = dsCopy;
    dispatch_sync(observerQueue, v6);
  }
}

void __86__ASCompetitionManager__queue_notifyObserversOfCompetitionUpdatesForFriendsWithUUIDs___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 112);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) competitionManager:*(a1 + 32) didUpdateCompetitionsForFriendsWithUUIDs:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_archivedCompetitionListByMergingCurrentCompetitionList:(id)list
{
  v27 = *MEMORY[0x277D85DE8];
  listCopy = list;
  ASLoggingInitialize();
  v5 = MEMORY[0x277CE8FD8];
  v6 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "CompetitionManager building new archived competition list", &v25, 2u);
  }

  currentCompetition = [listCopy currentCompetition];
  if (currentCompetition)
  {
    competitionStore = self->_competitionStore;
    friendUUID = [listCopy friendUUID];
    v10 = [(ASCompetitionStore *)competitionStore archivedCompetitionListForFriendWithUUID:friendUUID];

    if (!v10)
    {
      ASLoggingInitialize();
      v11 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        friendUUID2 = [listCopy friendUUID];
        v25 = 138543362;
        v26 = friendUUID2;
        _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "CompetitionManager didn't find an existing archived competition list, creating one for friend: %{public}@", &v25, 0xCu);
      }

      v14 = objc_alloc(MEMORY[0x277CE90E0]);
      friendUUID3 = [listCopy friendUUID];
      v10 = [v14 initWithFriendUUID:friendUUID3 type:1];
    }

    competitions = [v10 competitions];
    v17 = [competitions arrayByAddingObject:currentCompetition];
    [v10 setCompetitions:v17];

    competitions2 = [v10 competitions];
    v19 = ASCompetitionsEligibleForArchival();
    [v10 setCompetitions:v19];

    ASLoggingInitialize();
    v20 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      competitions3 = [v10 competitions];
      v25 = 138412290;
      v26 = competitions3;
      _os_log_impl(&dword_23E5E3000, v21, OS_LOG_TYPE_DEFAULT, "CompetitionManager built new archived competition list: %@", &v25, 0xCu);
    }
  }

  else
  {
    ASLoggingInitialize();
    v23 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "CompetitionManager didn't find an existing competition to archive", &v25, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)_loadOrCreateCurrentCompetitionListForFriendWithUUID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(ASCompetitionStore *)self->_competitionStore currentCompetitionListForFriendWithUUID:dCopy];
  if (!v5)
  {
    ASLoggingInitialize();
    v6 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = dCopy;
      _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "CompetitionManager didn't find an existing current competition list, creating one for friend: %{public}@", &v8, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x277CE90E0]) initWithFriendUUID:dCopy type:0];
  }

  return v5;
}

- (id)_localCompetitionForRemoteCompetition:(id)competition friendUUID:(id)d
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CE90D8];
  dCopy = d;
  competitionCopy = competition;
  v9 = objc_alloc_init(v6);
  uUID = [competitionCopy UUID];
  [v9 setUUID:uUID];

  startDateComponents = [competitionCopy startDateComponents];
  [v9 setStartDateComponents:startDateComponents];

  durationDateComponents = [competitionCopy durationDateComponents];
  [v9 setDurationDateComponents:durationDateComponents];

  WeakRetained = objc_loadWeakRetained(&self->_friendListManager);
  v14 = [WeakRetained friendWithUUID:dCopy];

  v15 = objc_loadWeakRetained(&self->_friendListManager);
  friends = [v15 friends];
  v17 = ASPreferredCompetitionVictoryBadgeStylesForFriend();

  preferredVictoryBadgeStyles = [competitionCopy preferredVictoryBadgeStyles];
  v19 = ASBestCompetitionVictoryBadgeStyleForPreferredStyles();

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
  v24[0] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v9 setPreferredVictoryBadgeStyles:v21];

  maximumNumberOfPointsPerDay = [competitionCopy maximumNumberOfPointsPerDay];
  [v9 setMaximumNumberOfPointsPerDay:maximumNumberOfPointsPerDay];

  return v9;
}

- (void)_loadCachedCompetitionsAndNotifyObservers
{
  if ([(ASDatabaseClient *)self->_databaseClient isProtectedDataAvailable])
  {
    loadCachedCompetitions = [(ASCompetitionStore *)self->_competitionStore loadCachedCompetitions];
    self->_hasFetchedProtectedData = loadCachedCompetitions;
    if (loadCachedCompetitions)
    {
      [(ASDatabaseClient *)self->_databaseClient removeProtectedDataObserver:self];
      observerQueue = self->_observerQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__ASCompetitionManager__loadCachedCompetitionsAndNotifyObservers__block_invoke;
      block[3] = &unk_278C4B278;
      block[4] = self;
      dispatch_async(observerQueue, block);
      WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
      [WeakRetained observerDidBecomeReadyToProcessChanges:self];
    }
  }

  else
  {
    ASLoggingInitialize();
    v6 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "CompetitionManager not loading cached competitions, protected data is not available", buf, 2u);
    }
  }
}

void __65__ASCompetitionManager__loadCachedCompetitionsAndNotifyObservers__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 112);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) competitionManagerDidLoadCachedCompetitions:{*(a1 + 32), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_queue_handleSavedRecords:(id)records activity:(id)activity group:(id)group
{
  groupCopy = group;
  activityCopy = activity;
  [(ASCompetitionManager *)self _queue_handleSavedCompetitionListRecords:records];
  WeakRetained = objc_loadWeakRetained(&self->_activityDataManager);
  currentActivitySummary = [WeakRetained currentActivitySummary];
  v11 = objc_loadWeakRetained(&self->_activityDataManager);
  yesterdayActivitySummary = [v11 yesterdayActivitySummary];
  [(ASCompetitionManager *)self _queue_updateScoresWithTodaySummary:currentActivitySummary yesterdaySummary:yesterdayActivitySummary activity:activityCopy cloudKitGroup:groupCopy];
}

- (void)_queue_setActivityDataVisibleIfNecessaryForContact:(id)contact completion:(id)completion
{
  contactCopy = contact;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_serialQueue);
  primaryRelationship = [contactCopy primaryRelationship];
  isHidingActivityData = [primaryRelationship isHidingActivityData];

  ASLoggingInitialize();
  v10 = *MEMORY[0x277CE8FD8];
  v11 = os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT);
  if ((isHidingActivityData & 1) == 0)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionManager my activity data is not hidden, proceeding immediately", buf, 2u);
    }

LABEL_10:
    completionCopy[2](completionCopy, 1, 0, contactCopy);
    goto LABEL_12;
  }

  if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionManager my activity data is hidden, unhiding first", buf, 2u);
  }

  if (![contactCopy cloudType])
  {
    WeakRetained = objc_loadWeakRetained(&self->_relationshipManager);
    uUID = [contactCopy UUID];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __86__ASCompetitionManager__queue_setActivityDataVisibleIfNecessaryForContact_completion___block_invoke;
    v15[3] = &unk_278C4D4E8;
    v15[4] = self;
    v17 = completionCopy;
    v16 = contactCopy;
    [WeakRetained setActivityDataVisible:1 toFriendWithUUID:uUID completion:v15];

    goto LABEL_12;
  }

  if (ASSecureCloudEnabled() && [contactCopy cloudType] == 1)
  {
    goto LABEL_10;
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:9 userInfo:0];
  (completionCopy)[2](completionCopy, 0, v12, 0);

LABEL_12:
}

void __86__ASCompetitionManager__queue_setActivityDataVisibleIfNecessaryForContact_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__ASCompetitionManager__queue_setActivityDataVisibleIfNecessaryForContact_completion___block_invoke_2;
  block[3] = &unk_278C4D4C0;
  v14 = *(a1 + 48);
  v15 = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v7;
  v13 = v8;
  v9 = v5;
  dispatch_async(v6, block);
}

void __86__ASCompetitionManager__queue_setActivityDataVisibleIfNecessaryForContact_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
  v5 = [*(a1 + 48) UUID];
  v6 = [WeakRetained contactWithUUID:v5];
  (*(v2 + 16))(v2, v3, v4, v6);
}

- (id)recordForCurrentCompetitionList:(id)list contact:(id)contact
{
  listCopy = list;
  relationshipStorage = [contact relationshipStorage];
  legacyRelationship = [relationshipStorage legacyRelationship];

  v8 = +[ASCloudKitManager relationshipZone];
  v9 = [listCopy recordWithZoneID:v8 recordEncryptionType:0];

  v10 = objc_alloc(MEMORY[0x277CBC620]);
  systemFieldsOnlyRecord = [legacyRelationship systemFieldsOnlyRecord];
  recordID = [systemFieldsOnlyRecord recordID];
  v13 = [v10 initWithRecordID:recordID action:0];
  [v9 setParent:v13];

  return v9;
}

- (id)_contactsWithActiveCompetitions
{
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  contacts = [WeakRetained contacts];

  v4 = [contacts hk_filter:&__block_literal_global_354];

  return v4;
}

uint64_t __55__ASCompetitionManager__contactsWithActiveCompetitions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 primaryRelationship];
  v3 = [v2 isCompetitionActive];

  return v3;
}

- (id)_scoreCapCelebrationAnchor
{
  _localUserDefaultsDomain = [(ASCompetitionManager *)self _localUserDefaultsDomain];
  v6 = 0;
  v3 = [_localUserDefaultsDomain numberForKey:@"ActivitySharingScoreCapCelebrationAnchor" error:&v6];
  v4 = v6;
  if (v4)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      [ASCompetitionManager _scoreCapCelebrationAnchor];
    }

    v3 = 0;
  }

  return v3;
}

- (void)_setScoreCapCelebrationAnchor:(id)anchor
{
  v12 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  _localUserDefaultsDomain = [(ASCompetitionManager *)self _localUserDefaultsDomain];
  v9 = 0;
  [_localUserDefaultsDomain setNumber:anchorCopy forKey:@"ActivitySharingScoreCapCelebrationAnchor" error:&v9];
  v7 = v9;
  if (v7)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      [ASCompetitionManager _setScoreCapCelebrationAnchor:];
    }
  }

  else
  {
    objc_storeStrong(&self->_scoreCapCelebrationAnchor, anchor);
    ASLoggingInitialize();
    v8 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = anchorCopy;
      _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CompetitionManager updated score cap celebration anchor is %@", buf, 0xCu);
    }
  }
}

- (id)secureCloudCompetitionListsToSave
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = objc_alloc_init(MEMORY[0x277CBEB98]);
  serialQueue = self->_serialQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__ASCompetitionManager_secureCloudCompetitionListsToSave__block_invoke;
  v6[3] = &unk_278C4BA58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __57__ASCompetitionManager_secureCloudCompetitionListsToSave__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _queue_secureCloudCompetitionListsToSave];

  return MEMORY[0x2821F96F8]();
}

- (void)secureCloudDidSaveRecords:(id)records
{
  recordsCopy = records;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ASCompetitionManager_secureCloudDidSaveRecords___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = recordsCopy;
  v6 = recordsCopy;
  dispatch_async(serialQueue, v7);
}

- (void)secureCloudDidFailToSaveRecords:(id)records
{
  v8 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  if ([recordsCopy count])
  {
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = 134217984;
      v7 = [recordsCopy count];
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "CompetitionManager failed to save secure cloud %ld records", &v6, 0xCu);
    }
  }
}

- (id)currentCompetitionListForFriendWithUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ASCompetitionManager_currentCompetitionListForFriendWithUUID___block_invoke;
  block[3] = &unk_278C4BAD0;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __64__ASCompetitionManager_currentCompetitionListForFriendWithUUID___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 80) currentCompetitionListForFriendWithUUID:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (id)archivedCompetitionListForFriendWithUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ASCompetitionManager_archivedCompetitionListForFriendWithUUID___block_invoke;
  block[3] = &unk_278C4BAD0;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __65__ASCompetitionManager_archivedCompetitionListForFriendWithUUID___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 80) archivedCompetitionListForFriendWithUUID:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (void)storePushedCompetitionListRecords:(id)records
{
  recordsCopy = records;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ASCompetitionManager_storePushedCompetitionListRecords___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = recordsCopy;
  v6 = recordsCopy;
  dispatch_async(serialQueue, v7);
}

- (BOOL)_shouldSkipLocalLegacyCompetitionList:(id)list
{
  listCopy = list;
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  friendUUID = [listCopy friendUUID];
  v7 = [WeakRetained contactWithUUID:friendUUID];

  if ([v7 cloudType] == 1)
  {
    systemFieldsOnlyRecord = [listCopy systemFieldsOnlyRecord];
    recordID = [systemFieldsOnlyRecord recordID];
    zoneID = [recordID zoneID];
    v11 = +[ASCloudKitManager relationshipZone];
    v12 = [zoneID isEqual:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_shouldSkipRemoteLegacyCompetitionList:(id)list contact:(id)contact
{
  listCopy = list;
  contactCopy = contact;
  cloudType = [contactCopy cloudType];
  if (cloudType == 1)
  {
    systemFieldsOnlyRecord = [listCopy systemFieldsOnlyRecord];
    recordID = [systemFieldsOnlyRecord recordID];
    zoneID = [recordID zoneID];
    v11 = +[ASCloudKitManager relationshipZone];
    if ([zoneID isEqual:v11])
    {
      LOBYTE(v12) = 1;
LABEL_11:

      goto LABEL_12;
    }

    if ([contactCopy cloudType])
    {
      LOBYTE(v12) = 0;
      goto LABEL_11;
    }

    v20 = v11;
    v22 = zoneID;
    v24 = recordID;
    v26 = systemFieldsOnlyRecord;
  }

  else if ([contactCopy cloudType])
  {
    LOBYTE(v12) = 0;
    goto LABEL_12;
  }

  systemFieldsOnlyRecord2 = [listCopy systemFieldsOnlyRecord];
  recordID2 = [systemFieldsOnlyRecord2 recordID];
  zoneID2 = [recordID2 zoneID];
  zoneName = [zoneID2 zoneName];
  v17 = +[ASCloudKitManager relationshipZone];
  zoneName2 = [v17 zoneName];
  v12 = [zoneName isEqualToString:zoneName2] ^ 1;

  recordID = v25;
  systemFieldsOnlyRecord = v27;
  v11 = v21;
  zoneID = v23;
  if (cloudType == 1)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v12;
}

- (void)_queue_cleanUpLegacyCompetitionLists:(id)lists activity:(id)activity cloudKitGroup:(id)group
{
  v17 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  activityCopy = activity;
  groupCopy = group;
  v11 = [listsCopy hk_map:&__block_literal_global_357];
  if ([v11 count])
  {
    ASLoggingInitialize();
    v12 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = listsCopy;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "Removing legacy competition lists that have been migrated %@", &v15, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
    allObjects = [v11 allObjects];
    [WeakRetained saveRecordsIntoPrivateDatabase:MEMORY[0x277CBEBF8] recordIDsToDelete:allObjects priority:2 activity:activityCopy group:groupCopy completion:&__block_literal_global_360];
  }
}

id __84__ASCompetitionManager__queue_cleanUpLegacyCompetitionLists_activity_cloudKitGroup___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 systemFieldsOnlyRecord];
  v3 = [v2 recordID];

  return v3;
}

void __84__ASCompetitionManager__queue_cleanUpLegacyCompetitionLists_activity_cloudKitGroup___block_invoke_358(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Removed legacy competitions that have been migrated (success %{BOOL}d, error: %@)", v6, 0x12u);
  }
}

- (BOOL)_shouldSkipLocalSecureCloudCompetitionList:(id)list
{
  listCopy = list;
  WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
  friendUUID = [listCopy friendUUID];
  v7 = [WeakRetained contactWithUUID:friendUUID];

  if ([v7 cloudType])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    systemFieldsOnlyRecord = [listCopy systemFieldsOnlyRecord];
    recordID = [systemFieldsOnlyRecord recordID];
    zoneID = [recordID zoneID];
    v12 = +[ASCloudKitManager relationshipZone];
    v8 = [zoneID isEqual:v12] ^ 1;
  }

  return v8;
}

- (void)_queue_cleanUpSecureCloudCompetitionLists:(id)lists activity:(id)activity cloudKitGroup:(id)group
{
  v14 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  groupCopy = group;
  v9 = [listsCopy hk_map:&__block_literal_global_362];
  if ([v9 count])
  {
    ASLoggingInitialize();
    v10 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = listsCopy;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Removing secure cloud competition lists that have been downgraded %@", &v12, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);
    [WeakRetained competitionManager:self deleteCompetitionLists:listsCopy group:groupCopy completion:&__block_literal_global_365];
  }
}

id __89__ASCompetitionManager__queue_cleanUpSecureCloudCompetitionLists_activity_cloudKitGroup___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 systemFieldsOnlyRecord];
  v3 = [v2 recordID];

  return v3;
}

void __89__ASCompetitionManager__queue_cleanUpSecureCloudCompetitionLists_activity_cloudKitGroup___block_invoke_363(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Removed secure cloud competitions that have been downgraded (success %{BOOL}d, error: %@)", v6, 0x12u);
  }
}

- (id)_queue_competitionListsToSaveForCloudType:(unint64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v5 = MEMORY[0x277CE8FD8];
  v6 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "CompetitionManager responding to periodic update request for records", buf, 2u);
  }

  _contactsWithActiveCompetitions = [(ASCompetitionManager *)self _contactsWithActiveCompetitions];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__ASCompetitionManager__queue_competitionListsToSaveForCloudType___block_invoke;
  v14[3] = &unk_278C4D550;
  v14[4] = self;
  v14[5] = type;
  v8 = [_contactsWithActiveCompetitions hk_map:v14];
  ASLoggingInitialize();
  v9 = *v5;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v8 count];
    v12 = NSStringFromASCloudType();
    *buf = 134218242;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionManager found %lu %@ competition lists to save", buf, 0x16u);
  }

  return v8;
}

id __66__ASCompetitionManager__queue_competitionListsToSaveForCloudType___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 relationshipStorage];
  v5 = [v4 primaryRelationship];

  if (!v5)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      __66__ASCompetitionManager__queue_competitionListsToSaveForCloudType___block_invoke_cold_1();
    }

    goto LABEL_10;
  }

  if ([v5 cloudType] != *(a1 + 40))
  {
LABEL_10:
    v16 = 0;
    goto LABEL_15;
  }

  v6 = *(*(a1 + 32) + 80);
  v7 = [v3 UUID];
  v8 = [v6 currentCompetitionListForFriendWithUUID:v7];

  if (v8)
  {
    v9 = [v8 currentCompetition];
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [v9 endDate];
    v12 = [v10 hk_isAfterOrEqualToDate:v11];

    if (v12)
    {
      ASLoggingInitialize();
      v13 = *MEMORY[0x277CE8FD8];
      if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [v9 UUID];
        v18 = 138543362;
        v19 = v15;
        _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Competition has ended, not including in competition lists to save: %{public}@", &v18, 0xCu);
      }

      v16 = 0;
    }

    else
    {
      v16 = v8;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_15:

  return v16;
}

- (void)completeCompetitionWithFriendWithUUID:(id)d completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = dCopy;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Completing competition with friend: %{public}@", buf, 0xCu);
  }

  transactionQueue = self->_transactionQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke;
  v12[3] = &unk_278C4D5C8;
  v12[4] = self;
  v13 = dCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = dCopy;
  [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v12];
}

void __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v5 = [WeakRetained contactWithUUID:*(a1 + 40)];

  v6 = [v5 primaryRelationship];
  v7 = [v6 isCompetitionActive];

  if (v7)
  {
    v8 = [*(*(a1 + 32) + 80) currentCompetitionListForFriendWithUUID:*(a1 + 40)];
    v9 = [v8 currentCompetition];
    v10 = v9;
    if (v9)
    {
      v11 = ASCloudKitGroupUserActionExplicit([v9 setCurrentCacheIndex:{objc_msgSend(v9, "endDateCacheIndex")}]);
      v12 = *(a1 + 32);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke_367;
      v21[3] = &unk_278C4D5A0;
      v24 = *(a1 + 48);
      v13 = v3;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v25 = v13;
      v21[4] = v14;
      v22 = v15;
      v23 = v11;
      v16 = v11;
      [v12 _saveCurrentCompetitionList:v8 archivedCompetitionList:0 contact:v5 activity:0 cloudKitGroup:v16 completion:v21];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
      {
        __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke_cold_2();
      }

      v19 = *(a1 + 48);
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:4 userInfo:0];
      (*(v19 + 16))(v19, 0, v20);

      v3[2](v3);
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke_cold_1();
    }

    v17 = *(a1 + 48);
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:4 userInfo:0];
    (*(v17 + 16))(v17, 0, v18);

    v3[2](v3);
  }
}

void __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke_367(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    (*(*(a1 + 56) + 16))();
    v7 = *(*(a1 + 64) + 16);

    v7();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke_2;
    v8[3] = &unk_278C4D578;
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    [WeakRetained updateRelationshipWithCompetitionEvent:13 friendUUID:v5 activity:0 cloudKitGroup:v6 completion:v8];
  }
}

uint64_t __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)updateAllActiveCompetitionsWithScores:(id)scores completion:(id)completion
{
  scoresCopy = scores;
  completionCopy = completion;
  transactionQueue = self->_transactionQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke;
  v11[3] = &unk_278C4D5C8;
  v11[4] = self;
  v12 = scoresCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = scoresCopy;
  [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v11];
}

void __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 1;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__11;
  v28[4] = __Block_byref_object_dispose__11;
  v29 = 0;
  v4 = [*(a1 + 32) _contactsWithActiveCompetitions];
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke_2;
  v24[3] = &unk_278C4C330;
  v26 = v30;
  v27 = v28;
  v8 = v5;
  v25 = v8;
  [v6 _queue_updateSecureCloudCompetitionsWithScores:v7 forContacts:v4 completion:v24];
  dispatch_group_enter(v8);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke_3;
  v20[3] = &unk_278C4C330;
  v22 = v30;
  v23 = v28;
  v11 = v8;
  v21 = v11;
  [v9 _queue_updateLegacyCompetitionsWithScores:v10 forContacts:v4 completion:v20];
  v12 = *(*(a1 + 32) + 96);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke_4;
  v15[3] = &unk_278C4D5F0;
  v13 = *(a1 + 48);
  v18 = v30;
  v19 = v28;
  v16 = v13;
  v17 = v3;
  v14 = v3;
  dispatch_group_notify(v11, v12, v15);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

void __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke_2(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  v5 = *(*(a1 + 48) + 8);
  v6 = a3;
  if (!a3)
  {
    v6 = *(v5 + 40);
  }

  objc_storeStrong((v5 + 40), v6);
  v7 = a3;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __73__ASCompetitionManager_updateAllActiveCompetitionsWithScores_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 40));
  }

  v3 = *(a1[5] + 16);

  return v3();
}

- (void)_queue_updateLegacyCompetitionsWithScores:(id)scores forContacts:(id)contacts completion:(id)completion
{
  completionCopy = completion;
  v9 = [(ASCompetitionManager *)self _competitionListsFromContacts:contacts withUpdatedScore:scores cloudType:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__ASCompetitionManager__queue_updateLegacyCompetitionsWithScores_forContacts_completion___block_invoke;
  v17[3] = &unk_278C4D618;
  v17[4] = self;
  v10 = [v9 hk_map:v17];
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  allObjects = [v10 allObjects];
  v13 = ASCloudKitGroupUserActionExplicit(allObjects);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__ASCompetitionManager__queue_updateLegacyCompetitionsWithScores_forContacts_completion___block_invoke_2;
  v15[3] = &unk_278C4D340;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  [WeakRetained saveRecordsIntoPrivateDatabase:allObjects priority:2 activity:0 group:v13 completion:v15];
}

id __89__ASCompetitionManager__queue_updateLegacyCompetitionsWithScores_forContacts_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v5 = [v3 friendUUID];
  v6 = [WeakRetained contactWithUUID:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) recordForCurrentCompetitionList:v3 contact:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __89__ASCompetitionManager__queue_updateLegacyCompetitionsWithScores_forContacts_completion___block_invoke_2(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ASCompetitionManager__queue_updateLegacyCompetitionsWithScores_forContacts_completion___block_invoke_3;
  block[3] = &unk_278C4D250;
  v19 = a2;
  v15 = v7;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

uint64_t __89__ASCompetitionManager__queue_updateLegacyCompetitionsWithScores_forContacts_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 64) == 1 && !*(a1 + 32))
  {
    [*(a1 + 40) _queue_handleSavedCompetitionListRecords:*(a1 + 48)];
  }

  v2 = *(*(a1 + 56) + 16);

  return v2();
}

- (void)_queue_updateSecureCloudCompetitionsWithScores:(id)scores forContacts:(id)contacts completion:(id)completion
{
  scoresCopy = scores;
  contactsCopy = contacts;
  completionCopy = completion;
  if (ASSecureCloudEnabled())
  {
    v11 = [(ASCompetitionManager *)self _competitionListsFromContacts:contactsCopy withUpdatedScore:scoresCopy cloudType:1];
    WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);
    v13 = ASCloudKitGroupUserActionExplicit(WeakRetained);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __94__ASCompetitionManager__queue_updateSecureCloudCompetitionsWithScores_forContacts_completion___block_invoke;
    v14[3] = &unk_278C4D340;
    v14[4] = self;
    v15 = completionCopy;
    [WeakRetained competitionManager:self saveCompetitionLists:v11 group:v13 completion:v14];
  }
}

void __94__ASCompetitionManager__queue_updateSecureCloudCompetitionsWithScores_forContacts_completion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__ASCompetitionManager__queue_updateSecureCloudCompetitionsWithScores_forContacts_completion___block_invoke_2;
  block[3] = &unk_278C4D250;
  v19 = a2;
  v15 = v7;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

uint64_t __94__ASCompetitionManager__queue_updateSecureCloudCompetitionsWithScores_forContacts_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1 && !*(a1 + 32))
  {
    [*(a1 + 40) _queue_handleSavedCompetitionListRecords:*(a1 + 48)];
  }

  v2 = *(*(a1 + 56) + 16);

  return v2();
}

- (id)_competitionListsFromContacts:(id)contacts withUpdatedScore:(id)score cloudType:(unint64_t)type
{
  scoreCopy = score;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__ASCompetitionManager__competitionListsFromContacts_withUpdatedScore_cloudType___block_invoke;
  v12[3] = &unk_278C4D640;
  v13 = scoreCopy;
  typeCopy = type;
  v12[4] = self;
  v9 = scoreCopy;
  v10 = [contacts hk_map:v12];

  return v10;
}

id __81__ASCompetitionManager__competitionListsFromContacts_withUpdatedScore_cloudType___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 cloudType] == a1[6])
  {
    v4 = *(a1[4] + 80);
    v5 = [v3 UUID];
    v6 = [v4 currentCompetitionListForFriendWithUUID:v5];

    v7 = [v6 currentCompetition];
    v8 = v7;
    if (v7)
    {
      [v7 setScores:a1[5]];
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)rollCompetitionWithFriendWithUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  transactionQueue = self->_transactionQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke;
  v11[3] = &unk_278C4D780;
  v12 = dCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = dCopy;
  v10 = completionCopy;
  [(ASAsyncTransactionQueue *)transactionQueue performTransaction:v11];
}

void __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASCloudKitGroupUserActionExplicit(v3);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_2;
  v8[3] = &unk_278C4D758;
  v8[4] = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = v3;
  v9 = *(a1 + 40);
  v10 = v4;
  v6 = v4;
  v7 = v3;
  [WeakRetained fetchAllChangesWithPriority:2 activity:0 group:v6 completion:v8];
}

void __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_3;
  block[3] = &unk_278C4D730;
  v17 = a2;
  v13 = v5;
  v7 = *(a1 + 56);
  v16 = *(a1 + 64);
  v11 = *(a1 + 32);
  v8 = *(&v11 + 1);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v7;
  v14 = v11;
  v15 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

void __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_3(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 80) == 1 && !*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
    v3 = [WeakRetained contactWithUUID:*(a1 + 48)];

    v4 = [v3 primaryRelationship];
    v5 = [v4 isCompetitionActive];

    if (v5)
    {
      v6 = [*(a1 + 40) _queue_rollCompetitionListForwardForContact:v3];
      v7 = *(a1 + 40);
      v8 = objc_loadWeakRetained(v7 + 2);
      v9 = [v8 currentActivitySummary];
      v10 = objc_loadWeakRetained((*(a1 + 40) + 16));
      v11 = [v10 yesterdayActivitySummary];
      [v7 _queue_updateScoresWithTodaySummary:v9 yesterdaySummary:v11 activity:0 cloudKitGroup:*(a1 + 56)];

      if ([v3 cloudType])
      {
        if (ASSecureCloudEnabled() && [v3 cloudType] == 1)
        {
          v12 = objc_loadWeakRetained((*(a1 + 40) + 184));
          v13 = *(a1 + 40);
          v14 = ASCloudKitGroupUserActionExplicit(v12);
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_3_372;
          v23[3] = &unk_278C4D708;
          v23[4] = *(a1 + 40);
          v24 = *(a1 + 56);
          v25 = *(a1 + 64);
          v26 = *(a1 + 72);
          [v12 competitionManager:v13 saveCurrentCompetitionList:v6 archivedCompetitionList:0 contact:v3 group:v14 completion:v23];
        }

        else
        {
          ASLoggingInitialize();
          if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
          {
            __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_3_cold_3();
          }

          v17 = *(a1 + 64);
          v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:9 userInfo:0];
          (*(v17 + 16))(v17, 0, v18);

          (*(*(a1 + 72) + 16))();
        }
      }

      else
      {
        v19 = [*(a1 + 40) recordForCurrentCompetitionList:v6 contact:v3];
        v20 = objc_loadWeakRetained((*(a1 + 40) + 24));
        v30[0] = v19;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_370;
        v27[3] = &unk_278C4D690;
        v27[4] = *(a1 + 40);
        v22 = *(a1 + 56);
        v28 = *(a1 + 64);
        v29 = *(a1 + 72);
        [v20 saveRecordsIntoPrivateDatabase:v21 priority:2 activity:0 group:v22 completion:v27];
      }
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
      {
        __73__ASCompetitionManager_completeCompetitionWithFriendWithUUID_completion___block_invoke_cold_1();
      }

      v15 = *(a1 + 64);
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:4 userInfo:0];
      (*(v15 + 16))(v15, 0, v16);

      (*(*(a1 + 72) + 16))();
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_ERROR))
    {
      __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_3_cold_1();
    }

    (*(*(a1 + 64) + 16))();
    (*(*(a1 + 72) + 16))();
  }
}

void __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_370(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 96);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_2_371;
  v14[3] = &unk_278C4D668;
  v20 = a2;
  v15 = v7;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v19 = *(a1 + 48);
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, v14);
}

uint64_t __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_2_371(uint64_t a1)
{
  if (*(a1 + 72) == 1 && !*(a1 + 32))
  {
    [*(a1 + 40) _queue_handleSavedCompetitionListRecords:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
  v2 = *(*(a1 + 64) + 16);

  return v2();
}

void __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_3_372(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_4;
  block[3] = &unk_278C4D6E0;
  v21 = a2;
  v15 = v7;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

void __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v11 = v1;
    v12 = v2;
    if (!*(a1 + 32))
    {
      [*(a1 + 40) _queue_handleSavedCompetitionListRecords:*(a1 + 48)];
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_5;
      v6[3] = &unk_278C4D6B8;
      v5 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = *(a1 + 80);
      v7 = *(a1 + 32);
      v9 = *(a1 + 72);
      [WeakRetained requestImmediateUpdateWithCloudKitGroup:v5 completion:v6];
    }
  }
}

void __69__ASCompetitionManager_rollCompetitionWithFriendWithUUID_completion___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE8FD8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Roll competition immediate update (success %{BOOL}d, error: %@)", v7, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
}

- (id)_queue_rollCompetitionListForwardForContact:(id)contact
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEA80];
  contactCopy = contact;
  hk_gregorianCalendar = [v4 hk_gregorianCalendar];
  competitionStore = self->_competitionStore;
  uUID = [contactCopy UUID];

  v9 = [(ASCompetitionStore *)competitionStore currentCompetitionListForFriendWithUUID:uUID];

  currentCompetition = [v9 currentCompetition];
  if (currentCompetition)
  {
    ASLoggingInitialize();
    v11 = MEMORY[0x277CE8FD8];
    v12 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = currentCompetition;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "CompetitionManager found competition to roll: %@ ", buf, 0xCu);
    }

    startDate = [currentCompetition startDate];
    v14 = [hk_gregorianCalendar dateByAddingUnit:16 value:-1 toDate:startDate options:0];

    v15 = [hk_gregorianCalendar components:*MEMORY[0x277CCE1D0] fromDate:v14];
    [currentCompetition setStartDateComponents:v15];

    [currentCompetition setCurrentCacheIndex:{-[ASCompetitionManager _queue_rollIndexBackwards:calendar:](self, "_queue_rollIndexBackwards:calendar:", objc_msgSend(currentCompetition, "currentCacheIndex"), hk_gregorianCalendar)}];
    [currentCompetition setLastPushedCacheIndex:{-[ASCompetitionManager _queue_rollIndexBackwards:calendar:](self, "_queue_rollIndexBackwards:calendar:", objc_msgSend(currentCompetition, "lastPushedCacheIndex"), hk_gregorianCalendar)}];
    ASLoggingInitialize();
    v16 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = currentCompetition;
      _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "CompetitionManager rolled competition forward: %@", buf, 0xCu);
    }

    v20 = currentCompetition;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [v9 setCompetitions:v17];

    v18 = v9;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (int64_t)_queue_rollIndexBackwards:(int64_t)backwards calendar:(id)calendar
{
  if (!backwards)
  {
    return 0;
  }

  calendarCopy = calendar;
  v5 = _HKActivityCacheDateComponentsFromCacheIndex();
  v6 = [calendarCopy dateFromComponents:v5];
  v7 = [calendarCopy dateByAddingUnit:16 value:-1 toDate:v6 options:0];
  v8 = _HKCacheIndexFromDate();

  return v8;
}

- (ASCompetitionManagerSecureCloudDelegate)secureCloudDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);

  return WeakRetained;
}

void __74__ASCompetitionManager_sendCompetitionRequestToFriendWithUUID_completion___block_invoke_2_312_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __78__ASCompetitionManager_ignoreCompetitionRequestFromFriendWithUUID_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __117__ASCompetitionManager_cloudKitManager_didEndUpdatesForFetchWithType_activity_cloudKitGroup_changesProcessedHandler___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23E5E3000, log, OS_LOG_TYPE_ERROR, "No paired watch supports competitions, showing upgrade notification", buf, 2u);
}

void __102__ASCompetitionManager__queue_completeCompetitionIfNecessaryForFriendWithUUID_activity_cloudKitGroup___block_invoke_349_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end