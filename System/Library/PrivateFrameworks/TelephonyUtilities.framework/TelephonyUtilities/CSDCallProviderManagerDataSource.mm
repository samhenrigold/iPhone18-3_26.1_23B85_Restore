@interface CSDCallProviderManagerDataSource
+ (id)dataForProviders:(id)providers;
- (BOOL)_saveProviders:(id)providers forKeychainItem:(id)item error:(id *)error;
- (BOOL)isDevicePasscodeLocked;
- (BOOL)isProviderInstalled:(id)installed;
- (BOOL)isRelayCallingGuaranteed;
- (BOOL)isSymbolicLinkAtURL:(id)l;
- (CSDCallProviderManagerDataSource)initWithSerialQueue:(id)queue;
- (CSDCallProviderManagerDataSource)initWithSerialQueue:(id)queue localKeychainItem:(id)item pairedHostKeychainItem:(id)keychainItem;
- (CSDCallProviderManagerDataSourceDelegate)delegate;
- (NSDictionary)registeredLocalProvidersByIdentifier;
- (NSDictionary)registeredPairedHostDeviceProvidersByIdentifier;
- (NSSet)providerIdentifiersForExistingCalls;
- (id)_providersForKeychainItem:(id)item;
- (id)_providersForPreferenceKey:(id)key;
- (id)createLinkIfNecessaryWithFilename:(id)filename toURL:(id)l;
- (void)callsChangedForCallCenterObserver:(id)observer;
- (void)dealloc;
- (void)didChangeRelayCallingAvailability;
- (void)handleApplicationUnregisteredNotification:(id)notification;
- (void)moveExistingPreferencesToKeychain;
- (void)openUserActivity:(id)activity usingApplicationWithBundleIdentifier:(id)identifier frontBoardOptions:(id)options completion:(id)completion;
- (void)removeLinksForFilenamesNotInArray:(id)array;
- (void)setRegisteredLocalProvidersByIdentifier:(id)identifier;
- (void)setRegisteredPairedHostDeviceProvidersByIdentifier:(id)identifier;
@end

@implementation CSDCallProviderManagerDataSource

- (CSDCallProviderManagerDataSource)initWithSerialQueue:(id)queue
{
  queueCopy = queue;
  v5 = [CSDKeychainPasswordItem alloc];
  v6 = +[CSDKeychainPasswordItem serviceName];
  v7 = +[CSDKeychainPasswordItem accessGroupName];
  v8 = [(CSDKeychainPasswordItem *)v5 initWithService:v6 account:@"registeredProviders" accessGroup:v7];

  v9 = [CSDKeychainPasswordItem alloc];
  v10 = +[CSDKeychainPasswordItem serviceName];
  v11 = +[CSDKeychainPasswordItem accessGroupName];
  v12 = [(CSDKeychainPasswordItem *)v9 initWithService:v10 account:@"registeredRelayProviders" accessGroup:v11];

  v13 = [(CSDCallProviderManagerDataSource *)self initWithSerialQueue:queueCopy localKeychainItem:v8 pairedHostKeychainItem:v12];
  return v13;
}

