@interface MKPhotoLibraryMigrator
- (BOOL)importAndWait;
- (BOOL)importAssetAndWait:(id)wait retryNeeded:(BOOL *)needed;
- (MKPhotoLibraryAlbumMigrator)albumMigrator;
- (MKPhotoLibraryMigrator)initWithType:(unint64_t)type reuseDatabase:(BOOL)database;
- (void)addImportTime:(id)time;
- (void)addToAssetQueue:(id)queue;
- (void)import;
- (void)import:(id)import identifier:(id)identifier offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total filename:(id)filename collection:(id)collection originalFilename:(id)self0 complete:(BOOL)self1;
- (void)importChunk:(id)chunk identifier:(id)identifier offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total filename:(id)filename collection:(id)collection originalFilename:(id)self0 complete:(BOOL)self1;
- (void)photoLibraryDidAddAsset:(id)asset identifier:(id)identifier;
- (void)photoLibraryDidInterruptAsset:(id)asset;
- (void)photoLibraryDidSetIdentifier:(id)identifier forAsset:(id)asset;
- (void)photoLibraryWillAddAsset;
- (void)retry;
@end

@implementation MKPhotoLibraryMigrator

- (MKPhotoLibraryMigrator)initWithType:(unint64_t)type reuseDatabase:(BOOL)database
{
  if (type == 2)
  {
    selfCopy = 0;
  }

  else
  {
    databaseCopy = database;
    v23.receiver = self;
    v23.super_class = MKPhotoLibraryMigrator;
    v7 = [(MKMigrator *)&v23 init];
    v8 = v7;
    if (v7)
    {
      v7->_isBusy = 0;
      v9 = dispatch_queue_create("com.apple.migrationkit.migrator.photolibrary.asset", 0);
      assetQueue = v8->_assetQueue;
      v8->_assetQueue = v9;

      v11 = [MKPhotoLibrary alloc];
      if (type)
      {
        v12 = @"video";
      }

      else
      {
        v12 = @"image";
      }

      if (type)
      {
        v13 = 12;
      }

      else
      {
        v13 = 11;
      }

      v14 = [(MKPhotoLibrary *)v11 initWithContentType:type != 0];
      photoLibrary = v8->_photoLibrary;
      v8->_photoLibrary = v14;

      v16 = NSHomeDirectory();
      v17 = [v16 stringByAppendingPathComponent:@"/Library/MigrationKit/matd/"];

      v18 = [v17 stringByAppendingPathComponent:v12];
      root = v8->_root;
      v8->_root = v18;

      v20 = [[MKPhotoLibraryAssetDatabase alloc] initWithType:type reuse:databaseCopy];
      db = v8->_db;
      v8->_db = v20;

      v8->_type = type;
      [(MKMigrator *)v8 setType:v13];
    }

    self = v8;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)importChunk:(id)chunk identifier:(id)identifier offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total filename:(id)filename collection:(id)collection originalFilename:(id)self0 complete:(BOOL)self1
{
  chunkCopy = chunk;
  identifierCopy = identifier;
  filenameCopy = filename;
  collectionCopy = collection;
  originalFilenameCopy = originalFilename;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = objc_autoreleasePoolPush();
  LOBYTE(v23) = complete;
  [(MKPhotoLibraryMigrator *)selfCopy import:chunkCopy identifier:identifierCopy offset:offset length:length total:total filename:filenameCopy collection:collectionCopy originalFilename:originalFilenameCopy complete:v23];
  objc_autoreleasePoolPop(v22);
  objc_sync_exit(selfCopy);
}

- (void)import:(id)import identifier:(id)identifier offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total filename:(id)filename collection:(id)collection originalFilename:(id)self0 complete:(BOOL)self1
{
  v71 = *MEMORY[0x277D85DE8];
  importCopy = import;
  identifierCopy = identifier;
  filenameCopy = filename;
  collectionCopy = collection;
  originalFilenameCopy = originalFilename;
  if ([identifierCopy length] && objc_msgSend(filenameCopy, "length"))
  {
    offsetCopy = offset;
    v64 = importCopy;
    lowercaseString = [collectionCopy lowercaseString];
    v23 = [lowercaseString isEqualToString:@"camera"];

    lengthCopy = length;
    if (v23)
    {

      collectionCopy = 0;
    }

    date = [MEMORY[0x277CBEAA8] date];
    v25 = self->_root;
    lastPathComponent = [identifierCopy lastPathComponent];
    v27 = [lastPathComponent substringWithRange:{0, 1}];

    v28 = v27;
    v62 = v25;
    v29 = [(NSString *)v25 stringByAppendingPathComponent:v27];
    v66 = [v29 stringByAppendingPathComponent:filenameCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v65 = defaultManager;
    if (([defaultManager fileExistsAtPath:v29] & 1) != 0 || (v68 = 0, objc_msgSend(defaultManager, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v29, 1, 0, &v68), (v31 = v68) == 0))
    {
      v61 = 0;
    }

    else
    {
      selfCopy = self;
      v33 = v31;
      v57 = v29;
      v34 = v28;
      v35 = selfCopy;
      totalCopy = total;
      v37 = +[MKLog log];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [MKFileMigrator import:filename:offset:length:total:complete:];
      }

      total = totalCopy;
      v38 = v35;
      v28 = v34;
      v29 = v57;
      v61 = v33;
      self = v38;
    }

    if (offsetCopy)
    {
      totalCopy2 = total;
      v67 = 0;
      v39 = [v65 attributesOfItemAtPath:v66 error:&v67];
      v40 = v67;
      if (v40)
      {
        v41 = v40;
        v42 = v29;
        v43 = +[MKLog log];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [MKFileMigrator import:filename:offset:length:total:complete:];
        }

        v29 = v42;
LABEL_40:

        goto LABEL_41;
      }

      v56 = originalFilenameCopy;
      v44 = [v39 objectForKey:*MEMORY[0x277CCA1C0]];
      unsignedLongLongValue = [v44 unsignedLongLongValue];

      if (unsignedLongLongValue == offsetCopy)
      {
        v55 = v39;
        v46 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v66];
        [v46 seekToEndOfFile];
        [v46 writeData:v64];
        [v46 synchronizeFile];
        v54 = v46;
        [v46 closeFile];
        v47 = +[MKLog log];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = [v64 length];
          *buf = 134217984;
          v70 = v48;
          _os_log_impl(&dword_2592D2000, v47, OS_LOG_TYPE_INFO, "appended some bytes to a file. bytes=%ld", buf, 0xCu);
        }

        originalFilenameCopy = v56;
        total = totalCopy2;
        completeCopy2 = complete;
        if (offsetCopy + lengthCopy == totalCopy2)
        {
          completeCopy2 = 1;
        }

        goto LABEL_34;
      }

      originalFilenameCopy = v56;
      v50 = unsignedLongLongValue == totalCopy2;
      total = totalCopy2;
      if (!v50)
      {
        v55 = v39;
        v51 = +[MKLog log];
        v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
        v54 = v51;
        if (v52)
        {
          [MKFileMigrator import:v51 filename:? offset:? length:? total:? complete:?];
        }

        completeCopy2 = complete;
LABEL_34:

        [(MKPhotoLibraryMigrator *)self addImportTime:date];
        if (!completeCopy2)
        {
LABEL_41:

          importCopy = v64;
          goto LABEL_42;
        }

        goto LABEL_35;
      }

      [(MKPhotoLibraryMigrator *)self addImportTime:date];
    }

    else
    {
      if (([v65 fileExistsAtPath:v66] & 1) == 0)
      {
        [v64 writeToFile:v66 atomically:1];
      }

      [(MKPhotoLibraryMigrator *)self addImportTime:date];
      if (lengthCopy != total && !complete)
      {
        goto LABEL_41;
      }
    }

