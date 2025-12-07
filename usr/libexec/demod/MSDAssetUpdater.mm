@interface MSDAssetUpdater
+ (BOOL)shouldIncludeGMAssetTypes;
+ (id)allAssetTypes;
+ (id)assetToString:(id)string;
+ (id)getAllGreyMatterAssetTypes;
+ (id)sharedInstance;
- (BOOL)assetsAvailable;
- (BOOL)checkSiriAssetsAvailable;
- (BOOL)downloadAssets:(id)assets withError:(id *)error;
- (BOOL)downloadAssetsWithError:(id *)error;
- (BOOL)downloadSiriAssetsWithError:(id *)error;
- (BOOL)handleSiriAssetsWithError:(id *)error;
- (BOOL)hasOnlyGMAssetTypes;
- (BOOL)queryAndDownloadAssetsWithForceGMAssetTypes:(BOOL)types withError:(id *)error;
- (BOOL)queryAndDownloadSiriAssetsWithError:(id *)error;
- (BOOL)timerShouldFire;
- (MSDAssetUpdater)initWithUAFConnection:(id)connection;
- (id)checkAssetAvailabilityWithQuery:(id)query;
- (id)runQueryWithAssetType:(id)type;
- (unint64_t)selectQueryInterval;
- (void)collectAllAssetTypes;
- (void)collectAllAssetTypesWithGM;
- (void)downloadAllAssetsWithCompletion:(id)completion;
- (void)queryAssets;
- (void)setAssetsAvailable:(BOOL)available;
- (void)startAssetQueryTimer;
- (void)stopAssetQueryTimer;
@end

@implementation MSDAssetUpdater

+ (id)sharedInstance
{
  if (qword_1001A5910 != -1)
  {
    sub_1000DCECC();
  }

  v3 = qword_1001A5908;

  return v3;
}

- (MSDAssetUpdater)initWithUAFConnection:(id)connection
{
  connectionCopy = connection;
  v5 = sub_100063A54(connectionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDAssetUpdater init", buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = MSDAssetUpdater;
  v6 = [(MSDAssetUpdater *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(MSDAssetUpdater *)v6 setUafConnection:connectionCopy];
    v8 = v7;
  }

  return v7;
}

- (unint64_t)selectQueryInterval
{
  device = [(MSDAssetUpdater *)self device];
  hubSuppliedSettings = [device hubSuppliedSettings];
  v4 = [hubSuppliedSettings objectForKey:@"AssetQueryInterval"];

  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 600;
  }

  return unsignedIntegerValue;
}

- (void)setAssetsAvailable:(BOOL)available
{
  v5 = [NSNumber numberWithBool:available];
  preferences = [(MSDAssetUpdater *)self preferences];
  [preferences setObject:v5 forKey:@"AssetsAvailable"];
}

