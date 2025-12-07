@interface CDXManager
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CDXManager)init;
- (id)_loadExtensionDataOperationWithStore:(id)store extension:(id)extension;
- (id)identificationEntryFrom:(id)from withName:(id)name withIconURL:(id)l withType:(int64_t)type fromCache:(BOOL)cache;
- (void)_setUpTemporaryDirectory;
- (void)callDirectoryHost:(id)host requestedEnabledForLiveLookupExtension:(id)extension completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedEnabledStatusForExtension:(id)extension completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedExtensionsWithCompletionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedFirstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:(id)number completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedFirstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:(id)numbers cacheOnly:(BOOL)only completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedLastUpdatedInfoWithCompletionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedLiveBlockingInfoFor:(id)for completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedRefreshExtensionContextForLiveLookupExtension:(id)extension completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedRefreshPIRParametersForLiveLookupExtension:(id)extension completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedReloadForExtension:(id)extension completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedResetForLiveLookupExtension:(id)extension completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedSetEnabled:(BOOL)enabled forLiveLookupExtension:(id)extension completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedToCompactStoreWithCompletionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedToLaunchCallDirectorySettingsWithCompletionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedToPrepareStoreWithCompletionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedToSetEnabled:(BOOL)enabled forExtension:(id)extension completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedToSetPrioritizedExtensionIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedToSynchronizeExtensionsWithCompletionHandler:(id)handler;
- (void)callDirectoryHostRequestedToCleanupLiveLookupData:(id)data;
- (void)fetchLiveIdentityInfoFor:(id)for cacheOnly:(BOOL)only completionHandler:(id)handler;
- (void)fetchLiveInfoFor:(id)for with:(id)with blockingCompletion:(id)completion identityCompletion:(id)identityCompletion;
- (void)writeImageIfNecessary:(id)necessary extensionIdentifier:(id)identifier handle:(id)handle completionHandler:(id)handler;
@end

@implementation CDXManager

