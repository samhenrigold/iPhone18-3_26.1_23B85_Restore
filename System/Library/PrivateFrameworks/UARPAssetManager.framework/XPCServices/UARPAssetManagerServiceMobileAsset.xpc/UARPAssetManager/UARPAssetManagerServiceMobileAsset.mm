@interface UARPAssetManagerServiceMobileAsset
- (BOOL)isBusy;
- (BOOL)saveSubscriptionAndCheckIfRunnable:(id)runnable asyncUpdate:(BOOL)update;
- (UARPAssetManagerServiceMobileAsset)initWithDelegate:(id)delegate;
- (id)buildAssetTypeForSubscription:(id)subscription;
- (id)checkCacheForSubscription:(id)subscription;
- (id)copyCache;
- (id)copySubscriptions;
- (void)checkForUpdate;
- (void)clearAssetCacheForDomain:(id)domain;
- (void)downloadAssetForSubscription:(id)subscription asyncUpdate:(BOOL)update;
- (void)handleFirmwareAssetQueryCompletion:(id)completion forSubscription:(id)subscription result:(int64_t)result asyncUpdate:(BOOL)update;
- (void)handleMobileAssetDownloadCompletion:(id)completion withSubscription:(id)subscription result:(int64_t)result asyncUpdate:(BOOL)update;
- (void)notifyFirmwareUpdateAvailability:(id)availability cacheRecord:(id)record asyncUpdate:(BOOL)update;
- (void)overrideMobileAssetURL:(id)l forAssetType:(id)type;
- (void)overridePallasAudience:(id)audience forAssetType:(id)type;
- (void)performDownloadForAsset:(id)asset withSubscription:(id)subscription asyncUpdate:(BOOL)update;
- (void)performQuery:(id)query assetType:(id)type asyncUpdate:(BOOL)update;
- (void)primeCacheForSubscription:(id)subscription assetVersion:(id)version filePath:(id)path;
- (void)removeSubscriptionAndKickOffNextRunnable:(id)runnable asyncUpdate:(BOOL)update;
- (void)subscribeForAsset:(id)asset;
@end

@implementation UARPAssetManagerServiceMobileAsset

- (UARPAssetManagerServiceMobileAsset)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = UARPAssetManagerServiceMobileAsset;
  v6 = [(UARPAssetManagerServiceMobileAsset *)&v18 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.accessoryupdater.UARPAssetManagerServiceMA.queue", 0);
    serviceQueue = v6->_serviceQueue;
    v6->_serviceQueue = v7;

    v9 = os_log_create("com.apple.uarpassetmanager.uarp", "assetManagerService");
    log = v6->_log;
    v6->_log = v9;

    v11 = objc_alloc_init(UARPAssetManagerServiceMobileAssetCache);
    assetCache = v6->_assetCache;
    v6->_assetCache = &v11->super;

    objc_storeStrong(&v6->_delegate, delegate);
    v13 = objc_opt_new();
    outstandingAssetSubscriptions = v6->_outstandingAssetSubscriptions;
    v6->_outstandingAssetSubscriptions = v13;

    v15 = objc_opt_new();
    outstandingAsyncAssetSubscriptions = v6->_outstandingAsyncAssetSubscriptions;
    v6->_outstandingAsyncAssetSubscriptions = v15;
  }

  return v6;
}

- (BOOL)isBusy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceQueue = self->_serviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002264;
  v5[3] = &unk_100014360;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serviceQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)buildAssetTypeForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  appleModelNumber = [subscriptionCopy appleModelNumber];
  v6 = mobileAssetPrefixForAppleModelNumber(appleModelNumber);

  appleModelNumber2 = [subscriptionCopy appleModelNumber];
  v8 = [NSMutableString stringWithFormat:@"%@%@", v6, appleModelNumber2];

  hwFusing = [subscriptionCopy hwFusing];
  if (hwFusing)
  {
    v10 = hwFusing;
    softwareUpdateAsset = [subscriptionCopy softwareUpdateAsset];

    if ((softwareUpdateAsset & 1) == 0)
    {
      hwFusing2 = [subscriptionCopy hwFusing];
      v13 = [hwFusing2 caseInsensitiveCompare:@"prod"];

      if (v13)
      {
        v14 = self->_log;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          hwFusing3 = [subscriptionCopy hwFusing];
          assetAudience = [subscriptionCopy assetAudience];
          if (assetAudience)
          {
            [subscriptionCopy assetAudience];
          }

          else
          {
            [subscriptionCopy assetURL];
          }
          v17 = ;
          *buf = 138412802;
          v21 = hwFusing3;
          v22 = 2112;
          v23 = v8;
          v24 = 2112;
          v25 = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Appending hwFusingType:%@ to assetType:%@ at location:%@", buf, 0x20u);
        }

        hwFusing4 = [subscriptionCopy hwFusing];
        [v8 appendFormat:@"-%@", hwFusing4];
      }
    }
  }

  return v8;
}