- (BOOL)assetsAvailable
{
  preferences = [(MSDAssetUpdater *)self preferences];
  v3 = [preferences objectForKey:@"AssetsAvailable"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)queryAndDownloadAssetsWithForceGMAssetTypes:(BOOL)types withError:(id *)error
{
  typesCopy = types;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10007FA10;
  v28 = sub_10007FA20;
  v29 = 0;
  v7 = dispatch_semaphore_create(0);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  if (typesCopy)
  {
    [(MSDAssetUpdater *)self collectAllAssetTypesWithGM];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007FA28;
  v16[3] = &unk_10016B7A8;
  v18 = &v24;
  v19 = &v20;
  v8 = v7;
  v17 = v8;
  [(MSDAssetUpdater *)self downloadAllAssetsWithCompletion:v16];
  v9 = dispatch_time(0, 7200000000000);
  v10 = dispatch_semaphore_wait(v8, v9);
  if (v10)
  {
    v11 = sub_100063A54(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000DCEE0();
    }

    v12 = (v25 + 5);
    obj = v25[5];
    sub_1000C1390(&obj, 3727744775, @"Timed out while downloading support for Apple Intelligence");
    objc_storeStrong(v12, obj);
    *(v21 + 24) = 0;
  }

  if (error)
  {
    *error = v25[5];
  }

  [(MSDAssetUpdater *)self collectAllAssetTypes];
  v13 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v13;
}

- (BOOL)downloadAssetsWithError:(id *)error
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10007FA10;
  v27 = sub_10007FA20;
  v28 = 0;
  v5 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  uafConnection = [(MSDAssetUpdater *)self uafConnection];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007FCA8;
  v15[3] = &unk_10016B7A8;
  v17 = &v23;
  v18 = &v19;
  v7 = v5;
  v16 = v7;
  [uafConnection downloadAllAssetsFromUAFWithCompletion:v15];

  v8 = dispatch_time(0, 7200000000000);
  v9 = dispatch_semaphore_wait(v7, v8);
  if (v9)
  {
    v10 = sub_100063A54(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DCEE0();
    }

    v11 = (v24 + 5);
    obj = v24[5];
    sub_1000C1424(&obj, 3727744775, @"Timed out while downloading support for Apple Intelligence");
    objc_storeStrong(v11, obj);
    *(v20 + 24) = 0;
  }

  if (error)
  {
    *error = v24[5];
  }

  v12 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v12;
}

- (BOOL)handleSiriAssetsWithError:(id *)error
{
  v4 = [(MSDAssetUpdater *)self downloadSiriAssetsWithError:error];
  if (v4)
  {

    LOBYTE(v4) = [(MSDAssetUpdater *)self checkSiriAssetsAvailable];
  }

  return v4;
}

- (BOOL)downloadSiriAssetsWithError:(id *)error
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10007FA10;
  v27 = sub_10007FA20;
  v28 = 0;
  v5 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  uafConnection = [(MSDAssetUpdater *)self uafConnection];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007FFF8;
  v15[3] = &unk_10016B7D0;
  v7 = v5;
  v16 = v7;
  v17 = &v23;
  v18 = &v19;
  [uafConnection downloadSiriAssetsFromUAFWithCompletion:v15];

  v8 = dispatch_time(0, 7200000000000);
  v9 = dispatch_semaphore_wait(v7, v8);
  if (v9)
  {
    v10 = sub_100063A54(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DCF54();
    }

    v11 = (v24 + 5);
    obj = v24[5];
    sub_1000C1424(&obj, 3727744775, @"Timed out while downloading support for Siri.");
    objc_storeStrong(v11, obj);
    *(v20 + 24) = 0;
  }

  if (error)
  {
    *error = v24[5];
  }

  v12 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v12;
}

- (BOOL)checkSiriAssetsAvailable
{
  uafConnection = [(MSDAssetUpdater *)self uafConnection];
  checkSiriAssetsAvailable = [uafConnection checkSiriAssetsAvailable];

  return checkSiriAssetsAvailable;
}

- (BOOL)queryAndDownloadSiriAssetsWithError:(id *)error
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10007FA10;
  v36 = sub_10007FA20;
  v37 = 0;
  v5 = dispatch_semaphore_create(0);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  [(MSDAssetUpdater *)self collectAllAssetTypesWithGM];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  assetTypes = [(MSDAssetUpdater *)self assetTypes];
  v7 = [assetTypes countByEnumeratingWithState:&v24 objects:v38 count:16];
  if (v7)
  {
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(assetTypes);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if (([v10 hasPrefix:@"com.apple.MobileAsset.UAF.Siri"] & 1) == 0)
        {
          assetTypes2 = [(MSDAssetUpdater *)self assetTypes];
          [assetTypes2 removeObject:v10];
        }
      }

      v7 = [assetTypes countByEnumeratingWithState:&v24 objects:v38 count:16];
    }

    while (v7);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100080448;
  v20[3] = &unk_10016B7A8;
  v22 = &v32;
  v23 = &v28;
  v12 = v5;
  v21 = v12;
  [(MSDAssetUpdater *)self downloadAllAssetsWithCompletion:v20];
  v13 = dispatch_time(0, 7200000000000);
  v14 = dispatch_semaphore_wait(v12, v13);
  if (v14)
  {
    v15 = sub_100063A54(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000DCEE0();
    }

    v16 = (v33 + 5);
    obj = v33[5];
    sub_1000C1390(&obj, 3727744775, @"Timed out while downloading support for Apple Intelligence");
    objc_storeStrong(v16, obj);
    *(v29 + 24) = 0;
  }

  if (error)
  {
    *error = v33[5];
  }

  [(MSDAssetUpdater *)self collectAllAssetTypes];
  v17 = *(v29 + 24);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v17 & 1;
}