- (CDXManager)init
{
  v25.receiver = self;
  v25.super_class = CDXManager;
  v2 = [(CDXManager *)&v25 init];
  v3 = v2;
  if (v2)
  {
    [(CDXManager *)v2 _setUpTemporaryDirectory];
    v4 = +[FTServerBag sharedInstance];
    serverBag = v3->_serverBag;
    v3->_serverBag = v4;

    v6 = objc_alloc_init(_TtC42com_apple_CallKit_CallDirectoryMaintenance20LiveLookupStoreProxy);
    liveLookupStore = v3->_liveLookupStore;
    v3->_liveLookupStore = v6;

    v8 = objc_alloc_init(_TtC42com_apple_CallKit_CallDirectoryMaintenance21SecureImageTranscoder);
    imageTranscoder = v3->_imageTranscoder;
    v3->_imageTranscoder = v8;

    v10 = dispatch_group_create();
    liveLookupGroup = v3->_liveLookupGroup;
    v3->_liveLookupGroup = v10;

    v12 = objc_alloc_init(_TtC42com_apple_CallKit_CallDirectoryMaintenance21CoreAnalyticsReporter);
    analyticsReporter = v3->_analyticsReporter;
    v3->_analyticsReporter = v12;

    v14 = objc_alloc_init(CXCallDirectoryHost);
    host = v3->_host;
    v3->_host = v14;

    [(CXCallDirectoryHost *)v3->_host setDelegate:v3 queue:0];
    v16 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = v3->_systemMonitor;
    v3->_systemMonitor = v16;

    objc_initWeak(&location, v3);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100009A50;
    v22[3] = &unk_100034DA0;
    objc_copyWeak(&v23, &location);
    [(CUSystemMonitor *)v3->_systemMonitor setFirstUnlockHandler:v22];
    v18 = v3->_systemMonitor;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100009AE0;
    v20[3] = &unk_100034DA0;
    objc_copyWeak(&v21, &location);
    [(CUSystemMonitor *)v18 activateWithCompletion:v20];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = +[NSBundle mainBundle];
  bundleIdentifier = [v6 bundleIdentifier];

  if ([bundleIdentifier isEqualToString:CXCallDirectoryDefaultHostBundleIdentifier])
  {
    v8 = +[NSXPCInterface cx_callDirectoryManagerDefaultHostInterface];
  }

  else
  {
    v8 = [bundleIdentifier isEqualToString:CXCallDirectoryMaintenanceHostBundleIdentifier];
    if (!v8)
    {
      goto LABEL_7;
    }

    v8 = +[NSXPCInterface cx_callDirectoryManagerMaintenanceHostInterface];
  }

  v9 = v8;
  if (v8)
  {
    host = [(CDXManager *)self host];
    [connectionCopy setExportedObject:host];

    [connectionCopy setExportedInterface:v9];
    [connectionCopy resume];
    v11 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v9 = sub_100005CC4(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100021B60();
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (void)callDirectoryHost:(id)host requestedReloadForExtension:(id)extension completionHandler:(id)handler
{
  extensionCopy = extension;
  handlerCopy = handler;
  v9 = sub_100005CC4(handlerCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = extensionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "extension %@", buf, 0xCu);
  }

  v19 = 0;
  v10 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v19];
  v11 = v19;
  v12 = v11;
  if (v10)
  {
    v13 = [(CDXManager *)self _loadExtensionDataOperationWithStore:v10 extension:extensionCopy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100009F68;
    v15[3] = &unk_100034DC8;
    v16 = extensionCopy;
    v17 = v10;
    v18 = handlerCopy;
    [v13 performWithCompletionHandler:v15];
  }

  else
  {
    v14 = sub_100005CC4(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100021BC8();
    }

    v13 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (*(handlerCopy + 2))(handlerCopy, v13);
  }
}

- (void)callDirectoryHost:(id)host requestedEnabledStatusForExtension:(id)extension completionHandler:(id)handler
{
  extensionCopy = extension;
  handlerCopy = handler;
  v8 = sub_100005CC4(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = extensionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "extension %@", buf, 0xCu);
  }

  v20 = 0;
  v9 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v20];
  v10 = v20;
  v11 = v10;
  if (v9)
  {
    v12 = [CDXRetrieveExtensionEnabledStatusOperation alloc];
    identifier = [extensionCopy identifier];
    v14 = [(CDXRetrieveExtensionEnabledStatusOperation *)v12 initWithExtensionIdentifier:identifier store:v9];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000A200;
    v16[3] = &unk_100034DF0;
    v17 = extensionCopy;
    v18 = v9;
    v19 = handlerCopy;
    [(CDXRetrieveExtensionEnabledStatusOperation *)v14 performWithCompletionHandler:v16];
  }

  else
  {
    v15 = sub_100005CC4(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100021CB0();
    }

    v14 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

- (void)callDirectoryHost:(id)host requestedToSetEnabled:(BOOL)enabled forExtension:(id)extension completionHandler:(id)handler
{
  enabledCopy = enabled;
  extensionCopy = extension;
  handlerCopy = handler;
  v11 = sub_100005CC4(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = extensionCopy;
    v28 = 1024;
    v29 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "extension %@ enabled %d", buf, 0x12u);
  }

  v25 = 0;
  v12 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v25];
  v13 = v25;
  v14 = v13;
  if (v12)
  {
    v15 = [(CDXManager *)self _loadExtensionDataOperationWithStore:v12 extension:extensionCopy];
    v16 = [CDXSetExtensionEnabledOperation alloc];
    identifier = [extensionCopy identifier];
    v18 = [(CDXSetExtensionEnabledOperation *)v16 initWithExtensionIdentifier:identifier enabled:enabledCopy loadExtensionDataOperation:v15 store:v12];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000A4E0;
    v20[3] = &unk_100034E18;
    v24 = enabledCopy;
    v21 = extensionCopy;
    v22 = v12;
    v23 = handlerCopy;
    [(CDXSetExtensionEnabledOperation *)v18 performWithCompletionHandler:v20];
  }

  else
  {
    v19 = sub_100005CC4(v13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100021BC8();
    }

    v15 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }
}

- (void)callDirectoryHost:(id)host requestedFirstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:(id)numbers cacheOnly:(BOOL)only completionHandler:(id)handler
{
  numbersCopy = numbers;
  handlerCopy = handler;
  v11 = sub_100005CC4(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = numbersCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "phoneNumbers %@", buf, 0xCu);
  }

  v22 = 0;
  v12 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v22];
  v13 = v22;
  v14 = v13;
  if (v12)
  {
    v15 = [[CDXRetrieveFirstIdentificationEntriesOperation alloc] initWithPhoneNumbers:numbersCopy store:v12];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000A760;
    v17[3] = &unk_100034E68;
    v18 = numbersCopy;
    selfCopy = self;
    onlyCopy = only;
    v20 = handlerCopy;
    [(CDXRetrieveFirstIdentificationEntriesOperation *)v15 performWithCompletionHandler:v17];
  }

  else
  {
    v16 = sub_100005CC4(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100021CB0();
    }

    v15 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

- (void)writeImageIfNecessary:(id)necessary extensionIdentifier:(id)identifier handle:(id)handle completionHandler:(id)handler
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  handleCopy = handle;
  handlerCopy = handler;
  if (![necessaryCopy hasIcon])
  {
    goto LABEL_6;
  }

  icon = [necessaryCopy icon];
  if (([icon hasImage] & 1) == 0)
  {

    goto LABEL_6;
  }

  icon2 = [necessaryCopy icon];
  image = [icon2 image];
  v17 = [image length];

  if (!v17)
  {
LABEL_6:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_7;
  }

  v18 = +[NSDate date];
  imageTranscoder = [(CDXManager *)self imageTranscoder];
  icon3 = [necessaryCopy icon];
  image2 = [icon3 image];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000AC8C;
  v23[3] = &unk_100034E90;
  v24 = v18;
  selfCopy = self;
  v26 = identifierCopy;
  v27 = handleCopy;
  v28 = handlerCopy;
  v22 = v18;
  [imageTranscoder generatePreviewImageFrom:image2 completionHandler:v23];

LABEL_7:
}

