@interface BDSService
- (BCCloudAssetManager)assetManager;
- (BCCloudCollectionsManager)cloudCollectionsManager;
- (BDSCloudSyncDiagnosticService)cloudSyncDiagnosticService;
- (BDSService)initWithClientConnectionService:(id)service;
- (_TtC14bookdatastored25CloudSecureManagerService)secureManager;
- (id)_newWidgetMOC;
- (id)_stateForLog;
- (id)makeOSStateHandler;
- (id)updateReadingNowWithCompletion:(id)completion;
- (id)updateWantToReadAndReadingNowWithJaliscoUpdateSuccessful:(BOOL)successful completion:(id)completion;
- (id)updateWantToReadWithCompletion:(id)completion;
- (void)_BCCloudCollectionMemberManagerChanged:(id)changed;
- (void)_BCCloudReadingNowDetailManagerChanged:(id)changed;
- (void)_setupWidget;
- (void)_setupWidgetDataUpdater:(id)updater;
- (void)_updateEnableSync;
- (void)addStoreItem:(id)item completion:(id)completion;
- (void)addStoreItems:(id)items completion:(id)completion;
- (void)assetDetailForAssetID:(id)d completion:(id)completion;
- (void)assetDetailsForAssetIDs:(id)ds completion:(id)completion;
- (void)assetReviewForAssetReviewID:(id)d completion:(id)completion;
- (void)assetReviewsForAssetReviewIDs:(id)ds completion:(id)completion;
- (void)audiobookStoreEnabledWithCompletion:(id)completion;
- (void)bookWidgetReadingHistoryStateInfoWithCompletion:(id)completion;
- (void)clearSyncMetadata:(id)metadata;
- (void)cloudSyncDiagnosticDetachWithCompletionHandler:(id)handler;
- (void)cloudSyncDiagnosticFindLocalIdDupesWithCompletionHandler:(id)handler;
- (void)cloudSyncDiagnosticInfoWithCompletionHandler:(id)handler;
- (void)collectionDetailForCollectionID:(id)d completion:(id)completion;
- (void)collectionDetailsForCollectionIDs:(id)ds completion:(id)completion;
- (void)collectionMemberForCollectionMemberID:(id)d completion:(id)completion;
- (void)currentAssetDetailCloudSyncVersions:(id)versions;
- (void)currentCloudSyncVersions:(id)versions;
- (void)currentCollectionDetailCloudSyncVersions:(id)versions;
- (void)currentCollectionMemberCloudSyncVersions:(id)versions;
- (void)currentReadingNowDetailCloudSyncVersions:(id)versions;
- (void)dealloc;
- (void)deleteAssetDetailForAssetID:(id)d completion:(id)completion;
- (void)deleteAssetReviewForAssetReviewID:(id)d completion:(id)completion;
- (void)deleteAssetReviewForAssetReviewIDs:(id)ds completion:(id)completion;
- (void)deleteCollectionDetailForCollectionID:(id)d completion:(id)completion;
- (void)deleteCollectionDetailForCollectionIDs:(id)ds completion:(id)completion;
- (void)deleteCollectionMemberForCollectionMemberID:(id)d completion:(id)completion;
- (void)deleteCollectionMemberForCollectionMemberIDs:(id)ds completion:(id)completion;
- (void)deleteEngagementDataForKey:(id)key completion:(id)completion;
- (void)deleteItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)deleteReadingNowDetailForAssetID:(id)d completion:(id)completion;
- (void)deleteStoreItemWithStoreID:(id)d completion:(id)completion;
- (void)deleteStoreItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)deleteUserDatumForKey:(id)key completion:(id)completion;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)engagementDataForKey:(id)key completion:(id)completion;
- (void)engagementDataIncludingDeleted:(BOOL)deleted forKey:(id)key completion:(id)completion;
- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)completion;
- (void)fetchAssetDetailsForUnsyncedTastes:(id)tastes;
- (void)fetchAssetDetailsIncludingDeleted:(BOOL)deleted completion:(id)completion;
- (void)fetchAssetReviewsForUserID:(id)d includingDeleted:(BOOL)deleted completion:(id)completion;
- (void)fetchCollectionDetailsIncludingDeleted:(BOOL)deleted completion:(id)completion;
- (void)fetchCollectionMembersInCollectionID:(id)d completion:(id)completion;
- (void)fetchCollectionMembersIncludingDeleted:(BOOL)deleted completion:(id)completion;
- (void)fetchEngagementDatasIncludingDeleted:(BOOL)deleted completion:(id)completion;
- (void)fetchFinishedAssetCountByYearWithCompletion:(id)completion;
- (void)fetchFinishedDatesByAssetIDForYear:(int64_t)year completion:(id)completion;
- (void)fetchMaxSortOrderInCollectionID:(id)d completion:(id)completion;
- (void)fetchMostRecentAudiobookWithCompletion:(id)completion;
- (void)fetchStoreItemsIncludingDeleted:(BOOL)deleted completion:(id)completion;
- (void)fetchUserDataIncludingDeleted:(BOOL)deleted completion:(id)completion;
- (void)forceFetchRemoteChanges:(id)changes;
- (void)getAssetDetailChangesSince:(id)since completion:(id)completion;
- (void)getAssetReviewChangesSince:(id)since completion:(id)completion;
- (void)getBookWidgetDataWithLimit:(int64_t)limit completion:(id)completion;
- (void)getBookWidgetInfoWithLimit:(int64_t)limit completion:(id)completion;
- (void)getCollectionDetailChangesSince:(id)since completion:(id)completion;
- (void)getCollectionMemberChangesSince:(id)since completion:(id)completion;
- (void)getEngagementDataChangesSince:(id)since completion:(id)completion;
- (void)getReadingNowDetailChangesSince:(id)since completion:(id)completion;
- (void)getStoreItemChangesSince:(id)since completion:(id)completion;
- (void)getUserDataChangesSince:(id)since completion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)handler;
- (void)monitorServiceNotificationsWithChangeToken:(id)token completion:(id)completion;
- (void)needsReadingNowAssetTypePopulation:(id)population;
- (void)priceTrackingCtlAddTrackedItems:(id)items completion:(id)completion;
- (void)priceTrackingCtlGetStateWithCompletion:(id)completion;
- (void)priceTrackingCtlOverrideReferencePrices:(id)prices completion:(id)completion;
- (void)priceTrackingCtlRefreshTrackedPricesIgnoringSchedule:(BOOL)schedule completion:(id)completion;
- (void)priceTrackingSetConfiguration:(id)configuration completion:(id)completion;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info;
- (void)readingGoalsChangeBooksFinishedGoalTo:(int64_t)to withCompletion:(id)completion;
- (void)readingGoalsChangeDailyGoalTo:(double)to withCompletion:(id)completion;
- (void)readingGoalsClearDataWithCompletion:(id)completion;
- (void)readingGoalsClearLocalCachedDataWithCompletion:(id)completion;
- (void)readingGoalsStateInfoWithCompletion:(id)completion;
- (void)readingHistoryBackupWithName:(id)name completion:(id)completion;
- (void)readingHistoryClearDataWithCompletion:(id)completion;
- (void)readingHistoryClearDate:(id)date withCompletion:(id)completion;
- (void)readingHistoryClearDefaultsCachedDataWithCompletion:(id)completion;
- (void)readingHistoryClearTodayWithCompletion:(id)completion;
- (void)readingHistoryHandleSyncFileChangeWithSyncVersionInfo:(id)info updateInfo:(id)updateInfo completion:(id)completion;
- (void)readingHistoryIncrementWithDate:(id)date by:(int64_t)by withCompletion:(id)completion;
- (void)readingHistoryListBackupWithCompletion:(id)completion;
- (void)readingHistoryReadingHistoryStateInfoWithRangeStart:(id)start rangeEnd:(id)end currentTime:(id)time withCompletion:(id)completion;
- (void)readingHistoryRestoreWithName:(id)name completion:(id)completion;
- (void)readingHistoryServiceStatusInfoWithCompletion:(id)completion;
- (void)readingNowDetailsForAssetIDs:(id)ds completion:(id)completion;
- (void)resetPurchasedTokenForStoreIDs:(id)ds completion:(id)completion;
- (void)resetStaleJaliscoDatabaseWithCompletion:(id)completion;
- (void)resolvedAssetDetailForAssetID:(id)d completion:(id)completion;
- (void)resolvedUserDataValueForKey:(id)key completion:(id)completion;
- (void)setAssetDetail:(id)detail completion:(id)completion;
- (void)setAssetDetails:(id)details completion:(id)completion;
- (void)setAssetReview:(id)review completion:(id)completion;
- (void)setAssetReviews:(id)reviews completion:(id)completion;
- (void)setBookWidgetInfo:(id)info completion:(id)completion;
- (void)setCloudSyncPaused:(BOOL)paused;
- (void)setCollectionDetail:(id)detail completion:(id)completion;
- (void)setCollectionDetails:(id)details completion:(id)completion;
- (void)setCollectionMember:(id)member completion:(id)completion;
- (void)setCollectionMembers:(id)members completion:(id)completion;
- (void)setEnableCloudSync:(BOOL)sync enableReadingNowSync:(BOOL)nowSync;
- (void)setEnableCollectionSync:(BOOL)sync;
- (void)setEnableSecureCloudSync:(BOOL)sync;
- (void)setEngagementData:(id)data completion:(id)completion;
- (void)setEngagementDatas:(id)datas completion:(id)completion;
- (void)setItemHidden:(BOOL)hidden forStoreID:(id)d completion:(id)completion;
- (void)setReadingNowDetails:(id)details completion:(id)completion;
- (void)setUserData:(id)data completion:(id)completion;
- (void)setUserDataValue:(id)value forKey:(id)key completion:(id)completion;
- (void)setUserDatum:(id)datum completion:(id)completion;
- (void)signalFetchChangesTransaction:(id)transaction;
- (void)storeItemForStoreID:(id)d completion:(id)completion;
- (void)updateBitrateForItemWithAdamID:(id)d completion:(id)completion;
- (void)updateFamilyPolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion;
- (void)updateFamilyPolitely:(BOOL)politely reason:(int64_t)reason completionWithError:(id)error;
- (void)updatePolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion;
- (void)updatePolitely:(BOOL)politely reason:(int64_t)reason completionWithError:(id)error;
- (void)updatePolitelyAfterSignIn:(BOOL)in reason:(int64_t)reason completion:(id)completion;
- (void)updatePolitelyAfterSignOut:(BOOL)out reason:(int64_t)reason completion:(id)completion;
- (void)userDataValueForKey:(id)key completion:(id)completion;
- (void)userDatumForKey:(id)key completion:(id)completion;
- (void)userDatumIncludingDeleted:(BOOL)deleted forKey:(id)key completion:(id)completion;
@end