- (void)removeSubscriptionAndKickOffNextRunnable:(id)runnable asyncUpdate:(BOOL)update
{
  updateCopy = update;
  runnableCopy = runnable;
  v7 = self->_outstandingAssetSubscriptions;
  if (updateCopy)
  {
    v8 = self->_outstandingAsyncAssetSubscriptions;

    v7 = v8;
  }

  v9 = [(UARPAssetManagerServiceMobileAsset *)self buildAssetTypeForSubscription:runnableCopy];
  [(NSMutableSet *)v7 removeObject:runnableCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v7;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v12 = v10;
  if (v11)
  {
    v13 = v11;
    v14 = *v19;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v18 + 1) + 8 * v15);
      v17 = [(UARPAssetManagerServiceMobileAsset *)self buildAssetTypeForSubscription:v16, v18];
      if ([v9 isEqualToString:v17])
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v13)
        {
          goto LABEL_5;
        }

        v12 = v10;
        goto LABEL_16;
      }
    }

    v12 = v16;

    if (!v12)
    {
      goto LABEL_17;
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10000B698();
    }

    [(UARPAssetManagerServiceMobileAsset *)self downloadAssetForSubscription:v12 asyncUpdate:updateCopy];
  }

LABEL_16:

LABEL_17:
}

- (BOOL)saveSubscriptionAndCheckIfRunnable:(id)runnable asyncUpdate:(BOOL)update
{
  updateCopy = update;
  runnableCopy = runnable;
  v7 = self->_outstandingAssetSubscriptions;
  if (updateCopy)
  {
    v8 = self->_outstandingAsyncAssetSubscriptions;

    v7 = v8;
  }

  v9 = [(UARPAssetManagerServiceMobileAsset *)self buildAssetTypeForSubscription:runnableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v7;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(UARPAssetManagerServiceMobileAsset *)self buildAssetTypeForSubscription:*(*(&v19 + 1) + 8 * i), v19];
        v16 = [v9 isEqualToString:v15];

        if (v16)
        {
          v17 = 0;
          goto LABEL_13;
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_13:

  [(NSMutableSet *)v10 addObject:runnableCopy];
  return v17;
}

- (void)checkForUpdate
{
  serviceQueue = self->_serviceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002860;
  block[3] = &unk_100014388;
  block[4] = self;
  dispatch_sync(serviceQueue, block);
}

- (void)subscribeForAsset:(id)asset
{
  assetCopy = asset;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002A9C;
  v7[3] = &unk_1000143B0;
  v8 = assetCopy;
  selfCopy = self;
  v6 = assetCopy;
  dispatch_sync(serviceQueue, v7);
}

- (id)checkCacheForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100002E5C;
  v16 = sub_100002E6C;
  v17 = 0;
  serviceQueue = self->_serviceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002E74;
  block[3] = &unk_1000143D8;
  v10 = subscriptionCopy;
  v11 = &v12;
  block[4] = self;
  v6 = subscriptionCopy;
  dispatch_sync(serviceQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)copyCache
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100002E5C;
  v10 = sub_100002E6C;
  v11 = 0;
  serviceQueue = self->_serviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002FA4;
  v5[3] = &unk_100014360;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serviceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)copySubscriptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100002E5C;
  v10 = sub_100002E6C;
  v11 = 0;
  serviceQueue = self->_serviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000030D0;
  v5[3] = &unk_100014360;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serviceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)clearAssetCacheForDomain:(id)domain
{
  domainCopy = domain;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000031B4;
  v7[3] = &unk_1000143B0;
  v7[4] = self;
  v8 = domainCopy;
  v6 = domainCopy;
  dispatch_sync(serviceQueue, v7);
}