- (void)fetchLiveInfoFor:(id)for with:(id)with blockingCompletion:(id)completion identityCompletion:(id)identityCompletion
{
  forCopy = for;
  withCopy = with;
  completionCopy = completion;
  identityCompletionCopy = identityCompletion;
  liveLookupStore = [(CDXManager *)self liveLookupStore];
  v14 = [liveLookupStore extensionIdentifierFor:withCopy];

  v15 = [[NSString alloc] initWithFormat:@"%@.block", v14];
  v16 = [[CMLClientConfig alloc] initWithUseCase:v15 sourceApplicationBundleIdentifier:v14];
  v17 = [[CMLKeywordPIRClient alloc] initWithClientConfig:v16];
  v18 = sub_100005CC4(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = v15;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "requestData useCase: %@", buf, 0xCu);
  }

  v19 = +[NSDate date];
  liveLookupGroup = [(CDXManager *)self liveLookupGroup];
  dispatch_group_enter(liveLookupGroup);

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10000B28C;
  v50[3] = &unk_100034EB8;
  v40 = v19;
  v51 = v40;
  selfCopy = self;
  v21 = v14;
  v53 = v21;
  v54 = v15;
  v22 = completionCopy;
  v57 = v22;
  v23 = forCopy;
  v55 = v23;
  v24 = withCopy;
  v56 = v24;
  v25 = v15;
  [v17 requestDataByStringKeyword:v23 completionHandler:v50];
  v26 = [NSString alloc];

  v27 = [v26 initWithFormat:@"%@.identity", v21];
  v28 = [[CMLClientConfig alloc] initWithUseCase:v27 sourceApplicationBundleIdentifier:v21];

  v29 = [[CMLKeywordPIRClient alloc] initWithClientConfig:v28];
  v31 = sub_100005CC4(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = v27;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "requestData useCase: %@", buf, 0xCu);
  }

  v32 = +[NSDate date];
  liveLookupGroup2 = [(CDXManager *)self liveLookupGroup];
  dispatch_group_enter(liveLookupGroup2);

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10000B598;
  v42[3] = &unk_100034EB8;
  v43 = v32;
  selfCopy2 = self;
  v45 = v21;
  v46 = v27;
  v48 = v24;
  v49 = identityCompletionCopy;
  v47 = v23;
  v34 = v24;
  v35 = v23;
  v36 = identityCompletionCopy;
  v37 = v27;
  v38 = v21;
  v39 = v32;
  [v29 requestDataByStringKeyword:v35 completionHandler:v42];
}

- (id)identificationEntryFrom:(id)from withName:(id)name withIconURL:(id)l withType:(int64_t)type fromCache:(BOOL)cache
{
  cacheCopy = cache;
  lCopy = l;
  nameCopy = name;
  v13 = [NSExtension extensionWithIdentifier:from error:0];
  v14 = objc_alloc_init(CXCallDirectoryIdentificationEntry);
  identifier = [v13 identifier];
  [v14 setExtensionIdentifier:identifier];

  localizedName = [v13 localizedName];
  [v14 setLocalizedExtensionName:localizedName];

  localizedContainingAppName = [v13 localizedContainingAppName];
  [v14 setLocalizedExtensionContainingAppName:localizedContainingAppName];

  [v14 setLocalizedLabel:nameCopy];
  [v14 setIconURL:lCopy];

  [v14 setType:type];
  [v14 setFromCache:cacheCopy];

  return v14;
}

