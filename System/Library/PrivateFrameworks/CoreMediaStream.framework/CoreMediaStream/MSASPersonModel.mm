@interface MSASPersonModel
- (BOOL)dbQueueIsAssetCollectionWithGUIDPending:(id)pending;
- (BOOL)dbQueueIsGUIDQueued:(id)queued inQueue:(id)queue;
- (BOOL)dbQueueUpgradeFromDatabaseVersion:(int)version currentVersion:(int)currentVersion;
- (BOOL)hasItemsForDownloadCountFocusAlbumGUID:(id)d focusAssetCollectionGUID:(id)iD;
- (BOOL)isAssetCollectionWithGUIDPending:(id)pending;
- (MSASPersonModel)initWithPersonID:(id)d;
- (id)_commandWithMinimumIdentifier:(id)identifier outParams:(id *)params outCommandIdentifier:(int64_t *)commandIdentifier outPersonID:(id *)d outAlbumGUID:(id *)iD outAssetCollectionGUID:(id *)uID;
- (id)commandWithMinimumIdentifier:(int64_t)identifier outParams:(id *)params outCommandIdentifier:(int64_t *)commandIdentifier outPersonID:(id *)d outAlbumGUID:(id *)iD outAssetCollectionGUID:(id *)uID;
- (id)itemsForUpload;
- (id)nextItemsForDownloadFocusAlbumGUID:(id)d focusAssetCollectionGUID:(id)iD maxCount:(int)count;
- (id)nextItemsForDownloadFocusAlbumGUID:(id)d focusAssetCollectionGUID:(id)iD thumbnails:(BOOL)thumbnails maxCount:(int)count isInflight:(BOOL)inflight;
- (id)nextItemsForUploadAlbumGUID:(id)d maxPriority:(int)priority maxCount:(int)count;
- (int)assetCollectionsInUploadQueue;
- (int)assetCollectionsInUploadQueueAlbumGUID:(id)d;
- (int)assetsInDownloadQueue;
- (int)assetsInDownloadQueueAlbumGUID:(id)d;
- (int)dbQueueAssetCountAlbumGUID:(id)d inQueue:(id)queue;
- (int)itemsForDownloadCountFocusAlbumGUID:(id)d focusAssetCollectionGUID:(id)iD;
- (int64_t)countOfEnqueuedCommand:(id)command;
- (int64_t)countOfEnqueuedCommands;
- (int64_t)dbQueueNextCommandSequenceNumber;
- (int64_t)dbQueueSmallestCommandSequenceNumber;
- (int64_t)nextMMCSItemID;
- (void)addPendingAssetCollectionGUID:(id)d albumGUID:(id)iD;
- (void)dbQueueEnqueueCommand:(id)command params:(id)params personID:(id)d albumGUID:(id)iD assetCollectionGUID:(id)uID;
- (void)dbQueueEnqueueCommand:(id)command params:(id)params personID:(id)d albumGUID:(id)iD assetCollectionGUID:(id)uID sequenceNumber:(int64_t)number;
- (void)dbQueueRemoveAllEntriesFromTable:(id)table;
- (void)dbQueueRemoveCommandAtHeadOfQueue;
- (void)dbQueueRemoveCommandIdentifier:(int64_t)identifier;
- (void)dbQueueRemoveGUID:(id)d fromQueue:(id)queue;
- (void)dbQueueRequeuePendingCommandsWithAlbumGUID:(id)d;
- (void)dbQueueRequeuePendingCommandsWithAssetCollectionGUID:(id)d;
- (void)dbQueueRequeuePendingCommandsWithQueryStatement:(sqlite3_stmt *)statement deleteStatement:(sqlite3_stmt *)deleteStatement;
- (void)dbQueueSetErrorCount:(int)count forGUID:(id)d inQueue:(id)queue;
- (void)enqueueAssetCollectionForUpload:(id)upload album:(id)album;
- (void)enqueueAssetForDownload:(id)download inAlbumWithGUID:(id)d;
- (void)enqueueCommand:(id)command params:(id)params personID:(id)d albumGUID:(id)iD assetCollectionGUID:(id)uID;
- (void)enqueueCommand:(id)command params:(id)params personID:(id)d albumGUID:(id)iD pendingOnAssetCollectionGUID:(id)uID;
- (void)enqueueCommandAtHeadOfQueue:(id)queue params:(id)params personID:(id)d albumGUID:(id)iD assetCollectionGUID:(id)uID;
- (void)purgeCompletionBlock:(id)block;
- (void)removeAssetCollectionsFromUploadQueue:(id)queue;
- (void)removeAssetsFromDownloadQueue:(id)queue;
- (void)removeCommandIdentifier:(int64_t)identifier;
- (void)requeuePendingAssetCollectionGUID:(id)d;
- (void)requeuePendingAssetCollectionsWithAlbumGUID:(id)d;
- (void)setErrorCount:(int)count forAssetCollectionInUploadQueue:(id)queue;
- (void)setErrorCount:(int)count forAssetInDownloadQueue:(id)queue;
- (void)setInFlightAssets:(id)assets;
- (void)setParams:(id)params forCommandWithIdentifier:(int64_t)identifier;
@end

@implementation MSASPersonModel

- (void)removeAssetCollectionsFromUploadQueue:(id)queue
{
  v4 = [queue copy];
  dbQueue = [(MSASModelBase *)self dbQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__MSASPersonModel_removeAssetCollectionsFromUploadQueue___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dbQueue, v7);
}

uint64_t __57__MSASPersonModel_removeAssetCollectionsFromUploadQueue___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) dbQueueBeginTransaction];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 32);
        v8 = [*(*(&v10 + 1) + 8 * v6) GUID];
        [v7 dbQueueRemoveGUID:v8 fromQueue:@"UploadQueue"];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) dbQueueEndTransaction];
}

- (void)setErrorCount:(int)count forAssetCollectionInUploadQueue:(id)queue
{
  queueCopy = queue;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__MSASPersonModel_setErrorCount_forAssetCollectionInUploadQueue___block_invoke;
  block[3] = &unk_278E91F20;
  countCopy = count;
  block[4] = self;
  v10 = queueCopy;
  v8 = queueCopy;
  dispatch_async(dbQueue, block);
}

void __65__MSASPersonModel_setErrorCount_forAssetCollectionInUploadQueue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) GUID];
  [v2 dbQueueSetErrorCount:v1 forGUID:v3 inQueue:@"UploadQueue"];
}

- (id)nextItemsForUploadAlbumGUID:(id)d maxPriority:(int)priority maxCount:(int)count
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4870;
  v22 = __Block_byref_object_dispose__4871;
  array = [MEMORY[0x277CBEB18] array];
  dbQueue = [(MSASModelBase *)self dbQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__MSASPersonModel_nextItemsForUploadAlbumGUID_maxPriority_maxCount___block_invoke;
  v13[3] = &unk_278E918B0;
  v13[4] = self;
  v14 = dCopy;
  countCopy = count;
  priorityCopy = priority;
  v15 = &v18;
  v10 = dCopy;
  dispatch_sync(dbQueue, v13);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __68__MSASPersonModel_nextItemsForUploadAlbumGUID_maxPriority_maxCount___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v29 = *(a1 + 32);
    v30 = *(a1 + 40);
    v31 = *(a1 + 56);
    v36 = 138543874;
    v37 = v29;
    v38 = 2114;
    v39 = v30;
    v40 = 1024;
    v41 = v31;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Querying for next items to upload. Album GUID: %{public}@. Max: %d.", &v36, 0x1Cu);
  }

  if (*(a1 + 40))
  {
    v2 = @"select object, album, errorCount from UploadQueue where albumGUID = :alb and uploadPriority <= :priority order by uploadPriority,ord limit :lim;";
  }

  else
  {
    v2 = @"select object, album, errorCount from UploadQueue where uploadPriority <= :priority order by uploadPriority,ord limit :lim;";
  }

  v3 = [*(a1 + 32) statementForString:v2];
  v4 = sqlite3_reset(v3);
  v5 = v4;
  MSSqliteTrapForDBLockError(v4);
  if (v5)
  {
    goto LABEL_7;
  }

  if (*(a1 + 40))
  {
    v8 = sqlite3_bind_parameter_index(v3, ":alb");
    v9 = sqlite3_bind_text(v3, v8, [*(a1 + 40) UTF8String], -1, 0);
    v10 = v9;
    MSSqliteTrapForDBLockError(v9);
    if (v10)
    {
      goto LABEL_7;
    }
  }

  v11 = sqlite3_bind_parameter_index(v3, ":lim");
  v12 = sqlite3_bind_int(v3, v11, *(a1 + 56));
  v13 = v12;
  MSSqliteTrapForDBLockError(v12);
  if (v13)
  {
    goto LABEL_7;
  }

  v14 = sqlite3_bind_parameter_index(v3, ":priority");
  v15 = sqlite3_bind_int(v3, v14, *(a1 + 60));
  v16 = v15;
  MSSqliteTrapForDBLockError(v15);
  if (v16)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v17 = sqlite3_step(v3);
    if (v17 != 100)
    {
      break;
    }

    v18 = objc_opt_new();
    v19 = sqlite3_column_blob(v3, 0);
    v20 = sqlite3_column_bytes(v3, 0);
    v21 = MEMORY[0x277CCAAC8];
    v22 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v19 length:v20 freeWhenDone:0];
    v23 = [v21 MSSafeUnarchiveObjectWithData:v22 outError:0];

    [v18 setObject:v23];
    v24 = sqlite3_column_blob(v3, 1);
    v25 = sqlite3_column_bytes(v3, 1);
    v26 = MEMORY[0x277CCAAC8];
    v27 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v24 length:v25 freeWhenDone:0];
    v28 = [v26 MSSafeUnarchiveObjectWithData:v27 outError:0];

    [v18 setAlbum:v28];
    [v18 setErrorCount:{sqlite3_column_int(v3, 2)}];
    [*(*(*(a1 + 48) + 8) + 40) addObject:v18];
  }

  if (v17 != 101)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v34 = *(a1 + 32);
      v35 = sqlite3_errmsg([v34 dbQueueDB]);
      v36 = 138543618;
      v37 = v34;
      v38 = 2082;
      v39 = v35;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error retrieving items for upload. Error: %{public}s", &v36, 0x16u);
    }

LABEL_7:
    sqlite3_reset(v3);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    return;
  }

  sqlite3_reset(v3);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v32 = *(a1 + 32);
    v33 = [*(*(*(a1 + 48) + 8) + 40) count];
    v36 = 138543618;
    v37 = v32;
    v38 = 2048;
    v39 = v33;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...found %ld items.", &v36, 0x16u);
  }
}

- (id)itemsForUpload
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4870;
  v11 = __Block_byref_object_dispose__4871;
  v12 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__MSASPersonModel_itemsForUpload__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dbQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__MSASPersonModel_itemsForUpload__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueueDB];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"select object, album, errorCount from UploadQueue"];;
  v3 = [MSASModelEnumerator enumeratorWithDatabase:v2 query:v6 stepBlock:&__block_literal_global_4885];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

