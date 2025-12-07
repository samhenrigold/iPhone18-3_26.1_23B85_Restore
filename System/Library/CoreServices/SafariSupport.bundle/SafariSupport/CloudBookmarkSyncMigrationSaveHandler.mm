@interface CloudBookmarkSyncMigrationSaveHandler
- (BOOL)shouldApplyReference:(id)reference withGeneration:(id)generation toAttribute:(id)attribute inRecordWithName:(id)name;
- (CloudBookmarkSyncMigrationSaveHandlerDelegate)delegate;
- (id)_dequeueNextCloudBookmarkToSave;
- (id)_recordByMergingRemoteRecord:(id)record intoCloudBookmark:(id)bookmark;
- (id)_recordByMergingRemoteRecord:(id)record withLocalRecord:(id)localRecord recordNamesToCloudBookmarks:(id)bookmarks saveError:(int64_t)error;
- (id)generateIdentityHashWithComponents:(id)components;
- (id)recordIDForParentSyncServerID:(id)d;
- (void)_generateAndSaveRemainingRecordsInOperationGroup:(id)group;
- (void)_saveRecordBatch:(id)batch inOperationGroup:(id)group recordNamesToCloudBookmarks:(id)bookmarks;
@end

@implementation CloudBookmarkSyncMigrationSaveHandler

- (id)_dequeueNextCloudBookmarkToSave
{
  unsavedProcessedBookmark = self->_unsavedProcessedBookmark;
  if (unsavedProcessedBookmark)
  {
    _nextCloudBookmarkToSave = unsavedProcessedBookmark;
    v5 = self->_unsavedProcessedBookmark;
    self->_unsavedProcessedBookmark = 0;
  }

  else
  {
    _nextCloudBookmarkToSave = [(CloudBookmarkSyncMigrationSaveHandler *)self _nextCloudBookmarkToSave];
  }

  return _nextCloudBookmarkToSave;
}

- (void)_generateAndSaveRemainingRecordsInOperationGroup:(id)group
{
  groupCopy = group;
  v4 = +[NSMutableArray array];
  v28 = +[NSMutableDictionary dictionary];
  if (!self->_namesOfRecordsSavedToTheServer)
  {
    v5 = +[NSMutableSet set];
    namesOfRecordsSavedToTheServer = self->_namesOfRecordsSavedToTheServer;
    self->_namesOfRecordsSavedToTheServer = v5;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  _dequeueNextCloudBookmarkToSave = 0;
  v9 = 0;
  v10 = &selRef__shouldResetLastKnownMinimumVersionsCacheInCollection_operationGroup_;
  while (2)
  {
    v11 = v10;
    do
    {
      v12 = _dequeueNextCloudBookmarkToSave;
      _dequeueNextCloudBookmarkToSave = [(CloudBookmarkSyncMigrationSaveHandler *)self _dequeueNextCloudBookmarkToSave];

      if (!_dequeueNextCloudBookmarkToSave)
      {
        goto LABEL_16;
      }
    }

    while ((objc_opt_respondsToSelector() & 1) != 0 && ![WeakRetained cloudBookmarkSyncMigrationSaveHandler:self shouldSaveBookmark:_dequeueNextCloudBookmarkToSave]);
    record = [_dequeueNextCloudBookmarkToSave record];
    v14 = [record size];

    v15 = [v4 count];
    v17 = v15;
    v18 = v14 + v9;
    if (v18 < 0x200000)
    {
      if (v15 >= 0x64)
      {
        goto LABEL_13;
      }

LABEL_12:
      [v4 addObject:_dequeueNextCloudBookmarkToSave];
      recordName = [_dequeueNextCloudBookmarkToSave recordName];
      [v28 setObject:_dequeueNextCloudBookmarkToSave forKeyedSubscript:recordName];
      [(NSMutableSet *)self->_namesOfRecordsSavedToTheServer addObject:recordName];

      v9 = v18;
      v10 = v11;
      continue;
    }

    break;
  }

  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_13:
  v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v15, v16);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v30 = v9;
    v31 = 2048;
    v32 = v17;
    v33 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Batch of size %lu with %lu records is full for %@", buf, 0x20u);
  }

  objc_storeStrong(&self->_unsavedProcessedBookmark, _dequeueNextCloudBookmarkToSave);
LABEL_16:
  if ([v4 count])
  {
    v22 = groupCopy;
    v23 = v28;
    [(CloudBookmarkSyncMigrationSaveHandler *)self _saveRecordBatch:v4 inOperationGroup:groupCopy recordNamesToCloudBookmarks:v28];
  }

  else
  {
    v24 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v21);
    v22 = groupCopy;
    v23 = v28;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_100080CB8(v24);
    }

    v25 = [(NSMutableSet *)self->_namesOfRecordsSavedToTheServer copy];
    v26 = self->_namesOfRecordsSavedToTheServer;
    self->_namesOfRecordsSavedToTheServer = 0;

    [(CloudBookmarkSyncMigrationSaveHandler *)self _didFinishSavingRecordsWithNames:v25];
  }
}

