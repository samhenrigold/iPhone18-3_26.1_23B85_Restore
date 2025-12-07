@interface BooksClient
+ (id)alternatePathForPlist:(id)plist withNamePrefix:(id)prefix;
+ (id)bookExtensions;
+ (id)foregroundRestoreWhitelist;
- (BCAssetDatabase)database;
- (BOOL)addItems:(id)items toPlist:(id)plist;
- (BOOL)bumpModificationDate:(id)date;
- (BOOL)commitOutstandingAssets:(id)assets;
- (BOOL)raiseLockout;
- (BOOL)reconcileRestoreOfType:(int)type withError:(id *)error;
- (BOOL)reconcileSync:(unsigned int)sync withNewAnchor:(id)anchor progressCallback:(id)callback error:(id *)error;
- (BOOL)reconcileWithError:(id *)error progressCallback:(id)callback;
- (BOOL)reconcileWithProgressCallback:(id)callback;
- (BOOL)shouldBackgroundRestoreFile:(id)file backupManager:(id)manager;
- (BooksClient)init;
- (id)_bookEstimatedDownloadSizeForPlistEntry:(id)entry;
- (id)_bookSizeOnDiskForPlistEntry:(id)entry;
- (id)_stringFromObject:(id)object;
- (id)accountInfoForAssetAtPath:(id)path;
- (id)accountsForAssets;
- (id)appleIDsForAssets;
- (id)assetsRequestedByPersistentIDs:(id)ds fromPlist:(id)plist;
- (id)bookTitleForPlistEntry:(id)entry;
- (id)booksFromPlist:(id)plist;
- (id)booksInPath:(id)path;
- (id)currentSyncAnchor;
- (id)enumeratePathsForBackupType:(int)type usingBlock:(id)block;
- (id)filesInPath:(id)path;
- (id)filteredDownloads:(id)downloads;
- (id)forwardSyncAssets;
- (id)forwardSyncPersistentIDs;
- (id)installedAssetMetrics;
- (id)knownBooksInPlist:(id)plist;
- (id)outstandingAssetTransfers;
- (id)outstandingAssetTransfersWithDownloadManager:(id)manager;
- (id)persistentIDsFromBookRecords:(id)records;
- (id)persistentIDsMerged:(BOOL)merged;
- (id)plistByPath:(id)path;
- (id)reverseSyncAssets;
- (id)reverseSyncPersistentIDs;
- (id)sortedBooksFromPlist:(id)plist;
- (id)storeInfoForItem:(id)item;
- (id)supportedDataclasses;
- (void)_updateATAssetTotalBytes:(id)bytes plistEntry:(id)entry restoreFlag:(BOOL)flag;
- (void)addKnownAccountInfo:(id)info;
- (void)appendIconUrlForPersistentID:(id)d toAsset:(id)asset;
- (void)appendPlistEntries:(id)entries toAssetArray:(id)array withRestoreFlag:(BOOL)flag;
- (void)assetDownloadCompleted:(id)completed;
- (void)assetInstallFailed:(id)failed withError:(id)error;
- (void)assetInstallSucceeded:(id)succeeded;
- (void)assetTransfer:(id)transfer succeeded:(BOOL)succeeded withError:(id)error;
- (void)assetTransferEndedWithSuccess:(BOOL)success;
- (void)assetUploadCompleted:(id)completed;
- (void)backupEnded;
- (void)clearSyncData;
- (void)dealloc;
- (void)deleteArtworkExcludingFileNames:(id)names;
- (void)deleteOrphanedFiles;
- (void)deleteOrphanedFilesInPath:(id)path knownToPlist:(id)plist;
- (void)generateDirectories;
- (void)handleError:(id)error forAsset:(id)asset;
- (void)installedAssetMetrics:(id *)metrics forPlistPath:(id)path;
- (void)iteratePathsForPlist:(id)plist processingBlock:(id)block;
- (void)lowerLockout;
- (void)nonAssetDiskSpaceMetrics:(id *)metrics directory:(id)directory recursive:(BOOL)recursive;
- (void)pathsToBackup:(id *)backup pathsNotToBackup:(id *)toBackup;
- (void)prepareForBackup;
- (void)processDeletesFiles;
- (void)regenerateEstimatedDownloadSizesForPlist:(id)plist;
- (void)regeneratePersistentIDsForPlist:(id)plist;
- (void)removeAssetByPersistentID:(id)d;
- (void)removeDatabase;
- (void)removeItemAtPath:(id)path;
- (void)removeItemByPersistentID:(id)d fromPlist:(id)plist;
- (void)removeItemsByPersistentID:(id)d fromPlist:(id)plist;
- (void)removeKnownItems:(id)items;
- (void)removePromisedAssets;
- (void)removePromisedAssetsByPath:(id)path;
- (void)restoreEndedWithError:(id)error;
- (void)syncEndedWithSuccess:(BOOL)success;
- (void)trimOutstandingAssetList;
- (void)updateAssets:(id)assets withSSDownloads:(id)downloads andDownloadCompletePathMap:(id)map;
@end

@implementation BooksClient

- (BooksClient)init
{
  v9.receiver = self;
  v9.super_class = BooksClient;
  v2 = [(BooksClient *)&v9 init];
  v4 = v2;
  if (v2)
  {
    v5 = BCDefaultLog(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v13 = v4;
      v14 = 2080;
      v15 = "Oct 10 2025";
      v16 = 2080;
      v17 = "21:43:53";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "initialized %@ -- %s; %s", buf, 0x20u);
    }

    [(BooksClient *)v4 generateDirectories];
    v6 = objc_alloc_init(BCLockout);
    v4->_lockout = v6;
    [(BCLockout *)v6 setPath:@"/var/mobile/Media/Books/Sync/.bookSync.lock"];
    v11 = @"com.apple.sync.books.began";
    [(BCLockout *)v4->_lockout setStartNotifications:[NSArray arrayWithObjects:&v11 count:1]];
    v10[0] = @"com.apple.sync.books.finished";
    v10[1] = @"com.apple.books.plist.changed";
    [(BCLockout *)v4->_lockout setEndNotifications:[NSArray arrayWithObjects:v10 count:2]];
    v4->_plistsByPath = objc_alloc_init(NSMutableDictionary);
    v4->_plist_queue = dispatch_queue_create("com.apple.atc.Books.BooksClient.plists", 0);
    v7 = objc_alloc_init(NSFileCoordinator);
    v4->_relativePathsToBackup = 0;
    v4->_fileCoord = v7;
    v4->_appleIDs = 0;
    v4->_accountInfos = 0;
  }

  return v4;
}

- (void)dealloc
{
  self->_appleIDs = 0;

  self->_accountInfos = 0;
  self->_relativePathsToBackup = 0;

  self->_pathsForDevice2DeviceRestoreRedownloadable = 0;
  self->_pathsForDevice2DeviceRestoreLocal = 0;

  self->_lockout = 0;
  [(BooksClient *)self setDatabase:0];

  self->_plistsByPath = 0;
  dispatch_release(self->_plist_queue);
  self->_plist_queue = 0;

  self->_fileCoord = 0;
  v5 = BCDefaultLog(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_11EEC();
  }

  v6.receiver = self;
  v6.super_class = BooksClient;
  [(BooksClient *)&v6 dealloc];
}

- (BOOL)raiseLockout
{
  v3 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "raiseLockout %@", &v5, 0xCu);
  }

  return [(BCLockout *)self->_lockout lock:1];
}

- (void)lowerLockout
{
  unlock = [(BCLockout *)self->_lockout unlock];
  v5 = BCDefaultLog(unlock, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "lowerLockout %@", &v6, 0xCu);
  }
}

- (id)supportedDataclasses
{
  v2 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_11F5C();
  }

  return [NSArray arrayWithObject:@"Book"];
}

- (id)currentSyncAnchor
{
  v2 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_11FCC();
  }

  return @"0";
}

- (BOOL)reconcileSync:(unsigned int)sync withNewAnchor:(id)anchor progressCallback:(id)callback error:(id *)error
{
  if (sync)
  {
    v9 = BCDefaultLog(self, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "reconcileSync %@", buf, 0xCu);
    }

    [(BCAssetDatabase *)[(BooksClient *)self database] removeOutstandingAssetsByRestoreFlag:0 keepDownloadedAssetRows:1];
    [(BooksClient *)self processDeletesFiles];
    [(BooksClient *)self regeneratePersistentIDsForPlist:@"/var/mobile/Media/Books/Books.plist"];
    [(BooksClient *)self regeneratePersistentIDsForPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
    [(BooksClient *)self setRestoreSession:0];
    return [(BooksClient *)self reconcileWithError:error progressCallback:callback];
  }

  else
  {
    v11 = BCDefaultLog(self, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "reconcileSync ATSyncNoSync", buf, 2u);
    }

    return 1;
  }
}

- (void)syncEndedWithSuccess:(BOOL)success
{
  successCopy = success;
  v4 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = successCopy;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "syncEndedWithSuccess: %d", v5, 8u);
  }
}