MSASPersonModelItem *__33__MSASPersonModel_itemsForUpload__block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = objc_opt_new();
  v4 = sqlite3_column_blob(a2, 0);
  v5 = sqlite3_column_bytes(a2, 0);
  v6 = MEMORY[0x277CCAAC8];
  v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v4 length:v5 freeWhenDone:0];
  v8 = [v6 MSSafeUnarchiveObjectWithData:v7 outError:0];

  [v3 setObject:v8];
  v9 = sqlite3_column_blob(a2, 1);
  v10 = sqlite3_column_bytes(a2, 1);
  v11 = MEMORY[0x277CCAAC8];
  v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v9 length:v10 freeWhenDone:0];
  v13 = [v11 MSSafeUnarchiveObjectWithData:v12 outError:0];

  [v3 setAlbum:v13];
  [v3 setErrorCount:{sqlite3_column_int(a2, 2)}];

  return v3;
}

- (int)assetCollectionsInUploadQueueAlbumGUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MSASPersonModel_assetCollectionsInUploadQueueAlbumGUID___block_invoke;
  block[3] = &unk_278E91C78;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(dbQueue, block);

  LODWORD(dCopy) = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return dCopy;
}

void *__58__MSASPersonModel_assetCollectionsInUploadQueueAlbumGUID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dbQueueAssetCountAlbumGUID:*(a1 + 40) inQueue:@"UploadQueue"];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int)assetCollectionsInUploadQueue
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__MSASPersonModel_assetCollectionsInUploadQueue__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__48__MSASPersonModel_assetCollectionsInUploadQueue__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dbQueueAssetCountAlbumGUID:0 inQueue:@"UploadQueue"];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)enqueueAssetCollectionForUpload:(id)upload album:(id)album
{
  uploadCopy = upload;
  albumCopy = album;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MSASPersonModel_enqueueAssetCollectionForUpload_album___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = uploadCopy;
  v13 = albumCopy;
  v9 = albumCopy;
  v10 = uploadCopy;
  dispatch_async(dbQueue, block);
}

void __57__MSASPersonModel_enqueueAssetCollectionForUpload_album___block_invoke(id *a1)
{
  v53 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v24 = a1[4];
    v25 = a1[5];
    v26 = [a1[6] GUID];
    *buf = 138543874;
    v48 = v24;
    v49 = 2114;
    v50 = v25;
    v51 = 2114;
    v52 = v26;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Enqueueing upload for asset collection: %{public}@\n In album with GUID: %{public}@", buf, 0x20u);
  }

  v2 = a1[4];
  v3 = [a1[5] GUID];
  LODWORD(v2) = [v2 dbQueueIsGUIDQueued:v3 inQueue:@"UploadQueue"];

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = a1[5];
      *buf = 138543618;
      v48 = v4;
      v49 = 2114;
      v50 = v5;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to re-enqueue asset collection %{public}@ for upload. Ignoring.", buf, 0x16u);
    }
  }

  else
  {
    v6 = [a1[4] statementForString:{@"insert into UploadQueue (ord, object, album, GUID, albumGUID, uploadPriority) values (?, ?, ?, ?, ?, ?);"}];
    v7 = sqlite3_reset(v6);
    v8 = v7;
    MSSqliteTrapForDBLockError(v7);
    if (!v8)
    {
      v9 = [MEMORY[0x277CBEAA8] date];
      [v9 timeIntervalSinceReferenceDate];
      v11 = sqlite3_bind_double(v6, 1, v10);
      v12 = v11;
      MSSqliteTrapForDBLockError(v11);

      if (!v12)
      {
        v13 = a1[5];
        v46 = 0;
        v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v46];
        v15 = v46;
        v16 = v15;
        if (!v14)
        {
          v17 = MEMORY[0x277CCACA8];
          v18 = [v15 userInfo];
          v19 = [v17 stringWithFormat:@"Failed to archive an assetCollection object. Error: %@ Info: %@", v16, v18];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v48 = v19;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }
        }

        v20 = [v14 length];
        if (v20 >> 31)
        {
          __assert_rtn("[MSASPersonModel enqueueAssetCollectionForUpload:album:]_block_invoke", "MSASPersonModel.m", 1356, "objectArchiveLength <= INT_MAX");
        }

        v21 = sqlite3_bind_blob(v6, 2, [v14 bytes], v20, 0xFFFFFFFFFFFFFFFFLL);
        v22 = v21;
        MSSqliteTrapForDBLockError(v21);
        if (v22)
        {
          v23 = v16;
        }

        else
        {
          v27 = a1[6];
          v45 = v16;
          v28 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v45];
          v23 = v45;

          if (!v28)
          {
            v29 = MEMORY[0x277CCACA8];
            v30 = [v23 userInfo];
            v31 = [v29 stringWithFormat:@"Failed to archive an album object. Error: %@ Info: %@", v23, v30];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v48 = v31;
              _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }
          }

          v32 = [v28 length];
          if (v32 >> 31)
          {
            __assert_rtn("[MSASPersonModel enqueueAssetCollectionForUpload:album:]_block_invoke", "MSASPersonModel.m", 1364, "albumArchiveLength <= INT_MAX");
          }

          v33 = sqlite3_bind_blob(v6, 3, [v28 bytes], v32, 0xFFFFFFFFFFFFFFFFLL);
          v34 = v33;
          MSSqliteTrapForDBLockError(v33);
          if (!v34)
          {
            v35 = [a1[5] GUID];
            v36 = sqlite3_bind_text(v6, 4, [v35 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
            v37 = v36;
            MSSqliteTrapForDBLockError(v36);

            if (!v37)
            {
              v38 = [a1[6] GUID];
              v39 = sqlite3_bind_text(v6, 5, [v38 UTF8String], -1, 0);
              v40 = v39;
              MSSqliteTrapForDBLockError(v39);

              if (!v40)
              {
                if ([a1[5] isVideo])
                {
                  v41 = 10;
                }

                else
                {
                  v41 = 0;
                }

                v42 = sqlite3_bind_int(v6, 6, v41);
                v43 = v42;
                MSSqliteTrapForDBLockError(v42);
                if (!v43)
                {
                  v44 = sqlite3_step(v6);
                  MSSqliteTrapForDBLockError(v44);
                }
              }
            }
          }
        }
      }
    }

    sqlite3_reset(v6);
  }
}

- (void)removeAssetsFromDownloadQueue:(id)queue
{
  queueCopy = queue;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__MSASPersonModel_removeAssetsFromDownloadQueue___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(dbQueue, v7);
}

uint64_t __49__MSASPersonModel_removeAssetsFromDownloadQueue___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) dbQueueBeginTransaction];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 32);
        v8 = [*(*(&v10 + 1) + 8 * v6) GUID];
        [v7 dbQueueRemoveGUID:v8 fromQueue:@"DownloadQueue"];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) dbQueueEndTransaction];
}

- (void)setInFlightAssets:(id)assets
{
  v21 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(assetsCopy, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = assetsCopy;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          gUID = [*(*(&v16 + 1) + 8 * v10) GUID];
          [v5 addObject:gUID];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    dbQueue = [(MSASModelBase *)self dbQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__MSASPersonModel_setInFlightAssets___block_invoke;
    v14[3] = &unk_278E927C8;
    v14[4] = self;
    v15 = v5;
    v13 = v5;
    dispatch_async(dbQueue, v14);
  }
}

void __37__MSASPersonModel_setInFlightAssets___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    *buf = 138543618;
    v26 = v16;
    v27 = 2114;
    v28 = v17;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Setting inflight for assets with GUIDs %{public}@ in DownloadQueue.", buf, 0x16u);
  }

  v2 = [*(a1 + 32) statementForString:@"update or ignore DownloadQueue set isInflight = 1 where GUID = ?;"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = sqlite3_reset(v2);
        v10 = v9;
        MSSqliteTrapForDBLockError(v9);
        if (v10 || (v11 = v8, v12 = sqlite3_bind_text(v2, 1, [v11 UTF8String], -1, 0), v13 = v12, MSSqliteTrapForDBLockError(v12), v13) || (v14 = sqlite3_step(v2), v15 = v14, MSSqliteTrapForDBLockError(v14), v15 != 101))
        {

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v18 = *(a1 + 32);
            v19 = *(a1 + 40);
            *buf = 138543618;
            v26 = v18;
            v27 = 2114;
            v28 = v19;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to set inflight for assets with GUIDs %{public}@ in DownloadQueue.", buf, 0x16u);
          }

          return;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }
}

- (void)setErrorCount:(int)count forAssetInDownloadQueue:(id)queue
{
  queueCopy = queue;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MSASPersonModel_setErrorCount_forAssetInDownloadQueue___block_invoke;
  block[3] = &unk_278E91F20;
  countCopy = count;
  block[4] = self;
  v10 = queueCopy;
  v8 = queueCopy;
  dispatch_async(dbQueue, block);
}

void __57__MSASPersonModel_setErrorCount_forAssetInDownloadQueue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) GUID];
  [v2 dbQueueSetErrorCount:v1 forGUID:v3 inQueue:@"DownloadQueue"];
}

- (int)itemsForDownloadCountFocusAlbumGUID:(id)d focusAssetCollectionGUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__MSASPersonModel_itemsForDownloadCountFocusAlbumGUID_focusAssetCollectionGUID___block_invoke;
  v12[3] = &unk_278E91888;
  v12[4] = self;
  v13 = dCopy;
  v14 = iDCopy;
  v15 = &v16;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_sync(dbQueue, v12);

  LODWORD(iDCopy) = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return iDCopy;
}

void __80__MSASPersonModel_itemsForDownloadCountFocusAlbumGUID_focusAssetCollectionGUID___block_invoke(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = a1[4];
    v15 = a1[5];
    v16 = a1[6];
    v19 = 138543874;
    v20 = v14;
    v21 = 2114;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Counting number of assets to download using criteria: focus album GUID: %{public}@ focus asset collection GUID: %{public}@", &v19, 0x20u);
  }

  if (a1[6])
  {
    v2 = a1[4];
    v3 = @"select count(*) from DownloadQueue where assetCollectionGUID = :assetcol;";
  }

  else
  {
    v2 = a1[4];
    if (a1[5])
    {
      v3 = @"select count(*) from DownloadQueue where albumGUID = :album;";
    }

    else
    {
      v3 = @"select count(*) from DownloadQueue;";
    }
  }

  v4 = [v2 statementForString:v3];
  v5 = sqlite3_reset(v4);
  v6 = v5;
  MSSqliteTrapForDBLockError(v5);
  if (v6)
  {
    goto LABEL_22;
  }

  if (a1[6])
  {
    v7 = sqlite3_bind_parameter_index(v4, ":assetcol");
    v8 = a1[6];
  }

  else
  {
    if (!a1[5])
    {
      goto LABEL_16;
    }

    v7 = sqlite3_bind_parameter_index(v4, ":album");
    v8 = a1[5];
  }

  v9 = sqlite3_bind_text(v4, v7, [v8 UTF8String], -1, 0);
  v10 = v9;
  MSSqliteTrapForDBLockError(v9);
  if (v10)
  {
LABEL_22:
    sqlite3_reset(v4);
    return;
  }

LABEL_16:
  while (1)
  {
    v11 = sqlite3_step(v4);
    if (v11 != 100)
    {
      break;
    }

    *(*(a1[7] + 8) + 24) = sqlite3_column_int(v4, 0);
  }

  if (v11 != 101)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = a1[4];
      v18 = sqlite3_errmsg([v17 dbQueueDB]);
      v19 = 138543618;
      v20 = v17;
      v21 = 2082;
      v22 = v18;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error counting items for download. Error: %{public}s", &v19, 0x16u);
    }

    goto LABEL_22;
  }

  sqlite3_reset(v4);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[4];
    v13 = *(*(a1[7] + 8) + 24);
    v19 = 138543618;
    v20 = v12;
    v21 = 1024;
    LODWORD(v22) = v13;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...found %d assets.", &v19, 0x12u);
  }
}