- (void)_saveRecordBatch:(id)batch inOperationGroup:(id)group recordNamesToCloudBookmarks:(id)bookmarks
{
  groupCopy = group;
  bookmarksCopy = bookmarks;
  batchCopy = batch;
  bookmarkStore = [(CloudBookmarkDatabaseHandler *)self bookmarkStore];
  v12 = [batchCopy valueForKey:@"record"];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100080410;
  v17[3] = &unk_100134AA0;
  v17[4] = self;
  v18 = bookmarksCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008063C;
  v15[3] = &unk_1001351C0;
  v15[4] = self;
  v16 = groupCopy;
  v13 = groupCopy;
  v14 = bookmarksCopy;
  [bookmarkStore saveBookmarksRecordBatch:v12 inOperationGroup:v13 clientChangeTokenData:0 mergeHandler:v17 completionHandler:v15];
}

- (id)_recordByMergingRemoteRecord:(id)record withLocalRecord:(id)localRecord recordNamesToCloudBookmarks:(id)bookmarks saveError:(int64_t)error
{
  recordCopy = record;
  bookmarksCopy = bookmarks;
  safari_recordName = [localRecord safari_recordName];
  v13 = [bookmarksCopy objectForKeyedSubscript:safari_recordName];
  if (error == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = objc_loadWeakRetained(&self->_delegate);
      recordName = [v13 recordName];
      [v17 cloudBookmarkSyncMigrationSaveHandler:self didDeleteBookmarkWithRecordName:recordName];
    }

    [bookmarksCopy removeObjectForKey:safari_recordName];
  }

  else if (!error)
  {
    v14 = [(CloudBookmarkSyncMigrationSaveHandler *)self _recordByMergingRemoteRecord:recordCopy intoCloudBookmark:v13];
    goto LABEL_8;
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (id)_recordByMergingRemoteRecord:(id)record intoCloudBookmark:(id)bookmark
{
  recordCopy = record;
  bookmarkCopy = bookmark;
  bookmarkStore = [(CloudBookmarkDatabaseHandler *)self bookmarkStore];
  bookmarkHashGenerator = [bookmarkStore bookmarkHashGenerator];
  configuration = [bookmarkCopy configuration];
  [bookmarkHashGenerator verifyIdentityHashInBookmarkRecord:recordCopy configuration:configuration];

  v11 = [bookmarkCopy resultFromMergingRecord:recordCopy usingUpdater:self];
  v13 = v11;
  if ((v11 & 0x10) != 0)
  {
    v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100080CFC(v14, bookmarkCopy, v13);
      if ((v13 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  if ((v13 & 2) != 0)
  {
LABEL_4:
    [bookmarkCopy updateLocalItemWithUpdater:self];
  }

LABEL_5:
  if ((v13 & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = objc_loadWeakRetained(&self->_delegate);
      [v17 cloudBookmarkSyncMigrationSaveHandler:self didMoveBookmark:bookmarkCopy];
    }
  }

  if ((v13 & 8) != 0)
  {
    v18 = objc_loadWeakRetained(&self->_delegate);
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = objc_loadWeakRetained(&self->_delegate);
      recordName = [bookmarkCopy recordName];
      [v20 cloudBookmarkSyncMigrationSaveHandler:self didDeleteBookmarkWithRecordName:recordName];
    }
  }

  v22 = v13 << 63 >> 63;
  v23 = (v22 & recordCopy);

  return (v22 & recordCopy);
}

- (id)recordIDForParentSyncServerID:(id)d
{
  dCopy = d;
  v5 = [CKRecordID alloc];
  bookmarkStore = [(CloudBookmarkDatabaseHandler *)self bookmarkStore];
  bookmarksRecordZoneID = [bookmarkStore bookmarksRecordZoneID];
  v8 = [v5 initWithRecordName:dCopy zoneID:bookmarksRecordZoneID];

  return v8;
}

- (id)generateIdentityHashWithComponents:(id)components
{
  componentsCopy = components;
  bookmarkStore = [(CloudBookmarkDatabaseHandler *)self bookmarkStore];
  bookmarkHashGenerator = [bookmarkStore bookmarkHashGenerator];
  v7 = [bookmarkHashGenerator generateHashWithComponents:componentsCopy];

  return v7;
}

- (BOOL)shouldApplyReference:(id)reference withGeneration:(id)generation toAttribute:(id)attribute inRecordWithName:(id)name
{
  referenceCopy = reference;
  generationCopy = generation;
  attributeCopy = attribute;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v15 = [WeakRetained cloudBookmarkSyncMigrationSaveHandler:self shouldApplyReference:referenceCopy withGeneration:generationCopy toAttribute:attributeCopy inRecordWithName:nameCopy];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (CloudBookmarkSyncMigrationSaveHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end