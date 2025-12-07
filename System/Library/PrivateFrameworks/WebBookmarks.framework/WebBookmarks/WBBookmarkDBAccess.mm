@interface WBBookmarkDBAccess
- (BOOL)addItem:(void *)item underFolderWithServerId:(id)id database:(void *)database;
- (BOOL)changeIsDAVMoveChange:(void *)change;
- (BOOL)changeIsMoveChange:(void *)change;
- (BOOL)item:(void *)item isEqualToItem:(void *)toItem;
- (BOOL)item:(void *)item isInFolderWithServerSyncId:(id)id;
- (BOOL)performMaintenanceOnDatabase:(void *)database afterVersion:(id)version;
- (NSString)description;
- (WBBookmarkDBAccess)initWithCollectionType:(int64_t)type storeOwner:(int64_t)owner;
- (__CFArray)copyChangesWithDatabase:(void *)database changeToken:(const void *)token;
- (__CFData)copySyncDataWithDatabase:(void *)database;
- (__CFData)copySyncDataWithItem:(void *)item;
- (__CFString)copyParentServerIdWithItem:(void *)item;
- (__CFString)copyServerIdWithChange:(void *)change;
- (__CFString)copyServerIdWithItem:(void *)item;
- (__CFString)copySyncKeyWithItem:(void *)item;
- (id)copyAccountHashWithDatabase:(void *)database;
- (id)copyAttributesWithItem:(void *)item;
- (id)copyChangeTokenWithDatabase:(void *)database;
- (id)copyDeletedBookmarkSyncDataWithChange:(void *)change;
- (id)copyDeviceIdentifier;
- (id)copyFirstServerIdInFolderWithServerId:(id)id database:(void *)database;
- (id)copyLastServerIdInFolderWithServerId:(id)id database:(void *)database;
- (id)copyLocalIDsInFolderWithLocalID:(id)d database:(void *)database;
- (id)copyModifiedAttributesWithChange:(void *)change;
- (id)copySaveURLForAssetWithKey:(id)key item:(void *)item;
- (id)copyServerIdInFolderAfterServerId:(id)id database:(void *)database;
- (id)copyServerIdInFolderBeforeServerId:(id)id database:(void *)database;
- (id)copyServerIdsInFolderWithServerId:(id)id database:(void *)database;
- (id)copyUsernameAccountHashWithDatabase:(void *)database;
- (id)copyValueForKey:(id)key item:(void *)item;
- (int)changeTypeForChange:(void *)change;
- (int64_t)bookmarkTypeForChange:(void *)change;
- (int64_t)bookmarkTypeWithBookmark:(void *)bookmark;
- (int64_t)folderTypeForChange:(void *)change;
- (int64_t)folderTypeWithFolder:(void *)folder;
- (int64_t)itemTypeForChange:(void *)change;
- (int64_t)itemTypeWithItem:(void *)item;
- (int64_t)localCloudKitMigrationState:(void *)state;
- (void)beginMergingChangesWithDatabase:(void *)database;
- (void)clearAllSyncDataWithDatabase:(void *)database;
- (void)clearChangesWithChangeToken:(void *)token database:(void *)database;
- (void)clearlAllLocalBookmarksForAutomatedTestingWithDatabase:(void *)database;
- (void)closeDatabase:(void *)database shouldSave:(BOOL)save;
- (void)copyChangedItemWithChange:(void *)change;
- (void)copyDeviceIdentifier;
- (void)copyItemWithLocalID:(id)d database:(void *)database;
- (void)copyItemWithServerId:(id)id database:(void *)database;
- (void)createBookmarkWithType:(int64_t)type database:(void *)database;
- (void)createDatabase;
- (void)createFolderWithType:(int64_t)type database:(void *)database;
- (void)finishMergingChangesWithDatabase:(void *)database;
- (void)notifyForSaveOfAssetWithKey:(id)key item:(void *)item;
- (void)openDatabase:(void *)database;
- (void)performDeduplicationWithDatabase:(void *)database mode:(int64_t)mode;
- (void)removeItemWithServerId:(__CFString *)id database:(void *)database;
- (void)resetDeviceIdentifier;
- (void)saveDatabase:(void *)database;
- (void)setAccountHash:(id)hash database:(void *)database;
- (void)setChildrenOrder:(id)order forFolderWithServerId:(id)id database:(void *)database;
- (void)setDeletedBookmarkSyncData:(id)data change:(void *)change;
- (void)setLocalCloudKitMigrationState:(int64_t)state database:(void *)database;
- (void)setModifiedAttributes:(id)attributes item:(void *)item;
- (void)setServerId:(__CFString *)id item:(void *)item;
- (void)setSyncData:(__CFData *)data database:(void *)database;
- (void)setSyncData:(__CFData *)data item:(void *)item;
- (void)setSyncKey:(__CFString *)key item:(void *)item;
@end

@implementation WBBookmarkDBAccess

- (WBBookmarkDBAccess)initWithCollectionType:(int64_t)type storeOwner:(int64_t)owner
{
  v10.receiver = self;
  v10.super_class = WBBookmarkDBAccess;
  v6 = [(WBBookmarkDBAccess *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_collectionType = type;
    v6->_storeOwner = owner;
    v8 = v6;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = WBNSStringFromCollectionType(self->_collectionType);
  v6 = WBNSStringFromCollectionStoreOwner(self->_storeOwner);
  v7 = [v3 stringWithFormat:@"<%@: %p, type: %@, store owner: %@>", v4, self, v5, v6];

  return v7;
}

- (void)createDatabase
{
  v22 = *MEMORY[0x277D85DE8];
  collectionType = self->_collectionType;
  storeOwner = self->_storeOwner;
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v21 = 136315138;
    *&v21[4] = "WebBookmarkDatabaseCreate";
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s()", v21, 0xCu);
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [bundleIdentifier hasPrefix:@"com.apple.dataaccess"];

  if (collectionType == 1)
  {
    v8 = objc_opt_class();
    v9 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
    goto LABEL_7;
  }

  if (!collectionType)
  {
    v8 = objc_opt_class();
    v9 = +[WBCollectionConfiguration safariBookmarkCollectionConfiguration];
LABEL_7:
    v10 = v9;
    goto LABEL_9;
  }

  v10 = 0;
  v8 = 0;
LABEL_9:
  [v10 setStoreOwner:storeOwner];
  lockSync = [v8 lockSync];
  v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (lockSync)
  {
    if (v13)
    {
      *v21 = 136315138;
      *&v21[4] = "WebBookmarkDatabaseCreate";
      _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "@@ %s: Did successfully lock database", v21, 0xCu);
    }

    v14 = [[v8 alloc] initWithConfiguration:v10 checkIntegrity:0];
    v15 = v14;
    if (v14)
    {
      if (!v7 || ![v14 _syncType])
      {
        v19 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *v21 = 136315394;
          *&v21[4] = "WebBookmarkDatabaseCreate";
          *&v21[12] = 2114;
          *&v21[14] = v15;
          _os_log_impl(&dword_272C20000, v19, OS_LOG_TYPE_INFO, "<- %s -> database: %{public}@", v21, 0x16u);
        }

        v18 = v15;
        goto LABEL_27;
      }

      v16 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v21 = 136315138;
        *&v21[4] = "WebBookmarkDatabaseCreate";
        v17 = "<- %s -> database: NULL due to not running in data access process with DAV enabled";
LABEL_25:
        _os_log_impl(&dword_272C20000, v16, OS_LOG_TYPE_INFO, v17, v21, 0xCu);
      }
    }

    else
    {
      v16 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v21 = 136315138;
        *&v21[4] = "WebBookmarkDatabaseCreate";
        v17 = "<- %s -> database: NULL due to failure to allocate WebBookmarkCollection";
        goto LABEL_25;
      }
    }

    [v8 unlockSync];
    v18 = 0;
LABEL_27:

    goto LABEL_28;
  }

  if (v13)
  {
    *v21 = 136315138;
    *&v21[4] = "WebBookmarkDatabaseCreate";
    _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "<- %s -> database: NULL due to failure to obtain lock", v21, 0xCu);
  }

  v18 = 0;
LABEL_28:

  return v18;
}

- (void)openDatabase:(void *)database
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "BADatabaseOpen";
    v9 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v7, 0x16u);
  }

  databaseCopy2 = database;
  if (([databaseCopy2 maintainsSyncMetadata] & 1) == 0)
  {
    [databaseCopy2 beginSyncTransaction];
  }

  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "BADatabaseOpen";
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s", &v7, 0xCu);
  }
}

- (void)saveDatabase:(void *)database
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "BADatabaseSave";
    v9 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v7, 0x16u);
  }

  databaseCopy2 = database;
  if (([databaseCopy2 maintainsSyncMetadata] & 1) == 0)
  {
    [databaseCopy2 commitSyncTransaction];
  }

  [databaseCopy2 _postBookmarksDidReloadNotificationAndStartReadingListFetcherIfChangesWereMade];
  if (([databaseCopy2 maintainsSyncMetadata] & 1) == 0)
  {
    [databaseCopy2 beginSyncTransaction];
  }

  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "BADatabaseSave";
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s", &v7, 0xCu);
  }
}

- (void)closeDatabase:(void *)database shouldSave:(BOOL)save
{
  saveCopy = save;
  v16 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "BADatabaseClose";
    v12 = 2114;
    databaseCopy = database;
    v14 = 1024;
    v15 = saveCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, shouldSave: %d)", &v10, 0x1Cu);
  }

  databaseCopy2 = database;
  maintainsSyncMetadata = [databaseCopy2 maintainsSyncMetadata];
  if (saveCopy)
  {
    if ((maintainsSyncMetadata & 1) == 0)
    {
      [databaseCopy2 commitSyncTransaction];
    }

    [databaseCopy2 _restoreMissingSpecialBookmarksWithChangeNotification:0];
    [databaseCopy2 _postBookmarksDidReloadNotificationAndStartReadingListFetcherIfChangesWereMade];
  }

  else if ((maintainsSyncMetadata & 1) == 0)
  {
    [databaseCopy2 rollbackSyncTransaction];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [objc_opt_class() unlockSync];
    }
  }

  v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "BADatabaseClose";
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "<- %s", &v10, 0xCu);
  }
}