- (BOOL)hasItemsForDownloadCountFocusAlbumGUID:(id)d focusAssetCollectionGUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__MSASPersonModel_hasItemsForDownloadCountFocusAlbumGUID_focusAssetCollectionGUID___block_invoke;
  v12[3] = &unk_278E91888;
  v12[4] = self;
  v13 = dCopy;
  v14 = iDCopy;
  v15 = &v16;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_sync(dbQueue, v12);

  LOBYTE(iDCopy) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return iDCopy;
}

void __83__MSASPersonModel_hasItemsForDownloadCountFocusAlbumGUID_focusAssetCollectionGUID___block_invoke(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = a1[4];
    v15 = a1[5];
    v16 = a1[6];
    v19 = 138543874;
    v20 = v14;
    v21 = 2114;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Checking if there are assets to download using criteria: focus album GUID: %{public}@ focus asset collection GUID: %{public}@", &v19, 0x20u);
  }

  if (a1[6])
  {
    v2 = a1[4];
    v3 = @"select ord from DownloadQueue where assetCollectionGUID = :assetcol limit 1;";
  }

  else
  {
    v2 = a1[4];
    if (a1[5])
    {
      v3 = @"select ord from DownloadQueue where albumGUID = :album limit 1;";
    }

    else
    {
      v3 = @"select ord from DownloadQueue limit 1;";
    }
  }

  v4 = [v2 statementForString:v3];
  v5 = sqlite3_reset(v4);
  v6 = v5;
  MSSqliteTrapForDBLockError(v5);
  if (v6)
  {
    goto LABEL_21;
  }

  if (a1[6])
  {
    v7 = sqlite3_bind_parameter_index(v4, ":assetcol");
    v8 = a1[6];
  }

  else
  {
    if (!a1[5])
    {
      goto LABEL_14;
    }

    v7 = sqlite3_bind_parameter_index(v4, ":album");
    v8 = a1[5];
  }

  v9 = sqlite3_bind_text(v4, v7, [v8 UTF8String], -1, 0);
  v10 = v9;
  MSSqliteTrapForDBLockError(v9);
  if (v10)
  {
LABEL_21:
    sqlite3_reset(v4);
    return;
  }

LABEL_14:
  while (1)
  {
    v11 = sqlite3_step(v4);
    if (v11 != 100)
    {
      break;
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  if (v11 != 101)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = a1[4];
      v18 = sqlite3_errmsg([v17 dbQueueDB]);
      v19 = 138543618;
      v20 = v17;
      v21 = 2082;
      v22 = v18;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error checking for assets to download. Error: %{public}s", &v19, 0x16u);
    }

    goto LABEL_21;
  }

  sqlite3_reset(v4);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[4];
    v13 = *(*(a1[7] + 8) + 24);
    v19 = 138543618;
    v20 = v12;
    v21 = 1024;
    LODWORD(v22) = v13;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: result: %d", &v19, 0x12u);
  }
}

- (id)nextItemsForDownloadFocusAlbumGUID:(id)d focusAssetCollectionGUID:(id)iD maxCount:(int)count
{
  v5 = *&count;
  dCopy = d;
  iDCopy = iD;
  v10 = [(MSASPersonModel *)self nextItemsForDownloadFocusAlbumGUID:dCopy focusAssetCollectionGUID:iDCopy thumbnails:1 maxCount:v5 isInflight:1];
  if (![v10 count])
  {
    v11 = [(MSASPersonModel *)self nextItemsForDownloadFocusAlbumGUID:dCopy focusAssetCollectionGUID:iDCopy thumbnails:1 maxCount:v5 isInflight:0];

    v10 = v11;
  }

  if (![v10 count])
  {
    v12 = [(MSASPersonModel *)self nextItemsForDownloadFocusAlbumGUID:dCopy focusAssetCollectionGUID:iDCopy thumbnails:0 maxCount:v5 isInflight:1];

    v10 = v12;
  }

  if (![v10 count])
  {
    v13 = [(MSASPersonModel *)self nextItemsForDownloadFocusAlbumGUID:dCopy focusAssetCollectionGUID:iDCopy thumbnails:0 maxCount:v5 isInflight:0];

    v10 = v13;
  }

  return v10;
}

- (id)nextItemsForDownloadFocusAlbumGUID:(id)d focusAssetCollectionGUID:(id)iD thumbnails:(BOOL)thumbnails maxCount:(int)count isInflight:(BOOL)inflight
{
  dCopy = d;
  iDCopy = iD;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__4870;
  v30 = __Block_byref_object_dispose__4871;
  v31 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__MSASPersonModel_nextItemsForDownloadFocusAlbumGUID_focusAssetCollectionGUID_thumbnails_maxCount_isInflight___block_invoke;
  block[3] = &unk_278E91860;
  thumbnailsCopy = thumbnails;
  block[4] = self;
  v20 = dCopy;
  inflightCopy = inflight;
  v21 = iDCopy;
  v22 = &v26;
  countCopy = count;
  v15 = iDCopy;
  v16 = dCopy;
  dispatch_sync(dbQueue, block);

  v17 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v17;
}

void __110__MSASPersonModel_nextItemsForDownloadFocusAlbumGUID_focusAssetCollectionGUID_thumbnails_maxCount_isInflight___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v36 = *(a1 + 68);
    v37 = *(a1 + 32);
    v38 = *(a1 + 40);
    v39 = *(a1 + 48);
    if (*(a1 + 69))
    {
      v40 = @"1";
    }

    else
    {
      v40 = @"0";
    }

    v45 = 138544386;
    v46 = v37;
    v47 = 1024;
    *v48 = v36;
    *&v48[4] = 2114;
    *&v48[6] = v38;
    v49 = 2114;
    v50 = v39;
    v51 = 2114;
    v52 = v40;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Querying for the next assets to download using criteria: thumbnail: %d focus album GUID: %{public}@ focus asset collection GUID: %{public}@ isInflight: %{public}@", &v45, 0x30u);
  }

  v2 = [MEMORY[0x277CBEB18] array];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(a1 + 48))
  {
    v5 = [*(a1 + 32) shouldDownloadEarliestPhotosFirst];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = @"select object, albumGUID, errorCount from DownloadQueue where assetCollectionGUID = :assetcol and isThumbnail = :thumb and isInflight = :inflight order by albumGUID asc, batchCreationDate asc, photoCreationDate asc limit:lim;";
    }

    else
    {
      v7 = @"select object, albumGUID, errorCount from DownloadQueue where assetCollectionGUID = :assetcol and isThumbnail = :thumb and isInflight = :inflight order by albumGUID asc, batchCreationDate desc, photoCreationDate asc limit:lim;";
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) shouldDownloadEarliestPhotosFirst];
    v6 = *(a1 + 32);
    if (v8)
    {
      if (v9)
      {
        v7 = @"select object, albumGUID, errorCount from DownloadQueue where albumGUID = :album and isThumbnail = :thumb and isInflight = :inflight order by albumGUID asc, batchCreationDate asc, photoCreationDate asc limit:lim;";
      }

      else
      {
        v7 = @"select object, albumGUID, errorCount from DownloadQueue where albumGUID = :album and isThumbnail = :thumb and isInflight = :inflight order by albumGUID asc, batchCreationDate desc, photoCreationDate asc limit:lim;";
      }
    }

    else if (v9)
    {
      v7 = @"select object, albumGUID, errorCount from DownloadQueue where isThumbnail = :thumb and isInflight = :inflight order by albumGUID asc, batchCreationDate asc, photoCreationDate asc limit:lim;";
    }

    else
    {
      v7 = @"select object, albumGUID, errorCount from DownloadQueue where isThumbnail = :thumb and isInflight = :inflight order by albumGUID asc, batchCreationDate desc, photoCreationDate asc limit:lim;";
    }
  }

  v10 = [v6 statementForString:v7];
  v11 = sqlite3_reset(v10);
  v12 = v11;
  MSSqliteTrapForDBLockError(v11);
  if (v12)
  {
    goto LABEL_39;
  }

  if (*(a1 + 48))
  {
    v13 = sqlite3_bind_parameter_index(v10, ":assetcol");
    v14 = *(a1 + 48);
  }

  else
  {
    if (!*(a1 + 40))
    {
      goto LABEL_19;
    }

    v13 = sqlite3_bind_parameter_index(v10, ":album");
    v14 = *(a1 + 40);
  }

  v15 = sqlite3_bind_text(v10, v13, [v14 UTF8String], -1, 0);
  v16 = v15;
  MSSqliteTrapForDBLockError(v15);
  if (v16)
  {
LABEL_39:
    sqlite3_reset(v10);
    return;
  }

LABEL_19:
  v17 = sqlite3_bind_parameter_index(v10, ":thumb");
  if (*(a1 + 68))
  {
    v18 = "1";
  }

  else
  {
    v18 = "0";
  }

  v19 = sqlite3_bind_text(v10, v17, v18, -1, 0);
  v20 = v19;
  MSSqliteTrapForDBLockError(v19);
  if (v20)
  {
    goto LABEL_39;
  }

  v21 = sqlite3_bind_parameter_index(v10, ":inflight");
  v22 = *(a1 + 69) ? "1" : "0";
  v23 = sqlite3_bind_text(v10, v21, v22, -1, 0);
  v24 = v23;
  MSSqliteTrapForDBLockError(v23);
  if (v24)
  {
    goto LABEL_39;
  }

  v25 = sqlite3_bind_parameter_index(v10, ":lim");
  v26 = sqlite3_bind_int(v10, v25, *(a1 + 64));
  v27 = v26;
  MSSqliteTrapForDBLockError(v26);
  if (v27)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v28 = sqlite3_step(v10);
    if (v28 != 100)
    {
      break;
    }

    v29 = objc_opt_new();
    v30 = sqlite3_column_blob(v10, 0);
    v31 = sqlite3_column_bytes(v10, 0);
    v32 = MEMORY[0x277CCAAC8];
    v33 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v30 length:v31 freeWhenDone:0];
    v34 = [v32 MSSafeUnarchiveObjectWithData:v33 outError:0];

    [v29 setObject:v34];
    v35 = MSSqliteStringFromStatementColumn(v10, 1);
    [v29 setAlbumGUID:v35];
    [v29 setErrorCount:{sqlite3_column_int(v10, 2)}];
    [*(*(*(a1 + 56) + 8) + 40) addObject:v29];
  }

  if (v28 != 101)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v43 = *(a1 + 32);
      v44 = sqlite3_errmsg([v43 dbQueueDB]);
      v45 = 138543618;
      v46 = v43;
      v47 = 2082;
      *v48 = v44;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error retrieving items for download. Error: %{public}s", &v45, 0x16u);
    }

    goto LABEL_39;
  }

  sqlite3_reset(v10);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v41 = *(a1 + 32);
    v42 = [*(*(*(a1 + 56) + 8) + 40) count];
    v45 = 138543618;
    v46 = v41;
    v47 = 2048;
    *v48 = v42;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...found %ld assets.", &v45, 0x16u);
  }
}

- (int)assetsInDownloadQueueAlbumGUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSASPersonModel_assetsInDownloadQueueAlbumGUID___block_invoke;
  block[3] = &unk_278E91C78;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(dbQueue, block);

  LODWORD(dCopy) = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return dCopy;
}

