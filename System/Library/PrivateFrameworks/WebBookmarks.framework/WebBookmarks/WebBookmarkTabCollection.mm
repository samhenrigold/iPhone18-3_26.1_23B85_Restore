@interface WebBookmarkTabCollection
+ (id)collectionWithConfiguration:(id)configuration;
+ (id)inMemoryChangesFileURL;
- (BOOL)_clearAllSyncData;
- (BOOL)_clearUnnamedTabGroupsInWindowWithID:(int)d;
- (BOOL)_deleteAllLocalTabsAndGroups;
- (BOOL)_deleteAllWindowStates;
- (BOOL)_deleteDefaultProfileIfSavedAsTabGroup;
- (BOOL)_deleteDuplicatePersonalProfilesWithInvalidUUID;
- (BOOL)_deleteMatchingWindows:(id)windows logAsError:(BOOL)error;
- (BOOL)_deleteWindowState:(id)state;
- (BOOL)_deleteWindowState:(id)state forApplyingInMemoryChanges:(BOOL)changes;
- (BOOL)_deleteWindowsNotInLastSession;
- (BOOL)_fixLocalBookmarksInSyncableFolders;
- (BOOL)_generateServerIdIfNeededForTabGroup:(id)group;
- (BOOL)_generateServerIdIfNeededForTabGroupBookmark:(id)bookmark;
- (BOOL)_markTabsClosed:(id)closed;
- (BOOL)_markWindowStatesAsLastSession:(id)session;
- (BOOL)_performOSVersionUpgradesFromPreviousVersion:(id)version;
- (BOOL)_performSafariVersionUpgradesFromPreviousVersion:(id)version;
- (BOOL)_performSafariVersionUpgradesOutsideSafariProcessFromPreviousVersion:(id)version;
- (BOOL)_reEncodeSessionStateDataIfNeeded;
- (BOOL)_regenerateSyncPositionsIfNeeded;
- (BOOL)_removeClosedLocallyCreatedUnnamedTabGroups;
- (BOOL)_removePlaceholderTabGroupRecordsOnUpgrade;
- (BOOL)_resetSettingsSyncData;
- (BOOL)_restoreMissingSpecialBookmarksWithChangeNotification:(BOOL)notification;
- (BOOL)_saveActiveTabGroupID:(int)d inProfileWithID:(int)iD windowID:(int)windowID;
- (BOOL)_saveActiveTabID:(int)d inTabGroupWithID:(int)iD windowID:(int)windowID;
- (BOOL)_saveTabGroupRecordsWithMissingCKShareRecord;
- (BOOL)_saveUnnamedTabGroupID:(int)d inWindowWithID:(int)iD;
- (BOOL)_saveWindowRestorationArchiveData:(id)data forWindowUUIDString:(id)string;
- (BOOL)_saveWindowState:(id)state;
- (BOOL)_saveWindowState:(id)state activeTabGroupID:(int)d localTabGroupID:(int)iD privateTabGroupID:(int)groupID;
- (BOOL)_saveWindowState:(id)state forApplyingInMemoryChanges:(BOOL)changes;
- (BOOL)allowsScopedBookmarksInTabGroup:(id)group;
- (BOOL)bookmarkRequiresParent:(id)parent specialID:(int)d;
- (BOOL)closeWindowState:(id)state;
- (BOOL)containsCKShareRecord;
- (BOOL)createTopScopedBookmarkListForTabGroup:(id)group;
- (BOOL)deleteAllWindowStates;
- (BOOL)deleteSettingWithIdentifier:(int64_t)identifier;
- (BOOL)deleteSettingsRecordWithServerID:(id)d;
- (BOOL)deleteWindowStates:(id)states;
- (BOOL)resetModifiedStateForSetting:(id)setting withRecord:(id)record value:(id)value forBookmarkWithID:(int)d;
- (BOOL)saveSettings:(id)settings inParentWithID:(int)d parentServerID:(id)iD;
- (BOOL)saveWindowRestorationArchiveData:(id)data forWindowUUIDString:(id)string;
- (BOOL)updateContainsCKShareRecord;
- (WBWindowState)lastClosedWindowState;
- (WebBookmarkList)recentlyClosedTabList;
- (WebBookmarkTabCollection)initWithConfiguration:(id)configuration checkIntegrity:(BOOL)integrity;
- (id)_allUnnamedTabGroupUUIDsFromCurrentWindowStates;
- (id)_listOfScopedBookmarkFoldersInTabGroup:(id)group;
- (id)_specialTabFolderUUIDs;
- (id)_specialTabFolderUUIDsForQueries;
- (id)_specialTabsWithUUID:(id)d privateBrowsing:(BOOL)browsing;
- (id)_tabGroupForBookmark:(id)bookmark kind:(int64_t)kind;
- (id)_tabGroupWithID:(int)d kind:(int64_t)kind;
- (id)_topScopedBookmarkListServerIdForTabGroup:(id)group;
- (id)_uuidForQueries:(id)queries;
- (id)_windowStatesWithFilter:(id)filter;
- (id)allSettingsChangesForParentWithID:(int)d;
- (id)allSettingsChangesWithWhereClause:(id)clause;
- (id)deviceForBookmark:(id)bookmark inProfileWithIdentifier:(id)identifier;
- (id)devicesForProfile:(id)profile;
- (id)generateNewServerIDForBookmark:(id)bookmark;
- (id)generatePositionBeforeFirstRecordInParentWithServerID:(id)d;
- (id)pinnedTabsForProfileWithIdentifier:(id)identifier;
- (id)profileForBookmark:(id)bookmark;
- (id)remoteDevicesForProfileBookmark:(id)bookmark;
- (id)settingChangeWithName:(id)name parentID:(int)d;
- (id)settingsChangesForAllDeletedSettings;
- (id)settingsForBookmarkWithID:(int)d;
- (id)tabGroupForBookmark:(id)bookmark;
- (id)tabGroupsChildrenForBookmark:(id)bookmark;
- (id)tabsForTabGroupBookmark:(id)bookmark;
- (id)topScopedBookmarkListForTabGroup:(id)group onQueue:(id)queue;
- (id)windowStateWithUUID:(id)d;
- (int)_cachedPinnedTabsFolderIDForProfileWithIdentifier:(id)identifier;
- (int)_windowIDForUUID:(id)d;
- (int)createLegacyPlaceholderTabGroupBookmarksForSharedTabGroup:(id)group;
- (int)frequentlyVisitedSitesFolderIDForProfileWithIdentifier:(id)identifier;
- (int)pinnedTabsFolderID;
- (int)pinnedTabsFolderIDForProfileWithIdentifier:(id)identifier;
- (int)privatePinnedTabsFolderID;
- (int64_t)tabCountForTabGroupWithUUID:(id)d;
- (unint64_t)_countOfAllLocalTabsToBeDeleted;
- (void)_addActiveTabGroupsToWindowState:(id)state;
- (void)_addActiveTabsToWindowState:(id)state;
- (void)_addUnnamedTabGroupsToWindowState:(id)state;
- (void)_cachePinnedTabsFolderID:(int)d forProfileWithIdentifier:(id)identifier;
- (void)_createFrequentlyVisitedSitesFolderWithUUIDIfNeeded:(id)needed withParentID:(int)d;
- (void)_createParticipantPresenceTable;
- (void)_createSchema;
- (void)_createSpecialTabsFolderWithUUIDIfNeeded:(id)needed withParentID:(int)d;
- (void)_deleteDuplicatePersonalProfilesWithInvalidUUID;
- (void)_logErrorWithMessage:(id)message result:(int)result;
- (void)_migrateSchemaVersion43ToVersion44;
- (void)_migrateSchemaVersion44ToVersion45;
- (void)_migrateSchemaVersion51ToVersion52;
- (void)_migrateSchemaVersion52ToVersion53;
- (void)_migrateSchemaVersion53ToVersion54;
- (void)_migrateSchemaVersion54ToVersion55;
- (void)_migrateSchemaVersion55ToVersion56;
- (void)_migrateWindowBookmark:(id)bookmark;
- (void)_regenerateSyncPositionsIfNeeded;
- (void)_setupInMemoryChangeSet;
- (void)_slowDownFetchingForTabsCycler;
- (void)createSettingsTable;
- (void)createWindowsProfilesTable;
- (void)createWindowsTabGroupsTable;
- (void)createWindowsTable;
- (void)createWindowsUnnamedTabGroupsTable;
- (void)performMaintenance;
- (void)setContainsCKShareRecord:(BOOL)record;
@end

@implementation WebBookmarkTabCollection

- (void)_setupInMemoryChangeSet
{
  if ([(WebBookmarkCollection *)self _trackChangesInMemoryIfDatabaseWriteIsNotAllowed])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__WebBookmarkTabCollection__setupInMemoryChangeSet__block_invoke;
    block[3] = &unk_279E757C8;
    block[4] = self;
    if ([WebBookmarkTabCollection _setupInMemoryChangeSet]::onceToken != -1)
    {
      dispatch_once(&[WebBookmarkTabCollection _setupInMemoryChangeSet]::onceToken, block);
    }
  }
}

void __51__WebBookmarkTabCollection__setupInMemoryChangeSet__block_invoke(uint64_t a1)
{
  v1 = [WebBookmarkChangeSet alloc];
  v4 = [objc_opt_class() inMemoryChangesFileURL];
  v2 = [(WebBookmarkChangeSet *)v1 initWithFileURL:?];
  v3 = inMemoryTabChangeSet;
  inMemoryTabChangeSet = v2;
}

+ (id)inMemoryChangesFileURL
{
  v2 = MEMORY[0x277CBEBC0];
  safariDirectoryPath = [self safariDirectoryPath];
  v4 = [safariDirectoryPath stringByAppendingPathComponent:@"TabChanges.plist"];
  v5 = [v2 fileURLWithPath:v4];

  return v5;
}

- (void)_slowDownFetchingForTabsCycler
{
  if ([MEMORY[0x277D49F00] isTabCyclerEnabled] && objc_msgSend(MEMORY[0x277D49F00], "shouldTabCyclerSlowDown"))
  {
    v2 = MEMORY[0x277CCACC8];

    [v2 sleepForTimeInterval:0.2];
  }
}

+ (id)collectionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  storeOwner = [configurationCopy storeOwner];
  if (storeOwner >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(*off_279E75A90[storeOwner]) initWithConfiguration:configurationCopy];
  }

  return v5;
}

- (WebBookmarkTabCollection)initWithConfiguration:(id)configuration checkIntegrity:(BOOL)integrity
{
  v5.receiver = self;
  v5.super_class = WebBookmarkTabCollection;
  return [(WebBookmarkCollection *)&v5 initWithConfiguration:configuration checkIntegrity:integrity];
}

- (void)_createSchema
{
  v3.receiver = self;
  v3.super_class = WebBookmarkTabCollection;
  [(WebBookmarkCollection *)&v3 _createSchema];
  [(WebBookmarkTabCollection *)self createWindowsTable];
  [(WebBookmarkTabCollection *)self createWindowsTabGroupsTable];
  [(WebBookmarkTabCollection *)self createWindowsProfilesTable];
  [(WebBookmarkTabCollection *)self createWindowsUnnamedTabGroupsTable];
  [(WebBookmarkTabCollection *)self createSettingsTable];
}

- (void)createWindowsTable
{
  [(WebBookmarkCollection *)self _executeSQL:@"CREATE TABLE IF NOT EXISTS windows (id INTEGER PRIMARY KEY, active_tab_group_id INTEGER DEFAULT NULL, active_profile_id INTEGER DEFAULT NULL, date_closed REAL DEFAULT NULL, extra_attributes BLOB DEFAULT NULL, is_last_session INTEGER DEFAULT 0, local_tab_group_id INTEGER DEFAULT NULL, private_tab_group_id INTEGER DEFAULT NULL, scene_id TEXT DEFAULT NULL, uuid TEXT NOT NULL UNIQUE, restoration_archive BLOB DEFAULT NULL, FOREIGN KEY (active_tab_group_id) REFERENCES bookmarks (id) ON UPDATE CASCADE ON DELETE SET NULL, FOREIGN KEY (active_profile_id) REFERENCES bookmarks (id) ON UPDATE CASCADE ON DELETE SET NULL, FOREIGN KEY (local_tab_group_id) REFERENCES bookmarks (id) ON UPDATE CASCADE ON DELETE CASCADE, FOREIGN KEY (private_tab_group_id) REFERENCES bookmarks (id) ON UPDATE CASCADE ON DELETE CASCADE)"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX IF NOT EXISTS uuid_index ON windows (uuid)"];
}

- (void)createWindowsTabGroupsTable
{
  [(WebBookmarkCollection *)self _executeSQL:@"CREATE TABLE IF NOT EXISTS windows_tab_groups (id INTEGER PRIMARY KEY, active_tab_id INTEGER DEFAULT NULL, tab_group_id INTEGER NOT NULL, window_id INTEGER NOT NULL, FOREIGN KEY (active_tab_id) REFERENCES bookmarks (id) ON UPDATE CASCADE ON DELETE CASCADE, FOREIGN KEY (tab_group_id) REFERENCES bookmarks (id) ON UPDATE CASCADE ON DELETE CASCADE, FOREIGN KEY (window_id) REFERENCES windows (id) ON UPDATE CASCADE ON DELETE CASCADE, UNIQUE (tab_group_id, window_id))"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX IF NOT EXISTS window_index ON windows_tab_groups (window_id)"];
}

- (void)createWindowsProfilesTable
{
  [(WebBookmarkCollection *)self _executeSQL:@"CREATE TABLE IF NOT EXISTS windows_profiles (id INTEGER PRIMARY KEY, active_tab_group_id INTEGER DEFAULT NULL, profile_id INTEGER NOT NULL, window_id INTEGER NOT NULL, FOREIGN KEY (active_tab_group_id) REFERENCES bookmarks (id) ON UPDATE CASCADE ON DELETE CASCADE, FOREIGN KEY (profile_id) REFERENCES bookmarks (id) ON UPDATE CASCADE ON DELETE CASCADE, FOREIGN KEY (window_id) REFERENCES windows (id) ON UPDATE CASCADE ON DELETE CASCADE, UNIQUE (profile_id, window_id))"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX IF NOT EXISTS window_index ON windows_profiles (window_id)"];
}

- (void)createWindowsUnnamedTabGroupsTable
{
  [(WebBookmarkCollection *)self _executeSQL:@"CREATE TABLE IF NOT EXISTS windows_unnamed_tab_groups (id INTEGER PRIMARY KEY, tab_group_id INTEGER NOT NULL, window_id INTEGER NOT NULL, FOREIGN KEY (tab_group_id) REFERENCES bookmarks (id) ON UPDATE CASCADE ON DELETE CASCADE, FOREIGN KEY (window_id) REFERENCES windows (id) ON UPDATE CASCADE ON DELETE CASCADE, UNIQUE (tab_group_id, window_id))"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"CREATE INDEX IF NOT EXISTS window_index ON windows_unnamed_tab_groups (window_id)"];
}

- (void)createSettingsTable
{
  [(WebBookmarkCollection *)self _executeSQL:@"CREATE TABLE IF NOT EXISTS settings (id INTEGER PRIMARY KEY, key TEXT NOT NULL, value NUMERIC NOT NULL, generation INTEGER NOT NULL, device_identifier TEXT NOT NULL, parent INTEGER, sync_data BLOB, modified INTEGER NOT NULL, deleted INTEGER NOT NULL, server_id TEXT, FOREIGN KEY (parent) REFERENCES bookmarks (id) ON UPDATE CASCADE ON DELETE SET NULL, UNIQUE (key, parent))"];

  [(WebBookmarkCollection *)self _executeSQL:@"CREATE TRIGGER delete_settings AFTER UPDATE OF parent ON settings BEGIN UPDATE settings SET deleted = 1 WHERE parent IS NULL; END"];
}

- (BOOL)_restoreMissingSpecialBookmarksWithChangeNotification:(BOOL)notification
{
  v6.receiver = self;
  v6.super_class = WebBookmarkTabCollection;
  v4 = [(WebBookmarkCollection *)&v6 _restoreMissingSpecialBookmarksWithChangeNotification:notification];
  if (v4)
  {
    [(WebBookmarkTabCollection *)self _createSpecialTabsFolderWithUUIDIfNeeded:@"pinned"];
    [(WebBookmarkTabCollection *)self _createSpecialTabsFolderWithUUIDIfNeeded:@"privatePinned"];
    [(WebBookmarkTabCollection *)self _createSpecialTabsFolderWithUUIDIfNeeded:@"recentlyClosed"];
  }

  return v4;
}

- (void)performMaintenance
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__WebBookmarkTabCollection_performMaintenance__block_invoke;
  v3[3] = &unk_279E757F0;
  v3[4] = self;
  [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:v3 secureDelete:0];
  [(WebBookmarkCollection *)self incrementalVacuumIfNeeded];
  [(WebBookmarkCollection *)self truncateWAL];
}

uint64_t __46__WebBookmarkTabCollection_performMaintenance__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _deleteMatchingWindows:@"WHERE local_tab_group_id = 0 OR local_tab_group_id IS NULL OR private_tab_group_id = 0 OR private_tab_group_id IS NULL" logAsError:1];
  [*(a1 + 32) _deleteMatchingWindows:@"WHERE local_tab_group_id IN (SELECT windows.local_tab_group_id FROM windows LEFT JOIN bookmarks ON windows.local_tab_group_id = bookmarks.id WHERE bookmarks.id IS NULL)" logAsError:1];
  [*(a1 + 32) _deleteMatchingWindows:@"WHERE private_tab_group_id IN (SELECT windows.private_tab_group_id FROM windows LEFT JOIN bookmarks ON windows.private_tab_group_id = bookmarks.id WHERE bookmarks.id IS NULL)" logAsError:1];
  v2 = [*(a1 + 32) _fastFetchBookmarksInBookmarkFolder:0 options:2 offset:0 limit:0];
  [*(a1 + 32) _deleteBookmarks:v2 leaveTombstone:1];
  v3 = [*(a1 + 32) _fastFetchBookmarksInBookmarkFolder:0 options:4 offset:0 limit:0];
  v4 = [v3 safari_filterObjectsUsingBlock:&__block_literal_global_7];

  [*(a1 + 32) _deleteBookmarks:v4 leaveTombstone:0];
  return 1;
}

