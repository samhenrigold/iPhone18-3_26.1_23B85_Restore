@interface FMDAccessoryRegistry
+ (id)archiverFromURL:(id)l;
+ (id)connectedAccessoriesStorageLocation;
+ (id)defaultStorageLocation;
- (BOOL)addAccessoryIfSupported:(id)supported previouslyPaired:(BOOL)paired;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)supportsAccessory:(id)accessory;
- (FMDAccessoryRegistry)initWithSupportDelete:(id)delete;
- (FMDAccessoryRegistrySupportDelegate)supportDelegate;
- (id)accessoryForIdentifier:(id)identifier;
- (id)allAccessories;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)registeredDelegates;
- (void)_addAccessory:(id)accessory previouslyPaired:(BOOL)paired;
- (void)_forceUpdateAccessory:(id)accessory;
- (void)_removeAccessory:(id)accessory;
- (void)_updateAccessory:(id)accessory previouslyPaired:(BOOL)paired;
- (void)accessories:(id)accessories;
- (void)addDataSource:(id)source;
- (void)addDataSources:(id)sources;
- (void)availabilitydidChangeFor:(id)for status:(id)status withCompletion:(id)completion;
- (void)clearAccessoryRegistry;
- (void)computeAccessoryRegistry;
- (void)dealloc;
- (void)forceUpdateAccessory:(id)accessory;
- (void)forwardInvocation:(id)invocation;
- (void)postConnectionStatusChangeNotification;
- (void)readAccessoriesFromDisk;
- (void)readConnectedAccessoriesFromDisk;
- (void)refetchBauuids:(id)bauuids;
- (void)registerDelegate:(id)delegate;
- (void)reloadData;
- (void)removeAccessory:(id)accessory;
- (void)sanitizeConnectedAccessoriesWithoutMatchingBootId;
- (void)saveAccessoriesToDisk;
- (void)saveConnectedAccessoriesDictToDisk;
- (void)updateAccessory:(id)accessory;
- (void)updateAccessory:(id)accessory assets:(id)assets;
- (void)updateAccessory:(id)accessory playbackChannels:(id)channels completion:(id)completion;
@end

@implementation FMDAccessoryRegistry