void *__50__MSASPersonModel_assetsInDownloadQueueAlbumGUID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dbQueueAssetCountAlbumGUID:*(a1 + 40) inQueue:@"DownloadQueue"];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int)assetsInDownloadQueue
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__MSASPersonModel_assetsInDownloadQueue__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__40__MSASPersonModel_assetsInDownloadQueue__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dbQueueAssetCountAlbumGUID:0 inQueue:@"DownloadQueue"];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)enqueueAssetForDownload:(id)download inAlbumWithGUID:(id)d
{
  downloadCopy = download;
  dCopy = d;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSASPersonModel_enqueueAssetForDownload_inAlbumWithGUID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = downloadCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = downloadCopy;
  dispatch_async(dbQueue, block);
}

void __59__MSASPersonModel_enqueueAssetForDownload_inAlbumWithGUID___block_invoke(id *a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [a1[5] GUID];
  LODWORD(v2) = [v2 dbQueueIsGUIDQueued:v3 inQueue:@"DownloadQueue"];

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = [a1[5] GUID];
      v6 = [a1[5] assetCollectionGUID];
      *buf = 138543874;
      v60 = v4;
      v61 = 2114;
      v62 = v5;
      v63 = 2114;
      v64 = v6;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to re-enqueue asset (GUID: %{public}@ collectionGUID: %{public}@) for download. Ignoring.", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v41 = a1[4];
      v42 = [a1[5] GUID];
      v43 = [a1[5] assetCollectionGUID];
      v44 = a1[6];
      *buf = 138544130;
      v60 = v41;
      v61 = 2114;
      v62 = v42;
      v63 = 2114;
      v64 = v43;
      v65 = 2114;
      v66 = v44;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Enqueueing download for asset (GUID: %{public}@ collectionGUID: %{public}@) in album with GUID: %{public}@.", buf, 0x2Au);
    }

    v7 = [a1[4] statementForString:{@"insert into DownloadQueue (ord, object, GUID, albumGUID, assetCollectionGUID, isThumbnail, batchCreationDate, photoCreationDate) values (?, ?, ?, ?, ?, ?, ?, ?);"}];
    v8 = sqlite3_reset(v7);
    v9 = v8;
    MSSqliteTrapForDBLockError(v8);
    if (!v9)
    {
      v10 = [MEMORY[0x277CBEAA8] date];
      [v10 timeIntervalSinceReferenceDate];
      v12 = sqlite3_bind_double(v7, 1, v11);
      v13 = v12;
      MSSqliteTrapForDBLockError(v12);

      if (!v13)
      {
        v14 = a1[5];
        v58 = 0;
        v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v58];
        v16 = v58;
        v17 = v16;
        if (!v15)
        {
          v18 = MEMORY[0x277CCACA8];
          v19 = [v16 userInfo];
          v20 = [v18 stringWithFormat:@"Failed to archive an assetArchive object. Error: %@ Info: %@", v17, v19];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v60 = v20;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }
        }

        v21 = [v15 length];
        if (v21 >> 31)
        {
          __assert_rtn("[MSASPersonModel enqueueAssetForDownload:inAlbumWithGUID:]_block_invoke", "MSASPersonModel.m", 1058, "assetArchiveLength <= INT_MAX");
        }

        v22 = sqlite3_bind_blob(v7, 2, [v15 bytes], v21, 0xFFFFFFFFFFFFFFFFLL);
        v23 = v22;
        MSSqliteTrapForDBLockError(v22);
        if (!v23)
        {
          v24 = [a1[5] GUID];
          v25 = sqlite3_bind_text(v7, 3, [v24 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          v26 = v25;
          MSSqliteTrapForDBLockError(v25);

          if (!v26)
          {
            v27 = sqlite3_bind_text(v7, 4, [a1[6] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
            v28 = v27;
            MSSqliteTrapForDBLockError(v27);
            if (!v28)
            {
              v29 = [a1[5] assetCollectionGUID];
              v30 = sqlite3_bind_text(v7, 5, [v29 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
              v31 = v30;
              MSSqliteTrapForDBLockError(v30);

              if (!v31)
              {
                v32 = [a1[5] metadata];
                v33 = [v32 objectForKey:@"MSAssetMetadataAssetType"];
                v34 = [v33 isEqualToString:@"thumbnail"];

                if (v34 & 1) != 0 || ([a1[5] metadata], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "objectForKey:", @"MSAssetMetadataAssetTypeFlags"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "intValue"), v36, v35, (v37))
                {
                  v40 = 1;
                }

                else
                {
                  v38 = [a1[5] mediaAssetType];
                  v40 = v38 == 5 || v38 == 2;
                }

                v45 = sqlite3_bind_int(v7, 6, v40);
                v46 = v45;
                MSSqliteTrapForDBLockError(v45);
                if (!v46)
                {
                  v47 = [a1[5] batchCreationDate];

                  if (!v47 || ([a1[5] batchCreationDate], v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "timeIntervalSinceReferenceDate"), v50 = sqlite3_bind_double(v7, 7, v49), v51 = v50, MSSqliteTrapForDBLockError(v50), v48, !v51))
                  {
                    v52 = [a1[5] photoCreationDate];

                    if (!v52 || ([a1[5] photoCreationDate], v53 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v53, "timeIntervalSinceReferenceDate"), v55 = sqlite3_bind_double(v7, 8, v54), v56 = v55, MSSqliteTrapForDBLockError(v55), v53, !v56))
                    {
                      v57 = sqlite3_step(v7);
                      MSSqliteTrapForDBLockError(v57);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    sqlite3_reset(v7);
  }
}

- (int64_t)nextMMCSItemID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__MSASPersonModel_nextMMCSItemID__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dbQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __33__MSASPersonModel_nextMMCSItemID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueuePersistentObjectForKey:@"nextMMCSItemID"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 longLongValue];

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(a1 + 40) + 8) + 24) + 1];
  [v3 dbQueueSetPersistentObject:v4 forKey:@"nextMMCSItemID"];
}

- (BOOL)dbQueueIsGUIDQueued:(id)queued inQueue:(id)queue
{
  v24 = *MEMORY[0x277D85DE8];
  queuedCopy = queued;
  queueCopy = queue;
  queueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"select GUID from %@ where GUID = ? limit 1", queueCopy];;
  v9 = [(MSASModelBase *)self statementForString:queueCopy];

  v10 = sqlite3_reset(v9);
  LODWORD(queueCopy) = v10;
  MSSqliteTrapForDBLockError(v10);
  if (queueCopy || (v11 = sqlite3_bind_text(v9, 1, [queuedCopy UTF8String], -1, 0), v12 = v11, MSSqliteTrapForDBLockError(v11), v12))
  {
    sqlite3_reset(v9);
    v13 = 0;
  }

  else
  {
    v15 = sqlite3_step(v9);
    if (v15 == 100)
    {
      v13 = 1;
    }

    else
    {
      if (v15 != 101 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        selfCopy = self;
        v18 = 2114;
        v19 = queuedCopy;
        v20 = 2114;
        v21 = queueCopy;
        v22 = 2082;
        v23 = sqlite3_errmsg([(MSASModelBase *)self dbQueueDB]);
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot check if GUID %{public}@ is in %{public}@. Error: %{public}s", buf, 0x2Au);
      }

      v13 = 0;
    }

    sqlite3_reset(v9);
  }

  return v13;
}

- (void)dbQueueRemoveGUID:(id)d fromQueue:(id)queue
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  queueCopy = queue;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    selfCopy = self;
    v16 = 2114;
    v17 = dCopy;
    v18 = 2114;
    v19 = queueCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Removing GUID %{public}@ from %{public}@.", buf, 0x20u);
  }

  queueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"delete from %@ where GUID = ?", queueCopy];;
  v9 = [(MSASModelBase *)self statementForString:queueCopy];

  v10 = sqlite3_reset(v9);
  LODWORD(queueCopy) = v10;
  MSSqliteTrapForDBLockError(v10);
  if (!queueCopy)
  {
    v11 = sqlite3_bind_text(v9, 1, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v12 = v11;
    MSSqliteTrapForDBLockError(v11);
    if (!v12)
    {
      v13 = sqlite3_step(v9);
      MSSqliteTrapForDBLockError(v13);
    }
  }

  sqlite3_reset(v9);
}

- (void)dbQueueSetErrorCount:(int)count forGUID:(id)d inQueue:(id)queue
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  queueCopy = queue;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544130;
    selfCopy = self;
    v20 = 2114;
    v21 = dCopy;
    v22 = 2114;
    v23 = queueCopy;
    v24 = 1024;
    countCopy = count;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Setting error count for GUID %{public}@ in %{public}@ to %d.", buf, 0x26u);
  }

  queueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"update %@ set errorCount = ? where GUID = ?", queueCopy];;
  v11 = [(MSASModelBase *)self statementForString:queueCopy];

  v12 = sqlite3_reset(v11);
  LODWORD(queueCopy) = v12;
  MSSqliteTrapForDBLockError(v12);
  if (!queueCopy)
  {
    v13 = sqlite3_bind_int(v11, 1, count);
    v14 = v13;
    MSSqliteTrapForDBLockError(v13);
    if (!v14)
    {
      v15 = sqlite3_bind_text(v11, 2, [dCopy UTF8String], -1, 0);
      v16 = v15;
      MSSqliteTrapForDBLockError(v15);
      if (!v16)
      {
        v17 = sqlite3_step(v11);
        MSSqliteTrapForDBLockError(v17);
      }
    }
  }

  sqlite3_reset(v11);
}

- (int)dbQueueAssetCountAlbumGUID:(id)d inQueue:(id)queue
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  queueCopy = queue;
  if (dCopy)
  {
    v8 = @"select count(*) from %@ where albumGUID = ?";
  }

  else
  {
    v8 = @"select count(*) from %@;";
  }

  queueCopy = [MEMORY[0x277CCACA8] stringWithFormat:v8, queueCopy];
  v10 = [(MSASModelBase *)self statementForString:queueCopy];

  v11 = sqlite3_reset(v10);
  LODWORD(queueCopy) = v11;
  MSSqliteTrapForDBLockError(v11);
  if (queueCopy)
  {
    goto LABEL_5;
  }

  if (dCopy)
  {
    v17 = sqlite3_bind_text(v10, 1, [dCopy UTF8String], -1, 0);
    v18 = v17;
    MSSqliteTrapForDBLockError(v17);
    if (v18)
    {
      goto LABEL_5;
    }
  }

  if (sqlite3_step(v10) != 100)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy3 = self;
      v22 = 2114;
      *v23 = queueCopy;
      *&v23[8] = 2082;
      *&v23[10] = sqlite3_errmsg([(MSASModelBase *)self dbQueueDB]);
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot count number of assets enqueued in %{public}@. Error: %{public}s", buf, 0x20u);
    }

LABEL_5:
    v12 = 0;
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = sqlite3_column_int(v10, 0);
  if (v10)
  {
LABEL_6:
    sqlite3_reset(v10);
  }

