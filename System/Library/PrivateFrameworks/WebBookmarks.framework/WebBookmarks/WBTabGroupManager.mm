@interface WBTabGroupManager
+ (id)ephemeralTabGroupManager;
- (BOOL)_didLocallyCreateUnnamedTabGroup:(id)group;
- (BOOL)_needsInitialBlankTabInTabGroup:(id)group;
- (BOOL)_shouldBeginDevicePresenceReporting;
- (BOOL)_shouldEndDevicePresenceReporting;
- (BOOL)closeAllTabsOnDevice:(id)device;
- (BOOL)closeTab:(id)tab onDevice:(id)device;
- (BOOL)hasMultipleProfiles;
- (BOOL)isTab:(id)tab childOfPinnedTabGroupOfNamedProfileOfUnnamedTabGroup:(id)group;
- (NSArray)allNamedTabGroupsUnsorted;
- (NSArray)allSyncedTabGroupsExceptRemoteUnnamedTabGroups;
- (NSArray)namedProfiles;
- (NSArray)namedTabGroupsInDefaultProfile;
- (NSArray)profiles;
- (NSSet)allNamedProfileIdentifiers;
- (NSSet)allProfileIdentifiers;
- (NSSet)recentlyAddedTabGroupsAwaitingFirstStartPage;
- (WBProfile)defaultProfile;
- (WBTabGroupManager)initWithCollection:(id)collection;
- (id)_allSyncedTabGroupsExceptRemoteUnnamedTabGroups;
- (id)_allTabGroupsUnsorted;
- (id)_devicesForProfileWithIdentifier:(id)identifier;
- (id)_findLocalDeviceForProfileWithIdentifier:(id)identifier;
- (id)_findOrCreateLocalDeviceForProfileWithIdentifier:(id)identifier;
- (id)_generatePositionForDevice:(id)device afterDevice:(id)afterDevice;
- (id)_generatePositionForProfile:(id)profile afterProfile:(id)afterProfile;
- (id)_generatePositionForTabGroup:(id)group afterTabGroup:(id)tabGroup;
- (id)_generatePositionForTabGroup:(id)group afterTabGroup:(id)tabGroup inTabGroups:(id)groups;
- (id)_insertDevice:(id)device inProfile:(id)profile completionHandler:(id)handler;
- (id)_insertTabGroup:(id)group afterTabGroup:(id)tabGroup isMove:(BOOL)move;
- (id)_namedProfiles;
- (id)_performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier:(id)identifier devicesByUUID:(id)d uninsertedSyncableTabsFromSyncableTabsByUUID:(id)iD;
- (id)_profiles;
- (id)_remoteDevicesForProfileWithIdentifier:(id)identifier;
- (id)_shareRecordIfNeededToBeginCollaborationForTabGroup:(id)group;
- (id)_shareRecordIfNeededToEndCollaborationForTabGroup:(id)group;
- (id)_tabCacheForTabGroup:(id)group;
- (id)_tabGroupAfterTabGroup:(id)group inTabGroups:(id)groups;
- (id)_tabGroupCacheForTabGroup:(id)group;
- (id)_tabGroupWithUUID:(id)d;
- (id)_tabGroupsForProfileWithIdentifier:(id)identifier;
- (id)_tabGroupsWithTabsToBeClosedForProfilesWithIdentifiers:(id)identifiers;
- (id)_tabWithUUID:(id)d;
- (id)_unnamedTabGroupsForDeviceWithUUID:(id)d;
- (id)_unnamedTabGroupsForProfileWithIdentifier:(id)identifier;
- (id)_unsafeTabGroupUUIDsToCKShares;
- (id)devicesForProfile:(id)profile;
- (id)insertUnnamedTabGroup:(id)group;
- (id)namedTabGroupsForProfileWithIdentifier:(id)identifier;
- (id)positionGenerator:(id)generator positionForRecordName:(id)name;
- (id)positionGenerator:(id)generator recordNameOfBookmarksAfterRecordWithName:(id)name;
- (id)positionGenerator:(id)generator recordNameOfBookmarksBeforeRecordWithName:(id)name;
- (id)profileWithIdentifier:(id)identifier;
- (id)profileWithServerID:(id)d;
- (id)shareRecordForTabGroup:(id)group;
- (id)syncedRemoteCloudTabDevicesForProfileWithIdentifier:(id)identifier;
- (id)tabGroupMatchingShare:(id)share;
- (id)tabGroupWithServerID:(id)d;
- (id)topScopedBookmarkListForTabGroup:(id)group;
- (id)unnamedTabGroupsForProfileWithIdentifier:(id)identifier;
- (id)updateProfileWithIdentifier:(id)identifier persist:(BOOL)persist usingBlock:(id)block completionHandler:(id)handler;
- (int64_t)_nextInMemoryPositionChangeID;
- (unint64_t)numberOfTabsToBeClosedForProfilesWithIdentifiers:(id)identifiers;
- (void)_addTab:(id)tab toParentIdentifierInTabsToParentIdentifiersDictionary:(id)dictionary;
- (void)_addTabsInTabGroups:(id)groups toParentIdentifierInTabsToParentIdentifiersDictionary:(id)dictionary;
- (void)_beginDevicePresenceReportingIfNeeded;
- (void)_cacheProfile:(id)profile;
- (void)_cacheTabGroup:(id)group creatorDeviceUUID:(id)d;
- (void)_dequeueNextAcceptCloudKitShareMetadataIfNeeded;
- (void)_didModifyUnnamedTabGroup:(id)group;
- (void)_didModifyUnnamedTabGroupInDeviceWithUUID:(id)d;
- (void)_didReceiveShare:(id)share forTabGroupUUID:(id)d;
- (void)_didRemoveProfiles:(id)profiles updateProfiles:(id)updateProfiles previousProfiles:(id)previousProfiles removeTabGroups:(id)groups updateTabGroups:(id)tabGroups previousTabGroups:(id)previousTabGroups;
- (void)_endDevicePresenceReportingIfNeeded;
- (void)_loadDatabase;
- (void)_mergeTabGroups:(id)groups;
- (void)_movePresenceForParticipantToTabWithUUID:(id)d;
- (void)_notifyScopedBookmarkChangesInFolderWithID:(int)d;
- (void)_notifySyncDidFinishedForScopedBookmarks;
- (void)_reloadProfilesAndTabGroupsAndNotify:(BOOL)notify withCompletionHandler:(id)handler;
- (void)_reorderTabGroup:(id)group afterTabGroup:(id)tabGroup;
- (void)_sendAcceptanceResult:(int64_t)result forShareMetadata:(id)metadata toHandler:(id)handler;
- (void)_tabGroupSyncDidFinish:(id)finish;
- (void)_uncacheTab:(id)tab;
- (void)_uncacheTabGroup:(id)group;
- (void)_updateDeviceNameIfNeededWithName:(id)name;
- (void)_updatePositionsForTabsInTabGroup:(id)group;
- (void)_updateTabGroupShares:(id)shares;
- (void)_updateTabsAndCacheTabGroup:(id)group withTabsByParentIdentifiers:(id)identifiers creatorDeviceUUID:(id)d;
- (void)_userDidAcceptTabGroupShareWithMetadata:(id)metadata inProfileWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_willFlushDeletedTabs:(id)tabs inTabGroup:(id)group;
- (void)acceptTabGroupShareWithMetadata:(id)metadata handler:(id)handler;
- (void)activeParticipantsDidUpdateInTabGroupWithUUID:(id)d;
- (void)activeParticipantsDidUpdateInTabWithUUID:(id)d;
- (void)appendProfile:(id)profile completionHandler:(id)handler;
- (void)beginParticipantPresenceReportingForTabGroupWithUUID:(id)d;
- (void)beginSharingTabGroupWithUUID:(id)d completionHandler:(id)handler;
- (void)closeAllTabsInProfilesWithIdentifiers:(id)identifiers;
- (void)dealloc;
- (void)deletePrivateWindowState:(id)state;
- (void)deleteScopedBookmarkWithUUID:(id)d notify:(BOOL)notify completionHandler:(id)handler;
- (void)deleteWindowStates:(id)states completionHandler:(id)handler;
- (void)disableDevicePresenceReporting;
- (void)endParticipantPresenceReportingForTabGroupWithUUID:(id)d;
- (void)flushDeletedTabsInTabGroup:(id)group;
- (void)getActiveParticipantsInTab:(id)tab completionHandler:(id)handler;
- (void)getActiveParticipantsInTabGroup:(id)group completionHandler:(id)handler;
- (void)getPresenceTabUUIDForParticipantIdentifier:(id)identifier inTabGroup:(id)group completionHandler:(id)handler;
- (void)insertScopedBookmark:(id)bookmark inScopedBookmarkFolderWithID:(int)d afterBookmarkWithUUID:(id)iD notify:(BOOL)notify;
- (void)movePresenceForParticipantToTabWithUUID:(id)d;
- (void)moveProfile:(id)profile afterProfile:(id)afterProfile;
- (void)moveTabGroup:(id)group afterTabGroup:(id)tabGroup;
- (void)moveTabGroup:(id)group toProfileWithIdentifier:(id)identifier afterTabGroup:(id)tabGroup;
- (void)moveTabs:(id)tabs toTabGroup:(id)group afterTab:(id)tab withoutPersistingTabGroupsWithUUIDStrings:(id)strings;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)participantPresenceCoordinator:(id)coordinator didUpdateActiveParticipants:(id)participants inTabGroupWithIdentifier:(id)identifier;
- (void)participantPresenceCoordinator:(id)coordinator didUpdateActiveParticipants:(id)participants inTabWithIdentifier:(id)identifier;
- (void)registerPinnedTab:(id)tab;
- (void)registerWindowState:(id)state;
- (void)reloadTabGroupsFromDatabaseWithCompletionHandler:(id)handler;
- (void)removeProfile:(id)profile completionHandler:(id)handler;
- (void)removeTabGroup:(id)group;
- (void)reorderScopedBookmarkWithUUID:(id)d afterBookmarkWithUUID:(id)iD notify:(BOOL)notify;
- (void)saveWindowState:(id)state completionHandler:(id)handler;
- (void)setShouldPrepareBackgroundTaskExpiration:(BOOL)expiration;
- (void)setSyncAgentProxy:(id)proxy;
- (void)shareDidUpdateForTabGroupWithUUID:(id)d;
- (void)syncDidFinishWithResult:(int64_t)result;
- (void)unregisterWindowState:(id)state;
- (void)updateScopedBookmarkWithUUID:(id)d title:(id)title address:(id)address notify:(BOOL)notify;
- (void)updateTabGroupWithUUID:(id)d persist:(BOOL)persist usingBlock:(id)block;
- (void)updateTabWithUUID:(id)d persist:(BOOL)persist notify:(BOOL)notify usingBlock:(id)block;
- (void)updateTabsInTabGroupWithUUID:(id)d options:(unint64_t)options usingBlock:(id)block;
- (void)waitForSetupWithCompletionHandler:(id)handler;
@end

@implementation WBTabGroupManager

- (void)_loadDatabase
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = WBS_LOG_CHANNEL_PREFIXTabGroup(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_272C20000, v2, OS_LOG_TYPE_DEFAULT, "Loading all profiles, tab groups, and tabs records in the database", &buf, 2u);
  }

  os_unfair_lock_lock(&tabGroupsLock);
  os_unfair_lock_lock(&profilesLock);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [(WBTabCollection *)self->_tabCollection mutableProfiles];
  v4 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (v4)
  {
    v5 = *v57;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v57 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v56 + 1) + 8 * i);
        identifier = [v7 identifier];
        [(NSMutableDictionary *)dictionary setObject:v7 forKeyedSubscript:identifier];

        v11 = WBS_LOG_CHANNEL_PREFIXTabGroup(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          privacyPreservingDescription = [v7 privacyPreservingDescription];
          LODWORD(buf) = 138543362;
          *(&buf + 4) = privacyPreservingDescription;
          _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_DEFAULT, "Loaded profile from database: %{public}@", &buf, 0xCu);
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        devices = [v7 devices];
        v15 = [devices countByEnumeratingWithState:&v52 objects:v66 count:16];
        if (v15)
        {
          v16 = *v53;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v53 != v16)
              {
                objc_enumerationMutation(devices);
              }

              v18 = *(*(&v52 + 1) + 8 * j);
              uuid = [v18 uuid];
              [(NSMutableDictionary *)dictionary2 setObject:v18 forKeyedSubscript:uuid];
            }

            v15 = [devices countByEnumeratingWithState:&v52 objects:v66 count:16];
          }

          while (v15);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    }

    while (v4);
  }

  v20 = *MEMORY[0x277D49BD8];
  v21 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:*MEMORY[0x277D49BD8]];
  v22 = v21 == 0;

  if (v22)
  {
    v25 = WBS_LOG_CHANNEL_PREFIXTabGroup(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_272C20000, v25, OS_LOG_TYPE_DEFAULT, "Default profile does not exist. Inserting one...", &buf, 2u);
    }

    mutableNamedTabGroupsInDefaultProfile = [(WBTabCollection *)self->_tabCollection mutableNamedTabGroupsInDefaultProfile];
    v27 = [WBMutableProfile createDefaultProfileWithTabGroups:mutableNamedTabGroupsInDefaultProfile];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__8;
    v64 = __Block_byref_object_dispose__8;
    v65 = 0;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __34__WBTabGroupManager__loadDatabase__block_invoke;
    v51[3] = &unk_279E77640;
    v51[4] = &buf;
    [(NSMutableDictionary *)dictionary enumerateKeysAndObjectsUsingBlock:v51];
    v28 = MEMORY[0x277D49E80];
    v29 = *(*(&buf + 1) + 40);
    deviceIdentifier = [(WBTabGroupManager *)self deviceIdentifier];
    v31 = [v28 positionBetweenPosition:0 andPosition:v29 withDeviceIdentifier:deviceIdentifier changeID:{-[WBTabGroupManager _nextInMemoryPositionChangeID](self, "_nextInMemoryPositionChangeID")}];
    [v27 setSyncPosition:v31];

    tabCollection = self->_tabCollection;
    v60 = v27;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    [(WBTabCollection *)tabCollection insertItemsIntoPlace:v33 inParentWithID:0 completionHandler:&__block_literal_global_24];

    [(NSMutableDictionary *)dictionary setObject:v27 forKeyedSubscript:v20];
    _Block_object_dispose(&buf, 8);
  }

  profilesByIdentifier = self->_profilesByIdentifier;
  self->_profilesByIdentifier = dictionary;
  v35 = dictionary;

  devicesByUUID = self->_devicesByUUID;
  self->_devicesByUUID = dictionary2;
  v37 = dictionary2;

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v39 = self->_profilesByIdentifier;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __34__WBTabGroupManager__loadDatabase__block_invoke_42;
  v49[3] = &unk_279E77690;
  v49[4] = self;
  v40 = dictionary3;
  v50 = v40;
  [(NSMutableDictionary *)v39 enumerateKeysAndObjectsUsingBlock:v49];
  v41 = self->_devicesByUUID;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __34__WBTabGroupManager__loadDatabase__block_invoke_3;
  v48[3] = &unk_279E776B8;
  v48[4] = self;
  [(NSMutableDictionary *)v41 enumerateKeysAndObjectsUsingBlock:v48];
  os_unfair_lock_unlock(&profilesLock);
  os_unfair_lock_unlock(&tabGroupsLock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WBTabGroupManager__loadDatabase__block_invoke_4;
  block[3] = &unk_279E753F0;
  block[4] = self;
  v47 = v40;
  v42 = v40;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (WBProfile)defaultProfile
{
  os_unfair_lock_lock(&profilesLock);
  v3 = [(NSMutableDictionary *)self->_profilesByIdentifier objectForKeyedSubscript:*MEMORY[0x277D49BD8]];
  os_unfair_lock_unlock(&profilesLock);

  return v3;
}

- (NSArray)namedProfiles
{
  os_unfair_lock_lock(&profilesLock);
  _namedProfiles = [(WBTabGroupManager *)self _namedProfiles];
  os_unfair_lock_unlock(&profilesLock);

  return _namedProfiles;
}

- (id)_namedProfiles
{
  _profiles = [(WBTabGroupManager *)self _profiles];
  v3 = [_profiles safari_filterObjectsUsingBlock:&__block_literal_global_95];

  return v3;
}

- (id)_profiles
{
  os_unfair_lock_assert_owner(&profilesLock);
  v3 = [(NSMutableDictionary *)self->_profilesByIdentifier objectForKeyedSubscript:*MEMORY[0x277D49BD8]];
  allValues = [(NSMutableDictionary *)self->_profilesByIdentifier allValues];
  v5 = [allValues mutableCopy];

  [v5 removeObject:v3];
  _itemSyncPositionComparator = [(WBTabGroupManager *)self _itemSyncPositionComparator];
  [v5 sortUsingComparator:_itemSyncPositionComparator];

  [v5 insertObject:v3 atIndex:0];
  v7 = [v5 copy];

  return v7;
}

uint64_t __35__WBTabGroupManager__namedProfiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 kind] == 1)
  {
    v3 = [v2 identifier];
    v4 = [v3 isEqualToString:*MEMORY[0x277D49BD8]] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSSet)allNamedProfileIdentifiers
{
  namedProfiles = [(WBTabGroupManager *)self namedProfiles];
  v3 = [namedProfiles safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_92];

  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];

  return v4;
}

- (NSSet)allProfileIdentifiers
{
  profiles = [(WBTabGroupManager *)self profiles];
  v3 = [profiles safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_90];

  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];

  return v4;
}

- (NSArray)profiles
{
  os_unfair_lock_lock(&profilesLock);
  _profiles = [(WBTabGroupManager *)self _profiles];
  os_unfair_lock_unlock(&profilesLock);

  return _profiles;
}

- (NSArray)allSyncedTabGroupsExceptRemoteUnnamedTabGroups
{
  os_unfair_lock_lock(&tabGroupsLock);
  _allSyncedTabGroupsExceptRemoteUnnamedTabGroups = [(WBTabGroupManager *)self _allSyncedTabGroupsExceptRemoteUnnamedTabGroups];
  os_unfair_lock_unlock(&tabGroupsLock);

  return _allSyncedTabGroupsExceptRemoteUnnamedTabGroups;
}

- (id)_allSyncedTabGroupsExceptRemoteUnnamedTabGroups
{
  allValues = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID allValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__WBTabGroupManager__allSyncedTabGroupsExceptRemoteUnnamedTabGroups__block_invoke;
  v7[3] = &unk_279E75120;
  v7[4] = self;
  v4 = [allValues safari_filterObjectsUsingBlock:v7];

  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v4 copyItems:1];

  return v5;
}

- (void)_beginDevicePresenceReportingIfNeeded
{
  _shouldBeginDevicePresenceReporting = [(WBTabGroupManager *)self _shouldBeginDevicePresenceReporting];
  if (_shouldBeginDevicePresenceReporting)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXTabGroup(_shouldBeginDevicePresenceReporting, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_DEFAULT, "Will begin device presence reporting", v6, 2u);
    }

    self->_isBroadcastingPresenceUpdates = 1;
    [(WBParticipantPresenceCoordinator *)self->_presenceCoordinator beginDeviceCoordination];
  }
}

- (BOOL)_shouldBeginDevicePresenceReporting
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    if ([(WBTabGroupManager *)self hasSharedTabGroups])
    {
      numberOfDevicePresenceReportingRequests = self->_numberOfDevicePresenceReportingRequests;
      if (numberOfDevicePresenceReportingRequests)
      {
        LOBYTE(numberOfDevicePresenceReportingRequests) = !self->_isBroadcastingPresenceUpdates;
      }
    }

    else
    {
      LOBYTE(numberOfDevicePresenceReportingRequests) = 0;
    }
  }

  else
  {
    LOBYTE(numberOfDevicePresenceReportingRequests) = 0;
  }

  return numberOfDevicePresenceReportingRequests & 1;
}

- (void)_endDevicePresenceReportingIfNeeded
{
  if ([(WBTabGroupManager *)self _shouldEndDevicePresenceReporting])
  {
    [(WBParticipantPresenceCoordinator *)self->_presenceCoordinator endDeviceCoordination];
    self->_isBroadcastingPresenceUpdates = 0;
  }
}

- (BOOL)_shouldEndDevicePresenceReporting
{
  if (!self->_isBroadcastingPresenceUpdates)
  {
    return 0;
  }

  if (self->_enableSharedTabGroupsFastSyncPresence && self->_numberOfDevicePresenceReportingRequests)
  {
    return ![(WBTabGroupManager *)self hasSharedTabGroups:v2];
  }

  return 1;
}

+ (id)ephemeralTabGroupManager
{
  v2 = [WBTabCollection alloc];
  v3 = +[WBCollectionConfiguration inMemoryTabCollectionConfiguration];
  v4 = [(WBTabCollection *)v2 initWithConfiguration:v3 openDatabase:1];

  v5 = [[WBTabGroupManager alloc] initWithCollection:v4];

  return v5;
}