- (void)_migrateWindowBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  uUID = [bookmarkCopy UUID];
  v5 = [(WebBookmarkTabCollection *)self windowStateWithUUID:uUID];

  if (!v5)
  {
    v6 = -[WebBookmarkCollection listWithID:skipOffset:includeHidden:](self, "listWithID:skipOffset:includeHidden:", [bookmarkCopy identifier], 0, 1);
    bookmarkArray = [v6 bookmarkArray];

    if ([bookmarkArray count] < 2)
    {
LABEL_9:

      goto LABEL_10;
    }

    v8 = [bookmarkArray objectAtIndexedSubscript:0];
    v9 = [(WebBookmarkTabCollection *)self tabGroupForBookmark:v8];

    [v9 setKind:0];
    v10 = [bookmarkArray objectAtIndexedSubscript:1];
    v11 = [(WebBookmarkTabCollection *)self tabGroupForBookmark:v10];

    [v11 setKind:1];
    lastSelectedChildID = [bookmarkCopy lastSelectedChildID];
    if (lastSelectedChildID == [v9 identifier])
    {
      v13 = v9;
    }

    else
    {
      if (lastSelectedChildID != [v11 identifier])
      {
        if (lastSelectedChildID == 0x7FFFFFFF)
        {
          v14 = 0;
        }

        else
        {
          v26 = -[WebBookmarkCollection bookmarkWithID:includingInMemoryChanges:](self, "bookmarkWithID:includingInMemoryChanges:", [bookmarkCopy lastSelectedChildID], 1);
          if (v26)
          {
            v14 = [(WebBookmarkTabCollection *)self tabGroupForBookmark:v26];
          }

          else
          {
            v14 = 0;
          }
        }

        goto LABEL_8;
      }

      v13 = v11;
    }

    v14 = v13;
LABEL_8:
    v15 = [WBWindowState alloc];
    uUID2 = [bookmarkCopy UUID];
    uuid = [v14 uuid];
    extraAttributes = [bookmarkCopy extraAttributes];
    v19 = [extraAttributes objectForKeyedSubscript:@"sceneID"];
    v20 = [(WBWindowState *)v15 initWithUUID:uUID2 activeTabGroupUUID:uuid localTabGroup:v9 privateTabGroup:v11 sceneID:v19 windowID:0x7FFFFFFFLL];

    extraAttributes2 = [bookmarkCopy extraAttributes];
    [(WBWindowState *)v20 setExtraAttributes:extraAttributes2];

    [(WebBookmarkTabCollection *)self saveWindowState:v20];
    v22 = MEMORY[0x277CCACA8];
    uuid2 = [(WBWindowState *)v20 uuid];
    v24 = [(WebBookmarkTabCollection *)self _uuidForQueries:uuid2];
    v25 = [v22 stringWithFormat:@"UPDATE windows SET is_last_session = 1 WHERE uuid = %@", v24];

    -[WebBookmarkCollection _executeSQLWithCString:](self, "_executeSQLWithCString:", [v25 UTF8String]);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_migrateSchemaVersion43ToVersion44
{
  [inMemoryTabChangeSet removeAllChanges];
  [(WebBookmarkTabCollection *)self _restoreMissingSpecialBookmarksWithChangeNotification:0];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 44"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion44ToVersion45
{
  v24 = *MEMORY[0x277D85DE8];
  [(WebBookmarkTabCollection *)self createWindowsTable];
  [(WebBookmarkTabCollection *)self createWindowsTabGroupsTable];
  [(WebBookmarkCollection *)self applyInMemoryChangesToDatabase];
  v3 = [(WebBookmarkCollection *)self listWithSpecialID:6];
  if ([v3 bookmarkCount])
  {
    [(WebBookmarkTabCollection *)self _deleteAllWindowStates];
    [(WebBookmarkCollection *)self _fastFetchBookmarksInBookmarkFolder:0 includingHiddenBookmarks:1];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v4 = v19 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v5)
    {
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          if (([v8 isSyncable] & 1) == 0)
          {
            title = [v8 title];
            if (([title isEqualToString:@"Local"] & 1) != 0 || objc_msgSend(title, "isEqualToString:", @"Private"))
            {
              [(WebBookmarkCollection *)self deleteBookmark:v8 leaveTombstone:0];
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  bookmarkArray = [v3 bookmarkArray];
  v11 = [bookmarkArray countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v11)
  {
    v12 = *v15;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(bookmarkArray);
        }

        [(WebBookmarkTabCollection *)self _migrateWindowBookmark:*(*(&v14 + 1) + 8 * j)];
      }

      v11 = [bookmarkArray countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }

  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 45"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion51ToVersion52
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE windows ADD COLUMN active_profile_id INTEGER DEFAULT NULL"];
  [(WebBookmarkTabCollection *)self createWindowsProfilesTable];
  [(WebBookmarkTabCollection *)self createWindowsUnnamedTabGroupsTable];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 52"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion52ToVersion53
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkTabCollection *)self createSettingsTable];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 53"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion53ToVersion54
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE settings ADD COLUMN server_id TEXT"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 54"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion54ToVersion55
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE settings ADD COLUMN server_id TEXT"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 55"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (void)_migrateSchemaVersion55ToVersion56
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"BEGIN"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"ALTER TABLE windows ADD COLUMN restoration_archive BLOB"];
  [(WebBookmarkCollection *)self _executeSQLWithCString:"PRAGMA user_version = 56"];

  [(WebBookmarkCollection *)self _executeSQLWithCString:"END"];
}

- (BOOL)_deleteMatchingWindows:(id)windows logAsError:(BOOL)error
{
  errorCopy = error;
  v39 = *MEMORY[0x277D85DE8];
  windowsCopy = windows;
  v7 = WBS_LOG_CHANNEL_PREFIXTabGroup(windowsCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v36 = windowsCopy;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to delete windows with condition: %@", buf, 0xCu);
  }

  if (windowsCopy)
  {
    v8 = windowsCopy;
  }

  else
  {
    v8 = &stru_288259858;
  }

  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT id, uuid FROM windows %@", v8];
  db = self->super._db;
  v10 = v27;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(buf, db, [v27 UTF8String]);
  if (v37 == 1)
  {
    v11 = 0;
    while (sqlite3_step(*&v36[4]) == 100)
    {
      v12 = *&v36[4];
      v13 = sqlite3_column_int64(*&v36[4], 0);
      v14 = WBUTF8StringFromSQLStatement(v12, 1);
      v16 = v14;
      if (errorCopy)
      {
        v17 = WBS_LOG_CHANNEL_PREFIXTabGroup(v14, v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v33 = 134218242;
          *v34 = v13;
          *&v34[8] = 2112;
          *&v34[10] = v16;
          _os_log_error_impl(&dword_272C20000, v17, OS_LOG_TYPE_ERROR, "Delete invalid window %lli %@", v33, 0x16u);
        }
      }

      else
      {
        v18 = WBS_LOG_CHANNEL_PREFIXTabGroup(v14, v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 134218242;
          *v34 = v13;
          *&v34[8] = 2112;
          *&v34[10] = v16;
          _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_DEFAULT, "Delete window %lli %@", v33, 0x16u);
        }
      }

      ++v11;
    }

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM windows %@", v8];
    v21 = self->super._db;
    v22 = v20;
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v33, v21, [v20 UTF8String]);
    if (v34[12])
    {
      v23 = sqlite3_step(*&v34[4]);
      if (v23 == 101)
      {
        v25 = WBS_LOG_CHANNEL_PREFIXTabGroup(v23, v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v29 = 67109378;
          v30 = v11;
          v31 = 2112;
          v32 = windowsCopy;
          _os_log_impl(&dword_272C20000, v25, OS_LOG_TYPE_DEFAULT, "%i windows deleted using condition: %@", v29, 0x12u);
        }

        v19 = 1;
        goto LABEL_24;
      }

      [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to delete windows" result:v23];
    }

    else
    {
      [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to delete windows" result:*&v34[16]];
    }

    v19 = 0;
LABEL_24:
    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v33);

    goto LABEL_25;
  }

  [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to fetch windows" result:v38];
  v19 = 0;
LABEL_25:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(buf);

  return v19;
}

- (BOOL)_performOSVersionUpgradesFromPreviousVersion:(id)version
{
  versionCopy = version;
  v7.receiver = self;
  v7.super_class = WebBookmarkTabCollection;
  if (-[WebBookmarkCollection _performOSVersionUpgradesFromPreviousVersion:](&v7, sel__performOSVersionUpgradesFromPreviousVersion_, versionCopy) && ([@"16.0" compare:versionCopy options:64] != 1 || -[WebBookmarkTabCollection _removePlaceholderTabGroupRecordsOnUpgrade](self, "_removePlaceholderTabGroupRecordsOnUpgrade")))
  {
    [(WebBookmarkTabCollection *)self _createParticipantPresenceTable];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_createParticipantPresenceTable
{
  [(WebBookmarkCollection *)self _executeSQLWithCString:"DROP TABLE IF EXISTS participant_presence"];

  [(WebBookmarkCollection *)self _executeSQL:@"CREATE TABLE participant_presence (id INTEGER PRIMARY KEY, participant_id TEXT, tab_group_server_id TEXT, tab_server_id TEXT, UNIQUE(participant_id))"];
}

- (BOOL)_performSafariVersionUpgradesFromPreviousVersion:(id)version
{
  versionCopy = version;
  v46.receiver = self;
  v46.super_class = WebBookmarkTabCollection;
  if (![(WebBookmarkCollection *)&v46 _performSafariVersionUpgradesFromPreviousVersion:versionCopy])
  {
    goto LABEL_54;
  }

  if ([@"614.1.25.0.1" compare:versionCopy options:64] == 1)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to fix local bookmarks in syncable folders", v45, 2u);
    }

    if (![(WebBookmarkTabCollection *)self _fixLocalBookmarksInSyncableFolders])
    {
      goto LABEL_54;
    }

    v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to regenerate sync positions", v45, 2u);
    }

    if (![(WebBookmarkTabCollection *)self _regenerateSyncPositionsIfNeeded])
    {
      goto LABEL_54;
    }
  }

  v7 = [@"614.1.25.0.9" safari_isVersionStringGreaterThanVersionString:versionCopy];
  if (v7)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXTabGroup(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_DEFAULT, "Retrieving shared tab groups with missing CKShare records", v45, 2u);
    }

    _saveTabGroupRecordsWithMissingCKShareRecord = [(WebBookmarkTabCollection *)self _saveTabGroupRecordsWithMissingCKShareRecord];
    if ((_saveTabGroupRecordsWithMissingCKShareRecord & 1) == 0)
    {
      v38 = WBS_LOG_CHANNEL_PREFIXTabGroup(_saveTabGroupRecordsWithMissingCKShareRecord, v11);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkTabCollection _performSafariVersionUpgradesFromPreviousVersion:];
      }

      goto LABEL_54;
    }

    v12 = WBS_LOG_CHANNEL_PREFIXTabGroup(_saveTabGroupRecordsWithMissingCKShareRecord, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_DEFAULT, "Did finish retrieving shared tab groups with missing CKShare records", v45, 2u);
    }
  }

  v13 = [@"616.1.21" safari_isVersionStringGreaterThanVersionString:versionCopy];
  if (v13)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXTabGroup(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&dword_272C20000, v15, OS_LOG_TYPE_DEFAULT, "Resetting all current user-owned shared Tab Group zone server change tokens", v45, 2u);
    }

    _resetCurrentUserOwnedSharedTabGroupZoneServerChangeTokens = [(WebBookmarkTabCollection *)self _resetCurrentUserOwnedSharedTabGroupZoneServerChangeTokens];
    if ((_resetCurrentUserOwnedSharedTabGroupZoneServerChangeTokens & 1) == 0)
    {
      v39 = WBS_LOG_CHANNEL_PREFIXTabGroup(_resetCurrentUserOwnedSharedTabGroupZoneServerChangeTokens, v17);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkTabCollection _performSafariVersionUpgradesFromPreviousVersion:];
      }

      goto LABEL_54;
    }

    v18 = WBS_LOG_CHANNEL_PREFIXTabGroup(_resetCurrentUserOwnedSharedTabGroupZoneServerChangeTokens, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_DEFAULT, "Did reset all current user-owned shared Tab Group zone server change tokens", v45, 2u);
    }
  }

  v19 = [@"614.2" safari_isVersionStringGreaterThanVersionString:versionCopy];
  if (v19)
  {
    v21 = WBS_LOG_CHANNEL_PREFIXTabGroup(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&dword_272C20000, v21, OS_LOG_TYPE_DEFAULT, "Finding any locally saved CKShare to enable presence", v45, 2u);
    }

    updateContainsCKShareRecord = [(WebBookmarkTabCollection *)self updateContainsCKShareRecord];
    if ((updateContainsCKShareRecord & 1) == 0)
    {
      v40 = WBS_LOG_CHANNEL_PREFIXTabGroup(updateContainsCKShareRecord, v23);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkTabCollection _performSafariVersionUpgradesFromPreviousVersion:];
      }

      goto LABEL_54;
    }

    v24 = WBS_LOG_CHANNEL_PREFIXTabGroup(updateContainsCKShareRecord, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&dword_272C20000, v24, OS_LOG_TYPE_DEFAULT, "Did finish looking for locally saved CKShare to enable presence", v45, 2u);
    }
  }

  v25 = [@"616.1.17.10.3" safari_isVersionStringGreaterThanVersionString:versionCopy];
  if (v25)
  {
    v27 = WBS_LOG_CHANNEL_PREFIXTabGroup(v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&dword_272C20000, v27, OS_LOG_TYPE_DEFAULT, "Deleting extra personal profiles", v45, 2u);
    }

    _deleteDuplicatePersonalProfilesWithInvalidUUID = [(WebBookmarkTabCollection *)self _deleteDuplicatePersonalProfilesWithInvalidUUID];
    if ((_deleteDuplicatePersonalProfilesWithInvalidUUID & 1) == 0)
    {
      v41 = WBS_LOG_CHANNEL_PREFIXTabGroup(_deleteDuplicatePersonalProfilesWithInvalidUUID, v29);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkTabCollection _performSafariVersionUpgradesFromPreviousVersion:];
      }

      goto LABEL_54;
    }

    v30 = WBS_LOG_CHANNEL_PREFIXTabGroup(_deleteDuplicatePersonalProfilesWithInvalidUUID, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&dword_272C20000, v30, OS_LOG_TYPE_DEFAULT, "Finished cleaning up personal profiles", v45, 2u);
    }
  }

  if ([@"618.1.13" safari_isVersionStringGreaterThanVersionString:versionCopy])
  {
    _deleteDefaultProfileIfSavedAsTabGroup = [(WebBookmarkTabCollection *)self _deleteDefaultProfileIfSavedAsTabGroup];
    if ((_deleteDefaultProfileIfSavedAsTabGroup & 1) == 0)
    {
      v42 = WBS_LOG_CHANNEL_PREFIXTabGroup(_deleteDefaultProfileIfSavedAsTabGroup, v32);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkTabCollection _performSafariVersionUpgradesFromPreviousVersion:];
      }

      goto LABEL_54;
    }

    v33 = WBS_LOG_CHANNEL_PREFIXTabGroup(_deleteDefaultProfileIfSavedAsTabGroup, v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&dword_272C20000, v33, OS_LOG_TYPE_DEFAULT, "Deleted personal profile which was mistakenly saved as a Tab Group.", v45, 2u);
    }
  }

  if ([@"618.2.3" safari_isVersionStringGreaterThanVersionString:versionCopy])
  {
    _removeClosedLocallyCreatedUnnamedTabGroups = [(WebBookmarkTabCollection *)self _removeClosedLocallyCreatedUnnamedTabGroups];
    if (_removeClosedLocallyCreatedUnnamedTabGroups)
    {
      v36 = WBS_LOG_CHANNEL_PREFIXTabGroup(_removeClosedLocallyCreatedUnnamedTabGroups, v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 0;
        _os_log_impl(&dword_272C20000, v36, OS_LOG_TYPE_DEFAULT, "Removed unnamed tab groups from windows that were already closed", v45, 2u);
      }

      goto LABEL_41;
    }

    v43 = WBS_LOG_CHANNEL_PREFIXTabGroup(_removeClosedLocallyCreatedUnnamedTabGroups, v35);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkTabCollection _performSafariVersionUpgradesFromPreviousVersion:];
    }