- (__CFData)copySyncDataWithDatabase:(void *)database
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "BADatabaseCopySyncData";
    v12 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v10, 0x16u);
  }

  databaseCopy2 = database;
  v6 = [databaseCopy2 syncDataForKey:@"BASyncData"];
  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (v6)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
    }

    else
    {
      v8 = @"(null)";
    }

    v10 = 136315394;
    v11 = "BADatabaseCopySyncData";
    v12 = 2114;
    databaseCopy = v8;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s -> Return data of size: %{public}@", &v10, 0x16u);
    if (v6)
    {
    }
  }

  return v6;
}

- (void)setSyncData:(__CFData *)data database:(void *)database
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (data)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithLong:CFDataGetLength(data)];
    }

    else
    {
      v7 = @"(null)";
    }

    v9 = 136315650;
    v10 = "BADatabaseSetSyncData";
    v11 = 2114;
    databaseCopy = database;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, data size: %{public}@)", &v9, 0x20u);
    if (data)
    {
    }
  }

  [database setSyncData:data forKey:@"BASyncData"];
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "BADatabaseSetSyncData";
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s", &v9, 0xCu);
  }
}

- (void)clearAllSyncDataWithDatabase:(void *)database
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "BADatabaseClearAllSyncData";
    v8 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v6, 0x16u);
  }

  [database _clearAllSyncData];
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "BADatabaseClearAllSyncData";
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "<- %s", &v6, 0xCu);
  }
}

- (__CFArray)copyChangesWithDatabase:(void *)database changeToken:(const void *)token
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "BADatabaseCopyChanges";
    v15 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v13, 0x16u);
  }

  databaseCopy2 = database;
  changeList = [databaseCopy2 changeList];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(databaseCopy2, "currentRecordGeneration")}];

  v10 = v9;
  *token = v10;
  v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "BADatabaseCopyChanges";
    v15 = 2114;
    databaseCopy = changeList;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> %{public}@, %{public}@", &v13, 0x20u);
  }

  return changeList;
}

- (void)clearChangesWithChangeToken:(void *)token database:(void *)database
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v26 = 136315650;
    v27 = "BADatabaseClearChangesForToken";
    v28 = 2114;
    databaseCopy = database;
    v30 = 2114;
    tokenCopy = token;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, %{public}@)", &v26, 0x20u);
  }

  databaseCopy2 = database;
  intValue = [token intValue];
  if ([databaseCopy2 currentRecordGeneration] != intValue)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(WBBookmarkDBAccess *)v9 clearChangesWithChangeToken:v10 database:v11, v12, v13, v14, v15, v16];
    }
  }

  if (([databaseCopy2 _clearChangeList] & 1) == 0)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [(WBBookmarkDBAccess *)v17 clearChangesWithChangeToken:v18 database:v19, v20, v21, v22, v23, v24];
    }
  }

  v25 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = 136315138;
    v27 = "BADatabaseClearChangesForToken";
    _os_log_impl(&dword_272C20000, v25, OS_LOG_TYPE_INFO, "<- %s", &v26, 0xCu);
  }
}

- (void)removeItemWithServerId:(__CFString *)id database:(void *)database
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    wb_stringByRedactingBookmarkDAVServerID = [(__CFString *)id wb_stringByRedactingBookmarkDAVServerID];
    v29 = 136315650;
    *v30 = "BADatabaseRemoveItemWithServerId";
    *&v30[8] = 2114;
    *&v30[10] = database;
    *&v30[18] = 2114;
    v31 = wb_stringByRedactingBookmarkDAVServerID;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, %{public}@)", &v29, 0x20u);
  }

  if (id)
  {
    databaseCopy = database;
    v10 = [databaseCopy bookmarkWithServerID:id excludeDeletedBookmarks:0];
    v11 = v10;
    if (v10)
    {
      if ([v10 isReadingListItem])
      {
        uUID = [v11 UUID];
        [databaseCopy clearReadingListArchiveWithUUID:uUID];
      }

      if ([v11 isReadingListFolder])
      {
        [databaseCopy clearAllReadingListArchives];
      }

      v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        identifier = [v11 identifier];
        wb_stringByRedactingBookmarkDAVServerID2 = [(__CFString *)id wb_stringByRedactingBookmarkDAVServerID];
        parentID = [v11 parentID];
        v29 = 67109634;
        *v30 = identifier;
        *&v30[4] = 2114;
        *&v30[6] = wb_stringByRedactingBookmarkDAVServerID2;
        *&v30[14] = 1024;
        *&v30[16] = parentID;
        _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "Deleting bookmark with ID %d and serverID %{public}@ from parent with ID %d", &v29, 0x18u);
      }

      [databaseCopy deleteBookmark:v11 leaveTombstone:0];
      v18 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      v29 = 136315138;
      *v30 = "BADatabaseRemoveItemWithServerId";
    }

    else
    {
      v28 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        [WBBookmarkDBAccess removeItemWithServerId:v28 database:?];
      }

      v18 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      v29 = 136315138;
      *v30 = "BADatabaseRemoveItemWithServerId";
    }

    _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_INFO, "<- %s", &v29, 0xCu);
LABEL_22:

    return;
  }

  v19 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    [(WBBookmarkDBAccess *)v19 removeItemWithServerId:v20 database:v21, v22, v23, v24, v25, v26];
  }

  v27 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v29 = 136315138;
    *v30 = "BADatabaseRemoveItemWithServerId";
    _os_log_impl(&dword_272C20000, v27, OS_LOG_TYPE_INFO, "<- %s", &v29, 0xCu);
  }
}

- (void)beginMergingChangesWithDatabase:(void *)database
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "BADatabaseBeginMergingChanges";
    v8 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v6, 0x16u);
  }

  [database _setMergeMode:1];
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "BADatabaseBeginMergingChanges";
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "<- %s", &v6, 0xCu);
  }
}

- (void)finishMergingChangesWithDatabase:(void *)database
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "BADatabaseFinishMergingChanges";
    v8 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v6, 0x16u);
  }

  [database _setMergeMode:0];
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "BADatabaseFinishMergingChanges";
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "<- %s", &v6, 0xCu);
  }
}

- (__CFString)copyServerIdWithItem:(void *)item
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "BAItemCopyServerId";
    v14 = 2114;
    itemCopy = item;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@)", &v12, 0x16u);
  }

  bookmark = [item bookmark];
  serverID = [bookmark serverID];
  v7 = [serverID copy];

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    wb_stringByRedactingBookmarkDAVServerID = [(__CFString *)v7 wb_stringByRedactingBookmarkDAVServerID];
    v12 = 136315394;
    v13 = "BAItemCopyServerId";
    v14 = 2114;
    itemCopy = wb_stringByRedactingBookmarkDAVServerID;
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v12, 0x16u);
  }

  return v7;
}

- (void)setServerId:(__CFString *)id item:(void *)item
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    wb_stringByRedactingBookmarkDAVServerID = [(__CFString *)id wb_stringByRedactingBookmarkDAVServerID];
    v14 = 136315650;
    v15 = "BAItemSetServerId";
    v16 = 2114;
    itemCopy = item;
    v18 = 2114;
    v19 = wb_stringByRedactingBookmarkDAVServerID;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@, %{public}@)", &v14, 0x20u);
  }

  itemCopy2 = item;
  bookmark = [itemCopy2 bookmark];
  if ([bookmark isInserted])
  {
    collection = [itemCopy2 collection];
    bookmark2 = [itemCopy2 bookmark];
    [collection setServerID:id forBookmark:bookmark2];
  }

  else
  {
    [bookmark setServerID:id];
  }

  v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "BAItemSetServerId";
    _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "<- %s", &v14, 0xCu);
  }
}

- (__CFString)copyParentServerIdWithItem:(void *)item
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "BAItemCopyParentServerId";
    v17 = 2114;
    itemCopy = item;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@)", &v15, 0x16u);
  }

  itemCopy2 = item;
  bookmark = [itemCopy2 bookmark];
  parentID = [bookmark parentID];

  collection = [itemCopy2 collection];

  v9 = [collection serverIDForBookmarkID:parentID];
  v10 = [v9 copy];

  v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    wb_stringByRedactingBookmarkDAVServerID = [(__CFString *)v10 wb_stringByRedactingBookmarkDAVServerID];
    v15 = 136315394;
    v16 = "BAItemCopyParentServerId";
    v17 = 2114;
    itemCopy = wb_stringByRedactingBookmarkDAVServerID;
    _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v15, 0x16u);
  }

  return v10;
}

- (__CFString)copySyncKeyWithItem:(void *)item
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "BAItemCopySyncKey";
    v12 = 2114;
    itemCopy = item;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@)", &v10, 0x16u);
  }

  bookmark = [item bookmark];
  syncKey = [bookmark syncKey];
  v7 = [syncKey copy];

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "BAItemCopySyncKey";
    v12 = 2114;
    itemCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> syncKey: %{public}@", &v10, 0x16u);
  }

  return v7;
}

- (void)setSyncKey:(__CFString *)key item:(void *)item
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "BAItemSetSyncKey";
    v13 = 2114;
    itemCopy = item;
    v15 = 2114;
    keyCopy = key;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@, syncKey: %{public}@)", &v11, 0x20u);
  }

  itemCopy2 = item;
  bookmark = [itemCopy2 bookmark];
  if ([bookmark isInserted])
  {
    collection = [itemCopy2 collection];
    [collection _setSyncKey:key forBookmark:bookmark];
  }

  else
  {
    [bookmark setSyncKey:key];
  }

  v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "BAItemSetSyncKey";
    _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "<- %s", &v11, 0xCu);
  }
}