- (WBTabGroupManager)initWithCollection:(id)collection
{
  collectionCopy = collection;
  v65.receiver = self;
  v65.super_class = WBTabGroupManager;
  v6 = [(WBTabGroupManager *)&v65 init];
  v7 = v6;
  v8 = 0;
  if (collectionCopy && v6)
  {
    objc_storeStrong(&v6->_tabCollection, collection);
    configuration = [collectionCopy configuration];
    device = [configuration device];
    device = v7->_device;
    v7->_device = device;

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7->_enableSharedTabGroupsFastSyncPresence = [standardUserDefaults BOOLForKey:@"EnableSharedTabGroupsFastSyncPresence"];

    if (v7->_enableSharedTabGroupsFastSyncPresence)
    {
      v13 = objc_alloc_init(MEMORY[0x277D7B650]);
      presenceCoordinator = v7->_presenceCoordinator;
      v7->_presenceCoordinator = v13;

      [(WBParticipantPresenceCoordinator *)v7->_presenceCoordinator setDelegate:v7];
      v15 = [MEMORY[0x277CCA940] set];
      activeTabGroupUUIDs = v7->_activeTabGroupUUIDs;
      v7->_activeTabGroupUUIDs = v15;

      tabGroupUUIDsToCKShares = v7->_tabGroupUUIDsToCKShares;
      v7->_tabGroupUUIDsToCKShares = MEMORY[0x277CBEC10];

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      broadcastingTabGroupUUIDsToCKShare = v7->_broadcastingTabGroupUUIDsToCKShare;
      v7->_broadcastingTabGroupUUIDsToCKShare = dictionary;
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, _tabGroupManagerProfilesChanged, @"com.apple.mobilesafari.TabGroupManagerProfilesDidChange", 0, 1024);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    cloudTabObservers = v7->_cloudTabObservers;
    v7->_cloudTabObservers = weakObjectsHashTable2;

    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.WebBookmarks.WBTabGroupManager.%@.%p.%@", objc_opt_class(), v7, @"InternalQueue"];
    uTF8String = [v25 UTF8String];
    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = dispatch_get_global_queue(0, 0);
    v29 = dispatch_queue_create_with_target_V2(uTF8String, v27, v28);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v29;

    v31 = [objc_alloc(MEMORY[0x277D49E88]) initWithDelegate:v7];
    positionGenerator = v7->_positionGenerator;
    v7->_positionGenerator = v31;

    v33 = [MEMORY[0x277CBEB58] set];
    recentlyAddedTabGroupsAwaitingFirstStartPage = v7->_recentlyAddedTabGroupsAwaitingFirstStartPage;
    v7->_recentlyAddedTabGroupsAwaitingFirstStartPage = v33;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    removedTabGroupsByUUID = v7->_removedTabGroupsByUUID;
    v7->_removedTabGroupsByUUID = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    removedTabsByUUID = v7->_removedTabsByUUID;
    v7->_removedTabsByUUID = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    localTabsByUUID = v7->_localTabsByUUID;
    v7->_localTabsByUUID = dictionary4;

    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    localTabGroupsByUUID = v7->_localTabGroupsByUUID;
    v7->_localTabGroupsByUUID = dictionary5;

    dictionary6 = [MEMORY[0x277CBEB38] dictionary];
    syncableTabsByUUID = v7->_syncableTabsByUUID;
    v7->_syncableTabsByUUID = dictionary6;

    dictionary7 = [MEMORY[0x277CBEB38] dictionary];
    syncableTabGroupsByUUID = v7->_syncableTabGroupsByUUID;
    v7->_syncableTabGroupsByUUID = dictionary7;

    dictionary8 = [MEMORY[0x277CBEB38] dictionary];
    profilesByIdentifier = v7->_profilesByIdentifier;
    v7->_profilesByIdentifier = dictionary8;

    dictionary9 = [MEMORY[0x277CBEB38] dictionary];
    removedProfilesByIdentifier = v7->_removedProfilesByIdentifier;
    v7->_removedProfilesByIdentifier = dictionary9;

    dictionary10 = [MEMORY[0x277CBEB38] dictionary];
    devicesByUUID = v7->_devicesByUUID;
    v7->_devicesByUUID = dictionary10;

    dictionary11 = [MEMORY[0x277CBEB38] dictionary];
    deviceUUIDByTabGroupUUID = v7->_deviceUUIDByTabGroupUUID;
    v7->_deviceUUIDByTabGroupUUID = dictionary11;

    v55 = [objc_alloc(MEMORY[0x277D4A018]) initWithProfileProvider:v7];
    profileDataManager = v7->_profileDataManager;
    v7->_profileDataManager = v55;

    v57 = [MEMORY[0x277CBEB58] set];
    insertedItemUUIDsThatWereMissingDuringReload = v7->_insertedItemUUIDsThatWereMissingDuringReload;
    v7->_insertedItemUUIDsThatWereMissingDuringReload = v57;

    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __40__WBTabGroupManager_initWithCollection___block_invoke;
    v63[3] = &unk_279E751F0;
    v59 = v7;
    v64 = v59;
    v60 = MEMORY[0x2743D6830](v63);
    [(WBTabGroupManager *)v59 _loadDatabase];
    [(WBSDevice *)v7->_device addObserver:v59 forKeyPath:@"userAssignedName" options:5 context:&deviceNameObserverContext];
    dispatch_async(MEMORY[0x277D85CD0], v60);
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v59 selector:sel__tabGroupSyncDidFinish_ name:@"com.apple.SafariTabGroupSync.SyncDidFinish" object:0];

    v8 = v59;
  }

  return v8;
}

uint64_t __40__WBTabGroupManager_initWithCollection___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 160) = 1;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidFinishSetup:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = *(*(a1 + 32) + 168);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dealloc
{
  [(WBSDevice *)self->_device removeObserver:self forKeyPath:@"userAssignedName" context:&deviceNameObserverContext];
  v3.receiver = self;
  v3.super_class = WBTabGroupManager;
  [(WBTabGroupManager *)&v3 dealloc];
}

- (NSSet)recentlyAddedTabGroupsAwaitingFirstStartPage
{
  v2 = [(NSMutableSet *)self->_recentlyAddedTabGroupsAwaitingFirstStartPage copy];

  return v2;
}

- (void)setSyncAgentProxy:(id)proxy
{
  proxyCopy = proxy;
  syncAgentProxy = self->_syncAgentProxy;
  if (syncAgentProxy != proxyCopy)
  {
    v7 = proxyCopy;
    [(WBTabGroupSyncAgentProtocol *)syncAgentProxy removeSyncObserver:self];
    objc_storeStrong(&self->_syncAgentProxy, proxy);
    syncAgentProxy = [(WBTabGroupSyncAgentProtocol *)self->_syncAgentProxy addSyncObserver:self];
    proxyCopy = v7;
  }

  MEMORY[0x2821F96F8](syncAgentProxy, proxyCopy);
}

- (void)setShouldPrepareBackgroundTaskExpiration:(BOOL)expiration
{
  if (self->_shouldPrepareBackgroundTaskExpiration != expiration)
  {
    self->_shouldPrepareBackgroundTaskExpiration = expiration;
    [(WBTabCollection *)self->_tabCollection setShouldPrepareBackgroundTaskExpiration:?];
  }
}

- (void)waitForSetupWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_didFinishSetup)
  {
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    v7 = handlerCopy;
    handlerCopy[2]();
  }

  else
  {
    v7 = handlerCopy;
    v5 = MEMORY[0x2743D6830]();
    setupCompletionHandler = self->_setupCompletionHandler;
    self->_setupCompletionHandler = v5;
  }

  handlerCopy = v7;
LABEL_6:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &deviceNameObserverContext)
  {
    v7 = [change objectForKeyedSubscript:{*MEMORY[0x277CCA2F0], object}];
    os_unfair_lock_lock(&profilesLock);
    [(WBTabGroupManager *)self _updateDeviceNameIfNeededWithName:v7];
    os_unfair_lock_unlock(&profilesLock);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WBTabGroupManager;
    [(WBTabGroupManager *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

void __34__WBTabGroupManager__loadDatabase__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 syncPosition];
  v5 = v4;
  v6 = *(*(a1 + 32) + 8);
  obj = v4;
  if (*(v6 + 40))
  {
    if ([v4 compare:?] != -1)
    {
      goto LABEL_5;
    }

    v6 = *(*(a1 + 32) + 8);
    v5 = obj;
  }

  objc_storeStrong((v6 + 40), v5);
LABEL_5:
}

void __34__WBTabGroupManager__loadDatabase__block_invoke_2(uint64_t result, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXTabGroup(result, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __34__WBTabGroupManager__loadDatabase__block_invoke_2_cold_1();
    }
  }
}

void __34__WBTabGroupManager__loadDatabase__block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a3 tabGroups];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        [*(a1 + 32) _cacheTabGroup:v11 creatorDeviceUUID:0];
        v12 = [v11 bookmark];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __34__WBTabGroupManager__loadDatabase__block_invoke_2_43;
        v13[3] = &unk_279E77668;
        v14 = *(a1 + 40);
        v15 = v5;
        [v12 getReadOnlyCachedBookmarkSyncDataUsingBlock:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

void __34__WBTabGroupManager__loadDatabase__block_invoke_2_43(uint64_t a1, void *a2)
{
  v3 = [a2 shareRecord];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];
}

void __34__WBTabGroupManager__loadDatabase__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 unnamedMutableTabGroups];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) _cacheTabGroup:*(*(&v11 + 1) + 8 * v10++) creatorDeviceUUID:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_reloadProfilesAndTabGroupsAndNotify:(BOOL)notify withCompletionHandler:(id)handler
{
  notifyCopy = notify;
  v96 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v48 = [MEMORY[0x277CBEB58] set];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = [(WBTabCollection *)self->_tabCollection mutableProfiles];
  v7 = [obj countByEnumeratingWithState:&v90 objects:v95 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v91;
    v52 = *v91;
    do
    {
      v10 = 0;
      v54 = v8;
      do
      {
        if (*v91 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v90 + 1) + 8 * v10);
        identifier = [v11 identifier];
        [dictionary setObject:v11 forKeyedSubscript:identifier];

        if (([v11 isDefault] & 1) == 0)
        {
          v13 = dictionary;
          selfCopy = self;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          devices = [v11 devices];
          v16 = [devices countByEnumeratingWithState:&v86 objects:v94 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v87;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v87 != v18)
                {
                  objc_enumerationMutation(devices);
                }

                v20 = *(*(&v86 + 1) + 8 * i);
                uuid = [v20 uuid];
                [dictionary2 setObject:v20 forKeyedSubscript:uuid];
              }

              v17 = [devices countByEnumeratingWithState:&v86 objects:v94 count:16];
            }

            while (v17);
          }

          self = selfCopy;
          dictionary = v13;
          v9 = v52;
          v8 = v54;
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v90 objects:v95 count:16];
    }

    while (v8);
  }

  os_unfair_lock_lock(&tabGroupsLock);
  os_unfair_lock_lock(&profilesLock);
  _profiles = [(WBTabGroupManager *)self _profiles];
  allKeys = [(NSMutableDictionary *)self->_removedProfilesByIdentifier allKeys];
  [dictionary removeObjectsForKeys:allKeys];

  v23 = [(WBTabGroupManager *)self _performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier:dictionary devicesByUUID:dictionary2 uninsertedSyncableTabsFromSyncableTabsByUUID:self->_syncableTabsByUUID];
  v24 = [MEMORY[0x277CBEB58] set];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke;
  v83[3] = &unk_279E776E0;
  v83[4] = self;
  v25 = v23;
  v84 = v25;
  v26 = v24;
  v85 = v26;
  [dictionary enumerateKeysAndObjectsUsingBlock:v83];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_2;
  v80[3] = &unk_279E77708;
  v80[4] = self;
  obja = v25;
  v81 = obja;
  v27 = v26;
  v82 = v27;
  [dictionary2 enumerateKeysAndObjectsUsingBlock:v80];
  v28 = [MEMORY[0x277CBEB58] set];
  v29 = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID copy];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_3;
  v75[3] = &unk_279E77730;
  v30 = v27;
  v76 = v30;
  selfCopy2 = self;
  v31 = v48;
  v78 = v31;
  v32 = v28;
  v79 = v32;
  [v29 enumerateKeysAndObjectsUsingBlock:v75];

  v33 = [MEMORY[0x277CBEB58] set];
  selfCopy3 = self;
  v35 = [(NSMutableDictionary *)self->_profilesByIdentifier copy];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_48;
  v71[3] = &unk_279E776E0;
  v36 = dictionary;
  v72 = v36;
  v73 = selfCopy3;
  v37 = v33;
  v74 = v37;
  [v35 enumerateKeysAndObjectsUsingBlock:v71];

  v38 = [(NSMutableDictionary *)selfCopy3->_devicesByUUID copy];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_2_49;
  v67[3] = &unk_279E77708;
  v53 = dictionary2;
  v68 = v53;
  v69 = selfCopy3;
  v39 = v31;
  v70 = v39;
  [v38 enumerateKeysAndObjectsUsingBlock:v67];

  _unsafeTabGroupUUIDsToCKShares = [(WBTabGroupManager *)selfCopy3 _unsafeTabGroupUUIDsToCKShares];
  objc_storeStrong(&selfCopy3->_insertedItemUUIDsThatWereMissingDuringReload, v48);
  v41 = [v39 count];
  os_unfair_lock_unlock(&profilesLock);
  os_unfair_lock_unlock(&tabGroupsLock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_3_50;
  block[3] = &unk_279E77758;
  block[4] = selfCopy3;
  v59 = _unsafeTabGroupUUIDsToCKShares;
  v66 = notifyCopy;
  v60 = v37;
  v61 = v36;
  v62 = _profiles;
  v63 = v32;
  v64 = v30;
  v65 = handlerCopy;
  v50 = handlerCopy;
  v42 = v30;
  v43 = v32;
  v44 = _profiles;
  v45 = v36;
  v46 = v37;
  v47 = _unsafeTabGroupUUIDsToCKShares;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if (v41)
  {
    [(WBTabGroupManager *)selfCopy3 _reloadProfilesAndTabGroupsAndNotify:notifyCopy withCompletionHandler:0];
  }
}

void __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 tabGroups];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = *(*(a1 + 32) + 48);
        v14 = [v12 uuid];
        v15 = [v13 objectForKeyedSubscript:v14];

        if (!v15)
        {
          [*(a1 + 32) _updateTabsAndCacheTabGroup:v12 withTabsByParentIdentifiers:*(a1 + 40) creatorDeviceUUID:0];
          [v6 addObject:v12];
          v16 = *(a1 + 48);
          v17 = [v12 copy];
          [v16 addObject:v17];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  [v5 setTabGroups:v6];
  [*(*(a1 + 32) + 104) setObject:v5 forKeyedSubscript:v18];
}

void __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v5 = a3;
  v22 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v5;
  v7 = [v5 unnamedMutableTabGroups];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = *(a1[4] + 48);
        v14 = [v12 uuid];
        v15 = [v13 objectForKeyedSubscript:v14];

        if (!v15)
        {
          v16 = a1[4];
          v17 = a1[5];
          v18 = [v6 uuid];
          [v16 _updateTabsAndCacheTabGroup:v12 withTabsByParentIdentifiers:v17 creatorDeviceUUID:v18];

          [v22 addObject:v12];
          v19 = a1[6];
          v20 = [v12 copy];
          [v19 addObject:v20];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  [v6 setUnnamedMutableTabGroups:v22];
  [*(a1[4] + 120) setObject:v6 forKeyedSubscript:v21];
}

void __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 isNamed])
  {
    v7 = [*(a1 + 32) containsObject:v6];
    v8 = [v6 bookmark];
    v9 = [v8 wasLoadedFromDatabase];
    v10 = v7 ^ 1;

    if (v9 && (v10 & 1) != 0)
    {
      goto LABEL_4;
    }

    if (([v6 isInserted] & v10) != 1)
    {
      goto LABEL_11;
    }

    v19 = *(*(a1 + 40) + 144);
    v20 = [v6 uuid];
    LOBYTE(v19) = [v19 containsObject:v20];

    if (v19)
    {
LABEL_4:
      v13 = WBS_LOG_CHANNEL_PREFIXTabGroup(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [v6 privacyPreservingDescription];
        v21 = 138543362;
        v22 = v15;
        _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_DEFAULT, "Removing tab group after reload: %{public}@", &v21, 0xCu);
      }

      [*(a1 + 40) _uncacheTabGroup:v6];
      [*(*(a1 + 40) + 48) setObject:v6 forKeyedSubscript:v5];
      v16 = *(a1 + 56);
      v17 = [v6 copy];
    }

    else
    {
      v16 = *(a1 + 48);
      v17 = [v6 uuid];
    }

    v18 = v17;
    [v16 addObject:v17];
  }

LABEL_11:
}

void __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v14];

  v7 = [v5 bookmark];
  v8 = [v7 wasLoadedFromDatabase];

  if (v8 && !v6 && !WBSIsEqual())
  {
    goto LABEL_7;
  }

  if ([v5 isInserted] && !v6)
  {
    v9 = *(*(a1 + 40) + 144);
    v10 = [v5 identifier];
    LOBYTE(v9) = [v9 containsObject:v10];

    if ((v9 & 1) == 0)
    {
      v11 = *(*(a1 + 40) + 144);
      v12 = [v5 identifier];
      goto LABEL_9;
    }

LABEL_7:
    [*(*(a1 + 40) + 104) setObject:0 forKeyedSubscript:v14];
    [*(*(a1 + 40) + 112) setObject:v5 forKeyedSubscript:v14];
    v11 = *(a1 + 48);
    v12 = [v5 copy];
LABEL_9:
    v13 = v12;
    [v11 addObject:v12];
  }
}

void __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_2_49(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];

  v6 = [v15 bookmark];
  v7 = [v6 wasLoadedFromDatabase];

  if (v7 && !v5)
  {
    goto LABEL_3;
  }

  v10 = [v15 bookmark];
  v11 = [v10 isInserted];

  if (v11 && !v5)
  {
    v12 = *(*(a1 + 40) + 144);
    v13 = [v15 uuid];
    LOBYTE(v12) = [v12 containsObject:v13];

    if ((v12 & 1) == 0)
    {
      v14 = *(a1 + 48);
      v9 = [v15 uuid];
      [v14 addObject:v9];
      goto LABEL_4;
    }

LABEL_3:
    v8 = *(*(a1 + 40) + 120);
    v9 = [v15 uuid];
    [v8 setObject:0 forKeyedSubscript:v9];
LABEL_4:
  }
}

uint64_t __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_3_50(uint64_t a1)
{
  [*(a1 + 32) _updateTabGroupShares:*(a1 + 40)];
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 32);
    v3 = MEMORY[0x277CBEB98];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 56) allValues];
    v6 = [v3 setWithArray:v5];
    [v2 _didRemoveProfiles:v4 updateProfiles:v6 previousProfiles:*(a1 + 64) removeTabGroups:*(a1 + 72) updateTabGroups:*(a1 + 80) previousTabGroups:0];
  }

  result = *(a1 + 88);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)_mergeTabGroups:(id)groups
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = groups;
  v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        uuid = [v5 uuid];
        v7 = [(WBTabGroupManager *)self _tabGroupWithUUID:uuid];

        if (v7)
        {
          [v5 mergeWithTabGroup:v7];
        }

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        tabs = [v5 tabs];
        v9 = [tabs countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(tabs);
              }

              v13 = *(*(&v19 + 1) + 8 * j);
              uuid2 = [v13 uuid];
              v15 = [(WBTabGroupManager *)self _tabWithUUID:uuid2];

              if (v15)
              {
                [v13 mergeWithTab:v15];
              }
            }

            v10 = [tabs countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v10);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }
}

- (id)_performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier:(id)identifier devicesByUUID:(id)d uninsertedSyncableTabsFromSyncableTabsByUUID:(id)iD
{
  v46 = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  dCopy = d;
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&profilesLock);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __151__WBTabGroupManager__performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier_devicesByUUID_uninsertedSyncableTabsFromSyncableTabsByUUID___block_invoke;
  v40[3] = &unk_279E77690;
  v40[4] = self;
  v12 = dictionary;
  v41 = v12;
  [identifierCopy enumerateKeysAndObjectsUsingBlock:v40];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __151__WBTabGroupManager__performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier_devicesByUUID_uninsertedSyncableTabsFromSyncableTabsByUUID___block_invoke_52;
  v38[3] = &unk_279E77780;
  v38[4] = self;
  v13 = v12;
  v39 = v13;
  [dCopy enumerateKeysAndObjectsUsingBlock:v38];

  v14 = MEMORY[0x277CBEB98];
  allValues = [v13 allValues];
  safari_flattenedArray = [allValues safari_flattenedArray];
  v17 = [safari_flattenedArray safari_mapObjectsUsingBlock:&__block_literal_global_55];
  v18 = [v14 setWithArray:v17];

  array = [MEMORY[0x277CBEB18] array];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __151__WBTabGroupManager__performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier_devicesByUUID_uninsertedSyncableTabsFromSyncableTabsByUUID___block_invoke_3;
  v33 = &unk_279E777A8;
  v34 = v18;
  selfCopy = self;
  v36 = v13;
  v20 = array;
  v37 = v20;
  v21 = v13;
  v22 = v18;
  [iDCopy enumerateKeysAndObjectsUsingBlock:&v30];

  v23 = [v20 count];
  if (v23)
  {
    v25 = WBS_LOG_CHANNEL_PREFIXTabGroup(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      v27 = [v20 count];
      *buf = 134218242;
      v43 = v27;
      v44 = 2114;
      v45 = v20;
      _os_log_impl(&dword_272C20000, v26, OS_LOG_TYPE_DEFAULT, "%lu tabs were filtered because they were removed. UUIDS:%{public}@", buf, 0x16u);
    }
  }

  v28 = [v21 copy];

  return v28;
}

void __151__WBTabGroupManager__performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier_devicesByUUID_uninsertedSyncableTabsFromSyncableTabsByUUID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:a2];
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXTabGroup(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v5 privacyPreservingDescription];
      v12 = [v8 privacyPreservingDescription];
      v22 = 138412546;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_DEFAULT, "Merging profile in database %@ with profile in the cache %@", &v22, 0x16u);
    }

    [v5 mergeWithProfile:v8];
  }

  else
  {
    v13 = *(*(a1 + 32) + 152);
    v14 = [v5 serverID];
    v15 = [v5 identifier];
    [v13 ensureProfileDirectoriesExistForProfileWithServerID:v14 profileIdentifier:v15];

    v18 = WBS_LOG_CHANNEL_PREFIXTabGroup(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v5 privacyPreservingDescription];
      v22 = 138412290;
      v23 = v20;
      _os_log_impl(&dword_272C20000, v19, OS_LOG_TYPE_DEFAULT, "Couldn't find profile in the cache %@", &v22, 0xCu);
    }
  }

  v21 = [v5 tabGroups];
  [*(a1 + 32) _mergeTabGroups:v21];
  [*(a1 + 32) _addTabsInTabGroups:v21 toParentIdentifierInTabsToParentIdentifiersDictionary:*(a1 + 40)];
}

void __151__WBTabGroupManager__performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier_devicesByUUID_uninsertedSyncableTabsFromSyncableTabsByUUID___block_invoke_52(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v5 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:a2];
  if (v5)
  {
    [v12 mergeWithDevice:v5];
  }

  v6 = [v12 unnamedMutableTabGroups];
  [*(a1 + 32) _mergeTabGroups:v6];
  v7 = [v12 isRemoteDevice];
  v8 = *(a1 + 32);
  if ((v7 & 1) == 0 && !v8[17])
  {
    v9 = [v12 title];
    v10 = *(a1 + 32);
    v11 = *(v10 + 136);
    *(v10 + 136) = v9;

    v8 = *(a1 + 32);
  }

  [v8 _addTabsInTabGroups:v6 toParentIdentifierInTabsToParentIdentifiersDictionary:*(a1 + 40)];
}

void __151__WBTabGroupManager__performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier_devicesByUUID_uninsertedSyncableTabsFromSyncableTabsByUUID___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v18 = v4;
  v6 = [v4 uuid];
  LOBYTE(v5) = [v5 containsObject:v6];

  if ((v5 & 1) == 0)
  {
    v7 = [v18 bookmark];
    v8 = [v7 wasLoadedFromDatabase];

    if ((v8 & 1) == 0)
    {
      if (![v18 isInserted] || (v9 = *(*(a1 + 40) + 144), objc_msgSend(v18, "uuid"), v10 = objc_claimAutoreleasedReturnValue(), LOBYTE(v9) = objc_msgSend(v9, "containsObject:", v10), v10, (v9 & 1) == 0))
      {
        v11 = *(*(a1 + 40) + 144);
        v12 = [v18 uuid];
        [v11 addObject:v12];

        [*(a1 + 40) _addTab:v18 toParentIdentifierInTabsToParentIdentifiersDictionary:*(a1 + 48)];
        v13 = *(*(a1 + 40) + 56);
        v14 = [v18 uuid];
        v15 = [v13 objectForKeyedSubscript:v14];

        if (v15)
        {
          v16 = *(a1 + 56);
          v17 = [v18 uuid];
          [v16 addObject:v17];
        }
      }
    }
  }
}