LABEL_54:
    v37 = 0;
    goto LABEL_55;
  }

LABEL_41:
  v37 = 1;
LABEL_55:

  return v37;
}

- (BOOL)_performSafariVersionUpgradesOutsideSafariProcessFromPreviousVersion:(id)version
{
  versionCopy = version;
  v12.receiver = self;
  v12.super_class = WebBookmarkTabCollection;
  if (![(WebBookmarkCollection *)&v12 _performSafariVersionUpgradesOutsideSafariProcessFromPreviousVersion:versionCopy])
  {
    goto LABEL_9;
  }

  if ([@"618.1.16" safari_isVersionStringGreaterThanVersionString:versionCopy])
  {
    _reEncodeSessionStateDataIfNeeded = [(WebBookmarkTabCollection *)self _reEncodeSessionStateDataIfNeeded];
    if (_reEncodeSessionStateDataIfNeeded)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXTabGroup(_reEncodeSessionStateDataIfNeeded, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_DEFAULT, "Re-encoded session state data to truncate large HTTP bodies.", v11, 2u);
      }

      goto LABEL_6;
    }

    v9 = WBS_LOG_CHANNEL_PREFIXTabGroup(_reEncodeSessionStateDataIfNeeded, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkTabCollection _performSafariVersionUpgradesOutsideSafariProcessFromPreviousVersion:];
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

LABEL_6:
  v8 = 1;
LABEL_10:

  return v8;
}

- (BOOL)_deleteDuplicatePersonalProfilesWithInvalidUUID
{
  v16 = *MEMORY[0x277D85DE8];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v14, [(WebBookmarkCollection *)self _selectBookmarksWhere:@"server_id = 'DefaultProfile'"]);
  v3 = *MEMORY[0x277D49BD8];
  while (1)
  {
    v4 = sqlite3_step(v15);
    if (v4 != 100)
    {
      break;
    }

    v5 = [WebBookmark alloc];
    v6 = v15;
    currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v8 = [(WebBookmark *)v5 initWithSQLiteStatement:v6 deviceIdentifier:currentDeviceIdentifier collectionType:1];

    uUID = [(WebBookmark *)v8 UUID];
    LOBYTE(v6) = [uUID isEqualToString:v3];

    if ((v6 & 1) == 0)
    {
      v10 = [(WebBookmarkCollection *)self deleteBookmark:v8 leaveTombstone:0];
      if ((v10 & 1) == 0)
      {
        v12 = WBS_LOG_CHANNEL_PREFIXTabGroup(v10, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(WebBookmark *)v8 UUID];
          objc_claimAutoreleasedReturnValue();
          [WebBookmarkTabCollection _deleteDuplicatePersonalProfilesWithInvalidUUID];
        }

        break;
      }
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v14);
  return v4 != 100;
}

- (BOOL)_deleteDefaultProfileIfSavedAsTabGroup
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v12, [(WebBookmarkCollection *)self _selectBookmarksWhere:@"server_id = 'DefaultProfile' AND parent = 0 AND syncable = 1 AND type = 1 AND subtype = 0"]);
  while (1)
  {
    v3 = sqlite3_step(v13);
    if (v3 != 100)
    {
      break;
    }

    v4 = [WebBookmark alloc];
    v5 = v13;
    currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v7 = [(WebBookmark *)v4 initWithSQLiteStatement:v5 deviceIdentifier:currentDeviceIdentifier collectionType:1];

    v8 = [(WebBookmarkCollection *)self deleteBookmark:v7 leaveTombstone:0];
    if ((v8 & 1) == 0)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXTabGroup(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkTabCollection _deleteDefaultProfileIfSavedAsTabGroup];
      }

      break;
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v12);
  return v3 != 100;
}

- (BOOL)_removeClosedLocallyCreatedUnnamedTabGroups
{
  v17 = *MEMORY[0x277D85DE8];
  _allUnnamedTabGroupUUIDsFromCurrentWindowStates = [(WebBookmarkTabCollection *)self _allUnnamedTabGroupUUIDsFromCurrentWindowStates];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v13, [(WebBookmarkCollection *)self _selectBookmarksWhere:@"type = 1 AND subtype = 0 AND parent in (SELECT id FROM bookmarks WHERE type = 1 AND subtype = 3)"]);
  while (1)
  {
    v4 = sqlite3_step(v14);
    if (v4 != 100)
    {
      break;
    }

    v5 = [WebBookmark alloc];
    v6 = v14;
    currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v8 = [(WebBookmark *)v5 initWithSQLiteStatement:v6 deviceIdentifier:currentDeviceIdentifier collectionType:1];

    uUID = [(WebBookmark *)v8 UUID];
    LOBYTE(v6) = [_allUnnamedTabGroupUUIDsFromCurrentWindowStates containsObject:uUID];

    if ((v6 & 1) == 0)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        privacyPreservingDescription = [(WebBookmark *)v8 privacyPreservingDescription];
        *buf = 138543362;
        v16 = privacyPreservingDescription;
        _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_DEFAULT, "Removing unnamed tab group bookmark because it wasn't in the current tab state %{public}@.", buf, 0xCu);
      }

      if ([(WebBookmark *)v8 identifier])
      {
        if (![(WebBookmarkCollection *)self deleteBookmark:v8 leaveTombstone:1])
        {

          break;
        }
      }
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v13);

  return v4 != 100;
}

- (id)_allUnnamedTabGroupUUIDsFromCurrentWindowStates
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB98] set];
  [(WebBookmarkTabCollection *)self windowStates];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v4 = v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      v8 = v3;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        unnamedTabGroupUUIDs = [*(*(&v11 + 1) + 8 * v7) unnamedTabGroupUUIDs];
        v3 = [v8 setByAddingObjectsFromSet:unnamedTabGroupUUIDs];

        ++v7;
        v8 = v3;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v3;
}

- (BOOL)_reEncodeSessionStateDataIfNeeded
{
  3145728 = [MEMORY[0x277CCACA8] stringWithFormat:@"type = 0 AND subtype = 0 AND LENGTH(local_attributes) > %d", 3145728];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v13, [(WebBookmarkCollection *)self _selectBookmarksWhere:3145728]);

  while (sqlite3_step(v14) == 100)
  {
    v4 = [WebBookmark alloc];
    v5 = v14;
    currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v7 = [(WebBookmark *)v4 initWithSQLiteStatement:v5 deviceIdentifier:currentDeviceIdentifier collectionType:1];

    v8 = [(WBTab *)[WBMutableTab alloc] initWithBookmark:v7];
    v9 = v8;
    if (v8)
    {
      localAttributes = [(WBTab *)v8 localAttributes];
      [localAttributes setSessionStateData:0];
      [(WBMutableTab *)v9 setLocalAttributes:localAttributes];
      bookmark = [(WBTab *)v9 bookmark];
      [(WebBookmarkCollection *)self _saveBookmark:bookmark withSpecialID:0 updateGenerationIfNeeded:1];
    }
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v13);
  return 1;
}

- (BOOL)_fixLocalBookmarksInSyncableFolders
{
  maintainsSyncMetadata = [(WebBookmarkTabCollection *)self maintainsSyncMetadata];
  if (!maintainsSyncMetadata)
  {
    return 1;
  }

  v5 = WBS_LOG_CHANNEL_PREFIXTabGroup(maintainsSyncMetadata, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_DEFAULT, "Fixing local bookmarks in syncable folders.", buf, 2u);
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(buf, [(WebBookmarkCollection *)self _selectBookmarksWhere:@"syncable = 0 AND parent IN (SELECT id FROM bookmarks WHERE parent = 0 AND syncable = 1 AND type = 1 AND subtype = 0 AND hidden = 0 AND special_id = 0)"]);
  while (1)
  {
    v6 = sqlite3_step(v33);
    v8 = v6 != 100;
    if (v6 != 100)
    {
      break;
    }

    v9 = [WebBookmark alloc];
    v10 = v33;
    currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v12 = [(WebBookmark *)v9 initWithSQLiteStatement:v10 deviceIdentifier:currentDeviceIdentifier collectionType:1];

    v13 = [WebBookmark alloc];
    title = [(WebBookmark *)v12 title];
    address = [(WebBookmark *)v12 address];
    parentID = [(WebBookmark *)v12 parentID];
    subtype = [(WebBookmark *)v12 subtype];
    deviceIdentifier = [(WebBookmark *)v12 deviceIdentifier];
    v19 = [(WebBookmark *)v13 initWithTitle:title address:address parentID:parentID subtype:subtype deviceIdentifier:deviceIdentifier collectionType:1];

    localAttributes = [(WebBookmark *)v12 localAttributes];
    [(WebBookmark *)v19 setLocalAttributes:localAttributes];

    extraAttributes = [(WebBookmark *)v12 extraAttributes];
    [(WebBookmark *)v19 setExtraAttributes:extraAttributes];

    v22 = [(WebBookmarkCollection *)self _saveAndMoveBookmark:v19 toFolderID:[(WebBookmark *)v12 parentID] orderIndex:[(WebBookmark *)v12 orderIndex]];
    if ((v22 & 1) == 0)
    {
      v28 = WBS_LOG_CHANNEL_PREFIXTabGroup(v22, v23);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkTabCollection _fixLocalBookmarksInSyncableFolders];
      }

      goto LABEL_17;
    }

    v24 = [(WebBookmarkCollection *)self deleteBookmark:v12 leaveTombstone:0];
    if ((v24 & 1) == 0)
    {
      v29 = WBS_LOG_CHANNEL_PREFIXTabGroup(v24, v25);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkTabCollection _fixLocalBookmarksInSyncableFolders];
      }

LABEL_17:

      goto LABEL_18;
    }
  }

  v26 = WBS_LOG_CHANNEL_PREFIXTabGroup(v6, v7);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 0;
    _os_log_impl(&dword_272C20000, v26, OS_LOG_TYPE_DEFAULT, "Successfully fixed local bookmarks in syncable folders.", v31, 2u);
  }

LABEL_18:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(buf);
  return v8;
}

- (BOOL)_regenerateSyncPositionsIfNeeded
{
  v66 = *MEMORY[0x277D85DE8];
  maintainsSyncMetadata = [(WebBookmarkTabCollection *)self maintainsSyncMetadata];
  if (maintainsSyncMetadata)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXTabGroup(maintainsSyncMetadata, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_DEFAULT, "Will begin regenerating sync positions", buf, 2u);
    }

    v47 = [WebBookmarkListQuery initWithBookmarksWhere:"initWithBookmarksWhere:folderID:orderBy:usingFilter:" folderID:@"parent = 0 AND syncable = 1 AND type = 1 AND subtype = 0 AND hidden = 0 AND special_id = 0" orderBy:? usingFilter:?];
    v46 = [[WebBookmarkList alloc] initWithQuery:v47 skipOffset:0 collection:self];
    bookmarkArray = [(WebBookmarkList *)v46 bookmarkArray];
    v49 = [bookmarkArray safari_splitArrayUsingCondition:&__block_literal_global_169];

    first = [v49 first];
    v48 = [first sortedArrayUsingComparator:&__block_literal_global_172];

    lastObject = [v48 lastObject];
    syncPosition = [lastObject syncPosition];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    second = [v49 second];
    v11 = [second countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v11)
    {
      v50 = *v57;
      while (2)
      {
        v12 = 0;
        v13 = syncPosition;
        do
        {
          if (*v57 != v50)
          {
            objc_enumerationMutation(second);
          }

          v14 = *(*(&v56 + 1) + 8 * v12);
          v15 = [objc_opt_class() deviceIdentifierForCloudKitWithCollectionType:-[WBCollectionConfiguration collectionType](self->super._configuration generateIfNeeded:{"collectionType"), 1}];
          uUID = [v15 UUID];
          uUIDString = [uUID UUIDString];

          v18 = [MEMORY[0x277D49E80] positionBetweenPosition:v13 andPosition:0 withDeviceIdentifier:uUIDString changeID:{-[WebBookmarkCollection nextDatabaseSyncChangeID](self, "nextDatabaseSyncChangeID")}];
          [v14 setSyncPosition:v18];

          syncPosition = [v14 syncPosition];

          v21 = WBS_LOG_CHANNEL_PREFIXTabGroup(v19, v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            privacyPreservingDescription = [v14 privacyPreservingDescription];
            syncPosition2 = [v14 syncPosition];
            *buf = 138543618;
            *&buf[4] = privacyPreservingDescription;
            *&buf[12] = 2114;
            *&buf[14] = syncPosition2;
            _os_log_impl(&dword_272C20000, v21, OS_LOG_TYPE_INFO, "Setting position of tab group %{public}@ to position: %{public}@", buf, 0x16u);
          }

          v24 = [(WebBookmarkCollection *)self updateBookmarkSyncPositionIfNeeded:v14];
          if (!v24 || (v24 = [(WebBookmarkCollection *)self _incrementGeneration], (v24 & 1) == 0))
          {
            v43 = WBS_LOG_CHANNEL_PREFIXTabGroup(v24, v25);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              [v14 privacyPreservingDescription];
              objc_claimAutoreleasedReturnValue();
              [WebBookmarkTabCollection _regenerateSyncPositionsIfNeeded];
            }

            goto LABEL_32;
          }

          ++v12;
          v13 = syncPosition;
        }

        while (v11 != v12);
        v11 = [second countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    second2 = [v49 second];
    v27 = [v48 arrayByAddingObjectsFromArray:second2];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    second = v27;
    v28 = [second countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v28)
    {
      v29 = *v53;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v53 != v29)
          {
            objc_enumerationMutation(second);
          }

          v31 = *(*(&v52 + 1) + 8 * i);
          serverID = [v31 serverID];
          v33 = serverID == 0;

          if (v33)
          {
            [(WebBookmarkTabCollection *)self _generateServerIdIfNeededForTabGroupBookmark:v31];
          }
        }

        v28 = [second countByEnumeratingWithState:&v52 objects:v64 count:16];
      }

      while (v28);
    }

    v34 = [second valueForKey:@"serverID"];
    v35 = [(WebBookmarkCollection *)self _orderChildrenWithServerIDs:v34 inFolderWithServerID:0 excludeDeletedBookmarks:1];

    if (v35)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v63 = 1;
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __60__WebBookmarkTabCollection__regenerateSyncPositionsIfNeeded__block_invoke_177;
      v51[3] = &unk_279E75838;
      v51[4] = self;
      v51[5] = buf;
      v38 = [(WebBookmarkCollection *)self enumerateDescendantsOfBookmarkID:0 usingBlock:v51];
      v40 = WBS_LOG_CHANNEL_PREFIXTabGroup(v38, v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(*&buf[8] + 24);
        *v60 = 67109120;
        v61 = v41;
        _os_log_impl(&dword_272C20000, v40, OS_LOG_TYPE_DEFAULT, "Did finish regenerating sync positions, success: %d", v60, 8u);
      }

      v42 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v45 = WBS_LOG_CHANNEL_PREFIXTabGroup(v36, v37);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkTabCollection _regenerateSyncPositionsIfNeeded];
      }