@implementation BDSService

- (_TtC14bookdatastored25CloudSecureManagerService)secureManager
{
  WeakRetained = objc_loadWeakRetained(&self->_secureManager);

  return WeakRetained;
}

- (BDSService)initWithClientConnectionService:(id)service
{
  serviceCopy = service;
  v46.receiver = self;
  v46.super_class = BDSService;
  v6 = [(BDSService *)&v46 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientConnectionService, service);
    v7->_authenticatorsLock._os_unfair_lock_opaque = 0;
    v8 = +[BUAccountsProvider sharedProvider];
    [v8 observeTCCAccessChangeNotificationIfNeeded];

    v9 = +[BCCloudKitController sharedInstance];
    v10 = +[BCCloudKitController secureSharedInstance];
    v11 = +[BCCloudAssetManager sharedService];
    objc_storeWeak(&v7->_assetManager, v11);

    v12 = +[BCCloudCollectionsManager sharedService];
    objc_storeWeak(&v7->_cloudCollectionsManager, v12);

    v13 = +[_TtC14bookdatastored25CloudSecureManagerService sharedManager];
    objc_storeWeak(&v7->_secureManager, v13);

    v14 = [BDSNBController alloc];
    WeakRetained = objc_loadWeakRetained(&v7->_assetManager);
    assetDataSource = [WeakRetained assetDataSource];
    v17 = [(BDSNBController *)v14 initWithCloudDataSource:assetDataSource];
    nanoBooksController = v7->_nanoBooksController;
    v7->_nanoBooksController = v17;

    v19 = +[BDSJaliscoDAAPServiceImpl sharedClient];
    jaliscoDAAPService = v7->_jaliscoDAAPService;
    v7->_jaliscoDAAPService = v19;

    jaliscoDAAPService = [(BDSService *)v7 jaliscoDAAPService];

    if (!jaliscoDAAPService)
    {
      v23 = sub_1000023E8(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1001BFE9C();
      }
    }

    [(BDSService *)v7 _setupWidget];
    v24 = objc_alloc_init(BDSOSTransactionProvider);
    if (!v7->_widgetDataUpdater)
    {
      _newWidgetMOC = [(BDSService *)v7 _newWidgetMOC];
      [(BDSService *)v7 _setupWidgetDataUpdater:_newWidgetMOC];
    }

    v26 = [[BDSBookWidgetReadingHistoryManager alloc] initWithBookWidgetDataUpdater:v7->_widgetDataUpdater transactionProvider:v24];
    v27 = objc_alloc_init(BDSNotificationForwarder);
    notificationForwarder = v7->_notificationForwarder;
    v7->_notificationForwarder = v27;

    v29 = objc_alloc_init(BDSReadingGoalsService);
    readingGoalsService = v7->_readingGoalsService;
    v7->_readingGoalsService = v29;

    v31 = [[BDSReadingHistoryServiceManager alloc] initWithReadingGoalsService:v7->_readingGoalsService transactionProvider:v24 viewStateChangeHandler:v26];
    objc_storeStrong(&v7->_readingHistoryCommandLineService, v31);
    readingHistoryService = v7->_readingHistoryService;
    v7->_readingHistoryService = v31;

    v33 = +[BDSAppGroupContainer documentsURL];
    v34 = [v33 URLByAppendingPathComponent:@"BDSService-PriceTracking" isDirectory:1];

    v35 = [v34 URLByAppendingPathComponent:@"data.json" isDirectory:0];
    v36 = [[BDSPriceTracker alloc] initWithPersistenceURL:v35];
    priceTracker = v7->_priceTracker;
    v7->_priceTracker = v36;

    +[BDSXPCEventRelay start];
    v38 = +[NSNotificationCenter defaultCenter];
    [v38 addObserver:v7 selector:"tccAccessChanged:" name:@"BDSTCCAccessChangedNotification" object:0];

    v39 = +[NSDistributedNotificationCenter defaultCenter];
    [v39 addObserver:v7 selector:"enableSyncChanged:" name:@"BKUbiquitousFinishedOptInFlow" object:0];

    [(BDSService *)v7 _updateEnableSync];
    v40 = +[MCProfileConnection sharedConnection];
    [v40 addObserver:v7];

    v41 = +[NSDistributedNotificationCenter defaultCenter];
    [v41 addObserver:v7 selector:"_BCCloudReadingNowDetailManagerChanged:" name:@"BCCloudReadingNowDetailManagerChanged" object:0];

    v42 = +[NSDistributedNotificationCenter defaultCenter];
    [v42 addObserver:v7 selector:"_BCCloudCollectionMemberManagerChanged:" name:@"BCCloudCollectionMemberManagerChanged" object:0];

    makeOSStateHandler = [(BDSService *)v7 makeOSStateHandler];
    syncServiceStateHandler = v7->_syncServiceStateHandler;
    v7->_syncServiceStateHandler = makeOSStateHandler;
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[MCProfileConnection sharedConnection];
  [v3 removeObserver:self];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"BCCloudReadingNowDetailManagerChanged" object:0];

  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"BCCloudCollectionMemberManagerChanged" object:0];

  v6.receiver = self;
  v6.super_class = BDSService;
  [(BDSService *)&v6 dealloc];
}

- (void)_BCCloudReadingNowDetailManagerChanged:(id)changed
{
  v3 = sub_10000DC90(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BCCloudReadingNowManagerChanged notification received", v7, 2u);
  }

  sharedManager = [sub_100077BF0() sharedManager];
  if ([sharedManager isReadingNowEnabled])
  {
    v5 = +[BDSNBPinningManager sharedManager];
    v6 = [v5 updateReadingNowWithCompletion:&stru_100240C68];
  }
}