LABEL_35:
    v59 = v29;
    v53 = +[MKLog log];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v70 = v66;
      _os_log_impl(&dword_2592D2000, v53, OS_LOG_TYPE_INFO, "will add a file to asset queue. file=%@", buf, 0xCu);
    }

    if (!total)
    {
      total = [v65 mk_fileSizeAtPath:v66];
    }

    v41 = [[MKPhotoLibraryAsset alloc] initWithPath:v66 filename:filenameCopy collection:collectionCopy originalFilename:originalFilenameCopy size:total];
    [(MKPhotoLibraryAssetDatabase *)self->_db addAsset:v41];
    [(MKMigrator *)self migratorDidImport];
    [(MKMigrator *)self migratorDidAppendDataSize:[(MKPhotoLibraryAsset *)v41 size]];
    v29 = v59;
    goto LABEL_40;
  }

  date = +[MKLog log];
  if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
  {
    [MKPhotoLibraryMigrator import:identifier:offset:length:total:filename:collection:originalFilename:complete:];
  }

LABEL_42:
}

- (void)addToAssetQueue:(id)queue
{
  [(MKPhotoLibraryAssetDatabase *)self->_db addAsset:queue];
  delegate = [(MKMigrator *)self delegate];
  [delegate migratorWillExecuteOperation:self];

  [(MKPhotoLibraryMigrator *)self photoLibraryWillAddAsset];
}