LABEL_32:
      v42 = 0;
    }
  }

  else
  {
    v42 = 1;
  }

  return v42 & 1;
}

BOOL __60__WebBookmarkTabCollection__regenerateSyncPositionsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 syncPosition];
  v3 = v2 != 0;

  return v3;
}

uint64_t __60__WebBookmarkTabCollection__regenerateSyncPositionsIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 syncPosition];
  v6 = [v4 syncPosition];
  v7 = [v5 compare:v6];

  return v7;
}

void __60__WebBookmarkTabCollection__regenerateSyncPositionsIfNeeded__block_invoke_177(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 isSyncable])
  {
    v6 = [v5 syncPosition];

    if (!v6)
    {
      v7 = [*(a1 + 32) generateSyncPositionForBookmark:v5];
      [v5 setSyncPosition:v7];

      v10 = WBS_LOG_CHANNEL_PREFIXTabGroup(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v5 privacyPreservingDescription];
        v12 = [v5 syncPosition];
        v16 = 138543618;
        v17 = v11;
        v18 = 2114;
        v19 = v12;
        _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "Setting position of record %{public}@ to position: %{public}@", &v16, 0x16u);
      }

      v13 = [*(a1 + 32) updateBookmarkSyncPositionIfNeeded:v5];
      if (!v13 || (v13 = [*(a1 + 32) _incrementGeneration], (v13 & 1) == 0))
      {
        v15 = WBS_LOG_CHANNEL_PREFIXTabGroup(v13, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [v5 privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          __60__WebBookmarkTabCollection__regenerateSyncPositionsIfNeeded__block_invoke_177_cold_1();
        }

        *a3 = 1;
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }
  }
}

- (BOOL)_saveTabGroupRecordsWithMissingCKShareRecord
{
  v3 = WBS_LOG_CHANNEL_PREFIXTabGroup(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_DEFAULT, "Collecting tab groups that might be shared and missing a CKShare", buf, 2u);
  }

  v4 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:@"parent = 0 AND syncable = 1 AND type = 1 AND subtype = 0 AND hidden = 0 AND special_id = 0" folderID:0 orderBy:@"order_index ASC" usingFilter:0];
  v5 = [[WebBookmarkList alloc] initWithQuery:v4 skipOffset:0 collection:self];
  bookmarkArray = [(WebBookmarkList *)v5 bookmarkArray];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__WebBookmarkTabCollection__saveTabGroupRecordsWithMissingCKShareRecord__block_invoke;
  v12[3] = &unk_279E75860;
  v12[4] = self;
  v7 = [bookmarkArray safari_mapAndFilterObjectsUsingBlock:v12];

  if ([v7 count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__WebBookmarkTabCollection__saveTabGroupRecordsWithMissingCKShareRecord__block_invoke_181;
    v10[3] = &unk_279E75888;
    v11 = v7;
    v8 = [(WebBookmarkCollection *)self updateDatabaseSyncDataUsingBlock:v10];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

id __72__WebBookmarkTabCollection__saveTabGroupRecordsWithMissingCKShareRecord__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) syncDataForBookmark:v3];
  v5 = [v4 record];
  v6 = [v5 recordID];

  v7 = [v6 zoneID];
  if (!v6)
  {
    goto LABEL_5;
  }

  v8 = [*(a1 + 32) _primaryRecordZoneID];
  if ([v7 isEqual:v8])
  {

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v9 = [v4 shareRecord];

  if (v9)
  {
    goto LABEL_5;
  }

  v14 = WBS_LOG_CHANNEL_PREFIXTabGroup(v10, v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v6 ckShortDescription];
    v17 = 138543362;
    v18 = v15;
    _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_DEFAULT, "TabGroup with recordID %{public}@ is potentially missing its CKShare record", &v17, 0xCu);
  }

  v16 = objc_alloc(MEMORY[0x277CBC5D0]);
  v12 = [v16 initWithRecordName:*MEMORY[0x277CBC020] zoneID:v7];
LABEL_6:

  return v12;
}

id __72__WebBookmarkTabCollection__saveTabGroupRecordsWithMissingCKShareRecord__block_invoke_181(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordIDsToRefresh];
  v5 = [v4 mutableCopy];

  [v5 addObjectsFromArray:*(a1 + 32)];
  [v3 setRecordIDsToRefresh:v5];

  return v3;
}

id __86__WebBookmarkTabCollection__resetCurrentUserOwnedSharedTabGroupZoneServerChangeTokens__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [v2 recordZoneIDsToLastServerChangeTokens];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v6 = 0;
    v7 = *v18;
    *&v5 = 138543362;
    v16 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([v9 safari_isInPrivateDatabase])
        {
          v10 = [v9 safari_isTabGroupSecondaryRecordZoneID];
          if (v10)
          {
            v12 = WBS_LOG_CHANNEL_PREFIXTabGroup(v10, v11);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [v9 ckShortDescription];
              *buf = v16;
              v22 = v13;
              _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_DEFAULT, "Resetting last server change token for zone %{public}@", buf, 0xCu);
            }

            [v2 setLastServerChangeToken:0 forRecordZoneID:v9];
            v6 = 1;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v4);

    if (v6)
    {
      [v2 setLastPrivateDatabaseServerChangeToken:0];
      v14 = 0;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v14 = v2;
  v2 = 0;
LABEL_17:

  return v2;
}

- (BOOL)containsCKShareRecord
{
  v2 = [(WebBookmarkCollection *)self syncStringForKey:@"DatabaseContainsShareRecord"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setContainsCKShareRecord:(BOOL)record
{
  if (record)
  {
    v3 = @"1";
  }

  else
  {
    v3 = @"0";
  }

  [(WebBookmarkCollection *)self syncSetString:v3 forKey:@"DatabaseContainsShareRecord"];
}

- (BOOL)updateContainsCKShareRecord
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__WebBookmarkTabCollection_updateContainsCKShareRecord__block_invoke;
  v3[3] = &unk_279E757F0;
  v3[4] = self;
  return [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:v3 secureDelete:0];
}

uint64_t __55__WebBookmarkTabCollection_updateContainsCKShareRecord__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:@"parent = 0 AND syncable = 1 AND type = 1 AND subtype = 0 AND hidden = 0 AND special_id = 0" folderID:0 orderBy:@"order_index ASC" usingFilter:0];
  v3 = [[WebBookmarkList alloc] initWithQuery:v2 skipOffset:0 collection:*(a1 + 32)];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(WebBookmarkList *)v3 bookmarkArray];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * i) hasShareRecord])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [*(a1 + 32) setContainsCKShareRecord:v5];
  return 1;
}

- (BOOL)_clearAllSyncData
{
  v5.receiver = self;
  v5.super_class = WebBookmarkTabCollection;
  _clearAllSyncData = [(WebBookmarkCollection *)&v5 _clearAllSyncData];
  if (_clearAllSyncData)
  {
    [(WebBookmarkCollection *)self syncSetString:0 forKey:@"DatabaseContainsShareRecord"];
    [(WebBookmarkTabCollection *)self _resetSettingsSyncData];
  }

  return _clearAllSyncData;
}

- (BOOL)bookmarkRequiresParent:(id)parent specialID:(int)d
{
  parentCopy = parent;
  if ([parentCopy isSyncable])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [parentCopy isFolder] ^ 1;
  }

  return v5;
}

- (id)tabsForTabGroupBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v5 = -[WebBookmarkListQuery initWithFolderID:inCollection:usingFilter:options:]([WebBookmarkListQuery alloc], "initWithFolderID:inCollection:usingFilter:options:", [bookmarkCopy identifier], self, 0, 2);
  v6 = [[WebBookmarkList alloc] initWithQuery:v5 skipOffset:0 collection:self];
  bookmarkArray = [(WebBookmarkList *)v6 bookmarkArray];
  v8 = [bookmarkArray count];

  if (!v8)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [bookmarkCopy privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WebBookmarkTabCollection tabsForTabGroupBookmark:];
    }
  }

  bookmarkArray2 = [(WebBookmarkList *)v6 bookmarkArray];
  v11 = [bookmarkArray2 safari_mapObjectsUsingBlock:&__block_literal_global_195];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v14 = v13;

  return v13;
}

WBMutableTab *__52__WebBookmarkTabCollection_tabsForTabGroupBookmark___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(WBTab *)[WBMutableTab alloc] initWithBookmark:v2];

  return v3;
}

- (int64_t)tabCountForTabGroupWithUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(WebBookmarkCollection *)self bookmarkWithUUID:dCopy];
    if (v5)
    {
      v6 = -[WebBookmarkListQuery initWithFolderID:inCollection:usingFilter:options:]([WebBookmarkListQuery alloc], "initWithFolderID:inCollection:usingFilter:options:", [v5 identifier], self, 0, 2);
      v7 = [[WebBookmarkList alloc] initWithQuery:v6 skipOffset:0 collection:self];
      bookmarkCount = [(WebBookmarkList *)v7 bookmarkCount];
    }

    else
    {
      bookmarkCount = -1;
    }
  }

  else
  {
    bookmarkCount = -1;
  }

  return bookmarkCount;
}

- (id)tabGroupForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  extraAttributes = [bookmarkCopy extraAttributes];
  v6 = [extraAttributes objectForKeyedSubscript:@"IsUnnamed"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v9 = [(WebBookmarkTabCollection *)self _tabGroupForBookmark:bookmarkCopy kind:v8];

  return v9;
}

- (id)_tabGroupForBookmark:(id)bookmark kind:(int64_t)kind
{
  bookmarkCopy = bookmark;
  if (bookmarkCopy)
  {
    v7 = [(WebBookmarkTabCollection *)self tabsForTabGroupBookmark:bookmarkCopy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__WebBookmarkTabCollection__tabGroupForBookmark_kind___block_invoke;
    v14[3] = &unk_279E758F0;
    v8 = bookmarkCopy;
    v15 = v8;
    v9 = [v7 safari_firstObjectPassingTest:v14];
    v10 = [WBMutableTabGroup alloc];
    uuid = [v9 uuid];
    v12 = [(WBMutableTabGroup *)v10 initWithBookmark:v8 tabs:v7 lastSelectedTabUUID:uuid kind:kind];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL __54__WebBookmarkTabCollection__tabGroupForBookmark_kind___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bookmark];
  v4 = [v3 identifier];
  v5 = v4 == [*(a1 + 32) lastSelectedChildID];

  return v5;
}

- (id)_tabGroupWithID:(int)d kind:(int64_t)kind
{
  v6 = [(WebBookmarkCollection *)self bookmarkWithID:*&d];
  if (v6)
  {
    v7 = [(WebBookmarkTabCollection *)self _tabGroupForBookmark:v6 kind:kind];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_uuidForQueries:(id)queries
{
  queries = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", queries];

  return queries;
}

- (void)_logErrorWithMessage:(id)message result:(int)result
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  _errorForMostRecentSQLiteError = [(WebBookmarkCollection *)self _errorForMostRecentSQLiteError];
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    safari_privacyPreservingDescription = [_errorForMostRecentSQLiteError safari_privacyPreservingDescription];
    v10 = 138412802;
    v11 = messageCopy;
    v12 = 1024;
    resultCopy = result;
    v14 = 2114;
    v15 = safari_privacyPreservingDescription;
    _os_log_error_impl(&dword_272C20000, v8, OS_LOG_TYPE_ERROR, "%@ with result: %d error: %{public}@", &v10, 0x1Cu);
  }
}

- (id)profileForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  if (bookmarkCopy)
  {
    [(WebBookmarkTabCollection *)self _slowDownFetchingForTabsCycler];
    v5 = [(WebBookmarkTabCollection *)self tabGroupsChildrenForBookmark:bookmarkCopy];
    v6 = [[WBMutableProfile alloc] initWithBookmark:bookmarkCopy tabGroups:v5];
    if (![(WBProfile *)v6 isDefault])
    {
      v7 = [(WebBookmarkTabCollection *)self devicesForProfile:v6];
      [(WBMutableProfile *)v6 setDevices:v7];
    }

    v8 = -[WebBookmarkTabCollection settingsForBookmarkWithID:](self, "settingsForBookmarkWithID:", [bookmarkCopy identifier]);
    [(WBMutableProfile *)v6 setSettingsDictionary:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tabGroupsChildrenForBookmark:(id)bookmark
{
  v21[8] = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  v5 = [WebBookmarkListQuery alloc];
  uUID = [bookmarkCopy UUID];
  if ([uUID isEqualToString:*MEMORY[0x277D49BD8]])
  {
    identifier = 0;
  }

  else
  {
    identifier = [bookmarkCopy identifier];
  }

  v8 = [(WebBookmarkListQuery *)v5 initWithFolderID:identifier inCollection:self usingFilter:0 options:260];

  v9 = [[WebBookmarkList alloc] initWithQuery:v8 skipOffset:0 collection:self];
  bookmarkArray = [(WebBookmarkList *)v9 bookmarkArray];
  v11 = [bookmarkArray count];

  if (!v11)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXTabGroup(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [bookmarkCopy privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WebBookmarkTabCollection tabGroupsChildrenForBookmark:];
    }
  }

  bookmarkArray2 = [(WebBookmarkList *)v9 bookmarkArray];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __57__WebBookmarkTabCollection_tabGroupsChildrenForBookmark___block_invoke;
  v21[3] = &unk_279E75918;
  v21[4] = self;
  v16 = [bookmarkArray2 safari_mapObjectsUsingBlock:v21];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  v19 = v18;

  return v18;
}

id __57__WebBookmarkTabCollection_tabGroupsChildrenForBookmark___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) tabGroupForBookmark:a2];

  return v2;
}

- (id)devicesForProfile:(id)profile
{
  profileCopy = profile;
  v5 = -[WebBookmarkListQuery initWithFolderID:inCollection:usingFilter:options:]([WebBookmarkListQuery alloc], "initWithFolderID:inCollection:usingFilter:options:", [profileCopy databaseIdentifier], self, 0, 36);
  v6 = [[WebBookmarkList alloc] initWithQuery:v5 skipOffset:0 collection:self];
  bookmarkArray = [(WebBookmarkList *)v6 bookmarkArray];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__WebBookmarkTabCollection_devicesForProfile___block_invoke;
  v14[3] = &unk_279E75940;
  v14[4] = self;
  v8 = profileCopy;
  v15 = v8;
  v9 = [bookmarkArray safari_mapObjectsUsingBlock:v14];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = v11;

  return v11;
}

id __46__WebBookmarkTabCollection_devicesForProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) identifier];
  v6 = [v4 deviceForBookmark:v3 inProfileWithIdentifier:v5];

  return v6;
}

- (id)remoteDevicesForProfileBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v5 = -[WebBookmarkListQuery initWithFolderID:inCollection:usingFilter:options:]([WebBookmarkListQuery alloc], "initWithFolderID:inCollection:usingFilter:options:", [bookmarkCopy identifier], self, 0, 68);
  v6 = [[WebBookmarkList alloc] initWithQuery:v5 skipOffset:0 collection:self];
  bookmarkArray = [(WebBookmarkList *)v6 bookmarkArray];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__WebBookmarkTabCollection_remoteDevicesForProfileBookmark___block_invoke;
  v14[3] = &unk_279E75940;
  v14[4] = self;
  v8 = bookmarkCopy;
  v15 = v8;
  v9 = [bookmarkArray safari_mapObjectsUsingBlock:v14];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = v11;

  return v11;
}

id __60__WebBookmarkTabCollection_remoteDevicesForProfileBookmark___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) UUID];
  v6 = [v4 deviceForBookmark:v3 inProfileWithIdentifier:v5];

  return v6;
}

- (id)deviceForBookmark:(id)bookmark inProfileWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  identifierCopy = identifier;
  if (bookmarkCopy)
  {
    [(WebBookmarkTabCollection *)self tabGroupsChildrenForBookmark:bookmarkCopy];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v8 = v17 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          [v12 setKind:{3, v16}];
          uUID = [bookmarkCopy UUID];
          [v12 setDeviceUUIDString:uUID];
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v14 = [[WBDevice alloc] initWithBookmark:bookmarkCopy unnamedTabGroups:v8 profileIdentifier:identifierCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)settingsForBookmarkWithID:(int)d
{
  v3 = *&d;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT key, value, generation, device_identifier FROM settings WHERE parent = %d", *&d];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v19, self->super._db, [v5 UTF8String]);
  if (v21)
  {
    v18 = v5;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    while (sqlite3_step(v20) == 100)
    {
      v7 = v20;
      v8 = WBUTF8StringFromSQLStatement(v20, 0);
      v9 = WBObjectFromColumn(v7, 1);
      v10 = sqlite3_column_int64(v7, 2);
      v11 = WBUTF8StringFromSQLStatement(v7, 3);
      v12 = [objc_alloc(MEMORY[0x277D49E78]) initWithDeviceIdentifier:v11 generation:v10];
      v13 = objc_alloc(MEMORY[0x277D49E70]);
      currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
      v15 = [v13 initWithValue:v9 generation:v12 deviceIdentifier:currentDeviceIdentifier];

      [dictionary setObject:v15 forKeyedSubscript:v8];
    }

    v5 = v18;
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to fetch profile settings for profile %d", v3];
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:v16 result:v22];

    dictionary = MEMORY[0x277CBEC10];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v19);

  return dictionary;
}