- (__CFData)copySyncDataWithItem:(void *)item
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "BAItemCopySyncData";
    v14 = 2114;
    itemCopy = item;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@)", &v12, 0x16u);
  }

  itemCopy2 = item;
  bookmark = [itemCopy2 bookmark];
  syncData = [bookmark syncData];
  v8 = [syncData copy];

  v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (v8)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
    }

    else
    {
      v10 = @"(null)";
    }

    v12 = 136315394;
    v13 = "BAItemCopySyncData";
    v14 = 2114;
    itemCopy = v10;
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "<- %s -> Return data of size: %{public}@", &v12, 0x16u);
    if (v8)
    {
    }
  }

  return v8;
}

- (void)setSyncData:(__CFData *)data item:(void *)item
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (data)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithLong:CFDataGetLength(data)];
    }

    else
    {
      v7 = @"(null)";
    }

    v12 = 136315650;
    v13 = "BAItemSetSyncData";
    v14 = 2114;
    itemCopy = item;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@, data of size: %{public}@)", &v12, 0x20u);
    if (data)
    {
    }
  }

  itemCopy2 = item;
  bookmark = [itemCopy2 bookmark];
  if ([bookmark isInserted])
  {
    collection = [itemCopy2 collection];
    [collection _setSyncData:data forBookmark:bookmark];
  }

  else
  {
    [bookmark setSyncData:data];
  }

  v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "BAItemSetSyncData";
    _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s", &v12, 0xCu);
  }
}

- (int)changeTypeForChange:(void *)change
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "BAChangeGetChangeType";
    v10 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@)", &v8, 0x16u);
  }

  changeType = [change changeType];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "BAChangeGetChangeType";
    v10 = 1024;
    LODWORD(changeCopy) = changeType;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s -> %d", &v8, 0x12u);
  }

  return changeType;
}

- (void)copyChangedItemWithChange:(void *)change
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "BAChangeCopyChangedItem";
    v15 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@)", &v13, 0x16u);
  }

  changeCopy2 = change;
  if ([changeCopy2 changeType] == 2)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "BAChangeCopyChangedItem";
      _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s -> (null)", &v13, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v8 = [BABookmarkItem alloc];
    collection = [changeCopy2 collection];
    bookmark = [changeCopy2 bookmark];
    v7 = [(BABookmarkItem *)v8 initWithBookmarkCollection:collection bookmark:bookmark];

    v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "BAChangeCopyChangedItem";
      v15 = 2114;
      changeCopy = v7;
      _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v13, 0x16u);
    }
  }

  return v7;
}

- (__CFString)copyServerIdWithChange:(void *)change
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "BAChangeCopyServerId";
    v13 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@)", &v11, 0x16u);
  }

  bookmark = [change bookmark];
  serverID = [bookmark serverID];

  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    wb_stringByRedactingBookmarkDAVServerID = [(__CFString *)serverID wb_stringByRedactingBookmarkDAVServerID];
    v11 = 136315394;
    v12 = "BAChangeCopyServerId";
    v13 = 2114;
    changeCopy = wb_stringByRedactingBookmarkDAVServerID;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v11, 0x16u);
  }

  return serverID;
}

- (BOOL)changeIsDAVMoveChange:(void *)change
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "BAChangeIsMove";
    v11 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(%{public}@)", &v9, 0x16u);
  }

  bookmark = [change bookmark];
  v6 = [bookmark attributesMarkedAsModified:64];

  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "BAChangeIsMove";
    v11 = 1024;
    LODWORD(changeCopy) = v6;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s -> %d", &v9, 0x12u);
  }

  return v6;
}

- (int64_t)itemTypeForChange:(void *)change
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "CKBAChangeGetItemType";
    v11 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@)", &v9, 0x16u);
  }

  bookmark = [change bookmark];
  isFolder = [bookmark isFolder];

  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "CKBAChangeGetItemType";
    v11 = 2048;
    changeCopy = isFolder;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s -> %ld", &v9, 0x16u);
  }

  return isFolder;
}

- (int64_t)folderTypeForChange:(void *)change
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBAChangeGetFolder";
    v12 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(folder: %{public}@)", &v10, 0x16u);
  }

  bookmark = [change bookmark];
  specialID = [bookmark specialID];
  switch(specialID)
  {
    case 4:
      v7 = 0;
      break;
    case 1:
      v7 = 1;
      break;
    case 2:
      v7 = 2;
      break;
    case 3:
      v7 = 3;
      break;
    default:
      v7 = 0;
      break;
  }

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBAChangeGetFolder";
    v12 = 2048;
    changeCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %ld", &v10, 0x16u);
  }

  return v7;
}

- (int64_t)bookmarkTypeForChange:(void *)change
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "CKBAChangeGetBookmarkType";
    v10 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(bookmark: %{public}@)", &v8, 0x16u);
  }

  bookmark = [change bookmark];
  v6 = CKBABookmarkTypeForBookmark(bookmark);

  return v6;
}

- (id)copyDeviceIdentifier
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[WBBookmarkDBAccess copyDeviceIdentifier]";
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_INFO, "-> %s()", &v10, 0xCu);
  }

  v4 = [WebBookmarkCollection deviceIdentifierForCloudKitWithCollectionType:self->_collectionType generateIfNeeded:1];
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];

  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [WBBookmarkDBAccess copyDeviceIdentifier];
  }

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[WBBookmarkDBAccess copyDeviceIdentifier]";
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted", &v10, 0xCu);
  }

  return uUIDString;
}

- (void)resetDeviceIdentifier
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[WBBookmarkDBAccess resetDeviceIdentifier]";
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_INFO, "-> %s()", &v6, 0xCu);
  }

  [WebBookmarkCollection resetDeviceIdentifierForCloudKitWithCollectionType:self->_collectionType];
  v4 = [WebBookmarkCollection deviceIdentifierForCloudKitWithCollectionType:self->_collectionType generateIfNeeded:1];
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[WBBookmarkDBAccess resetDeviceIdentifier]";
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "<- %s", &v6, 0xCu);
  }
}

- (BOOL)performMaintenanceOnDatabase:(void *)database afterVersion:(id)version
{
  v20 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "CKBADatabasePerformMaintenanceAfterVersion";
    v16 = 2114;
    databaseCopy = database;
    v18 = 2114;
    v19 = versionCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, start version: %{public}@)", &v14, 0x20u);
  }

  databaseCopy2 = database;
  v8 = [@"605.2.2" safari_isVersionStringGreaterThanVersionString:versionCopy];
  v9 = [versionCopy safari_isVersionStringBetweenVersionString:@"606" andVersionString:@"606.1.16"];
  if ((v8 & 1) != 0 || v9)
  {
    fixCachedNumberOfChildrenIfNeeded = [databaseCopy2 fixCachedNumberOfChildrenIfNeeded];
  }

  else
  {
    fixCachedNumberOfChildrenIfNeeded = 0;
  }

  v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = "NO";
    if (fixCachedNumberOfChildrenIfNeeded)
    {
      v12 = "YES";
    }

    v14 = 136315394;
    v15 = "CKBADatabasePerformMaintenanceAfterVersion";
    v16 = 2080;
    databaseCopy = v12;
    _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> %s", &v14, 0x16u);
  }

  return fixCachedNumberOfChildrenIfNeeded;
}

- (int64_t)localCloudKitMigrationState:(void *)state
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "CKBADatabaseGetLocalCloudKitMigrationState";
    v10 = 2114;
    stateCopy = state;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v8, 0x16u);
  }

  localMigrationState = [state localMigrationState];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "CKBADatabaseGetLocalCloudKitMigrationState";
    v10 = 2048;
    stateCopy = localMigrationState;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s -> %lld", &v8, 0x16u);
  }

  return localMigrationState;
}

- (void)setLocalCloudKitMigrationState:(int64_t)state database:(void *)database
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "CKBADatabaseSetLocalCloudKitMigrationState";
    v10 = 2114;
    databaseCopy = database;
    v12 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, migration state: %lld)", &v8, 0x20u);
  }

  [database setLocalMigrationState:state generateDeviceIdentifierIfNeeded:1];
  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "CKBADatabaseSetLocalCloudKitMigrationState";
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s", &v8, 0xCu);
  }
}

- (id)copyUsernameAccountHashWithDatabase:(void *)database
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "CKBADatabaseCopyUsernameAccountHash";
    v10 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v8, 0x16u);
  }

  deprecatedUsernameAccountHash = [database deprecatedUsernameAccountHash];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "CKBADatabaseCopyUsernameAccountHash";
    v10 = 2114;
    databaseCopy = deprecatedUsernameAccountHash;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v8, 0x16u);
  }

  return deprecatedUsernameAccountHash;
}

- (id)copyAccountHashWithDatabase:(void *)database
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "CKBADatabaseCopyAccountHash";
    v10 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v8, 0x16u);
  }

  accountHash = [database accountHash];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "CKBADatabaseCopyAccountHash";
    v10 = 2114;
    databaseCopy = accountHash;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v8, 0x16u);
  }

  return accountHash;
}

- (void)setAccountHash:(id)hash database:(void *)database
{
  v14 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "CKBADatabaseSetAccountHash";
    v10 = 2114;
    databaseCopy = database;
    v12 = 2114;
    v13 = hashCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, account hash: %{public}@)", &v8, 0x20u);
  }

  [database updateAccountHash:hashCopy];
  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "CKBADatabaseSetAccountHash";
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s", &v8, 0xCu);
  }
}

- (id)copyChangeTokenWithDatabase:(void *)database
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBADatabaseCopyChangeToken";
    v12 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v10, 0x16u);
  }

  v5 = MEMORY[0x277CCABB0];
  databaseCopy2 = database;
  v7 = [v5 numberWithInteger:{objc_msgSend(databaseCopy2, "currentRecordGeneration")}];

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBADatabaseCopyChangeToken";
    v12 = 2114;
    databaseCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v10, 0x16u);
  }

  return v7;
}

