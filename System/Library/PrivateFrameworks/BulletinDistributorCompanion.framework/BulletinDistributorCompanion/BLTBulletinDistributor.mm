@interface BLTBulletinDistributor
+ (id)sharedDistributor;
- (BLTBulletinDistributor)init;
- (BOOL)_enqueuBulletinUpdate:(unint64_t)update bulletin:(id)bulletin feed:(unint64_t)feed;
- (BOOL)_notifyGizmoOfBulletin:(id)bulletin forFeed:(unint64_t)feed updateType:(unint64_t)type playLightsAndSirens:(BOOL)sirens shouldSendReplyIfNeeded:(BOOL)needed attachment:(id)attachment attachmentType:(int64_t)attachmentType replyToken:(id)self0;
- (BOOL)_willNanoPresent:(unint64_t)present forBulletin:(id)bulletin feed:(unint64_t)feed;
- (BOOL)shouldSuppressLightsAndSirensNow;
- (id)_obsoletionDateRelativeToNow;
- (id)_replyTokenForSectionID:(id)d publisherMatchID:(id)iD;
- (id)_stateDescription;
- (unint64_t)_nanoPresentableFeedFromPhoneFeed:(unint64_t)feed;
- (void)_addBulletin:(id)bulletin forFeed:(unint64_t)feed playLightsAndSirens:(BOOL)sirens attachment:(id)attachment attachmentType:(int64_t)type alwaysSend:(BOOL)send completion:(id)completion;
- (void)_attachAttachment:(id)attachment attachmentType:(int64_t)type toBulletin:(id)bulletin;
- (void)_attachIconToBulletin:(id)bulletin;
- (void)_cleanupForAddedBulletin:(id)bulletin;
- (void)_handleAddBulletin:(id)bulletin feed:(unint64_t)feed shouldPlayLightsAndSirens:(BOOL)sirens performedWithSuccess:(BOOL)success sendAttemptTime:(id)time connectionStatus:(unint64_t)status isGizmoReady:(BOOL)ready shouldSendReplyIfNeeded:(BOOL)self0 replyToken:(id)self1;
- (void)_handleAllSyncComplete;
- (void)_handleDidPlayLightsAndSirens:(BOOL)sirens forBulletin:(id)bulletin inPhoneSection:(id)section finalReply:(BOOL)reply replyToken:(id)token;
- (void)_handleDidPlayLightsAndSirens:(BOOL)sirens forBulletin:(id)bulletin inPhoneSection:(id)section transmissionDate:(id)date receptionDate:(id)receptionDate fromGizmo:(BOOL)gizmo finalReply:(BOOL)reply replyToken:(id)self0;
- (void)_handleInitialSyncStateCompleteChanged:(id)changed;
- (void)_handleSyncStateChanged:(id)changed;
- (void)_mapBulletin:(id)bulletin;
- (void)_notifyGizmoOfCancelBulletin:(id)bulletin sectionID:(id)d universalSectionID:(id)iD feed:(unint64_t)feed withBulletinDate:(id)date;
- (void)_performModifyBulletin:(id)bulletin forFeed:(unint64_t)feed;
- (void)_performNextPendingBulletinUpdateForBulletinID:(id)d;
- (void)_performRemoveBulletin:(id)bulletin forFeed:(unint64_t)feed;
- (void)_performSync;
- (void)_pingSubscriberWithBulletin:(id)bulletin ack:(id)ack;
- (void)_postWillSendBulletinToGizmoNotificationForBulletin:(id)bulletin;
- (void)_registerForPairedDeviceBuildChanges;
- (void)_reloadBulletins;
- (void)_removeTranscodedAttachmentIfNeededForBulletin:(id)bulletin;
- (void)_sendCurrentBulletinIdentifiers:(id)identifiers;
- (void)_sendPBBulletin:(id)bulletin forBulletin:(id)forBulletin feed:(unint64_t)feed updateType:(unint64_t)type playLightsAndSirens:(BOOL)sirens shouldSendReplyIfNeeded:(BOOL)needed;
- (void)_setupBBObserver;
- (void)_startBulletinListening;
- (void)_subscriberWillAllowBulletin:(id)bulletin completion:(id)completion;
- (void)clearReplyBlockForReplyToken:(id)token;
- (void)dealloc;
- (void)disableStandaloneTestMode;
- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)delay maximumSendDelay:(unint64_t)sendDelay minimumResponseDelay:(unint64_t)responseDelay maximumResponseDelay:(unint64_t)maximumResponseDelay;
- (void)getWillNanoPresentNotificationForSectionID:(id)d subsectionIDs:(id)ds subtype:(int64_t)subtype completion:(id)completion;
- (void)handleAction:(id)action;
- (void)handleAction:(id)action bulletin:(id)bulletin;
- (void)handleDidPlayLightsAndSirens:(BOOL)sirens forBulletin:(id)bulletin inPhoneSection:(id)section transmissionDate:(id)date receptionDate:(id)receptionDate replyToken:(id)token;
- (void)observer:(id)observer addBulletin:(id)bulletin forFeed:(unint64_t)feed playLightsAndSirens:(BOOL)sirens attachment:(id)attachment attachmentType:(int64_t)type alwaysSend:(BOOL)send withReply:(id)self0;
- (void)observer:(id)observer modifyBulletin:(id)bulletin forFeed:(unint64_t)feed;
- (void)observer:(id)observer removeBulletin:(id)bulletin forFeed:(unint64_t)feed;
- (void)observer:(id)observer updateGlobalSettings:(id)settings;
- (void)removeBulletinWithPublisherBulletinID:(id)d recordID:(id)iD sectionID:(id)sectionID;
- (void)sendAllSectionInfoWithSpool:(BOOL)spool completion:(id)completion;
- (void)sendSectionInfoWithSectionID:(id)d completion:(id)completion;
- (void)setReplyBlock:(id)block forSection:(id)section bulletin:(id)bulletin publicationDate:(id)date replyToken:(id)token;
- (void)spoolSectionInfoWithCompletion:(id)completion;
- (void)willSendLightsAndSirensWithPublisherBulletinID:(id)d recordID:(id)iD inPhoneSection:(id)section systemApp:(BOOL)app completion:(id)completion;
- (void)willSendLightsAndSirensWithRecordID:(id)d inPhoneSection:(id)section systemApp:(BOOL)app completion:(id)completion;
@end

@implementation BLTBulletinDistributor

+ (id)sharedDistributor
{
  if (sharedDistributor___onceToken != -1)
  {
    +[BLTBulletinDistributor sharedDistributor];
  }

  v3 = sharedDistributor___sharedInstance;

  return v3;
}

uint64_t __43__BLTBulletinDistributor_sharedDistributor__block_invoke()
{
  v0 = objc_alloc_init(BLTBulletinDistributor);
  v1 = sharedDistributor___sharedInstance;
  sharedDistributor___sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BLTBulletinDistributor)init
{
  v59 = *MEMORY[0x277D85DE8];
  v56.receiver = self;
  v56.super_class = BLTBulletinDistributor;
  v2 = [(BLTBulletinDistributor *)&v56 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    startupTime = v2->_startupTime;
    v2->_startupTime = date;

    v2->_standaloneTestModeEnabled = 0;
    v5 = [MEMORY[0x277CBEB58] set];
    noticesFeed = v2->_noticesFeed;
    v2->_noticesFeed = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    lockScreenFeed = v2->_lockScreenFeed;
    v2->_lockScreenFeed = v7;

    v9 = objc_alloc_init(BLTHashCache);
    attachmentHashCache = v2->_attachmentHashCache;
    v2->_attachmentHashCache = v9;

    v11 = objc_alloc_init(BLTHashCache);
    iconHashCache = v2->_iconHashCache;
    v2->_iconHashCache = v11;

    v2->_pendingBulletinUpdatesLock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pendingBulletinUpdates = v2->_pendingBulletinUpdates;
    v2->_pendingBulletinUpdates = dictionary;

    v15 = [MEMORY[0x277CBEB58] set];
    bulletinIDsWaitingOnGizmoAdd = v2->_bulletinIDsWaitingOnGizmoAdd;
    v2->_bulletinIDsWaitingOnGizmoAdd = v15;

    v17 = objc_alloc_init(BLTWatchKitAppList);
    watchKitAppList = v2->_watchKitAppList;
    v2->_watchKitAppList = v17;

    v19 = [[BLTSectionConfiguration alloc] initWithWatchKitAppList:v2->_watchKitAppList];
    sectionConfiguration = v2->_sectionConfiguration;
    v2->_sectionConfiguration = v19;

    v21 = [BLTClientReplyTimeoutManager alloc];
    v22 = BLTWorkQueue(v21);
    v23 = [(BLTClientReplyTimeoutManager *)v21 initWithQueue:v22];
    clientReplyTimeoutManager = v2->_clientReplyTimeoutManager;
    v2->_clientReplyTimeoutManager = v23;

    v25 = objc_alloc_init(BLTGizmoLegacyMap);
    gizmoLegacyMap = v2->_gizmoLegacyMap;
    v2->_gizmoLegacyMap = v25;

    configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    v28 = [MEMORY[0x277D0AD08] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
    layoutMonitor = v2->_layoutMonitor;
    v2->_layoutMonitor = v28;

    v30 = [[BLTSimpleCache alloc] initWithCapacity:10];
    mruCacheOfSectionIDs = v2->_mruCacheOfSectionIDs;
    v2->_mruCacheOfSectionIDs = v30;

    BLTCleanAttachmentsPath();
    CFPreferencesAppSynchronize(@"com.apple.bulletindistributor");
    v32 = objc_alloc_init(BLTRemoteGizmoClient);
    gizmoConnection = v2->_gizmoConnection;
    v2->_gizmoConnection = v32;

    [(BLTRemoteGizmoClient *)v2->_gizmoConnection setServer:v2];
    [(BLTRemoteGizmoClient *)v2->_gizmoConnection setGizmoLegacyMap:v2->_gizmoLegacyMap];
    v34 = [BLTSettingSync alloc];
    v35 = v2->_sectionConfiguration;
    v36 = BLTWorkQueue(v34);
    v37 = [(BLTSettingSync *)v34 initWithSectionConfiguration:v35 queue:v36 watchKitAppList:v2->_watchKitAppList];
    settingSync = v2->_settingSync;
    v2->_settingSync = v37;

    v40 = blt_general_log(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241FB3000, v40, OS_LOG_TYPE_DEFAULT, "Getting summarization setting from gateway", buf, 2u);
    }

    settingsGateway = [(BLTSettingSyncInternal *)v2->_settingSync settingsGateway];
    v2->_summarizationSetting = [settingsGateway effectiveGlobalSummarizationSetting];

    v43 = blt_general_log(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [MEMORY[0x277CCABB0] numberWithInteger:v2->_summarizationSetting];
      *buf = 138412290;
      v58 = v44;
      _os_log_impl(&dword_241FB3000, v43, OS_LOG_TYPE_DEFAULT, "Gateway returned summarization setting %@", buf, 0xCu);
    }

    v45 = [[BLTPingSubscriberManager alloc] initWithDeviceDelegate:v2];
    pingSubscriberManager = v2->_pingSubscriberManager;
    v2->_pingSubscriberManager = v45;

    [BLTDebugObserverHolder startWithWKAppList:v2->_watchKitAppList];
    v47 = +[BLTPairedSyncCoordinator syncState];
    if ([v47 isSyncRestricted])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v2 selector:sel__handleSyncStateChanged_ name:@"BLTPairedSyncStateChanged" object:0];
    }

    else
    {
      [(BLTBulletinDistributor *)v2 _performSync];
    }

    isInitialSyncComplete = [v47 isInitialSyncComplete];
    if (isInitialSyncComplete)
    {
      [(BLTBulletinDistributor *)v2 _startBulletinListening];
      if (([v47 isSyncRestricted] & 1) == 0)
      {
        [(BLTBulletinDistributor *)v2 _handleAllSyncComplete];
      }
    }

    else
    {
      v50 = blt_general_log(isInitialSyncComplete);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241FB3000, v50, OS_LOG_TYPE_DEFAULT, "Waiting for initial sync complete before listening for bulletins", buf, 2u);
      }

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v2 selector:sel__handleInitialSyncStateCompleteChanged_ name:@"BLTPairedSyncStateInitialSyncCompleteChanged" object:0];
    }

    inited = objc_initWeak(buf, v2);
    v53 = BLTWorkQueue(inited);
    objc_copyWeak(&v55, buf);
    v2->_stateHandler = os_state_add_handler();

    objc_destroyWeak(&v55);
    objc_destroyWeak(buf);
  }

  return v2;
}

_DWORD *__30__BLTBulletinDistributor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [WeakRetained _stateDescription];
  v5 = BLTStateDataWithTitleAndDescription(v3, v4);

  return v5;
}