- (void)primeCacheForSubscription:(id)subscription assetVersion:(id)version filePath:(id)path
{
  subscriptionCopy = subscription;
  versionCopy = version;
  pathCopy = path;
  v11 = [(UARPAssetManagerServiceAssetCache *)self->_assetCache subscribeForAsset:subscriptionCopy];
  if (v11)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412546;
      v27 = v11;
      v28 = 2112;
      v29 = versionCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Overwriting cache record %@ with version %@", &v26, 0x16u);
    }
  }

  v13 = self->_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v26 = 138412802;
    v27 = versionCopy;
    v28 = 2112;
    v29 = pathCopy;
    v30 = 2112;
    v31 = subscriptionCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Moving Firmware File %@ / %@ from MobileAsset to UARP Cache for subscription:%@", &v26, 0x20u);
  }

  v14 = subscriptionCopy;
  v15 = [(UARPAssetManagerServiceAssetCache *)self->_assetCache assetCacheFileURLForAsset:versionCopy withSubscription:v14];
  path = [v15 path];
  v17 = copyFileToLocalPath(pathCopy, path);

  if (v17)
  {
    if ([v14 softwareUpdateAsset])
    {
      lastPathComponent = [pathCopy lastPathComponent];
      v19 = [v15 URLByAppendingPathComponent:lastPathComponent];

      v15 = v19;
    }

    path2 = [v15 path];
    if (([v14 softwareUpdateAsset] & 1) == 0)
    {
      lastPathComponent2 = [pathCopy lastPathComponent];
      path3 = [v15 path];
      v23 = [path3 stringByAppendingPathComponent:lastPathComponent2];

      path2 = v23;
    }

    v24 = [(UARPAssetManagerServiceAssetCache *)self->_assetCache updateSubscription:v14 forAsset:versionCopy withPath:path2];

    v25 = self->_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = 138412546;
      v27 = v24;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Notify available record %@ for subscription %@", &v26, 0x16u);
    }

    [(UARPAssetManagerServiceMobileAsset *)self notifyFirmwareUpdateAvailability:v14 cacheRecord:v24 asyncUpdate:0];

    v11 = v24;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10000B81C();
    }

    [(UARPAssetManagerServiceMobileAsset *)self notifyFirmwareUpdateAvailability:v14 cacheRecord:0 asyncUpdate:0];
  }
}

- (void)downloadAssetForSubscription:(id)subscription asyncUpdate:(BOOL)update
{
  updateCopy = update;
  subscriptionCopy = subscription;
  v7 = [(UARPAssetManagerServiceMobileAsset *)self buildAssetTypeForSubscription:subscriptionCopy];
  assetAudience = [subscriptionCopy assetAudience];

  if (assetAudience)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v10 = log;
      assetAudience2 = [subscriptionCopy assetAudience];
      v18 = 138543618;
      v19 = assetAudience2;
      v20 = 2114;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Pointing Pallas to %{public}@ for assetType: %{public}@", &v18, 0x16u);
    }

    assetAudience3 = [subscriptionCopy assetAudience];
    [(UARPAssetManagerServiceMobileAsset *)self overridePallasAudience:assetAudience3 forAssetType:v7];
LABEL_9:

    goto LABEL_10;
  }

  assetURL = [subscriptionCopy assetURL];

  v14 = self->_log;
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (assetURL)
  {
    if (v15)
    {
      v16 = v14;
      assetURL2 = [subscriptionCopy assetURL];
      v18 = 138543618;
      v19 = assetURL2;
      v20 = 2114;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Pointing MobileAsset URL to %{public}@ for assetType: %{public}@", &v18, 0x16u);
    }

    assetAudience3 = [subscriptionCopy assetURL];
    [(UARPAssetManagerServiceMobileAsset *)self overrideMobileAssetURL:assetAudience3 forAssetType:v7];
    goto LABEL_9;
  }

  if (v15)
  {
    v18 = 138543362;
    v19 = subscriptionCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Using default asset location for subscription: %{public}@", &v18, 0xCu);
  }

LABEL_10:
  [(UARPAssetManagerServiceMobileAsset *)self performQuery:subscriptionCopy assetType:v7 asyncUpdate:updateCopy];
}

- (void)overrideMobileAssetURL:(id)l forAssetType:(id)type
{
  lCopy = l;
  typeCopy = type;
  if (MASetPallasEnabled() && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10000B884();
  }

  ASSetAssetServerURLForAssetType();
}

