@interface FMDAssetRegistry
+ (id)defaultStorageLocation;
+ (id)deprecatedStorageLocation;
- (FMDAssetRegistry)initWithStorageLocation:(id)location identifier:(id)identifier;
- (NSDictionary)assetsByURL;
- (id)assetForURL:(id)l;
- (id)generateAssetURL;
- (id)newAssetForURL:(id)l type:(unint64_t)type;
- (id)newAssetWithDictionary:(id)dictionary;
- (id)registryFileURL;
- (void)_removeUntrackedAssets:(id)assets;
- (void)clearAssetRegistry;
- (void)downloadAssets:(id)assets;
- (void)removeUntrackedAssets:(id)assets;
- (void)resumeBackgroundAssetDownloads:(id)downloads;
- (void)saveAssetMetadata:(id)metadata;
- (void)storeAsset:(id)asset fromLocation:(id)location;
@end

@implementation FMDAssetRegistry

- (FMDAssetRegistry)initWithStorageLocation:(id)location identifier:(id)identifier
{
  locationCopy = location;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = FMDAssetRegistry;
  v8 = [(FMDAssetRegistry *)&v22 init];
  v9 = v8;
  if (v8)
  {
    [(FMDAssetRegistry *)v8 setStoreIdentifier:identifierCopy];
    [(FMDAssetRegistry *)v9 setBaseStoragePath:locationCopy];
    v10 = [FMDataArchiver alloc];
    registryFileURL = [(FMDAssetRegistry *)v9 registryFileURL];
    v12 = [v10 initWithFileURL:registryFileURL];
    [(FMDAssetRegistry *)v9 setDataArchiver:v12];

    dataArchiver = [(FMDAssetRegistry *)v9 dataArchiver];
    [dataArchiver setDataProtectionClass:4];

    dataArchiver2 = [(FMDAssetRegistry *)v9 dataArchiver];
    [dataArchiver2 setBackedUp:0];

    dataArchiver3 = [(FMDAssetRegistry *)v9 dataArchiver];
    [dataArchiver3 setCreateDirectories:1];

    v16 = dispatch_queue_create("com.apple.icloud.findmydeviced.FMDAssetRegistry.serialqueue", 0);
    [(FMDAssetRegistry *)v9 setSerialQueue:v16];

    v17 = objc_alloc_init(FMDBackgroundServerChannel);
    v18 = [FMDServerInteractionController alloc];
    v23 = v17;
    v19 = [NSArray arrayWithObjects:&v23 count:1];
    v20 = [(FMDServerInteractionController *)v18 initWithChannels:v19 delegate:0];
    [(FMDAssetRegistry *)v9 setServerInteractionController:v20];

    [(FMDAssetRegistry *)v9 resumeBackgroundAssetDownloads:v17];
  }

  return v9;
}

+ (id)defaultStorageLocation
{
  v2 = objc_alloc_init(FMInternalFileContainer);
  v3 = [v2 url];
  v4 = [v3 URLByAppendingPathComponent:@"Caches/com.apple.icloud.findmydeviced.FMDAssetRegistry" isDirectory:1];

  return v4;
}

+ (id)deprecatedStorageLocation
{
  v2 = [FMSharedFileContainer alloc];
  v3 = [v2 initWithIdentifier:off_100312B70];
  v4 = [v3 url];
  v5 = [v4 URLByAppendingPathComponent:@"Caches/com.apple.icloud.findmydeviced.FMDAssetRegistry" isDirectory:1];

  return v5;
}

- (void)storeAsset:(id)asset fromLocation:(id)location
{
  assetCopy = asset;
  locationCopy = location;
  v8 = +[NSFileManager defaultManager];
  fileURL = [assetCopy fileURL];
  v20 = 0;
  v10 = [v8 copyItemAtURL:locationCopy toURL:fileURL error:&v20];

  v11 = v20;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    fileURL2 = [assetCopy fileURL];
    v16 = [NSNumber numberWithBool:1];
    v19 = 0;
    [fileURL2 setResourceValue:v16 forKey:NSURLIsExcludedFromBackupKey error:&v19];
    v14 = v19;

    if (v14)
    {
      v18 = sub_100002880(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10022CF3C(assetCopy);
      }
    }

    [(FMDAssetRegistry *)self saveAssetMetadata:assetCopy];
  }

  else
  {
    v14 = sub_100002880(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10022CE8C(v11);
    }
  }
}

- (id)assetForURL:(id)l
{
  lCopy = l;
  assetsByURL = [(FMDAssetRegistry *)self assetsByURL];
  v6 = [assetsByURL objectForKeyedSubscript:lCopy];

  return v6;
}

- (id)newAssetWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"url"];
  v6 = [NSURL URLWithString:v5];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"type"];

  v8 = [(FMDAssetRegistry *)self newAssetForURL:v6 type:[(FMDAssetRegistry *)self assetTypeForString:v7]];
  return v8;
}