- (void)dealloc
{
  [(BBObserver *)self->_bbObserver invalidate];
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  os_state_remove_handler();
  self->_stateHandler = 0;
  v4.receiver = self;
  v4.super_class = BLTBulletinDistributor;
  [(BLTBulletinDistributor *)&v4 dealloc];
}

- (void)getWillNanoPresentNotificationForSectionID:(id)d subsectionIDs:(id)ds subtype:(int64_t)subtype completion:(id)completion
{
  if (completion)
  {
    settingSync = self->_settingSync;
    completionCopy = completion;
    completionCopy[2](completionCopy, [(BLTBulletinDistributor *)self _willNanoPresent:[(BLTSettingSyncInternal *)settingSync willNanoPresentNotificationForSectionID:d subsectionIDs:ds subtype:subtype]]);
  }
}

- (void)sendSectionInfoWithSectionID:(id)d completion:(id)completion
{
  v14[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  settingSync = self->_settingSync;
  v14[0] = d;
  v8 = MEMORY[0x277CBEA60];
  dCopy = d;
  v10 = [v8 arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__BLTBulletinDistributor_sendSectionInfoWithSectionID_completion___block_invoke;
  v12[3] = &unk_278D314F0;
  v13 = completionCopy;
  v11 = completionCopy;
  [(BLTSettingSync *)settingSync sendSectionInfosWithSectionIDs:v10 completion:v12 spoolToFile:0];
}

uint64_t __66__BLTBulletinDistributor_sendSectionInfoWithSectionID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sendAllSectionInfoWithSpool:(BOOL)spool completion:(id)completion
{
  spoolCopy = spool;
  completionCopy = completion;
  settingSync = self->_settingSync;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__BLTBulletinDistributor_sendAllSectionInfoWithSpool_completion___block_invoke;
  v9[3] = &unk_278D314F0;
  v10 = completionCopy;
  v8 = completionCopy;
  [(BLTSettingSync *)settingSync sendAllSectionInfoWithSpool:spoolCopy completion:v9];
}

uint64_t __65__BLTBulletinDistributor_sendAllSectionInfoWithSpool_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)spoolSectionInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  settingSync = self->_settingSync;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__BLTBulletinDistributor_spoolSectionInfoWithCompletion___block_invoke;
  v7[3] = &unk_278D314F0;
  v8 = completionCopy;
  v6 = completionCopy;
  [(BLTSettingSync *)settingSync spoolSectionInfoWithCompletion:v7];
}

uint64_t __57__BLTBulletinDistributor_spoolSectionInfoWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)delay maximumSendDelay:(unint64_t)sendDelay minimumResponseDelay:(unint64_t)responseDelay maximumResponseDelay:(unint64_t)maximumResponseDelay
{
  self->_standaloneTestModeEnabled = 1;
  [BLTRemoteObject enableStandaloneTestModeWithMinimumSendDelay:"enableStandaloneTestModeWithMinimumSendDelay:maximumSendDelay:minimumResponseDelay:maximumResponseDelay:" maximumSendDelay:? minimumResponseDelay:? maximumResponseDelay:?];
  settingSync = self->_settingSync;

  [(BLTSettingSyncInternal *)settingSync enableStandaloneTestModeWithMinimumSendDelay:delay maximumSendDelay:sendDelay minimumResponseDelay:responseDelay maximumResponseDelay:maximumResponseDelay];
}

- (void)disableStandaloneTestMode
{
  self->_standaloneTestModeEnabled = 0;
  [(BLTRemoteObject *)self->_gizmoConnection disableStandaloneTestMode];
  settingSync = self->_settingSync;

  [(BLTSettingSyncInternal *)settingSync disableStandaloneTestMode];
}

- (void)_handleSyncStateChanged:(id)changed
{
  changedCopy = changed;
  v5 = BLTWorkQueue(changedCopy);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__BLTBulletinDistributor__handleSyncStateChanged___block_invoke;
  v7[3] = &unk_278D31400;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(v5, v7);
}

void __50__BLTBulletinDistributor__handleSyncStateChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [v2 becameSyncUnrestricted:*(a1 + 32)];

  if (v3)
  {
    v4 = *(a1 + 40);

    [v4 _performSync];
  }
}

- (void)_handleInitialSyncStateCompleteChanged:(id)changed
{
  changedCopy = changed;
  v5 = BLTWorkQueue(changedCopy);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__BLTBulletinDistributor__handleInitialSyncStateCompleteChanged___block_invoke;
  v7[3] = &unk_278D31400;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(v5, v7);
}

void __65__BLTBulletinDistributor__handleInitialSyncStateCompleteChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  if ([v2 isInitialSyncComplete])
  {
    [*(a1 + 40) _startBulletinListening];
    if (([v2 isSyncRestricted] & 1) == 0)
    {
      [*(a1 + 40) _handleAllSyncComplete];
    }
  }
}

- (void)_performSync
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__BLTBulletinDistributor__performSync__block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  if (_performSync_onceToken != -1)
  {
    dispatch_once(&_performSync_onceToken, block);
  }
}

uint64_t __38__BLTBulletinDistributor__performSync__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__BLTBulletinDistributor__performSync__block_invoke_3;
  v4[3] = &unk_278D31428;
  v4[4] = v1;
  return [v2 performInitialSyncWithProgress:&__block_literal_global_82 completion:v4];
}

uint64_t __38__BLTBulletinDistributor__performSync__block_invoke_3(uint64_t a1)
{
  +[BLTPairedSyncCoordinator syncDidComplete];
  v2 = +[BLTPairedSyncCoordinator syncState];
  v3 = [v2 isInitialSyncComplete];

  if (v3)
  {
    [*(a1 + 32) _handleAllSyncComplete];
  }

  v4 = *(a1 + 32);

  return [v4 _registerForPairedDeviceBuildChanges];
}

- (void)_startBulletinListening
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BLTBulletinDistributor__startBulletinListening__block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  if (_startBulletinListening_onceToken != -1)
  {
    dispatch_once(&_startBulletinListening_onceToken, block);
  }
}

uint64_t __49__BLTBulletinDistributor__startBulletinListening__block_invoke(uint64_t a1)
{
  v2 = blt_general_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "Start listening for bulletins", buf, 2u);
  }

  v3 = [*(*(a1 + 32) + 80) isLoaded];
  v4 = *(a1 + 32);
  if (v3)
  {
    return [v4 _setupBBObserver];
  }

  v6 = v4[10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__BLTBulletinDistributor__startBulletinListening__block_invoke_83;
  v7[3] = &unk_278D31428;
  v7[4] = v4;
  return [v6 fetchWatchKitInfoWithCompletion:v7];
}

- (void)_handleAllSyncComplete
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__BLTBulletinDistributor__handleAllSyncComplete__block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  if (_handleAllSyncComplete_onceToken != -1)
  {
    dispatch_once(&_handleAllSyncComplete_onceToken, block);
  }
}

void __48__BLTBulletinDistributor__handleAllSyncComplete__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_INFO, "Sync is not restricted and initial sync complete", buf, 2u);
  }

  v4 = BLTWorkQueue(v3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__BLTBulletinDistributor__handleAllSyncComplete__block_invoke_84;
  block[3] = &unk_278D31428;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);

  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v5 timeIntervalSinceDate:*(*(a1 + 32) + 96)];
  v8 = 60.0 - v7;
  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = blt_general_log(v6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = v9;
    _os_log_impl(&dword_241FB3000, v10, OS_LOG_TYPE_DEFAULT, "Waiting for %f seconds until we send bulletin metadata", buf, 0xCu);
  }

  v11 = dispatch_time(0, (v9 * 1000000000.0));
  v12 = BLTWorkQueue(v11);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__BLTBulletinDistributor__handleAllSyncComplete__block_invoke_85;
  v13[3] = &unk_278D31428;
  v13[4] = *(a1 + 32);
  dispatch_after(v11, v12, v13);
}

- (void)_registerForPairedDeviceBuildChanges
{
  v6[1] = *MEMORY[0x277D85DE8];
  blt_boundedWaitForActivePairedDevice = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
  v6[0] = *MEMORY[0x277D2BC08];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__BLTBulletinDistributor__registerForPairedDeviceBuildChanges__block_invoke;
  v5[3] = &unk_278D32610;
  v5[4] = self;
  [blt_boundedWaitForActivePairedDevice registerForPropertyChanges:v4 withBlock:v5];
}

void __62__BLTBulletinDistributor__registerForPairedDeviceBuildChanges__block_invoke(uint64_t a1)
{
  v2 = BLTWorkQueue(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BLTBulletinDistributor__registerForPairedDeviceBuildChanges__block_invoke_2;
  block[3] = &unk_278D31428;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (void)_setupBBObserver
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = blt_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_241FB3000, v3, OS_LOG_TYPE_DEFAULT, "%@ _setupBBObserver", &v13, 0xCu);
  }

  v5 = BLTWorkQueue(v4);
  v6 = BLTWorkQueue(v5);
  v7 = [BLTBBObserver surrogateGatewayWithQueue:v5 calloutQueue:v6 name:@"GizmoGateway" priority:2];
  bbObserver = self->_bbObserver;
  self->_bbObserver = v7;

  [(BBObserver *)self->_bbObserver setDelegate:self];
  [(BBObserver *)self->_bbObserver setObserverFeed:33663];
  bbObserver = [(BLTBulletinDistributor *)self bbObserver];
  [bbObserver setObserverOptions:1];

  v11 = blt_general_log(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    bbObserver2 = [(BLTBulletinDistributor *)self bbObserver];
    v13 = 138412546;
    selfCopy2 = self;
    v15 = 2112;
    v16 = bbObserver2;
    _os_log_impl(&dword_241FB3000, v11, OS_LOG_TYPE_DEFAULT, "%@ _setupBBObserver: %@", &v13, 0x16u);
  }
}

- (void)_pingSubscriberWithBulletin:(id)bulletin ack:(id)ack
{
  pingSubscriberManager = self->_pingSubscriberManager;
  ackCopy = ack;
  bulletinCopy = bulletin;
  subscribers = [(BLTPingSubscriberManager *)pingSubscriberManager subscribers];
  [subscribers pingWithBulletin:bulletinCopy ack:ackCopy];
}

- (void)_notifyGizmoOfCancelBulletin:(id)bulletin sectionID:(id)d universalSectionID:(id)iD feed:(unint64_t)feed withBulletinDate:(id)date
{
  v39 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  dCopy = d;
  iDCopy = iD;
  timeIntervalSinceNow = [date timeIntervalSinceNow];
  v17 = v16 + 86400.0;
  v18 = blt_general_log(timeIntervalSinceNow);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = " not going to send";
    v31 = 2112;
    v29 = 138413314;
    v30 = bulletinCopy;
    if (v17 > 0.0)
    {
      v19 = "";
    }

    v32 = iDCopy;
    v33 = 2048;
    feedCopy = feed;
    v35 = 2048;
    v36 = v17;
    v37 = 2080;
    v38 = v19;
    _os_log_impl(&dword_241FB3000, v18, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor _notifyGizmoOfCancelBulletin with publisherMatchID: %@ in universal section: %@ forFeed: %lu timeout: %f%s", &v29, 0x34u);
  }

  if (v17 > 0.0)
  {
    v20 = [BLTBBBulletinKey bulletinKeyWithSectionID:dCopy publisherMatchID:bulletinCopy];
    v21 = [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap gizmoPublisherBulletinIDForPhoneKey:v20];
    v22 = [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap gizmoSectionInfoForPhoneKey:v20];
    mappedSectionID = [v22 mappedSectionID];
    v24 = mappedSectionID;
    if (mappedSectionID)
    {
      v25 = mappedSectionID;
    }

    else
    {
      v25 = iDCopy;
    }

    v26 = v25;

    gizmoConnection = self->_gizmoConnection;
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    [(BLTRemoteGizmoClient *)gizmoConnection cancelBulletinWithPublisherMatchID:v21 universalSectionID:v26 feed:feed withTimeout:v28];
  }
}

- (void)_mapBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  v4 = [MEMORY[0x277CE1F78] notificationForBulletin:bulletinCopy];
  sectionConfiguration = self->_sectionConfiguration;
  sectionID = [bulletinCopy sectionID];
  v7 = [(BLTSectionConfigurationInternal *)sectionConfiguration legacyMapLocationForSectionID:sectionID];

  if (v7 == 1)
  {
    gizmoLegacyMap = self->_gizmoLegacyMap;
    sectionID2 = [bulletinCopy sectionID];
    [(BLTGizmoLegacyMap *)gizmoLegacyMap mapNotification:v4 sectionID:sectionID2];
  }
}