LABEL_7:
  v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (dCopy)
  {
    if (v13)
    {
      *buf = 138544130;
      selfCopy3 = self;
      v22 = 1024;
      *v23 = v12;
      *&v23[4] = 2114;
      *&v23[6] = queueCopy;
      *&v23[14] = 2114;
      *&v23[16] = dCopy;
      v14 = MEMORY[0x277D86220];
      v15 = "%{public}@: Found %d assets enqueued in %{public}@ for album GUID %{public}@.";
      v16 = 38;
LABEL_20:
      _os_log_debug_impl(&dword_245B99000, v14, OS_LOG_TYPE_DEBUG, v15, buf, v16);
    }
  }

  else if (v13)
  {
    *buf = 138543874;
    selfCopy3 = self;
    v22 = 1024;
    *v23 = v12;
    *&v23[4] = 2114;
    *&v23[6] = queueCopy;
    v14 = MEMORY[0x277D86220];
    v15 = "%{public}@: Found %d assets enqueued in %{public}@.";
    v16 = 28;
    goto LABEL_20;
  }

  return v12;
}

- (void)requeuePendingAssetCollectionsWithAlbumGUID:(id)d
{
  dCopy = d;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__MSASPersonModel_requeuePendingAssetCollectionsWithAlbumGUID___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(dbQueue, v7);
}

uint64_t __63__MSASPersonModel_requeuePendingAssetCollectionsWithAlbumGUID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Removing asset collections from album with GUID %{public}@ from pending list.", &v11, 0x16u);
  }

  v2 = [*(a1 + 32) statementForString:@"delete from PendingAssetCollections where albumGUID = ?;"];
  v3 = MSSqliteBindStringOrNull(v2, 1, *(a1 + 40));
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4)
  {
    v5 = 914;
  }

  else
  {
    v6 = sqlite3_step(v2);
    v7 = v6;
    MSSqliteTrapForDBLockError(v6);
    if (v7 == 101)
    {
      goto LABEL_8;
    }

    v5 = 915;
  }

  MSLogSqliteError([*(a1 + 32) dbQueueDB], *(a1 + 32), v5);
LABEL_8:
  if (v2)
  {
    sqlite3_reset(v2);
  }

  return [*(a1 + 32) dbQueueRequeuePendingCommandsWithAlbumGUID:*(a1 + 40)];
}

- (void)requeuePendingAssetCollectionGUID:(id)d
{
  dCopy = d;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__MSASPersonModel_requeuePendingAssetCollectionGUID___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(dbQueue, v7);
}

uint64_t __53__MSASPersonModel_requeuePendingAssetCollectionGUID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Removing asset collection GUID %{public}@ from pending list.", &v9, 0x16u);
  }

  v2 = [*(a1 + 32) statementForString:@"delete from PendingAssetCollections where assetCollectionGUID = ?;"];
  v3 = MSSqliteBindStringOrNull(v2, 1, *(a1 + 40));
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (!v4)
  {
    v5 = sqlite3_step(v2);
    MSSqliteTrapForDBLockError(v5);
  }

  if (v2)
  {
    sqlite3_reset(v2);
  }

  return [*(a1 + 32) dbQueueRequeuePendingCommandsWithAssetCollectionGUID:*(a1 + 40)];
}

- (void)addPendingAssetCollectionGUID:(id)d albumGUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSASPersonModel_addPendingAssetCollectionGUID_albumGUID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = dCopy;
  v13 = iDCopy;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_async(dbQueue, block);
}

uint64_t __59__MSASPersonModel_addPendingAssetCollectionGUID_albumGUID___block_invoke(id *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[6];
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Adding asset collection GUID %{public}@ in album GUID %{public}@ as pending.", &v12, 0x20u);
  }

  v2 = [a1[4] statementForString:{@"insert or ignore into PendingAssetCollections (assetCollectionGUID, albumGUID) values (?, ?);"}];
  v3 = MSSqliteBindStringOrNull(v2, 1, a1[5]);
  v4 = v3;
  result = MSSqliteTrapForDBLockError(v3);
  if (!v4)
  {
    v6 = MSSqliteBindStringOrNull(v2, 2, a1[6]);
    v7 = v6;
    result = MSSqliteTrapForDBLockError(v6);
    if (!v7)
    {
      v8 = sqlite3_step(v2);
      result = MSSqliteTrapForDBLockError(v8);
    }
  }

  if (v2)
  {
    return sqlite3_reset(v2);
  }

  return result;
}

- (BOOL)dbQueueIsAssetCollectionWithGUIDPending:(id)pending
{
  pendingCopy = pending;
  v5 = [(MSASModelBase *)self statementForString:@"select assetCollectionGUID from PendingAssetCollections where assetCollectionGUID = ? limit 1;"];
  v6 = MSSqliteBindStringOrNull(v5, 1, pendingCopy);

  MSSqliteTrapForDBLockError(v6);
  if (!v6)
  {
    v9 = sqlite3_step(v5);
    if (v9 == 100)
    {
      v7 = 1;
      if (!v5)
      {
        return v7;
      }

      goto LABEL_3;
    }

    if (v9 != 101)
    {
      MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 870);
    }
  }

  v7 = 0;
  if (v5)
  {
LABEL_3:
    sqlite3_reset(v5);
  }

  return v7;
}

- (BOOL)isAssetCollectionWithGUIDPending:(id)pending
{
  pendingCopy = pending;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MSASPersonModel_isAssetCollectionWithGUIDPending___block_invoke;
  block[3] = &unk_278E91C78;
  v9 = pendingCopy;
  v10 = &v11;
  block[4] = self;
  v6 = pendingCopy;
  dispatch_sync(dbQueue, block);

  LOBYTE(pendingCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return pendingCopy;
}

void *__52__MSASPersonModel_isAssetCollectionWithGUIDPending___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dbQueueIsAssetCollectionWithGUIDPending:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int64_t)countOfEnqueuedCommands
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__MSASPersonModel_countOfEnqueuedCommands__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dbQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __42__MSASPersonModel_countOfEnqueuedCommands__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v11 = 138543362;
    v12 = v8;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Counting number of commands queued", &v11, 0xCu);
  }

  v2 = [*(a1 + 32) statementForString:@"select count(*) from CommandQueue;"];
  v3 = sqlite3_reset(v2);
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4)
  {
    goto LABEL_4;
  }

  v5 = sqlite3_step(v2);
  if (v5 != 101)
  {
    if (v5 != 100)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v7 = sqlite3_errmsg([v6 dbQueueDB]);
        v11 = 138543618;
        v12 = v6;
        v13 = 2082;
        v14 = v7;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error counting number of commands enqueued.sqlite error: %{public}s", &v11, 0x16u);
      }

LABEL_4:
      sqlite3_reset(v2);
      *(*(*(a1 + 40) + 8) + 24) = 0;
      return;
    }

    *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int64(v2, 0);
  }

  sqlite3_reset(v2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 24);
    v11 = 138543618;
    v12 = v9;
    v13 = 2048;
    v14 = v10;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...found %lld commands in the queue.", &v11, 0x16u);
  }
}

- (int64_t)countOfEnqueuedCommand:(id)command
{
  commandCopy = command;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MSASPersonModel_countOfEnqueuedCommand___block_invoke;
  block[3] = &unk_278E91C78;
  block[4] = self;
  v10 = commandCopy;
  v11 = &v12;
  v6 = commandCopy;
  dispatch_sync(dbQueue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __42__MSASPersonModel_countOfEnqueuedCommand___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v15 = 138543618;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Counting number of queued command %{public}@", &v15, 0x16u);
  }

  v2 = [*(a1 + 32) statementForString:@"select count(*) from CommandQueue where command = ?;"];
  v3 = sqlite3_bind_text(v2, 1, [*(a1 + 40) UTF8String], -1, 0);
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = sqlite3_reset(v2);
  v6 = v5;
  MSSqliteTrapForDBLockError(v5);
  if (v6)
  {
    goto LABEL_5;
  }

  v7 = sqlite3_step(v2);
  if (v7 != 101)
  {
    if (v7 != 100)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v14 = sqlite3_errmsg([v12 dbQueueDB]);
        v15 = 138543874;
        v16 = v12;
        v17 = 2114;
        v18 = v13;
        v19 = 2082;
        v20 = v14;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error counting number of “%{public}@” commands enqueued.sqlite error: %{public}s", &v15, 0x20u);
      }

LABEL_5:
      sqlite3_reset(v2);
      *(*(*(a1 + 48) + 8) + 24) = 0;
      return;
    }

    *(*(*(a1 + 48) + 8) + 24) = sqlite3_column_int64(v2, 0);
  }

  sqlite3_reset(v2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = *(*(*(a1 + 48) + 8) + 24);
    v15 = 138543618;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...found %lld instances.", &v15, 0x16u);
  }
}

- (void)purgeCompletionBlock:(id)block
{
  blockCopy = block;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__MSASPersonModel_purgeCompletionBlock___block_invoke;
  v7[3] = &unk_278E927A0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dbQueue, v7);
}

void __40__MSASPersonModel_purgeCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dbQueueBeginTransaction];
  [*(a1 + 32) dbQueueRemoveAllEntriesFromTable:@"CommandQueue"];
  [*(a1 + 32) dbQueueRemoveAllEntriesFromTable:@"PendingCommandQueue"];
  [*(a1 + 32) dbQueueRemoveAllEntriesFromTable:@"PendingAssetCollections"];
  [*(a1 + 32) dbQueueRemoveAllEntriesFromTable:@"DownloadQueue"];
  [*(a1 + 32) dbQueueRemoveAllEntriesFromTable:@"UploadQueue"];
  [*(a1 + 32) dbQueueEndTransaction];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    dispatch_async(v3, v2);
  }
}

- (void)dbQueueRemoveAllEntriesFromTable:(id)table
{
  v12 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = tableCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Removing all entries from table %{public}@.", buf, 0x16u);
  }

  tableCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"delete from %@", tableCopy];;
  v6 = [(MSASModelBase *)self statementForString:tableCopy];

  v7 = sqlite3_step(v6);
  LODWORD(tableCopy) = v7;
  MSSqliteTrapForDBLockError(v7);
  if (tableCopy != 101)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 773);
  }

  if (v6)
  {
    sqlite3_reset(v6);
  }
}

- (void)dbQueueRemoveCommandIdentifier:(int64_t)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2048;
    identifierCopy = identifier;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Removing command at order %lld.", &v11, 0x16u);
  }

  v5 = [(MSASModelBase *)self statementForString:@"delete from CommandQueue where ord = ?;"];
  v6 = sqlite3_reset(v5);
  v7 = v6;
  MSSqliteTrapForDBLockError(v6);
  if (!v7)
  {
    v8 = sqlite3_bind_int64(v5, 1, identifier);
    v9 = v8;
    MSSqliteTrapForDBLockError(v8);
    if (!v9)
    {
      v10 = sqlite3_step(v5);
      MSSqliteTrapForDBLockError(v10);
    }
  }

  sqlite3_reset(v5);
}

- (void)removeCommandIdentifier:(int64_t)identifier
{
  dbQueue = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__MSASPersonModel_removeCommandIdentifier___block_invoke;
  v6[3] = &unk_278E92750;
  v6[4] = self;
  v6[5] = identifier;
  dispatch_async(dbQueue, v6);
}

- (void)dbQueueRemoveCommandAtHeadOfQueue
{
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MSASPersonModel_dbQueueRemoveCommandAtHeadOfQueue__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(dbQueue, block);
}

uint64_t __52__MSASPersonModel_dbQueueRemoveCommandAtHeadOfQueue__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 dbQueueSmallestCommandSequenceNumber];

  return [v1 dbQueueRemoveCommandIdentifier:v2];
}