- (CSDCallProviderManagerDataSource)initWithSerialQueue:(id)queue localKeychainItem:(id)item pairedHostKeychainItem:(id)keychainItem
{
  queueCopy = queue;
  itemCopy = item;
  keychainItemCopy = keychainItem;
  v21.receiver = self;
  v21.super_class = CSDCallProviderManagerDataSource;
  v12 = [(CSDCallProviderManagerDataSource *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    queue = [(CSDCallProviderManagerDataSource *)v13 queue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10020C7FC;
    v16[3] = &unk_10061A450;
    v17 = v13;
    v18 = itemCopy;
    v19 = keychainItemCopy;
    v20 = queueCopy;
    dispatch_async(queue, v16);
  }

  return v13;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDCallProviderManagerDataSource;
  [(CSDCallProviderManagerDataSource *)&v4 dealloc];
}

- (BOOL)isRelayCallingGuaranteed
{
  v2 = +[CSDCallCapabilities sharedInstance];
  callCapabilitiesState = [v2 callCapabilitiesState];
  v4 = [callCapabilitiesState relayCallingAvailability] == 2;

  return v4;
}

- (NSDictionary)registeredLocalProvidersByIdentifier
{
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[NSMutableDictionary dictionary];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = +[TUCallProviderManager defaultProviders];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        identifier = [v10 identifier];
        [v4 setObject:v10 forKeyedSubscript:identifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v7);
  }

  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"registeredProvidersVersion", TUBundleIdentifierTelephonyUtilitiesFramework, 0);
  if (AppIntegerValue < 1)
  {
    v17 = AppIntegerValue;
    v18 = sub_100004778(AppIntegerValue);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v38 = v17;
      v39 = 1024;
      v40 = 1;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Not loading registered providers because current registered providers version is %ld and minimum version is %d", buf, 0x12u);
    }
  }

  else
  {
    keychainItem = [(CSDCallProviderManagerDataSource *)self keychainItem];
    v14 = [(CSDCallProviderManagerDataSource *)self _providersForKeychainItem:keychainItem];

    v15 = [v14 count];
    if (v15)
    {
      v16 = sub_100004778(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found local providers from keychain", buf, 2u);
      }
    }

    else
    {
      [(CSDCallProviderManagerDataSource *)self _providersForPreferenceKey:@"registeredProviders"];
      v14 = v16 = v14;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = v14;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v29 + 1) + 8 * j);
          identifier2 = [v23 identifier];
          [v4 setObject:v23 forKeyedSubscript:identifier2];
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v20);
    }
  }

  v26 = sub_100004778(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v4;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "registeredLocalProvidersByIdentifier: %@", buf, 0xCu);
  }

  v27 = [v4 copy];

  return v27;
}

- (void)setRegisteredLocalProvidersByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "registeredLocalProvidersByIdentifier: %@", buf, 0xCu);
  }

  allValues = [identifierCopy allValues];
  keychainItem = [(CSDCallProviderManagerDataSource *)self keychainItem];
  v14 = 0;
  [(CSDCallProviderManagerDataSource *)self _saveProviders:allValues forKeychainItem:keychainItem error:&v14];
  v10 = v14;

  if (v10)
  {
    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10047C368();
    }
  }

  v13 = TUBundleIdentifierTelephonyUtilitiesFramework;
  CFPreferencesSetAppValue(@"registeredProvidersVersion", &off_10063EDB0, TUBundleIdentifierTelephonyUtilitiesFramework);
  CFPreferencesAppSynchronize(v13);
}

- (NSDictionary)registeredPairedHostDeviceProvidersByIdentifier
{
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[NSMutableDictionary dictionary];
  pairedHostKeychainItem = [(CSDCallProviderManagerDataSource *)self pairedHostKeychainItem];
  v6 = [(CSDCallProviderManagerDataSource *)self _providersForKeychainItem:pairedHostKeychainItem];

  v7 = [v6 count];
  if (v7)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found paired host providers from keychain", buf, 2u);
    }
  }

  else
  {
    v9 = [(CSDCallProviderManagerDataSource *)self _providersForPreferenceKey:@"registeredRelayProviders"];

    v6 = v9;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        identifier = [v15 identifier];
        [v4 setObject:v15 forKeyedSubscript:identifier];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v12);
  }

  v18 = sub_100004778(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "registeredPairedHostDeviceProvidersByIdentifier: %@", buf, 0xCu);
  }

  v19 = [v4 copy];

  return v19;
}

- (void)setRegisteredPairedHostDeviceProvidersByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "registeredPairedHostDeviceProvidersByIdentifier: %@", buf, 0xCu);
  }

  allValues = [identifierCopy allValues];
  pairedHostKeychainItem = [(CSDCallProviderManagerDataSource *)self pairedHostKeychainItem];
  v13 = 0;
  [(CSDCallProviderManagerDataSource *)self _saveProviders:allValues forKeychainItem:pairedHostKeychainItem error:&v13];
  v10 = v13;

  if (v10)
  {
    v12 = sub_100004778(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10047C368();
    }
  }
}

- (BOOL)isDevicePasscodeLocked
{
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v3 = MKBGetDeviceLockState();
  if (v3 != 1)
  {
    LOBYTE(v3) = MKBGetDeviceLockState() == 2;
  }

  return v3;
}