- (id)settingChangeWithName:(id)name parentID:(int)d
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"settings.key = '%@' AND settings.parent = %d", name, *&d];
  v6 = [(WebBookmarkTabCollection *)self allSettingsChangesWithWhereClause:v5];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (id)allSettingsChangesForParentWithID:(int)d
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(settings.modified = 1 OR settings.deleted = 1) AND settings.parent = %d", *&d];
  v5 = [(WebBookmarkTabCollection *)self allSettingsChangesWithWhereClause:v4];

  return v5;
}

- (id)settingsChangesForAllDeletedSettings
{
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v25, self->super._db, [@""SELECT settings.id settings.key];
  while (sqlite3_step(v26) == 100)
  {
    v3 = v26;
    v4 = sqlite3_column_int64(v26, 0);
    v23 = WBUTF8StringFromSQLStatement(v3, 1);
    v5 = WBObjectFromColumn(v3, 2);
    v6 = sqlite3_column_int64(v3, 3);
    v7 = WBUTF8StringFromSQLStatement(v3, 4);
    v8 = WBDataFromNullableColumn(v3, 5);
    v9 = sqlite3_column_int64(v3, 6);
    v10 = WBUTF8StringFromSQLStatement(v3, 7);
    if (!v10)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_DEFAULT, "Retrieving deleted profile setting change with no server ID.", buf, 2u);
      }
    }

    v12 = [objc_alloc(MEMORY[0x277D49E78]) initWithDeviceIdentifier:v7 generation:v6];
    v13 = objc_alloc(MEMORY[0x277D49E70]);
    currentDeviceIdentifier = [(WebBookmarkCollection *)selfCopy currentDeviceIdentifier];
    v15 = [v13 initWithValue:v5 generation:v12 deviceIdentifier:currentDeviceIdentifier];

    if (v9)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v17 = [objc_alloc(MEMORY[0x277CBC5A0]) safari_initWithEncodedRecordData:v8];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:v23 forKeyedSubscript:@"SettingName"];
    [dictionary setObject:v5 forKeyedSubscript:@"Value"];
    [dictionary setObject:v10 forKeyedSubscript:@"SettingServerID"];
    v19 = [[WBFieldChangeRecord alloc] initWithField:v15 changeType:v16 attributes:dictionary record:v17 identifier:v4];
    [array addObject:v19];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v25);

  return array;
}

- (id)allSettingsChangesWithWhereClause:(id)clause
{
  clauseCopy = clause;
  array = [MEMORY[0x277CBEB18] array];
  clauseCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT settings.id, settings.key, settings.value, settings.generation, settings.device_identifier, settings.sync_data, settings.deleted, settings.server_id, bookmarks.server_id FROM settings INNER JOIN bookmarks ON settings.parent = bookmarks.id WHERE %@", clauseCopy];
  db = self->super._db;
  v25 = clauseCopy;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v32, db, [v25 UTF8String]);
  v26 = clauseCopy;
  while (sqlite3_step(v33) == 100)
  {
    v6 = v33;
    v7 = sqlite3_column_int64(v33, 0);
    v29 = WBUTF8StringFromSQLStatement(v6, 1);
    v8 = WBObjectFromColumn(v6, 2);
    v9 = sqlite3_column_int64(v6, 3);
    v30 = WBUTF8StringFromSQLStatement(v6, 4);
    v10 = WBDataFromNullableColumn(v6, 5);
    v11 = sqlite3_column_int64(v6, 6);
    v12 = WBUTF8StringFromSQLStatement(v6, 7);
    if (!v12)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_DEFAULT, "Retrieving profile setting change with no server ID.", buf, 2u);
      }
    }

    v14 = WBUTF8StringFromSQLStatement(v6, 8);
    if (!v14)
    {
      v15 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272C20000, v15, OS_LOG_TYPE_DEFAULT, "Retrieving profile setting change with no parent server ID.", buf, 2u);
      }
    }

    v16 = [objc_alloc(MEMORY[0x277D49E78]) initWithDeviceIdentifier:v30 generation:v9];
    v17 = objc_alloc(MEMORY[0x277D49E70]);
    currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
    v19 = [v17 initWithValue:v8 generation:v16 deviceIdentifier:currentDeviceIdentifier];

    if (v11)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v21 = [objc_alloc(MEMORY[0x277CBC5A0]) safari_initWithEncodedRecordData:v10];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:v29 forKeyedSubscript:@"SettingName"];
    [dictionary setObject:v8 forKeyedSubscript:@"Value"];
    [dictionary setObject:v14 forKeyedSubscript:@"Parent"];
    [dictionary setObject:v12 forKeyedSubscript:@"SettingServerID"];
    v23 = [[WBFieldChangeRecord alloc] initWithField:v19 changeType:v20 attributes:dictionary record:v21 identifier:v7];
    [array addObject:v23];

    clauseCopy = v26;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v32);

  return array;
}

- (BOOL)saveSettings:(id)settings inParentWithID:(int)d parentServerID:(id)iD
{
  v6 = *&d;
  v59 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  iDCopy = iD;
  v49 = settingsCopy;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  allKeys = [settingsCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v9)
  {
    v43 = v6;
    obj = allKeys;
    v45 = v6;
    v46 = *v55;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v55 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v54 + 1) + 8 * i);
        v12 = [v49 objectForKeyedSubscript:v11];
        value = [v12 value];
        generation = [v12 generation];
        v14Generation = [generation generation];

        deviceIdentifier = [v12 deviceIdentifier];
        iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", @"Setting", v11, iDCopy];
        WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v50, self->super._db, [CFSTR(""INSERT INTO settings (key value]);
        if ((v52 & 1) == 0)
        {
          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to save profile settings for profile parent %d", v43];
          [(WebBookmarkTabCollection *)self _logErrorWithMessage:v41 result:v53];

LABEL_20:
          WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v50);

          v40 = 0;
          allKeys = obj;
          goto LABEL_21;
        }

        v18 = v51;
        v19 = sqlite3_bind_parameter_index(v51, "@key");
        v20 = v11;
        sqlite3_bind_text(v18, v19, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v51;
          v22 = sqlite3_bind_parameter_index(v51, "@value");
          sqlite3_bind_int64(v21, v22, [value integerValue]);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v51;
            v24 = sqlite3_bind_parameter_index(v51, "@value");
            v25 = value;
            sqlite3_bind_text(v23, v24, [value UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_20;
            }

            v26 = v51;
            v27 = sqlite3_bind_parameter_index(v51, "@value");
            v28 = value;
            sqlite3_bind_blob(v26, v27, [value bytes], objc_msgSend(value, "length"), 0xFFFFFFFFFFFFFFFFLL);
          }
        }

        v29 = v51;
        v30 = sqlite3_bind_parameter_index(v51, "@generation");
        sqlite3_bind_int64(v29, v30, v14Generation);
        v31 = v51;
        v32 = sqlite3_bind_parameter_index(v51, "@device_identifier");
        v33 = deviceIdentifier;
        sqlite3_bind_text(v31, v32, [deviceIdentifier UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
        v34 = v51;
        v35 = sqlite3_bind_parameter_index(v51, "@parent");
        sqlite3_bind_int64(v34, v35, v45);
        v36 = v51;
        v37 = sqlite3_bind_parameter_index(v51, "@server_id");
        v38 = iDCopy;
        sqlite3_bind_text(v36, v37, [iDCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
        v39 = sqlite3_step(v51);
        if (v39 != 101)
        {
          [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to save settings" result:v39];
          goto LABEL_20;
        }

        WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v50);
      }

      allKeys = obj;
      v9 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
      v40 = 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v40 = 1;
  }

LABEL_21:

  return v40;
}

- (BOOL)resetModifiedStateForSetting:(id)setting withRecord:(id)record value:(id)value forBookmarkWithID:(int)d
{
  v6 = *&d;
  recordCopy = record;
  valueCopy = value;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE settings SET sync_data = ?, modified = (CASE WHEN value = ? THEN 0 ELSE 1 END) WHERE key = '%@' AND parent = %d", setting, v6];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v19, self->super._db, [v12 UTF8String]);
  if ((v21 & 1) == 0)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to update profile settings for profile ID %d", v6];
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:v15 result:v22];

    goto LABEL_12;
  }

  v13 = v20;
  safari_encodedSystemFieldsData = [recordCopy safari_encodedSystemFieldsData];
  bindNullableDataToSQLStatement(v13, 1, safari_encodedSystemFieldsData);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sqlite3_bind_int64(v20, 2, [valueCopy integerValue]);
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sqlite3_bind_text(v20, 2, [valueCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  sqlite3_bind_blob(v20, 2, [valueCopy bytes], objc_msgSend(valueCopy, "length"), 0xFFFFFFFFFFFFFFFFLL);
LABEL_9:
  v16 = sqlite3_step(v20);
  if (v16 != 101)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to update settings" result:v16];
    goto LABEL_12;
  }

  v17 = 1;
LABEL_13:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v19);

  return v17;
}

- (BOOL)deleteSettingsRecordWithServerID:(id)d
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM settings WHERE server_id = '%@'", d];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->super._db, [v4 UTF8String]);
  if ((v11 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to delete profile settings"];
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:v7 result:v12];

LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v5 = sqlite3_step(v10);
  if (v5 != 101)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to delete settings" result:v5];
    goto LABEL_6;
  }

  v6 = 1;
LABEL_7:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v9);

  return v6;
}

- (BOOL)deleteSettingWithIdentifier:(int64_t)identifier
{
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM settings WHERE id = %zu", identifier];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->super._db, [identifier UTF8String]);
  if ((v12 & 1) == 0)
  {
    identifier2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to delete settings for id %zu", identifier];
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:identifier2 result:v13];

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v6 = sqlite3_step(v11);
  if (v6 != 101)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to delete settings" result:v6];
    goto LABEL_6;
  }

  v7 = 1;
LABEL_7:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);

  return v7;
}

- (BOOL)_resetSettingsSyncData
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v6, self->super._db, [@"UPDATE settings SET sync_data = null modified = (CASE WHEN deleted = 1 THEN settings.modified ELSE 1 END)"]);
  if ((v8 & 1) == 0)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to clear sync data" result:v9];
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v3 = sqlite3_step(v7);
  if (v3 != 101)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to update settings sync data and modified values" result:v3];
    goto LABEL_6;
  }

  v4 = 1;
LABEL_7:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v6);
  return v4;
}

- (id)windowStateWithUUID:(id)d
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(WebBookmarkTabCollection *)self _uuidForQueries:d];
  v6 = [v4 stringWithFormat:@"WHERE uuid = %@", v5];

  v7 = [(WebBookmarkTabCollection *)self _windowStatesWithFilter:v6];
  firstObject = [v7 firstObject];

  return firstObject;
}

- (int)_windowIDForUUID:(id)d
{
  dCopy = d;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v7, self->super._db, [@"SELECT windows.id FROM windows WHERE windows.uuid = ?" UTF8String]);
  if ((v9 & 1) == 0)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to fetch window id" result:v10];
    goto LABEL_5;
  }

  sqlite3_bind_text(v8, 1, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v8) != 100)
  {
LABEL_5:
    v5 = -1;
    goto LABEL_6;
  }

  v5 = sqlite3_column_int(v8, 0);
LABEL_6:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v7);

  return v5;
}

- (void)_addActiveTabsToWindowState:(id)state
{
  stateCopy = state;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v13, self->super._db, [@"SELECT tab_bookmarks.external_uuid tab:"UTF8String" group:? bookmarks.external:? uuid FROM bookmarks AS tab:? bookmarks INNER JOIN windows:? tab:? groups ON tab:? bookmarks.id = windows:? tab:? groups.active:? tab:? id INNER JOIN bookmarks AS tab:? group:? bookmarks ON windows:? tab:? groups.tab:? group:? id = tab:? group:? bookmarks.id WHERE windows:? tab:? groups.window:?id = ?"]);
  if (v15)
  {
    uuid = [stateCopy uuid];
    v6 = [(WebBookmarkTabCollection *)self _windowIDForUUID:uuid];

    sqlite3_bind_int(v14, 1, v6);
    v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "Setting active tab on window state", v12, 2u);
    }

    while (sqlite3_step(v14) == 100)
    {
      v8 = v14;
      v9 = WBUTF8StringFromSQLStatement(v14, 0);
      v10 = WBUTF8StringFromSQLStatement(v8, 1);
      [stateCopy setActiveTabUUID:v9 forTabGroupWithUUID:v10];
      v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Active tab set on window state", v12, 2u);
      }
    }
  }

  else
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to fetch active tabs" result:v16];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v13);
}

- (void)_addActiveTabGroupsToWindowState:(id)state
{
  stateCopy = state;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v13, self->super._db, [@"SELECT tab_group_bookmarks.external_uuid profile:"UTF8String" bookmarks.external:? uuid FROM bookmarks AS tab:? group:? bookmarks INNER JOIN windows:? profiles ON tab:? group:? bookmarks.id = windows:? profiles.active:? tab:? group:? id INNER JOIN bookmarks AS profile:? bookmarks ON windows:? profiles.profile:? id = profile:? bookmarks.id WHERE windows:? profiles.window:?id = ?"]);
  if (v15)
  {
    uuid = [stateCopy uuid];
    v6 = [(WebBookmarkTabCollection *)self _windowIDForUUID:uuid];

    sqlite3_bind_int(v14, 1, v6);
    v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "Setting active tab groups on window state", v12, 2u);
    }

    while (sqlite3_step(v14) == 100)
    {
      v8 = v14;
      v9 = WBUTF8StringFromSQLStatement(v14, 0);
      v10 = WBUTF8StringFromSQLStatement(v8, 1);
      [stateCopy setActiveTabGroupUUID:v9 forProfileWithIdentifier:v10];
      v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Active tab group set on window state", v12, 2u);
      }
    }
  }

  else
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to fetch active tab groups" result:v16];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v13);
}

- (void)_addUnnamedTabGroupsToWindowState:(id)state
{
  stateCopy = state;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v11, self->super._db, [@"SELECT external_uuid FROM bookmarks INNER JOIN windows_unnamed_tab_groups ON bookmarks.id = windows_unnamed_tab_groups.tab_group_id WHERE windows_unnamed_tab_groups.window_id = ?" UTF8String]);
  if (v13)
  {
    uuid = [stateCopy uuid];
    v6 = [(WebBookmarkTabCollection *)self _windowIDForUUID:uuid];

    sqlite3_bind_int(v12, 1, v6);
    v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "Setting unnamed tab groups on window state", v10, 2u);
    }

    while (sqlite3_step(v12) == 100)
    {
      v8 = WBUTF8StringFromSQLStatement(v12, 0);
      [stateCopy addUnnamedTabGroupUUID:v8];
      v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Unnamed tab group set on window state", v10, 2u);
      }
    }
  }

  else
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to fetch unnamed tab groups" result:v14];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v11);
}