- (BOOL)bumpModificationDate:(id)date
{
  v4 = objc_alloc_init(NSDate);
  v5 = [[NSDictionary alloc] initWithObjectsAndKeys:{v4, NSFileModificationDate, 0}];

  v11 = 0;
  v6 = [+[NSFileManager defaultManager](NSFileManager setAttributes:"setAttributes:ofItemAtPath:error:" ofItemAtPath:v5 error:date, &v11];
  v8 = v6;
  if ((v6 & 1) == 0)
  {
    if (v11)
    {
      v9 = BCDefaultLog(v6, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1207C();
      }
    }
  }

  return v8;
}

- (BOOL)reconcileRestoreOfType:(int)type withError:(id *)error
{
  v6 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(selfCopy) = type;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "#D2D Reconciling restore of type:%u", buf, 8u);
  }

  v7 = +[NSFileManager defaultManager];
  v8 = objc_autoreleasePoolPush();
  v9 = [BooksClient alternatePathForPlist:@"/var/mobile/Media/Books/Books.plist" withNamePrefix:@"Backup-"];
  v10 = [BooksClient alternatePathForPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist" withNamePrefix:@"Backup-"];
  v11 = [BooksClient alternatePathForPlist:@"/var/mobile/Media/Books/Managed/Managed.plist" withNamePrefix:@"Backup-"];
  v12 = [(NSFileManager *)v7 fileExistsAtPath:v9];
  if (v12)
  {
    v14 = BCDefaultLog(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Restoring Books.plist from Backup-Books.plist.", buf, 2u);
    }

    [(BooksClient *)self removeItemAtPath:@"/var/mobile/Media/Books/Books.plist"];
    [(NSFileManager *)v7 copyItemAtPath:v9 toPath:@"/var/mobile/Media/Books/Books.plist" error:0];
  }

  v15 = [(NSFileManager *)v7 fileExistsAtPath:v10];
  if (v15)
  {
    v17 = BCDefaultLog(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Restoring Purchases.plist from Backup-Purchases.plist.", buf, 2u);
    }

    [(BooksClient *)self removeItemAtPath:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
    [(NSFileManager *)v7 copyItemAtPath:v10 toPath:@"/var/mobile/Media/Books/Purchases/Purchases.plist" error:0];
    [(BooksClient *)self bumpModificationDate:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
  }

  if ([(NSFileManager *)v7 fileExistsAtPath:v11])
  {
    v18 = [+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")];
    if (v18)
    {
      v20 = BCDefaultLog(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Restoring Managed.plist from Backup-Managed.plist.", buf, 2u);
      }

      [(BooksClient *)self removeItemAtPath:@"/var/mobile/Media/Books/Managed/Managed.plist"];
      [(NSFileManager *)v7 copyItemAtPath:v11 toPath:@"/var/mobile/Media/Books/Managed/Managed.plist" error:0];
      [(BooksClient *)self bumpModificationDate:@"/var/mobile/Media/Books/Managed/Managed.plist"];
    }
  }

  [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Books.plist", "resetPaths"}];
  [(BooksClient *)self bumpModificationDate:@"/var/mobile/Media/Books/Books.plist"];
  [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Purchases/Purchases.plist", "resetPaths"}];
  [(BooksClient *)self bumpModificationDate:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
  v21 = [(NSFileManager *)v7 fileExistsAtPath:@"/var/mobile/Media/Books/Sync/Books.plist"];
  if (v21)
  {
    v23 = BCDefaultLog(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Removing Sync/Books.plist.", buf, 2u);
    }

    v21 = [(NSFileManager *)v7 removeItemAtPath:@"/var/mobile/Media/Books/Sync/Books.plist" error:0];
  }

  v24 = BCDefaultLog(v21, v22);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = @"/var/mobile/Media/Books/Sync/Books.plist";
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Creating Sync: %@", buf, 0xCu);
  }

  v25 = objc_alloc_init(NSMutableArray);
  v26 = [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Books.plist", "books"}];
  v28 = BCDefaultLog(v26, v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v26 count];
    *buf = 134217984;
    selfCopy = v29;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Found %lu books in Books.plist.", buf, 0xCu);
  }

  if ([v26 count])
  {
    [v25 addObjectsFromArray:v26];
  }

  v30 = [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Purchases/Purchases.plist", "books"}];
  v32 = BCDefaultLog(v30, v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [v30 count];
    *buf = 134217984;
    selfCopy = v33;
    _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Found %lu books in Purchases.plist.", buf, 0xCu);
  }

  v34 = [v30 count];
  if (v34)
  {
    v34 = [v25 addObjectsFromArray:v30];
  }

  v36 = BCDefaultLog(v34, v35);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v25 count];
    *buf = 134217984;
    selfCopy = v37;
    _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Merging two backups: Total entries: %lu", buf, 0xCu);
  }

  if ([v25 count])
  {
    [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Sync/Books.plist", "addItems:", v25}];
  }

  objc_autoreleasePoolPop(v8);
  v40 = BCDefaultLog(v38, v39);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "reconcileRestoreWithError %@", buf, 0xCu);
  }

  [(BooksClient *)self setRestoreSession:1];
  return [(BooksClient *)self reconcileWithError:error progressCallback:0];
}

- (void)restoreEndedWithError:(id)error
{
  v4 = BCDefaultLog(self, a2);
  v5 = v4;
  if (error)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_12134();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "restoreEndedWithError: nil", v6, 2u);
  }
}

- (id)outstandingAssetTransfers
{
  v3 = objc_autoreleasePoolPush();
  [(BooksClient *)self trimOutstandingAssetList];
  v4 = objc_alloc_init(NSMutableArray);
  reverseSyncAssets = [(BooksClient *)self reverseSyncAssets];
  v7 = BCDefaultLog(reverseSyncAssets, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = [reverseSyncAssets count];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Reverse Sync %lu items", buf, 0xCu);
  }

  if ([reverseSyncAssets count])
  {
    [v4 addObjectsFromArray:reverseSyncAssets];
  }

  forwardSyncAssets = [(BooksClient *)self forwardSyncAssets];
  v10 = BCDefaultLog(forwardSyncAssets, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [forwardSyncAssets count];
    *buf = 134217984;
    v19 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Forward Sync %lu items", buf, 0xCu);
  }

  if ([forwardSyncAssets count])
  {
    [v4 addObjectsFromArray:forwardSyncAssets];
  }

  objc_autoreleasePoolPop(v3);
  v14 = BCDefaultLog(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "ATAssets: %@", &v16, 0xCu);
  }

  return v4;
}

- (id)outstandingAssetTransfersWithDownloadManager:(id)manager
{
  v5 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Getting outstanding assets for transfer.", buf, 2u);
  }

  outstandingAssetTransfers = [(BooksClient *)self outstandingAssetTransfers];
  if ([outstandingAssetTransfers count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [outstandingAssetTransfers countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(outstandingAssetTransfers);
          }

          [*(*(&v17 + 1) + 8 * v10) setVariantOptions:&off_21878];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [outstandingAssetTransfers countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v8);
    }

    v11 = [(BooksClient *)self filteredDownloads:manager];
    downloadCompletePathMap = [(BCAssetDatabase *)[(BooksClient *)self database] downloadCompletePathMap];
    v14 = BCDefaultLog(downloadCompletePathMap, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "filteredDownloads: %@", buf, 0xCu);
    }

    [(BooksClient *)self updateAssets:outstandingAssetTransfers withSSDownloads:v11 andDownloadCompletePathMap:downloadCompletePathMap];
  }

  else
  {
    v15 = BCDefaultLog(0, v7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "No assets, not filtering downloads.", buf, 2u);
    }
  }

  return outstandingAssetTransfers;
}

- (void)clearSyncData
{
  v3 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "clearSyncData called", v4, 2u);
  }

  [(BooksClient *)self removeDatabase];
  [(BooksClient *)self removeItemAtPath:@"/var/mobile/Media/Books/Sync/Upload.plist"];
  [(BooksClient *)self removeItemAtPath:@"/var/mobile/Media/Books/Sync/Artwork/"];
  if ([(BooksClient *)self raiseLockout])
  {
    [(BooksClient *)self processDeletesFiles];
    [(BooksClient *)self deleteOrphanedFiles];
    [(BooksClient *)self removePromisedAssets];
  }

  [(BooksClient *)self lowerLockout];
}

- (void)assetTransfer:(id)transfer succeeded:(BOOL)succeeded withError:(id)error
{
  succeededCopy = succeeded;
  v9 = BCDefaultLog(self, a2);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    v14 = 138412802;
    transferCopy = transfer;
    v16 = 1024;
    *v17 = succeededCopy;
    *&v17[4] = 2112;
    *&v17[6] = error;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "assetTransfer: %@ success:%d error:%@", &v14, 0x1Cu);
  }

  if (succeededCopy)
  {
    if ([transfer isDownload])
    {
      [(BooksClient *)self assetDownloadCompleted:transfer];
    }

    else
    {
      [(BooksClient *)self assetUploadCompleted:transfer];
    }
  }

  else
  {
    v12 = BCDefaultLog(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = @"Not Recoverable";
      if (error)
      {
        if (![objc_msgSend(error "domain")] || objc_msgSend(error, "code") == &dword_4 + 3 || objc_msgSend(error, "code") == &dword_8 || objc_msgSend(error, "code") == &dword_C + 2 || objc_msgSend(error, "code") == &dword_10 || objc_msgSend(error, "code") == &dword_8 + 1 || objc_msgSend(error, "code") == &dword_10 + 2 || objc_msgSend(error, "code") == &dword_4 || objc_msgSend(error, "code") == &dword_10 + 3 || objc_msgSend(error, "code") == &dword_14 || objc_msgSend(error, "code") == &dword_18 + 1 || objc_msgSend(error, "code") == &dword_18 + 3 || objc_msgSend(error, "code") == &dword_18 || objc_msgSend(error, "code") == &dword_1C + 3 || objc_msgSend(error, "code") == &stru_20 || objc_msgSend(error, "code") == &stru_20.cmd + 1)
        {
          v13 = @"Recoverable";
        }

        else
        {
          v13 = @"Recoverable";
          if ([error code] != &stru_20.cmd + 2 && objc_msgSend(error, "code") != &stru_20.cmd + 3)
          {
            v13 = @"Not Recoverable";
          }
        }
      }

      v14 = 138412802;
      transferCopy = v13;
      v16 = 2112;
      *v17 = transfer;
      *&v17[8] = 2112;
      *&v17[10] = error;
      _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%@ Error -- Asset: %@; Transfer Error: %@", &v14, 0x20u);
    }

    [(BooksClient *)self handleError:error forAsset:transfer];
  }
}

- (void)assetTransferEndedWithSuccess:(BOOL)success
{
  successCopy = success;
  v5 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = successCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "assetTransferEndedWithSuccess: %d", v6, 8u);
  }

  if (successCopy)
  {
    [(BooksClient *)self removeItemAtPath:@"/var/mobile/Media/Books/Sync/Upload.plist"];
  }
}

- (void)assetInstallSucceeded:(id)succeeded
{
  v5 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    succeededCopy3 = [succeeded identifier];
    v12 = 1024;
    isDownload = [succeeded isDownload];
    v14 = 2112;
    succeededCopy = succeeded;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "assetInstallSucceeded -- %@ [isDownload: %d] Asset: %@", &v10, 0x1Cu);
  }

  if ([succeeded isDownload])
  {
    isRestore = [succeeded isRestore];
    if (isRestore)
    {
      v8 = BCDefaultLog(isRestore, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        succeededCopy3 = succeeded;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "assetInstallSucceeded -- %@ [isRestore: YES] now installing the asset", &v10, 0xCu);
      }

      [(BooksClient *)self assetDownloadCompleted:succeeded];
    }

    else
    {
      v9 = BCDefaultLog(isRestore, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        succeededCopy3 = succeeded;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "assetInstallSucceeded -- %@ [isRestore: NO] just removing this asset from the outstanding database", &v10, 0xCu);
      }

      if ([objc_msgSend(succeeded "identifier")])
      {
        -[BCAssetDatabase removeOutstandingAssetByPersistentID:](-[BooksClient database](self, "database"), "removeOutstandingAssetByPersistentID:", [succeeded identifier]);
      }
    }
  }
}

- (void)assetInstallFailed:(id)failed withError:(id)error
{
  v7 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      if ([objc_msgSend(error "domain")])
      {
        sub_12304();
        v8 = *v9;
      }

      else
      {
        v8 = @"Recoverable";
      }
    }

    else
    {
      v8 = @"Not Recoverable";
    }

    *v9 = 138412802;
    *&v9[4] = v8;
    v10 = 2112;
    failedCopy = failed;
    v12 = 2112;
    errorCopy = error;
    _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%@ Error -- Asset: %@; Install Error: %@", v9, 0x20u);
  }

  [(BooksClient *)self handleError:error forAsset:failed];
}

