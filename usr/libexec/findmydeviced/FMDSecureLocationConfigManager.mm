@interface FMDSecureLocationConfigManager
+ (id)defaultStorageLocation;
- (FMDSecureLocationConfigManager)init;
- (FMDSecureLocationsConfigManagerDelegate)delegate;
- (id)_dictionaryFromConfigData:(id)data;
- (id)_parseConfigFile:(id)file;
- (id)_readConfigFromDictionary:(id)dictionary;
- (id)_removeContext:(id)context;
- (id)configForPolicy:(id)policy;
- (id)expirationTimeFor:(id)for;
- (void)_addContext:(id)context withExpiration:(id)expiration;
- (void)_archiveConfigFile:(id)file;
- (void)_policyRequested:(id)requested;
- (void)_readExistingConfigFile;
- (void)policyExpired:(id)expired;
- (void)removeMonitorWithContext:(id)context;
- (void)requestMonitorWithContext:(id)context;
- (void)updateConfigData:(id)data;
@end

@implementation FMDSecureLocationConfigManager

- (FMDSecureLocationConfigManager)init
{
  v18.receiver = self;
  v18.super_class = FMDSecureLocationConfigManager;
  v2 = [(FMDSecureLocationConfigManager *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_create("FMDSecureLocationConfigManagerPolicyUpdate", 0);
    policyManagerQueue = v2->_policyManagerQueue;
    v2->_policyManagerQueue = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    policyExpirationTimes = v2->_policyExpirationTimes;
    v2->_policyExpirationTimes = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    activePolicies = v2->_activePolicies;
    v2->_activePolicies = v7;

    v9 = [FMDataArchiver alloc];
    defaultStorageLocation = [objc_opt_class() defaultStorageLocation];
    v11 = [v9 initWithFileURL:defaultStorageLocation];
    [(FMDSecureLocationConfigManager *)v2 setDataArchiver:v11];

    dataArchiver = [(FMDSecureLocationConfigManager *)v2 dataArchiver];
    [dataArchiver setDataProtectionClass:4];

    dataArchiver2 = [(FMDSecureLocationConfigManager *)v2 dataArchiver];
    [dataArchiver2 setBackedUp:0];

    dataArchiver3 = [(FMDSecureLocationConfigManager *)v2 dataArchiver];
    [dataArchiver3 setCreateDirectories:1];

    [(FMDSecureLocationConfigManager *)v2 _readExistingConfigFile];
    v15 = [(FMDSecureLocationConfigManager *)v2 configForPolicy:kFMDSecureLocationModeBackgroundProactive];
    activeConfig = v2->_activeConfig;
    v2->_activeConfig = v15;
  }

  return v2;
}

+ (id)defaultStorageLocation
{
  v2 = objc_alloc_init(FMInternalFileContainer);
  v3 = [v2 url];
  v4 = [v3 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.secureLocations.config"];

  v6 = sub_1000029E0(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = @"SecureLocationConfig";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ archiverURL %@", &v8, 0x16u);
  }

  [v4 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:0];

  return v4;
}

- (void)_readExistingConfigFile
{
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BB770;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_async(policyManagerQueue, block);
}

- (void)_archiveConfigFile:(id)file
{
  fileCopy = file;
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BBA08;
  v7[3] = &unk_1002CD478;
  v7[4] = self;
  v8 = fileCopy;
  v6 = fileCopy;
  dispatch_async(policyManagerQueue, v7);
}

- (void)updateConfigData:(id)data
{
  dataCopy = data;
  v5 = sub_1000029E0(dataCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = @"SecureLocationConfig";
    v12 = 1024;
    v13 = dataCopy != 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Received updated config from server. Not nil %d", buf, 0x12u);
  }

  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001BBC90;
  v8[3] = &unk_1002CD478;
  v8[4] = self;
  v9 = dataCopy;
  v7 = dataCopy;
  dispatch_async(policyManagerQueue, v8);
}

- (id)_dictionaryFromConfigData:(id)data
{
  v9 = 0;
  v3 = [NSJSONSerialization JSONObjectWithData:data options:4 error:&v9];
  v4 = v9;
  v5 = v4;
  if (v4)
  {
    v6 = sub_1000029E0(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022DB68();
    }

    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

- (id)_parseConfigFile:(id)file
{
  v4 = [(FMDSecureLocationConfigManager *)self _dictionaryFromConfigData:file];
  if (v4)
  {
    v5 = [(FMDSecureLocationConfigManager *)self _readConfigFromDictionary:v4];
  }

  else
  {
    v6 = sub_1000029E0(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022DBE4();
    }

    v5 = 0;
  }

  return v5;
}

- (id)_readConfigFromDictionary:(id)dictionary
{
  v4 = [dictionary objectForKey:@"publishPolicies"];
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  publishPolicies = self->_publishPolicies;
  self->_publishPolicies = v5;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  allKeys = [v4 allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v4 objectForKeyedSubscript:v12];
        v14 = [[FMDSecureLocationConfig alloc] initWithName:v12 values:v13];
        [(NSMutableDictionary *)self->_publishPolicies setObject:v14 forKey:v12];
      }

      v9 = [allKeys countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v9);
  }

  v16 = sub_1000029E0(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    publishPolicies = [(FMDSecureLocationConfigManager *)self publishPolicies];
    v18 = [publishPolicies count];
    v19 = self->_publishPolicies;
    *buf = 138412802;
    v31 = @"SecureLocationConfig";
    v32 = 2048;
    v33 = v18;
    v34 = 2112;
    v35 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ Read %lu policies from config. Policies %@", buf, 0x20u);
  }

  v20 = [(NSMutableDictionary *)self->_publishPolicies objectForKeyedSubscript:kFMDSecureLocationModeBackgroundProactive];
  v21 = sub_1000029E0(v20);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      policyName = [v20 policyName];
      *buf = 138412546;
      v31 = @"SecureLocationConfig";
      v32 = 2112;
      v33 = policyName;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ Setting defaultPolicy %@", buf, 0x16u);
    }

    v24 = v20;
  }

  else
  {
    if (v22)
    {
      *buf = 138412290;
      v31 = @"SecureLocationConfig";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ Failed to read policy from config data", buf, 0xCu);
    }
  }

  return v20;
}