- (void)copyItemWithLocalID:(id)d database:(void *)database
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v16 = 136315650;
    v17 = "CKBADatabaseCopyItemWithLocalID";
    v18 = 2114;
    databaseCopy = database;
    v20 = 2114;
    v21 = dCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, %{public}@)", &v16, 0x20u);
  }

  if (!dCopy)
  {
    intValue = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [dCopy intValue];
LABEL_7:
    databaseCopy2 = database;
    v9 = [databaseCopy2 bookmarkWithID:intValue];
    if (v9)
    {
      v10 = [[BABookmarkItem alloc] initWithBookmarkCollection:databaseCopy2 bookmark:v9];
      v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v16 = 136315394;
        v17 = "CKBADatabaseCopyItemWithLocalID";
        v18 = 2114;
        databaseCopy = v10;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v16, 0x16u);
      }
    }

    else
    {
      v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 136315138;
        v17 = "CKBADatabaseCopyItemWithLocalID";
        _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "<- %s -> (null)", &v16, 0xCu);
      }

      v10 = 0;
    }

    goto LABEL_19;
  }

  v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [WBBookmarkDBAccess copyItemWithLocalID:v12 database:?];
  }

  v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "CKBADatabaseCopyItemWithLocalID";
    _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "<- %s -> (null)", &v16, 0xCu);
  }

  v10 = 0;
LABEL_19:

  return v10;
}

- (id)copyLocalIDsInFolderWithLocalID:(id)d database:(void *)database
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v16 = 136315650;
    v17 = "CKBADatabaseCopyLocalIDsInFolderWithLocalID";
    v18 = 2114;
    databaseCopy = database;
    v20 = 2114;
    v21 = dCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, %{public}@)", &v16, 0x20u);
  }

  if (!dCopy)
  {
    intValue = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [dCopy intValue];
LABEL_7:
    v8 = [database syncableBookmarksIDsInFolderWithBookmarkID:intValue];
    v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v16 = 136315394;
        v17 = "CKBADatabaseCopyLocalIDsInFolderWithLocalID";
        v18 = 2114;
        databaseCopy = v8;
        _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v16, 0x16u);
      }

      v11 = v8;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [WBBookmarkDBAccess copyLocalIDsInFolderWithLocalID:database:];
      }

      v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 136315138;
        v17 = "CKBADatabaseCopyLocalIDsInFolderWithLocalID";
        _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "<- %s -> (null)", &v16, 0xCu);
      }
    }

    goto LABEL_21;
  }

  v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [WBBookmarkDBAccess copyLocalIDsInFolderWithLocalID:v12 database:?];
  }

  v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "CKBADatabaseCopyLocalIDsInFolderWithLocalID";
    _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "<- %s -> (null)", &v16, 0xCu);
  }

  v8 = [MEMORY[0x277CBEB98] set];
LABEL_21:

  return v8;
}

- (void)copyItemWithServerId:(id)id database:(void *)database
{
  v19 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "CKBADatabaseCopyItemWithServerId";
    v15 = 2114;
    databaseCopy = database;
    v17 = 2114;
    v18 = idCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, %{public}@)", &v13, 0x20u);
  }

  databaseCopy2 = database;
  v8 = [databaseCopy2 bookmarkWithServerID:idCopy excludeDeletedBookmarks:1];
  if (v8)
  {
    v9 = [[BABookmarkItem alloc] initWithBookmarkCollection:databaseCopy2 bookmark:v8];
    v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "CKBADatabaseCopyItemWithServerId";
      v15 = 2114;
      databaseCopy = v9;
      _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v13, 0x16u);
    }
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "CKBADatabaseCopyItemWithServerId";
      _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> (null)", &v13, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)addItem:(void *)item underFolderWithServerId:(id)id database:(void *)database
{
  v41 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v33 = 136315906;
    v34 = "CKBADatabaseAddItemUnderFolderWithServerId";
    v35 = 2114;
    databaseCopy = database;
    v37 = 2114;
    itemCopy = item;
    v39 = 2114;
    v40 = idCopy;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, item: %{public}@, parentSyncServerId: %{public}@)", &v33, 0x2Au);
  }

  itemCopy2 = item;
  collection = [itemCopy2 collection];
  bookmark = [itemCopy2 bookmark];
  v12 = [collection bookmarkIDForServerID:idCopy excludeDeletedBookmarks:1];
  if (v12 == 0x7FFFFFFF)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v33 = 136315394;
      v34 = "saveBookmarkUnderFolderWithServerId";
      v35 = 2114;
      databaseCopy = idCopy;
      _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "@@ %s: Parent server ID %{public}@ does not point to any item in the local database", &v33, 0x16u);
    }

    goto LABEL_6;
  }

  v15 = v12;
  if ([collection isMerging])
  {
    if ([bookmark specialID])
    {
      v16 = [collection bookmarkWithSpecialID:{objc_msgSend(bookmark, "specialID")}];
      if (v16)
      {
LABEL_10:
        [collection _mergeBookmark:bookmark withOriginalBookmark:v16 prioritizeOriginalBookmarkAttributes:0 generateChangesIfNeeded:1];
        [collection _markBookmarkID:objc_msgSend(v16 added:{"identifier"), 0}];
        serverID = [bookmark serverID];
        [collection setServerID:serverID forBookmark:v16];

        syncData = [bookmark syncData];
        [collection _setSyncData:syncData forBookmark:v16];

        syncKey = [bookmark syncKey];
        [collection _setSyncKey:syncKey forBookmark:v16];

        [itemCopy2 setBookmark:v16];
        v20 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [WBBookmarkDBAccess addItem:v16 underFolderWithServerId:v20 database:?];
        }

        v14 = 1;
        goto LABEL_24;
      }
    }

    else
    {
      isFolder = [bookmark isFolder];
      title = [bookmark title];
      if (isFolder)
      {
        v16 = [collection _mergeCandidateFolderWithTitle:title parent:v15 mergeMode:{objc_msgSend(collection, "_mergeMode")}];
      }

      else
      {
        address = [bookmark address];
        v16 = [collection _mergeCandidateBookmarkWithTitle:title address:address parent:v15 mergeMode:{objc_msgSend(collection, "_mergeMode")}];
      }

      if (v16)
      {
        goto LABEL_10;
      }
    }
  }

  if (([bookmark isInserted] & 1) == 0)
  {
    [bookmark _setParentID:v15];
    [collection _saveBookmark:bookmark withSpecialID:objc_msgSend(bookmark updateGenerationIfNeeded:{"specialID"), 0}];
    [collection _markBookmarkID:objc_msgSend(bookmark added:{"identifier"), 0}];
    serverID2 = [bookmark serverID];
    [collection setServerID:serverID2 forBookmark:bookmark];

    syncData2 = [bookmark syncData];
    [collection _setSyncData:syncData2 forBookmark:bookmark];

    syncKey2 = [bookmark syncKey];
    [collection _setSyncKey:syncKey2 forBookmark:bookmark];

    identifier = [bookmark identifier];
    isSelectedFavoritesFolder = [bookmark isSelectedFavoritesFolder];
    [collection updateSelectedFavoritesFolderWithBookmarkID:identifier wasFavoritesFolder:0 isFavoritesFolder:{objc_msgSend(isSelectedFavoritesFolder, "BOOLValue")}];

    v24 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v14 = 1;
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v33 = 136315650;
    v34 = "saveBookmarkUnderFolderWithServerId";
    v35 = 2114;
    databaseCopy = itemCopy2;
    v37 = 2114;
    itemCopy = idCopy;
    v25 = "@@ %s: Record %{public}@ was insert in parent record with server ID %{public}@";
    goto LABEL_23;
  }

  if ([bookmark parentID] == v15)
  {
    v24 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v14 = 1;
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v33 = 136315650;
    v34 = "saveBookmarkUnderFolderWithServerId";
    v35 = 2114;
    databaseCopy = itemCopy2;
    v37 = 2114;
    itemCopy = idCopy;
    v25 = "@@ %s: Record %{public}@ is already inside parent record with server ID %{public}@";
    goto LABEL_23;
  }

  if (![collection _moveBookmark:bookmark toFolderWithID:v15 detectCycles:1])
  {
LABEL_6:
    v14 = 0;
    goto LABEL_24;
  }

  v24 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  v14 = 1;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v33 = 136315650;
    v34 = "saveBookmarkUnderFolderWithServerId";
    v35 = 2114;
    databaseCopy = itemCopy2;
    v37 = 2114;
    itemCopy = idCopy;
    v25 = "@@ %s: Record %{public}@ did move to parent record with server ID %{public}@";
LABEL_23:
    _os_log_impl(&dword_272C20000, v24, OS_LOG_TYPE_INFO, v25, &v33, 0x20u);
  }

LABEL_24:

  v31 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v33 = 136315394;
    v34 = "CKBADatabaseAddItemUnderFolderWithServerId";
    v35 = 1024;
    LODWORD(databaseCopy) = v14;
    _os_log_impl(&dword_272C20000, v31, OS_LOG_TYPE_INFO, "<- %s -> %d", &v33, 0x12u);
  }

  return v14;
}

- (void)performDeduplicationWithDatabase:(void *)database mode:(int64_t)mode
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "CKBADatabasePerformDeduplication";
    v10 = 2114;
    databaseCopy = database;
    v12 = 2048;
    modeCopy = mode;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, mode: %ld)", &v8, 0x20u);
  }

  [database _deduplicateBookmarksForSyncingAndTrackChanges:mode == 2 considerBookmarksWithSyncDataAsUnique:mode == 1];
  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "CKBADatabasePerformDeduplication";
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s", &v8, 0xCu);
  }
}