- (void)_BCCloudCollectionMemberManagerChanged:(id)changed
{
  v3 = sub_10000DC90(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BCCloudCollectionMemberManagerChanged notification received", v7, 2u);
  }

  sharedManager = [sub_100077BF0() sharedManager];
  if ([sharedManager isWantToReadEnabled])
  {
    v5 = +[BDSNBPinningManager sharedManager];
    v6 = [v5 updateWantToReadWithCompletion:&stru_100240C88];
  }
}

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info
{
  v4 = sub_10000DC90(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "profileConnectionDidReceiveRestrictionChangedNotification received", v7, 2u);
  }

  v5 = +[BDSNBPinningManager sharedManager];
  v6 = [v5 updateWantToReadAndReadingNowWithJaliscoUpdateSuccessful:1 completion:&stru_100240CA8];
}

- (void)_updateEnableSync
{
  v3 = +[BDSSyncUserDefaults isSignedIntoICloud];
  v4 = +[BDSSyncUserDefaults isGlobalICloudDriveSyncOptedIn];
  v5 = +[BDSSyncUserDefaults isCloudKitSyncOptedIn];
  paused = [(BDSService *)self paused];
  v7 = (paused ^ 1) & v3 & v5;
  v8 = sub_100002660(paused);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if ([(BDSService *)self paused])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (v3)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    *v29 = 138544386;
    *&v29[4] = v9;
    if (v4)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *&v29[12] = 2114;
    *&v29[14] = v10;
    if (v5)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    *&v29[22] = 2114;
    if (v7)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v30 = v11;
    v31 = 2114;
    v32 = v12;
    v33 = 2114;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "BDSService Paused=%{public}@ SignedIn=%{public}@ GlobalICloudDrive=%{public}@ CloudKit=%{public}@  isCloudKitEnabled=%{public}@", v29, 0x34u);
  }

  objc_opt_class();
  v14 = [BDSUserPreferencesSync objectFromGroupPreferencesForKey:@"BKLibrary.ReadingNow"];
  v15 = BUDynamicCast();

  if (v15)
  {
    bOOLValue = [v15 BOOLValue];
    if (v7)
    {
LABEL_20:
      v17 = [BUAccountsProvider sharedProvider:*v29];
      v18 = [v17 isPrimaryAccountManagedAppleID] | bOOLValue;

      goto LABEL_23;
    }
  }

  else
  {
    bOOLValue = 1;
    if (v7)
    {
      goto LABEL_20;
    }
  }

  v18 = 0;
LABEL_23:
  v19 = [(BDSService *)self assetManager:*v29];
  [v19 setEnableCloudSync:v7 enableReadingNowSync:v18 & 1];

  v21 = sub_100002660(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    if (v7)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    if (v18)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    *v29 = 138543618;
    *&v29[4] = v22;
    *&v29[12] = 2114;
    *&v29[14] = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "BDSService enabling assetSync: %{public}@ readingNow Sync: %{public}@", v29, 0x16u);
  }

  v24 = +[BDSSyncUserDefaults isICloudDriveSyncOptedIn];
  ubiquityManager = [(BDSService *)self ubiquityManager];
  [ubiquityManager setEnableUbiquityObserving:v24 & v4];

  readingHistoryService = [(BDSService *)self readingHistoryService];
  [readingHistoryService setEnableCloudSync:v7];

  v27 = +[BCCloudKitController sharedInstance];
  [v27 setEnableCloudSync:v7 serviceMode:1];

  v28 = +[BCCloudKitController secureSharedInstance];
  [v28 setEnableCloudSync:v7 serviceMode:1];
}

- (void)setEnableCollectionSync:(BOOL)sync
{
  syncCopy = sync;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  [cloudCollectionsManager setEnableCloudSync:syncCopy];
}

- (void)setEnableCloudSync:(BOOL)sync enableReadingNowSync:(BOOL)nowSync
{
  nowSyncCopy = nowSync;
  syncCopy = sync;
  assetManager = [(BDSService *)self assetManager];
  [assetManager setEnableCloudSync:syncCopy enableReadingNowSync:nowSyncCopy];
}

- (void)setEnableSecureCloudSync:(BOOL)sync
{
  syncCopy = sync;
  secureManager = [(BDSService *)self secureManager];
  [secureManager setEnableCloudSync:syncCopy];
}

- (void)setCloudSyncPaused:(BOOL)paused
{
  pausedCopy = paused;
  if ([(BDSService *)self paused]!= paused)
  {
    v5 = sub_100002660([(BDSService *)self setPaused:pausedCopy]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (pausedCopy)
      {
        v6 = @"YES";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "setCloudSyncPaused: %@", &v7, 0xCu);
    }

    [(BDSService *)self _updateEnableSync];
  }
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  assetManager = [(BDSService *)self assetManager];
  [assetManager dissociateCloudDataFromSyncWithCompletion:completionCopy];

  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  [cloudCollectionsManager dissociateCloudDataFromSyncWithCompletion:completionCopy];
}

- (void)signalFetchChangesTransaction:(id)transaction
{
  transactionCopy = transaction;
  v4 = +[BCCloudKitController sharedInstance];
  [v4 attachOrSignalFetchChangesTransaction:transactionCopy reason:@"XPC call"];

  v5 = +[BCCloudKitController secureSharedInstance];
  [v5 attachOrSignalFetchChangesTransaction:transactionCopy reason:@"XPC call"];
}

- (void)assetDetailForAssetID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  assetManager = [(BDSService *)self assetManager];
  assetDetailManager = [assetManager assetDetailManager];
  [assetDetailManager assetDetailForAssetID:dCopy completion:completionCopy];
}

- (void)assetDetailsForAssetIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  assetManager = [(BDSService *)self assetManager];
  assetDetailManager = [assetManager assetDetailManager];
  [assetDetailManager assetDetailsForAssetIDs:dsCopy completion:completionCopy];
}

- (void)resolvedAssetDetailForAssetID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  assetManager = [(BDSService *)self assetManager];
  assetDetailManager = [assetManager assetDetailManager];
  [assetDetailManager resolvedAssetDetailForAssetID:dCopy completion:completionCopy];
}

- (void)currentAssetDetailCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  assetManager = [(BDSService *)self assetManager];
  assetDetailManager = [assetManager assetDetailManager];
  [assetDetailManager currentAssetDetailCloudSyncVersions:versionsCopy];
}

- (void)deleteAssetDetailForAssetID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  assetManager = [(BDSService *)self assetManager];
  assetDetailManager = [assetManager assetDetailManager];
  [assetDetailManager deleteAssetDetailForAssetID:dCopy completion:completionCopy];
}

- (void)fetchAssetDetailsIncludingDeleted:(BOOL)deleted completion:(id)completion
{
  deletedCopy = deleted;
  completionCopy = completion;
  assetManager = [(BDSService *)self assetManager];
  assetDetailManager = [assetManager assetDetailManager];
  [assetDetailManager fetchAssetDetailsIncludingDeleted:deletedCopy completion:completionCopy];
}

- (void)getAssetDetailChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  assetManager = [(BDSService *)self assetManager];
  assetDetailManager = [assetManager assetDetailManager];
  [assetDetailManager getAssetDetailChangesSince:sinceCopy completion:completionCopy];
}

- (void)setAssetDetail:(id)detail completion:(id)completion
{
  completionCopy = completion;
  detailCopy = detail;
  assetManager = [(BDSService *)self assetManager];
  assetDetailManager = [assetManager assetDetailManager];
  [assetDetailManager setAssetDetail:detailCopy completion:completionCopy];
}

- (void)setAssetDetails:(id)details completion:(id)completion
{
  completionCopy = completion;
  detailsCopy = details;
  assetManager = [(BDSService *)self assetManager];
  assetDetailManager = [assetManager assetDetailManager];
  [assetDetailManager setAssetDetails:detailsCopy completion:completionCopy];
}

- (void)fetchAssetDetailsForUnsyncedTastes:(id)tastes
{
  tastesCopy = tastes;
  assetManager = [(BDSService *)self assetManager];
  assetDetailManager = [assetManager assetDetailManager];
  [assetDetailManager fetchAssetDetailsForUnsyncedTastes:tastesCopy];
}