- (void)downloadAllAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(NSOperationQueue);
  [v5 setMaxConcurrentOperationCount:3];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10007FA10;
  v16[4] = sub_10007FA20;
  v17 = +[NSMutableArray array];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_10007FA10;
  v14[4] = sub_10007FA20;
  v15 = +[NSMutableArray array];
  assetUpdaterQueue = [(MSDAssetUpdater *)self assetUpdaterQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008069C;
  block[3] = &unk_10016B820;
  block[4] = self;
  v10 = v5;
  v12 = v14;
  v13 = v16;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = v5;
  dispatch_async(assetUpdaterQueue, block);

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
}

- (BOOL)downloadAssets:(id)assets withError:(id *)error
{
  errorCopy = error;
  assetsCopy = assets;
  dsema = dispatch_semaphore_create(0);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_10007FA10;
  v37 = sub_10007FA20;
  v38 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = assetsCopy;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v46 count:16];
  v6 = v5;
  if (v5)
  {
    v7 = *v30;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        v10 = sub_100063A54(v5);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          assetId = [v9 assetId];
          sub_1000DD0B8(assetId, buf, &v45, v10);
        }

        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100080FA0;
        v25[3] = &unk_10016B848;
        v25[4] = v9;
        v27 = &v33;
        v28 = &v39;
        v26 = dsema;
        [v9 startDownload:v25];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v5 = [obj countByEnumeratingWithState:&v29 objects:v46 count:16];
      v6 = v5;
    }

    while (v5);
  }

  v12 = -1;
  while ([obj count] > v12 + 1)
  {
    v13 = dispatch_time(0, 300000000000);
    v14 = dispatch_semaphore_wait(dsema, v13);
    ++v12;
    if (v14)
    {
      v15 = sub_100063A54(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [obj objectAtIndexedSubscript:v12];
        assetType = [v16 assetType];
        sub_1000DD114(assetType, v43, v15, v16);
      }

      v18 = (v34 + 5);
      v24 = v34[5];
      sub_1000C1424(&v24, 3727744775, @"Asset download timed out");
      objc_storeStrong(v18, v24);
      *(v40 + 24) = 0;
      break;
    }
  }

  if (errorCopy)
  {
    *errorCopy = v34[5];
  }

  v19 = *(v40 + 24);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  return v19 & 1;
}

+ (id)assetToString:(id)string
{
  stringCopy = string;
  attributes = [stringCopy attributes];
  v5 = [attributes objectForKey:@"AssetSpecifier"];
  assetId = [stringCopy assetId];
  attributes2 = [stringCopy attributes];

  v8 = [attributes2 objectForKey:@"_DownloadSize"];
  v9 = [NSString stringWithFormat:@"\tAssetSpecifier: %@\n\tAssetId: %@\n\tSize: %@", v5, assetId, v8];

  return v9;
}

- (void)collectAllAssetTypesWithGM
{
  [(MSDAssetUpdater *)self collectAllAssetTypes];
  if (!+[MSDAssetUpdater shouldIncludeGMAssetTypes])
  {
    assetTypes = [(MSDAssetUpdater *)self assetTypes];
    v3 = +[MSDAssetUpdater getAllGreyMatterAssetTypes];
    [assetTypes addObjectsFromArray:v3];
  }
}