- (id)_windowStatesWithFilter:(id)filter
{
  v54 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  v5 = &stru_288259858;
  if (filterCopy)
  {
    v5 = filterCopy;
  }

  v39 = filterCopy;
  v6 = [@"SELECT tab_group_bookmarks.external_uuid profile:windows.local_tab_group_id bookmarks.external:{windows.private_tab_group_id, windows.scene_id, windows.uuid, windows.id, windows.extra_attributes, windows.restoration_archive", "stringByAppendingFormat:", @" FROM windows INNER JOIN bookmarks AS tab_group_bookmarks ON windows.active_tab_group_id = tab_group_bookmarks.id LEFT JOIN bookmarks AS profile_bookmarks ON windows.active_profile_id = profile_bookmarks.id %@", v5}uuid];
  selfCopy = self;
  db = self->super._db;
  v40 = v6;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v48, db, [v40 UTF8String]);
  if (v50)
  {
    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = *MEMORY[0x277D49BD8];
    while (1)
    {
      v8 = sqlite3_step(v49);
      if (v8 != 100)
      {
        break;
      }

      v10 = v49;
      v44 = WBUTF8StringFromSQLStatement(v49, 0);
      v11 = WBUTF8StringFromSQLStatement(v10, 1);
      v12 = sqlite3_column_int(v10, 2);
      v13 = sqlite3_column_int(v10, 3);
      v43 = WBUTF8StringFromSQLStatement(v10, 4);
      v14 = WBUTF8StringFromSQLStatement(v10, 5);
      v15 = sqlite3_column_int(v10, 6);
      v16 = WBDataFromNullableColumn(v10, 7);
      if (v16)
      {
        v17 = [MEMORY[0x277CCAC58] propertyListWithData:v16 options:2 format:0 error:0];
      }

      else
      {
        v17 = 0;
      }

      v18 = WBDataFromNullableColumn(v10, 8);
      v19 = [(WebBookmarkTabCollection *)selfCopy _tabGroupWithID:v12 kind:0];
      v21 = WBS_LOG_CHANNEL_PREFIXTabGroup(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        tabs = [v19 tabs];
        v23 = [tabs count];
        *buf = 134217984;
        v53 = v23;
        _os_log_impl(&dword_272C20000, v21, OS_LOG_TYPE_DEFAULT, "Window state local tab group count: %zu", buf, 0xCu);
      }

      tabs2 = [v19 tabs];
      v25 = [tabs2 count] == 0;

      if (v25)
      {
        v28 = WBS_LOG_CHANNEL_PREFIXTabGroup(v26, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [v19 privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [WebBookmarkTabCollection _windowStatesWithFilter:];
        }
      }

      v29 = [(WebBookmarkTabCollection *)selfCopy _tabGroupWithID:v13 kind:1];
      v31 = v29;
      if (v19 && v29)
      {
        v32 = [[WBWindowState alloc] initWithUUID:v14 activeTabGroupUUID:v44 localTabGroup:v19 privateTabGroup:v29 sceneID:v43 windowID:v15];
        v33 = v32;
        if (v11)
        {
          v34 = v11;
        }

        else
        {
          v34 = v41;
        }

        [(WBWindowState *)v32 setActiveProfileIdentifier:v34];
        [(WBWindowState *)v33 setExtraAttributes:v17];
        [(WebBookmarkTabCollection *)selfCopy _addActiveTabsToWindowState:v33];
        [(WebBookmarkTabCollection *)selfCopy _addActiveTabGroupsToWindowState:v33];
        [(WebBookmarkTabCollection *)selfCopy _addUnnamedTabGroupsToWindowState:v33];
        [(WBWindowState *)v33 setWindowRestorationArchiveData:v18];
        [v42 addObject:v33];
      }

      else
      {
        v35 = WBS_LOG_CHANNEL_PREFIXTabGroup(v29, v30);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [(WebBookmarkTabCollection *)&v46 _windowStatesWithFilter:v47, v35];
        }
      }
    }

    v36 = WBS_LOG_CHANNEL_PREFIXTabGroup(v8, v9);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [v42 count];
      *buf = 134217984;
      v53 = v37;
      _os_log_impl(&dword_272C20000, v36, OS_LOG_TYPE_INFO, "Fetched %zu window states with filter", buf, 0xCu);
    }
  }

  else
  {
    [(WebBookmarkTabCollection *)selfCopy _logErrorWithMessage:@"Failed to fetch window states" result:v51];
    v42 = MEMORY[0x277CBEBF8];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v48);

  return v42;
}

- (WBWindowState)lastClosedWindowState
{
  v2 = [(WebBookmarkTabCollection *)self _windowStatesWithFilter:@"WHERE windows.date_closed = (SELECT MAX(date_closed) from windows)"];
  firstObject = [v2 firstObject];

  return firstObject;
}

- (BOOL)_saveWindowState:(id)state activeTabGroupID:(int)d localTabGroupID:(int)iD privateTabGroupID:(int)groupID
{
  v55 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v41, self->super._db, [@"INSERT INTO windows (active_tab_group_id active:date_closed profile:{extra_attributes, is_last_session, local_tab_group_id, private_tab_group_id, scene_id, uuid, restoration_archive) VALUES (?, ?, ?, ?, 1, ?, ?, ?, ?, ?) ON CONFLICT (uuid) DO UPDATE SET active_tab_group_id = excluded.active_tab_group_id, active_profile_id = excluded.active_profile_id, date_closed = excluded.date_closed, extra_attributes = excluded.extra_attributes, local_tab_group_id = excluded.local_tab_group_id, private_tab_group_id = excluded.private_tab_group_id, is_last_session = 1, restoration_archive = excluded.restoration_archive, scene_id = excluded.scene_id", "UTF8String"}id]);
  if (v43)
  {
    if (d)
    {
      iDCopy = d;
    }

    else
    {
      iDCopy = iD;
    }

    sqlite3_bind_int(v42, 1, iDCopy);
    activeProfileIdentifier = [stateCopy activeProfileIdentifier];
    v13 = activeProfileIdentifier == 0;

    if (v13 || ([stateCopy activeProfileIdentifier], v14 = objc_claimAutoreleasedReturnValue(), -[WebBookmarkCollection bookmarkWithUUID:](self, "bookmarkWithUUID:", v14), v15 = objc_claimAutoreleasedReturnValue(), v14, !v15))
    {
      v15 = 0;
      sqlite3_bind_null(v42, 2);
    }

    else
    {
      sqlite3_bind_int(v42, 2, [v15 identifier]);
    }

    dateClosed = [stateCopy dateClosed];
    v18 = dateClosed == 0;

    v19 = v42;
    if (v18)
    {
      sqlite3_bind_null(v42, 3);
    }

    else
    {
      dateClosed2 = [stateCopy dateClosed];
      [dateClosed2 timeIntervalSinceReferenceDate];
      sqlite3_bind_double(v19, 3, v21);
    }

    v22 = v42;
    extraAttributes = [stateCopy extraAttributes];
    bindAttributesToSQLStatement(v22, 4, extraAttributes);

    sqlite3_bind_int(v42, 5, iD);
    sqlite3_bind_int(v42, 6, groupID);
    v24 = v42;
    sceneID = [stateCopy sceneID];
    v26 = sceneID;
    sqlite3_bind_text(v24, 7, [sceneID UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

    v27 = v42;
    uuid = [stateCopy uuid];
    v29 = uuid;
    sqlite3_bind_text(v27, 8, [uuid UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

    windowRestorationArchiveData = [stateCopy windowRestorationArchiveData];
    v31 = windowRestorationArchiveData;
    v32 = v42;
    if (windowRestorationArchiveData)
    {
      v33 = windowRestorationArchiveData;
      v34 = sqlite3_bind_blob64(v32, 9, [v31 bytes], objc_msgSend(v31, "length"), 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v34 = sqlite3_bind_null(v42, 9);
    }

    v36 = WBS_LOG_CHANNEL_PREFIXTabGroup(v34, v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      uuid2 = [stateCopy uuid];
      identifier = [v15 identifier];
      *buf = 138544386;
      v46 = uuid2;
      v47 = 1024;
      v48 = iDCopy;
      v49 = 1024;
      iDCopy2 = iD;
      v51 = 1024;
      groupIDCopy = groupID;
      v53 = 1024;
      v54 = identifier;
      _os_log_impl(&dword_272C20000, v36, OS_LOG_TYPE_INFO, "Attempting to save windowState: %{public}@ activeTabGroupID: <%d> localTabGroupID: <%d> privateTabGroupID: <%d> activeProfileID: <%d>", buf, 0x24u);
    }

    v39 = sqlite3_step(v42);
    v16 = v39 == 101;
    if (v39 != 101)
    {
      [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Could not add window result:sqlite step failed.", v39];
    }
  }

  else
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to add a window result:statement is invalid", v44];
    v16 = 0;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v41);

  return v16;
}

- (BOOL)_saveActiveTabID:(int)d inTabGroupWithID:(int)iD windowID:(int)windowID
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v12, self->super._db, [@"INSERT INTO windows_tab_groups (active_tab_id tab:window_id) VALUES (? group:{?, ?) ON CONFLICT (tab_group_id, window_id) DO UPDATE SET active_tab_id = excluded.active_tab_id", "UTF8String"}id]);
  if ((v14 & 1) == 0)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to add an active tab result:statement is invalid.", v15];
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  sqlite3_bind_int(v13, 1, d);
  sqlite3_bind_int(v13, 2, iD);
  sqlite3_bind_int(v13, 3, windowID);
  v9 = sqlite3_step(v13);
  if (v9 != 101)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to add an active tab" result:v9];
    goto LABEL_6;
  }

  v10 = 1;
LABEL_7:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v12);
  return v10;
}

- (BOOL)_saveActiveTabGroupID:(int)d inProfileWithID:(int)iD windowID:(int)windowID
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v12, self->super._db, [CFSTR(""INSERT INTO windows_profiles (active_tab_group_id profile_id]);
  if ((v14 & 1) == 0)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to add an active tab group result:statement is invalid.", v15];
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  sqlite3_bind_int(v13, 1, d);
  sqlite3_bind_int(v13, 2, iD);
  sqlite3_bind_int(v13, 3, windowID);
  v9 = sqlite3_step(v13);
  if (v9 != 101)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to add an active tab group" result:v9];
    goto LABEL_6;
  }

  v10 = 1;
LABEL_7:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v12);
  return v10;
}

- (BOOL)_clearUnnamedTabGroupsInWindowWithID:(int)d
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v8, self->super._db, [@"DELETE FROM windows_unnamed_tab_groups WHERE window_id = ?" UTF8String]);
  if ((v10 & 1) == 0)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to clear unnamed tab groups result:statement is invalid.", v11];
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  sqlite3_bind_int(v9, 1, d);
  v5 = sqlite3_step(v9);
  if (v5 != 101)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to clear unnamed tab groups" result:v5];
    goto LABEL_6;
  }

  v6 = 1;
LABEL_7:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v8);
  return v6;
}

- (BOOL)_saveUnnamedTabGroupID:(int)d inWindowWithID:(int)iD
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->super._db, [CFSTR(""INSERT INTO windows_unnamed_tab_groups (tab_group_id window_id) VALUES (?]);
  if ((v12 & 1) == 0)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to add an unnamed tab group result:statement is invalid.", v13];
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  sqlite3_bind_int(v11, 1, d);
  sqlite3_bind_int(v11, 2, iD);
  v7 = sqlite3_step(v11);
  if (v7 != 101)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to add an unnamed tab group" result:v7];
    goto LABEL_6;
  }

  v8 = 1;
LABEL_7:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);
  return v8;
}

- (BOOL)_saveWindowState:(id)state forApplyingInMemoryChanges:(BOOL)changes
{
  changesCopy = changes;
  stateCopy = state;
  v8 = stateCopy;
  if (stateCopy)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__WebBookmarkTabCollection__saveWindowState_forApplyingInMemoryChanges___block_invoke;
    v12[3] = &unk_279E75968;
    v12[4] = self;
    v13 = stateCopy;
    v9 = [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:v12 applyInMemoryChanges:!changesCopy secureDelete:0];
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXTabGroup(0, v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkTabCollection _saveWindowState:forApplyingInMemoryChanges:];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_saveWindowState:(id)state
{
  v57 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  localTabGroup = [stateCopy localTabGroup];
  bookmark = [localTabGroup bookmark];

  localTabGroup2 = [stateCopy localTabGroup];
  allTabs = [localTabGroup2 allTabs];
  v8 = [allTabs count];

  if (!v8)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXTabGroup(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [bookmark privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WebBookmarkTabCollection _saveWindowState:];
    }
  }

  v12 = [(WebBookmarkCollection *)self _saveBookmark:bookmark withSpecialID:0 updateGenerationIfNeeded:1];
  if (v12)
  {
    privateTabGroup = [stateCopy privateTabGroup];
    bookmark2 = [privateTabGroup bookmark];

    v16 = [(WebBookmarkCollection *)self _saveBookmark:bookmark2 withSpecialID:0 updateGenerationIfNeeded:1];
    if (v16)
    {
      activeTabGroupUUID = [stateCopy activeTabGroupUUID];
      v40 = [(WebBookmarkCollection *)self bookmarkWithUUID:activeTabGroupUUID];

      v19 = -[WebBookmarkTabCollection _saveWindowState:activeTabGroupID:localTabGroupID:privateTabGroupID:](self, "_saveWindowState:activeTabGroupID:localTabGroupID:privateTabGroupID:", stateCopy, -[NSObject identifier](v40, "identifier"), [bookmark identifier], -[NSObject identifier](bookmark2, "identifier"));
      if (v19)
      {
        uuid = [stateCopy uuid];
        v22 = [(WebBookmarkTabCollection *)self _windowIDForUUID:uuid];

        [stateCopy setIdentifier:v22];
        v53 = 0;
        v54 = &v53;
        v55 = 0x2020000000;
        v56 = 0;
        tabGroupsToActiveTabs = [stateCopy tabGroupsToActiveTabs];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __45__WebBookmarkTabCollection__saveWindowState___block_invoke;
        v48[3] = &unk_279E75990;
        v48[4] = self;
        v51 = v22;
        v39 = stateCopy;
        v49 = v39;
        v50 = &v53;
        [tabGroupsToActiveTabs enumerateKeysAndObjectsUsingBlock:v48];

        profilesToActiveTabGroups = [v39 profilesToActiveTabGroups];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __45__WebBookmarkTabCollection__saveWindowState___block_invoke_394;
        v46[3] = &unk_279E759B8;
        v47 = v22;
        v46[4] = self;
        v46[5] = &v53;
        [profilesToActiveTabGroups enumerateKeysAndObjectsUsingBlock:v46];

        v25 = [(WebBookmarkTabCollection *)self _clearUnnamedTabGroupsInWindowWithID:v22];
        if (v25)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          unnamedTabGroupUUIDs = [v39 unnamedTabGroupUUIDs];
          v28 = [unnamedTabGroupUUIDs countByEnumeratingWithState:&v42 objects:v52 count:16];
          if (v28)
          {
            v29 = *v43;
            while (2)
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v43 != v29)
                {
                  objc_enumerationMutation(unnamedTabGroupUUIDs);
                }

                v31 = [(WebBookmarkCollection *)self bookmarkWithUUID:*(*(&v42 + 1) + 8 * i)];
                if ([v31 identifier])
                {
                  v32 = -[WebBookmarkTabCollection _saveUnnamedTabGroupID:inWindowWithID:](self, "_saveUnnamedTabGroupID:inWindowWithID:", [v31 identifier], v22);
                  if ((v32 & 1) == 0)
                  {
                    *(v54 + 24) = 1;
                    v37 = WBS_LOG_CHANNEL_PREFIXTabGroup(v32, v33);
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      [v39 uuid];
                      objc_claimAutoreleasedReturnValue();
                      [WebBookmarkTabCollection _saveWindowState:];
                    }

                    goto LABEL_34;
                  }
                }
              }

              v28 = [unnamedTabGroupUUIDs countByEnumeratingWithState:&v42 objects:v52 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

LABEL_34:

          v34 = *(v54 + 24) ^ 1;
        }

        else
        {
          v36 = WBS_LOG_CHANNEL_PREFIXTabGroup(v25, v26);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            [(WebBookmarkTabCollection *)v22 _saveWindowState:v36];
          }

          v34 = 0;
        }

        _Block_object_dispose(&v53, 8);
        goto LABEL_36;
      }

      v35 = WBS_LOG_CHANNEL_PREFIXTabGroup(v19, v20);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [stateCopy uuid];
        objc_claimAutoreleasedReturnValue();
        [WebBookmarkTabCollection _saveWindowState:];
      }
    }

    else
    {
      v40 = WBS_LOG_CHANNEL_PREFIXTabGroup(v16, v17);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [bookmark2 UUID];
        objc_claimAutoreleasedReturnValue();
        [stateCopy uuid];
        objc_claimAutoreleasedReturnValue();
        [WebBookmarkTabCollection _saveWindowState:];
      }
    }

    v34 = 0;
LABEL_36:

    goto LABEL_37;
  }

  bookmark2 = WBS_LOG_CHANNEL_PREFIXTabGroup(v12, v13);
  if (os_log_type_enabled(bookmark2, OS_LOG_TYPE_ERROR))
  {
    [bookmark UUID];
    objc_claimAutoreleasedReturnValue();
    [stateCopy uuid];
    objc_claimAutoreleasedReturnValue();
    [WebBookmarkTabCollection _saveWindowState:];
  }

  v34 = 0;
LABEL_37:

  return v34 & 1;
}