- (void)_addTabsInTabGroups:(id)groups toParentIdentifierInTabsToParentIdentifiersDictionary:(id)dictionary
{
  v62 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  dictionaryCopy = dictionary;
  array = [MEMORY[0x277CBEB18] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = groupsCopy;
  v9 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v53;
    *&v10 = 138543362;
    v43 = v10;
    v44 = *v53;
    do
    {
      v13 = 0;
      v45 = v11;
      do
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v52 + 1) + 8 * v13);
        removedTabGroupsByUUID = self->_removedTabGroupsByUUID;
        uuid = [v14 uuid];
        v17 = [(NSMutableDictionary *)removedTabGroupsByUUID objectForKeyedSubscript:uuid];

        v20 = WBS_LOG_CHANNEL_PREFIXTabGroup(v18, v19);
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          if (v21)
          {
            v22 = v20;
            tabs = [v14 tabs];
            v24 = [tabs count];
            privacyPreservingDescription = [v14 privacyPreservingDescription];
            *buf = 134218242;
            v58 = v24;
            v59 = 2114;
            v60 = privacyPreservingDescription;
            _os_log_impl(&dword_272C20000, v22, OS_LOG_TYPE_DEFAULT, "Did not cache %lu tabs in tab group %{public}@ because the tab group was removed", buf, 0x16u);
          }
        }

        else
        {
          v47 = v13;
          if (v21)
          {
            v26 = v20;
            privacyPreservingDescription2 = [v14 privacyPreservingDescription];
            *buf = v43;
            v58 = privacyPreservingDescription2;
            _os_log_impl(&dword_272C20000, v26, OS_LOG_TYPE_DEFAULT, "Add tabs in tab group to the parent identifier dictionary %{public}@", buf, 0xCu);
          }

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          tabs2 = [v14 tabs];
          v29 = [tabs2 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v49;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v49 != v31)
                {
                  objc_enumerationMutation(tabs2);
                }

                v33 = *(*(&v48 + 1) + 8 * i);
                [(WBTabGroupManager *)self _addTab:v33 toParentIdentifierInTabsToParentIdentifiersDictionary:dictionaryCopy];
                removedTabsByUUID = self->_removedTabsByUUID;
                uuid2 = [v33 uuid];
                v36 = [(NSMutableDictionary *)removedTabsByUUID objectForKeyedSubscript:uuid2];

                if (v36)
                {
                  uuid3 = [v33 uuid];
                  [array addObject:uuid3];
                }
              }

              v30 = [tabs2 countByEnumeratingWithState:&v48 objects:v56 count:16];
            }

            while (v30);
          }

          v12 = v44;
          v11 = v45;
          v13 = v47;
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v11);
  }

  v38 = [array count];
  if (v38)
  {
    v40 = WBS_LOG_CHANNEL_PREFIXTabGroup(v38, v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v40;
      v42 = [array count];
      *buf = 134218242;
      v58 = v42;
      v59 = 2114;
      v60 = array;
      _os_log_impl(&dword_272C20000, v41, OS_LOG_TYPE_DEFAULT, "%lu tabs were filtered because they were removed. UUIDS:%{public}@", buf, 0x16u);
    }
  }
}

- (void)_addTab:(id)tab toParentIdentifierInTabsToParentIdentifiersDictionary:(id)dictionary
{
  v28 = *MEMORY[0x277D85DE8];
  tabCopy = tab;
  dictionaryCopy = dictionary;
  removedTabsByUUID = self->_removedTabsByUUID;
  uuid = [tabCopy uuid];
  v10 = [(NSMutableDictionary *)removedTabsByUUID objectForKeyedSubscript:uuid];

  if (!v10)
  {
    if ([tabCopy parentIdentifier] == 0x7FFFFFFF || !objc_msgSend(tabCopy, "parentIdentifier"))
    {
      tabGroupUUID = [tabCopy tabGroupUUID];
      v17 = 1;
    }

    else
    {
      tabGroupUUID = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(tabCopy, "parentIdentifier")}];
      v17 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:tabGroupUUID];
    array = v18;
    if (v18)
    {
      if (!v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
      v18 = [dictionaryCopy setObject:array forKeyedSubscript:tabGroupUUID];
      if (!v17)
      {
LABEL_14:
        [array addObject:tabCopy];

        goto LABEL_15;
      }
    }

    v21 = WBS_LOG_CHANNEL_PREFIXTabGroup(v18, v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      privacyPreservingDescription = [tabCopy privacyPreservingDescription];
      v24 = 138543618;
      v25 = privacyPreservingDescription;
      v26 = 2114;
      v27 = tabGroupUUID;
      _os_log_impl(&dword_272C20000, v22, OS_LOG_TYPE_DEFAULT, "Tab %{public}@ has invalid parent identifier and moved under %{public}@", &v24, 0x16u);
    }

    goto LABEL_14;
  }

  v13 = WBS_LOG_CHANNEL_PREFIXTabGroup(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    privacyPreservingDescription2 = [tabCopy privacyPreservingDescription];
    v24 = 138543362;
    v25 = privacyPreservingDescription2;
    _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "Filtering tab %{public}@ because it was removed", &v24, 0xCu);
  }

LABEL_15:
}

- (void)_updateTabsAndCacheTabGroup:(id)group withTabsByParentIdentifiers:(id)identifiers creatorDeviceUUID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v9 = MEMORY[0x277CBEB18];
  dCopy = d;
  identifiersCopy = identifiers;
  array = [v9 array];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(groupCopy, "identifier")}];
  v14 = [identifiersCopy objectForKeyedSubscript:v13];
  v15 = v14;
  v16 = MEMORY[0x277CBEBF8];
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  [array addObjectsFromArray:v17];

  uuid = [groupCopy uuid];
  v19 = [identifiersCopy objectForKeyedSubscript:uuid];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  [array addObjectsFromArray:v20];

  _itemSyncPositionComparator = [(WBTabGroupManager *)self _itemSyncPositionComparator];
  [array sortUsingComparator:_itemSyncPositionComparator];

  if (![array count])
  {
    v23 = WBS_LOG_CHANNEL_PREFIXTabGroup(0, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      privacyPreservingDescription = [groupCopy privacyPreservingDescription];
      v26 = 138543362;
      v27 = privacyPreservingDescription;
      _os_log_impl(&dword_272C20000, v24, OS_LOG_TYPE_DEFAULT, "Updating tabGroup %{public}@ with an empty tab list", &v26, 0xCu);
    }
  }

  [groupCopy setTabs:array];
  [(WBTabGroupManager *)self _cacheTabGroup:groupCopy creatorDeviceUUID:dCopy];
}

- (id)_tabCacheForTabGroup:(id)group
{
  isSyncable = [group isSyncable];
  v5 = 64;
  if (isSyncable)
  {
    v5 = 80;
  }

  v6 = *(&self->super.isa + v5);

  return v6;
}

- (id)_tabGroupCacheForTabGroup:(id)group
{
  isSyncable = [group isSyncable];
  v5 = 72;
  if (isSyncable)
  {
    v5 = 88;
  }

  v6 = *(&self->super.isa + v5);

  return v6;
}

- (void)_cacheTabGroup:(id)group creatorDeviceUUID:(id)d
{
  v47 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  dCopy = d;
  v7 = [(WBTabGroupManager *)self _tabCacheForTabGroup:groupCopy];
  v8 = [(WBTabGroupManager *)self _tabGroupCacheForTabGroup:groupCopy];
  uuid = [groupCopy uuid];
  v10 = [v8 objectForKeyedSubscript:uuid];
  allTabs = [v10 allTabs];
  v37 = v8;
  if ([allTabs count])
  {
    uuid2 = [groupCopy uuid];
    v13 = [v8 objectForKeyedSubscript:uuid2];
    allTabs2 = [v13 allTabs];
    v35 = [allTabs2 count];
    allTabs3 = [groupCopy allTabs];
    v34 = [allTabs3 count];

    if (v35 != v34)
    {
      v18 = WBS_LOG_CHANNEL_PREFIXTabGroup(v16, v17);
      v16 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (v16)
      {
        [(WBTabGroupManager *)v18 _cacheTabGroup:groupCopy creatorDeviceUUID:v37];
      }
    }
  }

  else
  {
  }

  v19 = WBS_LOG_CHANNEL_PREFIXTabGroup(v16, v17);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    privacyPreservingDescription = [groupCopy privacyPreservingDescription];
    allTabs4 = [groupCopy allTabs];
    *buf = 138543618;
    v44 = privacyPreservingDescription;
    v45 = 2050;
    v46 = [allTabs4 count];
    _os_log_impl(&dword_272C20000, v20, OS_LOG_TYPE_DEFAULT, "Saving tab group %{public}@ with %{public}lu tabs into the cache.", buf, 0x16u);
  }

  uuid3 = [groupCopy uuid];
  [v37 setObject:groupCopy forKeyedSubscript:uuid3];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  allTabs5 = [groupCopy allTabs];
  v25 = [allTabs5 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v39;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(allTabs5);
        }

        v29 = *(*(&v38 + 1) + 8 * i);
        uuid4 = [v29 uuid];
        [(NSMutableDictionary *)self->_localTabsByUUID setObject:0 forKeyedSubscript:uuid4];
        [(NSMutableDictionary *)self->_syncableTabsByUUID setObject:0 forKeyedSubscript:uuid4];
        [(NSMutableDictionary *)self->_removedTabsByUUID setObject:0 forKeyedSubscript:uuid4];
        uuid5 = [v29 uuid];
        [v7 setObject:v29 forKeyedSubscript:uuid5];
      }

      v26 = [allTabs5 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v26);
  }

  if (dCopy)
  {
    deviceUUIDByTabGroupUUID = self->_deviceUUIDByTabGroupUUID;
    uuid6 = [groupCopy uuid];
    [(NSMutableDictionary *)deviceUUIDByTabGroupUUID setObject:dCopy forKeyedSubscript:uuid6];
  }
}

- (void)_uncacheTabGroup:(id)group
{
  v19 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v5 = [(WBTabGroupManager *)self _tabCacheForTabGroup:groupCopy];
  v6 = [(WBTabGroupManager *)self _tabGroupCacheForTabGroup:groupCopy];
  uuid = [groupCopy uuid];
  [v6 setObject:0 forKeyedSubscript:uuid];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allTabs = [groupCopy allTabs];
  v9 = [allTabs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(allTabs);
        }

        uuid2 = [*(*(&v14 + 1) + 8 * v12) uuid];
        [v5 setObject:0 forKeyedSubscript:uuid2];

        ++v12;
      }

      while (v10 != v12);
      v10 = [allTabs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_uncacheTab:(id)tab
{
  localTabsByUUID = self->_localTabsByUUID;
  tabCopy = tab;
  uuid = [tabCopy uuid];
  [(NSMutableDictionary *)localTabsByUUID setObject:0 forKeyedSubscript:uuid];

  syncableTabsByUUID = self->_syncableTabsByUUID;
  uuid2 = [tabCopy uuid];

  [(NSMutableDictionary *)syncableTabsByUUID setObject:0 forKeyedSubscript:uuid2];
}

- (id)_tabWithUUID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_localTabsByUUID objectForKeyedSubscript:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(NSMutableDictionary *)self->_syncableTabsByUUID objectForKeyedSubscript:dCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [(NSMutableDictionary *)self->_removedTabsByUUID objectForKeyedSubscript:dCopy];
    }

    v7 = v10;
  }

  return v7;
}

- (id)_tabGroupWithUUID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_localTabGroupsByUUID objectForKeyedSubscript:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID objectForKeyedSubscript:dCopy];
  }

  v8 = v7;

  return v8;
}

- (int64_t)_nextInMemoryPositionChangeID
{
  os_unfair_lock_lock(&inMemoryChangeIDLock);
  v2 = nextInMemoryPositionChangeID--;
  os_unfair_lock_unlock(&inMemoryChangeIDLock);
  return v2;
}

- (id)_generatePositionForTabGroup:(id)group afterTabGroup:(id)tabGroup
{
  tabGroupCopy = tabGroup;
  groupCopy = group;
  if ([groupCopy isNamed])
  {
    profileIdentifier = [groupCopy profileIdentifier];
    [(WBTabGroupManager *)self _tabGroupsForProfileWithIdentifier:profileIdentifier];
  }

  else
  {
    profileIdentifier = [groupCopy deviceUUIDString];
    [(WBTabGroupManager *)self _unnamedTabGroupsForDeviceWithUUID:profileIdentifier];
  }
  v9 = ;

  v10 = [(WBTabGroupManager *)self _generatePositionForTabGroup:groupCopy afterTabGroup:tabGroupCopy inTabGroups:v9];

  return v10;
}

- (id)_generatePositionForTabGroup:(id)group afterTabGroup:(id)tabGroup inTabGroups:(id)groups
{
  groupCopy = group;
  tabGroupCopy = tabGroup;
  v10 = [(WBTabGroupManager *)self _tabGroupAfterTabGroup:tabGroupCopy inTabGroups:groups];
  if ((WBSIsEqual() & 1) != 0 || WBSIsEqual())
  {
    syncPosition = [groupCopy syncPosition];
  }

  else
  {
    v12 = MEMORY[0x277D49E80];
    syncPosition2 = [tabGroupCopy syncPosition];
    syncPosition3 = [v10 syncPosition];
    deviceIdentifier = [(WBTabGroupManager *)self deviceIdentifier];
    syncPosition = [v12 positionBetweenPosition:syncPosition2 andPosition:syncPosition3 withDeviceIdentifier:deviceIdentifier changeID:{-[WBTabGroupManager _nextInMemoryPositionChangeID](self, "_nextInMemoryPositionChangeID")}];
  }

  return syncPosition;
}

- (id)_tabGroupAfterTabGroup:(id)group inTabGroups:(id)groups
{
  if (group)
  {
    [groups safari_objectAfter:?];
  }

  else
  {
    [groups firstObject];
  }
  v4 = ;

  return v4;
}

- (void)_updatePositionsForTabsInTabGroup:(id)group
{
  v27[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if ([groupCopy isSyncable])
  {
    tabs = [groupCopy tabs];
    v5 = [tabs safari_filterObjectsUsingBlock:&__block_literal_global_60_0];
    v6 = [v5 valueForKey:@"uuid"];
    uuid = [groupCopy uuid];
    v26 = uuid;
    v19 = v6;
    v8 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v27[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];

    [(WBSCRDTPositionGenerator *)self->_positionGenerator generatePositionsForChildRecordNamesGroupedByParentFolders:v9];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          positionGenerator = self->_positionGenerator;
          uuid2 = [v15 uuid];
          v18 = [(WBSCRDTPositionGenerator *)positionGenerator positionForBookmarkWithRecordName:uuid2];
          [v15 setSyncPosition:v18];
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }
  }
}

uint64_t __55__WBTabGroupManager__updatePositionsForTabsInTabGroup___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 wasAdded])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 wasMoved];
  }

  return v3;
}

- (id)_generatePositionForProfile:(id)profile afterProfile:(id)afterProfile
{
  profileCopy = profile;
  afterProfileCopy = afterProfile;
  _namedProfiles = [(WBTabGroupManager *)self _namedProfiles];
  v9 = _namedProfiles;
  if (afterProfileCopy)
  {
    [_namedProfiles safari_objectAfter:afterProfileCopy];
  }

  else
  {
    [_namedProfiles firstObject];
  }
  v10 = ;

  if ((WBSIsEqual() & 1) != 0 || WBSIsEqual())
  {
    syncPosition = [profileCopy syncPosition];
  }

  else
  {
    v12 = MEMORY[0x277D49E80];
    syncPosition2 = [afterProfileCopy syncPosition];
    syncPosition3 = [v10 syncPosition];
    deviceIdentifier = [(WBTabGroupManager *)self deviceIdentifier];
    syncPosition = [v12 positionBetweenPosition:syncPosition2 andPosition:syncPosition3 withDeviceIdentifier:deviceIdentifier changeID:{-[WBTabGroupManager _nextInMemoryPositionChangeID](self, "_nextInMemoryPositionChangeID")}];
  }

  return syncPosition;
}

- (id)_generatePositionForDevice:(id)device afterDevice:(id)afterDevice
{
  deviceCopy = device;
  afterDeviceCopy = afterDevice;
  profileIdentifier = [deviceCopy profileIdentifier];
  v9 = [(WBTabGroupManager *)self _devicesForProfileWithIdentifier:profileIdentifier];

  if (afterDeviceCopy)
  {
    [v9 safari_objectAfter:afterDeviceCopy];
  }

  else
  {
    [v9 firstObject];
  }
  v10 = ;
  if ((WBSIsEqual() & 1) != 0 || WBSIsEqual())
  {
    syncPosition = [deviceCopy syncPosition];
  }

  else
  {
    v12 = MEMORY[0x277D49E80];
    syncPosition2 = [afterDeviceCopy syncPosition];
    syncPosition3 = [v10 syncPosition];
    deviceIdentifier = [(WBTabGroupManager *)self deviceIdentifier];
    syncPosition = [v12 positionBetweenPosition:syncPosition2 andPosition:syncPosition3 withDeviceIdentifier:deviceIdentifier changeID:{-[WBTabGroupManager _nextInMemoryPositionChangeID](self, "_nextInMemoryPositionChangeID")}];
  }

  return syncPosition;
}

uint64_t __48__WBTabGroupManager__itemSyncPositionComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 bookmark];
  v7 = [v5 bookmark];
  v8 = [v6 syncPosition];
  v9 = [v7 syncPosition];
  v11 = v9;
  if (v8 | v9)
  {
    if (v9)
    {
      if (v8)
      {
        v12 = [v8 compare:v9];
      }

      else
      {
        v18 = WBS_LOG_CHANNEL_PREFIXTabGroup(v9, v10);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          __48__WBTabGroupManager__itemSyncPositionComparator__block_invoke_cold_2(v18);
        }

        v12 = 1;
      }
    }

    else
    {
      v17 = WBS_LOG_CHANNEL_PREFIXTabGroup(0, v10);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        __48__WBTabGroupManager__itemSyncPositionComparator__block_invoke_cold_2(v17);
      }

      v12 = -1;
    }
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXTabGroup(v9, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __48__WBTabGroupManager__itemSyncPositionComparator__block_invoke_cold_1(v13, v4);
    }

    v14 = [v6 serverID];
    v15 = [v7 serverID];
    v16 = v15;
    v12 = 0;
    if (v14 && v15)
    {
      v12 = [v14 compare:v15];
    }
  }

  return v12;
}

- (void)_cacheProfile:(id)profile
{
  profileCopy = profile;
  if (profileCopy)
  {
    v7 = profileCopy;
    os_unfair_lock_lock(&profilesLock);
    profilesByIdentifier = self->_profilesByIdentifier;
    identifier = [v7 identifier];
    [(NSMutableDictionary *)profilesByIdentifier setObject:v7 forKeyedSubscript:identifier];

    os_unfair_lock_unlock(&profilesLock);
    profileCopy = v7;
  }
}

- (void)registerWindowState:(id)state
{
  stateCopy = state;
  localTabGroup = [stateCopy localTabGroup];
  [(WBTabGroupManager *)self _cacheTabGroup:localTabGroup creatorDeviceUUID:0];

  privateTabGroup = [stateCopy privateTabGroup];

  [(WBTabGroupManager *)self _cacheTabGroup:privateTabGroup creatorDeviceUUID:0];
}

- (void)unregisterWindowState:(id)state
{
  v14 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = WBS_LOG_CHANNEL_PREFIXTabGroup(stateCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    localTabGroup = [stateCopy localTabGroup];
    privacyPreservingDescription = [localTabGroup privacyPreservingDescription];
    v12 = 138543362;
    v13 = privacyPreservingDescription;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_DEFAULT, "Unregistering window state with local tab group: %{public}@", &v12, 0xCu);
  }

  localTabGroup2 = [stateCopy localTabGroup];
  [(WBTabGroupManager *)self _uncacheTabGroup:localTabGroup2];

  privateTabGroup = [stateCopy privateTabGroup];
  [(WBTabGroupManager *)self _uncacheTabGroup:privateTabGroup];
}

- (void)saveWindowState:(id)state completionHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  if (saveWindowState_completionHandler__lastSavedWindowState && (v8 = [saveWindowState_completionHandler__lastSavedWindowState isEqualToWindowState:stateCopy], v8))
  {
    v10 = WBS_LOG_CHANNEL_PREFIXTabGroup(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "Skip saving current window state to database since it hasn't changed.", buf, 2u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }
  }

  else
  {
    tabCollection = self->_tabCollection;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__WBTabGroupManager_saveWindowState_completionHandler___block_invoke;
    v12[3] = &unk_279E77818;
    v13 = stateCopy;
    v14 = handlerCopy;
    [(WBTabCollection *)tabCollection saveWindowState:v13 completionHandler:v12];
  }
}

void __55__WBTabGroupManager_saveWindowState_completionHandler___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__WBTabGroupManager_saveWindowState_completionHandler___block_invoke_2;
  block[3] = &unk_279E777F0;
  v6 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __55__WBTabGroupManager_saveWindowState_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) copy];
    v3 = saveWindowState_completionHandler__lastSavedWindowState;
    saveWindowState_completionHandler__lastSavedWindowState = v2;
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)deleteWindowStates:(id)states completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  handlerCopy = handler;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [statesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(statesCopy);
        }

        [(WBTabGroupManager *)self unregisterWindowState:*(*(&v12 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [statesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(WBTabCollection *)self->_tabCollection deleteWindowStates:statesCopy completionHandler:handlerCopy];
}

- (void)deletePrivateWindowState:(id)state
{
  stateCopy = state;
  if ([stateCopy isPrivateWindow])
  {
    localTabGroup = [stateCopy localTabGroup];
    uuid = [localTabGroup uuid];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__WBTabGroupManager_deletePrivateWindowState___block_invoke;
    v10[3] = &unk_279E751B8;
    v10[4] = self;
    [(WBTabGroupManager *)self updateTabGroupWithUUID:uuid persist:0 usingBlock:v10];

    privateTabGroup = [stateCopy privateTabGroup];
    uuid2 = [privateTabGroup uuid];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__WBTabGroupManager_deletePrivateWindowState___block_invoke_3;
    v9[3] = &unk_279E751B8;
    v9[4] = self;
    [(WBTabGroupManager *)self updateTabGroupWithUUID:uuid2 persist:0 usingBlock:v9];
  }
}

void __46__WBTabGroupManager_deletePrivateWindowState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allTabs];
  v5 = [v4 safari_mapObjectsUsingBlock:&__block_literal_global_70];
  v7 = [v5 mutableCopy];

  v6 = [v3 bookmark];

  [v7 addObject:v6];
  [*(*(a1 + 32) + 248) deleteItems:v7 leaveTombstones:0 cleanBookmarks:1];
}

id __46__WBTabGroupManager_deletePrivateWindowState___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAdded:1];
  v3 = [v2 bookmark];

  return v3;
}

void __46__WBTabGroupManager_deletePrivateWindowState___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allTabs];
  v5 = [v4 safari_mapObjectsUsingBlock:&__block_literal_global_73];
  v7 = [v5 mutableCopy];

  v6 = [v3 bookmark];

  [v7 addObject:v6];
  [*(*(a1 + 32) + 248) deleteItems:v7 leaveTombstones:0 cleanBookmarks:1];
}

id __46__WBTabGroupManager_deletePrivateWindowState___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAdded:1];
  v3 = [v2 bookmark];

  return v3;
}

- (id)_allTabGroupsUnsorted
{
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  allValues = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID allValues];
  v5 = [v3 initWithArray:allValues copyItems:1];

  return v5;
}

uint64_t __68__WBTabGroupManager__allSyncedTabGroupsExceptRemoteUnnamedTabGroups__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isNamed])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) _didLocallyCreateUnnamedTabGroup:v3];
  }

  return v4;
}

- (NSArray)allNamedTabGroupsUnsorted
{
  os_unfair_lock_lock(&tabGroupsLock);
  _allTabGroupsUnsorted = [(WBTabGroupManager *)self _allTabGroupsUnsorted];
  os_unfair_lock_unlock(&tabGroupsLock);

  return _allTabGroupsUnsorted;
}

- (NSArray)namedTabGroupsInDefaultProfile
{
  os_unfair_lock_lock(&tabGroupsLock);
  v3 = [(WBTabGroupManager *)self _tabGroupsForProfileWithIdentifier:*MEMORY[0x277D49BD8]];
  os_unfair_lock_unlock(&tabGroupsLock);

  return v3;
}

- (id)namedTabGroupsForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&tabGroupsLock);
  v5 = [(WBTabGroupManager *)self _tabGroupsForProfileWithIdentifier:identifierCopy];

  os_unfair_lock_unlock(&tabGroupsLock);

  return v5;
}