- (void)collectAllAssetTypes
{
  assetTypes = [(MSDAssetUpdater *)self assetTypes];
  [assetTypes removeAllObjects];

  v4 = +[MSDAssetUpdater allAssetTypes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 isEqualToString:@"GreyMatterAssetTypes"];
        assetTypes2 = [(MSDAssetUpdater *)self assetTypes];
        v12 = assetTypes2;
        if (v10)
        {
          v13 = +[MSDAssetUpdater getAllGreyMatterAssetTypes];
          [v12 addObjectsFromArray:v13];
        }

        else
        {
          [assetTypes2 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

+ (id)allAssetTypes
{
  v2 = +[NSMutableArray array];
  v3 = +[MSDAssetUpdater shouldIncludeGMAssetTypes];
  if (v3)
  {
    v4 = sub_100063A54(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Including GreyMatter asset types!", v7, 2u);
    }

    [v2 addObject:@"GreyMatterAssetTypes"];
  }

  v5 = [NSArray arrayWithArray:v2];

  return v5;
}

+ (BOOL)shouldIncludeGMAssetTypes
{
  v2 = +[MSDGreyMatterHelper isOptedIn];
  if (v2)
  {
    v2 = +[MSDHubFeatureFlags enableAIModelAutoUpdate];
    if (v2)
    {
      return 1;
    }
  }

  v4 = sub_100063A54(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109376;
    v5[1] = +[MSDGreyMatterHelper isOptedIn];
    v6 = 1024;
    v7 = +[MSDHubFeatureFlags enableAIModelAutoUpdate];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GreyMatter is not opted in (%d) or feature flag for 'EnableAIModelAutoUpdate' is disabled (%d).", v5, 0xEu);
  }

  return 0;
}

- (BOOL)hasOnlyGMAssetTypes
{
  v2 = +[MSDAssetUpdater allAssetTypes];
  if ([v2 count] == 1)
  {
    v3 = [v2 containsObject:@"GreyMatterAssetTypes"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)getAllGreyMatterAssetTypes
{
  v2 = +[NSMutableArray array];
  v3 = +[NSFileManager defaultManager];
  v4 = [NSURL fileURLWithPath:@"/System/Library/UnifiedAssetFramework/AssetSets"];
  v35 = 0;
  v5 = [v3 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:&v35];
  v6 = v35;

  if (!v5)
  {
    obj = sub_100063A54(v7);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      sub_1000DD2CC(v6);
    }

    goto LABEL_23;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (!v8)
  {
LABEL_23:
    v10 = 0;
    v11 = 0;
    goto LABEL_24;
  }

  v9 = v8;
  v28 = v5;
  v10 = 0;
  v11 = 0;
  v12 = *v32;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      v14 = v6;
      v15 = v11;
      if (*v32 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v31 + 1) + 8 * i);
      v30 = v6;
      v11 = [NSDictionary dictionaryWithContentsOfURL:v16 error:&v30];
      v6 = v30;

      if (v11)
      {
        v18 = [v11 objectForKey:@"AutoAssetType"];

        v20 = sub_100063A54(v19);
        v21 = v20;
        if (v18)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v37 = v18;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Found asset type %{public}@", buf, 0xCu);
          }

          [v2 addObject:v18];
          v10 = v18;
        }

        else
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            path = [v16 path];
            *buf = 138543618;
            v37 = @"AutoAssetType";
            v38 = 2114;
            v39 = path;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "No %{public}@ key in plist at %{public}@", buf, 0x16u);
          }

          v10 = 0;
        }
      }

      else
      {
        v22 = sub_100063A54(v17);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          path2 = [v16 path];
          localizedDescription = [v6 localizedDescription];
          *buf = 138543618;
          v37 = path2;
          v38 = 2114;
          v39 = localizedDescription;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to read %{public}@ as a dictionary with error - %{public}@", buf, 0x16u);
        }
      }
    }

    v9 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  }

  while (v9);
  v5 = v28;
LABEL_24:

  v26 = v2;
  return v2;
}