- (void)photoLibraryWillAddAsset
{
  if (!self->_isBusy)
  {
    if ([(MKPhotoLibraryAssetDatabase *)self->_db count])
    {
      self->_isBusy = 1;
      date = [MEMORY[0x277CBEAA8] date];
      asset = [(MKPhotoLibraryAssetDatabase *)self->_db asset];
      path = [asset path];
      filename = [asset filename];
      originalFilename = [asset originalFilename];
      v8 = [asset size];
      shouldRetry = [(MKPhotoLibraryMigrator *)self shouldRetry];
      objc_initWeak(&location, self);
      photoLibrary = self->_photoLibrary;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __50__MKPhotoLibraryMigrator_photoLibraryWillAddAsset__block_invoke;
      v14[3] = &unk_2798DCFB0;
      objc_copyWeak(&v18, &location);
      v11 = path;
      v15 = v11;
      v19 = shouldRetry;
      v12 = date;
      v16 = v12;
      v13 = asset;
      v17 = v13;
      [(MKPhotoLibrary *)photoLibrary addAsset:v11 filename:filename originalFilename:originalFilename size:v8 completion:v14];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __50__MKPhotoLibraryMigrator_photoLibraryWillAddAsset__block_invoke(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v12 = +[MKLog log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    *buf = 67109890;
    *v24 = a2;
    *&v24[4] = 1024;
    *&v24[6] = a3;
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_2592D2000, v12, OS_LOG_TYPE_INFO, "did import a media file. success=%d, interrupted=%d, file=%@, error=%@", buf, 0x22u);
  }

  if (a3 && *(a1 + 64) == 1)
  {
    v14 = +[MKLog log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      *buf = 138412290;
      *v24 = v15;
      _os_log_impl(&dword_2592D2000, v14, OS_LOG_TYPE_INFO, "will retry to import an asset. file=%@", buf, 0xCu);
    }

    [WeakRetained addImportTime:*(a1 + 40)];
    [WeakRetained photoLibraryDidInterruptAsset:*(a1 + 48)];
  }

  else
  {
    if (v10)
    {
      v16 = [MEMORY[0x277CCAA00] defaultManager];
      v17 = [v16 isDeletableFileAtPath:*(a1 + 32)];

      if (v17)
      {
        v18 = [MEMORY[0x277CCAA00] defaultManager];
        v19 = *(a1 + 32);
        v22 = 0;
        [v18 removeItemAtPath:v19 error:&v22];
        v20 = v22;

        if (v20)
        {
          v21 = +[MKLog log];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
          }
        }
      }
    }

    [WeakRetained addImportTime:*(a1 + 40)];
    [WeakRetained photoLibraryDidAddAsset:*(a1 + 48) identifier:v9];
  }
}

- (void)retry
{
  ++self->_interruptionCount;
  [(MKPhotoLibraryMigrator *)self setIsBusy:0];

  [(MKPhotoLibraryMigrator *)self photoLibraryWillAddAsset];
}

- (void)photoLibraryDidInterruptAsset:(id)asset
{
  objc_initWeak(&location, self);
  assetQueue = self->_assetQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__MKPhotoLibraryMigrator_photoLibraryDidInterruptAsset___block_invoke;
  v5[3] = &unk_2798DCFD8;
  objc_copyWeak(&v6, &location);
  dispatch_async(assetQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __56__MKPhotoLibraryMigrator_photoLibraryDidInterruptAsset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained retry];
}

- (void)photoLibraryDidAddAsset:(id)asset identifier:(id)identifier
{
  assetCopy = asset;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  assetQueue = self->_assetQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__MKPhotoLibraryMigrator_photoLibraryDidAddAsset_identifier___block_invoke;
  v11[3] = &unk_2798DD000;
  objc_copyWeak(&v14, &location);
  v12 = identifierCopy;
  v13 = assetCopy;
  v9 = assetCopy;
  v10 = identifierCopy;
  dispatch_async(assetQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __61__MKPhotoLibraryMigrator_photoLibraryDidAddAsset_identifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained resetInterruptionCount];
  [WeakRetained photoLibraryDidSetIdentifier:*(a1 + 32) forAsset:*(a1 + 40)];
  [WeakRetained setIsBusy:0];
  [WeakRetained photoLibraryWillAddAsset];
}

- (void)photoLibraryDidSetIdentifier:(id)identifier forAsset:(id)asset
{
  identifierCopy = identifier;
  assetCopy = asset;
  if ([identifierCopy length])
  {
    [(MKMigrator *)self migratorDidImport];
    -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [assetCopy size]);
    collection = [assetCopy collection];
    v8 = [collection length];

    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_albumMigrator);
      [WeakRetained setIdentifier:identifierCopy forAsset:assetCopy];
    }
  }

  else
  {
    [(MKMigrator *)self migratorDidFailWithImportError:0];
  }

  [(MKPhotoLibraryAssetDatabase *)self->_db remove:assetCopy];
  delegate = [(MKMigrator *)self delegate];
  [delegate migratorDidExecuteOperation:self];
}