- (void)fetchLiveIdentityInfoFor:(id)for cacheOnly:(BOOL)only completionHandler:(id)handler
{
  onlyCopy = only;
  forCopy = for;
  handlerCopy = handler;
  v8 = sub_100005CC4(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = forCopy;
    *&buf[12] = 1024;
    *&buf[14] = onlyCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "fetchLiveIdentityInfoFor handle=%@ cacheOnly=%d", buf, 0x12u);
  }

  liveLookupGroup = [(CDXManager *)self liveLookupGroup];
  serverBag = [(CDXManager *)self serverBag];
  v11 = dispatch_time(0, 1000000000 * [serverBag identityWaitSeconds]);
  v12 = dispatch_group_wait(liveLookupGroup, v11);

  if (v12)
  {
    v14 = sub_100005CC4(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      serverBag2 = [(CDXManager *)self serverBag];
      identityWaitSeconds = [serverBag2 identityWaitSeconds];
      *buf = 134217984;
      *&buf[4] = identityWaitSeconds;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "not all previous fetches completed within %lu second(s) continuing", buf, 0xCu);
    }
  }

  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_10000C590;
  v95[3] = &unk_100034F08;
  v95[4] = self;
  v66 = handlerCopy;
  v96 = v66;
  v67 = objc_retainBlock(v95);
  liveLookupStore = [(CDXManager *)self liveLookupStore];
  activeExtensions = [liveLookupStore activeExtensions];

  v20 = sub_100005CC4(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [activeExtensions count];
    *buf = 134218242;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = forCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "extensions=%lu handle=%@", buf, 0x16u);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = activeExtensions;
  v22 = [obj countByEnumeratingWithState:&v91 objects:v105 count:16];
  if (v22)
  {
    v69 = *v92;
    while (2)
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v92 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v91 + 1) + 8 * i);
        liveLookupStore2 = [(CDXManager *)self liveLookupStore];
        v26 = [liveLookupStore2 extensionIdentifierFor:v24];

        liveLookupStore3 = [(CDXManager *)self liveLookupStore];
        v28 = [liveLookupStore3 fetchIdentityInfoFor:forCopy from:v24];

        if (v28)
        {
          liveLookupStore4 = [(CDXManager *)self liveLookupStore];
          v30 = [liveLookupStore4 nameFor:v28];

          liveLookupStore5 = [(CDXManager *)self liveLookupStore];
          v32 = [liveLookupStore5 iconURLFor:v28];

          liveLookupStore6 = [(CDXManager *)self liveLookupStore];
          v34 = [liveLookupStore6 identityTypeFor:v28];

          v35 = [(CDXManager *)self identificationEntryFrom:v26 withName:v30 withIconURL:v32 withType:v34 fromCache:1];
          v36 = sub_100005CC4(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v28;
            *&buf[12] = 2112;
            *&buf[14] = v26;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "found %@ in cache for %@", buf, 0x16u);
          }

          localizedLabel = [v35 localizedLabel];
          v38 = [localizedLabel length] == 0;

          if (!v38)
          {
            (v67[2])(v67, v35, 0);

            goto LABEL_50;
          }
        }
      }

      v22 = [obj countByEnumeratingWithState:&v91 objects:v105 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  if (!onlyCopy)
  {
    v40 = dispatch_group_create();
    v86 = 0;
    v87 = &v86;
    v88 = 0x2810000000;
    v89 = &unk_10002D2A5;
    v90 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v102 = sub_10000C670;
    v103 = sub_10000C680;
    v104 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v70 = obj;
    v41 = [v70 countByEnumeratingWithState:&v82 objects:v100 count:16];
    if (v41)
    {
      v42 = *v83;
      do
      {
        for (j = 0; j != v41; j = j + 1)
        {
          if (*v83 != v42)
          {
            objc_enumerationMutation(v70);
          }

          v44 = *(*(&v82 + 1) + 8 * j);
          liveLookupStore7 = [(CDXManager *)self liveLookupStore];
          v46 = [liveLookupStore7 extensionIdentifierFor:v44];

          dispatch_group_enter(v40);
          v48 = sub_100005CC4(v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *v98 = 138412290;
            v99 = v46;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "fetching identity for %@", v98, 0xCu);
          }

          v76[0] = _NSConcreteStackBlock;
          v76[1] = 3221225472;
          v76[2] = sub_10000C688;
          v76[3] = &unk_100034F30;
          v49 = v46;
          v77 = v49;
          selfCopy = self;
          v80 = &v86;
          v81 = buf;
          v79 = v40;
          [(CDXManager *)self fetchLiveInfoFor:forCopy with:v44 blockingCompletion:0 identityCompletion:v76];
        }

        v41 = [v70 countByEnumeratingWithState:&v82 objects:v100 count:16];
      }

      while (v41);
    }

    serverBag3 = [(CDXManager *)self serverBag];
    v51 = dispatch_time(0, 1000000000 * [serverBag3 identityWaitSeconds]);
    v52 = dispatch_group_wait(v40, v51);

    if (v52)
    {
      v54 = sub_100005CC4(v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        serverBag4 = [(CDXManager *)self serverBag];
        identityWaitSeconds2 = [serverBag4 identityWaitSeconds];
        *v98 = 134217984;
        v99 = identityWaitSeconds2;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "not all identity fetches returned within %lu second(s)", v98, 0xCu);
      }
    }

    else
    {
      v54 = sub_100005CC4(v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "all identity fetches complete", v98, 2u);
      }
    }

    os_unfair_lock_lock(v87 + 8);
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v57 = *(*&buf[8] + 40);
    v58 = [v57 countByEnumeratingWithState:&v72 objects:v97 count:16];
    if (v58)
    {
      v59 = *v73;
      while (2)
      {
        for (k = 0; k != v58; k = k + 1)
        {
          if (*v73 != v59)
          {
            objc_enumerationMutation(v57);
          }

          v61 = *(*(&v72 + 1) + 8 * k);
          localizedLabel2 = [v61 localizedLabel];
          v63 = [localizedLabel2 length] == 0;

          if (!v63)
          {
            (v67[2])(v67, v61, 0);
            os_unfair_lock_unlock(v87 + 8);

            _Block_object_dispose(buf, 8);
            _Block_object_dispose(&v86, 8);

            goto LABEL_50;
          }
        }

        v58 = [v57 countByEnumeratingWithState:&v72 objects:v97 count:16];
        if (v58)
        {
          continue;
        }

        break;
      }
    }

    os_unfair_lock_unlock(v87 + 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v86, 8);
  }

  v64 = sub_100005CC4(v39);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "No found entries.", buf, 2u);
  }

  (*(v66 + 2))(v66, 0, 0);