- (id)unnamedTabGroupsForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&tabGroupsLock);
  v5 = [(WBTabGroupManager *)self _unnamedTabGroupsForProfileWithIdentifier:identifierCopy];

  os_unfair_lock_unlock(&tabGroupsLock);

  return v5;
}

- (id)tabGroupWithServerID:(id)d
{
  dCopy = d;
  syncableTabGroupsByUUID = self->_syncableTabGroupsByUUID;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__WBTabGroupManager_tabGroupWithServerID___block_invoke;
  v9[3] = &unk_279E77860;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [(NSMutableDictionary *)syncableTabGroupsByUUID safari_valueOfEntryPassingTest:v9];

  return v7;
}

uint64_t __42__WBTabGroupManager_tabGroupWithServerID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 serverID];
  v4 = WBSIsEqual();

  return v4;
}

- (id)_insertTabGroup:(id)group afterTabGroup:(id)tabGroup isMove:(BOOL)move
{
  v43 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  tabGroupCopy = tabGroup;
  os_unfair_lock_lock(&tabGroupsLock);
  v9 = [groupCopy mutableCopy];
  v31 = tabGroupCopy;
  uuid = [tabGroupCopy uuid];
  v11 = [(WBTabGroupManager *)self _tabGroupWithUUID:uuid];

  v30 = v11;
  v12 = [(WBTabGroupManager *)self _generatePositionForTabGroup:v9 afterTabGroup:v11];
  [v9 setSyncPosition:v12];

  [(WBTabGroupManager *)self _cacheTabGroup:v9 creatorDeviceUUID:0];
  if ([groupCopy supportsTabGroupFavorites])
  {
    [(NSMutableSet *)self->_recentlyAddedTabGroupsAwaitingFirstStartPage addObject:groupCopy];
  }

  os_unfair_lock_unlock(&tabGroupsLock);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = [(NSHashTable *)self->_observers copy];
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v18 tabGroupManagerDidUpdateTabGroups:self];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v15);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __58__WBTabGroupManager__insertTabGroup_afterTabGroup_isMove___block_invoke;
  v32[3] = &unk_279E77888;
  moveCopy = move;
  v32[4] = self;
  v19 = v9;
  v33 = v19;
  v20 = groupCopy;
  v34 = v20;
  v21 = MEMORY[0x2743D6830](v32);
  os_unfair_lock_lock(&profilesLock);
  profileIdentifier = [v19 profileIdentifier];
  v23 = [(WBTabGroupManager *)self profileWithIdentifier:profileIdentifier];

  os_unfair_lock_unlock(&profilesLock);
  if (v23 && [v23 kind] && objc_msgSend(v20, "isNamed"))
  {
    tabCollection = self->_tabCollection;
    v41 = v19;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    [(WBTabCollection *)tabCollection insertItemsIntoPlace:v25 inParent:v23 completionHandler:v21];
  }

  else
  {
    v26 = self->_tabCollection;
    v40 = v19;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    [(WBTabCollection *)v26 insertItemsIntoPlace:v25 inParentWithID:0 completionHandler:v21];
  }

  v27 = [v19 copy];

  return v27;
}

void __58__WBTabGroupManager__insertTabGroup_afterTabGroup_isMove___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 32) + 248);
    if (v3)
    {
      [v4 saveMinimumAPISyncVersionOfDescendantItemsForMovedItem:*(a1 + 48)];
    }

    else
    {
      [v4 createTopScopedBookmarkListIfNeededForTabGroup:*(a1 + 40)];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__WBTabGroupManager__insertTabGroup_afterTabGroup_isMove___block_invoke_2;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __58__WBTabGroupManager__insertTabGroup_afterTabGroup_isMove___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)moveTabGroup:(id)group afterTabGroup:(id)tabGroup
{
  groupCopy = group;
  tabGroupCopy = tabGroup;
  v7 = tabGroupCopy;
  if (tabGroupCopy && ([tabGroupCopy profileIdentifier], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(groupCopy, "profileIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, !v10))
  {
    profileIdentifier = [v7 profileIdentifier];
    [(WBTabGroupManager *)self moveTabGroup:groupCopy toProfileWithIdentifier:profileIdentifier afterTabGroup:v7];
  }

  else
  {
    [(WBTabGroupManager *)self _reorderTabGroup:groupCopy afterTabGroup:v7];
  }
}

- (void)_reorderTabGroup:(id)group afterTabGroup:(id)tabGroup
{
  v49 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  tabGroupCopy = tabGroup;
  v9 = WBS_LOG_CHANNEL_PREFIXTabGroup(tabGroupCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    privacyPreservingDescription = [groupCopy privacyPreservingDescription];
    privacyPreservingDescription2 = [tabGroupCopy privacyPreservingDescription];
    *buf = 138543618;
    v46 = privacyPreservingDescription;
    v47 = 2114;
    v48 = privacyPreservingDescription2;
    _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "Moving tab group %{public}@ after tab group %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&tabGroupsLock);
  uuid = [groupCopy uuid];
  v14 = [(WBTabGroupManager *)self _tabGroupWithUUID:uuid];

  uuid2 = [tabGroupCopy uuid];
  v16 = [(WBTabGroupManager *)self _tabGroupWithUUID:uuid2];

  if (v14)
  {
    profileIdentifier = [groupCopy profileIdentifier];
    v20 = [(WBTabGroupManager *)self _tabGroupsForProfileWithIdentifier:profileIdentifier];

    v21 = [(WBTabGroupManager *)self _tabGroupAfterTabGroup:tabGroupCopy inTabGroups:v20];
    v22 = [v20 count];
    if (v22 && (v22 = WBSIsEqual(), !v22))
    {
      v36 = v21;
      v37 = v20;
      v38 = v16;
      v28 = [(WBTabGroupManager *)self _generatePositionForTabGroup:v14 afterTabGroup:v16 inTabGroups:v20];
      [v14 setSyncPosition:v28];

      os_unfair_lock_unlock(&tabGroupsLock);
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v29 = [(NSHashTable *)self->_observers copy];
      v30 = [v29 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v41;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v41 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v40 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v34 tabGroupManagerDidUpdateTabGroups:self];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v31);
      }

      tabCollection = self->_tabCollection;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __52__WBTabGroupManager__reorderTabGroup_afterTabGroup___block_invoke;
      v39[3] = &unk_279E75238;
      v39[4] = self;
      [(WBTabCollection *)tabCollection reorderItemIntoPlace:v14 completionHandler:v39];
      v16 = v38;
      v21 = v36;
      v20 = v37;
    }

    else
    {
      v24 = WBS_LOG_CHANNEL_PREFIXTabGroup(v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = v24;
        privacyPreservingDescription3 = [groupCopy privacyPreservingDescription];
        *buf = 138543362;
        v46 = privacyPreservingDescription3;
        _os_log_impl(&dword_272C20000, v25, OS_LOG_TYPE_INFO, "Not moving tab group %{public}@ because its position did not change.", buf, 0xCu);
      }

      os_unfair_lock_unlock(&tabGroupsLock);
    }
  }

  else
  {
    v27 = WBS_LOG_CHANNEL_PREFIXTabGroup(v17, v18);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [WBTabGroupManager _reorderTabGroup:v27 afterTabGroup:?];
    }

    os_unfair_lock_unlock(&tabGroupsLock);
  }
}

void __52__WBTabGroupManager__reorderTabGroup_afterTabGroup___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__WBTabGroupManager__reorderTabGroup_afterTabGroup___block_invoke_2;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __52__WBTabGroupManager__reorderTabGroup_afterTabGroup___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)moveTabGroup:(id)group toProfileWithIdentifier:(id)identifier afterTabGroup:(id)tabGroup
{
  tabGroupCopy = tabGroup;
  identifierCopy = identifier;
  groupCopy = group;
  os_unfair_lock_lock(&tabGroupsLock);
  uuid = [groupCopy uuid];

  v11 = [(WBTabGroupManager *)self _tabGroupWithUUID:uuid];

  [v11 setProfileIdentifier:identifierCopy];
  os_unfair_lock_unlock(&tabGroupsLock);
  v12 = [(WBTabGroupManager *)self _insertTabGroup:v11 afterTabGroup:tabGroupCopy isMove:1];
}

- (void)removeTabGroup:(id)group
{
  v46 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  os_unfair_lock_lock(&tabGroupsLock);
  uuid = [groupCopy uuid];
  v6 = [(WBTabGroupManager *)self _tabGroupWithUUID:uuid];

  v9 = WBS_LOG_CHANNEL_PREFIXTabGroup(v7, v8);
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      privacyPreservingDescription = [groupCopy privacyPreservingDescription];
      *buf = 138543362;
      v45 = privacyPreservingDescription;
      _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_DEFAULT, "Removing tab group %{public}@", buf, 0xCu);
    }

    [(WBTabGroupManager *)self _uncacheTabGroup:v6];
    removedTabGroupsByUUID = self->_removedTabGroupsByUUID;
    uuid2 = [v6 uuid];
    v30 = v6;
    [(NSMutableDictionary *)removedTabGroupsByUUID setObject:v6 forKeyedSubscript:uuid2];

    os_unfair_lock_unlock(&tabGroupsLock);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = [(NSHashTable *)self->_observers copy];
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        v19 = 0;
        do
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v37 + 1) + 8 * v19);
          if (objc_opt_respondsToSelector())
          {
            uuid3 = [groupCopy uuid];
            [v20 tabGroupManager:self didRemoveTabGroupWithUUID:uuid3];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v17);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = [(NSHashTable *)self->_observers copy];
    v23 = [v22 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v34;
      do
      {
        v26 = 0;
        do
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v33 + 1) + 8 * v26);
          if (objc_opt_respondsToSelector())
          {
            [v27 tabGroupManagerDidUpdateTabGroups:self];
          }

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v24);
    }

    tabCollection = self->_tabCollection;
    v6 = v30;
    v41 = v30;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __36__WBTabGroupManager_removeTabGroup___block_invoke;
    v31[3] = &unk_279E778B0;
    v31[4] = self;
    v32 = v30;
    [(WBTabCollection *)tabCollection deleteItems:v29 leaveTombstones:1 completionHandler:v31];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [WBTabGroupManager removeTabGroup:v10];
    }

    os_unfair_lock_unlock(&tabGroupsLock);
  }
}

void __36__WBTabGroupManager_removeTabGroup___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __36__WBTabGroupManager_removeTabGroup___block_invoke_2;
    v3[3] = &unk_279E753F0;
    v2 = *(a1 + 40);
    v3[4] = *(a1 + 32);
    v4 = v2;
    dispatch_async(MEMORY[0x277D85CD0], v3);
  }
}

void __36__WBTabGroupManager_removeTabGroup___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__WBTabGroupManager_removeTabGroup___block_invoke_3;
  v13[3] = &unk_279E753F0;
  v2 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v2;
  os_unfair_lock_lock(&tabGroupsLock);
  __36__WBTabGroupManager_removeTabGroup___block_invoke_3(v13);
  os_unfair_lock_unlock(&tabGroupsLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(*(a1 + 32) + 16) copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v5);
  }
}

void __36__WBTabGroupManager_removeTabGroup___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = [*(a1 + 40) uuid];
  [v1 setObject:0 forKeyedSubscript:v2];
}

- (void)updateTabGroupWithUUID:(id)d persist:(BOOL)persist usingBlock:(id)block
{
  persistCopy = persist;
  v59 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  v11 = WBS_LOG_CHANNEL_PREFIXTabGroup(blockCopy, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v58 = dCopy;
    _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Updating tab group with uuid %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&tabGroupsLock);
  v13 = [(WBTabGroupManager *)self _tabGroupWithUUID:dCopy];
  if (v13)
  {
    v37 = persistCopy;
    v38 = dCopy;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v14 = [(NSHashTable *)self->_observers copy];
    v15 = [v14 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v51;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v51 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v50 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            uuid = [v13 uuid];
            [v19 tabGroupManager:self willPerformBlockUpdatesForTabGroupWithUUID:uuid];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v16);
    }

    blockCopy[2](blockCopy, v13);
    [v13 updateLastSelectedTab];
    os_unfair_lock_unlock(&tabGroupsLock);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v21 = [(NSHashTable *)self->_observers copy];
    v22 = [v21 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v47;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v47 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v46 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            uuid2 = [v13 uuid];
            [v26 tabGroupManager:self didPerformBlockUpdatesForTabGroupWithUUID:uuid2];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v23);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v28 = [(NSHashTable *)self->_observers copy];
    v29 = [v28 countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v43;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v43 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v42 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            uuid3 = [v13 uuid];
            [v33 tabGroupManager:self didUpdateTabGroupWithUUID:uuid3];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v42 objects:v54 count:16];
      }

      while (v30);
    }

    dCopy = v38;
    if (v37)
    {
      tabCollection = self->_tabCollection;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __63__WBTabGroupManager_updateTabGroupWithUUID_persist_usingBlock___block_invoke;
      v39[3] = &unk_279E778B0;
      v40 = v13;
      selfCopy = self;
      [(WBTabCollection *)tabCollection saveItem:v40 completionHandler:v39];
    }
  }

  else
  {
    v36 = WBS_LOG_CHANNEL_PREFIXTabGroup(0, v12);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v58 = dCopy;
      _os_log_impl(&dword_272C20000, v36, OS_LOG_TYPE_INFO, "Not updating tab group with uuid %{public}@ because it does not exist.", buf, 0xCu);
    }

    os_unfair_lock_unlock(&tabGroupsLock);
  }
}

void __63__WBTabGroupManager_updateTabGroupWithUUID_persist_usingBlock___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if ([*(a1 + 32) isSyncable])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__WBTabGroupManager_updateTabGroupWithUUID_persist_usingBlock___block_invoke_2;
      block[3] = &unk_279E751F0;
      block[4] = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __63__WBTabGroupManager_updateTabGroupWithUUID_persist_usingBlock___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)hasMultipleProfiles
{
  profiles = [(WBTabGroupManager *)self profiles];
  v3 = [profiles count] > 1;

  return v3;
}

- (id)_tabGroupsForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy isEqual:*MEMORY[0x277D49BD8]];
  allValues = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID allValues];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __56__WBTabGroupManager__tabGroupsForProfileWithIdentifier___block_invoke;
  v15 = &unk_279E77918;
  v16 = identifierCopy;
  v17 = v5;
  v7 = identifierCopy;
  v8 = [allValues safari_filterObjectsUsingBlock:&v12];

  v9 = [(WBTabGroupManager *)self _itemSyncPositionComparator:v12];
  v10 = [v8 sortedArrayUsingComparator:v9];

  return v10;
}

uint64_t __56__WBTabGroupManager__tabGroupsForProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isNamed])
  {
    v4 = [v3 profileIdentifier];
    if (WBSIsEqual())
    {
      v5 = 1;
    }

    else if (*(a1 + 40) == 1)
    {
      v5 = [v3 isInDefaultProfile];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_unnamedTabGroupsForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy isEqual:*MEMORY[0x277D49BD8]];
  allValues = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID allValues];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__WBTabGroupManager__unnamedTabGroupsForProfileWithIdentifier___block_invoke;
  v10[3] = &unk_279E77918;
  v11 = identifierCopy;
  v12 = v5;
  v7 = identifierCopy;
  v8 = [allValues safari_filterObjectsUsingBlock:v10];

  return v8;
}

uint64_t __63__WBTabGroupManager__unnamedTabGroupsForProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isNamed])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 profileIdentifier];
    if (WBSIsEqual())
    {
      v4 = 1;
    }

    else if (*(a1 + 40) == 1)
    {
      v4 = [v3 isInDefaultProfile];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)_unnamedTabGroupsForDeviceWithUUID:(id)d
{
  dCopy = d;
  allValues = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID allValues];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__WBTabGroupManager__unnamedTabGroupsForDeviceWithUUID___block_invoke;
  v11[3] = &unk_279E77940;
  v12 = dCopy;
  v6 = dCopy;
  v7 = [allValues safari_filterObjectsUsingBlock:v11];

  _itemSyncPositionComparator = [(WBTabGroupManager *)self _itemSyncPositionComparator];
  v9 = [v7 sortedArrayUsingComparator:_itemSyncPositionComparator];

  return v9;
}

uint64_t __56__WBTabGroupManager__unnamedTabGroupsForDeviceWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isNamed])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 deviceUUIDString];
    v3 = WBSIsEqual();
  }

  return v3;
}

- (id)profileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_profilesByIdentifier objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_removedProfilesByIdentifier objectForKeyedSubscript:identifierCopy];
  }

  v8 = v7;

  return v8;
}

- (void)appendProfile:(id)profile completionHandler:(id)handler
{
  v50 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  handlerCopy = handler;
  os_unfair_lock_lock(&profilesLock);
  v7 = [profileCopy mutableCopy];
  _namedProfiles = [(WBTabGroupManager *)self _namedProfiles];
  lastObject = [_namedProfiles lastObject];
  v10 = [(WBTabGroupManager *)self _generatePositionForProfile:profileCopy afterProfile:lastObject];
  [v7 setSyncPosition:v10];

  profilesByIdentifier = self->_profilesByIdentifier;
  identifier = [profileCopy identifier];
  [(NSMutableDictionary *)profilesByIdentifier setObject:v7 forKeyedSubscript:identifier];

  os_unfair_lock_unlock(&profilesLock);
  profileDataManager = self->_profileDataManager;
  serverID = [profileCopy serverID];
  v34 = profileCopy;
  identifier2 = [profileCopy identifier];
  [(WBSProfileDataManager *)profileDataManager ensureProfileDirectoriesExistForProfileWithServerID:serverID profileIdentifier:identifier2];

  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v43 = 0u;
  v16 = [(NSHashTable *)self->_observers copy];
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      v20 = 0;
      do
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v43 + 1) + 8 * v20);
        if (objc_opt_respondsToSelector())
        {
          identifier3 = [v7 identifier];
          [v21 tabGroupManager:self didInsertProfileWithIdentifier:identifier3];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v18);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = [(NSHashTable *)self->_observers copy];
  v24 = [v23 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v40;
    do
    {
      v27 = 0;
      do
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v39 + 1) + 8 * v27);
        if (objc_opt_respondsToSelector())
        {
          [v28 tabGroupManagerDidUpdateProfiles:self];
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v25);
  }

  tabCollection = self->_tabCollection;
  v47 = v7;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __53__WBTabGroupManager_appendProfile_completionHandler___block_invoke;
  v35[3] = &unk_279E77990;
  selfCopy = self;
  v38 = handlerCopy;
  v36 = v7;
  v31 = v7;
  v32 = handlerCopy;
  [(WBTabCollection *)tabCollection insertItemsIntoPlace:v30 inParentWithID:0 completionHandler:v35];
}

void __53__WBTabGroupManager_appendProfile_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 48))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__WBTabGroupManager_appendProfile_completionHandler___block_invoke_2;
    block[3] = &unk_279E77968;
    v7 = *(a1 + 48);
    v8 = a2;
    v6 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if (a2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__WBTabGroupManager_appendProfile_completionHandler___block_invoke_3;
    v4[3] = &unk_279E751F0;
    v4[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __53__WBTabGroupManager_appendProfile_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v4 = [*(a1 + 32) copy];
    (*(v1 + 16))(v1, v4);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 0);
  }
}

void __53__WBTabGroupManager_appendProfile_completionHandler___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)updateProfileWithIdentifier:(id)identifier persist:(BOOL)persist usingBlock:(id)block completionHandler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  blockCopy = block;
  handlerCopy = handler;
  os_unfair_lock_lock(&profilesLock);
  v13 = [(NSMutableDictionary *)self->_profilesByIdentifier objectForKeyedSubscript:identifierCopy];
  v15 = v13;
  if (v13)
  {
    persistCopy = persist;
    v31 = handlerCopy;
    v33 = identifierCopy;
    v34 = [v13 copy];
    v32 = blockCopy;
    blockCopy[2](blockCopy, v15);
    os_unfair_lock_unlock(&profilesLock);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    selfCopy = self;
    v17 = [(NSHashTable *)self->_observers copy];
    v18 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v40;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v39 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            identifier = [v15 identifier];
            v24 = [v15 differenceFromProfile:v34];
            [v22 tabGroupManager:selfCopy didUpdateProfileWithIdentifier:identifier difference:v24];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v19);
    }

    if (persistCopy)
    {
      tabCollection = selfCopy->_tabCollection;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __86__WBTabGroupManager_updateProfileWithIdentifier_persist_usingBlock_completionHandler___block_invoke;
      v35[3] = &unk_279E77990;
      handlerCopy = v31;
      v38 = v31;
      v26 = v15;
      v36 = v26;
      v37 = selfCopy;
      [(WBTabCollection *)tabCollection saveItem:v26 completionHandler:v35];
      v27 = [v26 copy];

      blockCopy = v32;
      identifierCopy = v33;
    }

    else
    {
      v27 = [v15 copy];
      blockCopy = v32;
      identifierCopy = v33;
      handlerCopy = v31;
    }
  }

  else
  {
    v28 = WBS_LOG_CHANNEL_PREFIXTabGroup(0, v14);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v45 = identifierCopy;
      _os_log_impl(&dword_272C20000, v28, OS_LOG_TYPE_INFO, "Not updating profile with uuid %{public}@ because it does not exist.", buf, 0xCu);
    }

    os_unfair_lock_unlock(&profilesLock);
    v27 = 0;
  }

  return v27;
}

void __86__WBTabGroupManager_updateProfileWithIdentifier_persist_usingBlock_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 48))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__WBTabGroupManager_updateProfileWithIdentifier_persist_usingBlock_completionHandler___block_invoke_2;
    block[3] = &unk_279E779B8;
    v6 = *(a1 + 48);
    v7 = a2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if (a2)
  {
    if ([*(a1 + 32) isSyncable])
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __86__WBTabGroupManager_updateProfileWithIdentifier_persist_usingBlock_completionHandler___block_invoke_3;
      v4[3] = &unk_279E751F0;
      v4[4] = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], v4);
    }
  }
}

void __86__WBTabGroupManager_updateProfileWithIdentifier_persist_usingBlock_completionHandler___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)removeProfile:(id)profile completionHandler:(id)handler
{
  v58 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  handlerCopy = handler;
  os_unfair_lock_lock(&profilesLock);
  profilesByIdentifier = self->_profilesByIdentifier;
  identifier = [profileCopy identifier];
  v10 = [(NSMutableDictionary *)profilesByIdentifier objectForKeyedSubscript:identifier];

  v13 = WBS_LOG_CHANNEL_PREFIXTabGroup(v11, v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v14)
    {
      v15 = v13;
      privacyPreservingDescription = [profileCopy privacyPreservingDescription];
      *buf = 138543362;
      v57 = privacyPreservingDescription;
      _os_log_impl(&dword_272C20000, v15, OS_LOG_TYPE_INFO, "Removing profile %{public}@", buf, 0xCu);
    }

    v40 = handlerCopy;
    v17 = self->_profilesByIdentifier;
    identifier2 = [profileCopy identifier];
    [(NSMutableDictionary *)v17 removeObjectForKey:identifier2];

    removedProfilesByIdentifier = self->_removedProfilesByIdentifier;
    identifier3 = [v10 identifier];
    v39 = v10;
    [(NSMutableDictionary *)removedProfilesByIdentifier setObject:v10 forKeyedSubscript:identifier3];

    os_unfair_lock_unlock(&profilesLock);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v21 = [(NSHashTable *)self->_observers copy];
    v22 = [v21 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v50;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v50 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v49 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            identifier4 = [profileCopy identifier];
            [v26 tabGroupManager:self didRemoveProfileWithIdentifier:identifier4];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v23);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = [(NSHashTable *)self->_observers copy];
    v29 = [v28 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v46;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v45 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v33 tabGroupManagerDidUpdateProfiles:self];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v30);
    }

    v10 = v39;
    if (![(WBTabGroupManager *)self hasMultipleProfiles])
    {
      v34 = [(WBTabGroupManager *)self updateProfileWithIdentifier:*MEMORY[0x277D49BD8] persist:1 usingBlock:&__block_literal_global_107 completionHandler:0];
    }

    tabCollection = self->_tabCollection;
    v53 = v39;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_2;
    v41[3] = &unk_279E77A00;
    handlerCopy = v40;
    v44 = v40;
    v41[4] = self;
    v42 = profileCopy;
    v43 = v39;
    [(WBTabCollection *)tabCollection deleteItems:v36 leaveTombstones:1 completionHandler:v41];
  }

  else
  {
    if (v14)
    {
      v37 = v13;
      privacyPreservingDescription2 = [profileCopy privacyPreservingDescription];
      *buf = 138543362;
      v57 = privacyPreservingDescription2;
      _os_log_impl(&dword_272C20000, v37, OS_LOG_TYPE_INFO, "Not removing profile %{public}@ because it no longer exists", buf, 0xCu);
    }

    os_unfair_lock_unlock(&profilesLock);
  }
}