- (void)fetchFinishedDatesByAssetIDForYear:(int64_t)year completion:(id)completion
{
  completionCopy = completion;
  assetManager = [(BDSService *)self assetManager];
  assetDetailManager = [assetManager assetDetailManager];
  [assetDetailManager fetchFinishedDatesByAssetIDForYear:year completion:completionCopy];
}

- (void)fetchFinishedAssetCountByYearWithCompletion:(id)completion
{
  completionCopy = completion;
  assetManager = [(BDSService *)self assetManager];
  assetDetailManager = [assetManager assetDetailManager];
  [assetDetailManager fetchFinishedAssetCountByYearWithCompletion:completionCopy];
}

- (void)readingNowDetailsForAssetIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  assetManager = [(BDSService *)self assetManager];
  readingNowDetailManager = [assetManager readingNowDetailManager];
  [readingNowDetailManager readingNowDetailsForAssetIDs:dsCopy completion:completionCopy];
}

- (void)currentReadingNowDetailCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  assetManager = [(BDSService *)self assetManager];
  readingNowDetailManager = [assetManager readingNowDetailManager];
  [readingNowDetailManager currentReadingNowDetailCloudSyncVersions:versionsCopy];
}

- (void)deleteReadingNowDetailForAssetID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  assetManager = [(BDSService *)self assetManager];
  readingNowDetailManager = [assetManager readingNowDetailManager];
  [readingNowDetailManager deleteReadingNowDetailForAssetID:dCopy completion:completionCopy];
}

- (void)getReadingNowDetailChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  assetManager = [(BDSService *)self assetManager];
  readingNowDetailManager = [assetManager readingNowDetailManager];
  [readingNowDetailManager getReadingNowDetailChangesSince:sinceCopy completion:completionCopy];
}

- (void)setReadingNowDetails:(id)details completion:(id)completion
{
  completionCopy = completion;
  detailsCopy = details;
  assetManager = [(BDSService *)self assetManager];
  readingNowDetailManager = [assetManager readingNowDetailManager];
  [readingNowDetailManager setReadingNowDetails:detailsCopy completion:completionCopy];
}

- (void)needsReadingNowAssetTypePopulation:(id)population
{
  populationCopy = population;
  assetManager = [(BDSService *)self assetManager];
  readingNowDetailManager = [assetManager readingNowDetailManager];
  [readingNowDetailManager needsReadingNowAssetTypePopulation:populationCopy];
}

- (void)assetReviewForAssetReviewID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  assetManager = [(BDSService *)self assetManager];
  assetReviewManager = [assetManager assetReviewManager];
  [assetReviewManager assetReviewForAssetReviewID:dCopy completion:completionCopy];
}

- (void)assetReviewsForAssetReviewIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  assetManager = [(BDSService *)self assetManager];
  assetReviewManager = [assetManager assetReviewManager];
  [assetReviewManager assetReviewsForAssetReviewIDs:dsCopy completion:completionCopy];
}

- (void)deleteAssetReviewForAssetReviewID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  assetManager = [(BDSService *)self assetManager];
  assetReviewManager = [assetManager assetReviewManager];
  [assetReviewManager deleteAssetReviewForAssetReviewID:dCopy completion:completionCopy];
}

- (void)deleteAssetReviewForAssetReviewIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  assetManager = [(BDSService *)self assetManager];
  assetReviewManager = [assetManager assetReviewManager];
  [assetReviewManager deleteAssetReviewForAssetReviewIDs:dsCopy completion:completionCopy];
}

- (void)fetchAssetReviewsForUserID:(id)d includingDeleted:(BOOL)deleted completion:(id)completion
{
  deletedCopy = deleted;
  completionCopy = completion;
  dCopy = d;
  assetManager = [(BDSService *)self assetManager];
  assetReviewManager = [assetManager assetReviewManager];
  [assetReviewManager fetchAssetReviewsForUserID:dCopy includingDeleted:deletedCopy completion:completionCopy];
}

- (void)getAssetReviewChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  assetManager = [(BDSService *)self assetManager];
  assetReviewManager = [assetManager assetReviewManager];
  [assetReviewManager getAssetReviewChangesSince:sinceCopy completion:completionCopy];
}

- (void)setAssetReview:(id)review completion:(id)completion
{
  completionCopy = completion;
  reviewCopy = review;
  assetManager = [(BDSService *)self assetManager];
  assetReviewManager = [assetManager assetReviewManager];
  [assetReviewManager setAssetReview:reviewCopy completion:completionCopy];
}

- (void)setAssetReviews:(id)reviews completion:(id)completion
{
  completionCopy = completion;
  reviewsCopy = reviews;
  assetManager = [(BDSService *)self assetManager];
  assetReviewManager = [assetManager assetReviewManager];
  [assetReviewManager setAssetReviews:reviewsCopy completion:completionCopy];
}

- (void)addStoreItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  assetManager = [(BDSService *)self assetManager];
  storeAssetManager = [assetManager storeAssetManager];
  [storeAssetManager addStoreItem:itemCopy completion:completionCopy];
}

- (void)addStoreItems:(id)items completion:(id)completion
{
  completionCopy = completion;
  itemsCopy = items;
  assetManager = [(BDSService *)self assetManager];
  storeAssetManager = [assetManager storeAssetManager];
  [storeAssetManager addStoreItems:itemsCopy completion:completionCopy];
}

- (void)deleteStoreItemWithStoreID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  assetManager = [(BDSService *)self assetManager];
  storeAssetManager = [assetManager storeAssetManager];
  [storeAssetManager deleteStoreItemWithStoreID:dCopy completion:completionCopy];
}

- (void)deleteStoreItemsWithStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  assetManager = [(BDSService *)self assetManager];
  storeAssetManager = [assetManager storeAssetManager];
  [storeAssetManager deleteStoreItemsWithStoreIDs:dsCopy completion:completionCopy];
}

- (void)fetchStoreItemsIncludingDeleted:(BOOL)deleted completion:(id)completion
{
  deletedCopy = deleted;
  completionCopy = completion;
  assetManager = [(BDSService *)self assetManager];
  storeAssetManager = [assetManager storeAssetManager];
  [storeAssetManager fetchStoreItemsIncludingDeleted:deletedCopy completion:completionCopy];
}

- (void)getStoreItemChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  assetManager = [(BDSService *)self assetManager];
  storeAssetManager = [assetManager storeAssetManager];
  [storeAssetManager getStoreItemChangesSince:sinceCopy completion:completionCopy];
}

- (void)storeItemForStoreID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  assetManager = [(BDSService *)self assetManager];
  storeAssetManager = [assetManager storeAssetManager];
  [storeAssetManager storeItemForStoreID:dCopy completion:completionCopy];
}

- (void)collectionDetailForCollectionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionDetailManager = [cloudCollectionsManager collectionDetailManager];
  [collectionDetailManager collectionDetailForCollectionID:dCopy completion:completionCopy];
}

- (void)collectionDetailsForCollectionIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionDetailManager = [cloudCollectionsManager collectionDetailManager];
  [collectionDetailManager collectionDetailsForCollectionIDs:dsCopy completion:completionCopy];
}

- (void)currentCollectionDetailCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionDetailManager = [cloudCollectionsManager collectionDetailManager];
  [collectionDetailManager currentCollectionDetailCloudSyncVersions:versionsCopy];
}

- (void)deleteCollectionDetailForCollectionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionDetailManager = [cloudCollectionsManager collectionDetailManager];
  [collectionDetailManager deleteCollectionDetailForCollectionID:dCopy completion:completionCopy];
}

- (void)deleteCollectionDetailForCollectionIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionDetailManager = [cloudCollectionsManager collectionDetailManager];
  [collectionDetailManager deleteCollectionDetailForCollectionIDs:dsCopy completion:completionCopy];
}

- (void)fetchCollectionDetailsIncludingDeleted:(BOOL)deleted completion:(id)completion
{
  deletedCopy = deleted;
  completionCopy = completion;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionDetailManager = [cloudCollectionsManager collectionDetailManager];
  [collectionDetailManager fetchCollectionDetailsIncludingDeleted:deletedCopy completion:completionCopy];
}

- (void)getCollectionDetailChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionDetailManager = [cloudCollectionsManager collectionDetailManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100035C34;
  v11[3] = &unk_100240CD0;
  v12 = completionCopy;
  v10 = completionCopy;
  [collectionDetailManager getCollectionDetailChangesSince:sinceCopy completion:v11];
}