- (void)overridePallasAudience:(id)audience forAssetType:(id)type
{
  audienceCopy = audience;
  typeCopy = type;
  if (MASetPallasEnabled() && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10000B8F8();
  }

  v8 = MASetPallasAudienceForType();
  if (v8)
  {
    v9 = v8;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315906;
      v12 = "[UARPAssetManagerServiceMobileAsset overridePallasAudience:forAssetType:]";
      v13 = 2114;
      v14 = typeCopy;
      v15 = 2114;
      v16 = audienceCopy;
      v17 = 2050;
      v18 = v9;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to update asset type %{public}@ to: %{public}@ with result: %{public}lld", &v11, 0x2Au);
    }
  }
}

- (void)performQuery:(id)query assetType:(id)type asyncUpdate:(BOOL)update
{
  queryCopy = query;
  typeCopy = type;
  v10 = [[MAAssetQuery alloc] initWithType:typeCopy];
  v11 = objc_alloc_init(MADownloadOptions);
  assetAudience = [queryCopy assetAudience];
  [v11 setLiveServerCatalogOnly:assetAudience != 0];

  [v11 setLiveServerCatalogOnlyIsOverridden:1];
  [v11 setDiscretionary:0];
  [v11 setAllowsCellularAccess:allowConditionalDownloadOnCellular()];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003A54;
  v15[3] = &unk_100014428;
  v15[4] = self;
  v16 = queryCopy;
  v17 = v10;
  updateCopy = update;
  v13 = v10;
  v14 = queryCopy;
  [MAAsset startCatalogDownload:typeCopy options:v11 then:v15];
}

- (void)handleFirmwareAssetQueryCompletion:(id)completion forSubscription:(id)subscription result:(int64_t)result asyncUpdate:(BOOL)update
{
  updateCopy = update;
  completionCopy = completion;
  subscriptionCopy = subscription;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    resultCopy = result;
    v41 = 2114;
    v42 = subscriptionCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "MobileAsset query status:%{public}ld for subscription:%{public}@", buf, 0x16u);
  }

  [(UARPAssetManagerServiceMobileAsset *)self removeSubscriptionAndKickOffNextRunnable:subscriptionCopy asyncUpdate:updateCopy];
  if (!result)
  {
    results = [completionCopy results];
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      resultCopy = subscriptionCopy;
      v41 = 2114;
      v42 = results;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "MobileAsset query response for subscription:%{public}@ assets:%{public}@", buf, 0x16u);
    }

    if (results)
    {
      if ([subscriptionCopy softwareUpdateAsset])
      {
        softwareUpdateAssetWithMaxVersion(results, [subscriptionCopy internalAsset]);
      }

      else
      {
        assetWithMaxVersion(results);
      }
      v15 = ;
      if (v15)
      {
        v16 = [(UARPAssetManagerServiceAssetCache *)self->_assetCache assetCacheFileURLForAsset:v15 withSubscription:subscriptionCopy];
        if (v16)
        {
          v17 = +[NSFileManager defaultManager];
          path = [v16 path];
          v19 = [v17 contentsOfDirectoryAtPath:path error:0];

          if (([subscriptionCopy softwareUpdateAsset] & 1) != 0 || objc_msgSend(v19, "count") == 1)
          {
            v20 = v16;
            if (([subscriptionCopy softwareUpdateAsset] & 1) == 0)
            {
              [v19 objectAtIndexedSubscript:0];
              v37 = v19;
              v22 = v21 = v16;
              v23 = [v20 URLByAppendingPathComponent:v22];

              v16 = v21;
              v19 = v37;
              v20 = v23;
            }

            if ([v20 checkResourceIsReachableAndReturnError:0])
            {
              v35 = v16;
              v24 = [(UARPAssetManagerServiceAssetCache *)self->_assetCache cacheRecordForSubscription:subscriptionCopy];
              assetCache = self->_assetCache;
              v38 = v20;
              path2 = [v20 path];
              v27 = [(UARPAssetManagerServiceAssetCache *)assetCache createCacheRecordForAsset:v15 withSubscription:subscriptionCopy withPath:path2];

              v36 = v27;
              LODWORD(v27) = [v27 isEqual:v24];
              v28 = self->_log;
              v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
              if (v27)
              {
                if (v29)
                {
                  *buf = 138412290;
                  resultCopy = v24;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Subscription already has latest record in cache %@", buf, 0xCu);
                }

                v30 = v36;
                v31 = v36;
              }

              else
              {
                if (v29)
                {
                  *buf = 138412546;
                  resultCopy = subscriptionCopy;
                  v41 = 2112;
                  v42 = v36;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Updating subscription %@ with already downloaded record in cache %@", buf, 0x16u);
                }

                v33 = self->_assetCache;
                path3 = [v38 path];
                v31 = [(UARPAssetManagerServiceAssetCache *)v33 updateSubscription:subscriptionCopy forAsset:v15 withPath:path3];

                v30 = v36;
              }

              [(UARPAssetManagerServiceMobileAsset *)self notifyFirmwareUpdateAvailability:subscriptionCopy cacheRecord:v31 asyncUpdate:updateCopy];

              v16 = v35;
LABEL_34:

              goto LABEL_35;
            }
          }
        }

        v19 = getAssetVersionForMAAsset(v15);
        v32 = self->_log;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          resultCopy = v19;
          v41 = 2114;
          v42 = subscriptionCopy;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Firmware Version %{public}@ available on MobileAsset for subscription:%{public}@", buf, 0x16u);
        }

        [(UARPAssetManagerServiceMobileAsset *)self performDownloadForAsset:v15 withSubscription:subscriptionCopy asyncUpdate:updateCopy];
        goto LABEL_34;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10000B96C();
      }
    }

    [(UARPAssetManagerServiceMobileAsset *)self notifyFirmwareUpdateAvailability:subscriptionCopy cacheRecord:0 asyncUpdate:updateCopy];