void __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:&stru_288259858];
  v3 = [MEMORY[0x277D499E8] defaultPersonalProfileSymbolImage];
  [v2 setSymbolImageName:v3];

  v4 = [MEMORY[0x277D499E8] defaultPersonalProfileColor];
  [v2 setColor:v4];
}

void __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (*(a1 + 56))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_3;
    block[3] = &unk_279E779B8;
    v7 = *(a1 + 56);
    v8 = a2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if (a2)
  {
    [*(*(a1 + 32) + 152) didRemoveProfile:*(a1 + 40)];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_4;
    v4[3] = &unk_279E753F0;
    v4[4] = *(a1 + 32);
    v5 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_5;
  v13[3] = &unk_279E753F0;
  v2 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v2;
  os_unfair_lock_lock(&profilesLock);
  __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_5(v13);
  os_unfair_lock_unlock(&profilesLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(*(a1 + 32) + 16) copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v5);
  }
}

void __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 112);
  v2 = [*(a1 + 40) identifier];
  [v1 setObject:0 forKeyedSubscript:v2];
}

- (void)moveProfile:(id)profile afterProfile:(id)afterProfile
{
  v43 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  afterProfileCopy = afterProfile;
  v9 = WBS_LOG_CHANNEL_PREFIXTabGroup(afterProfileCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    privacyPreservingDescription = [profileCopy privacyPreservingDescription];
    privacyPreservingDescription2 = [afterProfileCopy privacyPreservingDescription];
    *buf = 138543618;
    v40 = privacyPreservingDescription;
    v41 = 2114;
    v42 = privacyPreservingDescription2;
    _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "Moving profile %{public}@ after profile %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&profilesLock);
  profilesByIdentifier = self->_profilesByIdentifier;
  identifier = [profileCopy identifier];
  v15 = [(NSMutableDictionary *)profilesByIdentifier objectForKeyedSubscript:identifier];

  v16 = self->_profilesByIdentifier;
  identifier2 = [afterProfileCopy identifier];
  v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:identifier2];

  if (v15)
  {
    v32 = v18;
    v21 = [(WBTabGroupManager *)self _generatePositionForProfile:profileCopy afterProfile:v18];
    [v15 setSyncPosition:v21];

    os_unfair_lock_unlock(&profilesLock);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = [(NSHashTable *)self->_observers copy];
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v34 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v27 tabGroupManagerDidUpdateProfiles:self];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v24);
    }

    tabCollection = self->_tabCollection;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __46__WBTabGroupManager_moveProfile_afterProfile___block_invoke;
    v33[3] = &unk_279E75238;
    v33[4] = self;
    [(WBTabCollection *)tabCollection reorderItemIntoPlace:v15 completionHandler:v33];
    v18 = v32;
  }

  else
  {
    v29 = WBS_LOG_CHANNEL_PREFIXTabGroup(v19, v20);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = v29;
      privacyPreservingDescription3 = [profileCopy privacyPreservingDescription];
      *buf = 138543362;
      v40 = privacyPreservingDescription3;
      _os_log_impl(&dword_272C20000, v30, OS_LOG_TYPE_INFO, "Not moving profile %{public}@ because it no longer exists", buf, 0xCu);
    }

    os_unfair_lock_unlock(&profilesLock);
  }
}

void __46__WBTabGroupManager_moveProfile_afterProfile___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__WBTabGroupManager_moveProfile_afterProfile___block_invoke_2;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __46__WBTabGroupManager_moveProfile_afterProfile___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)insertUnnamedTabGroup:(id)group
{
  v25[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  os_unfair_lock_lock(&profilesLock);
  v5 = [groupCopy mutableCopy];

  profileIdentifier = [v5 profileIdentifier];
  v7 = [(WBTabGroupManager *)self profileWithIdentifier:profileIdentifier];

  identifier = [v7 identifier];
  v9 = [(WBTabGroupManager *)self _findOrCreateLocalDeviceForProfileWithIdentifier:identifier];

  uuid = [v9 uuid];
  deviceUUIDByTabGroupUUID = self->_deviceUUIDByTabGroupUUID;
  uuid2 = [v5 uuid];
  [(NSMutableDictionary *)deviceUUIDByTabGroupUUID setObject:uuid forKeyedSubscript:uuid2];

  os_unfair_lock_unlock(&profilesLock);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __43__WBTabGroupManager_insertUnnamedTabGroup___block_invoke;
  v21[3] = &unk_279E75D50;
  v22 = v5;
  selfCopy = self;
  v24 = v9;
  v13 = v9;
  v14 = v5;
  os_unfair_lock_lock(&tabGroupsLock);
  __43__WBTabGroupManager_insertUnnamedTabGroup___block_invoke(v21);
  os_unfair_lock_unlock(&tabGroupsLock);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __43__WBTabGroupManager_insertUnnamedTabGroup___block_invoke_2;
  v20[3] = &unk_279E75238;
  v20[4] = self;
  v15 = MEMORY[0x2743D6830](v20);
  tabCollection = self->_tabCollection;
  v25[0] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [(WBTabCollection *)tabCollection insertItemsIntoPlace:v17 inParent:v13 completionHandler:v15];

  v18 = [v14 copy];

  return v18;
}

void __43__WBTabGroupManager_insertUnnamedTabGroup___block_invoke(id *a1)
{
  v2 = [a1[5] _generatePositionForTabGroup:a1[4] afterTabGroup:0];
  [a1[4] setSyncPosition:v2];

  v3 = [a1[6] profileIdentifier];
  [a1[4] setDeviceUUIDString:v3];

  v5 = a1[4];
  v4 = a1[5];
  v6 = [a1[6] profileIdentifier];
  [v4 _cacheTabGroup:v5 creatorDeviceUUID:v6];
}

void __43__WBTabGroupManager_insertUnnamedTabGroup___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__WBTabGroupManager_insertUnnamedTabGroup___block_invoke_3;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __43__WBTabGroupManager_insertUnnamedTabGroup___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)_tabGroupsWithTabsToBeClosedForProfilesWithIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (WBSIsEqual())
        {
          [(NSMutableDictionary *)self->_localTabGroupsByUUID allValues];
        }

        else
        {
          [(WBTabGroupManager *)self _unnamedTabGroupsForProfileWithIdentifier:v11, v14];
        }
        v12 = ;
        [array addObjectsFromArray:{v12, v14}];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return array;
}

- (unint64_t)numberOfTabsToBeClosedForProfilesWithIdentifiers:(id)identifiers
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(WBTabGroupManager *)self _tabGroupsWithTabsToBeClosedForProfilesWithIdentifiers:identifiers, 0];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        tabs = [*(*(&v12 + 1) + 8 * i) tabs];
        v10 = [tabs safari_filterObjectsUsingBlock:&__block_literal_global_114];
        v6 += [v10 count];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)closeAllTabsInProfilesWithIdentifiers:(id)identifiers
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [(WBTabGroupManager *)self _tabGroupsWithTabsToBeClosedForProfilesWithIdentifiers:identifiers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        uuid = [*(*(&v10 + 1) + 8 * v8) uuid];
        [(WBTabGroupManager *)self updateTabsInTabGroupWithUUID:uuid persist:1 usingBlock:&__block_literal_global_116];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)isTab:(id)tab childOfPinnedTabGroupOfNamedProfileOfUnnamedTabGroup:(id)group
{
  tabCopy = tab;
  groupCopy = group;
  if ([groupCopy isNamed] & 1) != 0 || (objc_msgSend(groupCopy, "profileIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277D49BD8]), v8, (v9))
  {
    v10 = 0;
  }

  else
  {
    tabCollection = self->_tabCollection;
    profileIdentifier = [groupCopy profileIdentifier];
    LODWORD(tabCollection) = [(WBTabCollection *)tabCollection pinnedTabsFolderIDForProfileWithIdentifier:profileIdentifier];

    v10 = [tabCopy parentIdentifier] == tabCollection;
  }

  return v10;
}

- (id)profileWithServerID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&profilesLock);
  profilesByIdentifier = self->_profilesByIdentifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__WBTabGroupManager_profileWithServerID___block_invoke;
  v9[3] = &unk_279E77A48;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [(NSMutableDictionary *)profilesByIdentifier safari_valueOfEntryPassingTest:v9];
  os_unfair_lock_unlock(&profilesLock);

  return v7;
}

uint64_t __41__WBTabGroupManager_profileWithServerID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 serverID];
  v4 = WBSIsEqual();

  return v4;
}

- (id)syncedRemoteCloudTabDevicesForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&profilesLock);
  v5 = [(WBTabGroupManager *)self _remoteDevicesForProfileWithIdentifier:identifierCopy];

  os_unfair_lock_unlock(&profilesLock);

  return v5;
}

- (BOOL)closeTab:(id)tab onDevice:(id)device
{
  uuidString = [tab uuidString];
  v6 = [(WBTabGroupManager *)self _tabWithUUID:uuidString];

  tabGroupUUID = [v6 tabGroupUUID];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__WBTabGroupManager_closeTab_onDevice___block_invoke;
  v10[3] = &unk_279E751B8;
  v11 = v6;
  v8 = v6;
  [(WBTabGroupManager *)self updateTabsInTabGroupWithUUID:tabGroupUUID persist:1 usingBlock:v10];

  return 1;
}

void __39__WBTabGroupManager_closeTab_onDevice___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v5 count:1];
  [v3 deleteTabs:{v4, v5, v6}];
}

- (BOOL)closeAllTabsOnDevice:(id)device
{
  tabs = [device tabs];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__WBTabGroupManager_closeAllTabsOnDevice___block_invoke;
  v12[3] = &unk_279E77A70;
  v12[4] = self;
  v5 = [tabs safari_mapObjectsUsingBlock:v12];

  v6 = [v5 count];
  if (v6)
  {
    firstObject = [v5 firstObject];
    tabGroupUUID = [firstObject tabGroupUUID];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__WBTabGroupManager_closeAllTabsOnDevice___block_invoke_2;
    v10[3] = &unk_279E751B8;
    v11 = v5;
    [(WBTabGroupManager *)self updateTabsInTabGroupWithUUID:tabGroupUUID persist:1 usingBlock:v10];
  }

  return v6 != 0;
}

id __42__WBTabGroupManager_closeAllTabsOnDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuidString];
  v4 = [v2 _tabWithUUID:v3];

  return v4;
}

- (id)devicesForProfile:(id)profile
{
  profileCopy = profile;
  os_unfair_lock_lock(&profilesLock);
  identifier = [profileCopy identifier];

  v6 = [(WBTabGroupManager *)self _devicesForProfileWithIdentifier:identifier];

  os_unfair_lock_unlock(&profilesLock);

  return v6;
}

- (id)_devicesForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allValues = [(NSMutableDictionary *)self->_devicesByUUID allValues];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__WBTabGroupManager__devicesForProfileWithIdentifier___block_invoke;
  v11[3] = &unk_279E77A98;
  v12 = identifierCopy;
  v6 = identifierCopy;
  v7 = [allValues safari_filterObjectsUsingBlock:v11];

  _itemSyncPositionComparator = [(WBTabGroupManager *)self _itemSyncPositionComparator];
  v9 = [v7 sortedArrayUsingComparator:_itemSyncPositionComparator];

  return v9;
}

uint64_t __54__WBTabGroupManager__devicesForProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 profileIdentifier];
  v3 = WBSIsEqual();

  return v3;
}

- (id)_remoteDevicesForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allValues = [(NSMutableDictionary *)self->_devicesByUUID allValues];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__WBTabGroupManager__remoteDevicesForProfileWithIdentifier___block_invoke;
  v11[3] = &unk_279E77A98;
  v12 = identifierCopy;
  v6 = identifierCopy;
  v7 = [allValues safari_filterObjectsUsingBlock:v11];

  _itemSyncPositionComparator = [(WBTabGroupManager *)self _itemSyncPositionComparator];
  v9 = [v7 sortedArrayUsingComparator:_itemSyncPositionComparator];

  return v9;
}

BOOL __60__WBTabGroupManager__remoteDevicesForProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 bookmark];
  if ([v3 subtype] == 4)
  {
    v4 = [v2 profileIdentifier];
    if (WBSIsEqual())
    {
      v5 = [v2 tabs];
      v6 = [v5 count] != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_insertDevice:(id)device inProfile:(id)profile completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  handlerCopy = handler;
  profileCopy = profile;
  os_unfair_lock_assert_owner(&profilesLock);
  v11 = [(WBTabGroupManager *)self _generatePositionForDevice:deviceCopy afterDevice:0];
  [deviceCopy setSyncPosition:v11];

  devicesByUUID = self->_devicesByUUID;
  uuid = [deviceCopy uuid];
  [(NSMutableDictionary *)devicesByUUID setObject:deviceCopy forKeyedSubscript:uuid];

  tabCollection = self->_tabCollection;
  v21[0] = deviceCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__WBTabGroupManager__insertDevice_inProfile_completionHandler___block_invoke;
  v19[3] = &unk_279E77AC0;
  v19[4] = self;
  v20 = handlerCopy;
  v16 = handlerCopy;
  [(WBTabCollection *)tabCollection insertItemsIntoPlace:v15 inParent:profileCopy completionHandler:v19];

  v17 = deviceCopy;
  return deviceCopy;
}

void __63__WBTabGroupManager__insertDevice_inProfile_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__WBTabGroupManager__insertDevice_inProfile_completionHandler___block_invoke_2;
    block[3] = &unk_279E779B8;
    v6 = *(a1 + 40);
    v7 = a2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if (a2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __63__WBTabGroupManager__insertDevice_inProfile_completionHandler___block_invoke_3;
    v4[3] = &unk_279E751F0;
    v4[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __63__WBTabGroupManager__insertDevice_inProfile_completionHandler___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)_findOrCreateLocalDeviceForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(WBTabGroupManager *)self _findLocalDeviceForProfileWithIdentifier:identifierCopy];
  if (!v5)
  {
    v6 = [(NSMutableDictionary *)self->_profilesByIdentifier objectForKeyedSubscript:identifierCopy];
    lastLocalDeviceNameSaved = self->_lastLocalDeviceNameSaved;
    userUniqueDeviceIdentifier = [(WBSDevice *)self->_device userUniqueDeviceIdentifier];
    deviceIdentifier = [(WBTabGroupManager *)self deviceIdentifier];
    v10 = [WBDeviceParameters localDeviceWithTitle:lastLocalDeviceNameSaved creationDeviceIdentifier:userUniqueDeviceIdentifier deviceIdentifier:deviceIdentifier];

    deviceTypeIdentifier = [(WBSDevice *)self->_device deviceTypeIdentifier];
    [v10 setDeviceTypeIdentifier:deviceTypeIdentifier];

    v12 = [WBDevice deviceWithParameters:v10 unnamedTabGroups:MEMORY[0x277CBEBF8] profileIdentifier:identifierCopy];
    v5 = [(WBTabGroupManager *)self _insertDevice:v12 inProfile:v6 completionHandler:0];
  }

  return v5;
}

- (id)_findLocalDeviceForProfileWithIdentifier:(id)identifier
{
  v3 = [(WBTabGroupManager *)self _devicesForProfileWithIdentifier:identifier];
  v4 = [v3 safari_firstObjectPassingTest:&__block_literal_global_123];

  return v4;
}

- (void)_didModifyUnnamedTabGroup:(id)group
{
  groupCopy = group;
  deviceUUIDString = [groupCopy deviceUUIDString];
  [(WBTabGroupManager *)self _didModifyUnnamedTabGroupInDeviceWithUUID:deviceUUIDString];

  os_unfair_lock_lock(&tabGroupsLock);
  deviceUUIDString2 = [groupCopy deviceUUIDString];
  v7 = [(WBTabGroupManager *)self _unnamedTabGroupsForDeviceWithUUID:deviceUUIDString2];

  firstObject = [v7 firstObject];
  v9 = [groupCopy isEqual:firstObject];

  if (v9)
  {
    os_unfair_lock_unlock(&tabGroupsLock);
  }

  else
  {
    v10 = [(WBTabGroupManager *)self _generatePositionForTabGroup:groupCopy afterTabGroup:0];
    [groupCopy setSyncPosition:v10];

    os_unfair_lock_unlock(&tabGroupsLock);
    tabCollection = self->_tabCollection;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__WBTabGroupManager__didModifyUnnamedTabGroup___block_invoke;
    v12[3] = &unk_279E75238;
    v12[4] = self;
    [(WBTabCollection *)tabCollection reorderItemIntoPlace:groupCopy completionHandler:v12];
  }
}

void __47__WBTabGroupManager__didModifyUnnamedTabGroup___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__WBTabGroupManager__didModifyUnnamedTabGroup___block_invoke_2;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __47__WBTabGroupManager__didModifyUnnamedTabGroup___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_didModifyUnnamedTabGroupInDeviceWithUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&tabGroupsLock);
  v5 = [(NSMutableDictionary *)self->_devicesByUUID objectForKeyedSubscript:dCopy];

  profileIdentifier = [v5 profileIdentifier];
  v7 = [(WBTabGroupManager *)self _devicesForProfileWithIdentifier:profileIdentifier];

  firstObject = [v7 firstObject];
  v9 = [v5 isEqual:firstObject];

  if (v9)
  {
    os_unfair_lock_unlock(&tabGroupsLock);
  }

  else
  {
    v10 = [(WBTabGroupManager *)self _generatePositionForDevice:v5 afterDevice:0];
    [v5 setSyncPosition:v10];

    os_unfair_lock_unlock(&tabGroupsLock);
    tabCollection = self->_tabCollection;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__WBTabGroupManager__didModifyUnnamedTabGroupInDeviceWithUUID___block_invoke;
    v12[3] = &unk_279E75238;
    v12[4] = self;
    [(WBTabCollection *)tabCollection reorderItemIntoPlace:v5 completionHandler:v12];
  }
}

void __63__WBTabGroupManager__didModifyUnnamedTabGroupInDeviceWithUUID___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__WBTabGroupManager__didModifyUnnamedTabGroupInDeviceWithUUID___block_invoke_2;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __63__WBTabGroupManager__didModifyUnnamedTabGroupInDeviceWithUUID___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_updateDeviceNameIfNeededWithName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (![(NSString *)self->_lastLocalDeviceNameSaved isEqualToString:nameCopy])
  {
    allValues = [(NSMutableDictionary *)self->_devicesByUUID allValues];
    v7 = [allValues safari_filterObjectsUsingBlock:&__block_literal_global_125];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v15 + 1) + 8 * v12++) setTitle:nameCopy];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    objc_storeStrong(&self->_lastLocalDeviceNameSaved, name);
    tabCollection = self->_tabCollection;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__WBTabGroupManager__updateDeviceNameIfNeededWithName___block_invoke_2;
    v14[3] = &unk_279E75238;
    v14[4] = self;
    [(WBTabCollection *)tabCollection saveItems:v8 completionHandler:v14];
  }
}

void __55__WBTabGroupManager__updateDeviceNameIfNeededWithName___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__WBTabGroupManager__updateDeviceNameIfNeededWithName___block_invoke_3;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __55__WBTabGroupManager__updateDeviceNameIfNeededWithName___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)_didLocallyCreateUnnamedTabGroup:(id)group
{
  deviceUUIDByTabGroupUUID = self->_deviceUUIDByTabGroupUUID;
  uuid = [group uuid];
  v6 = [(NSMutableDictionary *)deviceUUIDByTabGroupUUID objectForKeyedSubscript:uuid];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_devicesByUUID objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 isRemoteDevice] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)updateTabWithUUID:(id)d persist:(BOOL)persist notify:(BOOL)notify usingBlock:(id)block
{
  notifyCopy = notify;
  persistCopy = persist;
  v47 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  v13 = WBS_LOG_CHANNEL_PREFIXTabGroup(blockCopy, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v46 = dCopy;
    _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "Updating tabs with uuid %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&tabGroupsLock);
  v14 = [(WBTabGroupManager *)self _tabWithUUID:dCopy];
  v16 = WBS_LOG_CHANNEL_PREFIXTabGroup(v14, v15);
  v17 = v16;
  if (v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      privacyPreservingDescription = [v14 privacyPreservingDescription];
      *buf = 138543362;
      v46 = privacyPreservingDescription;
      _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_INFO, "Updating tab %{public}@", buf, 0xCu);
    }

    blockCopy[2](blockCopy, v14);
    tabGroupUUID = [v14 tabGroupUUID];
    v21 = [(WBTabGroupManager *)self _tabGroupWithUUID:tabGroupUUID];

    LODWORD(tabGroupUUID) = [v14 wasModified];
    isSyncable = [v14 isSyncable];
    os_unfair_lock_unlock(&tabGroupsLock);
    if (tabGroupUUID)
    {
      if (notifyCopy)
      {
        v34 = isSyncable;
        v35 = v21;
        v36 = persistCopy;
        v37 = dCopy;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v23 = [(NSHashTable *)self->_observers copy];
        v24 = [v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v41;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v41 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v40 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                uuid = [v14 uuid];
                [v28 tabGroupManager:self didUpdateTabWithUUID:uuid userDriven:1];
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v25);
        }

        dCopy = v37;
        persistCopy = v36;
        v21 = v35;
        isSyncable = v34;
      }

      if (persistCopy)
      {
        tabCollection = self->_tabCollection;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __65__WBTabGroupManager_updateTabWithUUID_persist_notify_usingBlock___block_invoke;
        v38[3] = &unk_279E77B08;
        v39 = isSyncable;
        v38[4] = self;
        [(WBTabCollection *)tabCollection saveItem:v14 completionHandler:v38];
        [v14 markClean];
        if (([v21 isNamed] & 1) == 0)
        {
          deviceUUIDString = [v21 deviceUUIDString];
          if (deviceUUIDString)
          {
            v32 = deviceUUIDString;
            isSafariProfilesEnabled = [MEMORY[0x277D49A08] isSafariProfilesEnabled];

            if (isSafariProfilesEnabled)
            {
              [(WBTabGroupManager *)self _didModifyUnnamedTabGroup:v21];
            }
          }
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [WBTabGroupManager updateTabWithUUID:persist:notify:usingBlock:];
    }

    os_unfair_lock_unlock(&tabGroupsLock);
  }
}