- (id)allAccessories
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AA84;
  v11 = sub_100002B0C;
  v12 = &__NSArray0__struct;
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A450;
  v6[3] = &unk_1002CD260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessoryQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)defaultStorageLocation
{
  v2 = objc_alloc_init(FMInternalFileContainer);
  v3 = [v2 url];
  v4 = [v3 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.accessories"];

  return v4;
}

+ (id)connectedAccessoriesStorageLocation
{
  v2 = objc_alloc_init(FMInternalFileContainer);
  v3 = [v2 url];
  v4 = [v3 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.connectedAccessories"];

  return v4;
}

+ (id)archiverFromURL:(id)l
{
  lCopy = l;
  v4 = [[FMDataArchiver alloc] initWithFileURL:lCopy];

  [v4 setDataProtectionClass:4];
  [v4 setBackedUp:0];
  [v4 setCreateDirectories:1];

  return v4;
}

- (FMDAccessoryRegistry)initWithSupportDelete:(id)delete
{
  deleteCopy = delete;
  v24.receiver = self;
  v24.super_class = FMDAccessoryRegistry;
  v5 = [(FMDAccessoryRegistry *)&v24 init];
  v6 = v5;
  if (v5)
  {
    [(FMDAccessoryRegistry *)v5 setDataSourceErrorBackoffCount:0];
    v7 = dispatch_queue_create("com.apple.icloud.findmydeviced.accessoryqueue", 0);
    [(FMDAccessoryRegistry *)v6 setAccessoryQueue:v7];

    v8 = objc_opt_new();
    [(FMDAccessoryRegistry *)v6 setAccessoriesByIdentifier:v8];

    v9 = +[NSPointerArray weakObjectsPointerArray];
    [(FMDAccessoryRegistry *)v6 setDelegates:v9];

    v10 = +[NSMutableArray array];
    [(FMDAccessoryRegistry *)v6 setDataSources:v10];

    v11 = +[NSMutableSet set];
    [(FMDAccessoryRegistry *)v6 setConnectedAccessoryIdentifiers:v11];

    v12 = +[NSMutableDictionary dictionary];
    [(FMDAccessoryRegistry *)v6 setConnectedAccessoryIdentifiersToBootId:v12];

    v13 = dispatch_queue_create("com.apple.icloud.findmydeviced.delegate", 0);
    [(FMDAccessoryRegistry *)v6 setDelegateQueue:v13];

    v14 = objc_opt_class();
    defaultStorageLocation = [objc_opt_class() defaultStorageLocation];
    v16 = [v14 archiverFromURL:defaultStorageLocation];
    [(FMDAccessoryRegistry *)v6 setDataArchiver:v16];

    v17 = objc_opt_class();
    connectedAccessoriesStorageLocation = [objc_opt_class() connectedAccessoriesStorageLocation];
    v19 = [v17 archiverFromURL:connectedAccessoriesStorageLocation];
    [(FMDAccessoryRegistry *)v6 setConnectedAccessoriesDataArchiver:v19];

    [(FMDAccessoryRegistry *)v6 setSupportDelegate:deleteCopy];
    v20 = +[FMDSystemConfig sharedInstance];
    bootSessionUUID = [v20 bootSessionUUID];
    [(FMDAccessoryRegistry *)v6 setCurrentBootUUID:bootSessionUUID];

    [(FMDAccessoryRegistry *)v6 readConnectedAccessoriesFromDisk];
    v22 = sub_100002880([(FMDAccessoryRegistry *)v6 readAccessoriesFromDisk]);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_10022B8DC(v22);
    }
  }

  return v6;
}

- (void)dealloc
{
  dataSourceRetryTimer = [(FMDAccessoryRegistry *)self dataSourceRetryTimer];
  [dataSourceRetryTimer cancel];

  [(FMDAccessoryRegistry *)self setDataSourceRetryTimer:0];
  v4.receiver = self;
  v4.super_class = FMDAccessoryRegistry;
  [(FMDAccessoryRegistry *)&v4 dealloc];
}

- (void)registerDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateQueue = [(FMDAccessoryRegistry *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018C0BC;
  v7[3] = &unk_1002CD478;
  v8 = delegateCopy;
  selfCopy = self;
  v6 = delegateCopy;
  dispatch_async(delegateQueue, v7);
}

- (void)clearAccessoryRegistry
{
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018C1AC;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_sync(accessoryQueue, block);
}

- (void)updateAccessory:(id)accessory assets:(id)assets
{
  accessoryCopy = accessory;
  assetsCopy = assets;
  objc_initWeak(&location, self);
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018C39C;
  v11[3] = &unk_1002CE3B8;
  objc_copyWeak(&v14, &location);
  v12 = accessoryCopy;
  v13 = assetsCopy;
  v9 = assetsCopy;
  v10 = accessoryCopy;
  dispatch_async(accessoryQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)updateAccessory:(id)accessory playbackChannels:(id)channels completion:(id)completion
{
  accessoryCopy = accessory;
  channelsCopy = channels;
  completionCopy = completion;
  objc_initWeak(&location, self);
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018C770;
  block[3] = &unk_1002D0008;
  objc_copyWeak(&v19, &location);
  v16 = accessoryCopy;
  v17 = channelsCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = channelsCopy;
  v14 = accessoryCopy;
  dispatch_async(accessoryQueue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)addDataSources:(id)sources
{
  sourcesCopy = sources;
  objc_initWeak(&location, self);
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018CA58;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v6 = sourcesCopy;
  v8 = v6;
  dispatch_async(accessoryQueue, block);

  [(FMDAccessoryRegistry *)self reloadData];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)addDataSource:(id)source
{
  sourceCopy = source;
  objc_initWeak(&location, self);
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018CBC0;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v6 = sourceCopy;
  v8 = v6;
  dispatch_async(accessoryQueue, block);

  [(FMDAccessoryRegistry *)self reloadData];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)reloadData
{
  objc_initWeak(&location, self);
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10018CCE8;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(accessoryQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v15.receiver = self;
  v15.super_class = FMDAccessoryRegistry;
  if ([(FMDAccessoryRegistry *)&v15 respondsToSelector:?])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    registeredDelegates = [(FMDAccessoryRegistry *)self registeredDelegates];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [registeredDelegates countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v4 = 0;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(registeredDelegates);
          }

          v4 |= objc_opt_respondsToSelector();
        }

        v7 = [registeredDelegates countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v18.receiver = self;
  v18.super_class = FMDAccessoryRegistry;
  v5 = [(FMDAccessoryRegistry *)&v18 methodSignatureForSelector:?];
  if (!v5)
  {
    registeredDelegates = [(FMDAccessoryRegistry *)self registeredDelegates];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [registeredDelegates countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v5 = 0;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(registeredDelegates);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v12 = [v11 methodSignatureForSelector:selector];

            v5 = v12;
          }
        }

        v8 = [registeredDelegates countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  registeredDelegates = [(FMDAccessoryRegistry *)self registeredDelegates];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [registeredDelegates countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    *&v7 = 138412290;
    v14 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(registeredDelegates);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        [invocationCopy selector];
        v12 = objc_opt_respondsToSelector();
        if (v12)
        {
          v13 = sub_100002880(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v20 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry forwardInvocation to delegate %@", buf, 0xCu);
          }

          [invocationCopy invokeWithTarget:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [registeredDelegates countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v8);
  }
}

- (id)registeredDelegates
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AA84;
  v11 = sub_100002B0C;
  v12 = &__NSArray0__struct;
  delegateQueue = [(FMDAccessoryRegistry *)self delegateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018D28C;
  v6[3] = &unk_1002CD260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(delegateQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)accessories:(id)accessories
{
  accessoriesCopy = accessories;
  objc_initWeak(&location, self);
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018D3F0;
  block[3] = &unk_1002CDEF0;
  objc_copyWeak(&v9, &location);
  v8 = accessoriesCopy;
  v6 = accessoriesCopy;
  dispatch_async(accessoryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)computeAccessoryRegistry
{
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  dispatch_assert_queue_V2(accessoryQueue);

  v4 = +[FMDSystemConfig sharedInstance];
  unlockState = [v4 unlockState];

  v7 = sub_100002880(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (unlockState == 1)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry skipping computeAccessoryRegistry before first unlock", buf, 2u);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry computeAccessoryRegistry", buf, 2u);
    }

    dataSourceRetryTimer = [(FMDAccessoryRegistry *)self dataSourceRetryTimer];
    [dataSourceRetryTimer cancel];

    v10 = +[NSMutableArray array];
    v11 = +[NSMutableArray array];
    v12 = [[FMSynchronizer alloc] initWithDescription:@"FMDAccessoryRegistryAllAccessories" andTimeout:5.0];
    *buf = 0;
    v45[0] = buf;
    v45[1] = 0x3032000000;
    v45[2] = sub_10000AA84;
    v45[3] = sub_100002B0C;
    v46 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    dataSources = [(FMDAccessoryRegistry *)self dataSources];
    v14 = [dataSources count];

    v43 = v14;
    dataSources2 = [(FMDAccessoryRegistry *)self dataSources];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10018D9A4;
    v33[3] = &unk_1002D0080;
    v7 = v10;
    v34 = v7;
    selfCopy = self;
    v16 = v11;
    v36 = v16;
    v38 = &v40;
    v17 = v12;
    v37 = v17;
    v39 = buf;
    [dataSources2 enumerateObjectsUsingBlock:v33];

    [v17 wait];
    if ([v17 timeoutOccurred] && v41[3] || *(v45[0] + 40))
    {
      v18 = pow(5.0, [(FMDAccessoryRegistry *)self dataSourceErrorBackoffCount]);
      v19 = sub_100002880([(FMDAccessoryRegistry *)self setDataSourceErrorBackoffCount:[(FMDAccessoryRegistry *)self dataSourceErrorBackoffCount]+ 1]);
      v20 = v18 + 5.0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10022BA38(v45, v19, v20);
      }

      objc_initWeak(&location, self);
      v21 = [FMDispatchTimer alloc];
      accessoryQueue2 = [(FMDAccessoryRegistry *)self accessoryQueue];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10018DC28;
      v30[3] = &unk_1002CD518;
      objc_copyWeak(&v31, &location);
      v23 = [v21 initWithQueue:accessoryQueue2 timeout:v30 completion:v20];

      [(FMDAccessoryRegistry *)self setDataSourceRetryTimer:v23];
      [v23 start];

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    else
    {
      [(FMDAccessoryRegistry *)self setDataSourceErrorBackoffCount:0];
      accessoriesByIdentifier = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
      v25 = [accessoriesByIdentifier copy];

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10018DCC4;
      v27[3] = &unk_1002D00A8;
      v28 = v16;
      selfCopy2 = self;
      [v25 enumerateKeysAndObjectsUsingBlock:v27];
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10018DD38;
    v26[3] = &unk_1002D00D0;
    v26[4] = self;
    [v7 enumerateObjectsUsingBlock:v26];

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(buf, 8);
  }
}

- (BOOL)supportsAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessoryIdentifier = [accessoryCopy accessoryIdentifier];
  isValid = [accessoryIdentifier isValid];

  if (isValid)
  {
    supportDelegate = [(FMDAccessoryRegistry *)self supportDelegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [supportDelegate supportsAccessory:accessoryCopy];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)accessoryForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_10000AA84;
    v14 = sub_100002B0C;
    v15 = &__NSDictionary0__struct;
    accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10018DF50;
    v9[3] = &unk_1002CD260;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(accessoryQueue, v9);

    v6 = [v11[5] objectForKeyedSubscript:identifierCopy];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = sub_100002880(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022BB9C(v7);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)addAccessoryIfSupported:(id)supported previouslyPaired:(BOOL)paired
{
  pairedCopy = paired;
  supportedCopy = supported;
  v7 = [(FMDAccessoryRegistry *)self supportsAccessory:supportedCopy];
  v8 = sub_100002880(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v11 = 138412290;
      v12 = supportedCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry accessory supported %@", &v11, 0xCu);
    }

    [(FMDAccessoryRegistry *)self _addAccessory:supportedCopy previouslyPaired:pairedCopy];
  }

  else
  {
    if (v9)
    {
      v11 = 138412290;
      v12 = supportedCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry accessory not supported %@", &v11, 0xCu);
    }
  }

  return v7;
}

- (void)_addAccessory:(id)accessory previouslyPaired:(BOOL)paired
{
  pairedCopy = paired;
  accessoryCopy = accessory;
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  dispatch_assert_queue_V2(accessoryQueue);

  accessoriesByIdentifier = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
  v9 = [accessoriesByIdentifier mutableCopy];

  accessoryIdentifier = [accessoryCopy accessoryIdentifier];
  v11 = [v9 objectForKeyedSubscript:accessoryIdentifier];

  v13 = sub_100002880(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v20 = accessoryCopy;
    v21 = 1024;
    v22 = v11 == 0;
    v23 = 1024;
    v24 = pairedCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry addAccessory %@ New - %i PreviouslyPaired - %i", buf, 0x18u);
  }

  accessoryIdentifier2 = [accessoryCopy accessoryIdentifier];
  [v9 setObject:accessoryCopy forKeyedSubscript:accessoryIdentifier2];

  [(FMDAccessoryRegistry *)self setAccessoriesByIdentifier:v9];
  [(FMDAccessoryRegistry *)self saveAccessoriesToDisk];
  if (!v11 && !pairedCopy)
  {
    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018E2D8;
    block[3] = &unk_1002CE3B8;
    objc_copyWeak(&v18, buf);
    v16 = accessoryCopy;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

- (void)_removeAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  dispatch_assert_queue_V2(accessoryQueue);

  accessoryIdentifier = [accessoryCopy accessoryIdentifier];
  v7 = accessoryIdentifier;
  if (accessoryIdentifier)
  {
    v8 = sub_100002880(accessoryIdentifier);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = accessoryCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry removing accessory %@", buf, 0xCu);
    }

    accessoriesByIdentifier = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
    v10 = [accessoriesByIdentifier mutableCopy];

    [v10 removeObjectForKey:v7];
    [(FMDAccessoryRegistry *)self setAccessoriesByIdentifier:v10];
    [(FMDAccessoryRegistry *)self saveAccessoriesToDisk];
    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018E4EC;
    block[3] = &unk_1002CE3B8;
    objc_copyWeak(&v14, buf);
    v12 = accessoryCopy;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

- (void)_updateAccessory:(id)accessory previouslyPaired:(BOOL)paired
{
  pairedCopy = paired;
  accessoryCopy = accessory;
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  dispatch_assert_queue_V2(accessoryQueue);

  accessoryIdentifier = [accessoryCopy accessoryIdentifier];
  v9 = accessoryIdentifier;
  if (accessoryIdentifier && (accessoryIdentifier = [accessoryIdentifier isValid], (accessoryIdentifier & 1) != 0))
  {
    accessoriesByIdentifier = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
    v11 = [accessoriesByIdentifier objectForKeyedSubscript:v9];

    [accessoryCopy updateWithAccessory:v11];
    if (v11)
    {
      v12 = [accessoryCopy isEqual:v11] ^ 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = [(FMDAccessoryRegistry *)self addAccessoryIfSupported:accessoryCopy previouslyPaired:pairedCopy];
    if (v13)
    {
      v14 = sub_100002880(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        name = [accessoryCopy name];
        connectionStateAsString = [accessoryCopy connectionStateAsString];
        *buf = 138412546;
        v33 = name;
        v34 = 2114;
        v35 = connectionStateAsString;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry updateAccessory name: %@, connectionState: %{public}@", buf, 0x16u);
      }

      connectedAccessoryIdentifiers = [(FMDAccessoryRegistry *)self connectedAccessoryIdentifiers];
      if ([connectedAccessoryIdentifiers containsObject:v9])
      {
        v18 = [accessoryCopy connectionState] != 1;
      }

      else
      {
        v18 = 0;
      }

      connectedAccessoryIdentifiers2 = [(FMDAccessoryRegistry *)self connectedAccessoryIdentifiers];
      v20 = ([connectedAccessoryIdentifiers2 containsObject:v9] & 1) == 0 && objc_msgSend(accessoryCopy, "connectionState") == 1;

      connectionState = [accessoryCopy connectionState];
      connectedAccessoryIdentifiers3 = [(FMDAccessoryRegistry *)self connectedAccessoryIdentifiers];
      v23 = connectedAccessoryIdentifiers3;
      if (connectionState == 1)
      {
        [connectedAccessoryIdentifiers3 addObject:v9];
      }

      else
      {
        [connectedAccessoryIdentifiers3 removeObject:v9];
      }

      [(FMDAccessoryRegistry *)self saveConnectedAccessoriesDictToDisk];
      objc_initWeak(buf, self);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10018E860;
      v25[3] = &unk_1002D00F8;
      objc_copyWeak(&v28, buf);
      v29 = v12;
      v24 = accessoryCopy;
      v30 = v18;
      v31 = v20;
      v26 = v24;
      selfCopy = self;
      dispatch_async(&_dispatch_main_q, v25);

      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v11 = sub_100002880(accessoryIdentifier);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022BBE0();
    }
  }
}

- (void)postConnectionStatusChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.icloud.FindMy.accesoriesConnectionStateChanged", 0, 0, 1u);
}

- (void)forceUpdateAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018EB50;
  v7[3] = &unk_1002CD478;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_sync(accessoryQueue, v7);
}

- (void)_forceUpdateAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  dispatch_assert_queue_V2(accessoryQueue);

  accessoryIdentifier = [accessoryCopy accessoryIdentifier];
  v7 = accessoryIdentifier;
  if (accessoryIdentifier && (accessoryIdentifier = [accessoryIdentifier isValid], (accessoryIdentifier & 1) != 0))
  {
    accessoriesByIdentifier = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
    v9 = [accessoriesByIdentifier objectForKeyedSubscript:v7];

    v10 = sub_100002880([accessoryCopy updateWithAccessory:v9]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = accessoryCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry : force updating accessory: %@", &v11, 0xCu);
    }

    [(FMDAccessoryRegistry *)self accessoryDidUpdate:accessoryCopy];
  }

  else
  {
    v9 = sub_100002880(accessoryIdentifier);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10022BBE0();
    }
  }
}

- (void)updateAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_initWeak(&location, self);
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018EDB4;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(accessoryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)removeAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_initWeak(&location, self);
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018EEF8;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(accessoryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)refetchBauuids:(id)bauuids
{
  v4 = sub_100002880(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "refetchBauuid", buf, 2u);
  }

  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018F018;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_async(accessoryQueue, block);
}

- (void)sanitizeConnectedAccessoriesWithoutMatchingBootId
{
  connectedAccessoryIdentifiersToBootId = [(FMDAccessoryRegistry *)self connectedAccessoryIdentifiersToBootId];
  allKeys = [connectedAccessoryIdentifiersToBootId allKeys];

  v5 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = allKeys;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        connectedAccessoryIdentifiersToBootId2 = [(FMDAccessoryRegistry *)self connectedAccessoryIdentifiersToBootId];
        v13 = [connectedAccessoryIdentifiersToBootId2 objectForKeyedSubscript:v11];

        currentBootUUID = [(FMDAccessoryRegistry *)self currentBootUUID];
        v15 = [v13 isEqualToString:currentBootUUID];

        if ((v15 & 1) == 0)
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  connectedAccessoryIdentifiersToBootId3 = [(FMDAccessoryRegistry *)self connectedAccessoryIdentifiersToBootId];
  [connectedAccessoryIdentifiersToBootId3 removeObjectsForKeys:v5];
}

- (void)readConnectedAccessoriesFromDisk
{
  connectedAccessoriesDataArchiver = [(FMDAccessoryRegistry *)self connectedAccessoriesDataArchiver];
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v13 = 0;
  v6 = [connectedAccessoriesDataArchiver readDictionaryAndClasses:v5 error:&v13];
  v7 = v13;

  if (v7 && (v8 = [v7 fm_isFileNotFoundError], (v8 & 1) == 0))
  {
    v10 = sub_100002880(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10022BC48();
    }

    v11 = +[FMDEventLoggerGeneral sharedInstance];
    [v11 sendError:v7 forEventName:@"FMDConnectedAccessoryFailedReadEventName"];
  }

  else
  {
    if (v6)
    {
      v9 = [v6 mutableCopy];
    }

    else
    {
      v9 = objc_alloc_init(NSMutableDictionary);
    }

    v12 = v9;
    [(FMDAccessoryRegistry *)self setConnectedAccessoryIdentifiersToBootId:v9];

    [(FMDAccessoryRegistry *)self sanitizeConnectedAccessoriesWithoutMatchingBootId];
  }
}

- (void)readAccessoriesFromDisk
{
  objc_initWeak(&location, self);
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018F7D8;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(accessoryQueue, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)saveConnectedAccessoriesDictToDisk
{
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  dispatch_assert_queue_V2(accessoryQueue);

  v5 = sub_100002880(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    accessoriesByIdentifier = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
    v12 = 138412290;
    v13 = accessoriesByIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry saveConnectedAccessoriesToDisk %@", &v12, 0xCu);
  }

  connectedAccessoriesDataArchiver = [(FMDAccessoryRegistry *)self connectedAccessoriesDataArchiver];
  connectedAccessoryIdentifiersToBootId = [(FMDAccessoryRegistry *)self connectedAccessoryIdentifiersToBootId];
  v9 = [connectedAccessoriesDataArchiver saveDictionary:connectedAccessoryIdentifiersToBootId];

  if (v9)
  {
    v11 = sub_100002880(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022A040();
    }
  }
}

- (void)saveAccessoriesToDisk
{
  accessoryQueue = [(FMDAccessoryRegistry *)self accessoryQueue];
  dispatch_assert_queue_V2(accessoryQueue);

  v5 = sub_100002880(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    accessoriesByIdentifier = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
    v12 = 138412290;
    v13 = accessoriesByIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry saveAccessoriesToDisk %@", &v12, 0xCu);
  }

  dataArchiver = [(FMDAccessoryRegistry *)self dataArchiver];
  accessoriesByIdentifier2 = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
  v9 = [dataArchiver saveDictionary:accessoriesByIdentifier2];

  if (v9)
  {
    v11 = sub_100002880(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022A040();
    }
  }
}

- (void)availabilitydidChangeFor:(id)for status:(id)status withCompletion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  forCopy = for;
  v11 = sub_10000BE38(forCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = statusCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "availabilitydidChangeFor status = %@", buf, 0xCu);
  }

  v12 = [statusCopy objectForKeyedSubscript:@"components"];
  completionCopy[2](completionCopy, 0);

  v13 = [[FMDAccessoryIdentifier alloc] initWithString:forCopy];
  accessoriesByIdentifier = [(FMDAccessoryRegistry *)self accessoriesByIdentifier];
  v15 = [accessoriesByIdentifier objectForKeyedSubscript:v13];

  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
      v17 = [statusCopy objectForKeyedSubscript:@"statusUpdateTime"];
      if (v17)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v19 = sub_10000BE38(isKindOfClass);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            sub_10022BD18();
          }

          [v16 setLastStatusUpdateTime:v17];
        }
      }

      if ([v16 updateComponnentsAvailability:v12])
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10018FEF4;
        block[3] = &unk_1002D0148;
        v22 = 1;
        block[4] = self;
        v21 = v16;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }
}

- (FMDAccessoryRegistrySupportDelegate)supportDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_supportDelegate);

  return WeakRetained;
}

@end