- (void)_postWillSendBulletinToGizmoNotificationForBulletin:(id)bulletin
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9A0];
  bulletinCopy = bulletin;
  defaultCenter = [v3 defaultCenter];
  v8 = @"sectionID";
  sectionID = [bulletinCopy sectionID];

  v9[0] = sectionID;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"BLTWillSendBulletinToGizmoNotification" object:0 userInfo:v7];
}

- (void)_attachAttachment:(id)attachment attachmentType:(int64_t)type toBulletin:(id)bulletin
{
  v43 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  bulletinCopy = bulletin;
  v10 = bulletinCopy;
  if (attachmentCopy)
  {
    [bulletinCopy setContainsUpdatedAttachment:1];
    [v10 setAttachment:attachmentCopy];
    [v10 setAttachmentType:type];
  }

  else
  {
    selfCopy = self;
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    if (([v10 hasAttachment] & 1) != 0 || objc_msgSend(v10, "hasAttachmentURL"))
    {
      attachment = [v10 attachment];
      attachmentURLURL = [v10 attachmentURLURL];
      attachmentID = [v10 attachmentID];
      v16 = [BLTHashCacheItem hashCacheItemWithData:attachment URL:attachmentURLURL identifier:attachmentID];

      [array addObject:v16];
      v31 = 1;
    }

    else
    {
      v31 = 0;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v33 = v10;
    additionalAttachments = [v10 additionalAttachments];
    v18 = [additionalAttachments countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v39;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(additionalAttachments);
          }

          v22 = *(*(&v38 + 1) + 8 * i);
          v23 = [v22 uRL];

          if (v23)
          {
            attachmentURLURL2 = [v22 attachmentURLURL];
            identifier = [v22 identifier];
            v26 = [BLTHashCacheItem hashCacheItemWithData:0 URL:attachmentURLURL2 identifier:identifier];

            [array addObject:v26];
            [array2 addObject:v22];
          }
        }

        v19 = [additionalAttachments countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v19);
    }

    v10 = v33;
    attachmentHashCache = selfCopy->_attachmentHashCache;
    sectionID = [v33 sectionID];
    publisherMatchID = [v33 publisherMatchID];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __70__BLTBulletinDistributor__attachAttachment_attachmentType_toBulletin___block_invoke;
    v34[3] = &unk_278D32638;
    v37 = v31;
    v35 = v33;
    v36 = array2;
    v30 = array2;
    [(BLTHashCache *)attachmentHashCache updateCacheWithItems:array forSectionID:sectionID matchID:publisherMatchID result:v34];

    attachmentCopy = 0;
  }
}

void __70__BLTBulletinDistributor__attachAttachment_attachmentType_toBulletin___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = blt_general_log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 identifier];
    v14 = 134218498;
    v15 = a3;
    v16 = 2112;
    v17 = v9;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Attachment hash cache updated item index %lu id %@ with result %lu", &v14, 0x20u);
  }

  if (a4 == 2)
  {
    if (a3 || !*(a1 + 48))
    {
      v11 = objc_alloc_init(BLTPBBulletinAttachment);
      [(BLTPBBulletinAttachment *)v11 setIsUpdated:1];
      v12 = [v7 identifier];
      [(BLTPBBulletinAttachment *)v11 setIdentifier:v12];

      [*(a1 + 32) setContainsUpdatedAttachment:1];
      [*(a1 + 32) addAdditionalAttachments:v11];
      goto LABEL_16;
    }

LABEL_14:
    [*(a1 + 32) setContainsUpdatedAttachment:1];
    goto LABEL_18;
  }

  v10 = a3 - *(a1 + 48);
  if (a4 == 1)
  {
    if (a3 || !*(a1 + 48))
    {
      v11 = [*(a1 + 40) objectAtIndexedSubscript:v10];
      [(BLTPBBulletinAttachment *)v11 setIsUpdated:1];
      [*(a1 + 32) setContainsUpdatedAttachment:1];
LABEL_16:

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    if (a3 || !*(a1 + 48))
    {
      v13 = [*(a1 + 40) objectAtIndexedSubscript:v10];
      [v13 setURL:0];
    }

    else
    {
      [*(a1 + 32) setAttachment:0];
      [*(a1 + 32) setAttachmentURL:0];
    }
  }

LABEL_18:
}

- (void)_attachIconToBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  icon = [bulletinCopy icon];
  variantsCount = [icon variantsCount];

  if (variantsCount)
  {
    icon2 = [bulletinCopy icon];
    v8 = [icon2 variantAtIndex:0];

    array = [MEMORY[0x277CBEB18] array];
    imageData = [v8 imageData];
    v11 = [BLTHashCacheItem hashCacheItemWithData:imageData URL:0 identifier:0];

    [array addObject:v11];
  }

  else
  {
    array = 0;
  }

  iconHashCache = self->_iconHashCache;
  sectionID = [bulletinCopy sectionID];
  publisherMatchID = [bulletinCopy publisherMatchID];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__BLTBulletinDistributor__attachIconToBulletin___block_invoke;
  v16[3] = &unk_278D32660;
  v17 = bulletinCopy;
  v15 = bulletinCopy;
  [(BLTHashCache *)iconHashCache updateCacheWithItems:array forSectionID:sectionID matchID:publisherMatchID result:v16];
}

void __48__BLTBulletinDistributor__attachIconToBulletin___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = blt_general_log(a1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = a3;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Icon hash cache updated item index %lu with result %lu", &v8, 0x16u);
  }

  if ((a4 - 1) >= 2)
  {
    if (!a4)
    {
      [*(a1 + 32) setIcon:0];
    }
  }

  else
  {
    [*(a1 + 32) setContainsUpdateIcon:1];
  }
}

- (void)_handleAddBulletin:(id)bulletin feed:(unint64_t)feed shouldPlayLightsAndSirens:(BOOL)sirens performedWithSuccess:(BOOL)success sendAttemptTime:(id)time connectionStatus:(unint64_t)status isGizmoReady:(BOOL)ready shouldSendReplyIfNeeded:(BOOL)self0 replyToken:(id)self1
{
  successCopy = success;
  sirensCopy = sirens;
  v33 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  tokenCopy = token;
  v17 = blt_general_log(tokenCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (successCopy)
    {
      v18 = "Successfully notified";
    }

    else
    {
      v18 = "Failed to notify";
    }

    publisherMatchID = [bulletinCopy publisherMatchID];
    v20 = publisherMatchID;
    v21 = "NO";
    *v28 = 136315906;
    *&v28[4] = v18;
    *&v28[12] = 2112;
    if (sirensCopy)
    {
      v21 = "YES";
    }

    *&v28[14] = publisherMatchID;
    v29 = 2048;
    feedCopy = feed;
    v31 = 2080;
    v32 = v21;
    _os_log_impl(&dword_241FB3000, v17, OS_LOG_TYPE_DEFAULT, "%s gizmo of bulletin with publisherMatchID: %@ forFeed: %lu playLightsAndSirens: %s", v28, 0x2Au);
  }

  if (!successCopy)
  {
    if (needed)
    {
      publisherMatchID2 = [bulletinCopy publisherMatchID];
      sectionID = [bulletinCopy sectionID];
      [(BLTBulletinDistributor *)self _handleDidPlayLightsAndSirens:0 forBulletin:publisherMatchID2 inPhoneSection:sectionID finalReply:1 replyToken:tokenCopy];
    }

    publisherMatchID3 = [bulletinCopy publisherMatchID];
    sectionID2 = [bulletinCopy sectionID];
    sectionMatchID = [bulletinCopy sectionMatchID];
    dateOrRecencyDate = [bulletinCopy dateOrRecencyDate];
    [(BLTBulletinDistributor *)self _notifyGizmoOfCancelBulletin:publisherMatchID3 sectionID:sectionID2 universalSectionID:sectionMatchID feed:feed withBulletinDate:dateOrRecencyDate];
  }
}

- (void)_sendPBBulletin:(id)bulletin forBulletin:(id)forBulletin feed:(unint64_t)feed updateType:(unint64_t)type playLightsAndSirens:(BOOL)sirens shouldSendReplyIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  sirensCopy = sirens;
  bulletinCopy = bulletin;
  forBulletinCopy = forBulletin;
  connectionStatus = [(BLTRemoteObject *)self->_gizmoConnection connectionStatus];
  v15 = connectionStatus;
  if (connectionStatus != 1)
  {
    v16 = blt_general_log(connectionStatus);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_241FB3000, v16, OS_LOG_TYPE_DEFAULT, "Not locally connected to gizmo. Replying to local bulletin board immediately.", buf, 2u);
    }

    if (neededCopy)
    {
      publisherMatchID = [forBulletinCopy publisherMatchID];
      sectionID = [forBulletinCopy sectionID];
      replyToken = [bulletinCopy replyToken];
      [(BLTBulletinDistributor *)self _handleDidPlayLightsAndSirens:0 forBulletin:publisherMatchID inPhoneSection:sectionID finalReply:0 replyToken:replyToken];
    }
  }

  isPairedDeviceReady = [(BLTRemoteObject *)self->_gizmoConnection isPairedDeviceReady];
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{BLTGetPlayLightsAndSirensTimeout(v15 == 1, v20)}];
  date = [MEMORY[0x277CBEAA8] date];
  objc_initWeak(buf, self);
  replyToken2 = [bulletinCopy replyToken];
  gizmoConnection = self->_gizmoConnection;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __114__BLTBulletinDistributor__sendPBBulletin_forBulletin_feed_updateType_playLightsAndSirens_shouldSendReplyIfNeeded___block_invoke;
  v31[3] = &unk_278D32688;
  objc_copyWeak(v35, buf);
  v25 = forBulletinCopy;
  v32 = v25;
  v35[1] = feed;
  v36 = sirensCopy;
  v26 = date;
  v33 = v26;
  v35[2] = v15;
  v37 = isPairedDeviceReady;
  v38 = neededCopy;
  v27 = replyToken2;
  v34 = v27;
  [(BLTRemoteGizmoClient *)gizmoConnection addBulletin:bulletinCopy playLightsAndSirens:sirensCopy updateType:type withTimeout:v21 completion:v31];

  objc_destroyWeak(v35);
  objc_destroyWeak(buf);
}

void __114__BLTBulletinDistributor__sendPBBulletin_forBulletin_feed_updateType_playLightsAndSirens_shouldSendReplyIfNeeded___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  LOWORD(v4) = *(a1 + 81);
  [WeakRetained _handleAddBulletin:*(a1 + 32) feed:*(a1 + 64) shouldPlayLightsAndSirens:*(a1 + 80) performedWithSuccess:a2 sendAttemptTime:*(a1 + 40) connectionStatus:*(a1 + 72) isGizmoReady:v4 shouldSendReplyIfNeeded:*(a1 + 48) replyToken:?];
}