- (id)installedAssetMetrics
{
  v3 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_12494();
  }

  [(BooksClient *)self processDeletesFiles];
  v4 = [NSArray arrayWithObjects:@"/var/mobile/Media/Books/Purchases/Purchases.plist", @"/var/mobile/Media/Books/Books.plist", @"/var/mobile/Media/Books/Managed/Managed.plist", 0];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
    v10 = *v40;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v37 = 0;
        v38 = 0;
        [(BooksClient *)self installedAssetMetrics:&v37 forPlistPath:v12];
        v9 += v37;
        v8 += v38;
      }

      v7 = [(NSArray *)v4 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v13 = BCDefaultLog(0, v6);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_124D0();
  }

  v37 = 0;
  v38 = 0;
  v14 = [(BooksClient *)self nonAssetDiskSpaceMetrics:&v37 directory:@"/var/mobile/Media/Books/" recursive:0];
  v16 = BCDefaultLog(v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_12538();
  }

  v17 = v37;
  v37 = 0;
  v38 = 0;
  v18 = [(BooksClient *)self nonAssetDiskSpaceMetrics:&v37 directory:@"/var/mobile/Media/Books/Purchases/" recursive:0];
  v20 = BCDefaultLog(v18, v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_125A8();
  }

  v21 = v17 + v9;
  v22 = v37;
  v37 = 0;
  v38 = 0;
  v23 = [(BooksClient *)self nonAssetDiskSpaceMetrics:&v37 directory:@"/var/mobile/Media/Books/Sync/" recursive:1];
  v25 = BCDefaultLog(v23, v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    sub_12618();
  }

  v26 = v21 + v22;
  v27 = v37;
  v37 = 0;
  v38 = 0;
  v28 = [(BooksClient *)self nonAssetDiskSpaceMetrics:&v37 directory:@"/var/mobile/Media/Books/Managed/" recursive:1];
  v30 = BCDefaultLog(v28, v29);
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
  if (v31)
  {
    sub_12688();
  }

  v33 = v26 + v27;
  v34 = v37;
  v35 = BCDefaultLog(v31, v32);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    sub_126F8();
  }

  return [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithLongLong:v8], @"_Count", [NSNumber numberWithLongLong:v33 + v34], @"_PhysicalSize", 0];
}

- (BOOL)shouldBackgroundRestoreFile:(id)file backupManager:(id)manager
{
  path = [file path];
  v5 = [path hasPrefix:@"/var/mobile/Media/Books/Sync"];
  if ((v5 & 1) == 0)
  {
    v5 = [path hasPrefix:@"/var/mobile/Media/Books/Managed"];
    if (!v5)
    {
      v8 = [path hasPrefix:@"/var/mobile/Media/Books"];
      if (!v8)
      {
        return v8;
      }

      v10 = [+[BooksClient foregroundRestoreWhitelist](BooksClient "foregroundRestoreWhitelist")];
      if (v10)
      {
        v7 = BCDefaultLog(v10, v11);
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (!v8)
        {
          return v8;
        }

        v19 = 138412290;
        v20 = path;
        v9 = "Restoring in foreground: %@";
        goto LABEL_5;
      }

      v12 = [+[BooksClient bookExtensions](BooksClient "bookExtensions")];
      v13 = v12;
      v15 = BCDefaultLog(v12, v14);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v16)
        {
          v19 = 138412290;
          v20 = path;
          v17 = "Found book in backup, restoring in background: %@";
LABEL_15:
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v17, &v19, 0xCu);
        }
      }

      else if (v16)
      {
        v19 = 138412290;
        v20 = path;
        v17 = "Restoring in background: %@";
        goto LABEL_15;
      }

      LOBYTE(v8) = 1;
      return v8;
    }
  }

  v7 = BCDefaultLog(v5, v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    v19 = 138412290;
    v20 = path;
    v9 = "Restoring managed or sync file in foreground: %@";
LABEL_5:
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, v9, &v19, 0xCu);
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)assetDownloadCompleted:(id)completed
{
  v5 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = completed;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Asset downloaded successfully: %@", buf, 0xCu);
  }

  v6 = [objc_msgSend(completed "path")];
  if ((v6 & 1) == 0)
  {
    v6 = [objc_msgSend(completed "path")];
    if (v6)
    {
      v6 = [objc_msgSend(completed "path")];
      if ((v6 & 1) == 0)
      {
        v6 = [completed setPath:{objc_msgSend(@"/var/mobile/Media/", "stringByAppendingString:", objc_msgSend(completed, "path"))}];
      }
    }
  }

  v8 = BCDefaultLog(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isRestore = [completed isRestore];
    bypassStore = [completed bypassStore];
    *buf = 67109376;
    *&buf[4] = isRestore;
    *&buf[8] = 1024;
    *&buf[10] = bypassStore;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "isRestore: %d; BypassStore: %d", buf, 0xEu);
  }

  v11 = [objc_msgSend(completed "path")];
  if (v11 && (v11 = [objc_msgSend(completed "identifier")]) != 0)
  {
    v13 = BCDefaultLog(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      path = [completed path];
      identifier = [completed identifier];
      *buf = 138412546;
      *&buf[4] = path;
      *&buf[12] = 2112;
      *&buf[14] = identifier;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "assetDownloadCompleted -- Updating OustandingAsset database %@ -> %@", buf, 0x16u);
    }

    -[BCAssetDatabase setDownloadPath:forOutstandingAssetsByPersistentID:](-[BooksClient database](self, "database"), "setDownloadPath:forOutstandingAssetsByPersistentID:", [completed path], objc_msgSend(completed, "identifier"));
  }

  else
  {
    v16 = BCDefaultLog(v11, v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_12760();
    }
  }

  v17 = [objc_msgSend(completed "path")];
  if (([v17 hasSuffix:@"/"] & 1) == 0)
  {
    v17 = [v17 stringByAppendingString:@"/"];
  }

  v18 = [v17 isEqualToString:@"/var/mobile/Media/Books/"];
  if (v18)
  {
    v20 = BooksPlistPath;
  }

  else
  {
    v18 = [v17 isEqualToString:@"/var/mobile/Media/Books/Purchases/"];
    if (!v18)
    {
      goto LABEL_25;
    }

    v20 = PurchasesPlistPath;
  }

  v21 = *v20;
  if (*v20)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = [(BooksClient *)self plistByPath:v21];
    v24 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [v23 books]);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v40 = 0;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_53F8;
    v32[3] = &unk_204D0;
    v32[4] = completed;
    v32[5] = v24;
    v32[6] = buf;
    v25 = [(NSMutableArray *)v24 enumerateObjectsUsingBlock:v32];
    if (*(*&buf[8] + 24) == 1)
    {
      [v23 replaceItems:v24];
    }

    else
    {
      v28 = BCDefaultLog(v25, v26);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v33 = 138412802;
        completedCopy = completed;
        v35 = 2112;
        v36 = v21;
        v37 = 2112;
        v38 = v24;
        _os_log_error_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "assetDownloadCompleted -- Couldn't find entry in plist for asset %@.  PlistPath: %@ Entries: %@", v33, 0x20u);
      }

      v29 = [objc_msgSend(completed "identifier")];
      if (v29)
      {
        v31 = BCDefaultLog(v29, v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_127C8();
        }

        -[BCAssetDatabase removeOutstandingAssetByPersistentID:](-[BooksClient database](self, "database"), "removeOutstandingAssetByPersistentID:", [completed identifier]);
      }
    }

    _Block_object_dispose(buf, 8);
    objc_autoreleasePoolPop(v22);
    return;
  }

LABEL_25:
  v27 = BCDefaultLog(v18, v19);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_12830();
  }
}

- (void)assetUploadCompleted:(id)completed
{
  v4 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    completedCopy = completed;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Asset uploaded successfully: %@", &v5, 0xCu);
  }
}

- (void)prepareForBackup
{
  selfCopy = self;
  v3 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Preparing for backup.", buf, 2u);
  }

  selfCopy->_appleIDs = 0;
  selfCopy->_accountInfos = 0;

  selfCopy->_relativePathsToBackup = 0;
  [(BooksClient *)selfCopy setPathsForDevice2DeviceRestoreRedownloadable:+[NSMutableArray array]];
  [(BooksClient *)selfCopy setPathsForDevice2DeviceRestoreLocal:+[NSMutableArray array]];
  v55 = objc_autoreleasePoolPush();
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  v6 = +[NSFileManager defaultManager];
  [(BooksClient *)selfCopy processDeletesFiles];
  [(BooksClient *)selfCopy regeneratePersistentIDsForPlist:@"/var/mobile/Media/Books/Books.plist"];
  [(BooksClient *)selfCopy regeneratePersistentIDsForPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
  [(BooksClient *)selfCopy regenerateEstimatedDownloadSizesForPlist:@"/var/mobile/Media/Books/Books.plist"];
  [(BooksClient *)selfCopy regenerateEstimatedDownloadSizesForPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
  v7 = [BooksClient alternatePathForPlist:@"/var/mobile/Media/Books/Books.plist" withNamePrefix:@"Backup-"];
  [(BooksClient *)selfCopy removeItemAtPath:v7];
  [(NSFileManager *)v6 copyItemAtPath:@"/var/mobile/Media/Books/Books.plist" toPath:v7 error:0];
  v8 = [BooksClient alternatePathForPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist" withNamePrefix:@"Backup-"];
  [(BooksClient *)selfCopy removeItemAtPath:v8];
  [(NSFileManager *)v6 copyItemAtPath:@"/var/mobile/Media/Books/Purchases/Purchases.plist" toPath:v8 error:0];
  v9 = [NSArray arrayWithObjects:@"/var/mobile/Media/Books/iBooksData.plist", @"/var/mobile/Media/Books/iBooksData2.plist", @"/var/mobile/Media/Books/Sync/Artwork/", v7, v8, 0];
  obj = v5;
  [v5 addObjectsFromArray:v9];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v63;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v62 + 1) + 8 * i);
        v15 = [(NSFileManager *)v6 fileExistsAtPath:v14];
        if (v15)
        {
          v17 = selfCopy;
          v18 = BCDefaultLog(v15, v16);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v68 = v14;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "#D2D: Adding potential D2D Local path: %@", buf, 0xCu);
          }

          selfCopy = v17;
          [(NSMutableArray *)v17->_pathsForDevice2DeviceRestoreLocal addObject:v14];
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v11);
  }

  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_5CEC;
  v61[3] = &unk_204F8;
  v61[4] = selfCopy;
  v61[5] = obj;
  [(BooksClient *)selfCopy iteratePathsForPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist" processingBlock:v61];
  [(BooksClient *)selfCopy iteratePathsForPlist:@"/var/mobile/Media/Books/Books.plist" processingBlock:v61];
  v19 = [+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")];
  v20 = v19;
  v22 = BCDefaultLog(v19, v21);
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    v24 = v55;
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Backing up managed content.", buf, 2u);
    }

    v25 = [BooksClient alternatePathForPlist:@"/var/mobile/Media/Books/Managed/Managed.plist" withNamePrefix:@"Backup-"];
    [(BooksClient *)selfCopy removeItemAtPath:v25];
    [(NSFileManager *)v6 copyItemAtPath:@"/var/mobile/Media/Books/Managed/Managed.plist" toPath:v25 error:0];
    [obj addObject:v25];
    v26 = [(NSFileManager *)v6 fileExistsAtPath:v25];
    if (v26)
    {
      v28 = BCDefaultLog(v26, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v25;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "#D2D: Adding potential D2D Local path: %@", buf, 0xCu);
      }

      [(NSMutableArray *)selfCopy->_pathsForDevice2DeviceRestoreLocal addObject:v25];
    }

    [(BooksClient *)selfCopy iteratePathsForPlist:@"/var/mobile/Media/Books/Managed/Managed.plist" processingBlock:v61];
  }

  else
  {
    v24 = v55;
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Enterprise backup is not allowed - skipping managed content.", buf, 2u);
    }
  }

  v29 = [@"/var/mobile/Media/Books/" length];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v30 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v58;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v58 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v57 + 1) + 8 * j);
        if ([v34 hasPrefix:@"/var/mobile/Media/Books/"])
        {
          v34 = [v34 substringFromIndex:v29];
          if (![v34 length])
          {
            continue;
          }
        }

        [v4 addObject:v34];
      }

      v31 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v31);
  }

  selfCopy->_relativePathsToBackup = [[NSArray alloc] initWithArray:v4];
  objc_autoreleasePoolPop(v24);
  v37 = BCDefaultLog(v35, v36);
  v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
  if (v38)
  {
    relativePathsToBackup = selfCopy->_relativePathsToBackup;
    *buf = 138412290;
    v68 = relativePathsToBackup;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "computed pathsToBackup %@", buf, 0xCu);
  }

  v41 = BCDefaultLog(v38, v39);
  v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
  if (v42)
  {
    pathsForDevice2DeviceRestoreRedownloadable = [(BooksClient *)selfCopy pathsForDevice2DeviceRestoreRedownloadable];
    *buf = 138412290;
    v68 = pathsForDevice2DeviceRestoreRedownloadable;
    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "#D2D: computed pathsForDevice2DeviceRestoreRedownloadable %@", buf, 0xCu);
  }

  v45 = BCDefaultLog(v42, v43);
  v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
  if (v46)
  {
    pathsForDevice2DeviceRestoreLocal = [(BooksClient *)selfCopy pathsForDevice2DeviceRestoreLocal];
    *buf = 138412290;
    v68 = pathsForDevice2DeviceRestoreLocal;
    _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "#D2D: computed pathsForDevice2DeviceRestoreLocal %@", buf, 0xCu);
  }

  v49 = BCDefaultLog(v46, v47);
  v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
  if (v50)
  {
    appleIDs = selfCopy->_appleIDs;
    *buf = 138412290;
    v68 = appleIDs;
    _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "computed AppleIDs %@", buf, 0xCu);
  }

  v53 = BCDefaultLog(v50, v51);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    accountInfos = selfCopy->_accountInfos;
    *buf = 138412290;
    v68 = accountInfos;
    _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "computed accountInfos %@", buf, 0xCu);
  }
}