- (id)copyServerIdsInFolderWithServerId:(id)id database:(void *)database
{
  v30 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    wb_stringByRedactingBookmarkDAVServerID = [idCopy wb_stringByRedactingBookmarkDAVServerID];
    *buf = 136315650;
    v25 = "CKBADatabaseCopyServerIdsInFolderWithServerId";
    v26 = 2114;
    databaseCopy = database;
    v28 = 2114;
    v29 = wb_stringByRedactingBookmarkDAVServerID;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, %{public}@)", buf, 0x20u);
  }

  v9 = [database serverIDsInFolderWithServerID:idCopy excludeDeletedBookmarks:1];
  v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v9;
    v12 = [MEMORY[0x277CBEB58] set];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:buf count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          wb_stringByRedactingBookmarkDAVServerID2 = [*(*(&v20 + 1) + 8 * v17) wb_stringByRedactingBookmarkDAVServerID];
          [v12 addObject:wb_stringByRedactingBookmarkDAVServerID2];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:buf count:16];
      }

      while (v15);
    }

    *buf = 136315394;
    v25 = "CKBADatabaseCopyServerIdsInFolderWithServerId";
    v26 = 2114;
    databaseCopy = v12;
    _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", buf, 0x16u);
  }

  return v9;
}

- (void)setChildrenOrder:(id)order forFolderWithServerId:(id)id database:(void *)database
{
  v22 = *MEMORY[0x277D85DE8];
  orderCopy = order;
  idCopy = id;
  v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    wb_stringByRedactingBookmarkDAVServerID = [idCopy wb_stringByRedactingBookmarkDAVServerID];
    v12 = [orderCopy safari_mapObjectsUsingBlock:&__block_literal_global_1];
    v14 = 136315906;
    v15 = "CKBADatabaseSetChildrenOrderForFolderWithServerId";
    v16 = 2114;
    databaseCopy = database;
    v18 = 2114;
    v19 = wb_stringByRedactingBookmarkDAVServerID;
    v20 = 2114;
    v21 = v12;
    _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, %{public}@, %{public}@)", &v14, 0x2Au);
  }

  [database _orderChildrenWithServerIDs:orderCopy inFolderWithServerID:idCopy excludeDeletedBookmarks:1];
  v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "CKBADatabaseSetChildrenOrderForFolderWithServerId";
    _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "<- %s", &v14, 0xCu);
  }
}

- (id)copyServerIdInFolderBeforeServerId:(id)id database:(void *)database
{
  v16 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "CKBADatabaseCopyServerIdInFolderBeforeServerId";
    v12 = 2114;
    databaseCopy = database;
    v14 = 2114;
    v15 = idCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, request before targetItemId: %{public}@)", &v10, 0x20u);
  }

  v7 = [database _serverIDBeforeServerID:idCopy];
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBADatabaseCopyServerIdInFolderBeforeServerId";
    v12 = 2114;
    databaseCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v10, 0x16u);
  }

  return v7;
}

- (id)copyServerIdInFolderAfterServerId:(id)id database:(void *)database
{
  v16 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "CKBADatabaseCopyServerIdInFolderAfterServerId";
    v12 = 2114;
    databaseCopy = database;
    v14 = 2114;
    v15 = idCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, request after targetItemId: %{public}@)", &v10, 0x20u);
  }

  v7 = [database _serverIDAfterServerID:idCopy];
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBADatabaseCopyServerIdInFolderAfterServerId";
    v12 = 2114;
    databaseCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v10, 0x16u);
  }

  return v7;
}

- (id)copyFirstServerIdInFolderWithServerId:(id)id database:(void *)database
{
  v16 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "CKBADatabaseCopyFirstServerIdInFolderWithServerId";
    v12 = 2114;
    databaseCopy = database;
    v14 = 2114;
    v15 = idCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, folderServerId: %{public}@)", &v10, 0x20u);
  }

  v7 = [database _firstServerIDInFolderWithServerID:idCopy];
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBADatabaseCopyFirstServerIdInFolderWithServerId";
    v12 = 2114;
    databaseCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v10, 0x16u);
  }

  return v7;
}

- (id)copyLastServerIdInFolderWithServerId:(id)id database:(void *)database
{
  v16 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "CKBADatabaseCopyLastServerIdInFolderWithServerId";
    v12 = 2114;
    databaseCopy = database;
    v14 = 2114;
    v15 = idCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, folderServerId: %{public}@)", &v10, 0x20u);
  }

  v7 = [database _lastServerIDInFolderWithServerID:idCopy];
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBADatabaseCopyLastServerIdInFolderWithServerId";
    v12 = 2114;
    databaseCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v10, 0x16u);
  }

  return v7;
}

- (int64_t)itemTypeWithItem:(void *)item
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "CKBAItemGetItemType";
    v11 = 2114;
    itemCopy = item;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@)", &v9, 0x16u);
  }

  bookmark = [item bookmark];
  isFolder = [bookmark isFolder];

  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "CKBAItemGetItemType";
    v11 = 2048;
    itemCopy = isFolder;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s -> %ld", &v9, 0x16u);
  }

  return isFolder;
}

- (BOOL)item:(void *)item isInFolderWithServerSyncId:(id)id
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v19 = 136315650;
    v20 = "CKBAItemGetIsInFolderWithServerSyncId";
    v21 = 2114;
    itemCopy = item;
    v23 = 2112;
    v24 = idCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@, parentRecordName: %@)", &v19, 0x20u);
  }

  itemCopy2 = item;
  bookmark = [itemCopy2 bookmark];
  if ([bookmark isInserted])
  {
    collection = [itemCopy2 collection];
    parentID = [bookmark parentID];
    if (idCopy || parentID)
    {
      if (idCopy)
      {
        v14 = [collection serverIDForBookmarkID:parentID];
        v12 = [v14 isEqualToString:idCopy];
        v15 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = "NO";
          if (v12)
          {
            v16 = "YES";
          }

          v19 = 136315394;
          v20 = "CKBAItemGetIsInFolderWithServerSyncId";
          v21 = 2080;
          itemCopy = v16;
          _os_log_impl(&dword_272C20000, v15, OS_LOG_TYPE_INFO, "<- %s -> %s", &v19, 0x16u);
        }
      }

      else
      {
        v17 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v19 = 136315138;
          v20 = "CKBAItemGetIsInFolderWithServerSyncId";
          _os_log_impl(&dword_272C20000, v17, OS_LOG_TYPE_INFO, "<- %s -> NO", &v19, 0xCu);
        }

        LOBYTE(v12) = 0;
      }
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      LOBYTE(v12) = 1;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v19 = 136315138;
        v20 = "CKBAItemGetIsInFolderWithServerSyncId";
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> YES", &v19, 0xCu);
      }
    }
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v19 = 136315138;
      v20 = "CKBAItemGetIsInFolderWithServerSyncId";
      _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "<- %s -> NO", &v19, 0xCu);
    }

    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)item:(void *)item isEqualToItem:(void *)toItem
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "CKBAItemIsEqualToItem";
    v14 = 2114;
    itemCopy = item;
    v16 = 2114;
    toItemCopy = toItem;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(item1: %{public}@, item2: %{public}@)", &v12, 0x20u);
  }

  bookmark = [item bookmark];
  bookmark2 = [toItem bookmark];
  v9 = [bookmark isEqualToBookmark:bookmark2];
  v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "CKBAItemIsEqualToItem";
    v14 = 1024;
    LODWORD(itemCopy) = v9;
    _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "<- %s -> %d", &v12, 0x12u);
  }

  return v9;
}

- (int64_t)folderTypeWithFolder:(void *)folder
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBAFolderGetFolderType";
    v12 = 2114;
    folderCopy = folder;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(folder: %{public}@)", &v10, 0x16u);
  }

  bookmark = [folder bookmark];
  specialID = [bookmark specialID];
  switch(specialID)
  {
    case 4:
      v7 = 0;
      break;
    case 1:
      v7 = 1;
      break;
    case 2:
      v7 = 2;
      break;
    case 3:
      v7 = 3;
      break;
    default:
      v7 = 0;
      break;
  }

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "CKBAFolderGetFolderType";
    v12 = 2048;
    folderCopy = v7;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "<- %s -> %ld", &v10, 0x16u);
  }

  return v7;
}

- (void)createFolderWithType:(int64_t)type database:(void *)database
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "CKBADatabaseCreateFolder";
    v16 = 2114;
    databaseCopy = database;
    v18 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, folder type: %lld)", &v14, 0x20u);
  }

  databaseCopy2 = database;
  v8 = [WebBookmark alloc];
  configuration = [databaseCopy2 configuration];
  v10 = -[WebBookmark initFolderWithParentID:collectionType:](v8, "initFolderWithParentID:collectionType:", 0, [configuration collectionType]);

  if ((type - 1) <= 2 && *off_279E75430[type - 1])
  {
    [v10 markSpecial:?];
  }

  [v10 setSubtype:type == 4];
  v11 = [[BABookmarkItem alloc] initWithBookmarkCollection:databaseCopy2 bookmark:v10];
  v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "CKBADatabaseCreateFolder";
    v16 = 2114;
    databaseCopy = v11;
    _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v14, 0x16u);
  }

  return v11;
}

- (int64_t)bookmarkTypeWithBookmark:(void *)bookmark
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "CKBABookmarkGetBookmarkType";
    v10 = 2114;
    bookmarkCopy = bookmark;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(bookmark: %{public}@)", &v8, 0x16u);
  }

  bookmark = [bookmark bookmark];
  v6 = CKBABookmarkTypeForBookmark(bookmark);

  return v6;
}

- (void)createBookmarkWithType:(int64_t)type database:(void *)database
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v16 = 136315650;
    v17 = "CKBADatabaseCreateBookmark";
    v18 = 2114;
    databaseCopy = database;
    v20 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@, bookmark type: %lld)", &v16, 0x20u);
  }

  databaseCopy2 = database;
  switch(type)
  {
    case 2:
      v11 = [WebBookmark alloc];
      currentDeviceIdentifier = [databaseCopy2 currentDeviceIdentifier];
      configuration = [databaseCopy2 configuration];
      v10 = -[WebBookmark initWithTitle:address:parentID:subtype:deviceIdentifier:collectionType:](v11, "initWithTitle:address:parentID:subtype:deviceIdentifier:collectionType:", &stru_288259858, &stru_288259858, 0, 1, currentDeviceIdentifier, [configuration collectionType]);

      goto LABEL_9;
    case 1:
      v10 = [[WebBookmark alloc] initReadingListBookmarkWithTitle:&stru_288259858 address:&stru_288259858 previewText:&stru_288259858];
      goto LABEL_11;
    case 0:
      v8 = [WebBookmark alloc];
      currentDeviceIdentifier = [databaseCopy2 configuration];
      v10 = -[WebBookmark initWithTitle:address:collectionType:](v8, "initWithTitle:address:collectionType:", &stru_288259858, &stru_288259858, [currentDeviceIdentifier collectionType]);
LABEL_9:

      goto LABEL_11;
  }

  v10 = 0;