- (BOOL)_notifyGizmoOfBulletin:(id)bulletin forFeed:(unint64_t)feed updateType:(unint64_t)type playLightsAndSirens:(BOOL)sirens shouldSendReplyIfNeeded:(BOOL)needed attachment:(id)attachment attachmentType:(int64_t)attachmentType replyToken:(id)self0
{
  sirensCopy = sirens;
  v90 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  attachmentCopy = attachment;
  tokenCopy = token;
  v15 = blt_general_log(tokenCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    publisherMatchID = [bulletinCopy publisherMatchID];
    v17 = "NO";
    *buf = 138412802;
    v85 = publisherMatchID;
    if (sirensCopy)
    {
      v17 = "YES";
    }

    v86 = 2048;
    feedCopy = feed;
    v88 = 2080;
    v89 = v17;
    _os_log_impl(&dword_241FB3000, v15, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor _notifyGizmoOfBulletin with publisherMatchID: %@ forFeed: %lu playLightsAndSirens: %s", buf, 0x20u);
  }

  v71 = sirensCopy;

  [(BLTBulletinDistributor *)self _postWillSendBulletinToGizmoNotificationForBulletin:bulletinCopy];
  bulletinID = [bulletinCopy bulletinID];
  [(NSMutableSet *)self->_bulletinIDsWaitingOnGizmoAdd addObject:?];
  watchKitAppList = self->_watchKitAppList;
  sectionID = [bulletinCopy sectionID];
  v20 = [(BLTWatchKitAppList *)watchKitAppList watchKitAppDefinitionWithBundleID:sectionID];

  v21 = MEMORY[0x277CC1E60];
  sectionID2 = [bulletinCopy sectionID];
  v23 = [v21 applicationProxyForIdentifier:sectionID2];

  sectionID3 = [bulletinCopy sectionID];
  publisherMatchID2 = [bulletinCopy publisherMatchID];
  v26 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID3 publisherMatchID:publisherMatchID2];

  v27 = [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap gizmoSectionInfoForPhoneKey:v26];
  mappedSectionID = [v27 mappedSectionID];
  v29 = mappedSectionID;
  feedCopy2 = feed;
  if (mappedSectionID)
  {
    sectionID4 = mappedSectionID;
  }

  else
  {
    sectionID4 = [bulletinCopy sectionID];
  }

  v31 = sectionID4;

  v66 = [(BLTSettingSync *)self->_settingSync universalSectionIDForSectionID:v31];
  [(BLTRemoteGizmoClient *)self->_gizmoConnection queuePendingRequests];
  sectionConfiguration = self->_sectionConfiguration;
  sectionID5 = [bulletinCopy sectionID];
  v34 = [(BLTSectionConfigurationInternal *)sectionConfiguration watchVersionThatUsesUserInfoForContextForSectionID:sectionID5];

  v68 = v31;
  v65 = v34;
  if (v34)
  {
    v63 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportIsGreaterEqualVersion:{objc_msgSend(v34, "unsignedIntegerValue")}] ^ 1;
  }

  else
  {
    LOBYTE(v63) = 0;
  }

  v35 = self->_sectionConfiguration;
  sectionID6 = [bulletinCopy sectionID];
  v37 = [(BLTSectionConfigurationInternal *)v35 hasSectionIDOptedOutOfSubtitleRemovalForOlderWatches:sectionID6];

  v38 = self->_sectionConfiguration;
  sectionID7 = [bulletinCopy sectionID];
  v62 = [(BLTSectionConfigurationInternal *)v38 shouldUsePhoneExpirationDateForSectionID:sectionID7];

  v40 = self->_sectionConfiguration;
  sectionID8 = [bulletinCopy sectionID];
  v42 = [(BLTSectionConfigurationInternal *)v40 watchVersionThatUsesAttachmentURLForSectionID:sectionID8];

  v43 = self->_sectionConfiguration;
  sectionID9 = [bulletinCopy sectionID];
  v45 = [(BLTSectionConfigurationInternal *)v43 hasSectionIDOptedOutOfAttachmentCoordination:sectionID9];

  if (v42)
  {
    v46 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportIsGreaterEqualVersion:{objc_msgSend(v42, "unsignedIntegerValue")}] ^ 1;
  }

  else
  {
    v46 = 0;
  }

  if (v45)
  {
    v46 = 2;
  }

  v58 = v46;
  v57 = !v37;
  watchKitAppBundleID = [v20 watchKitAppBundleID];
  bbObserver = self->_bbObserver;
  teamID = [v23 teamID];
  [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap gizmoPublisherBulletinIDForPhoneKey:v26];
  v49 = v61 = v23;
  v50 = [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap categoryIDForBulletinKey:v26];
  [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap sectionSubtypeForBulletinKey:v26];
  v51 = v60 = v26;
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __149__BLTBulletinDistributor__notifyGizmoOfBulletin_forFeed_updateType_playLightsAndSirens_shouldSendReplyIfNeeded_attachment_attachmentType_replyToken___block_invoke;
  v75[3] = &unk_278D326B0;
  v75[4] = self;
  v76 = attachmentCopy;
  attachmentTypeCopy = attachmentType;
  v80 = feedCopy2;
  typeCopy = type;
  v82 = v71;
  neededCopy = needed;
  v77 = bulletinCopy;
  v78 = bulletinID;
  v73 = bulletinID;
  v52 = bulletinCopy;
  v53 = attachmentCopy;
  BYTE1(v56) = v57;
  LOBYTE(v56) = v63;
  LOBYTE(v55) = v62;
  [BLTPBBulletin bulletinWithBBBulletin:v52 sockPuppetAppBundleID:watchKitAppBundleID observer:bbObserver feed:feedCopy2 teamID:teamID universalSectionID:v66 shouldUseExpirationDate:v55 replyToken:tokenCopy gizmoLegacyPublisherBulletinID:v49 gizmoLegacyCategoryID:v50 gizmoSectionID:v68 gizmoSectionSubtype:v51 useUserInfoForContext:v56 removeSubtitleForOlderWatches:v58 attachOption:v75 completion:?];

  return 1;
}

uint64_t __149__BLTBulletinDistributor__notifyGizmoOfBulletin_forFeed_updateType_playLightsAndSirens_shouldSendReplyIfNeeded_attachment_attachmentType_replyToken___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v6 = a2;
  [v3 _attachAttachment:v4 attachmentType:v5 toBulletin:v6];
  [*(a1 + 32) _attachIconToBulletin:v6];
  [*(a1 + 32) _sendPBBulletin:v6 forBulletin:*(a1 + 48) feed:*(a1 + 72) updateType:*(a1 + 80) playLightsAndSirens:*(a1 + 88) shouldSendReplyIfNeeded:*(a1 + 89)];

  [*(a1 + 32) _performNextPendingBulletinUpdateForBulletinID:*(a1 + 56)];
  v7 = *(*(a1 + 32) + 112);
  v8 = *(a1 + 56);

  return [v7 removeObject:v8];
}

- (unint64_t)_nanoPresentableFeedFromPhoneFeed:(unint64_t)feed
{
  if ((feed & 0x817E) == 0x10)
  {
    return feed | 4;
  }

  else
  {
    return feed;
  }
}

- (BOOL)_willNanoPresent:(unint64_t)present forBulletin:(id)bulletin feed:(unint64_t)feed
{
  feedCopy = feed;
  v23 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  v9 = bulletinCopy;
  if ((feedCopy & 0x817E) != 0x10)
  {
    goto LABEL_6;
  }

  message = [bulletinCopy message];
  null = [MEMORY[0x277CBEB68] null];
  if (message == null)
  {
    isLoading = [v9 isLoading];

    if (isLoading)
    {
      goto LABEL_6;
    }
  }

  else
  {
    message2 = [v9 message];
    if ([message2 length])
    {

LABEL_6:
      v15 = 1;
      goto LABEL_7;
    }

    isLoading2 = [v9 isLoading];

    if (isLoading2)
    {
      goto LABEL_6;
    }
  }

  v19 = blt_general_log(v14);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    bulletinID = [v9 bulletinID];
    v21 = 138412290;
    v22 = bulletinID;
    _os_log_impl(&dword_241FB3000, v19, OS_LOG_TYPE_DEFAULT, "Bulletin with id: %@ has no message and was sent to sounds feed only. Should not coordinate", &v21, 0xCu);
  }

  v15 = 0;
LABEL_7:
  v16 = [(BLTBulletinDistributor *)self _willNanoPresent:present];

  return v15 & v16;
}

- (void)_reloadBulletins
{
  v16 = *MEMORY[0x277D85DE8];
  _obsoletionDateRelativeToNow = [(BLTBulletinDistributor *)self _obsoletionDateRelativeToNow];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = blt_general_log(dictionary);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = _obsoletionDateRelativeToNow;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ _reloadBulletins: obsoletionDate: %@", buf, 0x16u);
  }

  bbObserver = [(BLTBulletinDistributor *)self bbObserver];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__BLTBulletinDistributor__reloadBulletins__block_invoke;
  v9[3] = &unk_278D32750;
  v9[4] = self;
  v10 = dictionary;
  v11 = _obsoletionDateRelativeToNow;
  v7 = _obsoletionDateRelativeToNow;
  v8 = dictionary;
  [bbObserver getPublisherMatchIDsOfBulletinsPublishedAfterDate:v7 withCompletion:v9];
}

void __42__BLTBulletinDistributor__reloadBulletins__block_invoke(id *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__BLTBulletinDistributor__reloadBulletins__block_invoke_2;
  v14[3] = &unk_278D32728;
  v4 = a1[5];
  v14[4] = a1[4];
  v15 = v4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__BLTBulletinDistributor__reloadBulletins__block_invoke_5;
  v11[3] = &unk_278D316C8;
  v11[4] = a1[4];
  v12 = a1[6];
  v13 = a1[5];
  v5 = [BLTBulletinFetcher batchBulletinFetchForBulletinIDs:a2 fetcher:v14 completion:v11];
  [a1[4] setBulletinFetcher:v5];

  v7 = blt_general_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[6];
    v10 = [v8 bulletinFetcher];
    *buf = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "%@ _reloadBulletins: obsoletionDate: %@ bulletinFetcher: %@", buf, 0x20u);
  }
}

void __42__BLTBulletinDistributor__reloadBulletins__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = a2;
  v11 = [v8 bbObserver];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__BLTBulletinDistributor__reloadBulletins__block_invoke_3;
  v14[3] = &unk_278D32700;
  v12 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v12;
  v16 = v7;
  v13 = v7;
  [v11 getBulletinsForPublisherMatchIDs:v10 sectionID:v9 withCompletion:v14];
}

void __42__BLTBulletinDistributor__reloadBulletins__block_invoke_3(void *a1, void *a2)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__BLTBulletinDistributor__reloadBulletins__block_invoke_4;
  v10[3] = &unk_278D326D8;
  v4 = a1[5];
  v10[4] = a1[4];
  v11 = v4;
  [a2 enumerateObjectsUsingBlock:v10];
  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6, v7, v8);
  }
}

void __42__BLTBulletinDistributor__reloadBulletins__block_invoke_4(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 sectionID];
  v4 = [v16 publisherMatchID];
  v5 = [BLTBBBulletinKey bulletinKeyWithSectionID:v3 publisherMatchID:v4];

  v6 = [*(a1 + 32) gizmoLegacyMap];
  v7 = [v6 gizmoSectionInfoForPhoneKey:v5];
  v8 = [v7 mappedSectionID];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v16 sectionID];
  }

  v11 = v10;

  v12 = [*(a1 + 40) objectForKeyedSubscript:v11];
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB18] array];
    [*(a1 + 40) setObject:v12 forKeyedSubscript:v11];
  }

  v13 = objc_alloc_init(BLTPBBulletinIdentifier);
  v14 = [v16 recordID];
  [(BLTPBBulletinIdentifier *)v13 setRecordID:v14];

  v15 = [*(*(a1 + 32) + 152) gizmoPublisherBulletinIDForPhoneKey:v5];
  [(BLTPBBulletinIdentifier *)v13 setPublisherBulletinID:v15];

  [v12 addObject:v13];
}

uint64_t __42__BLTBulletinDistributor__reloadBulletins__block_invoke_5(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "%@ _reloadBulletins: obsoletionDate: %@ complete", &v6, 0x16u);
  }

  return [*(a1 + 32) _sendCurrentBulletinIdentifiers:*(a1 + 48)];
}

- (id)_obsoletionDateRelativeToNow
{
  date = [MEMORY[0x277CBEAA8] date];
  v3 = [date dateByAddingTimeInterval:-86400.0];

  return v3;
}

- (void)_sendCurrentBulletinIdentifiers:(id)identifiers
{
  v15 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = blt_general_log(identifiersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v13 = 2112;
    v14 = identifiersCopy;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ _sendCurrentBulletinIdentifiers: bulletinIdentifiersBySectionID: %@", buf, 0x16u);
  }

  v6 = objc_alloc_init(BLTPBFullBulletinList);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__BLTBulletinDistributor__sendCurrentBulletinIdentifiers___block_invoke;
  v9[3] = &unk_278D327A0;
  v7 = v6;
  v10 = v7;
  v8 = blt_general_log([(BLTPBFullBulletinList *)identifiersCopy enumerateKeysAndObjectsUsingBlock:v9]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "%@ _sendCurrentBulletinIdentifiers: fullList: %@", buf, 0x16u);
  }

  [(BLTRemoteGizmoClient *)self->_gizmoConnection updateBulletinList:v7];
}

void __58__BLTBulletinDistributor__sendCurrentBulletinIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(BLTPBSectionBulletinList);
  [(BLTPBSectionBulletinList *)v7 setSectionID:v6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__BLTBulletinDistributor__sendCurrentBulletinIdentifiers___block_invoke_2;
  v9[3] = &unk_278D32778;
  v10 = v7;
  v8 = v7;
  [v5 enumerateObjectsUsingBlock:v9];

  [*(a1 + 32) addSectionBulletinList:v8];
}

- (void)_performNextPendingBulletinUpdateForBulletinID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_lock(&self->_pendingBulletinUpdatesLock);
  v5 = [(NSMutableDictionary *)self->_pendingBulletinUpdates objectForKeyedSubscript:dCopy];
  os_unfair_lock_unlock(&self->_pendingBulletinUpdatesLock);
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = blt_general_log([v5 removeObjectAtIndex:0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      updateType = [v6 updateType];
      v9 = @"remove";
      if (updateType != 1)
      {
        v9 = 0;
      }

      if (!updateType)
      {
        v9 = @"modify";
      }

      v10 = v9;
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Performing pending update type %@ for %@", &v14, 0x16u);
    }

    updateType2 = [v6 updateType];
    if (updateType2 == 1)
    {
      bulletin = [v6 bulletin];
      -[BLTBulletinDistributor _performRemoveBulletin:forFeed:](self, "_performRemoveBulletin:forFeed:", bulletin, [v6 feed]);

      [(BLTBulletinDistributor *)self _performNextPendingBulletinUpdateForBulletinID:dCopy];
    }

    else if (!updateType2)
    {
      bulletin2 = [v6 bulletin];
      -[BLTBulletinDistributor _performModifyBulletin:forFeed:](self, "_performModifyBulletin:forFeed:", bulletin2, [v6 feed]);
    }
  }
}