- (void)backupEnded
{
  v3 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "backupEnded called", v4, 2u);
  }

  self->_appleIDs = 0;
  self->_accountInfos = 0;

  self->_relativePathsToBackup = 0;
  [(BooksClient *)self setPathsForDevice2DeviceRestoreRedownloadable:0];
  [(BooksClient *)self setPathsForDevice2DeviceRestoreLocal:0];
}

- (void)pathsToBackup:(id *)backup pathsNotToBackup:(id *)toBackup
{
  selfCopy = self;
  if (!self->_relativePathsToBackup)
  {
    self = [(BooksClient *)self prepareForBackup];
  }

  if (backup)
  {
    v7 = BCDefaultLog(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      relativePathsToBackup = selfCopy->_relativePathsToBackup;
      v10 = 138412290;
      v11 = relativePathsToBackup;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "pathsToBackup %@", &v10, 0xCu);
    }

    self = selfCopy->_relativePathsToBackup;
    *backup = self;
  }

  if (toBackup)
  {
    v9 = BCDefaultLog(self, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      LODWORD(v11) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "pathsToNotBackup count: %d", &v10, 8u);
    }

    *toBackup = 0;
  }
}

- (id)enumeratePathsForBackupType:(int)type usingBlock:(id)block
{
  v7 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    typeCopy = type;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "#D2D: enumeratePathsForBackupType:%u", buf, 8u);
  }

  if (!self->_relativePathsToBackup)
  {
    [(BooksClient *)self prepareForBackup];
  }

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_624C;
  v13 = &unk_20520;
  typeCopy2 = type;
  blockCopy = block;
  if ((type & 0xFFFFFFFE) == 2)
  {
    if ((sub_624C(&v10, self->_pathsForDevice2DeviceRestoreLocal, 0) & 1) == 0)
    {
      v8 = [(BooksClient *)self pathsForDevice2DeviceRestoreRedownloadable:v10];
      v12(&v10, v8, 2);
    }
  }

  else if (type == 1)
  {
    v12(&v10, [(BooksClient *)self pathsForDevice2DeviceRestoreLocal:v10], 0);
  }

  return 0;
}

- (id)appleIDsForAssets
{
  appleIDs = self->_appleIDs;
  if (!appleIDs)
  {
    v4 = BCDefaultLog(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Calling prepareForBackup from appleIDsForAssets", v6, 2u);
    }

    [(BooksClient *)self prepareForBackup];
    appleIDs = self->_appleIDs;
  }

  return appleIDs;
}

- (id)accountsForAssets
{
  accountInfos = self->_accountInfos;
  if (!accountInfos)
  {
    v4 = BCDefaultLog(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Calling prepareForBackup from accountInfosForAssets", v6, 2u);
    }

    [(BooksClient *)self prepareForBackup];
    accountInfos = self->_accountInfos;
  }

  return accountInfos;
}

- (void)trimOutstandingAssetList
{
  v3 = [(BooksClient *)self persistentIDsMerged:1];
  v5 = BCDefaultLog(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = [v3 count];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Trimming Outstanding Asset List: %lu known items", &v6, 0xCu);
  }

  [(BCAssetDatabase *)[(BooksClient *)self database] removeOutstandingAssetsByPersistentIDs:v3];
}

- (BOOL)reconcileWithError:(id *)error progressCallback:(id)callback
{
  v7 = objc_alloc_init(NSAutoreleasePool);
  v8 = [(BooksClient *)self reconcileWithProgressCallback:callback];
  [(BCLockout *)self->_lockout unlock];

  if (error)
  {
    *error = 0;
    v9 = 0;
    if (*error)
    {
      v11 = BCDefaultLog(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_12898(error, v11, v12, v13, v14, v15, v16, v17);
      }

      return v8;
    }
  }

  else
  {
    v9 = 0;
  }

  if (!v8)
  {
    v18 = BCDefaultLog(v9, v10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_12908();
    }
  }

  return v8;
}

- (BOOL)reconcileWithProgressCallback:(id)callback
{
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = &stru_20560;
  }

  callbackCopy->invoke(callbackCopy, a2, 0.0);
  reverseSyncPersistentIDs = [(BooksClient *)self reverseSyncPersistentIDs];
  v6 = [(BooksClient *)self sortedBooksFromPlist:@"/var/mobile/Media/Books/Sync/Books.plist"];
  if ([(BooksClient *)self isRestoreSession])
  {
    v6 = [v6 filteredArrayUsingPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"%K != nil || %K != nil", @"Path", @"Backup-Path"}];
  }

  v7 = [(BooksClient *)self persistentIDsFromBookRecords:v6];
  v8 = [(BCAssetDatabase *)[(BooksClient *)self database] removeOutstandingAssetMissingFromPersistentIDs:v7];
  v10 = BCDefaultLog(v8, v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    sub_12948();
  }

  v13 = BCDefaultLog(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_129B8();
  }

  callbackCopy->invoke(callbackCopy, 0.166666667);
  v14 = [(BooksClient *)self persistentIDsMerged:1];
  v16 = BCDefaultLog(v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v14;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Assets we have: %@", buf, 0xCu);
  }

  [(BCAssetDatabase *)[(BooksClient *)self database] removeOutstandingAssetsByPersistentIDs:v14];
  v17 = [objc_msgSend(v7 presortedArrayRemovingMatchingPresortedStrings:{v14), "presortedArrayRemovingMatchingPresortedStrings:", reverseSyncPersistentIDs}];
  isRestoreSession = [(BooksClient *)self isRestoreSession];
  if ((isRestoreSession & 1) == 0)
  {
    v20 = [-[BCAssetDatabase outstandingAssetsByRestoreFlag:](-[BooksClient database](self "database")];
    isRestoreSession = [v20 count];
    if (isRestoreSession)
    {
      isRestoreSession = [v17 presortedArrayRemovingMatchingPresortedStrings:{objc_msgSend(v20, "sortedArrayUsingSelector:", "compare:")}];
      v17 = isRestoreSession;
    }
  }

  v21 = BCDefaultLog(isRestoreSession, v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v17;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Assets we need: %@", buf, 0xCu);
  }

  callbackCopy->invoke(callbackCopy, 0.333333333);
  v22 = [(BooksClient *)self persistentIDsMerged:0];
  v24 = BCDefaultLog(v22, v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v22;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Assets we've seen: %@", buf, 0xCu);
  }

  v36 = reverseSyncPersistentIDs;
  v25 = [objc_msgSend(v22 presortedArrayRemovingMatchingPresortedStrings:{v7), "presortedArrayRemovingMatchingPresortedStrings:", reverseSyncPersistentIDs}];
  v27 = BCDefaultLog(v25, v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v25;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Assets to exclude: %@", buf, 0xCu);
  }

  if ([v17 count])
  {
    v28 = -[BooksClient commitOutstandingAssets:](self, "commitOutstandingAssets:", [v6 presortedArrayOfObjectsContainingMatchingKey:@"Persistent ID" matchingPresortedStrings:v17]);
    v29 = [v17 presortedArrayRemovingMatchingPresortedStrings:v22];
    v31 = BCDefaultLog(v29, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v29;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Assets To append: %@", buf, 0xCu);
    }

    v32 = [v6 presortedArrayOfObjectsContainingMatchingKey:@"Persistent ID" matchingPresortedStrings:v29];
  }

  else
  {
    v32 = 0;
    v28 = 1;
  }

  v33 = [v7 arrayByAddingObjectsFromArray:v36];
  callbackCopy->invoke(callbackCopy, 0.5);
  v34 = [BCPlist promisableItemsFromItems:v32];
  if (![v34 count] && !objc_msgSend(v25, "count"))
  {
    v28 = 1;
    goto LABEL_32;
  }

  if ([(BooksClient *)self raiseLockout])
  {
    [(BooksClient *)self removeKnownItems:v25];
    [(BooksClient *)self addItems:v34 toPlist:@"/var/mobile/Media/Books/Books.plist"];
    [(BooksClient *)self lowerLockout];
LABEL_32:
    callbackCopy->invoke(callbackCopy, 0.666666667);
    [(BooksClient *)self deleteOrphanedFiles];
    [(BooksClient *)self deleteArtworkExcludingFileNames:v33];
    [(BCAssetDatabase *)[(BooksClient *)self database] removeInstalledAssetsExcluding:v33];
    callbackCopy->invoke(callbackCopy, 0.833333333);
    goto LABEL_33;
  }

  v28 = 0;
LABEL_33:
  callbackCopy->invoke(callbackCopy, 1.0);
  return v28;
}