- (id)configForPolicy:(id)policy
{
  policyCopy = policy;
  publishPolicies = [(FMDSecureLocationConfigManager *)self publishPolicies];
  v6 = [publishPolicies objectForKeyedSubscript:policyCopy];

  v8 = sub_1000029E0(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      v18 = 138412546;
      v19 = @"SecureLocationConfig";
      v20 = 2112;
      v21 = policyCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Found config for policy %@", &v18, 0x16u);
    }

    v10 = v6;
    goto LABEL_5;
  }

  if (v9)
  {
    v18 = 138412546;
    v19 = @"SecureLocationConfig";
    v20 = 2112;
    v21 = policyCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ No config found with name %@ from server configs. Creating with default values if name matches", &v18, 0x16u);
  }

  v12 = kFMDSecureLocationModeLive;
  if (![policyCopy caseInsensitiveCompare:kFMDSecureLocationModeLive])
  {
    v15 = +[NSMutableDictionary dictionary];
    [v15 setObject:@"1.0" forKeyedSubscript:@"minDistanceBetweenPublish"];
    [v15 setObject:@"0.97" forKeyedSubscript:@"minTimeBetweenPublish"];
    [v15 setObject:@"3600" forKeyedSubscript:@"expirationInterval"];
    [v15 setObject:@"4" forKeyedSubscript:@"heartbeatPublish"];
    [v15 setObject:@"5" forKeyedSubscript:@"priority"];
    v16 = off_1002D0EE8;
LABEL_21:
    [v15 setObject:*v16 forKeyedSubscript:@"desiredAccuracy"];
    v11 = [[FMDSecureLocationConfig alloc] initWithName:v12 values:v15];

    goto LABEL_22;
  }

  v12 = kFMDSecureLocationModeProactiveShallow;
  if (![policyCopy caseInsensitiveCompare:kFMDSecureLocationModeProactiveShallow])
  {
    v15 = +[NSMutableDictionary dictionary];
    [v15 setObject:@"25" forKeyedSubscript:@"minDistanceBetweenPublish"];
    [v15 setObject:@"30" forKeyedSubscript:@"minTimeBetweenPublish"];
    [v15 setObject:@"240" forKeyedSubscript:@"expirationInterval"];
    [v15 setObject:@"50" forKeyedSubscript:@"heartbeatPublish"];
    [v15 setObject:@"4" forKeyedSubscript:@"priority"];
    v16 = off_1002D0EF8;
    goto LABEL_21;
  }

  v12 = kFMDSecureLocationModeOwnerProactive;
  if (![policyCopy caseInsensitiveCompare:kFMDSecureLocationModeOwnerProactive])
  {
    v15 = +[NSMutableDictionary dictionary];
    [v15 setObject:@"0.0" forKeyedSubscript:@"minDistanceBetweenPublish"];
    [v15 setObject:@"3000" forKeyedSubscript:@"minTimeBetweenPublish"];
    [v15 setObject:@"86400.0" forKeyedSubscript:@"expirationInterval"];
    [v15 setObject:@"3000" forKeyedSubscript:@"heartbeatPublish"];
    [v15 setObject:@"1" forKeyedSubscript:@"priority"];
    v16 = off_1002D0F00;
    goto LABEL_21;
  }

  if (![policyCopy caseInsensitiveCompare:kFMDSecureLocationModeProactive])
  {
    v10 = objc_alloc_init(FMDSecureLocationConfig);
LABEL_5:
    v11 = v10;
    goto LABEL_22;
  }

  v12 = kFMDSecureLocationModeBackgroundProactive;
  v13 = [policyCopy caseInsensitiveCompare:kFMDSecureLocationModeBackgroundProactive];
  if (!v13)
  {
    v15 = +[NSMutableDictionary dictionary];
    [v15 setObject:@"10000" forKeyedSubscript:@"minDistanceBetweenPublish"];
    [v15 setObject:@"3600" forKeyedSubscript:@"minTimeBetweenPublish"];
    [v15 setObject:@"86400.0" forKeyedSubscript:@"expirationInterval"];
    [v15 setObject:@"900" forKeyedSubscript:@"minTimeBetweenVisitPublish"];
    [v15 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldWakeDevice"];
    [v15 setObject:@"0" forKeyedSubscript:@"priority"];
    v16 = &off_1002D0F18;
    goto LABEL_21;
  }

  v14 = sub_1000029E0(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = @"SecureLocationConfig";
    v20 = 2112;
    v21 = policyCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ Invalid policy name specified %@", &v18, 0x16u);
  }

  v11 = 0;
LABEL_22:

  return v11;
}