void __65__WBTabGroupManager_updateTabWithUUID_persist_notify_usingBlock___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    block[5] = v1;
    block[6] = v2;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__WBTabGroupManager_updateTabWithUUID_persist_notify_usingBlock___block_invoke_2;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __65__WBTabGroupManager_updateTabWithUUID_persist_notify_usingBlock___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)moveTabs:(id)tabs toTabGroup:(id)group afterTab:(id)tab withoutPersistingTabGroupsWithUUIDStrings:(id)strings
{
  v77 = *MEMORY[0x277D85DE8];
  tabsCopy = tabs;
  groupCopy = group;
  tabCopy = tab;
  stringsCopy = strings;
  v11 = WBS_LOG_CHANNEL_PREFIXTabGroup(stringsCopy, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [tabsCopy count];
    privacyPreservingDescription = [groupCopy privacyPreservingDescription];
    *buf = 134218242;
    v74 = v13;
    v75 = 2114;
    v76 = privacyPreservingDescription;
    _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Moving %zu tabs to tab group %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&reloadAfterSyncLock);
  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = tabsCopy;
  v50 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v50)
  {
    v49 = *v68;
    do
    {
      v52 = 0;
      do
      {
        if (*v68 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v67 + 1) + 8 * v52);
        tabGroupUUID = [v15 tabGroupUUID];
        v17 = tabGroupUUID == 0;

        if (!v17)
        {
          tabGroupUUID2 = [v15 tabGroupUUID];
          v21 = [dictionary objectForKeyedSubscript:tabGroupUUID2];
          v22 = v21;
          if (v21)
          {
            array2 = v21;
          }

          else
          {
            array2 = [MEMORY[0x277CBEB18] array];
          }

          v28 = array2;

          [v28 addObject:v15];
          [dictionary setObject:v28 forKeyedSubscript:tabGroupUUID2];
LABEL_26:

          goto LABEL_27;
        }

        v24 = WBS_LOG_CHANNEL_PREFIXTabGroup(v18, v19);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_272C20000, v24, OS_LOG_TYPE_INFO, "Moving tab with no tab group", buf, 2u);
        }

        isSyncable = [v15 isSyncable];
        if (isSyncable != [groupCopy isSyncable])
        {
          v26 = [WBMutableTab alloc];
          deviceIdentifier = [v15 deviceIdentifier];
          tabGroupUUID2 = [(WBTab *)v26 initWithUUID:0 deviceIdentifier:deviceIdentifier];

          [(WBMutableTab *)tabGroupUUID2 adoptAttributesFromTab:v15];
          [array addObject:tabGroupUUID2];
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          v63 = 0u;
          v28 = [(NSHashTable *)self->_observers copy];
          v29 = [v28 countByEnumeratingWithState:&v63 objects:v71 count:16];
          if (v29)
          {
            v30 = *v64;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v64 != v30)
                {
                  objc_enumerationMutation(v28);
                }

                v32 = *(*(&v63 + 1) + 8 * i);
                if (objc_opt_respondsToSelector())
                {
                  uuid = [v15 uuid];
                  uuid2 = [(WBTab *)tabGroupUUID2 uuid];
                  [v32 tabGroupManager:self willReplaceTabWithUUID:uuid withTabWithUUID:uuid2];
                }
              }

              v29 = [v28 countByEnumeratingWithState:&v63 objects:v71 count:16];
            }

            while (v29);
          }

          goto LABEL_26;
        }

        tabGroupUUID2 = [v15 mutableCopy];
        [array addObject:tabGroupUUID2];
LABEL_27:

        ++v52;
      }

      while (v52 != v50);
      v35 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
      v50 = v35;
    }

    while (v35);
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __92__WBTabGroupManager_moveTabs_toTabGroup_afterTab_withoutPersistingTabGroupsWithUUIDStrings___block_invoke;
  v58[3] = &unk_279E77B58;
  v36 = stringsCopy;
  v59 = v36;
  v37 = groupCopy;
  v60 = v37;
  selfCopy = self;
  v38 = array;
  v62 = v38;
  [dictionary enumerateKeysAndObjectsUsingBlock:v58];
  uuid3 = [v37 uuid];
  v40 = [v36 containsObject:uuid3];

  uuid4 = [v37 uuid];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __92__WBTabGroupManager_moveTabs_toTabGroup_afterTab_withoutPersistingTabGroupsWithUUIDStrings___block_invoke_3;
  v54[3] = &unk_279E77B80;
  v42 = v38;
  v55 = v42;
  selfCopy2 = self;
  v43 = tabCopy;
  v57 = v43;
  [(WBTabGroupManager *)self updateTabsInTabGroupWithUUID:uuid4 persist:v40 ^ 1u usingBlock:v54];

  os_unfair_lock_unlock(&reloadAfterSyncLock);
}

void __92__WBTabGroupManager_moveTabs_toTabGroup_afterTab_withoutPersistingTabGroupsWithUUIDStrings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 containsObject:v7];
  v9 = [*(a1 + 40) uuid];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = v8 ^ 1u;
  v13 = *(a1 + 48);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__WBTabGroupManager_moveTabs_toTabGroup_afterTab_withoutPersistingTabGroupsWithUUIDStrings___block_invoke_2;
  v17[3] = &unk_279E77B30;
  v18 = v5;
  v16 = *(a1 + 40);
  v14 = v16.i64[0];
  v19 = vextq_s8(v16, v16, 8uLL);
  v20 = *(a1 + 56);
  v15 = v5;
  [v13 updateTabsInTabGroupWithUUID:v7 options:v11 | v12 usingBlock:v17];
}

void __92__WBTabGroupManager_moveTabs_toTabGroup_afterTab_withoutPersistingTabGroupsWithUUIDStrings___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v21 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v21)
  {
    v20 = *v23;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v22 + 1) + 8 * i);
        v6 = *(a1 + 40);
        v7 = [v5 uuid];
        v8 = [v6 _tabWithUUID:v7];

        v9 = [v3 isSyncable];
        v10 = [*(a1 + 48) isSyncable];
        v11 = [v3 profileIdentifier];
        v12 = [*(a1 + 48) profileIdentifier];
        v13 = WBSIsEqual();

        if (v9 == v10 && v13)
        {
          [v3 removeTab:v8];
          [*(a1 + 56) addObject:v8];
        }

        else
        {
          v26 = v8;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
          [v3 deleteTabs:v14];

          v15 = [WBMutableTab alloc];
          v16 = [v5 uuid];
          v17 = [v5 deviceIdentifier];
          v18 = [(WBTab *)v15 initWithUUID:v16 deviceIdentifier:v17];

          [(WBMutableTab *)v18 adoptAttributesFromTab:v5];
          [*(a1 + 56) addObject:v18];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v21);
  }
}

void __92__WBTabGroupManager_moveTabs_toTabGroup_afterTab_withoutPersistingTabGroupsWithUUIDStrings___block_invoke_3(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v7 = [v4 uuid];
  v6 = [v3 _tabWithUUID:v7];
  [v5 insertTabs:v2 afterTab:v6];
}

- (BOOL)_needsInitialBlankTabInTabGroup:(id)group
{
  groupCopy = group;
  firstUnpinnedTab = [groupCopy firstUnpinnedTab];
  if (firstUnpinnedTab)
  {
    v5 = 0;
  }

  else
  {
    pinnedStartPage = [groupCopy pinnedStartPage];
    v5 = pinnedStartPage == 0;
  }

  return v5;
}

- (void)updateTabsInTabGroupWithUUID:(id)d options:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v91 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  v11 = WBS_LOG_CHANNEL_PREFIXTabGroup(blockCopy, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v90 = dCopy;
    _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Updating tabs in tab group with uuid %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&tabGroupsLock);
  v12 = [(WBTabGroupManager *)self _tabGroupWithUUID:dCopy];
  v14 = v12;
  if (v12)
  {
    v15 = optionsCopy & 4;
    devicesByUUID = self->_devicesByUUID;
    deviceUUIDString = [v12 deviceUUIDString];
    v18 = [(NSMutableDictionary *)devicesByUUID objectForKeyedSubscript:deviceUUIDString];

    isRemoteDevice = [v18 isRemoteDevice];
    v56 = blockCopy;
    v55 = optionsCopy;
    v57 = v15;
    v58 = v18;
    if ((optionsCopy & 4) == 0 && (isRemoteDevice & 1) == 0)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v19 = [(NSHashTable *)self->_observers copy];
      v20 = [v19 countByEnumeratingWithState:&v80 objects:v88 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v81;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v81 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v80 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              uuid = [v14 uuid];
              [v24 tabGroupManager:self willPerformBlockUpdatesForTabGroupWithUUID:uuid];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v80 objects:v88 count:16];
        }

        while (v21);
      }

      blockCopy = v56;
      v15 = 0;
      v18 = v58;
    }

    if (blockCopy)
    {
      blockCopy[2](blockCopy, v14);
    }

    if ((optionsCopy & 2) == 0 && [(WBTabGroupManager *)self _needsInitialBlankTabInTabGroup:v14])
    {
      deviceIdentifier = [v14 deviceIdentifier];
      v27 = [(WBTab *)WBMutableTab startPageTabWithDeviceIdentifier:deviceIdentifier];

      v87 = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
      [v14 appendTabs:v28];

      uuid2 = [v27 uuid];
      [v14 setLastSelectedTabUUID:uuid2];
    }

    uuid3 = [v18 uuid];
    [(WBTabGroupManager *)self _cacheTabGroup:v14 creatorDeviceUUID:uuid3];

    [(WBTabGroupManager *)self _updatePositionsForTabsInTabGroup:v14];
    deletedTabs = [v14 deletedTabs];
    [(WBTabGroupManager *)self _willFlushDeletedTabs:deletedTabs inTabGroup:v14];
    if ([MEMORY[0x277D49A08] isInternalInstall])
    {
      _localTabGroups = [(WBTabGroupManager *)self _localTabGroups];
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __69__WBTabGroupManager_updateTabsInTabGroupWithUUID_options_usingBlock___block_invoke;
      v77[3] = &unk_279E77BA8;
      v78 = deletedTabs;
      selfCopy = self;
      [_localTabGroups enumerateObjectsUsingBlock:v77];
    }

    os_unfair_lock_unlock(&tabGroupsLock);
    if (v15)
    {
      goto LABEL_58;
    }

    if (isRemoteDevice)
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v33 = self->_cloudTabObservers;
      v34 = [(NSHashTable *)v33 countByEnumeratingWithState:&v73 objects:v86 count:16];
      if (!v34)
      {
LABEL_57:

        v15 = v57;
        v18 = v58;
LABEL_58:
        if (optionsCopy)
        {
          tabCollection = self->_tabCollection;
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __69__WBTabGroupManager_updateTabsInTabGroupWithUUID_options_usingBlock___block_invoke_2;
          v61[3] = &unk_279E75D00;
          v62 = v14;
          selfCopy2 = self;
          v64 = v15 >> 2;
          [(WBTabCollection *)tabCollection updateTabsInTabGroup:v62 completionHandler:v61];
        }

        goto LABEL_61;
      }

      v35 = v34;
      v60 = deletedTabs;
      v36 = *v74;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v74 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v73 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            profileIdentifier = [v14 profileIdentifier];
            [v38 cloudTabDeviceProvider:self didUpdateCloudTabsInProfileWithIdentifier:profileIdentifier];
          }
        }

        v35 = [(NSHashTable *)v33 countByEnumeratingWithState:&v73 objects:v86 count:16];
      }

      while (v35);
    }

    else
    {
      v60 = deletedTabs;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      v69 = 0u;
      v41 = [(NSHashTable *)self->_observers copy];
      v42 = [v41 countByEnumeratingWithState:&v69 objects:v85 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v70;
        do
        {
          for (k = 0; k != v43; ++k)
          {
            if (*v70 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v69 + 1) + 8 * k);
            if (objc_opt_respondsToSelector())
            {
              uuid4 = [v14 uuid];
              [v46 tabGroupManager:self didPerformBlockUpdatesForTabGroupWithUUID:uuid4];
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v69 objects:v85 count:16];
        }

        while (v43);
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v33 = [(NSHashTable *)self->_observers copy];
      v48 = [(NSHashTable *)v33 countByEnumeratingWithState:&v65 objects:v84 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v66;
        do
        {
          for (m = 0; m != v49; ++m)
          {
            if (*v66 != v50)
            {
              objc_enumerationMutation(v33);
            }

            v52 = *(*(&v65 + 1) + 8 * m);
            if (objc_opt_respondsToSelector())
            {
              uuid5 = [v14 uuid];
              [v52 tabGroupManager:self didUpdateTabsInTabGroupWithUUID:uuid5];
            }
          }

          v49 = [(NSHashTable *)v33 countByEnumeratingWithState:&v65 objects:v84 count:16];
        }

        while (v49);
      }
    }

    blockCopy = v56;
    optionsCopy = v55;
    deletedTabs = v60;
    goto LABEL_57;
  }

  v40 = WBS_LOG_CHANNEL_PREFIXTabGroup(0, v13);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    [WBTabGroupManager updateTabsInTabGroupWithUUID:options:usingBlock:];
  }

  os_unfair_lock_unlock(&tabGroupsLock);
LABEL_61:
}

void __69__WBTabGroupManager_updateTabsInTabGroupWithUUID_options_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = [a2 tabs];
  if ([v13 count] > 1)
  {
  }

  else
  {
    v6 = [*(a1 + 32) count];

    if (v6 >= 2)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = [*(*(a1 + 40) + 16) copy];
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v12 tabGroupManagerDidDeletedAllLocalTabs:*(a1 + 40)];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }

      *a4 = 1;
    }
  }
}

void __69__WBTabGroupManager_updateTabsInTabGroupWithUUID_options_usingBlock___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__WBTabGroupManager_updateTabsInTabGroupWithUUID_options_usingBlock___block_invoke_3;
  block[3] = &unk_279E75D00;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  v7 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__WBTabGroupManager_updateTabsInTabGroupWithUUID_options_usingBlock___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isNamed] & 1) == 0)
  {
    v2 = [*(a1 + 32) deviceUUIDString];
    if (v2)
    {
      v3 = v2;
      v4 = [MEMORY[0x277D49A08] isSafariProfilesEnabled];

      if (v4)
      {
        [*(a1 + 40) _didModifyUnnamedTabGroup:*(a1 + 32)];
      }
    }
  }

  if ([*(a1 + 32) isSyncable] && (*(a1 + 48) & 1) == 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [*(*(a1 + 40) + 16) copy];
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

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 tabGroupManagerDidUpdateSyncableContent:*(a1 + 40)];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)flushDeletedTabsInTabGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_assert_owner(&tabGroupsLock);
  deletedTabs = [groupCopy deletedTabs];
  [(WBTabGroupManager *)self _willFlushDeletedTabs:deletedTabs inTabGroup:groupCopy];
  [(WBTabCollection *)self->_tabCollection flushDeletedTabsInTabGroup:groupCopy completionHandler:0];
}

- (void)_willFlushDeletedTabs:(id)tabs inTabGroup:(id)group
{
  v19 = *MEMORY[0x277D85DE8];
  tabsCopy = tabs;
  os_unfair_lock_assert_owner(&tabGroupsLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = tabsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [(WBTabGroupManager *)self _uncacheTab:v11, v14];
        removedTabsByUUID = self->_removedTabsByUUID;
        uuid = [v11 uuid];
        [(NSMutableDictionary *)removedTabsByUUID setObject:v11 forKeyedSubscript:uuid];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)registerPinnedTab:(id)tab
{
  tabCopy = tab;
  os_unfair_lock_lock(&tabGroupsLock);
  v5 = [tabCopy mutableCopy];
  localTabsByUUID = self->_localTabsByUUID;
  uuid = [tabCopy uuid];

  [(NSMutableDictionary *)localTabsByUUID setObject:v5 forKeyedSubscript:uuid];

  os_unfair_lock_unlock(&tabGroupsLock);
}

- (id)positionGenerator:(id)generator positionForRecordName:(id)name
{
  v4 = [(WBTabGroupManager *)self _tabWithUUID:name];
  syncPosition = [v4 syncPosition];

  return syncPosition;
}

- (id)positionGenerator:(id)generator recordNameOfBookmarksBeforeRecordWithName:(id)name
{
  v5 = [(WBTabGroupManager *)self _tabWithUUID:name];
  tabGroupUUID = [v5 tabGroupUUID];
  v7 = [(WBTabGroupManager *)self _tabGroupWithUUID:tabGroupUUID];

  tabs = [v7 tabs];
  v9 = [tabs safari_objectBefore:v5];
  uuid = [v9 uuid];

  return uuid;
}

- (id)positionGenerator:(id)generator recordNameOfBookmarksAfterRecordWithName:(id)name
{
  v5 = [(WBTabGroupManager *)self _tabWithUUID:name];
  tabGroupUUID = [v5 tabGroupUUID];
  v7 = [(WBTabGroupManager *)self _tabGroupWithUUID:tabGroupUUID];

  tabs = [v7 tabs];
  v9 = [tabs safari_objectAfter:v5];
  uuid = [v9 uuid];

  return uuid;
}

- (id)topScopedBookmarkListForTabGroup:(id)group
{
  tabCollection = self->_tabCollection;
  groupCopy = group;
  os_unfair_lock_lock(&tabGroupsLock);
  uuid = [groupCopy uuid];

  v7 = [(WBTabGroupManager *)self tabGroupWithUUID:uuid];

  os_unfair_lock_unlock(&tabGroupsLock);
  v8 = [(WBTabCollection *)tabCollection topScopedBookmarkListForTabGroup:v7];

  return v8;
}

- (void)insertScopedBookmark:(id)bookmark inScopedBookmarkFolderWithID:(int)d afterBookmarkWithUUID:(id)iD notify:(BOOL)notify
{
  notifyCopy = notify;
  v8 = *&d;
  v21[1] = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  iDCopy = iD;
  subtype = [bookmarkCopy subtype];
  if (subtype == 1)
  {
    v14 = [(WBTabCollection *)self->_tabCollection scopedBookmarkWithUUID:iDCopy];
    tabCollection = self->_tabCollection;
    v21[0] = bookmarkCopy;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    LOBYTE(tabCollection) = [(WBTabCollection *)tabCollection insertItems:v16 inParentWithID:v8 afterItem:v14];

    if ((tabCollection & 1) == 0)
    {
      v19 = WBS_LOG_CHANNEL_PREFIXTabGroup(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [WBTabGroupManager insertScopedBookmark:v14 inScopedBookmarkFolderWithID:v8 afterBookmarkWithUUID:v19 notify:?];
      }
    }

    if (notifyCopy)
    {
      [(WBTabGroupManager *)self _notifyScopedBookmarkChangesInFolderWithID:v8];
    }
  }

  else
  {
    v20 = WBS_LOG_CHANNEL_PREFIXTabGroup(subtype, v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [WBTabGroupManager insertScopedBookmark:inScopedBookmarkFolderWithID:afterBookmarkWithUUID:notify:];
    }
  }
}

- (void)reorderScopedBookmarkWithUUID:(id)d afterBookmarkWithUUID:(id)iD notify:(BOOL)notify
{
  notifyCopy = notify;
  v20 = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  v9 = [(WBTabCollection *)self->_tabCollection scopedBookmarkWithUUID:d];
  if (v9)
  {
    v10 = [(WBTabCollection *)self->_tabCollection scopedBookmarkWithUUID:iDCopy];
    v11 = v10;
    if (!iDCopy || v10)
    {
      v12 = [(WBTabCollection *)self->_tabCollection reorderItem:v9 afterItem:v10];
      if ((v12 & 1) == 0)
      {
        v14 = WBS_LOG_CHANNEL_PREFIXTabGroup(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          identifier = [v9 identifier];
          if (v11)
          {
            identifier2 = [v11 identifier];
          }

          else
          {
            identifier2 = -1;
          }

          v17[0] = 67109376;
          v17[1] = identifier;
          v18 = 1024;
          v19 = identifier2;
          _os_log_error_impl(&dword_272C20000, v14, OS_LOG_TYPE_ERROR, "Failed to reorder scoped bookmark(%d) behind anchor(%d).", v17, 0xEu);
        }
      }

      if (notifyCopy)
      {
        -[WBTabGroupManager _notifyScopedBookmarkChangesInFolderWithID:](self, "_notifyScopedBookmarkChangesInFolderWithID:", [v9 parentID]);
      }
    }
  }
}

- (void)updateScopedBookmarkWithUUID:(id)d title:(id)title address:(id)address notify:(BOOL)notify
{
  notifyCopy = notify;
  titleCopy = title;
  addressCopy = address;
  v12 = [(WBTabCollection *)self->_tabCollection scopedBookmarkWithUUID:d];
  v13 = v12;
  if (v12)
  {
    [v12 setTitle:titleCopy];
    [v13 setAddress:addressCopy];
    v14 = [(WBTabCollection *)self->_tabCollection saveItem:v13];
    if ((v14 & 1) == 0)
    {
      v16 = WBS_LOG_CHANNEL_PREFIXTabGroup(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [WBTabGroupManager updateScopedBookmarkWithUUID:v16 title:? address:? notify:?];
        if (!notifyCopy)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (notifyCopy)
    {
LABEL_5:
      -[WBTabGroupManager _notifyScopedBookmarkChangesInFolderWithID:](self, "_notifyScopedBookmarkChangesInFolderWithID:", [v13 parentID]);
    }
  }

LABEL_6:
}

- (void)deleteScopedBookmarkWithUUID:(id)d notify:(BOOL)notify completionHandler:(id)handler
{
  notifyCopy = notify;
  v18[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v9 = [(WBTabCollection *)self->_tabCollection scopedBookmarkWithUUID:d];
  v10 = v9;
  if (!v9)
  {
    if (!handlerCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  tabCollection = self->_tabCollection;
  v18[0] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v13 = [(WBTabCollection *)tabCollection deleteItems:v12 leaveTombstones:1];

  if (!v13)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXTabGroup(v14, v15);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if (!handlerCopy)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    [WBTabGroupManager deleteScopedBookmarkWithUUID:v16 notify:? completionHandler:?];
    if (handlerCopy)
    {
LABEL_5:
      handlerCopy[2](handlerCopy, 0);
    }
  }

LABEL_6:
  if (notifyCopy)
  {
    -[WBTabGroupManager _notifyScopedBookmarkChangesInFolderWithID:](self, "_notifyScopedBookmarkChangesInFolderWithID:", [v10 parentID]);
  }

  v17 = !v13;
  if (!handlerCopy)
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
LABEL_11:
    handlerCopy[2](handlerCopy, 1);
  }

LABEL_12:
}

- (void)_notifyScopedBookmarkChangesInFolderWithID:(int)d
{
  v4 = [(WBTabCollection *)self->_tabCollection scopedBookmarkListWithID:?];
  v6 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__WBTabGroupManager__notifyScopedBookmarkChangesInFolderWithID___block_invoke;
    v8[3] = &unk_279E753F0;
    v8[4] = self;
    v9 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXTabGroup(0, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WBTabGroupManager _notifyScopedBookmarkChangesInFolderWithID:];
    }
  }
}

void __64__WBTabGroupManager__notifyScopedBookmarkChangesInFolderWithID___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManager:*(a1 + 32) didUpdateScopedBookmarkList:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [*(*(a1 + 32) + 16) copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }
}

- (id)shareRecordForTabGroup:(id)group
{
  groupCopy = group;
  v5 = groupCopy;
  if (groupCopy && [groupCopy isSyncable])
  {
    v6 = [(WBTabCollection *)self->_tabCollection shareRecordForTabGroup:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)acceptTabGroupShareWithMetadata:(id)metadata handler:(id)handler
{
  v68 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  handlerCopy = handler;
  if ([metadataCopy safari_supportsSharedTabGroups])
  {
    share = [metadataCopy share];
    recordID = [share recordID];
    [(WBSPair *)self->_currentShareAcceptancePair second];
    v11 = v10 = self;
    share2 = [v11 share];
    recordID2 = [share2 recordID];
    v14 = [recordID isEqual:recordID2];

    v54 = v10;
    if (v14)
    {
      v17 = WBS_LOG_CHANNEL_PREFIXTabGroup(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        recordID3 = [share recordID];
        zoneID = [recordID3 zoneID];
        ckShortDescription = [zoneID ckShortDescription];
        v20 = [share objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
        v21 = [share objectForKeyedSubscript:*MEMORY[0x277CBC098]];
        ownerIdentity = [metadataCopy ownerIdentity];
        safari_handle = [ownerIdentity safari_handle];
        *buf = 138544131;
        v61 = ckShortDescription;
        v62 = 2114;
        v63 = v20;
        v64 = 2117;
        v65 = v21;
        v66 = 2117;
        v67 = safari_handle;
        _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_DEFAULT, "Ignoring accept CloudKit share metadata because it is already being processed, with zone %{public}@, type: %{public}@, title: %{sensitive}@, owner: %{sensitive}@", buf, 0x2Au);
      }

      [(WBTabGroupManager *)v10 _sendAcceptanceResult:1 forShareMetadata:metadataCopy toHandler:handlerCopy];
    }

    else
    {
      v51 = handlerCopy;
      v53 = metadataCopy;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v24 = v10->_pendingShareAcceptancePairQueue;
      v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v56;
        while (2)
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v56 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v55 + 1) + 8 * i);
            recordID4 = [share recordID];
            second = [v29 second];
            share3 = [second share];
            recordID5 = [share3 recordID];
            v34 = [recordID4 isEqual:recordID5];

            if (v34)
            {
              v41 = WBS_LOG_CHANNEL_PREFIXTabGroup(v35, v36);
              metadataCopy = v53;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v42 = v41;
                recordID6 = [share recordID];
                zoneID2 = [recordID6 zoneID];
                ckShortDescription2 = [zoneID2 ckShortDescription];
                v45 = [share objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
                v46 = [share objectForKeyedSubscript:*MEMORY[0x277CBC098]];
                ownerIdentity2 = [v53 ownerIdentity];
                safari_handle2 = [ownerIdentity2 safari_handle];
                *buf = 138544131;
                v61 = ckShortDescription2;
                v62 = 2114;
                v63 = v45;
                v64 = 2117;
                v65 = v46;
                v66 = 2117;
                v67 = safari_handle2;
                _os_log_impl(&dword_272C20000, v42, OS_LOG_TYPE_DEFAULT, "Ignoring accept CloudKit share metadata because it is already pending processing, with zone %{public}@, type: %{public}@, title: %{sensitive}@, owner: %{sensitive}@", buf, 0x2Au);
              }

              handlerCopy = v51;
              [(WBTabGroupManager *)v54 _sendAcceptanceResult:1 forShareMetadata:v53 toHandler:v51];

              goto LABEL_21;
            }
          }

          v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v55 objects:v59 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      pendingShareAcceptancePairQueue = v54->_pendingShareAcceptancePairQueue;
      if (!pendingShareAcceptancePairQueue)
      {
        array = [MEMORY[0x277CBEB18] array];
        v39 = v54->_pendingShareAcceptancePairQueue;
        v54->_pendingShareAcceptancePairQueue = array;

        pendingShareAcceptancePairQueue = v54->_pendingShareAcceptancePairQueue;
      }

      handlerCopy = v51;
      metadataCopy = v53;
      v40 = [objc_alloc(MEMORY[0x277D49A80]) initWithFirst:v51 second:v53];
      [(NSMutableArray *)pendingShareAcceptancePairQueue addObject:v40];

      [(WBTabGroupManager *)v54 _dequeueNextAcceptCloudKitShareMetadataIfNeeded];
    }

LABEL_21:
  }

  else
  {
    [(WBTabGroupManager *)self _sendAcceptanceResult:3 forShareMetadata:metadataCopy toHandler:handlerCopy];
  }
}