- (NSSet)providerIdentifiersForExistingCalls
{
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  providerIdentifiersForExistingCalls = self->_providerIdentifiersForExistingCalls;

  return providerIdentifiersForExistingCalls;
}

- (void)openUserActivity:(id)activity usingApplicationWithBundleIdentifier:(id)identifier frontBoardOptions:(id)options completion:(id)completion
{
  activityCopy = activity;
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = sub_100004778(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412802;
    v23 = activityCopy;
    v24 = 2112;
    v25 = identifierCopy;
    v26 = 2112;
    v27 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Opening user activity %@ for bundle identifier %@ with options %@", &v22, 0x20u);
  }

  v17 = [LSApplicationRecord csd_applicationRecordForBundleIdentifier:identifierCopy];
  v18 = objc_alloc_init(_LSOpenConfiguration);
  v19 = [v18 setFrontBoardOptions:optionsCopy];
  if (v17)
  {
    v20 = +[LSApplicationWorkspace defaultWorkspace];
    [v20 openUserActivity:activityCopy usingApplicationRecord:v17 configuration:v18 completionHandler:completionCopy];
  }

  else
  {
    v21 = sub_100004778(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10047C3D0();
    }

    v20 = [NSError errorWithDomain:TUBundleIdentifierTelephonyUtilitiesFramework code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v20);
  }
}

- (BOOL)isSymbolicLinkAtURL:(id)l
{
  lCopy = l;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[NSFileManager defaultManager];
  path = [lCopy path];

  v14 = 0;
  v8 = [v6 attributesOfItemAtPath:path error:&v14];
  v9 = v14;

  if (v8)
  {
    v11 = [v8 objectForKeyedSubscript:NSFileType];
    v12 = [v11 isEqual:NSFileTypeSymbolicLink];
  }

  else
  {
    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10047C438();
    }

    v12 = 0;
  }

  return v12;
}

- (id)createLinkIfNecessaryWithFilename:(id)filename toURL:(id)l
{
  filenameCopy = filename;
  lCopy = l;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  ringtonesSandboxExtensionDirectory = [(CSDCallProviderManagerDataSource *)self ringtonesSandboxExtensionDirectory];
  v15 = 0;
  v10 = [ringtonesSandboxExtensionDirectory createLinkIfNecessaryWithFilename:filenameCopy toURL:lCopy error:&v15];
  v11 = v15;

  if (!v10)
  {
    v13 = sub_100004778(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v17 = lCopy;
      v18 = 2112;
      v19 = filenameCopy;
      v20 = 2112;
      v21 = v11;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error creating link to source URL '%@' with filename '%@': %@", buf, 0x20u);
    }
  }

  return v10;
}

- (void)removeLinksForFilenamesNotInArray:(id)array
{
  arrayCopy = array;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  ringtonesSandboxExtensionDirectory = [(CSDCallProviderManagerDataSource *)self ringtonesSandboxExtensionDirectory];
  v11 = 0;
  v7 = [ringtonesSandboxExtensionDirectory removeLinksForFilenamesNotInArray:arrayCopy error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    v10 = sub_100004778(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047C4A0();
    }
  }
}

- (BOOL)isProviderInstalled:(id)installed
{
  installedCopy = installed;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  bundleIdentifier = [installedCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    v7 = [LSApplicationRecord csd_applicationRecordForBundleIdentifier:bundleIdentifier];
  }

  else
  {
    v7 = 0;
  }

  applicationState = [v7 applicationState];
  isInstalled = [applicationState isInstalled];

  return isInstalled;
}