- (void)import
{
  [(MKPhotoLibrary *)self->_photoLibrary close];
  db = self->_db;
  self->_db = 0;

  v4.receiver = self;
  v4.super_class = MKPhotoLibraryMigrator;
  [(MKMigrator *)&v4 import];
}

- (void)addImportTime:(id)time
{
  v18 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v5 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v5);
  type = self->_type;
  if (type == 1)
  {
    payload = [v5 payload];
    videos = [payload videos];
  }

  else
  {
    if (type)
    {
      goto LABEL_7;
    }

    payload = [v5 payload];
    videos = [payload photos];
  }

  v9 = videos;

  if (v9)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:timeCopy];
    v12 = v11;

    v13 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v12];
    importElapsedTime = [v9 importElapsedTime];
    v15 = [importElapsedTime decimalNumberByAdding:v13];
    [v9 setImportElapsedTime:v15];

    goto LABEL_9;
  }

LABEL_7:
  v9 = +[MKLog log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v16 = self->_type;
    v17[0] = 67109120;
    v17[1] = v16;
    _os_log_impl(&dword_2592D2000, v9, OS_LOG_TYPE_INFO, "Not adding import time for unknown type: %ul", v17, 8u);
  }

LABEL_9:

  objc_sync_exit(v5);
}

- (BOOL)importAndWait
{
  asset = [(MKPhotoLibraryAssetDatabase *)self->_db asset];
  if (asset)
  {
    v4 = asset;
    do
    {
      v5 = 0;
      v9 = 1;
      do
      {
        if (v9 != 1 || v5 > 0xA)
        {
          break;
        }

        ++v5;
      }

      while (![(MKPhotoLibraryMigrator *)self importAssetAndWait:v4 retryNeeded:&v9]);
      [(MKPhotoLibraryAssetDatabase *)self->_db remove:v4];
      asset2 = [(MKPhotoLibraryAssetDatabase *)self->_db asset];

      v4 = asset2;
    }

    while (asset2);
  }

  return 1;
}