- (BOOL)_enqueuBulletinUpdate:(unint64_t)update bulletin:(id)bulletin feed:(unint64_t)feed
{
  v24 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  bulletinID = [bulletinCopy bulletinID];
  v10 = [(NSMutableSet *)self->_bulletinIDsWaitingOnGizmoAdd containsObject:bulletinID];
  if (v10)
  {
    os_unfair_lock_lock(&self->_pendingBulletinUpdatesLock);
    array = [(NSMutableDictionary *)self->_pendingBulletinUpdates objectForKeyedSubscript:bulletinID];
    os_unfair_lock_unlock(&self->_pendingBulletinUpdatesLock);
    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
      os_unfair_lock_lock(&self->_pendingBulletinUpdatesLock);
      [(NSMutableDictionary *)self->_pendingBulletinUpdates setObject:array forKeyedSubscript:bulletinID];
      os_unfair_lock_unlock(&self->_pendingBulletinUpdatesLock);
    }

    v13 = blt_general_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"remove";
      if (update != 1)
      {
        v14 = 0;
      }

      if (!update)
      {
        v14 = @"modify";
      }

      v15 = v14;
      v18 = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = bulletinCopy;
      v22 = 2048;
      feedCopy = feed;
      _os_log_impl(&dword_241FB3000, v13, OS_LOG_TYPE_DEFAULT, "Enqueuing bulletin update: %@ for bulletin: %@ feed: %lu", &v18, 0x20u);
    }

    v16 = [BLTBulletinDistributorBulletinUpdate bulletinUpdateWithType:update bulletin:bulletinCopy feed:feed];
    [array addObject:v16];
  }

  return v10;
}

- (void)_removeTranscodedAttachmentIfNeededForBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  bulletinID = [bulletinCopy bulletinID];

  if (bulletinID)
  {
    v5 = BLTBulletinAttachmentsURL(bulletinCopy);
    if (v5)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v11 = 0;
      v7 = [defaultManager removeItemAtURL:v5 error:&v11];
      v8 = v11;

      if ((v7 & 1) == 0)
      {
        v10 = blt_general_log(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(BLTBulletinDistributor *)v5 _removeTranscodedAttachmentIfNeededForBulletin:v8, v10];
        }
      }
    }
  }
}

- (void)_cleanupForAddedBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  [(BLTBulletinDistributor *)self _removeTranscodedAttachmentIfNeededForBulletin:bulletinCopy];
  v7 = [MEMORY[0x277CE1F78] notificationForBulletin:bulletinCopy];
  gizmoLegacyMap = self->_gizmoLegacyMap;
  sectionID = [bulletinCopy sectionID];

  [(BLTGizmoLegacyMap *)gizmoLegacyMap unmapNotification:v7 sectionID:sectionID];
}

- (void)setReplyBlock:(id)block forSection:(id)section bulletin:(id)bulletin publicationDate:(id)date replyToken:(id)token
{
  v24 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  bulletinCopy = bulletin;
  tokenCopy = token;
  dateCopy = date;
  blockCopy = block;
  v16 = blt_general_log(blockCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = sectionCopy;
    v22 = 2112;
    v23 = bulletinCopy;
    _os_log_impl(&dword_241FB3000, v16, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor setReplyBlock: forSection: %@ bulletin: %@", &v20, 0x16u);
  }

  v17 = +[BLTLightsAndSirensReplyInfoCache sharedReplyCache];
  [v17 cacheReply:blockCopy withSectionID:sectionCopy bulletinID:bulletinCopy publicationDate:dateCopy replyToken:tokenCopy];

  v19 = blt_general_log(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_241FB3000, v19, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor saved new reply", &v20, 2u);
  }
}

- (void)clearReplyBlockForReplyToken:(id)token
{
  v10 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v4 = blt_general_log(tokenCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = tokenCopy;
    _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor clearReplyBlockForReplyToken: %@", &v8, 0xCu);
  }

  v5 = +[BLTLightsAndSirensReplyInfoCache sharedReplyCache];
  v6 = [v5 cacheDidPlayLightsAndSirens:0 withReplyToken:tokenCopy];

  v7 = +[BLTLightsAndSirensReplyInfoCache sharedReplyCache];
  [v7 purgeReplyInfo:v6 withReplyToken:tokenCopy];
}

- (id)_replyTokenForSectionID:(id)d publisherMatchID:(id)iD
{
  v4 = [BLTBBBulletinKey bulletinKeyWithSectionID:d publisherMatchID:iD];
  keyString = [v4 keyString];

  return keyString;
}

- (void)_subscriberWillAllowBulletin:(id)bulletin completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  completionCopy = completion;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6;
  v31 = __Block_byref_object_dispose__6;
  v32 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v8 = blt_general_log(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:8.0];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor _subscriberWillAllowBulletin with timeout %@", &buf, 0xCu);
  }

  clientReplyTimeoutManager = [(BLTBulletinDistributor *)self clientReplyTimeoutManager];
  publisherMatchID = [bulletinCopy publisherMatchID];
  sectionID = [bulletinCopy sectionID];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __66__BLTBulletinDistributor__subscriberWillAllowBulletin_completion___block_invoke;
  v22[3] = &unk_278D327C8;
  v24 = v25;
  v13 = completionCopy;
  v23 = v13;
  v14 = [clientReplyTimeoutManager addClientReplyTimeoutForBulletin:publisherMatchID sectionID:sectionID timeout:v22 handler:8.0];
  v15 = v28[5];
  v28[5] = v14;

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x2020000000;
  v35 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__BLTBulletinDistributor__subscriberWillAllowBulletin_completion___block_invoke_126;
  v17[3] = &unk_278D32818;
  p_buf = &buf;
  v20 = v25;
  v17[4] = self;
  v21 = &v27;
  v16 = v13;
  v18 = v16;
  [(BLTBulletinDistributor *)self _pingSubscriberWithBulletin:bulletinCopy ack:v17];

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);
}

uint64_t __66__BLTBulletinDistributor__subscriberWillAllowBulletin_completion___block_invoke(uint64_t a1)
{
  v2 = blt_general_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor _subscriberWillAllowBulletin timed out waiting for subscriber, returning allow bulletin", v4, 2u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  return (*(*(a1 + 32) + 16))();
}

void __66__BLTBulletinDistributor__subscriberWillAllowBulletin_completion___block_invoke_126(uint64_t a1, uint64_t a2)
{
  v4 = BLTWorkQueue(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__BLTBulletinDistributor__subscriberWillAllowBulletin_completion___block_invoke_2;
  block[3] = &unk_278D327F0;
  v10 = a2;
  block[4] = *(a1 + 32);
  v9 = *(a1 + 56);
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  dispatch_async(v4, block);
}

void __66__BLTBulletinDistributor__subscriberWillAllowBulletin_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor _subscriberWillAllowBulletin received ack from subscriber", &v9, 2u);
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v4 = blt_general_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_INFO, "BLTBulletinDistributor _subscriberWillAllowBulletin this is first ack", &v9, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v6 = blt_general_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_241FB3000, v6, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor _subscriberWillAllowBulletin not timed out, returning %@", &v9, 0xCu);
      }

      v8 = [*(a1 + 32) clientReplyTimeoutManager];
      [v8 invalidateClientReplyTimeout:*(*(*(a1 + 64) + 8) + 40)];

      (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 72) == 1);
    }
  }
}

- (void)observer:(id)observer addBulletin:(id)bulletin forFeed:(unint64_t)feed playLightsAndSirens:(BOOL)sirens attachment:(id)attachment attachmentType:(int64_t)type alwaysSend:(BOOL)send withReply:(id)self0
{
  v75 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  bulletinCopy = bulletin;
  attachmentCopy = attachment;
  replyCopy = reply;
  sectionID = [bulletinCopy sectionID];

  if (sectionID)
  {
    mruCacheOfSectionIDs = self->_mruCacheOfSectionIDs;
    sectionID2 = [bulletinCopy sectionID];
    [(BLTSimpleCache *)mruCacheOfSectionIDs cacheObject:sectionID2];

    kdebug_trace();
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke;
    v62[3] = &unk_278D32868;
    sendCopy = send;
    v62[4] = self;
    v22 = bulletinCopy;
    v63 = v22;
    feedCopy = feed;
    sirensCopy = sirens;
    v65 = replyCopy;
    v64 = attachmentCopy;
    typeCopy = type;
    v23 = MEMORY[0x245D067A0](v62);
    [(BLTBulletinDistributor *)self _mapBulletin:v22];
    if (send)
    {
      v23[2](v23);
    }

    else
    {
      sectionID3 = [v22 sectionID];
      publisherMatchID = [v22 publisherMatchID];
      v45 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID3 publisherMatchID:publisherMatchID];

      v27 = [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap gizmoSectionInfoForPhoneKey:v45];
      icon = [v22 icon];
      [v27 setIcon:icon];

      sectionDisplayName = [v22 sectionDisplayName];
      [v27 setDisplayName:sectionDisplayName];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v71 = 0x3032000000;
      v72 = __Block_byref_object_copy__6;
      v73 = __Block_byref_object_dispose__6;
      v74 = 0;
      v58 = 0;
      v59 = &v58;
      v60 = 0x2020000000;
      v61 = 0;
      clientReplyTimeoutManager = [(BLTBulletinDistributor *)self clientReplyTimeoutManager];
      publisherMatchID2 = [v22 publisherMatchID];
      sectionID4 = [v22 sectionID];
      v34 = BLTGetSettingSyncForNotificationTimeout(sectionID4, v33);
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_2;
      v55[3] = &unk_278D327C8;
      v57 = &v58;
      v35 = v23;
      v56 = v35;
      v36 = [clientReplyTimeoutManager addClientReplyTimeoutForBulletin:publisherMatchID2 sectionID:sectionID4 timeout:v55 handler:v34];
      v37 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v36;

      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_142;
      v51[3] = &unk_278D32890;
      v53 = &v58;
      v51[4] = self;
      p_buf = &buf;
      v52 = v35;
      v38 = MEMORY[0x245D067A0](v51);
      settingSync = self->_settingSync;
      sectionID5 = [v22 sectionID];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_2_143;
      v48[3] = &unk_278D327C8;
      v50 = &v58;
      v41 = v38;
      v49 = v41;
      v42 = [(BLTSettingSync *)settingSync performSyncIfNeededForSectionID:sectionID5 gizmoSectionInfo:v27 completion:v48];

      if (v42 == 2 && (v59[3] & 1) == 0)
      {
        v44 = blt_general_log(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [BLTBulletinDistributor observer:addBulletin:forFeed:playLightsAndSirens:attachment:attachmentType:alwaysSend:withReply:];
        }

        v41[2](v41);
      }

      _Block_object_dispose(&v58, 8);
      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v24 = blt_general_log(v19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = bulletinCopy;
      _os_log_impl(&dword_241FB3000, v24, OS_LOG_TYPE_ERROR, "Serious error adding bulletin: bulletin has no section ID.  Dropping bulletin.\n%@", &buf, 0xCu);
    }

    _BLTCaptureBug(@"BBAddBulletinSectionNil");
  }
}