- (void)moveExistingPreferencesToKeychain
{
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [(CSDCallProviderManagerDataSource *)self _providersForPreferenceKey:@"registeredProviders"];
  v5 = [v4 count];
  if (v5)
  {
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found local provider data to move into keychain", buf, 2u);
    }

    keychainItem = [(CSDCallProviderManagerDataSource *)self keychainItem];
    v21 = 0;
    [(CSDCallProviderManagerDataSource *)self _saveProviders:v4 forKeychainItem:keychainItem error:&v21];
    v8 = v21;

    v10 = sub_100004778(v9);
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10047C368();
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing preferences for local registered providers", buf, 2u);
      }

      CFPreferencesSetAppValue(@"registeredProviders", 0, TUBundleIdentifierTelephonyUtilitiesFramework);
    }
  }

  v12 = [(CSDCallProviderManagerDataSource *)self _providersForPreferenceKey:@"registeredRelayProviders"];
  v13 = [v12 count];
  if (v13)
  {
    v14 = sub_100004778(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found paired host provider data to move into keychain", buf, 2u);
    }

    pairedHostKeychainItem = [(CSDCallProviderManagerDataSource *)self pairedHostKeychainItem];
    v20 = 0;
    [(CSDCallProviderManagerDataSource *)self _saveProviders:v12 forKeychainItem:pairedHostKeychainItem error:&v20];
    v16 = v20;

    v18 = sub_100004778(v17);
    v19 = v18;
    if (v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10047C368();
      }
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Removing preferences for paired host registered providers", buf, 2u);
      }

      CFPreferencesSetAppValue(@"registeredRelayProviders", 0, TUBundleIdentifierTelephonyUtilitiesFramework);
    }
  }
}

+ (id)dataForProviders:(id)providers
{
  providersCopy = providers;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [providersCopy count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = providersCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[CSDMessagingCallProvider alloc] initWithProvider:*(*(&v19 + 1) + 8 * i)];
        data = [(CSDMessagingCallProvider *)v10 data];
        [v4 addObject:data];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v18 = 0;
  v12 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:&v18];
  v13 = v18;
  v14 = v13;
  if (v13)
  {
    v15 = sub_100004778(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10047C520();
    }

    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  return v16;
}

- (BOOL)_saveProviders:(id)providers forKeychainItem:(id)item error:(id *)error
{
  providersCopy = providers;
  itemCopy = item;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [providersCopy mutableCopy];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  v13 = v11;
  if (v12)
  {
    v14 = v12;
    v15 = *v22;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v21 + 1) + 8 * v16);
      if ([v17 isSuperboxProvider])
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        v13 = v11;
        goto LABEL_12;
      }
    }

    v13 = v17;

    if (!v13)
    {
      goto LABEL_13;
    }

    [v11 removeObject:v13];
  }

LABEL_12:

LABEL_13:
  v18 = [objc_opt_class() dataForProviders:v11];
  [itemCopy saveData:v18 error:error];
  [(CSDCallProviderManagerDataSource *)self setSucceededAccessingKeychainOnLastAttempt:error == 0];
  hasSucceededAccessingKeychainOnLastAttempt = [(CSDCallProviderManagerDataSource *)self hasSucceededAccessingKeychainOnLastAttempt];

  return hasSucceededAccessingKeychainOnLastAttempt;
}

- (id)_providersForKeychainItem:(id)item
{
  itemCopy = item;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[NSMutableArray array];
  v40 = 0;
  v7 = [itemCopy readDataAndReturnError:&v40];
  v8 = v40;
  if (v8)
  {
    v9 = sub_100004778([(CSDCallProviderManagerDataSource *)self setSucceededAccessingKeychainOnLastAttempt:0]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10047C588();
    }

    if (!v7)
    {
      goto LABEL_30;
    }
  }

  else
  {
    [(CSDCallProviderManagerDataSource *)self setSucceededAccessingKeychainOnLastAttempt:1];
    if (!v7)
    {
      goto LABEL_30;
    }
  }

  v39 = 0;
  v10 = [NSPropertyListSerialization propertyListWithData:v7 options:0 format:0 error:&v39];
  v11 = v39;

  if (v10)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (!v14)
      {
        goto LABEL_29;
      }

      v15 = v14;
      v31 = v11;
      v32 = v10;
      v33 = v7;
      v34 = itemCopy;
      v16 = *v36;
      while (1)
      {
        v17 = 0;
        do
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v35 + 1) + 8 * v17);
          objc_opt_class();
          v19 = objc_opt_isKindOfClass();
          if (v19)
          {
            v20 = [[CSDMessagingCallProvider alloc] initWithData:v18];
            provider = [(CSDMessagingCallProvider *)v20 provider];

            if (provider)
            {
              [v6 addObject:provider];
              goto LABEL_21;
            }

            v24 = sub_100004778(v22);
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_20;
            }

            *buf = 138412290;
            v42 = v13;
            v25 = v24;
            v26 = "Could not deserialize data to TUCallProvider instance: %@";
            v27 = 12;
          }

          else
          {
            provider = sub_100004778(v19);
            if (!os_log_type_enabled(provider, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            v23 = objc_opt_class();
            *buf = 138412546;
            v42 = v23;
            v43 = 2112;
            v44 = v13;
            v24 = v23;
            v25 = provider;
            v26 = "Archived object was of unexpected class %@: %@";
            v27 = 22;
          }

          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v26, buf, v27);
LABEL_20:

LABEL_21:
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v28 = [v13 countByEnumeratingWithState:&v35 objects:v45 count:16];
        v15 = v28;
        if (!v28)
        {
          itemCopy = v34;
          v11 = v31;
          goto LABEL_29;
        }
      }
    }
  }

  v13 = sub_100004778(isKindOfClass);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10047C5F0(v10);
  }