- (void)_dequeueNextAcceptCloudKitShareMetadataIfNeeded
{
  v53 = *MEMORY[0x277D85DE8];
  p_currentShareAcceptancePair = &self->_currentShareAcceptancePair;
  if (!self->_currentShareAcceptancePair)
  {
    firstObject = [(NSMutableArray *)self->_pendingShareAcceptancePairQueue firstObject];
    if (firstObject)
    {
      [(NSMutableArray *)self->_pendingShareAcceptancePairQueue removeObjectAtIndex:0];
      objc_storeStrong(p_currentShareAcceptancePair, firstObject);
      second = [firstObject second];
      share = [second share];
      v7 = [(WBTabGroupManager *)self tabGroupMatchingShare:share];

      v10 = WBS_LOG_CHANNEL_PREFIXTabGroup(v8, v9);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v11)
        {
          log = v10;
          recordID = [share recordID];
          zoneID = [recordID zoneID];
          [zoneID ckShortDescription];
          v13 = v12 = share;
          v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
          v15 = [v12 objectForKeyedSubscript:*MEMORY[0x277CBC098]];
          ownerIdentity = [second ownerIdentity];
          safari_handle = [ownerIdentity safari_handle];
          *buf = 138544131;
          v46 = v13;
          v47 = 2114;
          v48 = v14;
          v49 = 2117;
          v50 = v15;
          v51 = 2117;
          v52 = safari_handle;
          _os_log_impl(&dword_272C20000, log, OS_LOG_TYPE_DEFAULT, "Ignoring accept CloudKit share metadata because it was already accepted, with zone %{public}@, type: %{public}@, title: %{sensitive}@, owner: %{sensitive}@", buf, 0x2Au);

          share = v12;
        }

        first = [firstObject first];
        [(WBTabGroupManager *)self _sendAcceptanceResult:2 forShareMetadata:second toHandler:first];

        currentShareAcceptancePair = self->_currentShareAcceptancePair;
        self->_currentShareAcceptancePair = 0;

        [(WBTabGroupManager *)self _dequeueNextAcceptCloudKitShareMetadataIfNeeded];
      }

      else
      {
        if (v11)
        {
          loga = v10;
          recordID2 = [share recordID];
          zoneID2 = [recordID2 zoneID];
          ckShortDescription = [zoneID2 ckShortDescription];
          v21 = [share objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
          v22 = [share objectForKeyedSubscript:*MEMORY[0x277CBC098]];
          ownerIdentity2 = [second ownerIdentity];
          safari_handle2 = [ownerIdentity2 safari_handle];
          *buf = 138544131;
          v46 = ckShortDescription;
          v47 = 2114;
          v48 = v21;
          v49 = 2117;
          v50 = v22;
          v51 = 2117;
          v52 = safari_handle2;
          _os_log_impl(&dword_272C20000, loga, OS_LOG_TYPE_DEFAULT, "Will accept CloudKit Share metadata with zone %{public}@, type: %{public}@, title: %{sensitive}@, owner: %{sensitive}@", buf, 0x2Au);
        }

        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __68__WBTabGroupManager__dequeueNextAcceptCloudKitShareMetadataIfNeeded__block_invoke;
        v41[3] = &unk_279E77BD0;
        v25 = second;
        v42 = v25;
        selfCopy = self;
        v26 = firstObject;
        v44 = v26;
        v27 = MEMORY[0x2743D6830](v41);
        first2 = [v26 first];
        profiles = [(WBTabGroupManager *)self profiles];
        if ([profiles count] >= 2 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __68__WBTabGroupManager__dequeueNextAcceptCloudKitShareMetadataIfNeeded__block_invoke_148;
          v36[3] = &unk_279E77BF8;
          v36[4] = self;
          v37 = share;
          v38 = first2;
          v39 = v25;
          v40 = v27;
          [v38 tabGroupManager:self selectProfileIdentifierForShareMetadata:v39 completionHandler:v36];
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            [first2 tabGroupManager:self didBeginAcceptingTabGroupShareWithMetadata:v25];
          }

          [(WBTabGroupManager *)self _userDidAcceptTabGroupShareWithMetadata:v25 inProfileWithIdentifier:*MEMORY[0x277D49BD8] completionHandler:v27];
        }
      }
    }
  }
}

void __68__WBTabGroupManager__dequeueNextAcceptCloudKitShareMetadataIfNeeded__block_invoke(id *a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = WBS_LOG_CHANNEL_PREFIXTabGroup(v6, v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v23 = v9;
      v32 = [v5 recordID];
      v30 = [v32 zoneID];
      v24 = [v30 ckShortDescription];
      v25 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
      v26 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBC098]];
      v27 = [a1[4] ownerIdentity];
      v28 = [v27 safari_handle];
      v29 = [v6 safari_privacyPreservingError];
      *buf = 138544387;
      v34 = v24;
      v35 = 2114;
      v36 = v25;
      v37 = 2117;
      v38 = v26;
      v39 = 2117;
      v40 = v28;
      v41 = 2114;
      v42 = v29;
      _os_log_error_impl(&dword_272C20000, v23, OS_LOG_TYPE_ERROR, "Did fail to accept CloudKit Share metadata with zone %{public}@, type: %{public}@, title: %{sensitive}@, owner: %{sensitive}@, error: %{public}@", buf, 0x34u);
    }

    v10 = 4;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
      v31 = [v5 recordID];
      v12 = [v31 zoneID];
      v13 = [v12 ckShortDescription];
      v14 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
      v15 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBC098]];
      v16 = [a1[4] ownerIdentity];
      v17 = [v16 safari_handle];
      *buf = 138544131;
      v34 = v13;
      v35 = 2114;
      v36 = v14;
      v37 = 2117;
      v38 = v15;
      v39 = 2117;
      v40 = v17;
      _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_DEFAULT, "Did accept CloudKit Share metadata with zone %{public}@, type: %{public}@, title: %{sensitive}@, owner: %{sensitive}@", buf, 0x2Au);
    }

    v10 = 0;
  }

  v19 = a1[4];
  v18 = a1[5];
  v20 = [a1[6] first];
  [v18 _sendAcceptanceResult:v10 forShareMetadata:v19 toHandler:v20];

  v21 = a1[5];
  v22 = v21[22];
  v21[22] = 0;

  [a1[5] _dequeueNextAcceptCloudKitShareMetadataIfNeeded];
}

void __68__WBTabGroupManager__dequeueNextAcceptCloudKitShareMetadataIfNeeded__block_invoke_148(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXTabGroup(v3, v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = v5;
      v9 = [v7 recordID];
      v10 = [v9 zoneID];
      v11 = [v10 ckShortDescription];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v3;
      _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Will accept tab group share with zone %{public}@, in profile with UUID: %{public}@", &v14, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 48) tabGroupManager:*(a1 + 32) didBeginAcceptingTabGroupShareWithMetadata:*(a1 + 56)];
    }

    [*(a1 + 32) _userDidAcceptTabGroupShareWithMetadata:*(a1 + 56) inProfileWithIdentifier:v3 completionHandler:*(a1 + 64)];
  }

  else
  {
    if (v6)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "Did cancel accepting tab group share by cancelling profile selection", &v14, 2u);
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 176);
    *(v12 + 176) = 0;

    [*(a1 + 32) _dequeueNextAcceptCloudKitShareMetadataIfNeeded];
  }
}

- (void)_sendAcceptanceResult:(int64_t)result forShareMetadata:(id)metadata toHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  if (objc_opt_respondsToSelector())
  {
    [handlerCopy tabGroupManager:self didFinishAcceptingTabGroupShareWithMetadata:metadataCopy result:result];
  }
}

- (void)_userDidAcceptTabGroupShareWithMetadata:(id)metadata inProfileWithIdentifier:(id)identifier completionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_279E77C48;
  v14[4] = self;
  v15 = metadataCopy;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = metadataCopy;
  identifierCopy = identifier;
  v13 = MEMORY[0x2743D6830](v14);
  [(WBTabGroupSyncAgentProtocol *)self->_syncAgentProxy userDidAcceptTabGroupShareWithMetadata:v11 inProfileWithIdentifier:identifierCopy completionHandler:v13];
}

void __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke_2;
  block[3] = &unk_279E77C20;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v16 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = *(*(a1 + 40) + 248);
    v6 = [v3 recordID];
    v7 = [v6 zoneID];
    v8 = [v7 safari_tabGroupRootRecordName];
    v9 = [v5 tabGroupUUIDForServerID:v8];

    v10 = [v9 length];
    v12 = WBS_LOG_CHANNEL_PREFIXTabGroup(v10, v11);
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v4;
        v15 = v13;
        v16 = [v14 recordID];
        v17 = [v16 zoneID];
        v18 = [v17 ckShortDescription];
        v21 = 138543618;
        v22 = v18;
        v23 = 2114;
        v24 = v9;
        _os_log_impl(&dword_272C20000, v15, OS_LOG_TYPE_DEFAULT, "Did successfully join share %{public}@ with tab group UUID: %{public}@", &v21, 0x16u);
      }

      [*(a1 + 40) _didReceiveShare:*(a1 + 32) forTabGroupUUID:v9];
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke_2_cold_1(v4, v13);
    }
  }

  else
  {
    v19 = WBS_LOG_CHANNEL_PREFIXTabGroup(0, a2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke_2_cold_2(a1, v19);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

- (void)beginSharingTabGroupWithUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  syncAgentProxy = self->_syncAgentProxy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__WBTabGroupManager_beginSharingTabGroupWithUUID_completionHandler___block_invoke;
  v11[3] = &unk_279E77C48;
  v12 = dCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  [(WBTabGroupSyncAgentProtocol *)syncAgentProxy beginSharingTabGroupWithUUID:v10 completionHandler:v11];
}

void __68__WBTabGroupManager_beginSharingTabGroupWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__WBTabGroupManager_beginSharingTabGroupWithUUID_completionHandler___block_invoke_2;
  block[3] = &unk_279E77C20;
  v13 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v7;
  v15 = v8;
  v16 = v6;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __68__WBTabGroupManager_beginSharingTabGroupWithUUID_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = WBS_LOG_CHANNEL_PREFIXTabGroup(a1, a2);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = v5;
      v9 = [v6 recordID];
      v10 = [v9 zoneID];
      v11 = [v10 ckShortDescription];
      v13 = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_DEFAULT, "Did successfully begin sharing tab group with UUID: %{public}@, share: %{public}@", &v13, 0x16u);
    }

    [*(a1 + 48) _didReceiveShare:*(a1 + 32) forTabGroupUUID:*(a1 + 40)];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__WBTabGroupManager_beginSharingTabGroupWithUUID_completionHandler___block_invoke_2_cold_1(a1, v5);
  }

  return (*(*(a1 + 64) + 16))();
}

- (id)tabGroupMatchingShare:(id)share
{
  tabCollection = self->_tabCollection;
  shareCopy = share;
  allNamedTabGroupsUnsorted = [(WBTabGroupManager *)self allNamedTabGroupsUnsorted];
  v7 = [(WBTabCollection *)tabCollection tabGroupMatchingShare:shareCopy inTabGroups:allNamedTabGroupsUnsorted];

  return v7;
}

- (void)getActiveParticipantsInTabGroup:(id)group completionHandler:(id)handler
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    presenceCoordinator = self->_presenceCoordinator;
    handlerCopy = handler;
    bookmark = [group bookmark];
    serverID = [bookmark serverID];
    [(WBParticipantPresenceCoordinator *)presenceCoordinator getActiveParticipantsInTabGroupWithIdentifier:serverID completionHandler:handlerCopy];
  }

  else
  {
    v9 = MEMORY[0x277CBEB98];
    tabCollection = self->_tabCollection;
    handlerCopy2 = handler;
    bookmark = [(WBTabCollection *)tabCollection activeParticipantsInTabGroup:group];
    serverID = [v9 setWithArray:?];
    (*(handler + 2))(handlerCopy2, serverID);
  }
}

- (void)getActiveParticipantsInTab:(id)tab completionHandler:(id)handler
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    presenceCoordinator = self->_presenceCoordinator;
    handlerCopy = handler;
    handlerCopy2 = [tab bookmark];
    serverID = [handlerCopy2 serverID];
    [(WBParticipantPresenceCoordinator *)presenceCoordinator getActiveParticipantsInTabWithIdentifier:serverID completionHandler:handlerCopy];
  }

  else
  {
    tabCollection = self->_tabCollection;
    handlerCopy2 = handler;
    [(WBTabCollection *)tabCollection getActiveParticipantsInTab:tab completionHandler:?];
  }
}

- (void)getPresenceTabUUIDForParticipantIdentifier:(id)identifier inTabGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    presenceCoordinator = self->_presenceCoordinator;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93__WBTabGroupManager_getPresenceTabUUIDForParticipantIdentifier_inTabGroup_completionHandler___block_invoke;
    v12[3] = &unk_279E77C70;
    v13 = groupCopy;
    selfCopy = self;
    v15 = handlerCopy;
    [(WBParticipantPresenceCoordinator *)presenceCoordinator getCurrentLocationIdentifiersForParticipantIdentifier:identifier completionHandler:v12];
  }

  else
  {
    v11 = [(WBTabCollection *)self->_tabCollection presenceTabUUIDForParticipantIdentifier:identifier inTabGroup:groupCopy];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

void __93__WBTabGroupManager_getPresenceTabUUIDForParticipantIdentifier_inTabGroup_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 bookmark];
  v8 = [v7 serverID];
  v9 = WBSIsEqual();

  v10 = a1[6];
  if (v9)
  {
    v11 = [*(a1[5] + 248) tabUUIDForServerID:v12];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(a1[6], 0);
  }
}

- (void)movePresenceForParticipantToTabWithUUID:(id)d
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    [(WBTabGroupManager *)self _movePresenceForParticipantToTabWithUUID:d];
  }

  else
  {
    [(WBTabGroupSyncAgentProtocol *)self->_syncAgentProxy movePresenceForParticipantToTabWithUUID:d];
  }
}

- (id)_unsafeTabGroupUUIDsToCKShares
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    os_unfair_lock_assert_owner(&tabGroupsLock);
    v4 = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_155];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

id __51__WBTabGroupManager__unsafeTabGroupUUIDsToCKShares__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v5 isNamed])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__8;
    v14 = __Block_byref_object_dispose__8;
    v15 = 0;
    v6 = [v5 bookmark];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__WBTabGroupManager__unsafeTabGroupUUIDsToCKShares__block_invoke_2;
    v9[3] = &unk_279E77CB8;
    v9[4] = &v10;
    [v6 getReadOnlyCachedBookmarkSyncDataUsingBlock:v9];

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __51__WBTabGroupManager__unsafeTabGroupUUIDsToCKShares__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 shareRecord];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)_updateTabGroupShares:(id)shares
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    v4 = [shares copy];
    tabGroupUUIDsToCKShares = self->_tabGroupUUIDsToCKShares;
    self->_tabGroupUUIDsToCKShares = v4;

    if ([(WBTabGroupManager *)self hasSharedTabGroups])
    {
      [(WBTabGroupManager *)self _beginDevicePresenceReportingIfNeeded];
      [(WBTabCollection *)self->_tabCollection setHasSharedTabGroupsWithCompletionHandler:0];
    }

    else
    {
      [(WBTabGroupManager *)self _endDevicePresenceReportingIfNeeded];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare allKeys];
    v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = [(NSDictionary *)self->_tabGroupUUIDsToCKShares objectForKeyedSubscript:v10];
          if (v11)
          {
            v12 = [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare objectForKeyedSubscript:v10];
            recordChangeTag = [v12 recordChangeTag];
            recordChangeTag2 = [v11 recordChangeTag];
            v15 = [recordChangeTag isEqualToString:recordChangeTag2];

            if ((v15 & 1) == 0)
            {
              [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare setObject:v11 forKeyedSubscript:v10];
              [(WBParticipantPresenceCoordinator *)self->_presenceCoordinator shareDidUpdate:v11];
            }
          }

          else
          {
            presenceCoordinator = self->_presenceCoordinator;
            v17 = [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare objectForKeyedSubscript:v10];
            [(WBParticipantPresenceCoordinator *)presenceCoordinator endCollaborationForShare:v17];

            [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare setObject:0 forKeyedSubscript:v10];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    v18 = self->_tabGroupUUIDsToCKShares;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __43__WBTabGroupManager__updateTabGroupShares___block_invoke;
    v20[3] = &unk_279E77CE0;
    v20[4] = self;
    [(NSDictionary *)v18 enumerateKeysAndObjectsUsingBlock:v20];
  }
}

void __43__WBTabGroupManager__updateTabGroupShares___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 232) objectForKeyedSubscript:v11];

  if (!v6)
  {
    if ([*(*(a1 + 32) + 208) containsObject:v11])
    {
      [*(*(a1 + 32) + 232) setObject:v5 forKeyedSubscript:v11];
      [*(*(a1 + 32) + 192) beginCollaborationForShare:v5];
      v7 = [*(*(a1 + 32) + 216) first];
      v8 = [v7 isEqualToString:v11];

      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = [v9[27] second];
        [v9 _movePresenceForParticipantToTabWithUUID:v10];
      }
    }
  }
}

- (void)_didReceiveShare:(id)share forTabGroupUUID:(id)d
{
  v21[1] = *MEMORY[0x277D85DE8];
  shareCopy = share;
  dCopy = d;
  if (shareCopy && self->_enableSharedTabGroupsFastSyncPresence)
  {
    v8 = [(NSDictionary *)self->_tabGroupUUIDsToCKShares objectForKeyedSubscript:dCopy];
    v9 = v8;
    if (v8)
    {
      recordChangeTag = [v8 recordChangeTag];
      recordChangeTag2 = [shareCopy recordChangeTag];
      v12 = [recordChangeTag isEqualToString:recordChangeTag2];

      if ((v12 & 1) == 0)
      {
        [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare setObject:shareCopy forKeyedSubscript:dCopy];
        [(WBParticipantPresenceCoordinator *)self->_presenceCoordinator shareDidUpdate:shareCopy];
      }
    }

    else
    {
      tabGroupUUIDsToCKShares = self->_tabGroupUUIDsToCKShares;
      v20 = dCopy;
      v21[0] = shareCopy;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v15 = [(NSDictionary *)tabGroupUUIDsToCKShares safari_dictionaryByMergingWithDictionary:v14];
      v16 = self->_tabGroupUUIDsToCKShares;
      self->_tabGroupUUIDsToCKShares = v15;

      if ([(NSCountedSet *)self->_activeTabGroupUUIDs containsObject:dCopy])
      {
        [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare setObject:shareCopy forKeyedSubscript:dCopy];
        [(WBParticipantPresenceCoordinator *)self->_presenceCoordinator beginCollaborationForShare:shareCopy];
        first = [(WBSPair *)self->_activeTabGroupAndTabUUIDPair first];
        v18 = [first isEqualToString:dCopy];

        if (v18)
        {
          second = [(WBSPair *)self->_activeTabGroupAndTabUUIDPair second];
          [(WBTabGroupManager *)self _movePresenceForParticipantToTabWithUUID:second];
        }
      }
    }
  }
}