- (void)regeneratePersistentIDsForPlist:(id)plist
{
  v5 = objc_alloc_init(NSAutoreleasePool);
  [-[BooksClient plistByPath:](self plistByPath:{plist), "regenerateMissingPersistentIDs"}];
}

- (void)regenerateEstimatedDownloadSizesForPlist:(id)plist
{
  v5 = objc_autoreleasePoolPush();
  [-[BooksClient plistByPath:](self plistByPath:{plist), "regenerateMissingEstimatedDownloadSizes"}];

  objc_autoreleasePoolPop(v5);
}

- (void)removePromisedAssetsByPath:(id)path
{
  v5 = objc_alloc_init(NSAutoreleasePool);
  v6 = [(BooksClient *)self plistByPath:path];
  v7 = [objc_msgSend(v6 "unfilteredPersistentIDs")];
  v9 = BCDefaultLog(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    pathCopy = path;
    v12 = 1024;
    v13 = [v7 count];
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "removePromisedAssetsByPath: %@ -- %d assets", &v10, 0x12u);
  }

  if ([v7 count])
  {
    [v6 removeItemsByPersistentID:v7];
  }
}

- (void)removePromisedAssets
{
  v3 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Removing promised assets by Books.plist.", buf, 2u);
  }

  v4 = [(BooksClient *)self removePromisedAssetsByPath:@"/var/mobile/Media/Books/Books.plist"];
  v6 = BCDefaultLog(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Removing promised assets by Purchases.plist.", v7, 2u);
  }

  [(BooksClient *)self removePromisedAssetsByPath:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
}

- (void)removeAssetByPersistentID:(id)d
{
  if ([d length])
  {
    [(BCAssetDatabase *)[(BooksClient *)self database] removeOutstandingAssetByPersistentID:d];
    if ([(BooksClient *)self raiseLockout])
    {
      [(BooksClient *)self removeItemByPersistentID:d fromPlist:@"/var/mobile/Media/Books/Books.plist"];
      [(BooksClient *)self removeItemByPersistentID:d fromPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
      [(BooksClient *)self lowerLockout];
    }

    [(BooksClient *)self lowerLockout];
  }
}

- (void)handleError:(id)error forAsset:(id)asset
{
  if (error && ((v7 = [objc_msgSend(error "domain")], !v7) || (v7 = objc_msgSend(error, "code"), v7 == (&dword_4 + 3)) || (v7 = objc_msgSend(error, "code"), v7 == &dword_8) || (v7 = objc_msgSend(error, "code"), v7 == (&dword_C + 2)) || (v7 = objc_msgSend(error, "code"), v7 == &dword_10) || (v7 = objc_msgSend(error, "code"), v7 == (&dword_8 + 1)) || (v7 = objc_msgSend(error, "code"), v7 == (&dword_10 + 2)) || (v7 = objc_msgSend(error, "code"), v7 == &dword_4) || (v7 = objc_msgSend(error, "code"), v7 == (&dword_10 + 3)) || (v7 = objc_msgSend(error, "code"), v7 == &dword_14) || (v7 = objc_msgSend(error, "code"), v7 == (&dword_18 + 1)) || (v7 = objc_msgSend(error, "code"), v7 == (&dword_18 + 3)) || (v7 = objc_msgSend(error, "code"), v7 == &dword_18) || (v7 = objc_msgSend(error, "code"), v7 == (&dword_1C + 3)) || (v7 = objc_msgSend(error, "code"), v7 == &stru_20) || (v7 = objc_msgSend(error, "code"), v7 == (&stru_20.cmd + 1)) || (v7 = objc_msgSend(error, "code"), v7 == (&stru_20.cmd + 2)) || (v7 = objc_msgSend(error, "code"), v7 == (&stru_20.cmd + 3))))
  {
    v9 = BCDefaultLog(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_12A28(asset, v9);
    }
  }

  else
  {
    identifier = [asset identifier];
    if ([identifier length])
    {
      isDownload = [asset isDownload];
      v13 = isDownload;
      v15 = BCDefaultLog(isDownload, v14);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        if (v16)
        {
          sub_12B18(identifier, self, v15);
        }

        [(BooksClient *)self removeAssetByPersistentID:identifier];
      }

      else if (v16)
      {
        sub_12AB0();
      }
    }

    else
    {
      v17 = BCDefaultLog(0, v11);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_12BAC();
      }
    }
  }
}

- (void)processDeletesFiles
{
  [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Books.plist", "processDeletesFile"}];
  v3 = [(BooksClient *)self plistByPath:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];

  [v3 processDeletesFile];
}

- (void)iteratePathsForPlist:(id)plist processingBlock:(id)block
{
  v7 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_12C14();
    if (!block)
    {
      return;
    }
  }

  else if (!block)
  {
    return;
  }

  v8 = [(BooksClient *)self booksFromPlist:plist];
  stringByDeletingLastPathComponent = [plist stringByDeletingLastPathComponent];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = objc_opt_class();
        v16 = BCDynamicCast(v15, v14);
        v17 = objc_opt_class();
        v18 = BCDynamicCast(v17, [v16 objectForKey:@"Path"]);
        if ([v18 length])
        {
          (*(block + 2))(block, [stringByDeletingLastPathComponent stringByAppendingPathComponent:v18], v16);
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }
}

- (id)_stringFromObject:(id)object
{
  objectCopy = object;
  if (!object)
  {
    return objectCopy;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return objectCopy;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v7 = BCDefaultLog(isKindOfClass, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_12C84();
    }

    return 0;
  }

  return [objectCopy stringValue];
}

- (id)storeInfoForItem:(id)item
{
  v5 = [item objectForKey:@"Item ID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length])
  {
    v6 = objc_alloc_init(ATStoreInfo);
    [v6 setAdamID:{objc_msgSend(v5, "numberFromHexDigits")}];
    [v6 setDSID:{objc_msgSend(-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"DSID", "numberFromHexDigits")}];
    [v6 setCollectionID:{objc_msgSend(-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"Collection ID", "numberFromHexDigits")}];
    if ([item objectForKey:@"Is Protected"])
    {
      [v6 setDrmFree:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", objc_msgSend(-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"Is Protected", "BOOLValue") ^ 1)}];
    }

    [v6 setStorefrontID:{objc_msgSend(objc_msgSend(-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"Storefront ID", "numberFromHexDigits"), "stringValue")}];
    [v6 setXID:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"XID"}];
    [v6 setFlavor:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"Flavor"}];
    v7 = @"Apple ID";
  }

  else
  {
    v8 = [item objectForKey:@"s"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 unsignedLongLongValue])
    {
      goto LABEL_25;
    }

    v6 = objc_alloc_init(ATStoreInfo);
    [v6 setAdamID:v8];
    [v6 setDSID:{objc_msgSend(item, "objectForKey:", @"DSID"}];
    [v6 setCollectionID:{objc_msgSend(item, "objectForKey:", @"Collection ID"}];
    [v6 setVersionID:{objc_msgSend(item, "objectForKey:", @"Version ID"}];
    [v6 setStorefrontID:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"Storefront ID"}];
    [v6 setXID:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"XID"}];
    [v6 setFlavor:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"Flavor"}];
    [v6 setDimensions:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"Dimensions"}];
    v7 = @"AppleID";
  }

  [v6 setAppleID:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", v7))}];
  if (!v6)
  {
    return v6;
  }

  if (![objc_msgSend(v6 "DSID")])
  {

LABEL_25:
    v6 = 0;
    return v6;
  }

  if (![objc_msgSend(v6 "adamID")])
  {
    v10 = BCDefaultLog(0, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_12D10();
    }
  }

  if (![objc_msgSend(v6 "storefrontID")])
  {
    v12 = BCDefaultLog(0, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_12D78();
    }
  }

  if (![objc_msgSend(v6 "appleID")])
  {
    v14 = BCDefaultLog(0, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_12DE0();
    }
  }

  if (![objc_msgSend(v6 "flavor")] && !objc_msgSend(v6, "drmFree"))
  {
    v16 = BCDefaultLog(0, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_12E48();
    }
  }

  return v6;
}

- (void)appendIconUrlForPersistentID:(id)d toAsset:(id)asset
{
  v5 = [@"/var/mobile/Media/Books/Sync/Artwork/" stringByAppendingPathComponent:d];
  v6 = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:", v5];
  if (v6)
  {
    v8 = [NSURL fileURLWithPath:v5 isDirectory:0];
    v10 = BCDefaultLog(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_12F18();
    }

    [asset setIcon:v8];
  }

  else
  {
    v11 = BCDefaultLog(v6, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_12EB0();
    }
  }
}

- (id)bookTitleForPlistEntry:(id)entry
{
  v4 = objc_opt_class();
  v5 = BCDynamicCast(v4, [entry objectForKey:@"Name"]);
  if ([v5 length])
  {
    return v5;
  }

  v7 = objc_opt_class();
  v8 = [entry objectForKey:@"Artist"];

  return BCDynamicCast(v7, v8);
}

- (id)_bookEstimatedDownloadSizeForPlistEntry:(id)entry
{
  v4 = objc_opt_class();
  v5 = [entry objectForKeyedSubscript:@"Estimated Download Size"];

  return BCDynamicCast(v4, v5);
}

- (id)_bookSizeOnDiskForPlistEntry:(id)entry
{
  v4 = objc_opt_class();
  v5 = [entry objectForKeyedSubscript:@"Size On Disk"];

  return BCDynamicCast(v4, v5);
}