- (void)setCollectionDetail:(id)detail completion:(id)completion
{
  completionCopy = completion;
  detailCopy = detail;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionDetailManager = [cloudCollectionsManager collectionDetailManager];
  [collectionDetailManager setCollectionDetail:detailCopy completion:completionCopy];
}

- (void)setCollectionDetails:(id)details completion:(id)completion
{
  completionCopy = completion;
  detailsCopy = details;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionDetailManager = [cloudCollectionsManager collectionDetailManager];
  [collectionDetailManager setCollectionDetails:detailsCopy completion:completionCopy];
}

- (void)collectionMemberForCollectionMemberID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionMemberManager = [cloudCollectionsManager collectionMemberManager];
  [collectionMemberManager collectionMemberForCollectionMemberID:dCopy completion:completionCopy];
}

- (void)currentCollectionMemberCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionMemberManager = [cloudCollectionsManager collectionMemberManager];
  [collectionMemberManager currentCollectionMemberCloudSyncVersions:versionsCopy];
}

- (void)deleteCollectionMemberForCollectionMemberID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionMemberManager = [cloudCollectionsManager collectionMemberManager];
  [collectionMemberManager deleteCollectionMemberForCollectionMemberID:dCopy completion:completionCopy];
}

- (void)deleteCollectionMemberForCollectionMemberIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionMemberManager = [cloudCollectionsManager collectionMemberManager];
  [collectionMemberManager deleteCollectionMemberForCollectionMemberIDs:dsCopy completion:completionCopy];
}

- (void)fetchCollectionMembersIncludingDeleted:(BOOL)deleted completion:(id)completion
{
  deletedCopy = deleted;
  completionCopy = completion;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionMemberManager = [cloudCollectionsManager collectionMemberManager];
  [collectionMemberManager fetchCollectionMembersIncludingDeleted:deletedCopy completion:completionCopy];
}

- (void)fetchCollectionMembersInCollectionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionMemberManager = [cloudCollectionsManager collectionMemberManager];
  [collectionMemberManager fetchCollectionMembersInCollectionID:dCopy completion:completionCopy];
}

- (void)getCollectionMemberChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionMemberManager = [cloudCollectionsManager collectionMemberManager];
  [collectionMemberManager getCollectionMemberChangesSince:sinceCopy completion:completionCopy];
}

- (void)setCollectionMember:(id)member completion:(id)completion
{
  completionCopy = completion;
  memberCopy = member;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionMemberManager = [cloudCollectionsManager collectionMemberManager];
  [collectionMemberManager setCollectionMember:memberCopy completion:completionCopy];
}

- (void)setCollectionMembers:(id)members completion:(id)completion
{
  completionCopy = completion;
  membersCopy = members;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionMemberManager = [cloudCollectionsManager collectionMemberManager];
  [collectionMemberManager setCollectionMembers:membersCopy completion:completionCopy];
}

- (void)fetchMaxSortOrderInCollectionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
  collectionMemberManager = [cloudCollectionsManager collectionMemberManager];
  [collectionMemberManager fetchMaxSortOrderInCollectionID:dCopy completion:completionCopy];
}

- (void)fetchMostRecentAudiobookWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[BDSNBPinningManager sharedManager];
  [v4 fetchMostRecentAudiobookWithCompletion:completionCopy];
}

- (id)updateWantToReadAndReadingNowWithJaliscoUpdateSuccessful:(BOOL)successful completion:(id)completion
{
  successfulCopy = successful;
  completionCopy = completion;
  v6 = +[BDSNBPinningManager sharedManager];
  v7 = [v6 updateWantToReadAndReadingNowWithJaliscoUpdateSuccessful:successfulCopy completion:completionCopy];

  return v7;
}

- (id)updateWantToReadWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[BDSNBPinningManager sharedManager];
  v5 = [v4 updateWantToReadWithCompletion:completionCopy];

  return v5;
}

- (id)updateReadingNowWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[BDSNBPinningManager sharedManager];
  v5 = [v4 updateReadingNowWithCompletion:completionCopy];

  return v5;
}

- (void)updateBitrateForItemWithAdamID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = [[BDSOSTransaction alloc] initWithTransactionName:"updateBitrateForItemWithAdamID"];
  v8 = +[BDSNBPinningManager sharedManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003657C;
  v11[3] = &unk_10023F6F8;
  v12 = v7;
  v9 = v7;
  [v8 updateBitrateForItemWithAdamID:dCopy completion:v11];

  v10 = objc_retainBlock(completionCopy);
  if (v10)
  {
    v10[2](v10, 0);
  }
}

- (void)audiobookStoreEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[BDSNBPinningManager sharedManager];
  [v4 audiobookStoreEnabledWithCompletion:completionCopy];
}

- (void)currentCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
  secureManager = [(BDSService *)self secureManager];
  userDataManager = [secureManager userDataManager];
  [userDataManager currentCloudSyncVersions:versionsCopy];
}

- (void)setUserDatum:(id)datum completion:(id)completion
{
  completionCopy = completion;
  datumCopy = datum;
  secureManager = [(BDSService *)self secureManager];
  userDataManager = [secureManager userDataManager];
  [userDataManager setUserDatum:datumCopy completion:completionCopy];
}

- (void)setUserData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  secureManager = [(BDSService *)self secureManager];
  userDataManager = [secureManager userDataManager];
  [userDataManager setUserData:dataCopy completion:completionCopy];
}

- (void)deleteUserDatumForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  secureManager = [(BDSService *)self secureManager];
  userDataManager = [secureManager userDataManager];
  [userDataManager deleteUserDatumForKey:keyCopy completion:completionCopy];
}

- (void)userDatumForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  secureManager = [(BDSService *)self secureManager];
  userDataManager = [secureManager userDataManager];
  [userDataManager userDatumForKey:keyCopy completion:completionCopy];
}

- (void)userDatumIncludingDeleted:(BOOL)deleted forKey:(id)key completion:(id)completion
{
  deletedCopy = deleted;
  completionCopy = completion;
  keyCopy = key;
  secureManager = [(BDSService *)self secureManager];
  userDataManager = [secureManager userDataManager];
  [userDataManager userDatumIncludingDeleted:deletedCopy forKey:keyCopy completion:completionCopy];
}

- (void)fetchUserDataIncludingDeleted:(BOOL)deleted completion:(id)completion
{
  deletedCopy = deleted;
  completionCopy = completion;
  secureManager = [(BDSService *)self secureManager];
  userDataManager = [secureManager userDataManager];
  [userDataManager fetchUserDataIncludingDeleted:deletedCopy completion:completionCopy];
}

- (void)getUserDataChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  secureManager = [(BDSService *)self secureManager];
  userDataManager = [secureManager userDataManager];
  [userDataManager getUserDataChangesSince:sinceCopy completion:completionCopy];
}

- (void)resolvedUserDataValueForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  secureManager = [(BDSService *)self secureManager];
  userDataManager = [secureManager userDataManager];
  [userDataManager resolvedUserDataValueForKey:keyCopy completion:completionCopy];
}

- (void)userDataValueForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  secureManager = [(BDSService *)self secureManager];
  userDataManager = [secureManager userDataManager];
  [userDataManager userDataValueForKey:keyCopy completion:completionCopy];
}

- (void)setUserDataValue:(id)value forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  valueCopy = value;
  secureManager = [(BDSService *)self secureManager];
  userDataManager = [secureManager userDataManager];
  [userDataManager setUserDataValue:valueCopy forKey:keyCopy completion:completionCopy];
}

- (void)deleteEngagementDataForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  secureManager = [(BDSService *)self secureManager];
  engagementManager = [secureManager engagementManager];
  [engagementManager deleteEngagementDataForKey:keyCopy completion:completionCopy];
}

- (void)engagementDataForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  secureManager = [(BDSService *)self secureManager];
  engagementManager = [secureManager engagementManager];
  [engagementManager engagementDataForKey:keyCopy completion:completionCopy];
}