- (void)_movePresenceForParticipantToTabWithUUID:(id)d
{
  dCopy = d;
  v19 = [(WBTabGroupManager *)self tabWithUUID:dCopy];
  tabGroupUUID = [v19 tabGroupUUID];
  v6 = [(WBTabGroupManager *)self tabGroupWithUUID:tabGroupUUID];

  v7 = objc_alloc(MEMORY[0x277D49A80]);
  tabGroupUUID2 = [v19 tabGroupUUID];
  v9 = [v7 initWithFirst:tabGroupUUID2 second:dCopy];

  activeTabGroupAndTabUUIDPair = self->_activeTabGroupAndTabUUIDPair;
  self->_activeTabGroupAndTabUUIDPair = v9;

  tabGroupUUIDsToCKShares = self->_tabGroupUUIDsToCKShares;
  tabGroupUUID3 = [v19 tabGroupUUID];
  serverID = [(NSDictionary *)tabGroupUUIDsToCKShares objectForKeyedSubscript:tabGroupUUID3];

  if (serverID)
  {
    bookmark = [v6 bookmark];
    serverID = [bookmark serverID];

    bookmark2 = [v19 bookmark];
    serverID2 = [bookmark2 serverID];
  }

  else
  {
    serverID2 = 0;
  }

  presenceCoordinator = self->_presenceCoordinator;
  deviceIdentifier = [(WBTabGroupManager *)self deviceIdentifier];
  [(WBParticipantPresenceCoordinator *)presenceCoordinator moveCurrentParticipantToTabIdentifier:serverID2 inTabGroupIdentifier:serverID withDeviceIdentifier:deviceIdentifier];
}

- (void)beginParticipantPresenceReportingForTabGroupWithUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    v8 = dCopy;
    v6 = [(WBTabGroupManager *)self tabGroupWithUUID:dCopy];
    if (v6)
    {
      [(NSCountedSet *)self->_activeTabGroupUUIDs addObject:v8];
      v7 = [(WBTabGroupManager *)self _shareRecordIfNeededToBeginCollaborationForTabGroup:v6];
      if (v7)
      {
        [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare setObject:v7 forKeyedSubscript:v8];
        [(WBParticipantPresenceCoordinator *)self->_presenceCoordinator beginCollaborationForShare:v7];
      }
    }

    v5 = v8;
  }

  MEMORY[0x2821F96F8](dCopy, v5);
}

- (id)_shareRecordIfNeededToBeginCollaborationForTabGroup:(id)group
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    uuid = [group uuid];
    if ([(NSCountedSet *)self->_activeTabGroupUUIDs containsObject:uuid]&& ([(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare objectForKeyedSubscript:uuid], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      v6 = [(NSDictionary *)self->_tabGroupUUIDsToCKShares objectForKeyedSubscript:uuid];
      [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare setObject:v6 forKeyedSubscript:uuid];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)endParticipantPresenceReportingForTabGroupWithUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    v8 = dCopy;
    v6 = [(WBTabGroupManager *)self tabGroupWithUUID:dCopy];
    if (v6)
    {
      [(NSCountedSet *)self->_activeTabGroupUUIDs removeObject:v8];
      v7 = [(WBTabGroupManager *)self _shareRecordIfNeededToEndCollaborationForTabGroup:v6];
      if (v7)
      {
        [(WBParticipantPresenceCoordinator *)self->_presenceCoordinator endCollaborationForShare:v7];
        [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare setObject:0 forKeyedSubscript:v8];
      }
    }

    v5 = v8;
  }

  MEMORY[0x2821F96F8](dCopy, v5);
}

- (id)_shareRecordIfNeededToEndCollaborationForTabGroup:(id)group
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    uuid = [group uuid];
    v5 = [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare objectForKeyedSubscript:uuid];
    if (v5 && ([(NSCountedSet *)self->_activeTabGroupUUIDs containsObject:uuid]& 1) == 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)disableDevicePresenceReporting
{
  --self->_numberOfDevicePresenceReportingRequests;
  _endDevicePresenceReportingIfNeeded = [(WBTabGroupManager *)self _endDevicePresenceReportingIfNeeded];
  v4 = WBS_LOG_CHANNEL_PREFIXTabGroup(_endDevicePresenceReportingIfNeeded, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_DEFAULT, "Did end device presence reporting", v5, 2u);
  }
}

- (void)participantPresenceCoordinator:(id)coordinator didUpdateActiveParticipants:(id)participants inTabGroupWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v8 = [(WBTabCollection *)self->_tabCollection tabGroupUUIDForServerID:identifier];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(NSHashTable *)self->_observers copy];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 tabGroupManager:self didUpadateActiveParticipants:participantsCopy inTabGroupWithUUID:v8];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)participantPresenceCoordinator:(id)coordinator didUpdateActiveParticipants:(id)participants inTabWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v8 = [(WBTabCollection *)self->_tabCollection tabUUIDForServerID:identifier];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(NSHashTable *)self->_observers copy];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 tabGroupManager:self didUpadateActiveParticipants:participantsCopy inTabWithUUID:v8];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)shareDidUpdateForTabGroupWithUUID:(id)d
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    dCopy = d;
    v7 = [(WBTabGroupManager *)self tabGroupWithUUID:dCopy];
    v6 = [(WBTabGroupManager *)self shareRecordForTabGroup:v7];
    [(WBTabGroupManager *)self _didReceiveShare:v6 forTabGroupUUID:dCopy];
  }
}

- (void)activeParticipantsDidUpdateInTabGroupWithUUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!self->_enableSharedTabGroupsFastSyncPresence)
  {
    tabCollection = self->_tabCollection;
    v6 = [(WBTabGroupManager *)self tabGroupWithUUID:dCopy];
    v7 = [(WBTabCollection *)tabCollection activeParticipantsInTabGroup:v6];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(NSHashTable *)self->_observers copy];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            v14 = [MEMORY[0x277CBEB98] setWithArray:v7];
            [v13 tabGroupManager:self didUpadateActiveParticipants:v14 inTabGroupWithUUID:dCopy];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (void)activeParticipantsDidUpdateInTabWithUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!self->_enableSharedTabGroupsFastSyncPresence)
  {
    tabCollection = self->_tabCollection;
    v6 = [(WBTabGroupManager *)self tabWithUUID:dCopy];
    v7 = [(WBTabCollection *)tabCollection activeParticipantsInTab:v6];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(NSHashTable *)self->_observers copy];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 tabGroupManager:self didUpadateActiveParticipants:v7 inTabWithUUID:dCopy];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)_tabGroupSyncDidFinish:(id)finish
{
  v25 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  v6 = WBS_LOG_CHANNEL_PREFIXTabGroup(finishCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "Tab group sync did finish", buf, 2u);
  }

  userInfo = [finishCopy userInfo];
  v8 = [userInfo safari_numberForKey:@"syncResult"];

  integerValue = [v8 integerValue];
  if (v8)
  {
    v10 = integerValue == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    [(WBTabGroupManager *)self syncDidFinishWithResult:0];
  }

  else
  {
    v11 = integerValue;
    v18 = finishCopy;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [(NSHashTable *)self->_observers copy];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * v16);
          if (objc_opt_respondsToSelector())
          {
            [v17 tabGroupManager:self didReloadAferSyncWithResult:v11];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v14);
    }

    finishCopy = v18;
  }
}

- (void)syncDidFinishWithResult:(int64_t)result
{
  if (!result)
  {
    v6[6] = v3;
    v6[7] = v4;
    internalQueue = self->_internalQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__WBTabGroupManager_syncDidFinishWithResult___block_invoke;
    v6[3] = &unk_279E75C10;
    v6[4] = self;
    v6[5] = 0;
    dispatch_async(internalQueue, v6);
  }
}

void __45__WBTabGroupManager_syncDidFinishWithResult___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(&reloadAfterSyncLock);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__WBTabGroupManager_syncDidFinishWithResult___block_invoke_2;
  v3[3] = &unk_279E75C10;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v2;
  [v4 _reloadProfilesAndTabGroupsAndNotify:1 withCompletionHandler:v3];
  [*(a1 + 32) _notifySyncDidFinishedForScopedBookmarks];
  os_unfair_lock_unlock(&reloadAfterSyncLock);
}

void __45__WBTabGroupManager_syncDidFinishWithResult___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManager:*(a1 + 32) didReloadAferSyncWithResult:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_notifySyncDidFinishedForScopedBookmarks
{
  allSyncedTabGroupsExceptRemoteUnnamedTabGroups = [(WBTabGroupManager *)self allSyncedTabGroupsExceptRemoteUnnamedTabGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__WBTabGroupManager__notifySyncDidFinishedForScopedBookmarks__block_invoke;
  v8[3] = &unk_279E77D08;
  v8[4] = self;
  v4 = [allSyncedTabGroupsExceptRemoteUnnamedTabGroups safari_mapAndFilterObjectsUsingBlock:v8];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WBTabGroupManager__notifySyncDidFinishedForScopedBookmarks__block_invoke_2;
  block[3] = &unk_279E753F0;
  block[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

id __61__WBTabGroupManager__notifySyncDidFinishedForScopedBookmarks__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isNamed])
  {
    v4 = [*(a1 + 32) topScopedBookmarkListForTabGroup:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __61__WBTabGroupManager__notifySyncDidFinishedForScopedBookmarks__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManager:*(a1 + 32) didFinishSyncForScopedBookmarkLists:{*(a1 + 40), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)reloadTabGroupsFromDatabaseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = WBS_LOG_CHANNEL_PREFIXTabGroup(handlerCopy, v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v7)
  {
    *v10 = 0;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "Reloading tab groups from database", v10, 2u);
  }

  if (self->_tabCollection)
  {
    [(WBTabGroupManager *)self _reloadProfilesAndTabGroupsAndNotify:1 withCompletionHandler:handlerCopy];
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXTabGroup(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [WBTabGroupManager reloadTabGroupsFromDatabaseWithCompletionHandler:];
    }
  }
}

- (void)_didRemoveProfiles:(id)profiles updateProfiles:(id)updateProfiles previousProfiles:(id)previousProfiles removeTabGroups:(id)groups updateTabGroups:(id)tabGroups previousTabGroups:(id)previousTabGroups
{
  v202 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  updateProfilesCopy = updateProfiles;
  previousProfilesCopy = previousProfiles;
  groupsCopy = groups;
  tabGroupsCopy = tabGroups;
  v117 = [(NSHashTable *)self->_observers copy];
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  obj = profilesCopy;
  v113 = [obj countByEnumeratingWithState:&v184 objects:v201 count:16];
  if (v113)
  {
    v109 = *v185;
    do
    {
      v14 = 0;
      do
      {
        if (*v185 != v109)
        {
          objc_enumerationMutation(obj);
        }

        v118 = v14;
        v15 = *(*(&v184 + 1) + 8 * v14);
        v180 = 0u;
        v181 = 0u;
        v182 = 0u;
        v183 = 0u;
        v16 = v117;
        v17 = [v16 countByEnumeratingWithState:&v180 objects:v200 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v181;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v181 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v180 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                identifier = [v15 identifier];
                [v21 tabGroupManager:self didRemoveProfileWithIdentifier:identifier];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v180 objects:v200 count:16];
          }

          while (v18);
        }

        [(WBSProfileDataManager *)self->_profileDataManager didRemoveProfile:v15];
        v175[0] = MEMORY[0x277D85DD0];
        v175[1] = 3221225472;
        v176 = __122__WBTabGroupManager__didRemoveProfiles_updateProfiles_previousProfiles_removeTabGroups_updateTabGroups_previousTabGroups___block_invoke;
        v177 = &unk_279E753F0;
        selfCopy = self;
        v179 = v15;
        os_unfair_lock_lock(&profilesLock);
        v176(v175);
        os_unfair_lock_unlock(&profilesLock);
        v14 = v118 + 1;
      }

      while ((v118 + 1) != v113);
      v113 = [obj countByEnumeratingWithState:&v184 objects:v201 count:16];
    }

    while (v113);
  }

  allObjects = [updateProfilesCopy allObjects];
  v24 = [previousProfilesCopy differenceFromArray:allObjects withOptions:4];

  v93 = v24;
  if ([v24 hasChanges])
  {
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v25 = v117;
    v26 = [v25 countByEnumeratingWithState:&v171 objects:v199 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v172;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v172 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v171 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v30 tabGroupManagerDidUpdateProfiles:self];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v171 objects:v199 count:16];
      }

      while (v27);
    }
  }

  v31 = MEMORY[0x277CBEAC0];
  v32 = [previousProfilesCopy valueForKey:@"identifier"];
  v106 = [v31 dictionaryWithObjects:previousProfilesCopy forKeys:v32];

  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v97 = updateProfilesCopy;
  v107 = [v97 countByEnumeratingWithState:&v167 objects:v198 count:16];
  if (v107)
  {
    v104 = *v168;
    do
    {
      v33 = 0;
      do
      {
        if (*v168 != v104)
        {
          objc_enumerationMutation(v97);
        }

        v110 = v33;
        v119 = *(*(&v167 + 1) + 8 * v33);
        v163 = 0u;
        v164 = 0u;
        v165 = 0u;
        v166 = 0u;
        v114 = v117;
        v34 = [v114 countByEnumeratingWithState:&v163 objects:v197 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v164;
          do
          {
            for (k = 0; k != v35; ++k)
            {
              if (*v164 != v36)
              {
                objc_enumerationMutation(v114);
              }

              v38 = *(*(&v163 + 1) + 8 * k);
              if (objc_opt_respondsToSelector())
              {
                identifier2 = [v119 identifier];
                identifier3 = [v119 identifier];
                v41 = [v106 objectForKeyedSubscript:identifier3];
                v42 = [v119 differenceFromProfile:v41];
                [v38 tabGroupManager:self didUpdateProfileWithIdentifier:identifier2 difference:v42];
              }
            }

            v35 = [v114 countByEnumeratingWithState:&v163 objects:v197 count:16];
          }

          while (v35);
        }

        v161 = 0u;
        v162 = 0u;
        v159 = 0u;
        v160 = 0u;
        v43 = self->_cloudTabObservers;
        v44 = [(NSHashTable *)v43 countByEnumeratingWithState:&v159 objects:v196 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v160;
          do
          {
            for (m = 0; m != v45; ++m)
            {
              if (*v160 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v48 = *(*(&v159 + 1) + 8 * m);
              if (objc_opt_respondsToSelector())
              {
                identifier4 = [v119 identifier];
                [v48 cloudTabDeviceProvider:self didUpdateCloudTabsInProfileWithIdentifier:identifier4];
              }
            }

            v45 = [(NSHashTable *)v43 countByEnumeratingWithState:&v159 objects:v196 count:16];
          }

          while (v45);
        }

        v33 = v110 + 1;
      }

      while ((v110 + 1) != v107);
      v107 = [v97 countByEnumeratingWithState:&v167 objects:v198 count:16];
    }

    while (v107);
  }

  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v96 = groupsCopy;
  v115 = [v96 countByEnumeratingWithState:&v155 objects:v195 count:16];
  if (v115)
  {
    v111 = *v156;
    do
    {
      v50 = 0;
      do
      {
        if (*v156 != v111)
        {
          objc_enumerationMutation(v96);
        }

        v120 = v50;
        v51 = *(*(&v155 + 1) + 8 * v50);
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v52 = v117;
        v53 = [v52 countByEnumeratingWithState:&v151 objects:v194 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v152;
          do
          {
            for (n = 0; n != v54; ++n)
            {
              if (*v152 != v55)
              {
                objc_enumerationMutation(v52);
              }

              v57 = *(*(&v151 + 1) + 8 * n);
              if (objc_opt_respondsToSelector())
              {
                uuid = [v51 uuid];
                [v57 tabGroupManager:self didRemoveTabGroupWithUUID:uuid];
              }
            }

            v54 = [v52 countByEnumeratingWithState:&v151 objects:v194 count:16];
          }

          while (v54);
        }

        v146[0] = MEMORY[0x277D85DD0];
        v146[1] = 3221225472;
        v147 = __122__WBTabGroupManager__didRemoveProfiles_updateProfiles_previousProfiles_removeTabGroups_updateTabGroups_previousTabGroups___block_invoke_2;
        v148 = &unk_279E753F0;
        selfCopy2 = self;
        v150 = v51;
        os_unfair_lock_lock(&tabGroupsLock);
        v147(v146);
        os_unfair_lock_unlock(&tabGroupsLock);
        v50 = v120 + 1;
      }

      while ((v120 + 1) != v115);
      v115 = [v96 countByEnumeratingWithState:&v155 objects:v195 count:16];
    }

    while (v115);
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v95 = tabGroupsCopy;
  v102 = [v95 countByEnumeratingWithState:&v142 objects:v193 count:16];
  if (v102)
  {
    v100 = *v143;
    do
    {
      v59 = 0;
      do
      {
        if (*v143 != v100)
        {
          objc_enumerationMutation(v95);
        }

        v105 = v59;
        v60 = *(*(&v142 + 1) + 8 * v59);
        os_unfair_lock_lock(&tabGroupsLock);
        v116 = v60;
        uuid2 = [v60 uuid];
        v62 = [(WBTabGroupManager *)self _tabGroupWithUUID:uuid2];
        tabs = [v62 tabs];

        os_unfair_lock_unlock(&tabGroupsLock);
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v108 = tabs;
        v121 = [v108 countByEnumeratingWithState:&v138 objects:v192 count:16];
        if (v121)
        {
          v112 = *v139;
          do
          {
            for (ii = 0; ii != v121; ++ii)
            {
              if (*v139 != v112)
              {
                objc_enumerationMutation(v108);
              }

              v65 = *(*(&v138 + 1) + 8 * ii);
              v134 = 0u;
              v135 = 0u;
              v136 = 0u;
              v137 = 0u;
              v66 = v117;
              v67 = [v66 countByEnumeratingWithState:&v134 objects:v191 count:16];
              if (v67)
              {
                v68 = v67;
                v69 = *v135;
                do
                {
                  for (jj = 0; jj != v68; ++jj)
                  {
                    if (*v135 != v69)
                    {
                      objc_enumerationMutation(v66);
                    }

                    v71 = *(*(&v134 + 1) + 8 * jj);
                    if (objc_opt_respondsToSelector())
                    {
                      uuid3 = [v65 uuid];
                      [v71 tabGroupManager:self didUpdateTabWithUUID:uuid3 userDriven:0];
                    }
                  }

                  v68 = [v66 countByEnumeratingWithState:&v134 objects:v191 count:16];
                }

                while (v68);
              }
            }

            v121 = [v108 countByEnumeratingWithState:&v138 objects:v192 count:16];
          }

          while (v121);
        }

        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v73 = v117;
        v74 = [v73 countByEnumeratingWithState:&v130 objects:v190 count:16];
        if (v74)
        {
          v75 = v74;
          v76 = *v131;
          do
          {
            for (kk = 0; kk != v75; ++kk)
            {
              if (*v131 != v76)
              {
                objc_enumerationMutation(v73);
              }

              v78 = *(*(&v130 + 1) + 8 * kk);
              if (objc_opt_respondsToSelector())
              {
                uuid4 = [v116 uuid];
                [v78 tabGroupManager:self didUpdateTabsInTabGroupWithUUID:uuid4];
              }
            }

            v75 = [v73 countByEnumeratingWithState:&v130 objects:v190 count:16];
          }

          while (v75);
        }

        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v80 = v73;
        v81 = [v80 countByEnumeratingWithState:&v126 objects:v189 count:16];
        if (v81)
        {
          v82 = v81;
          v83 = *v127;
          do
          {
            for (mm = 0; mm != v82; ++mm)
            {
              if (*v127 != v83)
              {
                objc_enumerationMutation(v80);
              }

              v85 = *(*(&v126 + 1) + 8 * mm);
              if (objc_opt_respondsToSelector())
              {
                uuid5 = [v116 uuid];
                [v85 tabGroupManager:self didUpdateTabGroupWithUUID:uuid5];
              }
            }

            v82 = [v80 countByEnumeratingWithState:&v126 objects:v189 count:16];
          }

          while (v82);
        }

        v59 = v105 + 1;
      }

      while (v105 + 1 != v102);
      v102 = [v95 countByEnumeratingWithState:&v142 objects:v193 count:16];
    }

    while (v102);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v87 = v117;
  v88 = [v87 countByEnumeratingWithState:&v122 objects:v188 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v123;
    do
    {
      for (nn = 0; nn != v89; ++nn)
      {
        if (*v123 != v90)
        {
          objc_enumerationMutation(v87);
        }

        v92 = *(*(&v122 + 1) + 8 * nn);
        if (objc_opt_respondsToSelector())
        {
          [v92 tabGroupManagerDidUpdateTabGroups:self];
        }
      }

      v89 = [v87 countByEnumeratingWithState:&v122 objects:v188 count:16];
    }

    while (v89);
  }
}

void __122__WBTabGroupManager__didRemoveProfiles_updateProfiles_previousProfiles_removeTabGroups_updateTabGroups_previousTabGroups___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 112);
  v2 = [*(a1 + 40) identifier];
  [v1 setObject:0 forKeyedSubscript:v2];
}

void __122__WBTabGroupManager__didRemoveProfiles_updateProfiles_previousProfiles_removeTabGroups_updateTabGroups_previousTabGroups___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = [*(a1 + 40) uuid];
  [v1 setObject:0 forKeyedSubscript:v2];
}

- (void)_cacheTabGroup:(void *)a3 creatorDeviceUUID:.cold.1(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 uuid];
  v7 = [a3 objectForKeyedSubscript:v6];
  v8 = [v7 allTabs];
  v9 = [v8 count];
  v10 = [a2 allTabs];
  *v17 = 134349312;
  *&v17[4] = v9;
  *&v17[12] = 2050;
  *&v17[14] = [v10 count];
  OUTLINED_FUNCTION_6_1(&dword_272C20000, v11, v12, "Tab group cache is updated from %{public}lu to %{public}lu", v13, v14, v15, v16, *v17, *&v17[8], *&v17[16]);
}

void __48__WBTabGroupManager__itemSyncPositionComparator__block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_4_0() privacyPreservingDescription];
  v5 = 138543618;
  v6 = a2;
  OUTLINED_FUNCTION_5_1();
  _os_log_fault_impl(&dword_272C20000, v3, OS_LOG_TYPE_FAULT, "Items do not have sync positions: %{public}@, %{public}@", &v5, 0x16u);
}

void __48__WBTabGroupManager__itemSyncPositionComparator__block_invoke_cold_2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0(&dword_272C20000, v4, v5, "Item does not have a sync position %{public}@", v6, v7, v8, v9);
}

- (void)_reorderTabGroup:(void *)a1 afterTabGroup:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)removeTabGroup:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)updateTabWithUUID:persist:notify:usingBlock:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateTabsInTabGroupWithUUID:options:usingBlock:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)insertScopedBookmark:(os_log_t)log inScopedBookmarkFolderWithID:afterBookmarkWithUUID:notify:.cold.2(void *a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = [a1 identifier];
  }

  else
  {
    v5 = -1;
  }

  v6[0] = 67109376;
  v6[1] = a2;
  v7 = 1024;
  v8 = v5;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "Failed to insert scoped bookmark into parent(%d) after anchor(%d).", v6, 0xEu);
}

- (void)updateScopedBookmarkWithUUID:(void *)a1 title:address:notify:.cold.1(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_4_0() identifier];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

- (void)deleteScopedBookmarkWithUUID:(void *)a1 notify:completionHandler:.cold.1(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_4_0() identifier];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_4_0() recordID];
  v5 = [v4 ckShortDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0(&dword_272C20000, v6, v7, "tabGroupUUID is nil despite successfully accepting share %{public}@", v8, v9, v10, v11);
}

void __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [v3 share];
  v6 = [v5 recordID];
  v7 = [v6 zoneID];
  v8 = [v7 ckShortDescription];
  v9 = [*(a1 + 56) safari_privacyPreservingDescription];
  LODWORD(v16) = 138543618;
  *(&v16 + 4) = v8;
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_1(&dword_272C20000, v10, v11, "Failed to join shared tab group %{public}@ with error: %{public}@", v12, v13, v14, v15, v16, DWORD2(v16));
}

void __68__WBTabGroupManager_beginSharingTabGroupWithUUID_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_4_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

@end