LABEL_11:
  v13 = [[BABookmarkItem alloc] initWithBookmarkCollection:databaseCopy2 bookmark:v10];
  v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "CKBADatabaseCreateBookmark";
    v18 = 2114;
    databaseCopy = v13;
    _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", &v16, 0x16u);
  }

  return v13;
}

- (BOOL)changeIsMoveChange:(void *)change
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "CKBAChangeGetWasBookmarkMoved";
    v11 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@)", &v9, 0x16u);
  }

  bookmark = [change bookmark];
  if ([bookmark attributesMarkedAsModified:64])
  {
    v6 = 1;
  }

  else
  {
    v6 = [bookmark attributesMarkedAsModified:4];
  }

  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "CKBAChangeGetWasBookmarkMoved";
    v11 = 1024;
    LODWORD(changeCopy) = v6;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "<- %s -> %d", &v9, 0x12u);
  }

  return v6;
}

- (id)copyDeletedBookmarkSyncDataWithChange:(void *)change
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "CKBAChangeCopyDeletedBookmarkSyncData";
    v15 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@)", &v13, 0x16u);
  }

  changeCopy2 = change;
  if ([changeCopy2 changeType] == 2)
  {
    bookmark = [changeCopy2 bookmark];
    syncData = [bookmark syncData];

    v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [syncData length];
      v13 = 136315650;
      v14 = "CKBAChangeCopyDeletedBookmarkSyncData";
      v15 = 2048;
      changeCopy = syncData;
      v17 = 2048;
      v18 = v10;
      _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "<- %s -> syncData %p of size: %ld", &v13, 0x20u);
    }
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "CKBAChangeCopyDeletedBookmarkSyncData";
      _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> (null)", &v13, 0xCu);
    }

    syncData = 0;
  }

  return syncData;
}

- (void)setDeletedBookmarkSyncData:(id)data change:(void *)change
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v21 = 136315906;
    v22 = "CKBAChangeSetDeletedBookmarkSyncData";
    v23 = 2114;
    changeCopy = change;
    v25 = 2048;
    v26 = dataCopy;
    v27 = 2048;
    v28 = [dataCopy length];
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@, syncData %p of size: %zd)", &v21, 0x2Au);
  }

  changeCopy2 = change;
  bookmark = [changeCopy2 bookmark];
  if ([changeCopy2 changeType] == 2)
  {
    if ([bookmark isInserted])
    {
      collection = [changeCopy2 collection];
      [collection _setSyncData:dataCopy forBookmark:bookmark];

      v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v21 = 136315138;
        v22 = "CKBAChangeSetDeletedBookmarkSyncData";
LABEL_15:
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s", &v21, 0xCu);
      }
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(WBBookmarkDBAccess *)v13 setDeletedBookmarkSyncData:v14 change:v15, v16, v17, v18, v19, v20];
      }

      v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v21 = 136315138;
        v22 = "CKBAChangeSetDeletedBookmarkSyncData";
        goto LABEL_15;
      }
    }
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(WBBookmarkDBAccess *)v12 setDeletedBookmarkSyncData:changeCopy2 change:bookmark];
    }

    v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "CKBAChangeSetDeletedBookmarkSyncData";
      goto LABEL_15;
    }
  }
}

- (id)copyModifiedAttributesWithChange:(void *)change
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "CKBAChangeCopyModifiedAttributes";
    v15 = 2114;
    changeCopy = change;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(change: %{public}@)", &v13, 0x16u);
  }

  changeCopy2 = change;
  bookmark = [changeCopy2 bookmark];
  v7 = [changeCopy2 changeType] == 0;
  collection = [changeCopy2 collection];

  v9 = copyBookmarkAttributes(bookmark, collection, v7);

  v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [WBBookmarkDBAccess copyModifiedAttributesWithChange:];
  }

  v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "CKBAChangeCopyModifiedAttributes";
    _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted", &v13, 0xCu);
  }

  return v9;
}

- (id)copyAttributesWithItem:(void *)item
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "CKBAItemCopyAttributes";
    v19 = 2114;
    itemCopy = item;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@)", &v17, 0x16u);
  }

  v5 = MEMORY[0x277CBEB38];
  itemCopy2 = item;
  v7 = [v5 alloc];
  bookmark = [itemCopy2 bookmark];
  collection = [itemCopy2 collection];
  v10 = copyBookmarkAttributes(bookmark, collection, 1);
  v11 = [v7 initWithDictionary:v10 copyItems:1];

  null = [MEMORY[0x277CBEB68] null];

  v13 = [v11 allKeysForObject:null];
  [v11 removeObjectsForKeys:v13];

  v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [WBBookmarkDBAccess copyAttributesWithItem:];
  }

  v15 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "CKBAItemCopyAttributes";
    _os_log_impl(&dword_272C20000, v15, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted", &v17, 0xCu);
  }

  return v11;
}

- (void)setModifiedAttributes:(id)attributes item:(void *)item
{
  v104 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "CKBAItemSetModifiedAttributes";
    *&buf[12] = 2114;
    *&buf[14] = item;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@)", buf, 0x16u);
  }

  v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [WBBookmarkDBAccess setModifiedAttributes:item:];
  }

  itemCopy = item;
  bookmark = [itemCopy bookmark];
  collection = [itemCopy collection];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __CKBAItemSetModifiedAttributes_block_invoke;
  v101 = &unk_279E753F0;
  v11 = bookmark;
  v102 = v11;
  v12 = collection;
  v103 = v12;
  v13 = MEMORY[0x2743D6830](buf);
  v14 = [attributesCopy objectForKeyedSubscript:@"Title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = MEMORY[0x277CCABB0];
      v17 = v15;
      v18 = [v16 numberWithUnsignedInteger:{-[__CFString length](v14, "length")}];
      v96 = 136315394;
      v97 = "CKBAItemSetModifiedAttributes";
      v98 = 2114;
      v99 = v18;
      _os_log_impl(&dword_272C20000, v17, OS_LOG_TYPE_INFO, "@@ %s: Set title to value of length: %{public}@", &v96, 0x16u);
    }

    v19 = v11;
    v20 = v14;
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    v22 = [(__CFString *)v14 isEqual:null];

    if (!v22)
    {
      goto LABEL_14;
    }

    v23 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v96 = 136315138;
      v97 = "CKBAItemSetModifiedAttributes";
      _os_log_impl(&dword_272C20000, v23, OS_LOG_TYPE_INFO, "@@ %s: Set title to value of length: (null)", &v96, 0xCu);
    }

    v20 = &stru_288259858;
    v19 = v11;
  }

  [v19 setTitle:v20];
LABEL_14:
  if (![v11 isFolder])
  {
    v32 = [attributesCopy objectForKeyedSubscript:@"URL"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      absoluteString = [v32 absoluteString];
      v34 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = MEMORY[0x277CCABB0];
        v36 = v34;
        v37 = [v35 numberWithUnsignedInteger:{objc_msgSend(absoluteString, "length")}];
        v96 = 136315394;
        v97 = "CKBAItemSetModifiedAttributes";
        v98 = 2114;
        v99 = v37;
        _os_log_impl(&dword_272C20000, v36, OS_LOG_TYPE_INFO, "@@ %s: Set URL to value of length: %{public}@", &v96, 0x16u);
      }

      [v11 setAddress:absoluteString];
    }

    else
    {
      null2 = [MEMORY[0x277CBEB68] null];
      v39 = [v32 isEqual:null2];

      if (v39)
      {
        v40 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v96 = 136315138;
          v97 = "CKBAItemSetModifiedAttributes";
          _os_log_impl(&dword_272C20000, v40, OS_LOG_TYPE_INFO, "@@ %s: Set URL to value of length: (null)", &v96, 0xCu);
        }

        [v11 setAddress:&stru_288259858];
      }
    }

    v41 = [attributesCopy objectForKeyedSubscript:@"ShowIconOnly"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v96 = 136315394;
        v97 = "CKBAItemSetModifiedAttributes";
        v98 = 2112;
        v99 = v41;
        _os_log_impl(&dword_272C20000, v42, OS_LOG_TYPE_INFO, "@@ %s: Set showIconOnly to value: %@", &v96, 0x16u);
      }

      bOOLValue = [v41 BOOLValue];
    }

    else
    {
      null3 = [MEMORY[0x277CBEB68] null];
      v45 = [v41 isEqual:null3];

      if (!v45)
      {
        goto LABEL_38;
      }

      v46 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v96 = 136315138;
        v97 = "CKBAItemSetModifiedAttributes";
        _os_log_impl(&dword_272C20000, v46, OS_LOG_TYPE_INFO, "@@ %s: Set showIconOnly to value: 0", &v96, 0xCu);
      }

      bOOLValue = 0;
    }

    [v11 setShowIconOnly:bOOLValue];
LABEL_38:
    v47 = [attributesCopy objectForKeyedSubscript:@"DateAdded"];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v49 = v47;
    if ((isKindOfClass & 1) == 0)
    {
      null4 = [MEMORY[0x277CBEB68] null];
      v51 = [v47 isEqual:null4];

      if (!v51)
      {
        goto LABEL_42;
      }

      v49 = 0;
    }

    [v11 setDateAdded:v49];
