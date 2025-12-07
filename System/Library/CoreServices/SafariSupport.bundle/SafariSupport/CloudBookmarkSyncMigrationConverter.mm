@interface CloudBookmarkSyncMigrationConverter
- (BOOL)cloudBookmarkSyncMigrationSaveHandler:(id)handler shouldSaveBookmark:(id)bookmark;
- (void)_didFinishSyncDownInOperationGroup:(id)group;
- (void)_didSaveLocalRecords;
- (void)_finishSyncing;
- (void)_generateAndSaveRecordsInOperationGroup:(id)group;
- (void)_migrationDidCompleteWithError:(id)error;
- (void)_performMergingSyncDownInOperationGroup:(id)group;
- (void)_performSyncDownInOperationGroup:(id)group;
- (void)_performSyncDownInOperationGroup:(id)group withRetryManager:(id)manager;
- (void)_prepareRecordsForMigration;
- (void)_reparentAndSaveUnrootedBookmarksInOperationGroup:(id)group;
- (void)beginMigrationInOperationGroup:(id)group completionHandler:(id)handler;
- (void)cloudBookmarkSyncMigrationSaveHandler:(id)handler didMoveBookmark:(id)bookmark;
- (void)cloudBookmarkSyncMigrationSyncDownHandler:(id)handler didMoveBookmark:(id)bookmark;
@end

@implementation CloudBookmarkSyncMigrationConverter

- (void)beginMigrationInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v6 = groupCopy;
  v7 = handlerCopy;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (void)_didSaveLocalRecords
{
  if (!self->_hasSavedBookmarksLocally)
  {
    v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Saving bookmarks", v9, 2u);
    }

    self->_hasSavedBookmarksLocally = 1;
    databaseRef = [(CloudBookmarkDatabaseHandler *)self databaseRef];
    databaseAccessor = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
    v6 = [WBBookmarkDatabaseSyncData databaseSyncDataInDatabase:databaseRef databaseAccessor:databaseAccessor];

    [v6 setDidNotSaveRecordsAfterMigration:0];
    databaseRef2 = [(CloudBookmarkDatabaseHandler *)self databaseRef];
    databaseAccessor2 = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
    [v6 writeToDatabase:databaseRef2 databaseAccessor:databaseAccessor2];
  }
}

- (void)_prepareRecordsForMigration
{
  databaseRef = [(CloudBookmarkDatabaseHandler *)self databaseRef];
  databaseAccessor = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
  v5 = [databaseAccessor copyChangeTokenWithDatabase:databaseRef];
  changeToken = self->_changeToken;
  self->_changeToken = v5;

  v7 = [CloudBookmarkSyncMigrationHierarchyConverter alloc];
  databaseAccessor2 = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
  v9 = [(CloudBookmarkSyncMigrationHierarchyConverter *)v7 initWithDatabase:databaseRef databaseAccessor:databaseAccessor2];

  if ([(CloudBookmarkSyncMigrationHierarchyConverter *)v9 convertRecordsForMigration])
  {
    [(CloudBookmarkSyncMigrationConverter *)self _didSaveLocalRecords];
  }
}