- (void)requestMonitorWithContext:(id)context
{
  contextCopy = context;
  objc_initWeak(&location, self);
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BC8D8;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(policyManagerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_addContext:(id)context withExpiration:(id)expiration
{
  contextCopy = context;
  expirationCopy = expiration;
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  dispatch_assert_queue_V2(policyManagerQueue);

  activePolicies = [(FMDSecureLocationConfigManager *)self activePolicies];
  mode = [contextCopy mode];
  v11 = [activePolicies objectForKey:mode];

  if (!v11)
  {
    v11 = +[NSMutableDictionary dictionary];
    activePolicies2 = [(FMDSecureLocationConfigManager *)self activePolicies];
    mode2 = [contextCopy mode];
    [activePolicies2 setObject:v11 forKey:mode2];
  }

  findMyId = [contextCopy findMyId];
  [v11 setObject:expirationCopy forKey:findMyId];

  v16 = sub_1000029E0(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    mode3 = [contextCopy mode];
    findMyId2 = [contextCopy findMyId];
    v19 = 138413058;
    v20 = @"SecureLocationConfig";
    v21 = 2112;
    v22 = mode3;
    v23 = 2112;
    v24 = expirationCopy;
    v25 = 2112;
    v26 = findMyId2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ Added policy %@ expiration to %@ for %@", &v19, 0x2Au);
  }
}

- (void)_policyRequested:(id)requested
{
  requestedCopy = requested;
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  dispatch_assert_queue_V2(policyManagerQueue);

  delegate = [(FMDSecureLocationConfigManager *)self delegate];
  v7 = [(FMDSecureLocationConfigManager *)self configForPolicy:requestedCopy];
  v8 = sub_1000029E0(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    activeConfig = [(FMDSecureLocationConfigManager *)self activeConfig];
    v23 = 138412802;
    v24 = @"SecureLocationConfig";
    v25 = 2112;
    v26 = requestedCopy;
    v27 = 2112;
    v28 = activeConfig;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ policyRequested %@. Current activeConfig %@", &v23, 0x20u);
  }

  activeConfig2 = [(FMDSecureLocationConfigManager *)self activeConfig];
  if (activeConfig2 && (v11 = activeConfig2, v12 = [v7 priority], -[FMDSecureLocationConfigManager activeConfig](self, "activeConfig"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "priority"), v13, v11, v12 <= v14))
  {
    policyName = [v7 policyName];
    activeConfig3 = [(FMDSecureLocationConfigManager *)self activeConfig];
    policyName2 = [activeConfig3 policyName];
    v22 = [policyName isEqualToString:policyName2];

    if (v22 && delegate)
    {
      activeConfig4 = [(FMDSecureLocationConfigManager *)self activeConfig];
      [delegate activeConfigExtended:activeConfig4];
      goto LABEL_12;
    }
  }

  else
  {
    v15 = sub_1000029E0(activeConfig2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      activeConfig5 = [(FMDSecureLocationConfigManager *)self activeConfig];
      policyName3 = [activeConfig5 policyName];
      v23 = 138412802;
      v24 = @"SecureLocationConfig";
      v25 = 2112;
      v26 = policyName3;
      v27 = 2112;
      v28 = requestedCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Switching active policy from %@ to %@", &v23, 0x20u);
    }

    [(FMDSecureLocationConfigManager *)self setActiveConfig:v7];
    if (delegate)
    {
      activeConfig4 = [(FMDSecureLocationConfigManager *)self activeConfig];
      [delegate activeConfigChanged:activeConfig4];
LABEL_12:
    }
  }
}

- (void)removeMonitorWithContext:(id)context
{
  contextCopy = context;
  objc_initWeak(&location, self);
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BCF84;
  v7[3] = &unk_1002CE3B8;
  objc_copyWeak(&v10, &location);
  v8 = contextCopy;
  selfCopy = self;
  v6 = contextCopy;
  dispatch_async(policyManagerQueue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (id)_removeContext:(id)context
{
  contextCopy = context;
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  dispatch_assert_queue_V2(policyManagerQueue);

  mode = [contextCopy mode];
  if (!mode || (v7 = mode, [contextCopy findMyId], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v11 = sub_1000029E0(mode);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022DCE4();
    }

    goto LABEL_10;
  }

  activePolicies = [(FMDSecureLocationConfigManager *)self activePolicies];
  mode2 = [contextCopy mode];
  v11 = [activePolicies objectForKey:mode2];

  if (!v11)
  {
    v19 = sub_1000029E0(v12);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      mode3 = [contextCopy mode];
      v23 = 138412546;
      v24 = @"SecureLocationConfig";
      v25 = 2114;
      v26 = mode3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ No active contexts for mode %{public}@", &v23, 0x16u);
    }

    lastObject = 0;
    goto LABEL_14;
  }

  findMyId = [contextCopy findMyId];
  [v11 removeObjectForKey:findMyId];

  v15 = sub_1000029E0(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    findMyId2 = [contextCopy findMyId];
    mode4 = [contextCopy mode];
    v23 = 138412802;
    v24 = @"SecureLocationConfig";
    v25 = 2114;
    v26 = findMyId2;
    v27 = 2114;
    v28 = mode4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Removed active sub for %{public}@ in mode %{public}@", &v23, 0x20u);
  }

  if (![v11 count])
  {
LABEL_10:
    lastObject = 0;
    goto LABEL_15;
  }

  allValues = [v11 allValues];
  v19 = [allValues sortedArrayUsingComparator:&stru_1002D0CF8];

  lastObject = [v19 lastObject];
LABEL_14:

LABEL_15:

  return lastObject;
}

- (id)expirationTimeFor:(id)for
{
  forCopy = for;
  policyExpirationTimes = [(FMDSecureLocationConfigManager *)self policyExpirationTimes];
  v6 = [policyExpirationTimes objectForKey:forCopy];

  return v6;
}

- (void)policyExpired:(id)expired
{
  expiredCopy = expired;
  objc_initWeak(&location, self);
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BD70C;
  v7[3] = &unk_1002CE3B8;
  objc_copyWeak(&v10, &location);
  v8 = expiredCopy;
  selfCopy = self;
  v6 = expiredCopy;
  dispatch_async(policyManagerQueue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (FMDSecureLocationsConfigManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end