LABEL_50:
}

- (void)callDirectoryHost:(id)host requestedLiveBlockingInfoFor:(id)for completionHandler:(id)handler
{
  hostCopy = host;
  forCopy = for;
  handlerCopy = handler;
  v8 = sub_100005CC4(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = forCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requestedLiveBlockingInfoFor handle=%@", buf, 0xCu);
  }

  liveLookupStore = [(CDXManager *)self liveLookupStore];
  activeExtensions = [liveLookupStore activeExtensions];

  liveLookupStore2 = [(CDXManager *)self liveLookupStore];
  v51 = [liveLookupStore2 getBlockingInfoFor:forCopy];

  v11 = [v51 count];
  if (v11 && ((-[CDXManager liveLookupStore](self, "liveLookupStore", hostCopy), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 shouldBlockWith:v51], v12, (v13 & 1) != 0) || (v14 = objc_msgSend(v51, "count"), v11 = objc_msgSend(activeExtensions, "count"), v14 == v11)))
  {
    v15 = sub_100005CC4(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = v13;
      *&buf[8] = 2112;
      *&buf[10] = forCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "cache says block (%d) for handle=%@", buf, 0x12u);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v16 = v51;
    v17 = [v16 countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v17)
    {
      v18 = *v63;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v63 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v62 + 1) + 8 * i);
          analyticsReporter = [(CDXManager *)self analyticsReporter];
          liveLookupStore3 = [(CDXManager *)self liveLookupStore];
          v23 = [liveLookupStore3 extensionIdentifierFrom:v20];
          [analyticsReporter sendBlockingCacheHitFor:v23];
        }

        v17 = [v16 countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v17);
    }

    handlerCopy[2](handlerCopy, v13, 0);
  }

  else
  {
    v24 = sub_100005CC4(v11);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [activeExtensions count];
      *buf = 134218242;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = forCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "extensions=%lu handle=%@", buf, 0x16u);
    }

    if ([activeExtensions count])
    {
      v26 = dispatch_group_create();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v70 = 0;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v27 = activeExtensions;
      v28 = [v27 countByEnumeratingWithState:&v58 objects:v68 count:16];
      if (v28)
      {
        v29 = *v59;
        do
        {
          for (j = 0; j != v28; j = j + 1)
          {
            if (*v59 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v58 + 1) + 8 * j);
            liveLookupStore4 = [(CDXManager *)self liveLookupStore];
            v33 = [liveLookupStore4 extensionIdentifierFor:v31];

            liveLookupStore5 = [(CDXManager *)self liveLookupStore];
            v35 = [liveLookupStore5 llExtension:v31 containedIn:v51];

            if (v35)
            {
              analyticsReporter2 = [(CDXManager *)self analyticsReporter];
              [analyticsReporter2 sendBlockingCacheHitFor:v33];
            }

            else
            {
              dispatch_group_enter(v26);
              v38 = sub_100005CC4(v37);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *v66 = 138412290;
                v67 = v33;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "fetching blocking for %@", v66, 0xCu);
              }

              v52[0] = _NSConcreteStackBlock;
              v52[1] = 3221225472;
              v52[2] = sub_10000CED4;
              v52[3] = &unk_100034F58;
              v39 = v33;
              v57 = buf;
              v53 = v39;
              selfCopy = self;
              v56 = handlerCopy;
              v55 = v26;
              [(CDXManager *)self fetchLiveInfoFor:forCopy with:v31 blockingCompletion:v52 identityCompletion:0];

              analyticsReporter2 = v53;
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v58 objects:v68 count:16];
        }

        while (v28);
      }

      serverBag = [(CDXManager *)self serverBag];
      v41 = dispatch_time(0, 1000000000 * [serverBag blockingWaitSeconds]);
      v42 = dispatch_group_wait(v26, v41);

      if (v42)
      {
        v44 = sub_100005CC4(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          serverBag2 = [(CDXManager *)self serverBag];
          blockingWaitSeconds = [serverBag2 blockingWaitSeconds];
          *v66 = 134217984;
          v67 = blockingWaitSeconds;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "not all blocking fetches returned within %lu second(s)", v66, 0xCu);
        }
      }

      else
      {
        v44 = sub_100005CC4(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *v66 = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "all blocking fetches complete", v66, 2u);
        }
      }

      if ((*(*&buf[8] + 24) & 1) == 0)
      {
        handlerCopy[2](handlerCopy, 0, 0);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, 0);
    }
  }
}