void __45__WebBookmarkTabCollection__saveWindowState___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) bookmarkWithUUID:v7];
  v10 = [*(a1 + 32) bookmarkWithUUID:v8];
  v11 = [*(a1 + 32) _saveActiveTabID:objc_msgSend(v10 inTabGroupWithID:"identifier") windowID:{objc_msgSend(v9, "identifier"), *(a1 + 56)}];
  if ((v11 & 1) == 0)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXTabGroup(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 40) uuid];
      v15 = 138543874;
      v16 = v8;
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = v14;
      _os_log_error_impl(&dword_272C20000, v13, OS_LOG_TYPE_ERROR, "Failed to save active tab (%{public}@) in tabgroup with ID: (%{public}@) and windowID: (%{public}@)", &v15, 0x20u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __45__WebBookmarkTabCollection__saveWindowState___block_invoke_394(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) bookmarkWithUUID:v7];
  v10 = [*(a1 + 32) bookmarkWithUUID:v8];
  v11 = [*(a1 + 32) _saveActiveTabGroupID:objc_msgSend(v10 inProfileWithID:"identifier") windowID:{objc_msgSend(v9, "identifier"), *(a1 + 48)}];
  if ((v11 & 1) == 0)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXTabGroup(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __45__WebBookmarkTabCollection__saveWindowState___block_invoke_394_cold_1(v8, v7, v13);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)closeWindowState:(id)state
{
  stateCopy = state;
  date = [MEMORY[0x277CBEAA8] date];
  [stateCopy setDateClosed:date];

  LOBYTE(self) = [(WebBookmarkTabCollection *)self saveWindowState:stateCopy];
  return self;
}

- (BOOL)_deleteWindowState:(id)state
{
  v31 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = WBS_LOG_CHANNEL_PREFIXTabGroup(stateCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [stateCopy uuid];
    *buf = 138543362;
    v30 = uuid;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_DEFAULT, "Deleting windowState with UUID: %{public}@", buf, 0xCu);
  }

  v8 = MEMORY[0x277CCACA8];
  uuid2 = [stateCopy uuid];
  v10 = [(WebBookmarkTabCollection *)self _uuidForQueries:uuid2];
  v11 = [v8 stringWithFormat:@"WHERE uuid = %@", v10];

  if ([(WebBookmarkTabCollection *)self _deleteMatchingWindows:v11 logAsError:0])
  {
    localTabGroup = [stateCopy localTabGroup];
    uuid3 = [localTabGroup uuid];
    v14 = [(WebBookmarkCollection *)self bookmarkWithUUID:uuid3];

    if ([v14 identifier] && !-[WebBookmarkCollection deleteBookmark:leaveTombstone:](self, "deleteBookmark:leaveTombstone:", v14, 0))
    {
      v22 = 0;
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      unnamedTabGroupUUIDs = [stateCopy unnamedTabGroupUUIDs];
      v16 = [unnamedTabGroupUUIDs countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v16)
      {
        v17 = *v25;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(unnamedTabGroupUUIDs);
            }

            v19 = [(WebBookmarkCollection *)self bookmarkWithUUID:*(*(&v24 + 1) + 8 * i)];
            if ([v19 identifier] && !-[WebBookmarkCollection deleteBookmark:leaveTombstone:](self, "deleteBookmark:leaveTombstone:", v19, 1))
            {

              v22 = 0;
              goto LABEL_21;
            }
          }

          v16 = [unnamedTabGroupUUIDs countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      privateTabGroup = [stateCopy privateTabGroup];
      uuid4 = [privateTabGroup uuid];
      unnamedTabGroupUUIDs = [(WebBookmarkCollection *)self bookmarkWithUUID:uuid4];

      if ([unnamedTabGroupUUIDs identifier])
      {
        v22 = [(WebBookmarkCollection *)self deleteBookmark:unnamedTabGroupUUIDs leaveTombstone:0];
      }

      else
      {
        v22 = 1;
      }

LABEL_21:
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)_deleteWindowState:(id)state forApplyingInMemoryChanges:(BOOL)changes
{
  changesCopy = changes;
  stateCopy = state;
  v8 = stateCopy;
  if (stateCopy)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__WebBookmarkTabCollection__deleteWindowState_forApplyingInMemoryChanges___block_invoke;
    v12[3] = &unk_279E75968;
    v12[4] = self;
    v13 = stateCopy;
    v9 = [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:v12 applyInMemoryChanges:!changesCopy secureDelete:1];
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXTabGroup(0, v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkTabCollection _deleteWindowState:forApplyingInMemoryChanges:];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)deleteWindowStates:(id)states
{
  statesCopy = states;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__WebBookmarkTabCollection_deleteWindowStates___block_invoke;
  v7[3] = &unk_279E75968;
  v8 = statesCopy;
  selfCopy = self;
  v5 = statesCopy;
  LOBYTE(self) = [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:v7 secureDelete:1];

  return self;
}

uint64_t __47__WebBookmarkTabCollection_deleteWindowStates___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (([*(a1 + 40) _deleteWindowState:{*(*(&v8 + 1) + 8 * v5), v8}] & 1) == 0)
        {
          v6 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 1;
LABEL_11:

  return v6;
}

- (BOOL)_deleteAllWindowStates
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  windowStates = [(WebBookmarkTabCollection *)self windowStates];
  v4 = [windowStates countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(windowStates);
        }

        if (![(WebBookmarkTabCollection *)self _deleteWindowState:*(*(&v9 + 1) + 8 * i)])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [windowStates countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (BOOL)deleteAllWindowStates
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__WebBookmarkTabCollection_deleteAllWindowStates__block_invoke;
  v3[3] = &unk_279E757F0;
  v3[4] = self;
  return [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:v3 secureDelete:1];
}

- (BOOL)_deleteWindowsNotInLastSession
{
  selfCopy = self;
  v3 = [(WebBookmarkTabCollection *)self _windowStatesWithFilter:@"WHERE is_last_session = 0"];
  LOBYTE(selfCopy) = [(WebBookmarkTabCollection *)selfCopy deleteWindowStates:v3];

  return selfCopy;
}

- (BOOL)saveWindowRestorationArchiveData:(id)data forWindowUUIDString:(id)string
{
  dataCopy = data;
  stringCopy = string;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__WebBookmarkTabCollection_saveWindowRestorationArchiveData_forWindowUUIDString___block_invoke;
  v11[3] = &unk_279E759E0;
  v11[4] = self;
  v12 = dataCopy;
  v13 = stringCopy;
  v8 = stringCopy;
  v9 = dataCopy;
  LOBYTE(self) = [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:v11 secureDelete:0];

  return self;
}

- (BOOL)_saveWindowRestorationArchiveData:(id)data forWindowUUIDString:(id)string
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  stringCopy = string;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v17, self->super._db, [@"UPDATE windows SET restoration_archive = ? WHERE uuid = ?" UTF8String]);
  if ((v19 & 1) == 0)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to add restoration archive" result:v20];
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v8 = v18;
  v9 = dataCopy;
  sqlite3_bind_blob64(v8, 1, [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0xFFFFFFFFFFFFFFFFLL);
  v10 = v18;
  v11 = stringCopy;
  sqlite3_bind_text(v10, 2, [stringCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v12 = sqlite3_step(v18);
  if (v12 != 101)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to add restoration archive" result:v12];
    goto LABEL_7;
  }

  v14 = WBS_LOG_CHANNEL_PREFIXTabGroup(v12, v13);
  v15 = 1;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v22 = stringCopy;
    v23 = 2048;
    v24 = dataCopy;
    _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "WindowState (%{public}@) saved with restoration archive(%p).", buf, 0x16u);
  }

LABEL_8:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v17);

  return v15;
}

- (unint64_t)_countOfAllLocalTabsToBeDeleted
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v6, self->super._db, [@"SELECT COUNT(*) FROM bookmarks WHERE syncable = 0 AND hidden = 0 AND type = 0 AND parent != 0" UTF8String]);
  if ((v8 & 1) == 0)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to query number of tabs to be deleted" result:v9];
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v3 = sqlite3_step(v7);
  if (v3 != 100)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to query number of tabs to be deleted" result:v3];
    goto LABEL_6;
  }

  v4 = sqlite3_column_int(v7, 0);
LABEL_7:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v6);
  return v4;
}

- (BOOL)_deleteAllLocalTabsAndGroups
{
  _specialTabFolderUUIDsForQueries = [(WebBookmarkTabCollection *)self _specialTabFolderUUIDsForQueries];
  v4 = [_specialTabFolderUUIDsForQueries componentsJoinedByString:{@", "}];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM bookmarks WHERE syncable = 0 AND (parent != 0 OR external_uuid NOT IN (%@))", v4];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v9, self->super._db, [v5 UTF8String]);
  if ((v11 & 1) == 0)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to delete all tabs" result:v12];
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v6 = sqlite3_step(v10);
  if (v6 != 101)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to delete all tabs" result:v6];
    goto LABEL_6;
  }

  v7 = 1;
LABEL_7:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v9);

  return v7;
}

- (BOOL)_markTabsClosed:(id)closed
{
  v4 = [closed safari_mapObjectsUsingBlock:&__block_literal_global_422];
  v5 = [v4 componentsJoinedByString:{@", "}];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE bookmarks SET date_closed = %f WHERE id in (%@)", v6, v5];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->super._db, [v7 UTF8String]);
  v8 = v11;
  if (!v11)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to update tab close date" result:v12];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);

  return v8;
}

id __44__WebBookmarkTabCollection__markTabsClosed___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 bookmark];
  v4 = [v2 numberWithInt:{objc_msgSend(v3, "identifier")}];

  return v4;
}

- (BOOL)_markWindowStatesAsLastSession:(id)session
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__WebBookmarkTabCollection__markWindowStatesAsLastSession___block_invoke;
  v14[3] = &unk_279E75A28;
  v14[4] = self;
  v4 = [session safari_mapObjectsUsingBlock:v14];
  v5 = [v4 componentsJoinedByString:{@", "}];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE windows SET is_last_session = CASE WHEN uuid in (%@) THEN 1 ELSE 0 END", v5];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, self->super._db, [v6 UTF8String]);
  if ((v12 & 1) == 0)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to update last session" result:v13];
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v7 = sqlite3_step(v11);
  if (v7 != 101)
  {
    [(WebBookmarkTabCollection *)self _logErrorWithMessage:@"Failed to update last session" result:v7];
    goto LABEL_6;
  }

  v8 = 1;
LABEL_7:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);

  return v8;
}

id __59__WebBookmarkTabCollection__markWindowStatesAsLastSession___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 _uuidForQueries:v3];

  return v4;
}

- (BOOL)allowsScopedBookmarksInTabGroup:(id)group
{
  groupCopy = group;
  if (([groupCopy supportsTabGroupFavorites] & 1) != 0 && objc_msgSend(groupCopy, "isSyncable"))
  {
    bookmark = [groupCopy bookmark];
    if ([bookmark specialID])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      bookmark2 = [groupCopy bookmark];
      v5 = [bookmark2 isHidden] ^ 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_generateServerIdIfNeededForTabGroup:(id)group
{
  bookmark = [group bookmark];
  LOBYTE(self) = [(WebBookmarkTabCollection *)self _generateServerIdIfNeededForTabGroupBookmark:bookmark];

  return self;
}

- (BOOL)_generateServerIdIfNeededForTabGroupBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  serverID = [bookmarkCopy serverID];

  if (serverID)
  {
    v6 = 1;
  }

  else if ([bookmarkCopy identifier] == 0x7FFFFFFF)
  {
    v6 = 0;
  }

  else
  {
    v7 = -[WebBookmarkCollection serverIDForBookmarkID:](self, "serverIDForBookmarkID:", [bookmarkCopy identifier]);
    if (v7)
    {
      [bookmarkCopy setServerID:v7];
      v6 = 1;
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v10 = [(WebBookmarkCollection *)self setServerID:uUIDString forBookmark:bookmarkCopy];

      if (v10)
      {
        v11 = -[WebBookmarkCollection serverIDForBookmarkID:](self, "serverIDForBookmarkID:", [bookmarkCopy identifier]);
        [bookmarkCopy setServerID:v11];
      }

      else
      {
        v11 = 0;
      }

      v6 = v11 != 0;
      v7 = v11;
    }
  }

  return v6;
}

- (id)generateNewServerIDForBookmark:(id)bookmark
{
  v17 = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  if (![bookmarkCopy isFolder] || objc_msgSend(bookmarkCopy, "subtype") != 1)
  {
    goto LABEL_12;
  }

  parentID = [bookmarkCopy parentID];
  if (parentID != 6)
  {
LABEL_9:
    v8 = -[WebBookmarkCollection bookmarkWithID:](self, "bookmarkWithID:", [bookmarkCopy parentID]);
    if ([v8 isFolder] && !objc_msgSend(v8, "subtype"))
    {
      serverID = [v8 serverID];
      v11 = [@"TopScopedBookmarkList_" stringByAppendingString:serverID];
      goto LABEL_17;
    }

LABEL_12:
    v14.receiver = self;
    v14.super_class = WebBookmarkTabCollection;
    v12 = [(WebBookmarkCollection *)&v14 generateNewServerIDForBookmark:bookmarkCopy];
    goto LABEL_13;
  }

  v7 = WBS_LOG_CHANNEL_PREFIXTabGroup(parentID, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    identifier = [bookmarkCopy identifier];
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_DEFAULT, "Generating new server id for a top scoped bookmark folder with id %d in the recovered folder.", buf, 8u);
  }

  v8 = [(WebBookmarkCollection *)self syncDataForBookmark:bookmarkCopy];
  parentRecordID = [v8 parentRecordID];
  serverID = [parentRecordID recordName];

  if (!serverID)
  {

    goto LABEL_9;
  }

  v11 = [@"TopScopedBookmarkList_" stringByAppendingString:serverID];
LABEL_17:
  v12 = v11;

LABEL_13:

  return v12;
}

- (id)_topScopedBookmarkListServerIdForTabGroup:(id)group
{
  bookmark = [group bookmark];
  serverID = [bookmark serverID];
  v5 = [@"TopScopedBookmarkList_" stringByAppendingString:serverID];

  return v5;
}