void __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*(a1 + 80))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(*(a1 + 32) + 88);
    v4 = [*(a1 + 40) sectionID];
    v5 = [*(a1 + 40) subsectionIDs];
    v6 = [*(a1 + 40) sectionSubtype];
    v7 = [*(a1 + 40) categoryID];
    v2 = [v3 willNanoPresentNotificationForSectionID:v4 subsectionIDs:v5 subtype:v6 category:v7 ignoresDowntime:objc_msgSend(*(a1 + 40) isCritical:{"ignoresDowntime"), objc_msgSend(*(a1 + 40), "hasCriticalIcon")}];
  }

  v8 = blt_general_log(a1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = [v9 publisherMatchID];
    v11 = *(a1 + 64);
    v12 = "YES";
    if (*(a1 + 81))
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    if (![*(a1 + 40) turnsOnDisplay])
    {
      v12 = "NO";
    }

    v14 = _stringForSettingsWillPresentBlockedBy(v2);
    *buf = 138413570;
    v42 = v9;
    v43 = 2112;
    v44 = v10;
    v45 = 2048;
    v46 = v11;
    v47 = 2080;
    v48 = v13;
    v49 = 2080;
    v50 = v12;
    v51 = 2112;
    v52 = v14;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor addBulletin: %@ (publisherMatchID: %@) forFeed: %lu playLightsAndSirens: %s turnsOnDisplay: %s willPresentNotification: %@", buf, 0x3Eu);
  }

  if (![*(a1 + 32) _willNanoPresent:v2 forBulletin:*(a1 + 40) feed:*(a1 + 64)])
  {
    [*(a1 + 32) _cleanupForAddedBulletin:*(a1 + 40)];
    (*(*(a1 + 56) + 16))();
    return;
  }

  v15 = *(a1 + 64) & 0x817ELL;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_131;
  v33[3] = &unk_278D32840;
  v39 = v15 != 0;
  v36 = v2;
  v16 = *(a1 + 40);
  v17 = *(a1 + 56);
  v37 = *(a1 + 64);
  *&v18 = v16;
  *(&v18 + 1) = *(a1 + 32);
  v30 = v18;
  v19 = v17;
  v40 = *(a1 + 81);
  *&v20 = *(a1 + 48);
  *(&v20 + 1) = v19;
  v34 = v30;
  v35 = v20;
  v38 = *(a1 + 72);
  v21 = MEMORY[0x245D067A0](v33);
  v22 = [*(*(a1 + 32) + 144) subscribers];
  v23 = [*(a1 + 40) sectionID];
  v24 = [v22 hasSubscribersForSectionID:v23];

  v26 = blt_general_log(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = "NO";
    if (v24)
    {
      v27 = "YES";
    }

    *buf = 136315138;
    v42 = v27;
    _os_log_impl(&dword_241FB3000, v26, OS_LOG_TYPE_INFO, "BLTBulletinDistributor addBulletin hasSubscribers: %s", buf, 0xCu);
  }

  if (!v24)
  {
    goto LABEL_21;
  }

  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  if (!v15)
  {
    [v29 _pingSubscriberWithBulletin:v28 ack:0];
LABEL_21:
    v21[2](v21, 1);
    goto LABEL_22;
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_141;
  v31[3] = &unk_278D320A8;
  v32 = v21;
  [v29 _subscriberWillAllowBulletin:v28 completion:v31];

LABEL_22:
}

void __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_131(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a2 && *(a1 + 88) == 1)
  {
    v4 = *(a1 + 64);
    if ([*(a1 + 32) hasCriticalIcon])
    {
      v5 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsCriticalAndGroupingSettings] ^ 1;
    }

    else
    {
      v5 = 0;
    }

    v9 = [*(a1 + 32) blt_isVOIPCall];
    v10 = v9;
    v11 = 1;
    if (v4 != 128 && v4 != 256)
    {
      v11 = v5 | v9;
    }

    v12 = [*(a1 + 40) _nanoPresentableFeedFromPhoneFeed:*(a1 + 72)];
    v13 = [*(a1 + 32) sectionID];
    if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsAddBulletinReplyToken])
    {
      v14 = [MEMORY[0x277CCAD78] UUID];
      [v14 UUIDString];
    }

    else
    {
      v15 = *(a1 + 40);
      v14 = [*(a1 + 32) publisherMatchID];
      [v15 _replyTokenForSectionID:v13 publisherMatchID:v14];
    }
    v16 = ;

    if (v11)
    {
      if (v4 == 128)
      {
        v18 = "Wrist detection disabled";
      }

      else if (v4 == 256)
      {
        v18 = "Forwarded only";
      }

      else
      {
        v23 = "Alerting everywhere";
        if (v10)
        {
          v23 = "Ringtone call";
        }

        if (v5)
        {
          v18 = "Critical icon";
        }

        else
        {
          v18 = v23;
        }
      }

      v24 = blt_general_log(v17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v31 = v18;
        _os_log_impl(&dword_241FB3000, v24, OS_LOG_TYPE_INFO, "BLTBulletinDistributor: %s so lie to Companion that Gizmo won't alert.", buf, 0xCu);
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v19 = *(a1 + 56);
      v20 = *(a1 + 40);
      v21 = [*(a1 + 32) publisherMatchID];
      v22 = [*(a1 + 32) publishDate];
      [v20 setReplyBlock:v19 forSection:v13 bulletin:v21 publicationDate:v22 replyToken:v16];
    }

    v26 = *(a1 + 32);
    v25 = *(a1 + 40);
    v27 = [v26 turnsOnDisplay];
    if (!(v11 & 1 | ((v27 & 1) == 0)))
    {
      v27 = *(a1 + 89);
    }

    v28 = [v25 _notifyGizmoOfBulletin:v26 forFeed:v12 updateType:0 playLightsAndSirens:v27 & 1 shouldSendReplyIfNeeded:(v11 ^ 1) & 1 attachment:*(a1 + 48) attachmentType:*(a1 + 80) replyToken:v16];
    if ((v28 & 1) == 0)
    {
      v29 = blt_general_log(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241FB3000, v29, OS_LOG_TYPE_DEFAULT, "Will not notify gizmo", buf, 2u);
      }

      [*(a1 + 40) _cleanupForAddedBulletin:*(a1 + 32)];
      if ((v11 & 1) == 0)
      {
        [*(a1 + 40) clearReplyBlockForReplyToken:v16];
        (*(*(a1 + 56) + 16))();
      }
    }
  }

  else
  {
    v6 = blt_general_log(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = "subscriber suppressed";
      if (a2)
      {
        v7 = "unknown reason";
      }

      if (*(a1 + 88))
      {
        v8 = v7;
      }

      else
      {
        v8 = "Not in interrupting feed";
      }

      *buf = 136315138;
      v31 = v8;
      _os_log_impl(&dword_241FB3000, v6, OS_LOG_TYPE_INFO, "BLTBulletinDistributor: %s so not going to coordinate.", buf, 0xCu);
    }

    [*(a1 + 40) _cleanupForAddedBulletin:*(a1 + 32)];
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = blt_general_log(result);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_2_cold_1();
    }

    *(*(*(v1 + 40) + 8) + 24) = 1;
    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

uint64_t __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_142(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v2 = [*(a1 + 32) clientReplyTimeoutManager];
  [v2 invalidateClientReplyTimeout:*(*(*(a1 + 56) + 8) + 40)];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __122__BLTBulletinDistributor_observer_addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_withReply___block_invoke_2_143(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = blt_general_log(result);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "Sync'ing section info completed. Performing add bulletin now", v3, 2u);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

- (void)observer:(id)observer modifyBulletin:(id)bulletin forFeed:(unint64_t)feed
{
  v21 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  v8 = blt_general_log(bulletinCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    bbObserver = [(BLTBulletinDistributor *)self bbObserver];
    v13 = 138413058;
    selfCopy = self;
    v15 = 2112;
    v16 = bbObserver;
    v17 = 2112;
    v18 = bulletinCopy;
    v19 = 2048;
    feedCopy = feed;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "%@ observer: %@ modifyBulletin: %@ feed: %lu", &v13, 0x2Au);
  }

  sectionID = [(BLTBulletinDistributor *)bulletinCopy sectionID];

  if (sectionID)
  {
    if (![(BLTBulletinDistributor *)self _enqueuBulletinUpdate:0 bulletin:bulletinCopy feed:feed])
    {
      [(BLTBulletinDistributor *)self _performModifyBulletin:bulletinCopy forFeed:feed];
    }
  }

  else
  {
    v12 = blt_general_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      selfCopy = bulletinCopy;
      _os_log_impl(&dword_241FB3000, v12, OS_LOG_TYPE_ERROR, "Serious error modifying bulletin: bulletin has no section ID.  Dropping bulletin.\n%@", &v13, 0xCu);
    }

    _BLTCaptureBug(@"BBModifyBulletinSectionNil");
  }
}

- (void)_performModifyBulletin:(id)bulletin forFeed:(unint64_t)feed
{
  v12 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  v7 = blt_general_log(bulletinCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    feedCopy = feed;
    v10 = 2112;
    v11 = bulletinCopy;
    _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Modifying bulletin for feed: %lu %@", buf, 0x16u);
  }

  [(BLTBulletinDistributor *)self _notifyGizmoOfBulletin:bulletinCopy forFeed:feed updateType:1 playLightsAndSirens:0 shouldSendReplyIfNeeded:0 attachment:0 attachmentType:0 replyToken:0];
}

- (void)observer:(id)observer removeBulletin:(id)bulletin forFeed:(unint64_t)feed
{
  v25 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  bulletinCopy = bulletin;
  v10 = blt_general_log(bulletinCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (feed == 8)
  {
    if (v11)
    {
      bbObserver = [(BLTBulletinDistributor *)self bbObserver];
      v17 = 138413058;
      selfCopy2 = self;
      v19 = 2112;
      v20 = bbObserver;
      v21 = 2112;
      v22 = bulletinCopy;
      v23 = 2048;
      feedCopy = 8;
      _os_log_impl(&dword_241FB3000, v10, OS_LOG_TYPE_DEFAULT, "%@ observer: %@ removeBulletin: %@ feed: %lu - lock screen feed only - ignoring", &v17, 0x2Au);
    }
  }

  else
  {
    if (v11)
    {
      bbObserver2 = [(BLTBulletinDistributor *)self bbObserver];
      v17 = 138413058;
      selfCopy2 = self;
      v19 = 2112;
      v20 = bbObserver2;
      v21 = 2112;
      v22 = bulletinCopy;
      v23 = 2048;
      feedCopy = feed;
      _os_log_impl(&dword_241FB3000, v10, OS_LOG_TYPE_DEFAULT, "%@ observer: %@ removeBulletin: %@ feed: %lu", &v17, 0x2Au);
    }

    sectionID = [(BLTBulletinDistributor *)bulletinCopy sectionID];

    if (sectionID)
    {
      if (![(BLTBulletinDistributor *)self _enqueuBulletinUpdate:1 bulletin:bulletinCopy feed:feed])
      {
        [(BLTBulletinDistributor *)self _performRemoveBulletin:bulletinCopy forFeed:feed];
      }
    }

    else
    {
      v16 = blt_general_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        selfCopy2 = bulletinCopy;
        _os_log_impl(&dword_241FB3000, v16, OS_LOG_TYPE_ERROR, "Serious error removing bulletin: bulletin has no section ID.  Dropping bulletin.\n%@", &v17, 0xCu);
      }

      _BLTCaptureBug(@"BBRemoveBulletinSectionNil");
    }
  }
}

- (void)_performRemoveBulletin:(id)bulletin forFeed:(unint64_t)feed
{
  v42 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  v7 = blt_general_log(bulletinCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 134218242;
    feedCopy = feed;
    v40 = 2112;
    v41 = bulletinCopy;
    _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Removing bulletin for feed: %lu %@", &v38, 0x16u);
  }

  if ((feed & 8) != 0)
  {
    lockScreenFeed = self->_lockScreenFeed;
    bulletinID = [bulletinCopy bulletinID];
    [(NSMutableSet *)lockScreenFeed removeObject:bulletinID];
  }

  if (feed)
  {
    noticesFeed = self->_noticesFeed;
    bulletinID2 = [bulletinCopy bulletinID];
    [(NSMutableSet *)noticesFeed removeObject:bulletinID2];
  }

  v12 = self->_lockScreenFeed;
  bulletinID3 = [bulletinCopy bulletinID];
  if (([(NSMutableSet *)v12 containsObject:bulletinID3]& 1) != 0)
  {
    goto LABEL_16;
  }

  v14 = self->_noticesFeed;
  bulletinID4 = [bulletinCopy bulletinID];
  LOBYTE(v14) = [(NSMutableSet *)v14 containsObject:bulletinID4];

  if ((v14 & 1) == 0)
  {
    bulletinID3 = [MEMORY[0x277CBEAA8] date];
    dateOrRecencyDate = [bulletinCopy dateOrRecencyDate];
    v17 = [dateOrRecencyDate dateByAddingTimeInterval:86400.0];
    [v17 timeIntervalSinceDate:bulletinID3];
    v19 = v18;

    if (v19 <= 0.0)
    {
      v20 = 0;
    }

    else
    {
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    }

    sectionID = [bulletinCopy sectionID];
    publisherMatchID = [bulletinCopy publisherMatchID];
    v23 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:publisherMatchID];

    v24 = [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap gizmoSectionInfoForPhoneKey:v23];
    mappedSectionID = [v24 mappedSectionID];
    v26 = mappedSectionID;
    if (mappedSectionID)
    {
      sectionID2 = mappedSectionID;
    }

    else
    {
      sectionID2 = [bulletinCopy sectionID];
    }

    v28 = sectionID2;

    gizmoConnection = self->_gizmoConnection;
    v30 = [(BLTGizmoLegacyMap *)self->_gizmoLegacyMap gizmoPublisherBulletinIDForPhoneKey:v23];
    recordID = [bulletinCopy recordID];
    [(BLTRemoteGizmoClient *)gizmoConnection removeBulletinWithPublisherBulletinID:v30 recordID:recordID sectionID:v28 withTimeout:v20];

    [(BLTBulletinDistributor *)self _cleanupForAddedBulletin:bulletinCopy];
    attachmentHashCache = self->_attachmentHashCache;
    sectionID3 = [bulletinCopy sectionID];
    publisherMatchID2 = [bulletinCopy publisherMatchID];
    [(BLTHashCache *)attachmentHashCache updateCacheWithItems:0 forSectionID:sectionID3 matchID:publisherMatchID2 result:0];

    iconHashCache = self->_iconHashCache;
    sectionID4 = [bulletinCopy sectionID];
    publisherMatchID3 = [bulletinCopy publisherMatchID];
    [(BLTHashCache *)iconHashCache updateCacheWithItems:0 forSectionID:sectionID4 matchID:publisherMatchID3 result:0];

LABEL_16:
  }
}