LABEL_35:

    goto LABEL_36;
  }

  [(UARPAssetManagerServiceMobileAsset *)self notifyFirmwareUpdateAvailability:subscriptionCopy cacheRecord:0 asyncUpdate:updateCopy];
LABEL_36:
}

- (void)performDownloadForAsset:(id)asset withSubscription:(id)subscription asyncUpdate:(BOOL)update
{
  updateCopy = update;
  assetCopy = asset;
  subscriptionCopy = subscription;
  state = [assetCopy state];
  if (state == 1 || state == 4)
  {
    v15 = objc_alloc_init(MADownloadOptions);
    [v15 setDiscretionary:0];
    [v15 setAllowsCellularAccess:allowConditionalDownloadOnCellular()];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000438C;
    v17[3] = &unk_100014428;
    v17[4] = self;
    v18 = assetCopy;
    v19 = subscriptionCopy;
    v20 = updateCopy;
    [v18 startDownload:v15 then:v17];
  }

  else
  {
    if (state == 2)
    {
      selfCopy2 = self;
      v12 = assetCopy;
      v13 = subscriptionCopy;
      v14 = 0;
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_10000B9D4(log, assetCopy);
      }

      selfCopy2 = self;
      v12 = assetCopy;
      v13 = subscriptionCopy;
      v14 = 3;
    }

    [(UARPAssetManagerServiceMobileAsset *)selfCopy2 handleMobileAssetDownloadCompletion:v12 withSubscription:v13 result:v14 asyncUpdate:updateCopy];
  }
}

- (void)handleMobileAssetDownloadCompletion:(id)completion withSubscription:(id)subscription result:(int64_t)result asyncUpdate:(BOOL)update
{
  updateCopy = update;
  completionCopy = completion;
  subscriptionCopy = subscription;
  if (result)
  {
    v12 = [(UARPAssetManagerServiceAssetCache *)self->_assetCache updateSubscription:subscriptionCopy forAsset:completionCopy withPath:0];
    [(UARPAssetManagerServiceMobileAsset *)self notifyFirmwareUpdateAvailability:subscriptionCopy cacheRecord:0 asyncUpdate:updateCopy];
  }

  v13 = [(UARPAssetManagerServiceMobileAsset *)self getBundleForAsset:completionCopy];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForInfoDictionaryKey:@"FirmwareImageFile"];
    stringByDeletingPathExtension = [v15 stringByDeletingPathExtension];
    pathExtension = [v15 pathExtension];
    path = [v14 pathForResource:stringByDeletingPathExtension ofType:pathExtension];

    if (!path)
    {
      v48 = updateCopy;
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v51 = v15;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Firmware file %{public}@ not found in top level directory, checking UARP subdirectory", buf, 0xCu);
      }

      resourcePath = [v14 resourcePath];
      v21 = [resourcePath stringByAppendingPathComponent:@"UARP"];

      v22 = objc_alloc_init(NSFileManager);
      v47 = v21;
      v23 = [v22 enumeratorAtPath:v21];
      nextObject = 0;
      while (1)
      {
        v25 = nextObject;
        nextObject = [v23 nextObject];

        if (!nextObject)
        {
          break;
        }

        lastPathComponent = [nextObject lastPathComponent];
        v27 = [lastPathComponent isEqualToString:v15];

        if (v27)
        {
          v28 = v47;
          path = [v47 stringByAppendingPathComponent:nextObject];
          goto LABEL_17;
        }
      }

      path = 0;
      v28 = v47;