- (BOOL)createTopScopedBookmarkListForTabGroup:(id)group
{
  v28 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (-[WebBookmarkTabCollection allowsScopedBookmarksInTabGroup:](self, "allowsScopedBookmarksInTabGroup:", groupCopy) && ([groupCopy uuid], v5 = objc_claimAutoreleasedReturnValue(), v6 = -[WebBookmarkCollection identifierOfBookmarkWithUUID:](self, "identifierOfBookmarkWithUUID:", v5), v5, v6 != 0x7FFFFFFF) && -[WebBookmarkTabCollection _generateServerIdIfNeededForTabGroup:](self, "_generateServerIdIfNeededForTabGroup:", groupCopy) && (-[WebBookmarkTabCollection _listOfScopedBookmarkFoldersInTabGroup:](self, "_listOfScopedBookmarkFoldersInTabGroup:", groupCopy), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "bookmarkArray"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, !v9))
  {
    v12 = [(WebBookmarkTabCollection *)self _topScopedBookmarkListServerIdForTabGroup:groupCopy];
    v13 = [(WebBookmarkCollection *)self bookmarkIDForServerID:v12 excludeDeletedBookmarks:0];
    v15 = v13;
    if (v13 == 0x7FFFFFFF)
    {
      v16 = [WebBookmark alloc];
      identifier = [groupCopy identifier];
      currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
      v19 = [(WebBookmark *)v16 initFolderWithParentID:identifier subtype:1 deviceIdentifier:currentDeviceIdentifier collectionType:1];

      [v19 setTitle:@"TopScopedBookmarkList"];
      [v19 setServerID:v12];
      v10 = [(WebBookmarkCollection *)self _saveBookmark:v19 withSpecialID:0 updateGenerationIfNeeded:1];
    }

    else
    {
      v20 = WBS_LOG_CHANNEL_PREFIXTabGroup(v13, v14);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [groupCopy identifier];
        uuid = [groupCopy uuid];
        v23[0] = 67109635;
        v23[1] = v15;
        v24 = 1024;
        v25 = identifier2;
        v26 = 2113;
        v27 = uuid;
        _os_log_error_impl(&dword_272C20000, v20, OS_LOG_TYPE_ERROR, "Detected orphaned TopScopedBookmarkList %d that belongs to Tab Group %d(%{private}@).", v23, 0x18u);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)topScopedBookmarkListForTabGroup:(id)group onQueue:(id)queue
{
  groupCopy = group;
  queueCopy = queue;
  if (![(WebBookmarkTabCollection *)self allowsScopedBookmarksInTabGroup:groupCopy])
  {
    v17 = 0;
    goto LABEL_17;
  }

  v8 = [(WebBookmarkTabCollection *)self _listOfScopedBookmarkFoldersInTabGroup:groupCopy];
  bookmarkArray = [v8 bookmarkArray];
  v10 = [bookmarkArray count];

  if (!v10)
  {
    if (![(WebBookmarkTabCollection *)self createTopScopedBookmarkListForTabGroup:groupCopy])
    {
      goto LABEL_14;
    }

    v11 = [(WebBookmarkTabCollection *)self _listOfScopedBookmarkFoldersInTabGroup:groupCopy];

    v8 = v11;
  }

  bookmarkArray2 = [v8 bookmarkArray];
  v13 = [bookmarkArray2 count];

  if (v13)
  {
    bookmarkArray3 = [v8 bookmarkArray];
    firstObject = [bookmarkArray3 firstObject];
    identifier = [firstObject identifier];
  }

  else
  {
    bookmarkArray3 = [(WebBookmarkTabCollection *)self _topScopedBookmarkListServerIdForTabGroup:groupCopy];
    identifier = [(WebBookmarkCollection *)self bookmarkIDForServerID:bookmarkArray3 excludeDeletedBookmarks:0];
  }

  if (identifier && identifier != 0x7FFFFFFF)
  {
    v21 = [[WebBookmarkListQuery alloc] initWithFolderID:identifier inCollection:self usingFilter:0 options:0];
    v17 = [[WebBookmarkList alloc] initWithQuery:v21 skipOffset:0 collection:self queue:queueCopy];

    goto LABEL_16;
  }

  v20 = WBS_LOG_CHANNEL_PREFIXTabGroup(v18, v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [groupCopy identifier];
    [groupCopy uuid];
    objc_claimAutoreleasedReturnValue();
    [WebBookmarkTabCollection topScopedBookmarkListForTabGroup:onQueue:];
  }

LABEL_14:
  v17 = 0;
LABEL_16:

LABEL_17:

  return v17;
}

- (id)_listOfScopedBookmarkFoldersInTabGroup:(id)group
{
  groupCopy = group;
  v5 = -[WebBookmarkListQuery initWithFolderID:inCollection:usingFilter:options:]([WebBookmarkListQuery alloc], "initWithFolderID:inCollection:usingFilter:options:", [groupCopy identifier], self, 0, 13);
  v6 = [[WebBookmarkList alloc] initWithQuery:v5 skipOffset:0 collection:self];

  return v6;
}

- (id)_specialTabFolderUUIDs
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"pinned";
  v4[1] = @"privatePinned";
  v4[2] = @"recentlyClosed";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

- (id)_specialTabFolderUUIDsForQueries
{
  _specialTabFolderUUIDs = [(WebBookmarkTabCollection *)self _specialTabFolderUUIDs];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__WebBookmarkTabCollection__specialTabFolderUUIDsForQueries__block_invoke;
  v6[3] = &unk_279E75A50;
  v6[4] = self;
  v4 = [_specialTabFolderUUIDs safari_mapObjectsUsingBlock:v6];

  return v4;
}

id __60__WebBookmarkTabCollection__specialTabFolderUUIDsForQueries__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _uuidForQueries:a2];

  return v2;
}

- (void)_createSpecialTabsFolderWithUUIDIfNeeded:(id)needed withParentID:(int)d
{
  v4 = *&d;
  v11[1] = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v7 = [(WebBookmarkCollection *)self bookmarkWithUUID:neededCopy];
  if (!v7)
  {
    v8 = [[WebBookmark alloc] initFolderWithParentID:v4 collectionType:1];
    [v8 setTitle:neededCopy];
    [v8 _setUUID:neededCopy];
    [v8 _setSyncable:0];
    v10 = @"com.apple.bookmarks.OmitFromUI";
    v11[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v8 setExtraAttributes:v9];

    [(WebBookmarkCollection *)self _saveBookmark:v8 withSpecialID:0 updateGenerationIfNeeded:1];
  }
}

- (id)_specialTabsWithUUID:(id)d privateBrowsing:(BOOL)browsing
{
  v6 = [(WebBookmarkCollection *)self bookmarkWithUUID:d];
  v7 = v6;
  if (v6)
  {
    v8 = -[WebBookmarkCollection listWithID:](self, "listWithID:", [v6 identifier]);
    bookmarkArray = [v8 bookmarkArray];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__WebBookmarkTabCollection__specialTabsWithUUID_privateBrowsing___block_invoke;
    v12[3] = &__block_descriptor_33_e28___WBTab_16__0__WebBookmark_8l;
    browsingCopy = browsing;
    v10 = [bookmarkArray safari_mapObjectsUsingBlock:v12];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

WBTab *__65__WebBookmarkTabCollection__specialTabsWithUUID_privateBrowsing___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[WBTab alloc] initWithBookmark:v3 isPrivateBrowsing:*(a1 + 32)];

  return v4;
}

- (int)pinnedTabsFolderID
{
  result = self->_cachedPinnedTabsFolderID;
  if (!result)
  {
    v4 = [(WebBookmarkCollection *)self bookmarkWithUUID:@"pinned"];
    self->_cachedPinnedTabsFolderID = [v4 identifier];

    return self->_cachedPinnedTabsFolderID;
  }

  return result;
}

- (int)privatePinnedTabsFolderID
{
  result = self->_cachedPrivatePinnedTabsFolderID;
  if (!result)
  {
    v4 = [(WebBookmarkCollection *)self bookmarkWithUUID:@"privatePinned"];
    self->_cachedPrivatePinnedTabsFolderID = [v4 identifier];

    return self->_cachedPrivatePinnedTabsFolderID;
  }

  return result;
}

- (WebBookmarkList)recentlyClosedTabList
{
  v3 = [(WebBookmarkCollection *)self bookmarkWithUUID:@"recentlyClosed"];
  v4 = -[WebBookmarkCollection listWithID:](self, "listWithID:", [v3 identifier]);

  return v4;
}

- (int)_cachedPinnedTabsFolderIDForProfileWithIdentifier:(id)identifier
{
  v4 = [(NSMutableDictionary *)self->_cachedPinnedTabsFolderIDByProfileIdentifier objectForKeyedSubscript:identifier];
  v5 = v4;
  if (v4)
  {
    intValue = [v4 intValue];
  }

  if (v5)
  {
    return intValue;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

- (void)_cachePinnedTabsFolderID:(int)d forProfileWithIdentifier:(id)identifier
{
  v4 = *&d;
  identifierCopy = identifier;
  if (!self->_cachedPinnedTabsFolderIDByProfileIdentifier)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    cachedPinnedTabsFolderIDByProfileIdentifier = self->_cachedPinnedTabsFolderIDByProfileIdentifier;
    self->_cachedPinnedTabsFolderIDByProfileIdentifier = dictionary;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(NSMutableDictionary *)self->_cachedPinnedTabsFolderIDByProfileIdentifier setObject:v8 forKeyedSubscript:identifierCopy];
}

- (int)pinnedTabsFolderIDForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  LODWORD(identifier) = [(WebBookmarkTabCollection *)self _cachedPinnedTabsFolderIDForProfileWithIdentifier:identifierCopy];
  if (identifier == 0x7FFFFFFF)
  {
    v6 = [(WebBookmarkCollection *)self bookmarkWithUUID:identifierCopy];
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"pinned-%@", identifierCopy];
    -[WebBookmarkTabCollection _createSpecialTabsFolderWithUUIDIfNeeded:withParentID:](self, "_createSpecialTabsFolderWithUUIDIfNeeded:withParentID:", identifierCopy, [v6 identifier]);
    v8 = [(WebBookmarkCollection *)self bookmarkWithUUID:identifierCopy];
    identifier = [v8 identifier];

    [(WebBookmarkTabCollection *)self _cachePinnedTabsFolderID:identifier forProfileWithIdentifier:identifierCopy];
  }

  return identifier;
}

- (id)pinnedTabsForProfileWithIdentifier:(id)identifier
{
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"pinned-%@", identifier];
  v5 = [(WebBookmarkTabCollection *)self _specialTabsWithUUID:identifier privateBrowsing:0];

  return v5;
}

- (void)_createFrequentlyVisitedSitesFolderWithUUIDIfNeeded:(id)needed withParentID:(int)d
{
  v4 = *&d;
  v11[1] = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v7 = [(WebBookmarkCollection *)self bookmarkWithUUID:neededCopy];
  if (!v7)
  {
    v8 = [[WebBookmark alloc] initFolderWithParentID:v4 collectionType:1];
    [v8 setSubtype:5];
    [v8 setTitle:neededCopy];
    [v8 _setUUID:neededCopy];
    [v8 _setSyncable:0];
    v10 = @"com.apple.bookmarks.OmitFromUI";
    v11[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v8 setExtraAttributes:v9];

    [(WebBookmarkCollection *)self _saveBookmark:v8 withSpecialID:0 updateGenerationIfNeeded:1];
  }
}

- (int)frequentlyVisitedSitesFolderIDForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x277D49BD8]])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(WebBookmarkCollection *)self bookmarkWithUUID:identifierCopy];
  }

  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"fvs-%@", identifierCopy];
  if (v5)
  {
    identifier = [v5 identifier];
  }

  else
  {
    identifier = 0x7FFFFFFFLL;
  }

  [(WebBookmarkTabCollection *)self _createFrequentlyVisitedSitesFolderWithUUIDIfNeeded:identifierCopy withParentID:identifier];
  v8 = [(WebBookmarkCollection *)self bookmarkWithUUID:identifierCopy];
  identifier2 = [v8 identifier];

  return identifier2;
}

- (id)generatePositionBeforeFirstRecordInParentWithServerID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v6 = dCopy;
  }

  else
  {
    v6 = *MEMORY[0x277D49BC0];
  }

  v7 = [(WebBookmarkCollection *)self bookmarkIDForServerID:v6 excludeDeletedBookmarks:1];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v16, self->super._db, [@"SELECT sync_data FROM bookmarks WHERE parent = ? AND server_id IS NOT NULL" UTF8String]);
  sqlite3_bind_int(v17, 1, v7);
  v8 = 0;
  while (sqlite3_step(v17) == 100)
  {
    v9 = WBDataFromNullableColumn(v17, 0);
    v10 = [WBBookmarkSyncData positionFromContentsOfData:v9];

    if (v8)
    {
      if ([v10 compare:v8] == -1)
      {
        v11 = v10;

        v8 = v11;
      }
    }

    else
    {
      v8 = v10;
    }
  }

  v12 = MEMORY[0x277D49E80];
  currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
  v14 = [v12 positionBetweenPosition:0 andPosition:v8 withDeviceIdentifier:currentDeviceIdentifier changeID:{-[WebBookmarkCollection nextDatabaseSyncChangeID](self, "nextDatabaseSyncChangeID")}];

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v16);

  return v14;
}

- (int)createLegacyPlaceholderTabGroupBookmarksForSharedTabGroup:(id)group
{
  groupCopy = group;
  v5 = [WebBookmark alloc];
  currentDeviceIdentifier = [(WebBookmarkCollection *)self currentDeviceIdentifier];
  v7 = [(WebBookmark *)v5 initFolderWithParentID:0 deviceIdentifier:currentDeviceIdentifier collectionType:1];

  serverID = [groupCopy serverID];
  v9 = *MEMORY[0x277D4A470];
  v10 = [*MEMORY[0x277D4A470] stringByAppendingString:serverID];
  [v7 setServerID:v10];

  title = [groupCopy title];
  [v7 setTitle:title];

  [v7 _setHidden:1];
  if (![(WebBookmarkCollection *)self _saveAndMoveBookmark:v7 toFolderID:0])
  {
    goto LABEL_6;
  }

  if (![(WebBookmarkCollection *)self _reorderBookmark:v7 afterBookmark:groupCopy])
  {
    [(WebBookmarkCollection *)self deleteBookmark:v7 leaveTombstone:0];
LABEL_6:
    identifier2 = 0x7FFFFFFF;
    goto LABEL_9;
  }

  v12 = _WBSLocalizedString();
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://www.icloud.com/%@/unsupported-safari-version", *MEMORY[0x277D4A0F0]];
  v14 = [WebBookmark alloc];
  identifier = [v7 identifier];
  currentDeviceIdentifier2 = [(WebBookmarkCollection *)self currentDeviceIdentifier];
  v17 = [(WebBookmark *)v14 initWithTitle:v12 address:v13 parentID:identifier deviceIdentifier:currentDeviceIdentifier2 collectionType:1];

  v18 = MEMORY[0x277CCACA8];
  serverID2 = [groupCopy serverID];
  v20 = [v18 stringWithFormat:@"%@TabGroupTab_%@", v9, serverID2];
  [(WebBookmark *)v17 setServerID:v20];

  [(WebBookmark *)v17 _setHidden:1];
  if (-[WebBookmarkCollection _saveAndMoveBookmark:toFolderID:](self, "_saveAndMoveBookmark:toFolderID:", v17, [v7 identifier]))
  {
    identifier2 = [v7 identifier];
  }

  else
  {
    [(WebBookmarkCollection *)self deleteBookmark:v7 leaveTombstone:0];
    identifier2 = 0x7FFFFFFF;
  }

LABEL_9:
  return identifier2;
}

- (BOOL)_removePlaceholderTabGroupRecordsOnUpgrade
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__WebBookmarkTabCollection__removePlaceholderTabGroupRecordsOnUpgrade__block_invoke;
  v3[3] = &unk_279E757F0;
  v3[4] = self;
  return [(WebBookmarkCollection *)self performDatabaseUpdatesWithTransaction:v3 secureDelete:1];
}

uint64_t __70__WebBookmarkTabCollection__removePlaceholderTabGroupRecordsOnUpgrade__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"server_id LIKE '%@%%'", *MEMORY[0x277D4A470]];
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v10, [v2 _selectBookmarksWhere:v3]);

  while (sqlite3_step(v11) == 100)
  {
    v4 = [WebBookmark alloc];
    v5 = v11;
    v6 = [*(a1 + 32) currentDeviceIdentifier];
    v7 = [(WebBookmark *)v4 initWithSQLiteStatement:v5 deviceIdentifier:v6 collectionType:1];

    LOBYTE(v6) = [*(a1 + 32) deleteBookmark:v7 leaveTombstone:0];
    if ((v6 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  v8 = [*(a1 + 32) updateDatabaseSyncDataUsingBlock:&__block_literal_global_460];
LABEL_6:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v10);
  return v8;
}

id __70__WebBookmarkTabCollection__removePlaceholderTabGroupRecordsOnUpgrade__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 clearAllLastServerChangeTokens];

  return v2;
}

- (void)_deleteDuplicatePersonalProfilesWithInvalidUUID
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to delete extra personal profile with mismatched UUID: %{public}@", v5);
}

- (void)_regenerateSyncPositionsIfNeeded
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to save generated position for record %{public}@", v5);
}

void __60__WebBookmarkTabCollection__regenerateSyncPositionsIfNeeded__block_invoke_177_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Setting position failed for bookmark %{public}@", v5);
}

- (void)tabsForTabGroupBookmark:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "No tabs found for tab group bookmark: %{public}@", v5);
}

- (void)tabGroupsChildrenForBookmark:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "No tab groups found for profile: %{public}@", v5);
}

- (void)_windowStatesWithFilter:.cold.1()
{
  OUTLINED_FUNCTION_4();
  *v1 = 138543362;
  *v3 = v2;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)_windowStatesWithFilter:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "Skipped window state from DB due to missing tab group.", buf, 2u);
}

- (void)_saveWindowState:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Local tab group %{public}@ is getting saved to disk with no tabs", v5);
}

- (void)_saveWindowState:.cold.2()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_1_1(v1, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_saveWindowState:.cold.3()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_1_1(v1, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_saveWindowState:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Failed to save window state %{public}@.", v5);
}

- (void)_saveWindowState:(int)a1 .cold.5(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_272C20000, a2, OS_LOG_TYPE_ERROR, "Failed to clear unnamed tabgroups in window with ID: (%d)", v2, 8u);
}

- (void)_saveWindowState:.cold.6()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __45__WebBookmarkTabCollection__saveWindowState___block_invoke_394_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "Failed to save activeTabGroup (%{public}@) in profile (%{public}@)", &v3, 0x16u);
}

- (void)topScopedBookmarkListForTabGroup:onQueue:.cold.1()
{
  OUTLINED_FUNCTION_4();
  *v1 = 67109379;
  *(v1 + 4) = v2;
  *(v1 + 8) = 2113;
  *(v1 + 10) = v3;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

@end