- (void)engagementDataIncludingDeleted:(BOOL)deleted forKey:(id)key completion:(id)completion
{
  deletedCopy = deleted;
  completionCopy = completion;
  keyCopy = key;
  secureManager = [(BDSService *)self secureManager];
  engagementManager = [secureManager engagementManager];
  [engagementManager engagementDataIncludingDeleted:deletedCopy forKey:keyCopy completion:completionCopy];
}

- (void)fetchEngagementDatasIncludingDeleted:(BOOL)deleted completion:(id)completion
{
  deletedCopy = deleted;
  completionCopy = completion;
  secureManager = [(BDSService *)self secureManager];
  engagementManager = [secureManager engagementManager];
  [engagementManager fetchEngagementDatasIncludingDeleted:deletedCopy completion:completionCopy];
}

- (void)getEngagementDataChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  secureManager = [(BDSService *)self secureManager];
  engagementManager = [secureManager engagementManager];
  [engagementManager getEngagementDataChangesSince:sinceCopy completion:completionCopy];
}

- (void)setEngagementDatas:(id)datas completion:(id)completion
{
  completionCopy = completion;
  datasCopy = datas;
  secureManager = [(BDSService *)self secureManager];
  engagementManager = [secureManager engagementManager];
  [engagementManager setEngagementDatas:datasCopy completion:completionCopy];
}

- (void)setEngagementData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  secureManager = [(BDSService *)self secureManager];
  engagementManager = [secureManager engagementManager];
  [engagementManager setEngagementData:dataCopy completion:completionCopy];
}

- (BDSCloudSyncDiagnosticService)cloudSyncDiagnosticService
{
  cloudSyncDiagnosticService = self->_cloudSyncDiagnosticService;
  if (!cloudSyncDiagnosticService)
  {
    v4 = objc_alloc_init(NSMutableArray);
    assetManager = [(BDSService *)self assetManager];
    [v4 addObject:assetManager];

    cloudCollectionsManager = [(BDSService *)self cloudCollectionsManager];
    [v4 addObject:cloudCollectionsManager];

    v7 = [BDSCloudSyncDiagnosticService alloc];
    v8 = +[BCCloudKitController sharedInstance];
    v9 = [(BDSCloudSyncDiagnosticService *)v7 initWithCloudKitController:v8 entityServiceProviders:v4];
    v10 = self->_cloudSyncDiagnosticService;
    self->_cloudSyncDiagnosticService = v9;

    cloudSyncDiagnosticService = self->_cloudSyncDiagnosticService;
  }

  return cloudSyncDiagnosticService;
}

- (void)clearSyncMetadata:(id)metadata
{
  metadataCopy = metadata;
  cloudSyncDiagnosticService = [(BDSService *)self cloudSyncDiagnosticService];
  clearSyncMetadata = [cloudSyncDiagnosticService clearSyncMetadata];

  v6 = objc_retainBlock(metadataCopy);
  if (clearSyncMetadata)
  {
    if (v6)
    {
      v6[2](v6, clearSyncMetadata);
    }
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)forceFetchRemoteChanges:(id)changes
{
  changesCopy = changes;
  cloudSyncDiagnosticService = [(BDSService *)self cloudSyncDiagnosticService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000371E8;
  v7[3] = &unk_100240CF8;
  v8 = changesCopy;
  v6 = changesCopy;
  [cloudSyncDiagnosticService fetchRemoteChangesWithCompletionHandler:v7];
}

- (void)cloudSyncDiagnosticDetachWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudSyncDiagnosticService = [(BDSService *)self cloudSyncDiagnosticService];
  [cloudSyncDiagnosticService detachWithCompletionHandler:handlerCopy];
}

- (void)cloudSyncDiagnosticFindLocalIdDupesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudSyncDiagnosticService = [(BDSService *)self cloudSyncDiagnosticService];
  [cloudSyncDiagnosticService findLocalIdDupesWithCompletionHandler:handlerCopy];
}

- (void)cloudSyncDiagnosticInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudSyncDiagnosticService = [(BDSService *)self cloudSyncDiagnosticService];
  [cloudSyncDiagnosticService diagnosticInfoWithCompletionHandler:handlerCopy];
}

- (void)updatePolitely:(BOOL)politely reason:(int64_t)reason completionWithError:(id)error
{
  politelyCopy = politely;
  errorCopy = error;
  jaliscoDAAPService = [(BDSService *)self jaliscoDAAPService];

  if (jaliscoDAAPService)
  {
    jaliscoDAAPService2 = [(BDSService *)self jaliscoDAAPService];
    [jaliscoDAAPService2 updatePolitely:politelyCopy reason:reason completionWithError:errorCopy];
  }

  else
  {
    v11 = sub_1000023E8(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFED0();
    }

    v12 = objc_retainBlock(errorCopy);
    if (v12)
    {
      v16 = NSLocalizedDescriptionKey;
      v17 = @"BDSService has no jalisco client";
      v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v14 = [NSError errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:v13];
      v12[2](v12, 0, v14);
    }
  }
}

- (void)updatePolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion
{
  politelyCopy = politely;
  completionCopy = completion;
  jaliscoDAAPService = [(BDSService *)self jaliscoDAAPService];

  if (jaliscoDAAPService)
  {
    jaliscoDAAPService2 = [(BDSService *)self jaliscoDAAPService];
    [jaliscoDAAPService2 updatePolitely:politelyCopy reason:reason completion:completionCopy];
  }

  else
  {
    v11 = sub_1000023E8(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFED0();
    }

    v12 = objc_retainBlock(completionCopy);
    if (v12)
    {
      v12[2](v12, 0);
    }
  }
}

- (void)updateFamilyPolitely:(BOOL)politely reason:(int64_t)reason completion:(id)completion
{
  politelyCopy = politely;
  completionCopy = completion;
  jaliscoDAAPService = [(BDSService *)self jaliscoDAAPService];

  if (jaliscoDAAPService)
  {
    jaliscoDAAPService2 = [(BDSService *)self jaliscoDAAPService];
    [jaliscoDAAPService2 updateFamilyPolitely:politelyCopy reason:reason completion:completionCopy];
  }

  else
  {
    v11 = sub_1000023E8(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFF04();
    }

    v12 = objc_retainBlock(completionCopy);
    if (v12)
    {
      v12[2](v12, 0);
    }
  }
}

- (void)updateFamilyPolitely:(BOOL)politely reason:(int64_t)reason completionWithError:(id)error
{
  politelyCopy = politely;
  errorCopy = error;
  jaliscoDAAPService = [(BDSService *)self jaliscoDAAPService];

  if (jaliscoDAAPService)
  {
    jaliscoDAAPService2 = [(BDSService *)self jaliscoDAAPService];
    [jaliscoDAAPService2 updateFamilyPolitely:politelyCopy reason:reason completionWithError:errorCopy];
  }

  else
  {
    v11 = sub_1000023E8(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFF04();
    }

    v12 = objc_retainBlock(errorCopy);
    if (v12)
    {
      v16 = NSLocalizedDescriptionKey;
      v17 = @"BDSService has no jalisco client";
      v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v14 = [NSError errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:v13];
      v12[2](v12, 0, v14);
    }
  }
}

- (void)setItemHidden:(BOOL)hidden forStoreID:(id)d completion:(id)completion
{
  hiddenCopy = hidden;
  dCopy = d;
  completionCopy = completion;
  jaliscoDAAPService = [(BDSService *)self jaliscoDAAPService];

  if (jaliscoDAAPService)
  {
    jaliscoDAAPService2 = [(BDSService *)self jaliscoDAAPService];
    [jaliscoDAAPService2 setItemHidden:hiddenCopy forStoreID:dCopy completion:completionCopy];
  }

  else
  {
    v13 = sub_1000023E8(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFF38();
    }

    v14 = objc_retainBlock(completionCopy);
    if (v14)
    {
      v14[2](v14, 0);
    }
  }
}

- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  jaliscoDAAPService = [(BDSService *)self jaliscoDAAPService];

  if (jaliscoDAAPService)
  {
    jaliscoDAAPService2 = [(BDSService *)self jaliscoDAAPService];
    [jaliscoDAAPService2 hideItemsWithStoreIDs:dsCopy completion:completionCopy];
  }

  else
  {
    v11 = sub_1000023E8(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFF6C();
    }

    jaliscoDAAPService2 = objc_retainBlock(completionCopy);
    if (jaliscoDAAPService2)
    {
      jaliscoDAAPService2[2](jaliscoDAAPService2, 0);
    }
  }
}

- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  jaliscoDAAPService = [(BDSService *)self jaliscoDAAPService];

  if (jaliscoDAAPService)
  {
    jaliscoDAAPService2 = [(BDSService *)self jaliscoDAAPService];
    [jaliscoDAAPService2 fetchAllHiddenItemStoreIDsWithCompletion:completionCopy];
  }

  else
  {
    v7 = sub_1000023E8(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFFA0();
    }

    v8 = objc_retainBlock(completionCopy);
    if (v8)
    {
      v12 = NSLocalizedDescriptionKey;
      v13 = @"BDSService has no jalisco client";
      v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v10 = [NSError errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:v9];
      v8[2](v8, 0, v10);
    }
  }
}

- (void)resetPurchasedTokenForStoreIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  jaliscoDAAPService = [(BDSService *)self jaliscoDAAPService];

  if (jaliscoDAAPService)
  {
    jaliscoDAAPService2 = [(BDSService *)self jaliscoDAAPService];
    [jaliscoDAAPService2 resetPurchasedTokenForStoreIDs:dsCopy completion:completionCopy];
  }

  else
  {
    v11 = sub_1000023E8(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFFD4();
    }

    jaliscoDAAPService2 = objc_retainBlock(completionCopy);
    if (jaliscoDAAPService2)
    {
      jaliscoDAAPService2[2](jaliscoDAAPService2, 0);
    }
  }
}

- (void)deleteItemsWithStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  jaliscoDAAPService = [(BDSService *)self jaliscoDAAPService];
  [jaliscoDAAPService deleteItemsWithStoreIDs:dsCopy completion:completionCopy];
}

- (void)resetStaleJaliscoDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  jaliscoDAAPService = [(BDSService *)self jaliscoDAAPService];

  if (jaliscoDAAPService)
  {
    jaliscoDAAPService2 = [(BDSService *)self jaliscoDAAPService];
    [jaliscoDAAPService2 resetStaleJaliscoDatabaseWithCompletion:completionCopy];
  }

  else
  {
    v7 = sub_1000023E8(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0008();
    }

    v8 = objc_retainBlock(completionCopy);
    if (v8)
    {
      v12 = NSLocalizedDescriptionKey;
      v13 = @"BDSService has no jalisco client";
      v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v10 = [NSError errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:v9];
      v8[2](v8, v10);
    }
  }
}

- (void)updatePolitelyAfterSignIn:(BOOL)in reason:(int64_t)reason completion:(id)completion
{
  inCopy = in;
  completionCopy = completion;
  jaliscoDAAPService = [(BDSService *)self jaliscoDAAPService];

  if (jaliscoDAAPService)
  {
    jaliscoDAAPService2 = [(BDSService *)self jaliscoDAAPService];
    [jaliscoDAAPService2 updatePolitelyAfterSignIn:inCopy reason:reason completion:completionCopy];
  }

  else
  {
    v11 = sub_1000023E8(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001C003C();
    }

    v12 = objc_retainBlock(completionCopy);
    if (v12)
    {
      v12[2](v12, 0);
    }
  }
}

- (void)updatePolitelyAfterSignOut:(BOOL)out reason:(int64_t)reason completion:(id)completion
{
  outCopy = out;
  completionCopy = completion;
  jaliscoDAAPService = [(BDSService *)self jaliscoDAAPService];

  if (jaliscoDAAPService)
  {
    jaliscoDAAPService2 = [(BDSService *)self jaliscoDAAPService];
    [jaliscoDAAPService2 updatePolitelyAfterSignOut:outCopy reason:reason completion:completionCopy];
  }

  else
  {
    v11 = sub_1000023E8(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0070();
    }

    v12 = objc_retainBlock(completionCopy);
    if (v12)
    {
      v12[2](v12, 0);
    }
  }
}

- (void)monitorServiceNotificationsWithChangeToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  v8 = +[NSXPCConnection currentConnection];
  clientConnectionService = [(BDSService *)self clientConnectionService];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100038248;
  v11[3] = &unk_100240CF8;
  v12 = completionCopy;
  v10 = completionCopy;
  [clientConnectionService monitorServiceNotificationsWithConnection:v8 changeToken:tokenCopy completion:v11];
}

- (void)getBookWidgetDataWithLimit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  widgetDataUpdater = [(BDSService *)self widgetDataUpdater];
  currentWidgetDatas = [widgetDataUpdater currentWidgetDatas];

  v9 = [currentWidgetDatas count];
  if (v9 >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = v9;
  }

  v11 = [currentWidgetDatas subarrayWithRange:{0, limitCopy}];
  v12 = sub_1000023E8(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Returning widget data: %@", &v14, 0xCu);
  }

  v13 = objc_retainBlock(completionCopy);
  if (v13)
  {
    v13[2](v13, v11, 0);
  }
}

- (void)getBookWidgetInfoWithLimit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  widgetInfoManager = [(BDSService *)self widgetInfoManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000384A4;
  v9[3] = &unk_100240D20;
  v10 = completionCopy;
  v8 = completionCopy;
  [widgetInfoManager getInfosWithLimit:limit completionHandler:v9];
}

- (void)readingGoalsChangeBooksFinishedGoalTo:(int64_t)to withCompletion:(id)completion
{
  completionCopy = completion;
  readingGoalsService = [(BDSService *)self readingGoalsService];
  [readingGoalsService changeBooksFinishedGoalTo:to completionHandler:completionCopy];
}

- (void)readingGoalsChangeDailyGoalTo:(double)to withCompletion:(id)completion
{
  completionCopy = completion;
  readingGoalsService = [(BDSService *)self readingGoalsService];
  [readingGoalsService changeDailyGoalTo:completionCopy completionHandler:to];
}

- (void)readingGoalsClearDataWithCompletion:(id)completion
{
  completionCopy = completion;
  readingGoalsService = [(BDSService *)self readingGoalsService];
  [readingGoalsService clearDataWithCompletionHandler:completionCopy];
}

- (void)readingGoalsClearLocalCachedDataWithCompletion:(id)completion
{
  completionCopy = completion;
  readingGoalsService = [(BDSService *)self readingGoalsService];
  [readingGoalsService clearLocalCachedDataWithCompletionHandler:completionCopy];
}

- (void)readingGoalsStateInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  readingGoalsService = [(BDSService *)self readingGoalsService];
  [readingGoalsService stateInfoWithCompletionHandler:completionCopy];
}

- (void)readingHistoryClearDataWithCompletion:(id)completion
{
  completionCopy = completion;
  readingHistoryCommandLineService = [(BDSService *)self readingHistoryCommandLineService];
  [readingHistoryCommandLineService clearDataWithCompletionHandler:completionCopy];
}

- (void)readingHistoryClearDefaultsCachedDataWithCompletion:(id)completion
{
  completionCopy = completion;
  readingHistoryService = [(BDSService *)self readingHistoryService];
  [readingHistoryService clearDefaultsCachedDataWithCompletionHandler:completionCopy];
}

- (void)readingHistoryClearDate:(id)date withCompletion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  readingHistoryCommandLineService = [(BDSService *)self readingHistoryCommandLineService];
  [readingHistoryCommandLineService clearDate:dateCopy completionHandler:completionCopy];
}

- (void)readingHistoryClearTodayWithCompletion:(id)completion
{
  completionCopy = completion;
  readingHistoryCommandLineService = [(BDSService *)self readingHistoryCommandLineService];
  [readingHistoryCommandLineService clearTodayWithCompletionHandler:completionCopy];
}

- (void)readingHistoryReadingHistoryStateInfoWithRangeStart:(id)start rangeEnd:(id)end currentTime:(id)time withCompletion:(id)completion
{
  completionCopy = completion;
  timeCopy = time;
  endCopy = end;
  startCopy = start;
  readingHistoryCommandLineService = [(BDSService *)self readingHistoryCommandLineService];
  [readingHistoryCommandLineService readingHistoryStateInfoWithRangeStart:startCopy rangeEnd:endCopy currentTime:timeCopy completionHandler:completionCopy];
}