- (void)removeUntrackedAssets:(id)assets
{
  assetsCopy = assets;
  objc_initWeak(&location, self);
  serialQueue = [(FMDAssetRegistry *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AB2C8;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = assetsCopy;
  v6 = assetsCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)clearAssetRegistry
{
  serialQueue = [(FMDAssetRegistry *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AB3A0;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (id)newAssetForURL:(id)l type:(unint64_t)type
{
  lCopy = l;
  v7 = [(FMDAssetRegistry *)self assetForURL:lCopy];
  if (!v7)
  {
    v8 = [FMDStandardAsset alloc];
    generateAssetURL = [(FMDAssetRegistry *)self generateAssetURL];
    v7 = [(FMDStandardAsset *)v8 initWithFileURL:generateAssetURL lastModified:0 etag:0 type:type url:lCopy];
  }

  return v7;
}

- (void)_removeUntrackedAssets:(id)assets
{
  assetsCopy = assets;
  selfCopy = self;
  v35 = [(NSDictionary *)self->_assetsByURL copy];
  v5 = +[NSMutableArray array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = assetsCopy;
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v41 + 1) + 8 * i) url];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v8);
  }

  v33 = v6;

  v34 = +[NSMutableArray array];
  allKeys = [v35 allKeys];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = [allKeys countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v37 + 1) + 8 * j);
        if (([v5 containsObject:v17] & 1) == 0)
        {
          v18 = [v35 objectForKeyedSubscript:v17];
          v19 = +[NSFileManager defaultManager];
          fileURL = [v18 fileURL];
          v36 = 0;
          [v19 removeItemAtURL:fileURL error:&v36];
          v21 = v36;

          if (v21)
          {
            fm_isFileNotFoundError = [v21 fm_isFileNotFoundError];
            if ((fm_isFileNotFoundError & 1) == 0)
            {
              v23 = sub_100002880(fm_isFileNotFoundError);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                code = [v21 code];
                *buf = 138412546;
                v46 = v21;
                v47 = 2048;
                v48 = code;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not delete the file %@ %li", buf, 0x16u);
              }
            }
          }

          else
          {
            [v34 addObject:v17];
          }
        }
      }

      v14 = [allKeys countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v14);
  }

  v25 = [v35 mutableCopy];
  [(NSDictionary *)v25 removeObjectsForKeys:v34];
  assetsByURL = selfCopy->_assetsByURL;
  selfCopy->_assetsByURL = v25;
  v27 = v25;

  dataArchiver = [(FMDAssetRegistry *)selfCopy dataArchiver];
  v29 = [dataArchiver saveDictionary:v27];

  if (v29)
  {
    v31 = sub_100002880(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10022A040();
    }
  }
}

- (void)saveAssetMetadata:(id)metadata
{
  metadataCopy = metadata;
  objc_initWeak(&location, self);
  serialQueue = [(FMDAssetRegistry *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AB9F4;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = metadataCopy;
  v6 = metadataCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (NSDictionary)assetsByURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AB04;
  v11 = sub_100002B4C;
  v12 = 0;
  serialQueue = [(FMDAssetRegistry *)self serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001ABBEC;
  v6[3] = &unk_1002CD260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)registryFileURL
{
  storeIdentifier = [(FMDAssetRegistry *)self storeIdentifier];
  if (storeIdentifier)
  {
    storeIdentifier2 = [(FMDAssetRegistry *)self storeIdentifier];
    v5 = [NSString stringWithFormat:@".%@", storeIdentifier2];
  }

  else
  {
    v5 = &stru_1002DCE08;
  }

  v6 = [NSString stringWithFormat:@"com.apple.icloud.findmydeviced.FMDAssetRegistry%@.plist", v5];
  baseStoragePath = [(FMDAssetRegistry *)self baseStoragePath];
  v8 = [baseStoragePath URLByAppendingPathComponent:v6 isDirectory:0];

  return v8;
}

- (id)generateAssetURL
{
  v3 = +[NSUUID UUID];
  uUIDString = [v3 UUIDString];

  baseStoragePath = [(FMDAssetRegistry *)self baseStoragePath];
  v6 = [baseStoragePath URLByAppendingPathComponent:uUIDString isDirectory:0];

  return v6;
}

- (void)downloadAssets:(id)assets
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001ABF88;
  v3[3] = &unk_1002D0718;
  v3[4] = self;
  [assets enumerateObjectsUsingBlock:v3];
}

- (void)resumeBackgroundAssetDownloads:(id)downloads
{
  downloadsCopy = downloads;
  xpc_set_event_stream_handler("com.apple.nsurlsessiond-events", &_dispatch_main_q, &stru_1002D0758);
  [downloadsCopy resumeBackgroundTasks];
}

@end