- (void)_updateATAssetTotalBytes:(id)bytes plistEntry:(id)entry restoreFlag:(BOOL)flag
{
  flagCopy = flag;
  v9 = [(BooksClient *)self bookTitleForPlistEntry:entry];
  v10 = [(BooksClient *)self _bookEstimatedDownloadSizeForPlistEntry:entry];
  if (v10 || (v10 = [(BooksClient *)self _bookSizeOnDiskForPlistEntry:entry]) != 0)
  {
    v12 = v10;
    v13 = BCDefaultLog(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412546;
      v28 = v9;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Set totalBytes for asset '%@' to %@", &v27, 0x16u);
    }

    unsignedLongLongValue = [(__CFString *)v12 unsignedLongLongValue];
LABEL_6:
    [bytes setTotalBytes:unsignedLongLongValue];
    return;
  }

  if (flagCopy)
  {
    v15 = objc_opt_class();
    v16 = BCDynamicCast(v15, [entry objectForKeyedSubscript:@"Backup-Path"]);
    if (!v16)
    {
      v17 = objc_opt_class();
      v16 = BCDynamicCast(v17, [entry objectForKeyedSubscript:@"Path"]);
    }

    pathExtension = [v16 pathExtension];
    if (!pathExtension)
    {
      v19 = objc_opt_class();
      pathExtension = BCDynamicCast(v19, [entry objectForKeyedSubscript:@"Extension"]);
    }

    v20 = objc_opt_class();
    if ([BCDynamicCast(v20 objc_msgSend(entry])
    {
      v21 = 25;
    }

    else
    {
      v21 = 5;
    }

    v22 = [(__CFString *)pathExtension caseInsensitiveCompare:@"ibooks"];
    if (v22)
    {
      v24 = v21;
    }

    else
    {
      v24 = 100;
    }

    v25 = BCDefaultLog(v22, v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138413314;
      v28 = v9;
      v29 = 2114;
      v30 = pathExtension;
      v31 = 2114;
      v32 = @"Estimated Download Size";
      v33 = 2114;
      v34 = @"Size On Disk";
      v35 = 2048;
      v36 = v24;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Asset '%@' (%{public}@) is missing both '%{public}@' and '%{public}@', use guesstimate of %lluMB", &v27, 0x34u);
    }

    unsignedLongLongValue = (v24 << 20);
    goto LABEL_6;
  }

  v26 = BCDefaultLog(0, v11);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412802;
    v28 = v9;
    v29 = 2114;
    v30 = @"Estimated Download Size";
    v31 = 2114;
    v32 = @"Size On Disk";
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Asset '%@' is missing both '%{public}@' and '%{public}@' and not restore, skip guesstimate", &v27, 0x20u);
  }
}

- (id)assetsRequestedByPersistentIDs:(id)ds fromPlist:(id)plist
{
  v22 = objc_alloc_init(NSAutoreleasePool);
  selfCopy = self;
  v26 = objc_alloc_init(NSMutableArray);
  v7 = [(BooksClient *)self plistByPath:plist];
  if ([ds count])
  {
    books = [objc_msgSend(v7 books];
  }

  else
  {
    books = 0;
  }

  if ([books count])
  {
    v24 = [objc_msgSend(plist "stringByDeletingLastPathComponent")];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = [books countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v28 = *v30;
      obj = books;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v30 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = objc_opt_class();
          v14 = BCDynamicCast(v13, v12);
          v15 = objc_opt_class();
          v16 = BCDynamicCast(v15, [v14 objectForKey:@"Path"]);
          v17 = objc_opt_class();
          v18 = BCDynamicCast(v17, [v14 objectForKey:@"Persistent ID"]);
          v19 = objc_opt_class();
          v20 = BCDynamicCast(v19, [v14 objectForKey:@"iTunesU Permlink"]);
          if ([v16 length] && objc_msgSend(v18, "length") && !objc_msgSend(v20, "length"))
          {
            [v26 addObject:{+[ATAsset uploadAssetWithIdentifier:dataclass:sourcePath:prettyName:](ATAsset, "uploadAssetWithIdentifier:dataclass:sourcePath:prettyName:", v18, @"Book", objc_msgSend(v24, "stringByAppendingPathComponent:", v16), -[BooksClient bookTitleForPlistEntry:](selfCopy, "bookTitleForPlistEntry:", v14))}];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
    }
  }

  return v26;
}

- (id)reverseSyncAssets
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  v4 = objc_alloc_init(NSMutableArray);
  reverseSyncPersistentIDs = [(BooksClient *)self reverseSyncPersistentIDs];
  if ([reverseSyncPersistentIDs count])
  {
    v7 = [(BooksClient *)self assetsRequestedByPersistentIDs:reverseSyncPersistentIDs fromPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
    v9 = BCDefaultLog(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = @"/var/mobile/Media/Books/Purchases/Purchases.plist";
      v18 = 2048;
      v19 = [v7 count];
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Reverse Sync from: %@ -- %lu items", &v16, 0x16u);
    }

    if ([v7 count])
    {
      [v4 addObjectsFromArray:v7];
    }

    v10 = [(BooksClient *)self assetsRequestedByPersistentIDs:reverseSyncPersistentIDs fromPlist:@"/var/mobile/Media/Books/Books.plist"];
    v12 = BCDefaultLog(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v10 count];
      v16 = 138412546;
      v17 = @"/var/mobile/Media/Books/Books.plist";
      v18 = 2048;
      v19 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Reverse Sync from: %@ -- %lu items", &v16, 0x16u);
    }

    if ([v10 count])
    {
      [v4 addObjectsFromArray:v10];
    }
  }

  else
  {
    v14 = BCDefaultLog(0, v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "No Reverse Sync items requested.", &v16, 2u);
    }
  }

  return v4;
}

- (void)appendPlistEntries:(id)entries toAssetArray:(id)array withRestoreFlag:(BOOL)flag
{
  flagCopy = flag;
  v32 = +[NSDate date];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = entries;
  v8 = [entries countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (!v8)
  {
    goto LABEL_19;
  }

  v10 = v8;
  v35 = *v37;
  do
  {
    v11 = 0;
    do
    {
      if (*v37 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v36 + 1) + 8 * v11);
      v13 = objc_opt_class();
      v14 = BCDynamicCast(v13, v12);
      v15 = -[BooksClient _stringFromObject:](self, "_stringFromObject:", [v14 objectForKey:@"Persistent ID"]);
      if ([v15 length])
      {
        v16 = [(BooksClient *)self bookTitleForPlistEntry:v14];
        v17 = [(BooksClient *)self storeInfoForItem:v14];
        v18 = v17;
        if (!flagCopy || v17)
        {
          v20 = [ATAsset downloadAssetWithIdentifier:v15 dataclass:@"Book" prettyName:v16];
          [v20 setIsRestore:flagCopy];
          v27 = [v20 setStoreInfo:v18];
          if (flagCopy)
          {
            v27 = [v20 setPath:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(v14, "objectForKey:", @"Backup-Path"}];
          }

          v29 = BCDefaultLog(v27, v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v41 = v20;
            v42 = 1024;
            LODWORD(v43) = flagCopy;
            v24 = v29;
            v25 = "Constructing download asset: %@, isRestore: %d";
            v26 = 18;
LABEL_15:
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, v25, buf, v26);
          }
        }

        else
        {
          v19 = objc_opt_class();
          v20 = +[ATAsset iCloudRestoreAssetWithIdentifier:dataclass:assetType:restorePath:displayName:](ATAsset, "iCloudRestoreAssetWithIdentifier:dataclass:assetType:restorePath:displayName:", v15, @"Book", 0, BCDynamicCast(v19, [v14 objectForKey:@"Backup-Path"]), v16);
          v22 = BCDefaultLog(v20, v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v14 objectForKey:@"Backup-Path"];
            *buf = 138412546;
            v41 = v20;
            v42 = 2112;
            v43 = v23;
            v24 = v22;
            v25 = "Constructing iCloud Restore Asset: %@, from path %@";
            v26 = 22;
            goto LABEL_15;
          }
        }

        [(BooksClient *)self _updateATAssetTotalBytes:v20 plistEntry:v14 restoreFlag:flagCopy];
        [(BooksClient *)self appendIconUrlForPersistentID:v15 toAsset:v20];
        [array addObject:v20];
      }

      v11 = v11 + 1;
    }

    while (v10 != v11);
    v8 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    v10 = v8;
  }

  while (v8);
LABEL_19:
  v30 = BCDefaultLog(v8, v9);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    [+[NSDate date](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", v32];
    *buf = 134217984;
    v41 = v31;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "BOOKSCLIENT: Finished to build up the ATAssets to be restored in %.4f ms", buf, 0xCu);
  }
}

- (id)forwardSyncAssets
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSAutoreleasePool);
  v5 = [(BCAssetDatabase *)[(BooksClient *)self database] outstandingAssetsByRestoreFlag:1];
  v7 = BCDefaultLog(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = [v5 count];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Forward Sync as Restore %lu items", &v13, 0xCu);
  }

  [(BooksClient *)self appendPlistEntries:v5 toAssetArray:v3 withRestoreFlag:1];
  v8 = [(BCAssetDatabase *)[(BooksClient *)self database] outstandingAssetsByRestoreFlag:0];
  v10 = BCDefaultLog(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 count];
    v13 = 134217984;
    v14 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Forward Sync as Sync %lu items", &v13, 0xCu);
  }

  [(BooksClient *)self appendPlistEntries:v8 toAssetArray:v3 withRestoreFlag:0];

  return v3;
}

- (id)plistByPath:(id)path
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_8974;
  v11 = sub_8984;
  v12 = 0;
  plist_queue = self->_plist_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8990;
  block[3] = &unk_20588;
  block[5] = path;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(plist_queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)booksFromPlist:(id)plist
{
  v3 = [(BooksClient *)self plistByPath:plist];

  return [v3 books];
}

- (id)sortedBooksFromPlist:(id)plist
{
  v3 = [(BooksClient *)self plistByPath:plist];

  return [v3 booksSortedByKey:@"Persistent ID"];
}