- (void)callDirectoryHost:(id)host requestedFirstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:(id)number completionHandler:(id)handler
{
  numberCopy = number;
  handlerCopy = handler;
  v9 = sub_100005CC4(handlerCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = numberCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "requestedFirstEnabledLiveBlockingExtensionIdentifierForPhoneNumber handle=%@", &v16, 0xCu);
  }

  liveLookupStore = [(CDXManager *)self liveLookupStore];
  v11 = [liveLookupStore getBlockingInfoFor:numberCopy];

  if ([v11 count])
  {
    liveLookupStore2 = [(CDXManager *)self liveLookupStore];
    v13 = [liveLookupStore2 firstEnabledBlockedExtensionIdentifierFor:v11];

    v15 = sub_100005CC4(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = numberCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "cache says blocked by (%@) for handle=%@", &v16, 0x16u);
    }

    handlerCopy[2](handlerCopy, v13, 0);
  }

  else
  {
    v13 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (handlerCopy)[2](handlerCopy, 0, v13);
  }
}

- (void)callDirectoryHost:(id)host requestedToSynchronizeExtensionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = sub_100005CC4(handlerCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "requested to synchronize extensions", buf, 2u);
  }

  v16 = 0;
  v7 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v16];
  v8 = v16;
  v9 = v8;
  if (v7)
  {
    v10 = [CDXSynchronizeExtensionsOperation alloc];
    systemMonitor = [(CDXManager *)self systemMonitor];
    v12 = -[CDXSynchronizeExtensionsOperation initWithStore:firstUnlockStatus:](v10, "initWithStore:firstUnlockStatus:", v7, [systemMonitor firstUnlocked]);

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000D378;
    v14[3] = &unk_100034F80;
    v15 = handlerCopy;
    [(CDXSynchronizeExtensionsOperation *)v12 performWithCompletionHandler:v14];
  }

  else
  {
    v13 = sub_100005CC4(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100021F78();
    }

    v12 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (*(handlerCopy + 2))(handlerCopy, v12);
  }
}