- (void)_migrationDidCompleteWithError:(id)error
{
  errorCopy = error;
  v5 = objc_retainBlock(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  movedBookmarkManager = self->_movedBookmarkManager;
  self->_movedBookmarkManager = 0;

  pendingReferenceManager = self->_pendingReferenceManager;
  self->_pendingReferenceManager = 0;

  syncDownHandler = self->_syncDownHandler;
  self->_syncDownHandler = 0;

  converter = self->_converter;
  self->_converter = 0;

  self->_isMigrating = 0;
  v13 = errorCopy;
  v14 = v5;
  v11 = errorCopy;
  v12 = v5;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (void)_finishSyncing
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sync migration converter finished migration and sync down", v6, 2u);
  }

  [(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager moveBookmarksIntoPlace];
  [(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager removeLocalItemsForDeletedRecordNames];
  [(CloudBookmarkPendingReferenceManager *)self->_pendingReferenceManager applyAllPendingReferencesWithUpdater:self];
  if (self->_changeToken)
  {
    databaseAccessor = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
    [databaseAccessor clearChangesWithChangeToken:self->_changeToken database:{-[CloudBookmarkDatabaseHandler databaseRef](self, "databaseRef")}];

    changeToken = self->_changeToken;
    self->_changeToken = 0;
  }

  [(CloudBookmarkSyncMigrationConverter *)self _migrationDidCompleteWithError:0];
}

- (void)_performMergingSyncDownInOperationGroup:(id)group
{
  groupCopy = group;
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(groupCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Begin performing sync down while merging records", buf, 2u);
  }

  syncDownHandler = self->_syncDownHandler;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000714AC;
  v9[3] = &unk_100134B68;
  v9[4] = self;
  v10 = groupCopy;
  v8 = groupCopy;
  [(CloudBookmarkSyncMigrationSyncDownHandler *)syncDownHandler beginSyncDownInOperationGroup:v8 keepingRecordsMarkedAsDeletedLocally:1 completionHandler:v9];
}

- (void)_generateAndSaveRecordsInOperationGroup:(id)group
{
  groupCopy = group;
  converter = self->_converter;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100071870;
  v7[3] = &unk_100134B90;
  v7[4] = self;
  v8 = groupCopy;
  v6 = groupCopy;
  [(CloudBookmarkSyncMigrationFolderContentConverter *)converter beginFolderMigrationInOperationGroup:v6 completionHandler:v7];
}

- (void)_performSyncDownInOperationGroup:(id)group
{
  groupCopy = group;
  v5 = [WBSCloudKitOperationRetryManager alloc];
  v7 = [v5 initWithLog:{-[CloudTabGroupSyncCoordinator _bookmarksLog]_0(v5, v6)}];
  [(CloudBookmarkSyncMigrationConverter *)self _performSyncDownInOperationGroup:groupCopy withRetryManager:v7];
}

- (void)_performSyncDownInOperationGroup:(id)group withRetryManager:(id)manager
{
  groupCopy = group;
  managerCopy = manager;
  inited = objc_initWeak(&location, self);
  v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(inited, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Perform post-migration sync down", buf, 2u);
  }

  syncDownHandler = self->_syncDownHandler;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100071C28;
  v14[3] = &unk_100134BE0;
  v14[4] = self;
  v12 = managerCopy;
  v15 = v12;
  objc_copyWeak(&v17, &location);
  v13 = groupCopy;
  v16 = v13;
  [(CloudBookmarkSyncMigrationSyncDownHandler *)syncDownHandler beginSyncDownInOperationGroup:v13 completionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_didFinishSyncDownInOperationGroup:(id)group
{
  groupCopy = group;
  if ([(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager hasUnverifiedMovedBookmarks])
  {
    [(CloudBookmarkSyncMigrationConverter *)self _reparentAndSaveUnrootedBookmarksInOperationGroup:groupCopy];
  }

  else
  {
    [(CloudBookmarkSyncMigrationConverter *)self _finishSyncing];
  }
}

- (void)_reparentAndSaveUnrootedBookmarksInOperationGroup:(id)group
{
  groupCopy = group;
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(groupCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Performing post-migration moved records verification", buf, 2u);
  }

  movedBookmarkManager = self->_movedBookmarkManager;
  v17 = 0;
  v8 = [(CloudBookmarkMovedBookmarkManager *)movedBookmarkManager bookmarksByVerifyingAndReparentingUnrootedBookmarksGetLastValidPositionInRootFolder:&v17];
  v9 = v17;
  if ([v8 count])
  {
    allObjects = [v8 allObjects];
    v12 = [allObjects sortedArrayUsingSelector:"compare:"];

    saveReparentedBookmarksHandler = self->_saveReparentedBookmarksHandler;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10007249C;
    v15[3] = &unk_100134B90;
    v15[4] = self;
    v16 = groupCopy;
    [(CloudBookmarkSyncMigrationSaveReparentedBookmarksHandler *)saveReparentedBookmarksHandler beginSavingReparentedBookmarksInOperationGroup:v16 withRecordNames:v12 lastKnownPositionInRoot:v9 completionHandler:v15];

    v9 = v12;
  }

  else
  {
    v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No records need to be reparented", buf, 2u);
    }

    [(CloudBookmarkSyncMigrationConverter *)self _finishSyncing];
  }
}

- (BOOL)cloudBookmarkSyncMigrationSaveHandler:(id)handler shouldSaveBookmark:(id)bookmark
{
  if (self->_converter == handler)
  {
    movedBookmarkManager = self->_movedBookmarkManager;
    recordName = [bookmark recordName];
    v4 = ![(CloudBookmarkMovedBookmarkManager *)movedBookmarkManager isDeletedRecordName:recordName];
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)cloudBookmarkSyncMigrationSaveHandler:(id)handler didMoveBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  [(CloudBookmarkSyncMigrationConverter *)self _didSaveLocalRecords];
  [(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager addMovedBookmark:bookmarkCopy];
}

- (void)cloudBookmarkSyncMigrationSyncDownHandler:(id)handler didMoveBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  [(CloudBookmarkSyncMigrationConverter *)self _didSaveLocalRecords];
  [(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager addMovedBookmark:bookmarkCopy];
}

@end