- (BOOL)addItems:(id)items toPlist:(id)plist
{
  if ([items count] && (v7 = objc_msgSend(-[BooksClient plistByPath:](self, "plistByPath:", plist), "addItems:", items), (v7 & 1) == 0))
  {
    v10 = BCDefaultLog(v7, v8);
    v9 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      sub_12F88();
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (id)persistentIDsMerged:(BOOL)merged
{
  mergedCopy = merged;
  v5 = objc_alloc_init(NSAutoreleasePool);
  v6 = [(BooksClient *)self plistByPath:@"/var/mobile/Media/Books/Books.plist"];
  v7 = [(BooksClient *)self plistByPath:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
  if (mergedCopy)
  {
    existingPersistentIDs = [v6 existingPersistentIDs];
    existingPersistentIDs2 = [v7 existingPersistentIDs];
  }

  else
  {
    existingPersistentIDs = [v6 unfilteredPersistentIDs];
    existingPersistentIDs2 = [v7 unfilteredPersistentIDs];
  }

  v10 = existingPersistentIDs2;
  v11 = [NSMutableArray arrayWithArray:existingPersistentIDs];
  [(NSMutableArray *)v11 addObjectsFromArray:v10];
  [(NSMutableArray *)v11 sortUsingSelector:"compare:"];
  v12 = v11;

  return v11;
}

+ (id)alternatePathForPlist:(id)plist withNamePrefix:(id)prefix
{
  if (![prefix length])
  {
    sub_12FF8();
  }

  if (![plist length])
  {
    sub_13050();
  }

  lastPathComponent = [plist lastPathComponent];
  v7 = [objc_msgSend(plist "stringByDeletingLastPathComponent")];

  return [v7 stringByAppendingString:lastPathComponent];
}

- (id)reverseSyncPersistentIDs
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  v4 = [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Sync/Upload.plist", "uploadsByPersistentID"}];
  v5 = v4;

  return v4;
}

- (id)forwardSyncPersistentIDs
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  v4 = [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Sync/Books.plist", "sortedPersistentIDs:", 0}];
  v5 = v4;

  return v4;
}

- (id)persistentIDsFromBookRecords:(id)records
{
  v4 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [records countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(records);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = BCDynamicCast(v10, v9);
        v12 = objc_opt_class();
        v13 = BCDynamicCast(v12, [v11 objectForKey:@"Persistent ID"]);
        if ([v13 length])
        {
          [v4 addObject:v13];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [records countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return [v4 sortedArrayUsingSelector:"compare:"];
}

- (id)filesInPath:(id)path
{
  v10 = 0;
  v4 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    pathCopy = path;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "filesInPath: %@", buf, 0xCu);
  }

  v5 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:path, &v10];
  v7 = v5;
  if (v10)
  {
    v8 = BCDefaultLog(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      pathCopy = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "error: %@", buf, 0xCu);
    }
  }

  return v7;
}

+ (id)bookExtensions
{
  if (qword_267D8 != -1)
  {
    sub_130A8();
  }

  return qword_267D0;
}

+ (id)foregroundRestoreWhitelist
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9148;
  block[3] = &unk_205F0;
  block[4] = self;
  if (qword_267E8 != -1)
  {
    dispatch_once(&qword_267E8, block);
  }

  return qword_267E0;
}

- (id)booksInPath:(id)path
{
  v4 = +[NSMutableArray array];
  v24 = 0;
  v5 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:path, &v24];
  v7 = BCDefaultLog(v5, v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    *buf = 138412290;
    pathCopy2 = path;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "In Path: %@", buf, 0xCu);
  }

  if (v24)
  {
    v10 = BCDefaultLog(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      pathCopy2 = v24;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "error: %@", buf, 0xCu);
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v5);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v17 = BCDefaultLog(v11, v12);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          pathCopy2 = v16;
          _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "booksInPath Iterating: %@", buf, 0xCu);
        }

        v11 = [+[BooksClient bookExtensions](BooksClient "bookExtensions")];
        if (v11)
        {
          v11 = [v4 addObject:v16];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v11 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v29 count:16];
      v13 = v11;
    }

    while (v11);
  }

  v18 = BCDefaultLog(v11, v12);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    pathCopy2 = path;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "booksInPath %@ - %@", buf, 0x16u);
  }

  return v4;
}

- (id)knownBooksInPlist:(id)plist
{
  v3 = [-[BooksClient plistByPath:](self plistByPath:{plist), "sortedPaths"}];
  v4 = [v3 count];
  if (v4)
  {
    v4 = [[NSMutableArray alloc] initWithArray:v3];
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = BCDefaultLog(v4, v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "knownBooksInPlist %@", &v9, 0xCu);
  }

  return v6;
}

- (void)deleteArtworkExcludingFileNames:(id)names
{
  v13 = objc_alloc_init(NSAutoreleasePool);
  v5 = [-[BooksClient filesInPath:](self filesInPath:{@"/var/mobile/Media/Books/Sync/Artwork/", "arrayRemovingMatchingStrings:", names}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [@"/var/mobile/Media/Books/Sync/Artwork/" stringByAppendingPathComponent:*(*(&v14 + 1) + 8 * i)];
        v12 = BCDefaultLog(v10, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = v10;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "deleting [%@]", buf, 0xCu);
        }

        [(BooksClient *)self removeItemAtPath:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)deleteOrphanedFilesInPath:(id)path knownToPlist:(id)plist
{
  v27 = objc_alloc_init(NSAutoreleasePool);
  v7 = [-[BooksClient booksInPath:](self booksInPath:{path), "arrayRemovingMatchingStrings:", -[BooksClient knownBooksInPlist:](self, "knownBooksInPlist:", plist)}];
  v8 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [v8 addObject:{objc_msgSend(path, "stringByAppendingPathComponent:", *(*(&v32 + 1) + 8 * i))}];
      }

      v10 = [v7 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v10);
  }

  v13 = [(BCAssetDatabase *)[(BooksClient *)self database] outstandingAssetDownloadCompletePathsMatchingArray:v8];
  v14 = [v8 arrayRemovingMatchingStrings:v13];
  v16 = BCDefaultLog(v14, v15);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    *buf = 138412290;
    v38 = v13;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "pendingInstall %@", buf, 0xCu);
  }

  v19 = BCDefaultLog(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v14;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "orphanedPaths %@", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v20)
  {
    v22 = v20;
    v23 = *v29;
    do
    {
      v24 = 0;
      do
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v14);
        }

        v25 = *(*(&v28 + 1) + 8 * v24);
        v26 = BCDefaultLog(v20, v21);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = v25;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "deleting [%@]", buf, 0xCu);
        }

        v20 = [(BooksClient *)self removeItemAtPath:v25];
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v20 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      v22 = v20;
    }

    while (v20);
  }
}

- (void)deleteOrphanedFiles
{
  [(BooksClient *)self deleteOrphanedFilesInPath:@"/var/mobile/Media/Books/" knownToPlist:@"/var/mobile/Media/Books/Books.plist"];

  [(BooksClient *)self deleteOrphanedFilesInPath:@"/var/mobile/Media/Books/Purchases/" knownToPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
}

- (void)removeItemAtPath:(id)path
{
  v12 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = [(NSFileManager *)v5 fileExistsAtPath:path];
  if (v6)
  {
    v8 = [NSURL fileURLWithPath:path];
    fileCoord = self->_fileCoord;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_9BA4;
    v11[3] = &unk_20618;
    v11[4] = 0;
    v11[5] = v5;
    v11[6] = path;
    [(NSFileCoordinator *)fileCoord coordinateWritingItemAtURL:v8 options:1 error:&v12 byAccessor:v11];
  }

  else
  {
    v10 = BCDefaultLog(v6, v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_130BC();
    }
  }
}

- (void)installedAssetMetrics:(id *)metrics forPlistPath:(id)path
{
  v7 = objc_alloc_init(NSAutoreleasePool);
  [(BooksClient *)self regeneratePersistentIDsForPlist:path];
  selfCopy = self;
  v8 = [-[BooksClient plistByPath:](self plistByPath:{path), "entriesWithPath"}];
  v9 = [v8 count];
  if (v9)
  {
    v39 = v7;
    metricsCopy = metrics;
    v11 = BCDefaultLog(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_131A8();
    }

    v48[0] = 0;
    v48[1] = 0;
    v12 = -[BCAssetDatabase cachedInstalledAssetsByPersistentIDs:metrics:](-[BooksClient database](self, "database"), "cachedInstalledAssetsByPersistentIDs:metrics:", +[NSSet setWithArray:](NSSet, "setWithArray:", [objc_msgSend(v8 valueForKeyPath:{@"Persistent ID", "arrayRemovingNonStrings"}]), v48);
    v13 = v48[0];
    v14 = [v8 arrayRemovingObjectsByKey:@"Persistent ID" matchingStrings:v12];
    v15 = [v14 count];
    v16 = &v15[[v12 count]];
    v17 = [v8 count];
    v43 = v14;
    if (v16 != v17)
    {
      v19 = BCDefaultLog(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v35 = [v12 count];
        v36 = [v14 count];
        v37 = [v8 count];
        *buf = 138413058;
        pathCopy = path;
        v52 = 2048;
        v53 = v35;
        v54 = 2048;
        v55 = v36;
        v14 = v43;
        v56 = 2048;
        v57 = v37;
        _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Unexpected count mismatch: %@ -- Cached: %lu; Uncached: %lu; Total: %lu", buf, 0x2Au);
      }
    }

    v38 = v8;
    if ([v14 count])
    {
      stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v20 = [v14 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = 0;
        v23 = *v45;
        do
        {
          v24 = 0;
          do
          {
            if (*v45 != v23)
            {
              objc_enumerationMutation(v14);
            }

            v25 = *(*(&v44 + 1) + 8 * v24);
            v26 = objc_opt_class();
            v27 = BCDynamicCast(v26, v25);
            v28 = objc_opt_class();
            v29 = BCDynamicCast(v28, [v27 objectForKey:@"Persistent ID"]);
            if (([v29 isEqualToString:v22] & 1) == 0)
            {
              v22 = v29;
              v30 = objc_opt_class();
              v31 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:{BCDynamicCast(v30, objc_msgSend(v27, "objectForKey:", @"Path"}];
              v33 = ATGetDiskUsageForPath();
              if (v33)
              {
                if ([v22 length])
                {
                  [(BCAssetDatabase *)[(BooksClient *)selfCopy database] insertInstalledAssetByPersistentID:v22 withSize:v33];
                }
              }

              else
              {
                v34 = BCDefaultLog(0, v32);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  pathCopy = v31;
                  _os_log_error_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "expected non-zero from ATGetDiskUsageForPath: %@", buf, 0xCu);
                }
              }

              v13 += v33;
              v14 = v43;
            }

            v24 = v24 + 1;
          }

          while (v21 != v24);
          v21 = [v14 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v21);
      }
    }

    v7 = v39;
    metrics = metricsCopy;
    v8 = v38;
  }

  else
  {
    v13 = 0;
  }

  metrics->var0 = v13;
  metrics->var1 = [v8 count];
}

- (void)nonAssetDiskSpaceMetrics:(id *)metrics directory:(id)directory recursive:(BOOL)recursive
{
  recursiveCopy = recursive;
  context = objc_autoreleasePoolPush();
  v8 = +[NSFileManager defaultManager];
  v9 = [NSURL fileURLWithPath:directory isDirectory:1];
  v23[0] = NSURLTotalFileAllocatedSizeKey;
  v23[1] = NSURLIsDirectoryKey;
  v10 = [NSArray arrayWithObjects:v23 count:2];
  v11 = +[BooksClient bookExtensions];
  v12 = [(NSFileManager *)v8 enumeratorAtURL:v9 includingPropertiesForKeys:v10 options:1 errorHandler:0];
  nextObject = [(NSDirectoryEnumerator *)v12 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = objc_autoreleasePoolPush();
      if (([v11 containsObject:{objc_msgSend(objc_msgSend(nextObject2, "pathExtension"), "lowercaseString")}] & 1) == 0)
      {
        v22 = 0;
        [nextObject2 getResourceValue:&v22 forKey:NSURLIsDirectoryKey error:0];
        if ([v22 BOOLValue])
        {
          if (recursiveCopy)
          {
            -[BooksClient nonAssetDiskSpaceMetrics:directory:recursive:](self, "nonAssetDiskSpaceMetrics:directory:recursive:", metrics, [nextObject2 path], 1);
          }
        }

        else
        {
          v21 = 0;
          [nextObject2 getResourceValue:&v21 forKey:NSURLTotalFileAllocatedSizeKey error:0];
          if ([v21 longLongValue])
          {
            [v21 longLongValue];
            v16 += ATGetPhysicalSizeForLogicalSize();
            ++v15;
          }
        }
      }

      objc_autoreleasePoolPop(v17);
      nextObject2 = [(NSDirectoryEnumerator *)v12 nextObject];
    }

    while (nextObject2);
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v18 = metrics->var1 + v15;
  metrics->var0 += v16;
  metrics->var1 = v18;
  objc_autoreleasePoolPop(context);
}

- (void)addKnownAccountInfo:(id)info
{
  if (info && !self->_accountInfos)
  {
    self->_accountInfos = objc_alloc_init(NSMutableSet);
    self->_appleIDs = objc_alloc_init(NSMutableSet);
  }

  appleID = [info appleID];
  if (appleID && ([(NSMutableSet *)self->_appleIDs containsObject:appleID]& 1) == 0)
  {
    [(NSMutableSet *)self->_accountInfos addObject:info];
    appleIDs = self->_appleIDs;
    appleID2 = [info appleID];

    [(NSMutableSet *)appleIDs addObject:appleID2];
  }
}

- (BOOL)commitOutstandingAssets:(id)assets
{
  assetsCopy = assets;
  v5 = [assets count];
  if (v5)
  {
    v7 = -[BCAssetDatabase cachedOutstandingAssetsByPersistentIDs:](-[BooksClient database](self, "database"), "cachedOutstandingAssetsByPersistentIDs:", [objc_msgSend(assetsCopy valueForKeyPath:{@"Persistent ID", "arrayRemovingNonStrings"}]);
    if ([v7 count])
    {
      v8 = [assetsCopy arrayRemovingObjectsByKey:@"Persistent ID" matchingStrings:v7];
      v9 = [assetsCopy arrayOfObjectsContainingMatchingKey:@"Persistent ID" matchingStrings:v7];
      v10 = [v8 count];
      v11 = &v10[[v7 count]];
      v12 = [assetsCopy count];
      if (v11 != v12)
      {
        v14 = BCDefaultLog(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v17 = 134218496;
          v18 = [v7 count];
          v19 = 2048;
          v20 = [v8 count];
          v21 = 2048;
          v22 = [assetsCopy count];
          _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Unexpected count mismatch: Cached: %lu; Uncached: %lu; Total: %lu", &v17, 0x20u);
        }
      }

      assetsCopy = v8;
    }

    else
    {
      v9 = 0;
    }

    if ([assetsCopy count])
    {
      [(BCAssetDatabase *)[(BooksClient *)self database] insertOutstandingAssetDictionaries:assetsCopy isRestore:[(BooksClient *)self isRestoreSession]];
    }

    v5 = [v9 count];
    if (v5)
    {
      v5 = [(BCAssetDatabase *)[(BooksClient *)self database] updateOutstandingAssetDictionaries:v9 isRestore:[(BooksClient *)self isRestoreSession]];
    }
  }

  v15 = BCDefaultLog(v5, v6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "commit Assets To Request Succeeded", &v17, 2u);
  }

  return 1;
}

- (void)removeItemByPersistentID:(id)d fromPlist:(id)plist
{
  v7 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    dCopy = d;
    v10 = 2114;
    plistCopy = plist;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Removing %@ from %{public}@.", &v8, 0x16u);
  }

  [(BooksClient *)self removeItemsByPersistentID:[NSArray fromPlist:"arrayWithObject:" arrayWithObject:d], plist];
}

- (void)removeItemsByPersistentID:(id)d fromPlist:(id)plist
{
  v7 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    dCopy = d;
    v10 = 2114;
    plistCopy = plist;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Removing %@ from %{public}@.", &v8, 0x16u);
  }

  [-[BooksClient plistByPath:](self plistByPath:{plist), "removeItemsByPersistentID:", d}];
}