- (void)callDirectoryHost:(id)host requestedToCompactStoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100005CC4(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "requested to compact store", buf, 2u);
  }

  v13 = 0;
  v6 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v13];
  v7 = v13;
  v8 = v7;
  if (v6)
  {
    v9 = [[CDXCompactStoreOperation alloc] initWithStore:v6];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000D578;
    v11[3] = &unk_100034F80;
    v12 = handlerCopy;
    [(CDXCompactStoreOperation *)v9 performWithCompletionHandler:v11];
  }

  else
  {
    v10 = sub_100005CC4(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100021F78();
    }

    v9 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

- (void)callDirectoryHostRequestedToCleanupLiveLookupData:(id)data
{
  v4 = sub_100005CC4(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "requested to gc livelookupstore", v6, 2u);
  }

  liveLookupStore = [(CDXManager *)self liveLookupStore];
  [liveLookupStore cleanup];
}

- (void)callDirectoryHost:(id)host requestedToLaunchCallDirectorySettingsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100005CC4(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "requested to launch call directory settings", buf, 2u);
  }

  v6 = [NSURL URLWithString:@"prefs:root=Phone&path=CALL_DIRECTORIES"];
  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v12 = 0;
  v8 = [v7 openSensitiveURL:v6 withOptions:0 error:&v12];
  v9 = v12;

  if ((v8 & 1) != 0 || !v9)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v11 = sub_100005CC4(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000220B0();
    }

    if (handlerCopy)
    {
      (handlerCopy)[2](handlerCopy, v9);
    }
  }
}

- (void)callDirectoryHost:(id)host requestedExtensionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100005CC4(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "requested extensions", buf, 2u);
  }

  v13 = 0;
  v6 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v13];
  v7 = v13;
  v8 = v7;
  if (v6)
  {
    v9 = [[CDXRetrieveExtensionsOperation alloc] initWithStore:v6];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000D94C;
    v11[3] = &unk_100034FA8;
    v12 = handlerCopy;
    [(CDXRetrieveExtensionsOperation *)v9 performWithCompletionHandler:v11];
  }

  else
  {
    v10 = sub_100005CC4(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100021CB0();
    }

    v9 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v9);
  }
}

- (void)callDirectoryHost:(id)host requestedToSetPrioritizedExtensionIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v8 = sub_100005CC4(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = identifiersCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "prioritizedExtensionIdentifiers %@", buf, 0xCu);
  }

  v9 = [identifiersCopy count];
  if (v9 < 2)
  {
    v14 = sub_100005CC4(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [identifiersCopy count];
      *buf = 134217984;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "prioritizedExtensionIdentifiers count is %ld, so doing nothing", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v19 = 0;
    v10 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v19];
    v11 = v19;
    v12 = v11;
    if (v10)
    {
      v13 = [[CDXPrioritizeExtensionsOperation alloc] initWithPrioritizedExtensionIdentifiers:identifiersCopy store:v10];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000DCAC;
      v17[3] = &unk_100034F80;
      v18 = handlerCopy;
      [(CDXPrioritizeExtensionsOperation *)v13 performWithCompletionHandler:v17];
    }

    else
    {
      v16 = sub_100005CC4(v11);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100021F78();
      }

      v13 = [NSError cx_callDirectoryManagerErrorWithCode:0];
      (handlerCopy)[2](handlerCopy, v13);
    }
  }
}

- (void)callDirectoryHost:(id)host requestedToPrepareStoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = sub_100005CC4(handlerCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "requested to prepare store", buf, 2u);
  }

  v7 = [CDXPrepareStoreOperation alloc];
  systemMonitor = [(CDXManager *)self systemMonitor];
  v9 = -[CDXPrepareStoreOperation initWithFirstUnlockStatus:](v7, "initWithFirstUnlockStatus:", [systemMonitor firstUnlocked]);

  v15 = 0;
  v10 = [(CDXPrepareStoreOperation *)v9 performWithError:&v15];
  v11 = v15;
  v12 = sub_100005CC4(v11);
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Store prepared successfully", v14, 2u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1000221FC();
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v11);
  }
}

- (void)callDirectoryHost:(id)host requestedEnabledForLiveLookupExtension:(id)extension completionHandler:(id)handler
{
  handlerCopy = handler;
  extensionCopy = extension;
  liveLookupStore = [(CDXManager *)self liveLookupStore];
  identifier = [extensionCopy identifier];

  (*(handler + 2))(handlerCopy, [liveLookupStore enabledForExtensionWith:identifier], 0);
}