- (BOOL)importAssetAndWait:(id)wait retryNeeded:(BOOL *)needed
{
  v59 = *MEMORY[0x277D85DE8];
  waitCopy = wait;
  path = [waitCopy path];
  filename = [waitCopy filename];
  originalFilename = [waitCopy originalFilename];
  v7 = [waitCopy size];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v52 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__2;
  v45 = __Block_byref_object_dispose__2;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  v40 = 0;
  v8 = dispatch_semaphore_create(0);
  [(MKMigrator *)self migratorWillMeasureImport];
  photoLibrary = self->_photoLibrary;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __57__MKPhotoLibraryMigrator_importAssetAndWait_retryNeeded___block_invoke;
  v27[3] = &unk_2798DD028;
  v10 = path;
  v28 = v10;
  v30 = &v53;
  v31 = v51;
  v32 = &v47;
  v33 = &v41;
  v34 = &v35;
  v11 = v8;
  v29 = v11;
  [(MKPhotoLibrary *)photoLibrary addAsset:v10 filename:filename originalFilename:originalFilename size:v7 completion:v27];
  if ((v54[3] & 1) == 0)
  {
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }

  [(MKMigrator *)self migratorDidMeasureImport];
  v12 = *(v48 + 24);
  if (v12 == 1)
  {
    v13 = +[MKLog log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v58 = v10;
      _os_log_impl(&dword_2592D2000, v13, OS_LOG_TYPE_INFO, "will retry to import an asset. file=%@", buf, 0xCu);
    }

    *needed = 1;
  }

  else
  {
    if (v42[5])
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v15 = [defaultManager isDeletableFileAtPath:v10];

      if (v15)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v26 = 0;
        [defaultManager2 removeItemAtPath:v10 error:&v26];
        v17 = v26;

        if (v17)
        {
          v18 = +[MKLog log];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
          }
        }
      }
    }

    if ([v36[5] length])
    {
      [(MKMigrator *)self migratorDidImport];
      -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [waitCopy size]);
      collection = [waitCopy collection];
      v20 = [collection length] == 0;

      if (!v20)
      {
        WeakRetained = objc_loadWeakRetained(&self->_albumMigrator);
        [WeakRetained setIdentifier:v36[5] forAsset:waitCopy];
      }
    }

    else
    {
      [(MKMigrator *)self migratorDidFailWithImportError:0];
    }
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(v51, 8);
  _Block_object_dispose(&v53, 8);

  return v12 ^ 1;
}

void __57__MKPhotoLibraryMigrator_importAssetAndWait_retryNeeded___block_invoke(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = +[MKLog log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    v19[0] = 67109890;
    v19[1] = a2;
    v20 = 1024;
    v21 = a3;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_2592D2000, v11, OS_LOG_TYPE_INFO, "did import a media file. success=%d, interrupted=%d, file=%@, error=%@", v19, 0x22u);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  *(*(*(a1 + 56) + 8) + 24) = a2;
  *(*(*(a1 + 64) + 8) + 24) = a3;
  v13 = *(*(a1 + 72) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
  v15 = v10;

  v16 = *(*(a1 + 80) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v9;
  v18 = v9;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (MKPhotoLibraryAlbumMigrator)albumMigrator
{
  WeakRetained = objc_loadWeakRetained(&self->_albumMigrator);

  return WeakRetained;
}

@end