- (void)removeKnownItems:(id)items
{
  v5 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Remove known items.", v6, 2u);
  }

  if ([items count])
  {
    [(BooksClient *)self removeItemsByPersistentID:items fromPlist:@"/var/mobile/Media/Books/Books.plist"];
    [(BooksClient *)self removeItemsByPersistentID:items fromPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
  }
}

- (void)generateDirectories
{
  v2 = +[NSFileManager defaultManager];
  v4[0] = NSFileOwnerAccountName;
  v4[1] = NSFileGroupOwnerAccountName;
  v5[0] = @"mobile";
  v5[1] = @"mobile";
  v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
  if (![(NSFileManager *)v2 fileExistsAtPath:@"/var/mobile/Media/Books/Sync/"])
  {
    [(NSFileManager *)v2 createDirectoryAtPath:@"/var/mobile/Media/Books/Sync/" withIntermediateDirectories:1 attributes:v3 error:0];
  }

  if (![(NSFileManager *)v2 fileExistsAtPath:@"/var/mobile/Media/Books/Sync/Database/"])
  {
    [(NSFileManager *)v2 createDirectoryAtPath:@"/var/mobile/Media/Books/Sync/Database/" withIntermediateDirectories:1 attributes:v3 error:0];
  }

  if (![(NSFileManager *)v2 fileExistsAtPath:@"/var/mobile/Media/Books/Sync/Artwork/"])
  {
    [(NSFileManager *)v2 createDirectoryAtPath:@"/var/mobile/Media/Books/Sync/Artwork/" withIntermediateDirectories:1 attributes:v3 error:0];
  }

  if (![(NSFileManager *)v2 fileExistsAtPath:@"/var/mobile/Media/Books/Purchases/"])
  {
    [(NSFileManager *)v2 createDirectoryAtPath:@"/var/mobile/Media/Books/Purchases/" withIntermediateDirectories:1 attributes:v3 error:0];
  }
}

- (id)accountInfoForAssetAtPath:(id)path
{
  if ([+[NSFileManager isDirectoryPath:"isDirectoryPath:"]
  {
    v4 = +[NSDictionary dictionaryWithContentsOfFile:](NSDictionary, "dictionaryWithContentsOfFile:", [path stringByAppendingPathComponent:@"iTunesMetadata.plist"]);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_12;
    }

    if ([(NSDictionary *)v4 objectForKey:@"itemId"])
    {
      v6 = [(NSDictionary *)v5 objectForKey:@"isSample"];
      if (!v6 || (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v7 BOOLValue] & 1) == 0)
      {
        v8 = objc_opt_class();
        v9 = BCDynamicCast(v8, [(NSDictionary *)v5 objectForKey:@"com.apple.iTunesStore.downloadInfo"]);
        v10 = objc_opt_class();
        v11 = BCDynamicCast(v10, [v9 objectForKey:@"accountInfo"]);
        v12 = objc_opt_class();
        v13 = BCDynamicCast(v12, [v11 objectForKey:@"AppleID"]);
        if ([v13 length])
        {
          if (v13)
          {
LABEL_9:
            v14 = objc_opt_class();
            v15 = BCDynamicCast(v14, [v11 objectForKeyedSubscript:@"DSPersonID"]);
            v16 = objc_opt_class();
            v17 = BCDynamicCast(v16, [v11 objectForKeyedSubscript:@"AltDSID"]);
            v5 = objc_alloc_init(ATMutableAccountInfo);
            [(NSDictionary *)v5 setDSID:v15];
            [(NSDictionary *)v5 setAppleID:v13];
            [(NSDictionary *)v5 setAltDSID:v17];
            goto LABEL_12;
          }
        }

        else
        {
          v18 = objc_opt_class();
          v13 = BCDynamicCast(v18, [(NSDictionary *)v5 objectForKey:@"apple-id"]);
          if (v13)
          {
            goto LABEL_9;
          }
        }
      }
    }
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (void)removeDatabase
{
  v3 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_131E4();
  }

  [(BooksClient *)self setDatabase:0];
  +[BCAssetDatabase removeDatabase];
}

- (BCAssetDatabase)database
{
  result = self->_database;
  if (!result)
  {
    v4 = BCDefaultLog(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_13220();
    }

    v5 = objc_alloc_init(BCAssetDatabase);
    self->_database = [[ThreadSafeProxy alloc] initWithObject:v5];

    return self->_database;
  }

  return result;
}

- (id)filteredDownloads:(id)downloads
{
  downloads = [downloads downloads];
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [downloads count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [downloads countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = SSDownloadPropertyKind;
    v9 = SSDownloadKindEBook;
    v10 = SSDownloadPropertyLibraryItemIdentifier;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(downloads);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([objc_msgSend(v12 valueForProperty:{v8), "isEqualToString:", v9}])
        {
          v13 = [v12 valueForProperty:v10];
          if ([v13 length])
          {
            [(NSMutableDictionary *)v4 setValue:v12 forKey:v13];
          }
        }
      }

      v6 = [downloads countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)updateAssets:(id)assets withSSDownloads:(id)downloads andDownloadCompletePathMap:(id)map
{
  v7 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v39 = [assets count];
    *&v39[4] = 1024;
    *&v39[6] = [downloads count];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%d assets; %d downloads", buf, 0xEu);
  }

  if ([assets count] && (objc_msgSend(downloads, "count") || objc_msgSend(map, "count")))
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = [assets countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v35;
      *&v9 = 138412290;
      v32 = v9;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(assets);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          identifier = [v13 identifier];
          if ([identifier length])
          {
            v15 = [downloads objectForKey:identifier];
            v17 = v15;
            if (v15)
            {
              [v13 setStorePID:{objc_msgSend(v15, "persistentIdentifier")}];
            }

            else
            {
              v18 = BCDefaultLog(0, v16);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = v32;
                *v39 = identifier;
                _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "ATAsset with no matching SSDownload [My PID: %@]", buf, 0xCu);
              }
            }

            v19 = objc_opt_class();
            isKindOfClass = BCDynamicCast(v19, [map objectForKey:identifier]);
            v22 = isKindOfClass;
            if (isKindOfClass)
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                isKindOfClass = [v22 length];
                if (isKindOfClass)
                {
                  v23 = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:", v22];
                  if (v23)
                  {
                    v25 = [v13 setPath:v22];
                    v27 = BCDefaultLog(v25, v26);
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                    {
                      path = [v13 path];
                      *buf = 138412546;
                      *v39 = identifier;
                      *&v39[8] = 2112;
                      v40 = path;
                      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Setting installOnly : [identifier: %@] -- [Asset path: %@]", buf, 0x16u);
                    }

                    [v13 setInstallOnly:1];
                    continue;
                  }

                  v29 = BCDefaultLog(v23, v24);
                  isKindOfClass = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
                  if (isKindOfClass)
                  {
                    *buf = 138412546;
                    *v39 = identifier;
                    *&v39[8] = 2112;
                    v40 = v22;
                    _os_log_error_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "Cannot set installOnly : [identifier: %@] -- [Asset path: %@] [Path does not exist]", buf, 0x16u);
                  }
                }
              }
            }

            v30 = BCDefaultLog(isKindOfClass, v21);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              downloadPhaseIdentifier = [v17 downloadPhaseIdentifier];
              *buf = 138412802;
              *v39 = identifier;
              *&v39[8] = 2112;
              v40 = downloadPhaseIdentifier;
              v41 = 2112;
              v42 = v22;
              _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Have Asset for Download : [identifier: %@] -- [DownloadPhase: %@] [DownloadCompletePath: %@]", buf, 0x20u);
            }
          }
        }

        v10 = [assets countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v10);
    }
  }
}

@end