- (void)setParams:(id)params forCommandWithIdentifier:(int64_t)identifier
{
  paramsCopy = params;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MSASPersonModel_setParams_forCommandWithIdentifier___block_invoke;
  block[3] = &unk_278E91AA0;
  v10 = paramsCopy;
  identifierCopy = identifier;
  block[4] = self;
  v8 = paramsCopy;
  dispatch_async(dbQueue, block);
}

void __54__MSASPersonModel_setParams_forCommandWithIdentifier___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    *buf = 138543618;
    v24 = v17;
    v25 = 2048;
    v26 = v18;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Setting parameters for command at sequence number %lld.", buf, 0x16u);
  }

  v2 = [*(a1 + 32) statementForString:@"update CommandQueue set params = ? where ord = ?;"];
  v3 = sqlite3_reset(v2);
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4)
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 40);
  v22 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v22];
  v7 = v22;
  v8 = v7;
  if (!v6)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [v7 userInfo];
    v11 = [v9 stringWithFormat:@"Failed to archive a paramsData object. Error: %@ Info: %@", v8, v10];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v11;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  v12 = [v6 length];
  if (v12 >= 0x7FFFFFFF)
  {
    __assert_rtn("[MSASPersonModel setParams:forCommandWithIdentifier:]_block_invoke", "MSASPersonModel.m", 732, "paramsDataLength < INT_MAX");
  }

  v13 = sqlite3_bind_blob(v2, 1, [v6 bytes], v12, 0xFFFFFFFFFFFFFFFFLL);
  v14 = v13;
  MSSqliteTrapForDBLockError(v13);
  if (v14 || (v15 = sqlite3_bind_int64(v2, 2, *(a1 + 48)), v16 = v15, MSSqliteTrapForDBLockError(v15), v16))
  {

LABEL_12:
    sqlite3_reset(v2);
    return;
  }

  v19 = sqlite3_step(v2);
  v20 = v19;
  MSSqliteTrapForDBLockError(v19);

  sqlite3_reset(v2);
  if (v20 == 101 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 32);
    *buf = 138543362;
    v24 = v21;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...done.", buf, 0xCu);
  }
}

- (id)commandWithMinimumIdentifier:(int64_t)identifier outParams:(id *)params outCommandIdentifier:(int64_t *)commandIdentifier outPersonID:(id *)d outAlbumGUID:(id *)iD outAssetCollectionGUID:(id *)uID
{
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:identifier];
  v15 = [(MSASPersonModel *)self _commandWithMinimumIdentifier:v14 outParams:params outCommandIdentifier:commandIdentifier outPersonID:d outAlbumGUID:iD outAssetCollectionGUID:uID];

  return v15;
}

- (id)_commandWithMinimumIdentifier:(id)identifier outParams:(id *)params outCommandIdentifier:(int64_t *)commandIdentifier outPersonID:(id *)d outAlbumGUID:(id *)iD outAssetCollectionGUID:(id *)uID
{
  identifierCopy = identifier;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__4870;
  v60 = __Block_byref_object_dispose__4871;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__4870;
  v54 = __Block_byref_object_dispose__4871;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__4870;
  v44 = __Block_byref_object_dispose__4871;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__4870;
  v38 = __Block_byref_object_dispose__4871;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4870;
  v32 = __Block_byref_object_dispose__4871;
  v33 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__MSASPersonModel__commandWithMinimumIdentifier_outParams_outCommandIdentifier_outPersonID_outAlbumGUID_outAssetCollectionGUID___block_invoke;
  block[3] = &unk_278E91838;
  v13 = identifierCopy;
  v20 = v13;
  selfCopy = self;
  v22 = &v56;
  v23 = &v50;
  v24 = &v46;
  v25 = &v40;
  v26 = &v34;
  v27 = &v28;
  dispatch_sync(dbQueue, block);

  if (params)
  {
    *params = v51[5];
  }

  if (commandIdentifier)
  {
    *commandIdentifier = v47[3];
  }

  if (d)
  {
    *d = v41[5];
  }

  if (iD)
  {
    *iD = v35[5];
  }

  if (uID)
  {
    *uID = v29[5];
  }

  v14 = v57[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);

  return v14;
}

void __128__MSASPersonModel__commandWithMinimumIdentifier_outParams_outCommandIdentifier_outPersonID_outAlbumGUID_outAssetCollectionGUID___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v3)
    {
      v24 = *(a1 + 40);
      v27 = 138543618;
      v28 = v24;
      v29 = 2114;
      v30 = v2;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieving command with minimum identifier %{public}@.", &v27, 0x16u);
    }

    v4 = [*(a1 + 40) statementForString:{@"select ord, command, params, personID, albumGUID, assetCollectionGUID from CommandQueue where ord >= ? order by ord limit 1;"}];
    v5 = sqlite3_bind_int64(v4, 1, [*(a1 + 32) longLongValue]);
    v6 = v5;
    MSSqliteTrapForDBLockError(v5);
    if (v6)
    {
      MSLogSqliteError([*(a1 + 40) dbQueueDB], *(a1 + 40), 644);
    }
  }

  else
  {
    if (v3)
    {
      v25 = *(a1 + 40);
      v27 = 138543362;
      v28 = v25;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieving command at the head of the queue.", &v27, 0xCu);
    }

    v4 = [*(a1 + 40) statementForString:{@"select ord, command, params, personID, albumGUID, assetCollectionGUID from CommandQueue order by ord limit 1;"}];
  }

  v7 = sqlite3_reset(v4);
  v8 = v7;
  MSSqliteTrapForDBLockError(v7);
  if (v8)
  {
    goto LABEL_10;
  }

  v11 = sqlite3_step(v4);
  if (v11 == 101)
  {
    v12 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v10 = 0;
  }

  else
  {
    if (v11 != 100)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 40);
        v23 = sqlite3_errmsg([v22 dbQueueDB]);
        v27 = 138543618;
        v28 = v22;
        v29 = 2082;
        v30 = v23;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error retrieving command at the head of the queue. sqlite error: %{public}s", &v27, 0x16u);
      }

LABEL_10:
      sqlite3_reset(v4);
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = 0;
      goto LABEL_18;
    }

    v12 = sqlite3_column_int64(v4, 0);
    v10 = MSSqliteStringFromStatementColumn(v4, 1);
    v13 = sqlite3_column_blob(v4, 2);
    v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v13 length:sqlite3_column_bytes(v4 freeWhenDone:{2), 0}];
    v15 = [MEMORY[0x277CCAAC8] MSSafeUnarchiveObjectWithData:v14 outError:0];
    v16 = MSSqliteStringFromStatementColumn(v4, 3);
    v17 = MSSqliteStringFromStatementColumn(v4, 4);
    v18 = MSSqliteStringFromStatementColumn(v4, 5);
  }

  sqlite3_reset(v4);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v15);
  *(*(*(a1 + 64) + 8) + 24) = v12;
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), v16);
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), v17);
  v19 = *(*(a1 + 88) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
  v21 = v18;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 40);
    v27 = 138544642;
    v28 = v26;
    v29 = 2114;
    v30 = v10;
    v31 = 2048;
    v32 = v12;
    v33 = 2112;
    v34 = v16;
    v35 = 2114;
    v36 = v17;
    v37 = 2112;
    v38 = v21;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...retrieved command %{public}@ at sequence number %lld for personID %@, album GUID %{public}@,  asset collection GUID %@", &v27, 0x3Eu);
  }

LABEL_18:
}

- (void)dbQueueRequeuePendingCommandsWithAlbumGUID:(id)d
{
  dCopy = d;
  v4 = [(MSASModelBase *)self statementForString:@"select command, params, personID, albumGUID, assetCollectionGUID from PendingCommandQueue where albumGUID = ?;"];
  v5 = MSSqliteBindStringOrNull(v4, 1, dCopy);
  v6 = v5;
  MSSqliteTrapForDBLockError(v5);
  if (v6)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 613);
    v7 = 0;
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = [(MSASModelBase *)self statementForString:@"delete from PendingCommandQueue where albumGUID = ?;"];
  v8 = MSSqliteBindStringOrNull(v7, 1, dCopy);
  v9 = v8;
  MSSqliteTrapForDBLockError(v8);
  if (v9)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 616);
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(MSASPersonModel *)self dbQueueRequeuePendingCommandsWithQueryStatement:v4 deleteStatement:v7];
  if (v4)
  {
LABEL_6:
    sqlite3_reset(v4);
  }

LABEL_7:
  if (v7)
  {
    sqlite3_reset(v7);
  }
}

- (void)dbQueueRequeuePendingCommandsWithAssetCollectionGUID:(id)d
{
  dCopy = d;
  v4 = [(MSASModelBase *)self statementForString:@"select command, params, personID, albumGUID, assetCollectionGUID from PendingCommandQueue where assetCollectionGUID = ?;"];
  v5 = MSSqliteBindStringOrNull(v4, 1, dCopy);
  v6 = v5;
  MSSqliteTrapForDBLockError(v5);
  if (v6)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 597);
    v7 = 0;
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = [(MSASModelBase *)self statementForString:@"delete from PendingCommandQueue where AssetCollectionGUID = ?;"];
  v8 = MSSqliteBindStringOrNull(v7, 1, dCopy);
  v9 = v8;
  MSSqliteTrapForDBLockError(v8);
  if (v9)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 600);
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(MSASPersonModel *)self dbQueueRequeuePendingCommandsWithQueryStatement:v4 deleteStatement:v7];
  if (v4)
  {
LABEL_6:
    sqlite3_reset(v4);
  }

LABEL_7:
  if (v7)
  {
    sqlite3_reset(v7);
  }
}