- (void)observer:(id)observer updateGlobalSettings:(id)settings
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = blt_general_log(-[BLTBulletinDistributor setSummarizationSetting:](self, "setSummarizationSetting:", [settings globalSummarizationSetting]));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BLTBulletinDistributor summarizationSetting](self, "summarizationSetting")}];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "Updated summarization setting to %@", &v7, 0xCu);
  }
}

- (void)_handleDidPlayLightsAndSirens:(BOOL)sirens forBulletin:(id)bulletin inPhoneSection:(id)section finalReply:(BOOL)reply replyToken:(id)token
{
  sirensCopy = sirens;
  v12 = MEMORY[0x277CBEAA8];
  tokenCopy = token;
  sectionCopy = section;
  bulletinCopy = bulletin;
  date = [v12 date];
  LOBYTE(v16) = reply;
  [(BLTBulletinDistributor *)self _handleDidPlayLightsAndSirens:sirensCopy forBulletin:bulletinCopy inPhoneSection:sectionCopy transmissionDate:date receptionDate:date fromGizmo:0 finalReply:v16 replyToken:tokenCopy];
}

- (void)handleDidPlayLightsAndSirens:(BOOL)sirens forBulletin:(id)bulletin inPhoneSection:(id)section transmissionDate:(id)date receptionDate:(id)receptionDate replyToken:(id)token
{
  bulletinCopy = bulletin;
  sectionCopy = section;
  dateCopy = date;
  receptionDateCopy = receptionDate;
  tokenCopy = token;
  v19 = BLTWorkQueue(tokenCopy);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__BLTBulletinDistributor_handleDidPlayLightsAndSirens_forBulletin_inPhoneSection_transmissionDate_receptionDate_replyToken___block_invoke;
  block[3] = &unk_278D328B8;
  sirensCopy = sirens;
  block[4] = self;
  v26 = bulletinCopy;
  v27 = sectionCopy;
  v28 = dateCopy;
  v29 = receptionDateCopy;
  v30 = tokenCopy;
  v20 = tokenCopy;
  v21 = receptionDateCopy;
  v22 = dateCopy;
  v23 = sectionCopy;
  v24 = bulletinCopy;
  dispatch_async(v19, block);
}

- (void)_handleDidPlayLightsAndSirens:(BOOL)sirens forBulletin:(id)bulletin inPhoneSection:(id)section transmissionDate:(id)date receptionDate:(id)receptionDate fromGizmo:(BOOL)gizmo finalReply:(BOOL)reply replyToken:(id)self0
{
  gizmoCopy = gizmo;
  sirensCopy = sirens;
  v49 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  sectionCopy = section;
  dateCopy = date;
  tokenCopy = token;
  activePairedDeviceSupportsAddBulletinReplyToken = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsAddBulletinReplyToken];
  if ((activePairedDeviceSupportsAddBulletinReplyToken & 1) == 0)
  {
    v20 = [(BLTBulletinDistributor *)self _replyTokenForSectionID:sectionCopy publisherMatchID:bulletinCopy];

    tokenCopy = v20;
  }

  if (tokenCopy)
  {
    if (sirensCopy)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    v22 = +[BLTLightsAndSirensReplyInfoCache sharedReplyCache];
    v23 = [v22 cacheDidPlayLightsAndSirens:v21 withReplyToken:tokenCopy];

    if (!v23)
    {
      publisherMatchID = blt_general_log(v24);
      if (os_log_type_enabled(publisherMatchID, OS_LOG_TYPE_ERROR))
      {
        [BLTBulletinDistributor _handleDidPlayLightsAndSirens:forBulletin:inPhoneSection:transmissionDate:receptionDate:fromGizmo:finalReply:replyToken:];
      }

      goto LABEL_31;
    }

    publisherMatchID = [v23 publisherMatchID];
    sectionID = [v23 sectionID];
    v27 = blt_general_log(sectionID);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = "NO";
      *v42 = 136315906;
      if (sirensCopy)
      {
        v28 = "YES";
      }

      *&v42[4] = v28;
      v43 = 2112;
      v44 = tokenCopy;
      v45 = 2112;
      v46 = publisherMatchID;
      v47 = 2112;
      v48 = sectionID;
      _os_log_impl(&dword_241FB3000, v27, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor handleDidPlayLightsAndSirens: %s forReplyToken: %@ bulletin: %@ inSection: %@", v42, 0x2Au);
    }

    if (gizmoCopy)
    {
      v30 = blt_perf_log(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSinceDate:dateCopy];
        *v42 = 138412802;
        *&v42[4] = sectionID;
        v43 = 2112;
        v44 = publisherMatchID;
        v45 = 2048;
        v46 = v32;
        _os_log_impl(&dword_241FB3000, v30, OS_LOG_TYPE_INFO, "%@.%@.GizmoToCompanionDelay: %f", v42, 0x20u);
      }

      v34 = blt_perf_log(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        date2 = [MEMORY[0x277CBEAA8] date];
        bulletinPublicationDate = [v23 bulletinPublicationDate];
        [date2 timeIntervalSinceDate:bulletinPublicationDate];
        *v42 = 138412802;
        *&v42[4] = sectionID;
        v43 = 2112;
        v44 = publisherMatchID;
        v45 = 2048;
        v46 = v37;
        _os_log_impl(&dword_241FB3000, v34, OS_LOG_TYPE_INFO, "%@.%@.PublicationToReplayDelay: %f", v42, 0x20u);
      }
    }

    sendReply = [v23 sendReply];
    v39 = sendReply;
    v40 = blt_general_log(sendReply);
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    if (v39)
    {
      if (v41)
      {
        *v42 = 0;
        _os_log_impl(&dword_241FB3000, v40, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor sending reply", v42, 2u);
      }

      if (!reply)
      {
        goto LABEL_30;
      }

      v40 = +[BLTLightsAndSirensReplyInfoCache sharedReplyCache];
      [v40 purgeReplyInfo:v23 withReplyToken:tokenCopy];
    }

    else if (v41)
    {
      *v42 = 0;
      _os_log_impl(&dword_241FB3000, v40, OS_LOG_TYPE_DEFAULT, "BLTBulletinDistributor saved didPlayLightsAndSirens state", v42, 2u);
    }

LABEL_30:
LABEL_31:

    goto LABEL_32;
  }

  v23 = blt_general_log(activePairedDeviceSupportsAddBulletinReplyToken);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [BLTBulletinDistributor _handleDidPlayLightsAndSirens:forBulletin:inPhoneSection:transmissionDate:receptionDate:fromGizmo:finalReply:replyToken:];
  }

LABEL_32:
}

- (void)handleAction:(id)action
{
  v18 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = blt_general_log(actionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v16 = 2112;
    v17 = actionCopy;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ handleAction: %@", buf, 0x16u);
  }

  bbObserver = [(BLTBulletinDistributor *)self bbObserver];
  publisherBulletinID = [actionCopy publisherBulletinID];
  v13 = publisherBulletinID;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  sectionID = [actionCopy sectionID];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__BLTBulletinDistributor_handleAction___block_invoke;
  v11[3] = &unk_278D325A0;
  v11[4] = self;
  v12 = actionCopy;
  v10 = actionCopy;
  [bbObserver getBulletinsForPublisherMatchIDs:v8 sectionID:sectionID withCompletion:v11];
}

void __39__BLTBulletinDistributor_handleAction___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 firstObject];
  v5 = blt_general_log(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = 138412802;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_241FB3000, v6, OS_LOG_TYPE_DEFAULT, "%@ handleAction: %@ bulletins: %@", &v9, 0x20u);
    }

    [*(a1 + 32) handleAction:*(a1 + 40) bulletin:v4];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __39__BLTBulletinDistributor_handleAction___block_invoke_cold_1();
    }
  }
}

- (void)handleAction:(id)action bulletin:(id)bulletin
{
  actionCopy = action;
  bulletinCopy = bulletin;
  v8 = BLTWorkQueue(bulletinCopy);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke;
  block[3] = &unk_278D316C8;
  v12 = actionCopy;
  v13 = bulletinCopy;
  selfCopy = self;
  v9 = bulletinCopy;
  v10 = actionCopy;
  dispatch_async(v8, block);
}

void __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = BLTNameForActionType([*(a1 + 32) actionType]);
    v4 = [*(a1 + 32) publisherBulletinID];
    v5 = [*(a1 + 32) recordID];
    v6 = [*(a1 + 32) sectionID];
    *buf = 138413058;
    v61 = v3;
    v62 = 2112;
    v63 = v4;
    v64 = 2112;
    v65 = v5;
    v66 = 2112;
    v67 = v6;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "Received %@ action for publisherBulletinD: %@, recordID: %@, sectionID: %@", buf, 0x2Au);
  }

  v7 = 0x277D2B000uLL;
  v8 = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
  v9 = v8;
  if (v8 && [v8 bltVersion] <= 3)
  {
    v10 = [*(a1 + 40) sectionID];
    v11 = [v10 isEqualToString:@"com.apple.mobiletimer"];
  }

  else
  {
    v11 = 0;
  }

  v12 = (a1 + 32);
  v13 = [*(a1 + 32) actionType];
  if (v13 <= 6)
  {
    if (v13 != 3)
    {
      if (v13 != 6)
      {
        goto LABEL_33;
      }

      v18 = [*(a1 + 40) responseForSnoozeAction];
      v15 = v18;
      if (!v18)
      {
        goto LABEL_54;
      }

      goto LABEL_49;
    }

    v32 = [*(a1 + 40) responseForAcknowledgeAction];
    if (v32)
    {
      v15 = v32;
      v11 = 0;
      goto LABEL_49;
    }

    v40 = blt_general_log(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241FB3000, v40, OS_LOG_TYPE_DEFAULT, "Did not find acknowledgeAction. Synthesizing action.", buf, 2u);
    }

    v14 = [MEMORY[0x277CF3500] actionWithIdentifier:@"BLTAcknowledgeActionIdentifier"];
    v15 = [*(a1 + 40) responseForAction:v14];
  }

  else
  {
    if (v13 != 7)
    {
      if (v13 != 8)
      {
        if (v13 == 11)
        {
          v14 = [*(a1 + 40) followActivityAction];
          if (v14)
          {
            v15 = [*(a1 + 40) responseForAction:v14];
            v16 = blt_general_log(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = *(a1 + 48);
              *buf = 138412802;
              v61 = v17;
              v62 = 2112;
              v63 = v14;
              v64 = 2112;
              v65 = v15;
              _os_log_impl(&dword_241FB3000, v16, OS_LOG_TYPE_INFO, "%@ handleAction: followActivityAction: %@ response: %@", buf, 0x20u);
            }
          }

          else
          {
            v16 = blt_general_log(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_cold_1();
            }

            v15 = 0;
          }

          goto LABEL_48;
        }

LABEL_33:
        v33 = blt_general_log(v13);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_cold_2(v12);
        }

        goto LABEL_54;
      }

      v30 = *(a1 + 40);
      v31 = [v30 dismissAction];
      v15 = [v30 responseForAction:v31];

      if (!v15)
      {
        goto LABEL_54;
      }

LABEL_49:
      v41 = [*v12 context];
      v42 = [v41 mutableCopy];

      if (!v42)
      {
        v42 = [MEMORY[0x277CBEB38] dictionary];
      }

      v43 = [*(v7 + 3320) blt_boundedWaitForActivePairedDevice];
      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:NRWatchOSVersionForRemoteDevice()];
      [v42 setObject:v44 forKey:@"BLTNRWatchOSVersion"];

      [v15 setContext:v42];
      v45 = *(a1 + 48);
      v46 = *(v45 + 40);
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_154;
      v52[3] = &unk_278D328E0;
      v52[4] = v45;
      v53 = *(a1 + 32);
      v47 = v15;
      v54 = v47;
      [v46 sendResponse:v47 withCompletion:v52];
      if (v11)
      {
        v48 = *(*(a1 + 48) + 40);
        v49 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
        v50 = [*(a1 + 40) sectionID];
        [v48 clearBulletins:v49 inSection:v50];
      }

      goto LABEL_56;
    }

    v51 = v9;
    v14 = *v12;
    v19 = blt_general_log(v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v14 identifier];
      *buf = 138412290;
      v61 = v20;
      _os_log_impl(&dword_241FB3000, v19, OS_LOG_TYPE_INFO, "Looking for action with identifier: %@", buf, 0xCu);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v21 = [*(a1 + 40) supplementaryActions];
    v22 = [v21 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v56;
LABEL_22:
      v25 = 0;
      while (1)
      {
        if (*v56 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v55 + 1) + 8 * v25);
        v27 = [v26 identifier];
        v28 = [v14 identifier];
        v29 = [v27 isEqualToString:v28];

        if (v29)
        {
          break;
        }

        if (v23 == ++v25)
        {
          v23 = [v21 countByEnumeratingWithState:&v55 objects:v59 count:16];
          if (v23)
          {
            goto LABEL_22;
          }

          goto LABEL_28;
        }
      }

      v15 = [*(a1 + 40) responseForAction:v26];

      v12 = (a1 + 32);
      v9 = v51;
      v7 = 0x277D2B000;
      if (v15)
      {
        goto LABEL_48;
      }
    }

    else
    {
LABEL_28:

      v12 = (a1 + 32);
      v9 = v51;
      v7 = 0x277D2B000;
    }

    v15 = [v14 identifier];

    if (v15)
    {
      v35 = blt_general_log(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v14 identifier];
        *buf = 138412290;
        v61 = v36;
        _os_log_impl(&dword_241FB3000, v35, OS_LOG_TYPE_DEFAULT, "Did not find action with identifier: %@. Synthesizing action.", buf, 0xCu);
      }

      v37 = MEMORY[0x277CF3500];
      v38 = [v14 identifier];
      v39 = [v37 actionWithIdentifier:v38];

      v15 = [*(a1 + 40) responseForAction:v39];
    }
  }