- (BOOL)timerShouldFire
{
  v3 = +[NSMutableString string];
  [(MSDAssetUpdater *)self hasOnlyGMAssetTypes];
  v4 = +[MSDAssetUpdater allAssetTypes];
  v5 = v4 != 0;

  if (!v4)
  {
    [v3 appendString:@"\nNo asset types to update."];
  }

  if ([(MSDAssetUpdater *)self assetsAvailable])
  {
    [v3 appendString:@"\nAssets already indicated available for updates."];
    v5 = 0;
  }

  device = [(MSDAssetUpdater *)self device];
  mode = [device mode];

  if (mode == 5)
  {
    if (v5)
    {
      v9 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v8 = [v3 appendString:@"\nDevice is not in demo mode."];
  }

  v10 = sub_100063A54(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Timer should not fire. Reasons:%{public}@\nEnd of reasons.", &v12, 0xCu);
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (void)startAssetQueryTimer
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Requested start asset query timer", buf, 2u);
  }

  timerShouldFire = [(MSDAssetUpdater *)self timerShouldFire];
  v5 = timerShouldFire;
  v6 = sub_100063A54(timerShouldFire);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      queryInterval = [(MSDAssetUpdater *)self queryInterval];
      *buf = 134217984;
      v12 = queryInterval;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting asset query timer with interval %lu.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100081C8C;
    block[3] = &unk_100169C78;
    objc_copyWeak(&v10, buf);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not starting asset query timer.", buf, 2u);
    }
  }
}

- (void)stopAssetQueryTimer
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping asset query timer.", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081E78;
  block[3] = &unk_100169C78;
  objc_copyWeak(&v5, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)queryAssets
{
  assetUpdaterQueue = [(MSDAssetUpdater *)self assetUpdaterQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081FB4;
  block[3] = &unk_100169B70;
  block[4] = self;
  dispatch_async(assetUpdaterQueue, block);
}

- (id)runQueryWithAssetType:(id)type
{
  typeCopy = type;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [[MAAssetQuery alloc] initWithType:typeCopy];
  v7 = MGCopyAnswer();
  [v6 addKeyValuePair:@"SupportedDevices" with:v7];

  v9 = sub_100063A54(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = typeCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Running catalog download for asset type %{public}@", buf, 0xCu);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100082600;
  v19[3] = &unk_10016B870;
  v10 = typeCopy;
  v20 = v10;
  v22 = &v23;
  v11 = v5;
  v21 = v11;
  [MAAsset startCatalogDownload:v10 then:v19];
  v12 = dispatch_time(0, 30000000000);
  v13 = dispatch_semaphore_wait(v11, v12);
  if (*(v24 + 24) != 1 || v13)
  {
    v17 = sub_100063A54(v13);
    sub_1000DD480(v17, v10, buf);
LABEL_13:

    v15 = 0;
    goto LABEL_8;
  }

  v14 = sub_100063A54(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Running query for asset type %{public}@", buf, 0xCu);
  }

  v15 = [(MSDAssetUpdater *)self checkAssetAvailabilityWithQuery:v6];
  if (!v15)
  {
    v18 = sub_100063A54(0);
    sub_1000DD538(v18, buf);
    goto LABEL_13;
  }

LABEL_8:

  _Block_object_dispose(&v23, 8);

  return v15;
}

- (id)checkAssetAvailabilityWithQuery:(id)query
{
  queryCopy = query;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10007FA10;
  v23 = sub_10007FA20;
  v24 = +[NSMutableArray array];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000828C8;
  v14 = &unk_10016B898;
  v17 = &v25;
  v5 = dispatch_semaphore_create(0);
  v15 = v5;
  v6 = queryCopy;
  v16 = v6;
  v18 = &v19;
  [v6 queryMetaData:&v11];
  if ([v20[5] count])
  {
    [(MSDAssetUpdater *)self setAssetsAvailable:1];
  }

  v7 = dispatch_time(0, 30000000000);
  v8 = dispatch_semaphore_wait(v5, v7);
  v9 = 0;
  if (*(v26 + 24) == 1 && !v8)
  {
    v9 = [NSArray arrayWithArray:v20[5]];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v9;
}

@end