LABEL_42:
    if (([v11 isReadingListItem] & 1) == 0)
    {
      v13[2](v13);
      v63 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        goto LABEL_100;
      }

      v96 = 136315138;
      v97 = "CKBAItemSetModifiedAttributes";
      goto LABEL_83;
    }

    v52 = [attributesCopy objectForKeyedSubscript:@"DateLastViewed"];

    objc_opt_class();
    v53 = objc_opt_isKindOfClass();
    v54 = v52;
    if ((v53 & 1) == 0)
    {
      null5 = [MEMORY[0x277CBEB68] null];
      v56 = [v52 isEqual:null5];

      if (!v56)
      {
        goto LABEL_47;
      }

      v54 = 0;
    }

    [v11 setReadingListDateLastViewed:v54];
LABEL_47:
    v57 = [attributesCopy objectForKeyedSubscript:@"PreviewText"];

    objc_opt_class();
    v58 = objc_opt_isKindOfClass();
    v59 = v57;
    if ((v58 & 1) == 0)
    {
      null6 = [MEMORY[0x277CBEB68] null];
      v61 = [v57 isEqual:null6];

      if (!v61)
      {
LABEL_51:
        v47 = [attributesCopy wb_URLForKey:@"ImageURL" isValid:0];

        if (v47)
        {
          absoluteString2 = [v47 absoluteString];
          [v11 setReadingListIconURL:absoluteString2];
        }

        v13[2](v13);
        v63 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (!os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          goto LABEL_100;
        }

        v96 = 136315138;
        v97 = "CKBAItemSetModifiedAttributes";
LABEL_83:
        _os_log_impl(&dword_272C20000, v63, OS_LOG_TYPE_INFO, "<- %s", &v96, 0xCu);
        goto LABEL_100;
      }

      v59 = 0;
    }

    [v11 setPreviewText:v59];
    goto LABEL_51;
  }

  configuration = [v12 configuration];
  collectionType = [configuration collectionType];

  if (collectionType != 1)
  {
    v26 = v14;
    goto LABEL_62;
  }

  v26 = [attributesCopy objectForKeyedSubscript:@"LastSelectedTab"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = MEMORY[0x277CCABB0];
      v29 = v27;
      v30 = [v28 numberWithUnsignedInteger:{objc_msgSend(v26, "length")}];
      v96 = 136315394;
      v97 = "CKBAItemSetModifiedAttributes";
      v98 = 2114;
      v99 = v30;
      _os_log_impl(&dword_272C20000, v29, OS_LOG_TYPE_INFO, "@@ %s: Set last selected child ID to value of length: %{public}@", &v96, 0x16u);
    }

    v31 = [v12 bookmarkIDForServerID:v26 excludeDeletedBookmarks:1];
  }

  else
  {
    null7 = [MEMORY[0x277CBEB68] null];
    v65 = [v26 isEqual:null7];

    if (!v65)
    {
      goto LABEL_62;
    }

    v66 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      v96 = 136315138;
      v97 = "CKBAItemSetModifiedAttributes";
      _os_log_impl(&dword_272C20000, v66, OS_LOG_TYPE_INFO, "@@ %s: Set last selected child ID to null", &v96, 0xCu);
    }

    v31 = 0x7FFFFFFFLL;
  }

  [v11 setLastSelectedChildID:v31];
LABEL_62:
  v67 = [attributesCopy objectForKeyedSubscript:@"SymbolImageName"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v68 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_INFO);
    v70 = v67;
    if (v69)
    {
      v71 = MEMORY[0x277CCABB0];
      v72 = v68;
      v73 = [v71 numberWithUnsignedInteger:{objc_msgSend(v67, "length")}];
      v96 = 136315394;
      v97 = "CKBAItemSetModifiedAttributes";
      v98 = 2114;
      v99 = v73;
      _os_log_impl(&dword_272C20000, v72, OS_LOG_TYPE_INFO, "@@ %s: Set symbolImageName to value of length: %{public}@", &v96, 0x16u);

      v70 = v67;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_70;
    }

    v74 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v96 = 136315138;
      v97 = "CKBAItemSetModifiedAttributes";
      _os_log_impl(&dword_272C20000, v74, OS_LOG_TYPE_INFO, "@@ %s: Set symbolImageName to null", &v96, 0xCu);
    }

    v70 = 0;
  }

  [v11 setSymbolImageName:v70];
LABEL_70:
  v75 = [attributesCopy objectForKeyedSubscript:@"ShowIconOnly"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v76 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      v96 = 136315394;
      v97 = "CKBAItemSetModifiedAttributes";
      v98 = 2112;
      v99 = v75;
      _os_log_impl(&dword_272C20000, v76, OS_LOG_TYPE_INFO, "@@ %s: Set showIconOnly to value: %@", &v96, 0x16u);
    }

    bOOLValue2 = [v75 BOOLValue];
LABEL_78:
    [v11 setShowIconOnly:bOOLValue2];
    goto LABEL_79;
  }

  null8 = [MEMORY[0x277CBEB68] null];
  v79 = [v75 isEqual:null8];

  if (v79)
  {
    v80 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
    {
      v96 = 136315138;
      v97 = "CKBAItemSetModifiedAttributes";
      _os_log_impl(&dword_272C20000, v80, OS_LOG_TYPE_INFO, "@@ %s: Set showIconOnly to value: 0", &v96, 0xCu);
    }

    bOOLValue2 = 0;
    goto LABEL_78;
  }

LABEL_79:
  v47 = [attributesCopy objectForKeyedSubscript:@"IsSelectedFavoritesFolder"];

  if (v47)
  {
    null9 = [MEMORY[0x277CBEB68] null];
    v82 = [v47 isEqual:null9];

    if (!v82)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v83 = v11;
        v84 = v47;
      }

      else
      {
        null10 = [MEMORY[0x277CBEB68] null];
        v86 = [v47 isEqual:null10];

        if (!v86)
        {
          v87 = 0;
LABEL_90:
          v88 = [attributesCopy objectForKeyedSubscript:@"DateAdded"];

          objc_opt_class();
          v89 = objc_opt_isKindOfClass();
          v90 = v88;
          if ((v89 & 1) == 0)
          {
            null11 = [MEMORY[0x277CBEB68] null];
            v92 = [v88 isEqual:null11];

            if (!v92)
            {
              goto LABEL_94;
            }

            v90 = 0;
          }

          [v11 setDateAdded:v90];
LABEL_94:
          v13[2](v13);
          if (v87 && [v11 isInserted])
          {
            bOOLValue3 = [v88 BOOLValue];
            collection2 = [itemCopy collection];
            [collection2 updateSelectedFavoritesFolderWithBookmarkID:objc_msgSend(v11 wasFavoritesFolder:"identifier") isFavoritesFolder:{bOOLValue3 ^ 1, bOOLValue3}];
          }

          v95 = WBS_LOG_CHANNEL_PREFIXBookmarks();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            v96 = 136315138;
            v97 = "CKBAItemSetModifiedAttributes";
            _os_log_impl(&dword_272C20000, v95, OS_LOG_TYPE_INFO, "<- %s", &v96, 0xCu);
          }

          v47 = v88;
          goto LABEL_100;
        }

        v83 = v11;
        v84 = 0;
      }

      [v83 setSelectedFavoritesFolder:v84];
      v87 = 1;
      goto LABEL_90;
    }
  }

  v13[2](v13);
  v63 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
  {
    v96 = 136315138;
    v97 = "CKBAItemSetModifiedAttributes";
    goto LABEL_83;
  }

LABEL_100:
}

- (id)copyValueForKey:(id)key item:(void *)item
{
  v35 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v32 = 136315650;
    *&v32[4] = "CKBAItemCopyValueForKey";
    *&v32[12] = 2114;
    *&v32[14] = item;
    v33 = 2114;
    v34 = keyCopy;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "-> %s(item: %{public}@, key: %{public}@)", v32, 0x20u);
  }

  bookmark = [item bookmark];
  if ([keyCopy isEqualToString:@"Title"])
  {
    title = [bookmark title];
    v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [WBBookmarkDBAccess copyValueForKey:item:];
    }

    address = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (!os_log_type_enabled(address, OS_LOG_TYPE_INFO))
    {
      goto LABEL_66;
    }

    if (title)
    {
      goto LABEL_8;
    }

    v11 = @"(null)";
    goto LABEL_34;
  }

  if (![bookmark isFolder])
  {
    if ([keyCopy isEqualToString:@"DateAdded"])
    {
      v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [WBBookmarkDBAccess copyValueForKey:v13 item:?];
      }

      v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *v32 = 136315138;
      *&v32[4] = "CKBAItemCopyValueForKey";
      goto LABEL_18;
    }

    if ([keyCopy isEqualToString:@"URL"])
    {
      address = [bookmark address];
      v17 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [WBBookmarkDBAccess copyValueForKey:item:];
      }

      v18 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        if (address)
        {
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject length](address, "length")}];
        }

        else
        {
          v19 = @"(null)";
        }

        *v32 = 136315394;
        *&v32[4] = "CKBAItemCopyValueForKey";
        *&v32[12] = 2114;
        *&v32[14] = v19;
        _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted; length: %{public}@", v32, 0x16u);
        if (address)
        {
        }
      }

      readingListIconURL = address;
    }

    else
    {
      if (([bookmark isReadingListItem] & 1) == 0)
      {
        v22 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *v32 = 136315138;
          *&v32[4] = "CKBAItemCopyValueForKey";
          goto LABEL_52;
        }

LABEL_53:
        title = 0;
        goto LABEL_67;
      }

      if ([keyCopy isEqualToString:@"DateLastViewed"])
      {
        v23 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [WBBookmarkDBAccess copyValueForKey:v23 item:?];
        }

        v24 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *v32 = 136315138;
          *&v32[4] = "CKBAItemCopyValueForKey";
          _os_log_impl(&dword_272C20000, v24, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted", v32, 0xCu);
        }

        dateLastViewed = [bookmark dateLastViewed];
        goto LABEL_20;
      }

      if ([keyCopy isEqualToString:@"PreviewText"])
      {
        v25 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [WBBookmarkDBAccess copyValueForKey:v25 item:?];
        }

        v26 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *v32 = 136315138;
          *&v32[4] = "CKBAItemCopyValueForKey";
          _os_log_impl(&dword_272C20000, v26, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted", v32, 0xCu);
        }

        dateLastViewed = [bookmark previewText];
        goto LABEL_20;
      }

      v29 = [keyCopy isEqualToString:@"ImageURL"];
      v30 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      v22 = v30;
      if (!v29)
      {
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          goto LABEL_53;
        }

        *v32 = 136315138;
        *&v32[4] = "CKBAItemCopyValueForKey";
        goto LABEL_52;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [WBBookmarkDBAccess copyValueForKey:v22 item:?];
      }

      v31 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *v32 = 136315138;
        *&v32[4] = "CKBAItemCopyValueForKey";
        _os_log_impl(&dword_272C20000, v31, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted", v32, 0xCu);
      }

      readingListIconURL = [bookmark readingListIconURL];
      address = readingListIconURL;
    }

    title = bookmarkURLWithString(readingListIconURL);