LABEL_48:

  v11 = 0;
  if (v15)
  {
    goto LABEL_49;
  }

LABEL_54:
  v47 = blt_general_log(v18);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_cold_3(v12);
  }

LABEL_56:
}

void __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_154(void *a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = blt_general_log(a1);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v8 = a1[6];
      v9 = 138412802;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ handleAction: SUCCESS: actionInfo: %@ at sending response %@", &v9, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_154_cold_1();
  }
}

- (void)removeBulletinWithPublisherBulletinID:(id)d recordID:(id)iD sectionID:(id)sectionID
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  sectionIDCopy = sectionID;
  v11 = blt_general_log(sectionIDCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2112;
    v27 = iDCopy;
    v28 = 2112;
    v29 = sectionIDCopy;
    _os_log_impl(&dword_241FB3000, v11, OS_LOG_TYPE_DEFAULT, "%@ removeBulletinWithPublisherBulletinID: %@ recordID: %@ sectionID: %@", buf, 0x2Au);
  }

  bbObserver = [(BLTBulletinDistributor *)self bbObserver];
  v21 = dCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__BLTBulletinDistributor_removeBulletinWithPublisherBulletinID_recordID_sectionID___block_invoke;
  v17[3] = &unk_278D32908;
  v17[4] = self;
  v18 = dCopy;
  v19 = iDCopy;
  v20 = sectionIDCopy;
  v14 = sectionIDCopy;
  v15 = iDCopy;
  v16 = dCopy;
  [bbObserver getBulletinsForPublisherMatchIDs:v13 sectionID:v14 withCompletion:v17];
}

void __83__BLTBulletinDistributor_removeBulletinWithPublisherBulletinID_recordID_sectionID___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a2 firstObject];
  v4 = blt_general_log(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v12 = 138413314;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ removeBulletinWithPublisherBulletinID: %@ recordID: %@ sectionID: %@ bulletin: %@", &v12, 0x34u);
    }

    v5 = [*(a1 + 32) bbObserver];
    v10 = [MEMORY[0x277CBEB98] setWithObject:v3];
    v11 = [v3 sectionID];
    [v5 clearBulletins:v10 inSection:v11];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __83__BLTBulletinDistributor_removeBulletinWithPublisherBulletinID_recordID_sectionID___block_invoke_cold_1();
  }
}

- (BOOL)shouldSuppressLightsAndSirensNow
{
  currentCarPlayExternalDevice = [MEMORY[0x277CE64E8] currentCarPlayExternalDevice];
  v3 = currentCarPlayExternalDevice != 0;

  return v3;
}

- (void)willSendLightsAndSirensWithPublisherBulletinID:(id)d recordID:(id)iD inPhoneSection:(id)section systemApp:(BOOL)app completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  sectionCopy = section;
  completionCopy = completion;
  v16 = blt_general_log(completionCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v32 = 2112;
    v33 = dCopy;
    v34 = 2112;
    v35 = iDCopy;
    v36 = 2112;
    v37 = sectionCopy;
    _os_log_impl(&dword_241FB3000, v16, OS_LOG_TYPE_DEFAULT, "%@ willSendLightsAndSirensWithPublisherBulletinID: %@ recordID: %@ phoneSectionID: %@", buf, 0x2Au);
  }

  bbObserver = [(BLTBulletinDistributor *)self bbObserver];
  v29 = dCopy;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __118__BLTBulletinDistributor_willSendLightsAndSirensWithPublisherBulletinID_recordID_inPhoneSection_systemApp_completion___block_invoke;
  v23[3] = &unk_278D32930;
  v23[4] = self;
  v24 = dCopy;
  v25 = iDCopy;
  v26 = sectionCopy;
  appCopy = app;
  v27 = completionCopy;
  v19 = completionCopy;
  v20 = sectionCopy;
  v21 = iDCopy;
  v22 = dCopy;
  [bbObserver getBulletinsForPublisherMatchIDs:v18 sectionID:v20 withCompletion:v23];
}

void __118__BLTBulletinDistributor_willSendLightsAndSirensWithPublisherBulletinID_recordID_inPhoneSection_systemApp_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [a2 firstObject];
  v4 = blt_general_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v14 = 138413314;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_DEFAULT, "%@ removeBulletinWithPublisherBulletinID: %@ recordID: %@ phoneSectionID: %@ bulletin: %@", &v14, 0x34u);
    }
  }

  else
  {
    if (v5)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = 138413058;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_DEFAULT, "%@ removeBulletinWithPublisherBulletinID: %@ recordID: %@ phoneSectionID: %@ - failed no bulletin found", &v14, 0x2Au);
    }

    [*(a1 + 32) willSendLightsAndSirensWithRecordID:*(a1 + 48) inPhoneSection:*(a1 + 56) systemApp:*(a1 + 72) completion:*(a1 + 64)];
  }
}

- (void)willSendLightsAndSirensWithRecordID:(id)d inPhoneSection:(id)section systemApp:(BOOL)app completion:(id)completion
{
  dCopy = d;
  sectionCopy = section;
  completionCopy = completion;
  v13 = BLTWorkQueue(completionCopy);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__BLTBulletinDistributor_willSendLightsAndSirensWithRecordID_inPhoneSection_systemApp_completion___block_invoke;
  block[3] = &unk_278D32150;
  appCopy = app;
  block[4] = self;
  v18 = sectionCopy;
  v19 = dCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = dCopy;
  v16 = sectionCopy;
  dispatch_async(v13, block);
}

uint64_t __98__BLTBulletinDistributor_willSendLightsAndSirensWithRecordID_inPhoneSection_systemApp_completion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) != 1)
  {
    v9 = [*(*(a1 + 32) + 160) currentLayout];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v9 elements];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v12)
    {
      v13 = *v23;
      v14 = *MEMORY[0x277D0ABA0];
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v22 + 1) + 8 * i) identifier];
          v17 = [v16 isEqualToString:v14];

          if (v17)
          {
            LODWORD(v12) = 1;
            goto LABEL_18;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v18 = [v9 displayBacklightLevel];
    v19 = blt_general_log(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      LODWORD(v27[0]) = v18 != 0;
      WORD2(v27[0]) = 1024;
      *(v27 + 6) = v12;
      _os_log_impl(&dword_241FB3000, v19, OS_LOG_TYPE_DEFAULT, "willSendLightsAndSirensWithPublisherBulletinID: no stored bulletin and not for a system app. willSend based on screenIsOn: %{BOOL}u isUILocked: %{BOOL}u", buf, 0xEu);
    }

    v6 = 0;
    if (v18)
    {
      v10 = v12 ^ 1;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_23;
  }

  v2 = blt_general_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "willSendLightsAndSirensWithPublisherBulletinID: no stored bulletin but this is for a system app", buf, 2u);
  }

  v3 = [*(*(a1 + 32) + 144) subscribers];
  v4 = [v3 hasSubscribersForSectionID:*(a1 + 40)];

  if (v4)
  {
    v6 = 120;
    v7 = [*(*(a1 + 32) + 144) subscribers];
    [v7 pingWithRecordID:*(a1 + 48) forSectionID:*(a1 + 40)];

    v9 = blt_general_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v27[0] = 120;
      _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "willSendLightsAndSirensWithPublisherBulletinID: found subscribers sending response with additional time: %lu", buf, 0xCu);
    }

    v10 = 1;
LABEL_23:

    goto LABEL_25;
  }

  v6 = 0;
  v10 = 1;
LABEL_25:
  v20 = blt_general_log(v5);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    LODWORD(v27[0]) = v10;
    WORD2(v27[0]) = 2048;
    *(v27 + 6) = v6;
    _os_log_impl(&dword_241FB3000, v20, OS_LOG_TYPE_DEFAULT, "willSendLightsAndSirensWithPublisherBulletinID: sending back response willSend: %{BOOL}u additionalTime: %lu", buf, 0x12u);
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)_addBulletin:(id)bulletin forFeed:(unint64_t)feed playLightsAndSirens:(BOOL)sirens attachment:(id)attachment attachmentType:(int64_t)type alwaysSend:(BOOL)send completion:(id)completion
{
  sirensCopy = sirens;
  completionCopy = completion;
  bbObserver = self->_bbObserver;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __115__BLTBulletinDistributor__addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_completion___block_invoke;
  v20[3] = &unk_278D320A8;
  v21 = completionCopy;
  v18 = completionCopy;
  LOBYTE(v19) = send;
  [(BLTBulletinDistributor *)self observer:bbObserver addBulletin:bulletin forFeed:feed playLightsAndSirens:sirensCopy attachment:attachment attachmentType:type alwaysSend:v19 withReply:v20];
}

uint64_t __115__BLTBulletinDistributor__addBulletin_forFeed_playLightsAndSirens_attachment_attachmentType_alwaysSend_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_stateDescription
{
  settingSync = [(BLTBulletinDistributor *)self settingSync];
  objects = [(BLTSimpleCache *)self->_mruCacheOfSectionIDs objects];
  v5 = [settingSync settingsDescriptionForSectionIDs:objects];

  return v5;
}

- (void)_removeTranscodedAttachmentIfNeededForBulletin:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_241FB3000, log, OS_LOG_TYPE_ERROR, "Unable to remove transcoded attachment file at %@: %@", &v3, 0x16u);
}

void __39__BLTBulletinDistributor_handleAction___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  v3 = v0;
  _os_log_error_impl(&dword_241FB3000, v1, OS_LOG_TYPE_ERROR, "%@ handleAction: %@ bulletins: %@", v2, 0x20u);
}

void __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_cold_2(id *a1)
{
  v2 = BLTNameForActionType([*a1 actionType]);
  v3 = [*a1 publisherBulletinID];
  v4 = [*a1 recordID];
  v5 = [*a1 sectionID];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3(&dword_241FB3000, v6, v7, "No handler for %@ for publisherBulletinD: %@, recordID: %@, sectionID: %@", v8, v9, v10, v11);
}

void __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_cold_3(id *a1)
{
  v2 = BLTNameForActionType([*a1 actionType]);
  v3 = [*a1 publisherBulletinID];
  v4 = [*a1 recordID];
  v5 = [*a1 sectionID];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3(&dword_241FB3000, v6, v7, "Failed to find matching action for %@ for publisherBulletinD: %@, recordID: %@, sectionID: %@", v8, v9, v10, v11);
}

void __48__BLTBulletinDistributor_handleAction_bulletin___block_invoke_154_cold_1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __83__BLTBulletinDistributor_removeBulletinWithPublisherBulletinID_recordID_sectionID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

@end