LABEL_29:

  v8 = v11;
LABEL_30:
  v29 = [v6 copy];

  return v29;
}

- (id)_providersForPreferenceKey:(id)key
{
  keyCopy = key;
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[NSMutableArray array];
  preferencesForKeyBlock = [(CSDCallProviderManagerDataSource *)self preferencesForKeyBlock];
  v8 = (preferencesForKeyBlock)[2](preferencesForKeyBlock, keyCopy);

  if (v8)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (!v11)
      {
        goto LABEL_23;
      }

      v12 = v11;
      v28 = v8;
      v29 = keyCopy;
      v13 = *v31;
      while (1)
      {
        v14 = 0;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * v14);
          objc_opt_class();
          v16 = objc_opt_isKindOfClass();
          if (v16)
          {
            v17 = [[CSDMessagingCallProvider alloc] initWithData:v15];
            provider = [(CSDMessagingCallProvider *)v17 provider];

            if (provider)
            {
              [v6 addObject:provider];
              goto LABEL_15;
            }

            v21 = sub_100004778(v19);
            if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_14;
            }

            *buf = 138412290;
            v35 = v10;
            v22 = v21;
            v23 = "Could not deserialize data to TUCallProvider instance: %@";
            v24 = 12;
          }

          else
          {
            provider = sub_100004778(v16);
            if (!os_log_type_enabled(provider, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_15;
            }

            v20 = objc_opt_class();
            *buf = 138412546;
            v35 = v20;
            v36 = 2112;
            v37 = v10;
            v21 = v20;
            v22 = provider;
            v23 = "Archived object was of unexpected class %@: %@";
            v24 = 22;
          }

          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v23, buf, v24);
LABEL_14:

LABEL_15:
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v25 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
        v12 = v25;
        if (!v25)
        {
          goto LABEL_23;
        }
      }
    }

    v10 = sub_100004778(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047C5F0(v8);
    }

LABEL_23:
  }

  v26 = [v6 copy];

  return v26;
}

- (void)handleApplicationUnregisteredNotification:(id)notification
{
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020E718;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)callsChangedForCallCenterObserver:(id)observer
{
  callCenterObserver = [(CSDCallProviderManagerDataSource *)self callCenterObserver];
  callContainer = [callCenterObserver callContainer];
  currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];

  v7 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [currentAudioAndVideoCalls count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = currentAudioAndVideoCalls;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        provider = [*(*(&v19 + 1) + 8 * v12) provider];
        identifier = [provider identifier];

        if ([identifier length])
        {
          [v7 addObject:identifier];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  queue = [(CSDCallProviderManagerDataSource *)self queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10020E96C;
  v17[3] = &unk_100619D88;
  v17[4] = self;
  v18 = v7;
  v16 = v7;
  dispatch_async(queue, v17);
}

- (void)didChangeRelayCallingAvailability
{
  queue = [(CSDCallProviderManagerDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(CSDCallProviderManagerDataSource *)self delegate];
  [delegate relayCallingStateChangedForDataSource:self];
}

- (CSDCallProviderManagerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end