- (void)callDirectoryHost:(id)host requestedSetEnabled:(BOOL)enabled forLiveLookupExtension:(id)extension completionHandler:(id)handler
{
  enabledCopy = enabled;
  handlerCopy = handler;
  extensionCopy = extension;
  liveLookupStore = [(CDXManager *)self liveLookupStore];
  identifier = [extensionCopy identifier];

  [liveLookupStore setEnabled:enabledCopy forExtensionWith:identifier completionHandler:handlerCopy];
}

- (void)callDirectoryHost:(id)host requestedResetForLiveLookupExtension:(id)extension completionHandler:(id)handler
{
  handlerCopy = handler;
  extensionCopy = extension;
  liveLookupStore = [(CDXManager *)self liveLookupStore];
  identifier = [extensionCopy identifier];

  [liveLookupStore resetForExtensionWith:identifier];
  handlerCopy[2](handlerCopy, 0);
}

- (void)callDirectoryHost:(id)host requestedRefreshPIRParametersForLiveLookupExtension:(id)extension completionHandler:(id)handler
{
  extensionCopy = extension;
  handlerCopy = handler;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [&off_100035B10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(&off_100035B10);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = [NSString alloc];
        identifier = [extensionCopy identifier];
        v15 = [v13 initWithFormat:@"%@.%@", identifier, v12];

        v16 = [CMLClientConfig alloc];
        identifier2 = [extensionCopy identifier];
        v18 = [v16 initWithUseCase:v15 sourceApplicationBundleIdentifier:identifier2];

        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10000E280;
        v19[3] = &unk_100034FD0;
        v20 = handlerCopy;
        [CMLUseCaseStatus requestStatusForClientConfig:v18 options:264 completionHandler:v19];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [&off_100035B10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }
}

- (void)callDirectoryHost:(id)host requestedRefreshExtensionContextForLiveLookupExtension:(id)extension completionHandler:(id)handler
{
  hostCopy = host;
  extensionCopy = extension;
  handlerCopy = handler;
  v11 = sub_100005CC4(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [extensionCopy identifier];
    *buf = 138412290;
    v23 = identifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "requestedRefreshExtensionContextForLiveLookupExtension %@", buf, 0xCu);
  }

  liveLookupStore = [(CDXManager *)self liveLookupStore];
  identifier2 = [extensionCopy identifier];
  v15 = [liveLookupStore enabledForExtensionWith:identifier2];

  if (v15)
  {
    objc_initWeak(buf, self);
    liveLookupStore2 = [(CDXManager *)self liveLookupStore];
    identifier3 = [extensionCopy identifier];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000E4C0;
    v18[3] = &unk_100035020;
    v19 = extensionCopy;
    v20 = handlerCopy;
    objc_copyWeak(&v21, buf);
    [liveLookupStore2 setEnabled:0 forExtensionWith:identifier3 completionHandler:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

- (void)callDirectoryHost:(id)host requestedLastUpdatedInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  (*(handler + 2))(handlerCopy, [(CDXManager *)self lastInformationUpdate], 0);
}

- (void)_setUpTemporaryDirectory
{
  unsetenv("TMPDIR");
  bzero(v5, 0x400uLL);
  v2 = _set_user_dir_suffix();
  if (!v2 || (v2 = confstr(65537, v5, 0x400uLL)) == 0 || mkdir(v5, 0x1C0u) && (v2 = __error(), *v2 != 17))
  {
    v3 = sub_100005CC4(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000222EC();
    }

LABEL_11:

    exit(1);
  }

  bzero(v4, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(v5, v4))
  {
    v3 = sub_100005CC4(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100022264();
    }

    goto LABEL_11;
  }
}

- (id)_loadExtensionDataOperationWithStore:(id)store extension:(id)extension
{
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  extensionCopy = extension;
  storeCopy = store;
  v10 = dispatch_queue_create("com.apple.callkit.calldirectory.loadextensiondataoperation", v7);

  v11 = [[CDXExtensionDataRequest alloc] initWithExtension:extensionCopy queue:v10];
  v12 = [CDXLoadExtensionDataOperation alloc];
  identifier = [extensionCopy identifier];

  v14 = [(CDXLoadExtensionDataOperation *)v12 initWithExtensionIdentifier:identifier dataRequest:v11 queue:v10 store:storeCopy lastUpdateDelegate:self];

  return v14;
}

@end