- (void)dbQueueRequeuePendingCommandsWithQueryStatement:(sqlite3_stmt *)statement deleteStatement:(sqlite3_stmt *)deleteStatement
{
  v43 = *MEMORY[0x277D85DE8];
  [(MSASModelBase *)self beginTransaction];
  dbQueueNextCommandSequenceNumber = [(MSASPersonModel *)self dbQueueNextCommandSequenceNumber];
  v6 = [(MSASModelBase *)self statementForString:@"insert into CommandQueue (ord, command, params, personID, albumGUID, assetCollectionGUID) values (?, ?, ?, ?, ?, ?);"];
  v7 = sqlite3_step(statement);
  while (v7 == 100)
  {
    v8 = MSSqliteStringFromStatementColumn(statement, 0);
    v9 = MSSqliteDataFromStatementColumn(statement, 1);
    v10 = MSSqliteStringFromStatementColumn(statement, 2);
    v11 = MSSqliteStringFromStatementColumn(statement, 3);
    v12 = MSSqliteStringFromStatementColumn(statement, 4);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543874;
      selfCopy = self;
      v39 = 2114;
      v40 = v8;
      v41 = 2048;
      v42 = dbQueueNextCommandSequenceNumber;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Requeueing pended command: %{public}@ at position %lld", buf, 0x20u);
    }

    v13 = sqlite3_reset(v6);
    v14 = v13;
    MSSqliteTrapForDBLockError(v13);
    if (v14)
    {
      dbQueueDB = [(MSASModelBase *)self dbQueueDB];
      selfCopy9 = self;
      v17 = 573;
LABEL_22:
      MSLogSqliteError(dbQueueDB, selfCopy9, v17);
      v32 = 0;
      v7 = 100;
      goto LABEL_23;
    }

    v18 = sqlite3_bind_int64(v6, 1, dbQueueNextCommandSequenceNumber);
    v19 = v18;
    MSSqliteTrapForDBLockError(v18);
    if (v19)
    {
      dbQueueDB = [(MSASModelBase *)self dbQueueDB];
      selfCopy9 = self;
      v17 = 574;
      goto LABEL_22;
    }

    v20 = MSSqliteBindStringOrNull(v6, 2, v8);
    v21 = v20;
    MSSqliteTrapForDBLockError(v20);
    if (v21)
    {
      dbQueueDB = [(MSASModelBase *)self dbQueueDB];
      selfCopy9 = self;
      v17 = 575;
      goto LABEL_22;
    }

    v22 = MSSqliteBindDataOrNull(v6, 3, v9);
    v23 = v22;
    MSSqliteTrapForDBLockError(v22);
    if (v23)
    {
      dbQueueDB = [(MSASModelBase *)self dbQueueDB];
      selfCopy9 = self;
      v17 = 576;
      goto LABEL_22;
    }

    v24 = MSSqliteBindStringOrNull(v6, 4, v10);
    v25 = v24;
    MSSqliteTrapForDBLockError(v24);
    if (v25)
    {
      dbQueueDB = [(MSASModelBase *)self dbQueueDB];
      selfCopy9 = self;
      v17 = 577;
      goto LABEL_22;
    }

    v26 = MSSqliteBindStringOrNull(v6, 5, v11);
    v27 = v26;
    MSSqliteTrapForDBLockError(v26);
    if (v27)
    {
      dbQueueDB = [(MSASModelBase *)self dbQueueDB];
      selfCopy9 = self;
      v17 = 578;
      goto LABEL_22;
    }

    v28 = MSSqliteBindStringOrNull(v6, 6, v12);
    v29 = v28;
    MSSqliteTrapForDBLockError(v28);
    if (v29)
    {
      dbQueueDB = [(MSASModelBase *)self dbQueueDB];
      selfCopy9 = self;
      v17 = 579;
      goto LABEL_22;
    }

    v30 = sqlite3_step(v6);
    v31 = v30;
    MSSqliteTrapForDBLockError(v30);
    if (v31 != 101)
    {
      dbQueueDB = [(MSASModelBase *)self dbQueueDB];
      selfCopy9 = self;
      v17 = 580;
      goto LABEL_22;
    }

    ++dbQueueNextCommandSequenceNumber;
    v7 = sqlite3_step(statement);
    v32 = 1;
LABEL_23:

    if ((v32 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v33 = sqlite3_step(deleteStatement);
  v34 = v33;
  MSSqliteTrapForDBLockError(v33);
  if (v34 != 101)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 586);
  }

LABEL_27:
  if (v6)
  {
    sqlite3_reset(v6);
  }

  [(MSASModelBase *)self endTransaction];
}

- (void)enqueueCommand:(id)command params:(id)params personID:(id)d albumGUID:(id)iD pendingOnAssetCollectionGUID:(id)uID
{
  commandCopy = command;
  paramsCopy = params;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __89__MSASPersonModel_enqueueCommand_params_personID_albumGUID_pendingOnAssetCollectionGUID___block_invoke;
  v23[3] = &unk_278E92048;
  v23[4] = self;
  v24 = uIDCopy;
  v25 = commandCopy;
  v26 = paramsCopy;
  v27 = dCopy;
  v28 = iDCopy;
  v18 = iDCopy;
  v19 = dCopy;
  v20 = paramsCopy;
  v21 = commandCopy;
  v22 = uIDCopy;
  dispatch_async(dbQueue, v23);
}

void __89__MSASPersonModel_enqueueCommand_params_personID_albumGUID_pendingOnAssetCollectionGUID___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) dbQueueIsAssetCollectionWithGUIDPending:*(a1 + 40)])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 32);
      v22 = *(a1 + 48);
      *buf = 138543618;
      v37 = v21;
      v38 = 2114;
      v39 = v22;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Enqueueing pending command “%{public}@”.", buf, 0x16u);
    }

    v2 = [*(a1 + 32) statementForString:@"select max(ord) from PendingCommandQueue;"];
    v3 = sqlite3_step(v2);
    if (v3 == 101)
    {
      v4 = 0;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v3 != 100)
      {
        MSLogSqliteError([*(a1 + 32) dbQueueDB], *(a1 + 32), 526);
        goto LABEL_18;
      }

      v4 = sqlite3_column_int(v2, 0) + 1;
      if (!v2)
      {
LABEL_8:
        v2 = [*(a1 + 32) statementForString:{@"insert into PendingCommandQueue (ord, command, params, personID, albumGUID, assetCollectionGUID) values (?, ?, ?, ?, ?, ?);"}];
        v5 = sqlite3_bind_int64(v2, 1, v4);
        v6 = v5;
        MSSqliteTrapForDBLockError(v5);
        if (!v6)
        {
          v7 = MSSqliteBindStringOrNull(v2, 2, *(a1 + 48));
          v8 = v7;
          MSSqliteTrapForDBLockError(v7);
          if (!v8)
          {
            v9 = *(a1 + 56);
            v35 = 0;
            v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v35];
            v11 = v35;
            v12 = v11;
            if (v10)
            {
              v13 = v2;
              v14 = v10;
            }

            else
            {
              v23 = MEMORY[0x277CCACA8];
              v24 = [v11 userInfo];
              v25 = [v23 stringWithFormat:@"Failed to archive params object. Error: %@ Info: %@", v12, v24];

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v37 = v25;
                _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
              }

              v13 = v2;
              v14 = 0;
            }

            v26 = MSSqliteBindDataOrNull(v13, 3, v14);
            v27 = v26;
            MSSqliteTrapForDBLockError(v26);
            if (!v27)
            {
              v28 = MSSqliteBindStringOrNull(v2, 4, *(a1 + 64));
              v29 = v28;
              MSSqliteTrapForDBLockError(v28);
              if (!v29)
              {
                v30 = MSSqliteBindStringOrNull(v2, 5, *(a1 + 72));
                v31 = v30;
                MSSqliteTrapForDBLockError(v30);
                if (!v31)
                {
                  v32 = MSSqliteBindStringOrNull(v2, 6, *(a1 + 40));
                  v33 = v32;
                  MSSqliteTrapForDBLockError(v32);
                  if (!v33)
                  {
                    v34 = sqlite3_step(v2);
                    MSSqliteTrapForDBLockError(v34);
                  }
                }
              }
            }

            if (!v2)
            {
              return;
            }

LABEL_19:
            sqlite3_reset(v2);
            return;
          }
        }

LABEL_18:
        if (!v2)
        {
          return;
        }

        goto LABEL_19;
      }
    }

    sqlite3_reset(v2);
    goto LABEL_8;
  }

  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);

  [v19 dbQueueEnqueueCommand:v15 params:v16 personID:v17 albumGUID:v18 assetCollectionGUID:v20];
}

- (void)dbQueueEnqueueCommand:(id)command params:(id)params personID:(id)d albumGUID:(id)iD assetCollectionGUID:(id)uID sequenceNumber:(int64_t)number
{
  v46 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  paramsCopy = params;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    selfCopy = self;
    v42 = 2114;
    v43 = commandCopy;
    v44 = 2048;
    numberCopy = number;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Enqueueing command %{public}@ at sequence number %lld.", buf, 0x20u);
  }

  v19 = [(MSASModelBase *)self statementForString:@"insert into CommandQueue (ord, command, params, personID, albumGUID, assetCollectionGUID) values (?, ?, ?, ?, ?, ?);"];
  v20 = sqlite3_bind_int64(v19, 1, number);
  v21 = v20;
  MSSqliteTrapForDBLockError(v20);
  if (!v21)
  {
    v22 = MSSqliteBindStringOrNull(v19, 2, commandCopy);
    v23 = v22;
    MSSqliteTrapForDBLockError(v22);
    if (!v23)
    {
      v39 = 0;
      v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:paramsCopy requiringSecureCoding:1 error:&v39];
      v25 = v39;
      v26 = v25;
      if (v24)
      {
        v27 = MSSqliteBindDataOrNull(v19, 3, v24);
      }

      else
      {
        v28 = MEMORY[0x277CCACA8];
        userInfo = [v25 userInfo];
        v30 = [v28 stringWithFormat:@"Failed to archive params object. Error: %@ Info: %@", v26, userInfo];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = v30;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        v27 = sqlite3_bind_null(v19, 3);
      }

      v31 = v27;
      MSSqliteTrapForDBLockError(v27);
      if (!v31)
      {
        v32 = MSSqliteBindStringOrNull(v19, 4, dCopy);
        v33 = v32;
        MSSqliteTrapForDBLockError(v32);
        if (!v33)
        {
          v34 = MSSqliteBindStringOrNull(v19, 5, iDCopy);
          v35 = v34;
          MSSqliteTrapForDBLockError(v34);
          if (!v35)
          {
            v36 = MSSqliteBindStringOrNull(v19, 6, uIDCopy);
            v37 = v36;
            MSSqliteTrapForDBLockError(v36);
            if (!v37)
            {
              v38 = sqlite3_step(v19);
              MSSqliteTrapForDBLockError(v38);
            }
          }
        }
      }
    }
  }

  if (v19)
  {
    sqlite3_reset(v19);
  }
}

- (void)enqueueCommandAtHeadOfQueue:(id)queue params:(id)params personID:(id)d albumGUID:(id)iD assetCollectionGUID:(id)uID
{
  queueCopy = queue;
  paramsCopy = params;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __93__MSASPersonModel_enqueueCommandAtHeadOfQueue_params_personID_albumGUID_assetCollectionGUID___block_invoke;
  v23[3] = &unk_278E92048;
  v23[4] = self;
  v24 = queueCopy;
  v25 = paramsCopy;
  v26 = dCopy;
  v27 = iDCopy;
  v28 = uIDCopy;
  v18 = uIDCopy;
  v19 = iDCopy;
  v20 = dCopy;
  v21 = paramsCopy;
  v22 = queueCopy;
  dispatch_async(dbQueue, v23);
}

uint64_t __93__MSASPersonModel_enqueueCommandAtHeadOfQueue_params_personID_albumGUID_assetCollectionGUID___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v7 = [v1 dbQueueSmallestCommandSequenceNumber] - 1;

  return [v1 dbQueueEnqueueCommand:v2 params:v3 personID:v4 albumGUID:v5 assetCollectionGUID:v6 sequenceNumber:v7];
}

- (void)enqueueCommand:(id)command params:(id)params personID:(id)d albumGUID:(id)iD assetCollectionGUID:(id)uID
{
  commandCopy = command;
  paramsCopy = params;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __80__MSASPersonModel_enqueueCommand_params_personID_albumGUID_assetCollectionGUID___block_invoke;
  v23[3] = &unk_278E92048;
  v23[4] = self;
  v24 = commandCopy;
  v25 = paramsCopy;
  v26 = dCopy;
  v27 = iDCopy;
  v28 = uIDCopy;
  v18 = uIDCopy;
  v19 = iDCopy;
  v20 = dCopy;
  v21 = paramsCopy;
  v22 = commandCopy;
  dispatch_async(dbQueue, v23);
}

- (void)dbQueueEnqueueCommand:(id)command params:(id)params personID:(id)d albumGUID:(id)iD assetCollectionGUID:(id)uID
{
  commandCopy = command;
  paramsCopy = params;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  v16 = objc_autoreleasePoolPush();
  [(MSASPersonModel *)self dbQueueEnqueueCommand:commandCopy params:paramsCopy personID:dCopy albumGUID:iDCopy assetCollectionGUID:uIDCopy sequenceNumber:[(MSASPersonModel *)self dbQueueNextCommandSequenceNumber]];
  objc_autoreleasePoolPop(v16);
}