- (void)readingHistoryHandleSyncFileChangeWithSyncVersionInfo:(id)info updateInfo:(id)updateInfo completion:(id)completion
{
  completionCopy = completion;
  updateInfoCopy = updateInfo;
  infoCopy = info;
  readingHistoryService = [(BDSService *)self readingHistoryService];
  [readingHistoryService handleSyncFileChangeWithSyncVersionInfo:infoCopy updateInfo:updateInfoCopy completionHandler:completionCopy];
}

- (void)readingHistoryIncrementWithDate:(id)date by:(int64_t)by withCompletion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  readingHistoryCommandLineService = [(BDSService *)self readingHistoryCommandLineService];
  [readingHistoryCommandLineService incrementWithDate:dateCopy by:by completionHandler:completionCopy];
}

- (void)readingHistoryServiceStatusInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  readingHistoryCommandLineService = [(BDSService *)self readingHistoryCommandLineService];
  serviceStatusInfo = [readingHistoryCommandLineService serviceStatusInfo];

  v6 = objc_retainBlock(completionCopy);
  if (v6)
  {
    v6[2](v6, serviceStatusInfo, 0);
  }
}

- (void)priceTrackingSetConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  objc_initWeak(&location, self);
  priceTracker = [(BDSService *)self priceTracker];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100038C9C;
  v10[3] = &unk_100240308;
  objc_copyWeak(&v12, &location);
  v9 = completionCopy;
  v11 = v9;
  [priceTracker setConfiguration:configurationCopy completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)priceTrackingCtlRefreshTrackedPricesIgnoringSchedule:(BOOL)schedule completion:(id)completion
{
  completionCopy = completion;
  priceTracker = [(BDSService *)self priceTracker];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100038DF8;
  v8[3] = &unk_1002402E0;
  v9 = completionCopy;
  v7 = completionCopy;
  [priceTracker bdsdctl_updateTrackedPricesIgnoringScheduleForAllItemsWithCompletionHandler:v8];
}

- (void)priceTrackingCtlGetStateWithCompletion:(id)completion
{
  completionCopy = completion;
  priceTracker = [(BDSService *)self priceTracker];
  [priceTracker bdsctl_getStateWithCompletion:completionCopy];
}

- (void)priceTrackingCtlAddTrackedItems:(id)items completion:(id)completion
{
  completionCopy = completion;
  v7 = [items mutableCopy];
  sub_1001BFCB8(self, v7, completionCopy);
}

- (void)priceTrackingCtlOverrideReferencePrices:(id)prices completion:(id)completion
{
  completionCopy = completion;
  pricesCopy = prices;
  priceTracker = [(BDSService *)self priceTracker];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003936C;
  v10[3] = &unk_1002402E0;
  v11 = completionCopy;
  v9 = completionCopy;
  [priceTracker bdsctl_updateReferencePrices:pricesCopy completion:v10];
}

- (void)readingHistoryBackupWithName:(id)name completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  readingHistoryCommandLineService = [(BDSService *)self readingHistoryCommandLineService];
  [readingHistoryCommandLineService backupWithName:nameCopy completionHandler:completionCopy];
}

- (void)readingHistoryListBackupWithCompletion:(id)completion
{
  completionCopy = completion;
  readingHistoryCommandLineService = [(BDSService *)self readingHistoryCommandLineService];
  [readingHistoryCommandLineService listBackupWithCompletionHandler:completionCopy];
}

- (void)readingHistoryRestoreWithName:(id)name completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  readingHistoryCommandLineService = [(BDSService *)self readingHistoryCommandLineService];
  [readingHistoryCommandLineService restoreWithName:nameCopy completionHandler:completionCopy];
}

- (void)bookWidgetReadingHistoryStateInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  readingHistoryService = [(BDSService *)self readingHistoryService];
  [readingHistoryService bookWidgetReadingHistoryStateInfoWithCompletionHandler:completionCopy];
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  v3 = sub_100002660(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "hasSaltChangedWithCompletion should not be called", v4, 2u);
  }
}

- (id)_newWidgetMOC
{
  v3 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setAutomaticallyMergesChangesFromParent:1];
  WeakRetained = objc_loadWeakRetained(&self->_assetManager);
  assetDataSource = [WeakRetained assetDataSource];
  managedObjectContext = [assetDataSource managedObjectContext];

  if (managedObjectContext)
  {
    v8 = objc_loadWeakRetained(&self->_assetManager);
    assetDataSource2 = [v8 assetDataSource];
    managedObjectContext2 = [assetDataSource2 managedObjectContext];
    [v3 setParentContext:managedObjectContext2];

    v11 = v3;
  }

  else
  {
    v12 = sub_10000DE28(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001C00A4();
    }

    v11 = 0;
  }

  return v11;
}

- (void)_setupWidgetDataUpdater:(id)updater
{
  updaterCopy = updater;
  if (!self->_widgetCenterManager)
  {
    v4 = +[BDSWidgetCenterManager sharedInstance];
    widgetCenterManager = self->_widgetCenterManager;
    self->_widgetCenterManager = v4;
  }

  v6 = [[BDSBookWidgetDataUpdater alloc] initWithWidgetCenterManager:self->_widgetCenterManager managedObjectContext:updaterCopy];
  widgetDataUpdater = self->_widgetDataUpdater;
  self->_widgetDataUpdater = v6;

  [(BDSBookWidgetDataUpdater *)self->_widgetDataUpdater resume];
}

- (void)_setupWidget
{
  v3 = sub_10000DE28(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up Books widget...", &v21, 2u);
  }

  _newWidgetMOC = [(BDSService *)self _newWidgetMOC];
  if (_newWidgetMOC)
  {
    [(BDSService *)self _setupWidgetDataUpdater:_newWidgetMOC];
    v5 = objc_alloc_init(BDSUbiquityManager);
    ubiquityManager = self->_ubiquityManager;
    self->_ubiquityManager = v5;

    v7 = [BDSBookWidgetInfoManager alloc];
    WeakRetained = objc_loadWeakRetained(&self->_assetManager);
    assetDetailManager = [WeakRetained assetDetailManager];
    v10 = objc_loadWeakRetained(&self->_assetManager);
    readingNowDetailManager = [v10 readingNowDetailManager];
    v12 = [(BDSBookWidgetInfoManager *)v7 initWithMOC:_newWidgetMOC assetDetailManager:assetDetailManager readingNowDetailManager:readingNowDetailManager ubiquityManager:self->_ubiquityManager];
    widgetInfoManager = self->_widgetInfoManager;
    self->_widgetInfoManager = v12;

    v14 = BUProtocolCast();
    objc_opt_class();
    v15 = objc_loadWeakRetained(&self->_assetManager);
    readingNowDetailManager2 = [v15 readingNowDetailManager];
    v17 = BUDynamicCast();
    [v17 setDataMonitor:v14];

    v19 = sub_10000DE28(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      widgetInfoManager = [(BDSService *)self widgetInfoManager];
      v21 = 138412290;
      v22 = widgetInfoManager;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Creating widgetInfomanager:  %@", &v21, 0xCu);
    }
  }
}

- (void)setBookWidgetInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  widgetInfoManager = [(BDSService *)self widgetInfoManager];
  [widgetInfoManager setBookWidgetInfo:infoCopy completion:completionCopy];
}

- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  readingHistoryService = [(BDSService *)self readingHistoryService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039B00;
  v7[3] = &unk_100240D90;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [readingHistoryService mergeMovedReadingHistoryDataWithCompletionHandler:v7];
}

- (id)makeOSStateHandler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100039C10;
  v4[3] = &unk_100240DB8;
  v4[4] = self;
  v2 = [[BUOSStateHandler alloc] initWithTitle:@"BDSService" block:v4];

  return v2;
}

- (id)_stateForLog
{
  v3 = objc_alloc_init(NSMutableDictionary);
  cloudSyncDiagnosticService = [(BDSService *)self cloudSyncDiagnosticService];
  stateForLog = [cloudSyncDiagnosticService stateForLog];
  [v3 setObject:stateForLog forKeyedSubscript:@"cloudSyncDiagnostic"];

  return v3;
}

- (BCCloudAssetManager)assetManager
{
  WeakRetained = objc_loadWeakRetained(&self->_assetManager);

  return WeakRetained;
}

- (BCCloudCollectionsManager)cloudCollectionsManager
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudCollectionsManager);

  return WeakRetained;
}

@end