LABEL_66:

    goto LABEL_67;
  }

  if (![keyCopy isEqualToString:@"IsSelectedFavoritesFolder"])
  {
    if ([keyCopy isEqualToString:@"SymbolImageName"])
    {
      title = [bookmark symbolImageName];
      v16 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [WBBookmarkDBAccess copyValueForKey:item:];
      }

      address = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (!os_log_type_enabled(address, OS_LOG_TYPE_INFO))
      {
        goto LABEL_66;
      }

      if (title)
      {
LABEL_8:
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(title, "length")}];
        goto LABEL_34;
      }

      v11 = @"(null)";
LABEL_34:
      *v32 = 136315394;
      *&v32[4] = "CKBAItemCopyValueForKey";
      *&v32[12] = 2114;
      *&v32[14] = v11;
      _os_log_impl(&dword_272C20000, address, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted; length: %{public}@", v32, 0x16u);
      if (title)
      {
      }

      goto LABEL_66;
    }

    v20 = [keyCopy isEqualToString:@"DateAdded"];
    v21 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [WBBookmarkDBAccess copyValueForKey:v22 item:?];
      }

      v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *v32 = 136315138;
      *&v32[4] = "CKBAItemCopyValueForKey";
LABEL_18:
      _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "<- %s -> Return value redacted", v32, 0xCu);
LABEL_19:
      dateLastViewed = [bookmark dateAdded];
LABEL_20:
      title = dateLastViewed;
      goto LABEL_67;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v32 = 136315138;
      *&v32[4] = "CKBAItemCopyValueForKey";
LABEL_52:
      _os_log_impl(&dword_272C20000, v22, OS_LOG_TYPE_INFO, "<- %s -> (null)", v32, 0xCu);
      goto LABEL_53;
    }

    goto LABEL_53;
  }

  title = [bookmark isSelectedFavoritesFolder];
  v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v32 = 136315394;
    *&v32[4] = "CKBAItemCopyValueForKey";
    *&v32[12] = 2114;
    *&v32[14] = title;
    _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "<- %s -> %{public}@", v32, 0x16u);
  }

LABEL_67:

  return title;
}

- (void)clearlAllLocalBookmarksForAutomatedTestingWithDatabase:(void *)database
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "CKBADatabaseClearAllLocalBookmarksForAutomatedTesting";
    v9 = 2114;
    databaseCopy = database;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", &v7, 0x16u);
  }

  databaseCopy2 = database;
  if ([databaseCopy2 mergeWithBookmarksDictionary:MEMORY[0x277CBEC10] clearHidden:1 clearSyncData:0 error:0])
  {
    [databaseCopy2 postBookmarksDidReloadNotification];
  }

  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "CKBADatabaseClearAllLocalBookmarksForAutomatedTesting";
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "<- %s", &v7, 0xCu);
  }
}

- (id)copySaveURLForAssetWithKey:(id)key item:(void *)item
{
  if (![key isEqual:@"BackgroundImage"])
  {
    return 0;
  }

  bookmark = [item bookmark];
  v6 = [[WBTabGroup alloc] initWithBookmark:bookmark];
  uuid = [(WBTabGroup *)v6 uuid];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager safari_startPageBackgroundImageFileURLForIdentifier:uuid];

  return v9;
}

- (void)notifyForSaveOfAssetWithKey:(id)key item:(void *)item
{
  if ([key isEqual:@"BackgroundImage"])
  {
    bookmark = [item bookmark];
    v6 = [[WBTabGroup alloc] initWithBookmark:bookmark];
    uuid = [(WBTabGroup *)v6 uuid];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__WBBookmarkDBAccess_notifyForSaveOfAssetWithKey_item___block_invoke;
    v10[3] = &unk_279E753F0;
    v11 = uuid;
    v12 = bookmark;
    v8 = bookmark;
    v9 = uuid;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __55__WBBookmarkDBAccess_notifyForSaveOfAssetWithKey_item___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v4 setObject:*(a1 + 32) forKeyedSubscript:@"backgroundImageIdentifier"];
  if ([*(a1 + 40) subtype] == 2)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"profileBackgroundImageIsDefined"];
  }

  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [v4 copy];
  [v2 postNotificationName:@"nonGlobalStartPageBackgroundImageDidChangeRemotelyNotification" object:0 userInfo:v3 deliverImmediately:1];
}

- (void)clearChangesWithChangeToken:(uint64_t)a3 database:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "BADatabaseClearChangesForToken";
  OUTLINED_FUNCTION_6_0(&dword_272C20000, a1, a3, "XX %s: Client passed us a change token that does not match the current generation", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)clearChangesWithChangeToken:(uint64_t)a3 database:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "BADatabaseClearChangesForToken";
  OUTLINED_FUNCTION_6_0(&dword_272C20000, a1, a3, "XX %s: Could not clear the current change list", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)removeItemWithServerId:(void *)a1 database:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_stringByRedactingBookmarkDAVServerID];
  v10 = 136315394;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_272C20000, v4, v5, "XX %s: Client requested that we remove item with server ID %{public}@ but it does not exist", v6, v7, v8, v9, v10);
}

- (void)removeItemWithServerId:(uint64_t)a3 database:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "BADatabaseRemoveItemWithServerId";
  OUTLINED_FUNCTION_6_0(&dword_272C20000, a1, a3, "XX %s: Client requested that we remove the root folder", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)copyDeviceIdentifier
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_272C20000, v0, v1, "## %s(deviceIdentifier: %@)", v2, v3, v4, v5, v6);
}

- (void)copyItemWithLocalID:(void *)a1 database:.cold.1(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_4_0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v11 = 136315394;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_272C20000, v5, v6, "XX %s: CKBALocalID is an instance of %{public}@", v7, v8, v9, v10, v11);
}

- (void)copyLocalIDsInFolderWithLocalID:(void *)a1 database:.cold.1(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_4_0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v11 = 136315394;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_272C20000, v5, v6, "XX %s: CKBALocalID is an instance of %{public}@", v7, v8, v9, v10, v11);
}

- (void)copyLocalIDsInFolderWithLocalID:database:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_272C20000, v0, OS_LOG_TYPE_FAULT, "XX %s: Client requested server IDs of children of local ID %{public}@ but it does not exist or is not a folder!", v1, 0x16u);
}

- (void)addItem:(uint64_t)a1 underFolderWithServerId:(NSObject *)a2 database:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&dword_272C20000, a2, OS_LOG_TYPE_DEBUG, "Item was merged with %{private}@", &v2, 0xCu);
}

- (void)setDeletedBookmarkSyncData:(void *)a3 change:.cold.1(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = 136315650;
  v7 = "CKBAChangeSetDeletedBookmarkSyncData";
  v8 = 1024;
  v9 = [a2 changeType];
  v10 = 1024;
  v11 = [a3 isInserted];
  _os_log_fault_impl(&dword_272C20000, v5, OS_LOG_TYPE_FAULT, "XX %s: Cannot set the sync data of a change that is not a Delete. Change type = %d, inserted = %d", &v6, 0x18u);
}

- (void)setDeletedBookmarkSyncData:(uint64_t)a3 change:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CKBAChangeSetDeletedBookmarkSyncData";
  OUTLINED_FUNCTION_6_0(&dword_272C20000, a1, a3, "XX %s: Cannot update the sync data of a Delete change that does exist in the database", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)copyModifiedAttributesWithChange:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_272C20000, v0, v1, "## %s(%@)", v2, v3, v4, v5, v6);
}

- (void)copyAttributesWithItem:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_272C20000, v0, v1, "## %s(%@)", v2, v3, v4, v5, v6);
}

- (void)setModifiedAttributes:item:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_272C20000, v0, v1, "## %s(attributes: %@)", v2, v3, v4, v5, v6);
}

- (void)copyValueForKey:(void *)a1 item:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() readingListIconURL];
  v10 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_272C20000, v4, v5, "## %s(value: %@)", v6, v7, v8, v9, v10);
}

- (void)copyValueForKey:(void *)a1 item:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() previewText];
  v10 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_272C20000, v4, v5, "## %s(value: %@)", v6, v7, v8, v9, v10);
}

- (void)copyValueForKey:(void *)a1 item:.cold.3(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() dateLastViewed];
  v10 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_272C20000, v4, v5, "## %s(value: %@)", v6, v7, v8, v9, v10);
}

- (void)copyValueForKey:item:.cold.4()
{
  v6 = 136315395;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3(&dword_272C20000, v0, v1, "## %s(value: %{private}@)", v2, v3, v4, v5, v6);
}

- (void)copyValueForKey:(void *)a1 item:.cold.5(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() dateAdded];
  v10 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_272C20000, v4, v5, "## %s(value: %@)", v6, v7, v8, v9, v10);
}

- (void)copyValueForKey:item:.cold.7()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_272C20000, v0, v1, "## %s(value: %@)", v2, v3, v4, v5, v6);
}

@end