- (int64_t)dbQueueSmallestCommandSequenceNumber
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(MSASModelBase *)self statementForString:@"select min(ord) from CommandQueue;"];
  v4 = sqlite3_reset(v3);
  v5 = v4;
  MSSqliteTrapForDBLockError(v4);
  if (v5)
  {
LABEL_2:
    sqlite3_reset(v3);
    return 0;
  }

  v7 = sqlite3_step(v3);
  if (v7 == 101)
  {
    v6 = 0;
  }

  else
  {
    if (v7 != 100)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v9 = 138543618;
        selfCopy2 = self;
        v11 = 2082;
        v12 = sqlite3_errmsg([(MSASModelBase *)self dbQueueDB]);
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not retrieve next command sequence number. sqlite error: %{public}s", &v9, 0x16u);
      }

      goto LABEL_2;
    }

    v6 = sqlite3_column_int64(v3, 0);
  }

  sqlite3_reset(v3);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = 138543618;
    selfCopy2 = self;
    v11 = 2048;
    v12 = v6;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...smallest command number: %lld", &v9, 0x16u);
  }

  return v6;
}

- (int64_t)dbQueueNextCommandSequenceNumber
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(MSASModelBase *)self statementForString:@"select max(ord) from CommandQueue;"];
  v4 = sqlite3_reset(v3);
  v5 = v4;
  MSSqliteTrapForDBLockError(v4);
  if (v5)
  {
LABEL_2:
    sqlite3_reset(v3);
    return 0;
  }

  v7 = sqlite3_step(v3);
  if (v7 == 101)
  {
    v6 = 0;
  }

  else
  {
    if (v7 != 100)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v9 = 138543618;
        selfCopy2 = self;
        v11 = 2082;
        v12 = sqlite3_errmsg([(MSASModelBase *)self dbQueueDB]);
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not retrieve next command sequence number. sqlite error: %{public}s", &v9, 0x16u);
      }

      goto LABEL_2;
    }

    v6 = sqlite3_column_int64(v3, 0) + 1;
  }

  sqlite3_reset(v3);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = 138543618;
    selfCopy2 = self;
    v11 = 2048;
    v12 = v6;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...next command sequence: %lld", &v9, 0x16u);
  }

  return v6;
}

- (BOOL)dbQueueUpgradeFromDatabaseVersion:(int)version currentVersion:(int)currentVersion
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = MSASPersonModel;
  v6 = [(MSASModelBase *)&v11 dbQueueUpgradeFromDatabaseVersion:*&version currentVersion:*&currentVersion];
  if (v6)
  {
    if (version < 0)
    {
      errmsg = 0;
      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create table if not exists CommandQueue (\n   ord                   integer,\n   command               text,\n   params                blob,\n   personID              text,\n   albumGUID             text,\n   assetCollectionGUID   text\n);", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          v7 = MEMORY[0x277D86220];
          v8 = "%{public}@: Could not create person model command queue. Error: %{public}s";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create index if not exists CommandQueueByOrder on CommandQueue (ord asc);", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          v7 = MEMORY[0x277D86220];
          v8 = "%{public}@: Could not create command queueindex. Error: %{public}s";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create table if not exists PendingCommandQueue (\n   ord                   integer,\n   command               text,\n   params                blob,\n   personID              text,\n   albumGUID             text,\n   assetCollectionGUID   text\n);", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          v7 = MEMORY[0x277D86220];
          v8 = "%{public}@: Could not create person model pending command queue. Error: %{public}s";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create index if not exists PendingCommandQueueByOrder on PendingCommandQueue (ord asc);", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          v7 = MEMORY[0x277D86220];
          v8 = "%{public}@: Could not create pending command queue index. Error: %{public}s";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create table if not exists PendingAssetCollections (\n   assetCollectionGUID   text unique,\n   albumGUID             text\n);", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          v7 = MEMORY[0x277D86220];
          v8 = "%{public}@: Could not create person model pending asset collections table. Error: %{public}s";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create table if not exists DownloadQueue (\n  ord                  integer,\n  isThumbnail          integer default 0,\n  isInflight           integer default 0,\n  GUID                 text,\n  albumGUID            text,\n  assetCollectionGUID  text,\n  batchCreationDate    real,\n  photoCreationDate    real,\n  errorCount           integer default 0,\n  album                blob,\n  object               blob\n);", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          v7 = MEMORY[0x277D86220];
          v8 = "%{public}@: Could not create download queue tables. Error: %{public}s";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create index if not exists DownloadQueueGeneralOrder on DownloadQueue (isThumbnail asc, albumGUID asc, batchCreationDate asc, photoCreationDate asc);", 0, 0, &errmsg))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_100;
        }

        goto LABEL_46;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create index if not exists DownloadQueueGeneralReverseOrder on DownloadQueue (isThumbnail asc, albumGUID asc, batchCreationDate desc, photoCreationDate asc);", 0, 0, &errmsg))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_100;
        }

        goto LABEL_13;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create table if not exists UploadQueue (\n  ord                  integer,\n  uploadPriority       integer default 0,\n  GUID                 text,\n  albumGUID            text,\n  errorCount           integer default 0,\n  album                blob,\n  object               blob\n);", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          v7 = MEMORY[0x277D86220];
          v8 = "%{public}@: Could not create upload queue tables. Error: %{public}s";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create index if not exists UploadQueueByOrder on UploadQueue (ord asc);", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          v7 = MEMORY[0x277D86220];
          v8 = "%{public}@: Could not create upload queue order index. Error: %{public}s";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create index if not exists UploadQueueByGUID on UploadQueue (GUID asc);", 0, 0, &errmsg))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_100;
        }

        goto LABEL_40;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create index if not exists DownloadQueueByGUID on DownloadQueue (GUID asc);", 0, 0, &errmsg))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_100;
        }

        goto LABEL_98;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "analyze;", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not analyze database. Ignoring. Error: %{public}s", buf, 0x16u);
        }

        sqlite3_free(errmsg);
      }

      goto LABEL_107;
    }

    if (version <= 2)
    {
      errmsg = 0;
      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "alter table DownloadQueue add column batchCreationDate real;", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
LABEL_6:
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          v7 = MEMORY[0x277D86220];
          v8 = "%{public}@: Could not add download queue column. Error: %{public}s";
LABEL_99:
          _os_log_error_impl(&dword_245B99000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x16u);
        }

LABEL_100:
        sqlite3_free(errmsg);
        goto LABEL_101;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "alter table DownloadQueue add column photoCreationDate real;", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_6;
        }

        goto LABEL_100;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create index if not exists DownloadQueueGeneralOrder on DownloadQueue (isThumbnail asc, albumGUID asc, batchCreationDate asc, photoCreationDate asc);", 0, 0, &errmsg))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_100;
        }

LABEL_46:
        *buf = 138543618;
        selfCopy24 = self;
        v14 = 2082;
        v15 = errmsg;
        v7 = MEMORY[0x277D86220];
        v8 = "%{public}@: Could not create download queue index. Error: %{public}s";
        goto LABEL_99;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "analyze;", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not analyze database. Ignoring. Error: %{public}s", buf, 0x16u);
        }

        sqlite3_free(errmsg);
      }

      goto LABEL_11;
    }

    if (version == 3)
    {
LABEL_11:
      errmsg = 0;
      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create index if not exists DownloadQueueGeneralReverseOrder on DownloadQueue (isThumbnail asc, albumGUID asc, batchCreationDate desc, photoCreationDate asc);", 0, 0, &errmsg))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_100;
        }

LABEL_13:
        *buf = 138543618;
        selfCopy24 = self;
        v14 = 2082;
        v15 = errmsg;
        v7 = MEMORY[0x277D86220];
        v8 = "%{public}@: Could not create download queue reverse index. Error: %{public}s";
        goto LABEL_99;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "analyze;", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not analyze database. Ignoring. Error: %{public}s", buf, 0x16u);
        }

        sqlite3_free(errmsg);
      }

      goto LABEL_31;
    }

    if (version <= 4)
    {
LABEL_31:
      errmsg = 0;
      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "alter table PendingAssetCollections add column albumGUID text;", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          v7 = MEMORY[0x277D86220];
          v8 = "%{public}@: Could not add albumGUID column to pending asset collections queue. Error: %{public}s";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "analyze;", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not analyze database. Ignoring. Error: %{public}s", buf, 0x16u);
        }

        sqlite3_free(errmsg);
      }

      goto LABEL_38;
    }

    if (version == 5)
    {
LABEL_38:
      errmsg = 0;
      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create index if not exists UploadQueueByGUID on UploadQueue (GUID asc);", 0, 0, &errmsg))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_100;
        }

LABEL_40:
        *buf = 138543618;
        selfCopy24 = self;
        v14 = 2082;
        v15 = errmsg;
        v7 = MEMORY[0x277D86220];
        v8 = "%{public}@: Could not create upload queue GUID index. Error: %{public}s";
        goto LABEL_99;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create index if not exists DownloadQueueByGUID on DownloadQueue (GUID asc);", 0, 0, &errmsg))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_100;
        }

LABEL_98:
        *buf = 138543618;
        selfCopy24 = self;
        v14 = 2082;
        v15 = errmsg;
        v7 = MEMORY[0x277D86220];
        v8 = "%{public}@: Could not create download queue GUID index. Error: %{public}s";
        goto LABEL_99;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "analyze;", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not analyze database. Ignoring. Error: %{public}s", buf, 0x16u);
        }

        sqlite3_free(errmsg);
      }

      goto LABEL_61;
    }

    if (version <= 6)
    {
LABEL_61:
      errmsg = 0;
      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "alter table UploadQueue add column uploadPriority integer", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          v7 = MEMORY[0x277D86220];
          v8 = "%{public}@: Could not add uploadPriority column to UploadQueue. Error: %{public}s";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "alter table DownloadQueue drop column album", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not drop album column in DownloadQueue. Ignoring. Error: %{public}s", buf, 0x16u);
        }

        sqlite3_free(errmsg);
      }

      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "analyze;", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not analyze database. Ignoring. Error: %{public}s", buf, 0x16u);
        }

        sqlite3_free(errmsg);
      }

      goto LABEL_72;
    }

    if (version == 8)
    {
LABEL_107:
      LOBYTE(v6) = 1;
      return v6;
    }

    if (version == 7)
    {
LABEL_72:
      errmsg = 0;
      if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "alter table DownloadQueue add column isInflight integer", 0, 0, &errmsg))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy24 = self;
          v14 = 2082;
          v15 = errmsg;
          v7 = MEMORY[0x277D86220];
          v8 = "%{public}@: Could not add isInflight column to DownloadQueue. Error: %{public}s";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      goto LABEL_107;
    }

    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      *buf = 138543618;
      selfCopy24 = self;
      v14 = 1024;
      LODWORD(v15) = version;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Not supporting migration from version %d. Recreating database.", buf, 0x12u);
LABEL_101:
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (MSASPersonModel)initWithPersonID:(id)d
{
  dCopy = d;
  v5 = MSPathAlbumSharingPersistentStoreForPersonID(dCopy);
  v8.receiver = self;
  v8.super_class = MSASPersonModel;
  v6 = [(MSASModelBase *)&v8 initWithPersonID:dCopy databasePath:v5 currentVersion:8];

  return v6;
}

@end