LABEL_17:

      updateCopy = v48;
    }

    if (path)
    {
      goto LABEL_19;
    }
  }

  else if ([subscriptionCopy softwareUpdateAsset])
  {
    getLocalUrl = [completionCopy getLocalUrl];
    path = [getLocalUrl path];

    if (path)
    {
LABEL_19:
      v31 = self->_log;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v51 = path;
        v52 = 2112;
        v53 = subscriptionCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Moving Firmware File %@ from MobileAsset to UARP Cache for subscription:%@", buf, 0x16u);
      }

      v32 = [(UARPAssetManagerServiceAssetCache *)self->_assetCache assetCacheFileURLForAsset:completionCopy withSubscription:subscriptionCopy];
      path2 = [v32 path];
      v34 = copyFileToLocalPath(path, path2);

      if (v34)
      {
        if ([subscriptionCopy softwareUpdateAsset])
        {
          lastPathComponent2 = [path lastPathComponent];
          v36 = [v32 URLByAppendingPathComponent:lastPathComponent2];

          v32 = v36;
        }

        path3 = [v32 path];
        if ([subscriptionCopy softwareUpdateAsset])
        {
          assetType = [completionCopy assetType];
          v49 = assetType;
          path4 = [NSArray arrayWithObjects:&v49 count:1];
          MAPurgeAll();
        }

        else
        {
          assetType = [path lastPathComponent];
          path4 = [v32 path];
          v40 = [path4 stringByAppendingPathComponent:assetType];
          v41 = path3;
          v42 = updateCopy;
          v43 = v40;

          v44 = v43;
          updateCopy = v42;
          path3 = v44;
        }

        v45 = [(UARPAssetManagerServiceAssetCache *)self->_assetCache updateSubscription:subscriptionCopy forAsset:completionCopy withPath:path3];
        v46 = self->_log;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v51 = v45;
          v52 = 2112;
          v53 = subscriptionCopy;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Notify available record %@ for subscription %@", buf, 0x16u);
        }

        [(UARPAssetManagerServiceMobileAsset *)self notifyFirmwareUpdateAvailability:subscriptionCopy cacheRecord:v45 asyncUpdate:updateCopy];
      }

      else
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10000B81C();
        }

        [(UARPAssetManagerServiceMobileAsset *)self notifyFirmwareUpdateAvailability:subscriptionCopy cacheRecord:0 asyncUpdate:updateCopy];
      }

      goto LABEL_34;
    }
  }

  v30 = self->_log;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_10000BA64(v30, completionCopy);
  }

  [(UARPAssetManagerServiceMobileAsset *)self notifyFirmwareUpdateAvailability:subscriptionCopy cacheRecord:0 asyncUpdate:updateCopy];
LABEL_34:
}

- (void)notifyFirmwareUpdateAvailability:(id)availability cacheRecord:(id)record asyncUpdate:(BOOL)update
{
  updateCopy = update;
  availabilityCopy = availability;
  recordCopy = record;
  outstandingAssetQueries = self->_outstandingAssetQueries;
  if (outstandingAssetQueries)
  {
    self->_outstandingAssetQueries = outstandingAssetQueries - 1;
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10000BB2C(log);
    }
  }

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = recordCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Notifying delegate about available cacheRecord %@", &v13, 0xCu);
  }

  [(UARPAsyncAssetManagerDelegate *)self->_delegate assetAvailabilityUpdateForSubscription:availabilityCopy cacheRecord:recordCopy asyncUpdate:updateCopy];
}

@end