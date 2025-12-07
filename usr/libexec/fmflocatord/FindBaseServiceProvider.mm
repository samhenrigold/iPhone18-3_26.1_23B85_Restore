@interface FindBaseServiceProvider
- (BOOL)enqueueRequest:(id)request;
- (BOOL)isProviderEnabledForLocations;
- (FindBaseServiceProvider)init;
- (NSMutableDictionary)fullDeviceInfo;
- (NSMutableDictionary)locationDeviceInfo;
- (NSString)lastForcedRegisterTimePrefKey;
- (id)_constructLocationDeviceInfo;
- (id)_constructNonCriticalFullDeviceInfo;
- (id)_constructNonEssentialDeviceInfo;
- (id)_constructNonVolatileFullDeviceInfo;
- (id)_constructPairedDevicesInfo;
- (id)_constructStandardDeviceContext;
- (id)_constructVolatileFullDeviceInfo;
- (id)_nonEssentialRegisterDigestPrefKey;
- (id)_registerDigestPrefKey;
- (id)alertActionInfoForAction:(id)action andURL:(id)l;
- (id)copyHandlerForCommand:(id)command params:(id)params;
- (id)formattedURLForTemplate:(id)template;
- (id)substituteStandardURLPlaceholders:(id)placeholders;
- (unsigned)authInvalidError;
- (unsigned)essentialServerInfoMissingError;
- (void)_beginXPCTransaction;
- (void)_endXPCTransaction;
- (void)_registerDeviceWithCause:(id)cause includeKeys:(unint64_t)keys;
- (void)ackLocateCommand:(id)command withStatusCode:(int64_t)code andStatusMessage:(id)message withCompletion:(id)completion;
- (void)ackRegisterCommand:(id)command withCompletion:(id)completion;
- (void)appInstallStateChanged:(id)changed;
- (void)dealloc;
- (void)deinitializeProvider;
- (void)deleteRegisterDigest;
- (void)deregisterCommonNotifications;
- (void)didCancelRequest:(id)request;
- (void)didReceiveResponseFor:(id)for;
- (void)handleQueueCheckResponseWithStatus:(int64_t)status andBody:(id)body;
- (void)registerCommonNotifications;
- (void)registerDeviceWithCause:(id)cause force:(BOOL)force includeKeys:(unint64_t)keys;
- (void)sendCurrentLocation:(id)location isFinished:(BOOL)finished forCmd:(id)cmd withReason:(int64_t)reason andAccuracyChange:(double)change;
- (void)sendQueueCheckRequest:(id)request withReasons:(id)reasons;
- (void)showAlertFromServerResponse:(id)response;
- (void)tryToFetchAuthToken;
- (void)unregisterDevice;
@end

@implementation FindBaseServiceProvider

- (void)dealloc
{
  standardLocator = [(FindBaseServiceProvider *)self standardLocator];
  [standardLocator stopLocator];

  v4.receiver = self;
  v4.super_class = FindBaseServiceProvider;
  [(FindBaseServiceProvider *)&v4 dealloc];
}

- (FindBaseServiceProvider)init
{
  v7.receiver = self;
  v7.super_class = FindBaseServiceProvider;
  v2 = [(FindBaseServiceProvider *)&v7 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    [(FindBaseServiceProvider *)v2 setRequests:v3];

    v4 = objc_opt_new();
    [(FindBaseServiceProvider *)v2 setRequestModifierLock:v4];

    v5 = dispatch_queue_create("fmf.deviceRegisterQ", 0);
    [(FindBaseServiceProvider *)v2 setRegisterQueue:v5];
  }

  return v2;
}

- (void)registerCommonNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"deviceNameChanged:" name:@"DeviceNameChangedNotification" object:0];
  [v3 addObserver:self selector:"locationServicesStateChanged:" name:@"LocationServicesStateChangedNotification" object:0];
  [v3 addObserver:self selector:"fmfLocationServicesStateChanged:" name:@"ShareMyLocationInLocationServicesStatusChanged" object:0];
  [v3 addObserver:self selector:"localeChanged:" name:@"LocaleChangedNotification" object:0];
  [v3 addObserver:self selector:"appInstallStateChanged:" name:@"FMFAppInstallStateChangedNotification" object:0];
}

- (void)deregisterCommonNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"DeviceNameChangedNotification" object:0];
  [v3 removeObserver:self name:@"LocationServicesStateChangedNotification" object:0];
  [v3 removeObserver:self name:@"ShareMyLocationInLocationServicesStatusChanged" object:0];
  [v3 removeObserver:self name:@"LocaleChangedNotification" object:0];
  [v3 removeObserver:self name:@"FMFAppInstallStateChangedNotification" object:0];
}

- (void)deleteRegisterDigest
{
  _registerDigestPrefKey = [(FindBaseServiceProvider *)self _registerDigestPrefKey];
  [FMPreferencesUtil removeKey:_registerDigestPrefKey inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  _nonEssentialRegisterDigestPrefKey = [(FindBaseServiceProvider *)self _nonEssentialRegisterDigestPrefKey];
  [FMPreferencesUtil removeKey:_nonEssentialRegisterDigestPrefKey inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  lastForcedRegisterTimePrefKey = [(FindBaseServiceProvider *)self lastForcedRegisterTimePrefKey];
  [FMPreferencesUtil removeKey:lastForcedRegisterTimePrefKey inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
}

- (void)deinitializeProvider
{
  selfCopy = self;
  v32.receiver = self;
  v32.super_class = FindBaseServiceProvider;
  deinitializeProvider = [(ServiceProvider *)&v32 deinitializeProvider];
  v4 = sub_100002830(deinitializeProvider);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    fm_logID = [(FindBaseServiceProvider *)selfCopy fm_logID];
    *buf = 138412290;
    v34 = fm_logID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ Deinitializing...", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  requests = [(FindBaseServiceProvider *)selfCopy requests];
  cancel = [requests countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (cancel)
  {
    v9 = cancel;
    v10 = *v29;
    *&v8 = 138412546;
    v27 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(requests);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        v13 = sub_100002830(cancel);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          [(FindBaseServiceProvider *)selfCopy fm_logID];
          v15 = v14 = selfCopy;
          fm_logID2 = [v12 fm_logID];
          *buf = v27;
          v34 = v15;
          v35 = 2112;
          v36 = fm_logID2;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ cancelling request %@", buf, 0x16u);

          selfCopy = v14;
        }

        [v12 setDelegate:0];
        cancel = [v12 cancel];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      cancel = [requests countByEnumeratingWithState:&v28 objects:v37 count:16];
      v9 = cancel;
    }

    while (cancel);
  }

  v17 = +[NSMutableArray array];
  [(FindBaseServiceProvider *)selfCopy setRequests:v17];

  standardLocator = [(FindBaseServiceProvider *)selfCopy standardLocator];
  if (standardLocator)
  {
    v19 = standardLocator;
    standardLocator2 = [(FindBaseServiceProvider *)selfCopy standardLocator];
    locatorRunning = [standardLocator2 locatorRunning];

    if (locatorRunning)
    {
      v23 = sub_100002830(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Stopping standard locate...", buf, 2u);
      }

      standardLocator3 = [(FindBaseServiceProvider *)selfCopy standardLocator];
      [standardLocator3 stopLocator];

      standardLocator4 = [(FindBaseServiceProvider *)selfCopy standardLocator];
      [standardLocator4 setReceivedLocationBlock:0];

      standardLocator5 = [(FindBaseServiceProvider *)selfCopy standardLocator];
      [standardLocator5 setStoppedLocatorBlock:0];
    }
  }

  [(FindBaseServiceProvider *)selfCopy setStandardLocator:0, v27];
}

- (id)formattedURLForTemplate:(id)template
{
  templateCopy = template;
  v5 = [(FindBaseServiceProvider *)self substituteStandardURLPlaceholders:templateCopy];
  v6 = [[NSURL alloc] initWithString:v5];
  if (!v6)
  {
    v7 = sub_100002830(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = templateCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not create an NSURL from the url string %@ for the template %@", &v9, 0x16u);
    }
  }

  return v6;
}

- (id)substituteStandardURLPlaceholders:(id)placeholders
{
  placeholdersCopy = placeholders;
  v5 = +[PreferencesMgr sharedInstance];
  hostportOverride = [v5 hostportOverride];

  if ([hostportOverride length])
  {
    v7 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${hostname}" withString:hostportOverride];
  }

  else
  {
    account = [(ServiceProvider *)self account];
    serverHost = [account serverHost];

    if (!serverHost)
    {
      goto LABEL_6;
    }

    account2 = [(ServiceProvider *)self account];
    serverHost2 = [account2 serverHost];
    v7 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${hostname}" withString:serverHost2];

    placeholdersCopy = account2;
  }

  placeholdersCopy = v7;
LABEL_6:
  v12 = +[PreferencesMgr sharedInstance];
  protocolSchemeOverride = [v12 protocolSchemeOverride];

  if ([protocolSchemeOverride length])
  {
    v14 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${scheme}" withString:protocolSchemeOverride];
  }

  else
  {
    account3 = [(ServiceProvider *)self account];
    serverProtocolScheme = [account3 serverProtocolScheme];

    if (!serverProtocolScheme)
    {
      goto LABEL_11;
    }

    account4 = [(ServiceProvider *)self account];
    serverProtocolScheme2 = [account4 serverProtocolScheme];
    v14 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${scheme}" withString:serverProtocolScheme2];

    placeholdersCopy = account4;
  }

  placeholdersCopy = v14;
LABEL_11:
  serviceIdentifierInURL = [(FindBaseServiceProvider *)self serviceIdentifierInURL];

  if (serviceIdentifierInURL)
  {
    serviceIdentifierInURL2 = [(FindBaseServiceProvider *)self serviceIdentifierInURL];
    v21 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${service}" withString:serviceIdentifierInURL2];

    placeholdersCopy = v21;
  }

  account5 = [(ServiceProvider *)self account];
  authId = [account5 authId];

  if (authId)
  {
    account6 = [(ServiceProvider *)self account];
    authId2 = [account6 authId];
    v26 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${dsid}" withString:authId2];

    placeholdersCopy = v26;
  }

  v27 = +[SystemConfig sharedInstance];
  deviceUDID = [v27 deviceUDID];

  if (deviceUDID)
  {
    v29 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${udid}" withString:deviceUDID];

    placeholdersCopy = v29;
  }

  return placeholdersCopy;
}

- (NSMutableDictionary)fullDeviceInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_autoreleasePoolPush();
  _constructNonVolatileFullDeviceInfo = [(FindBaseServiceProvider *)self _constructNonVolatileFullDeviceInfo];
  [v3 addEntriesFromDictionary:_constructNonVolatileFullDeviceInfo];

  _constructVolatileFullDeviceInfo = [(FindBaseServiceProvider *)self _constructVolatileFullDeviceInfo];
  [v3 addEntriesFromDictionary:_constructVolatileFullDeviceInfo];

  _constructNonCriticalFullDeviceInfo = [(FindBaseServiceProvider *)self _constructNonCriticalFullDeviceInfo];
  [v3 addEntriesFromDictionary:_constructNonCriticalFullDeviceInfo];

  v8 = +[PreferencesMgr sharedInstance];
  deviceInfoOverrides = [v8 deviceInfoOverrides];

  if (deviceInfoOverrides)
  {
    [v3 addEntriesFromDictionary:deviceInfoOverrides];
  }

  objc_autoreleasePoolPop(v4);

  return v3;
}

- (NSMutableDictionary)locationDeviceInfo
{
  _constructLocationDeviceInfo = [(FindBaseServiceProvider *)self _constructLocationDeviceInfo];
  _constructNonVolatileFullDeviceInfo = [(FindBaseServiceProvider *)self _constructNonVolatileFullDeviceInfo];
  [_constructLocationDeviceInfo addEntriesFromDictionary:_constructNonVolatileFullDeviceInfo];

  _constructVolatileFullDeviceInfo = [(FindBaseServiceProvider *)self _constructVolatileFullDeviceInfo];
  [_constructLocationDeviceInfo addEntriesFromDictionary:_constructVolatileFullDeviceInfo];

  _constructNonCriticalFullDeviceInfo = [(FindBaseServiceProvider *)self _constructNonCriticalFullDeviceInfo];
  [_constructLocationDeviceInfo addEntriesFromDictionary:_constructNonCriticalFullDeviceInfo];

  v7 = +[PreferencesMgr sharedInstance];
  locationDeviceInfoOverrides = [v7 locationDeviceInfoOverrides];

  if (locationDeviceInfoOverrides)
  {
    [_constructLocationDeviceInfo addEntriesFromDictionary:locationDeviceInfoOverrides];
  }

  return _constructLocationDeviceInfo;
}

- (id)_constructStandardDeviceContext
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[NSDate date];
  stringValueForServer = [v3 stringValueForServer];

  if (stringValueForServer)
  {
    [v2 setObject:stringValueForServer forKeyedSubscript:@"deviceTS"];
  }

  return v2;
}

- (id)_constructVolatileFullDeviceInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[SystemConfig sharedInstance];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isLocationServicesEnabled]);
  [v3 setObject:v5 forKeyedSubscript:@"locationServicesEnabled"];

  v6 = +[SystemConfig sharedInstance];
  LODWORD(v4) = [v6 isShareMyLocationSystemServiceEnabled];

  if (v4)
  {
    v7 = sub_10001BB68([v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"smlLS"]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100036EC0(v7);
    }
  }

  else
  {
    v7 = sub_10001BB68([v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"smlLS"]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "smlLS is OFF", v25, 2u);
    }
  }

  v8 = +[SystemConfig sharedInstance];
  deviceName = [v8 deviceName];
  [v3 fm_safelyMapKey:@"deviceName" toObject:deviceName];

  v10 = +[SystemConfig sharedInstance];
  timezone = [v10 timezone];
  [v3 fm_safelyMapKey:@"timezone" toObject:timezone];

  v12 = +[SystemConfig sharedInstance];
  locale = [v12 locale];
  [v3 fm_safelyMapKey:@"locale" toObject:locale];

  v14 = +[SystemConfig sharedInstance];
  v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 processIdentifier]);
  stringValue = [v15 stringValue];
  [v3 fm_safelyMapKey:@"processId" toObject:stringValue];

  v17 = +[SystemConfig sharedInstance];
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 unlockState]);
  [v3 setObject:v18 forKeyedSubscript:@"unlockState"];

  v19 = +[SystemConfig sharedInstance];
  isFMFAppRemoved = [v19 isFMFAppRemoved];

  v21 = [NSNumber numberWithBool:isFMFAppRemoved];
  [v3 fm_safelyMapKey:@"isFMFAppRemoved" toObject:v21];

  v22 = objc_alloc_init(FMDGainsboroughPairedDeviceSimulation);
  if ([(FMDGainsboroughPairedDeviceSimulation *)v22 isPairedDeviceSimulationActive])
  {
    [v3 fm_safelyMapKey:@"deviceName" toObject:@"Gainsborough's iPhone"];
  }

  _constructPairedDevicesInfo = [(FindBaseServiceProvider *)self _constructPairedDevicesInfo];
  [v3 setObject:_constructPairedDevicesInfo forKeyedSubscript:@"otherDevices"];

  return v3;
}

- (id)_constructNonVolatileFullDeviceInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[SystemConfig sharedInstance];
  deviceUDID = [v4 deviceUDID];
  [v3 fm_safelyMapKey:@"udid" toObject:deviceUDID];

  v6 = +[SystemConfig sharedInstance];
  LODWORD(v4) = [v6 canRegisterWithIDSID];

  if (v4)
  {
    v7 = +[SystemConfig sharedInstance];
    idsDeviceID = [v7 idsDeviceID];
    [v3 fm_safelyMapKey:@"idsDeviceId" toObject:idsDeviceID];
  }

  v9 = +[SystemConfig sharedInstance];
  deviceClassString = [v9 deviceClassString];
  [v3 fm_safelyMapKey:@"deviceClass" toObject:deviceClassString];

  v11 = +[SystemConfig sharedInstance];
  productType = [v11 productType];
  [v3 fm_safelyMapKey:@"productType" toObject:productType];

  v13 = +[SystemConfig sharedInstance];
  buildVersion = [v13 buildVersion];
  [v3 fm_safelyMapKey:@"buildVersion" toObject:buildVersion];

  v15 = +[SystemConfig sharedInstance];
  productVersion = [v15 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:productVersion];

  v17 = +[SystemConfig sharedInstance];
  platform = [v17 platform];
  [v3 fm_safelyMapKey:@"platform" toObject:platform];

  v19 = +[FMSystemInfo sharedInstance];
  v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v19 isInternalBuild]);
  [v3 fm_safelyMapKey:@"isInternal" toObject:v20];

  v21 = +[SystemConfig sharedInstance];
  serialNumber = [v21 serialNumber];
  [v3 fm_safelyMapKey:@"serialNumber" toObject:serialNumber];

  account = [(ServiceProvider *)self account];
  versionHistory = [account versionHistory];
  v25 = [versionHistory componentsJoinedByString:{@", "}];
  [v3 fm_safelyMapKey:@"versionHistory" toObject:v25];

  v26 = +[SystemConfig sharedInstance];
  deviceColor = [v26 deviceColor];
  [v3 fm_safelyMapKey:@"deviceColor" toObject:deviceColor];

  v28 = +[SystemConfig sharedInstance];
  deviceEnclosureColor = [v28 deviceEnclosureColor];
  [v3 fm_safelyMapKey:@"enclosureColor" toObject:deviceEnclosureColor];

  v30 = +[SystemConfig sharedInstance];
  v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v30 forceTouchAvailable]);
  [v3 fm_safelyMapKey:@"supportsForceTouch" toObject:v31];

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"supportsNotifyV2"];
  v32 = +[SystemConfig sharedInstance];
  v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v32 deviceSupportsUltraLowPowerNetworking]);
  [v3 fm_safelyMapKey:@"ulpnCapable" toObject:v33];

  return v3;
}

- (id)_constructNonEssentialDeviceInfo
{
  v2 = objc_alloc_init(NSMutableDictionary);

  return v2;
}

- (id)_constructNonCriticalFullDeviceInfo
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[SystemConfig sharedInstance];
  v4 = v3;
  if (v3)
  {
    objc_msgSend_batteryStats(v3);
  }

  return v2;
}

- (id)_constructLocationDeviceInfo
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[SystemConfig sharedInstance];
  deviceUDID = [v3 deviceUDID];
  [v2 fm_safelyMapKey:@"udid" toObject:deviceUDID];

  v5 = +[SystemConfig sharedInstance];
  v6 = v5;
  if (v5)
  {
    objc_msgSend_batteryStats(v5);
  }

  return v2;
}

- (id)_registerDigestPrefKey
{
  account = [(ServiceProvider *)self account];
  v4 = objc_opt_class();
  account2 = [(ServiceProvider *)self account];
  uniqueId = [account2 uniqueId];
  v7 = [NSString stringWithFormat:@"RegisterDigest-%@-%@", v4, uniqueId];

  return v7;
}

- (id)_nonEssentialRegisterDigestPrefKey
{
  account = [(ServiceProvider *)self account];
  v4 = objc_opt_class();
  account2 = [(ServiceProvider *)self account];
  uniqueId = [account2 uniqueId];
  v7 = [NSString stringWithFormat:@"RegisterDigestNonEssential-%@-%@", v4, uniqueId];

  return v7;
}

- (NSString)lastForcedRegisterTimePrefKey
{
  account = [(ServiceProvider *)self account];
  v4 = objc_opt_class();
  account2 = [(ServiceProvider *)self account];
  uniqueId = [account2 uniqueId];
  v7 = [NSString stringWithFormat:@"LastForcedRegisterTime-%@-%@", v4, uniqueId];

  return v7;
}

- (id)_constructPairedDevicesInfo
{
  v35 = +[NSMutableArray array];
  context = objc_autoreleasePoolPush();
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  getPairedDevices = [v2 getPairedDevices];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = getPairedDevices;
  v4 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    v7 = NRDevicePropertyIsPaired;
    v8 = NRDevicePropertyIsAltAccount;
    v32 = NRDevicePropertyLastActiveDate;
    v31 = NRDevicePropertyUDID;
    v30 = NRDevicePropertyProductType;
    v29 = NRDevicePropertyName;
    v33 = *v38;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        v11 = [v10 valueForProperty:v7];
        bOOLValue = [v11 BOOLValue];

        v13 = [v10 valueForProperty:v8];
        bOOLValue2 = [v13 BOOLValue];

        if (bOOLValue && (bOOLValue2 & 1) == 0)
        {
          v15 = +[NSMutableDictionary dictionary];
          v16 = [v10 valueForProperty:v32];
          v17 = v16;
          if (v16)
          {
            v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v16 fm_epoch]);
          }

          else
          {
            v18 = &off_100062F40;
          }

          [v15 fm_safelyMapKey:@"lastActiveTime" toObject:v18];
          [v15 fm_safelyMapKey:@"deviceClass" toObject:@"Watch"];
          [v15 fm_safelyMapKey:@"platform" toObject:@"watchos"];
          v19 = [(FindBaseServiceProvider *)self connectionStringForNRDevice:v10];
          [v15 fm_safelyMapKey:@"connectionStatus" toObject:v19];

          v20 = [(FindBaseServiceProvider *)self pairingIdForNRDevice:v10];
          uUIDString = [v20 UUIDString];
          [v15 fm_safelyMapKey:@"pairingId" toObject:uUIDString];

          v22 = [v10 valueForProperty:v31];
          [v15 fm_safelyMapKey:@"udid" toObject:v22];

          v23 = [v10 valueForProperty:v30];
          [v15 fm_safelyMapKey:@"productType" toObject:v23];

          v24 = [v10 valueForProperty:v29];
          [v15 fm_safelyMapKey:@"deviceName" toObject:v24];

          [v35 addObject:v15];
          v6 = v33;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(context);
  v25 = objc_alloc_init(FMDGainsboroughPairedDeviceSimulation);
  if ([(FMDGainsboroughPairedDeviceSimulation *)v25 isPairedDeviceSimulationActive])
  {
    pairedDeviceInfo = [(FMDGainsboroughPairedDeviceSimulation *)v25 pairedDeviceInfo];
    [v35 addObjectsFromArray:pairedDeviceInfo];
  }

  return v35;
}

- (void)registerDeviceWithCause:(id)cause force:(BOOL)force includeKeys:(unint64_t)keys
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10000EFDC;
  v16[4] = sub_10000EFEC;
  causeCopy = cause;
  v17 = causeCopy;
  registerQueue = [(FindBaseServiceProvider *)self registerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EFF4;
  block[3] = &unk_10005D690;
  block[4] = self;
  v12 = causeCopy;
  forceCopy = force;
  v13 = v16;
  keysCopy = keys;
  v10 = causeCopy;
  dispatch_async(registerQueue, block);

  _Block_object_dispose(v16, 8);
}

- (void)_registerDeviceWithCause:(id)cause includeKeys:(unint64_t)keys
{
  causeCopy = cause;
  essentialServerInfoMissingError = [(FindBaseServiceProvider *)self essentialServerInfoMissingError];
  if (essentialServerInfoMissingError == 1196379972)
  {
    v7 = [[FMRequestRegister alloc] initWithProvider:self andCause:causeCopy];
    registrationInformationDigestIncludingKeys = [(FMRequestRegister *)v7 registrationInformationDigestIncludingKeys];
    _registerDigestPrefKey = [(FindBaseServiceProvider *)self _registerDigestPrefKey];
    if (qword_100070128 && (v10 = [qword_100070128 isEqualToData:registrationInformationDigestIncludingKeys], v10))
    {
      v11 = sub_100002830(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID = [(FindBaseServiceProvider *)self fm_logID];
        *buf = 138412546;
        v50 = fm_logID;
        v51 = 2112;
        v52 = causeCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Not sending register with cause %@ because there is already another register with the same registration information in-progress", buf, 0x16u);
      }
    }

    else
    {
      v23 = [FMPreferencesUtil dataForKey:_registerDigestPrefKey inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
      v11 = v23;
      if (v23)
      {
        v23 = [v23 isEqualToData:registrationInformationDigestIncludingKeys];
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v27 = sub_100002830(v23);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v50) = v24;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Reg-info matching complete. Essentitial info matches - [%i]", buf, 8u);
      }

      if (v24)
      {
        if (-[FindBaseServiceProvider completedStartupRegister](self, "completedStartupRegister") || (+[FMFLocatorDaemon sharedInstance](FMFLocatorDaemon, "sharedInstance"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 isFirstRunAfterBoot], v29, !v30))
        {
          completedStartupRegister = [(FindBaseServiceProvider *)self completedStartupRegister];
          if ((completedStartupRegister & 1) != 0 || (+[StartupRegisterManager sharedInstance](StartupRegisterManager, "sharedInstance"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 shouldForceRegisterOnStartup], v34, !v35))
          {
            v41 = sub_100002830(completedStartupRegister);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v50 = causeCopy;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Reg-info unchanged. Ignoring register %@", buf, 0xCu);
            }

            goto LABEL_41;
          }

          v32 = sub_100002830(completedStartupRegister);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v36 = +[StartupRegisterManager sharedInstance];
            *buf = 138412546;
            v50 = causeCopy;
            v51 = 2112;
            v52 = v36;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Reg-info unchanged but forcing register %@ due to %@", buf, 0x16u);
          }
        }

        else
        {
          v32 = sub_100002830(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v50 = causeCopy;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Reg-info unchanged but forcing register %@", buf, 0xCu);
          }
        }
      }

      v37 = sub_100002830(v28);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID2 = [(FindBaseServiceProvider *)self fm_logID];
        *buf = 138412546;
        v50 = fm_logID2;
        v51 = 2112;
        v52 = causeCopy;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@ Sending register with cause %@ because registration information has changed", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10000F90C;
      v47[3] = &unk_10005D498;
      v39 = registrationInformationDigestIncludingKeys;
      v48 = v39;
      [(FMRequest *)v7 setWillSendHandler:v47];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10000F91C;
      v42[3] = &unk_10005D6B8;
      objc_copyWeak(&v46, buf);
      v43 = v39;
      v44 = _registerDigestPrefKey;
      selfCopy = self;
      [(FMRequest *)v7 setCompletionHandler:v42];
      if (![(FindBaseServiceProvider *)self enqueueRequest:v7])
      {
        v40 = qword_100070128;
        qword_100070128 = 0;
      }

      objc_destroyWeak(&v46);
      objc_destroyWeak(buf);
    }

LABEL_41:

    goto LABEL_42;
  }

  v13 = essentialServerInfoMissingError;
  v14 = sub_100002830(essentialServerInfoMissingError);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID3 = [(FindBaseServiceProvider *)self fm_logID];
    v16 = [CommonUtil stringForFourCC:v13];
    *buf = 138412802;
    v50 = fm_logID3;
    v51 = 2112;
    v52 = causeCopy;
    v53 = 2112;
    v54 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: Not sending register with cause %@ to server since some essential server info is missing - '%@'", buf, 0x20u);
  }

  v17 = v13 == 1480675411;
  v18 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v18 isInternalBuild];

  if (v17)
  {
    if (isInternalBuild)
    {
      v21 = sub_100002830(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        serviceName = [(FindBaseServiceProvider *)self serviceName];
        *buf = 138412290;
        v50 = serviceName;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ is not functional as an APS token is not available.", buf, 0xCu);
      }
    }
  }

  else
  {
    if (isInternalBuild)
    {
      v25 = sub_100002830(v20);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        serviceName2 = [(FindBaseServiceProvider *)self serviceName];
        *buf = 138412290;
        v50 = serviceName2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ is not functional as authentication credentials are not available.", buf, 0xCu);
      }
    }

    [(FindBaseServiceProvider *)self tryToFetchAuthToken];
  }

LABEL_42:
}

- (void)unregisterDevice
{
  v3 = [[FMRequestUnregister alloc] initWithProvider:self];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000FCBC;
  v4[3] = &unk_10005D498;
  v4[4] = self;
  [(FMRequest *)v3 setCompletionHandler:v4];
  [(FindBaseServiceProvider *)self enqueueRequest:v3];
}

- (void)sendQueueCheckRequest:(id)request withReasons:(id)reasons
{
  requestCopy = request;
  [(FindBaseServiceProvider *)self _beginXPCTransaction];
  v6 = [[FMRequestQueueCheck alloc] initWithProvider:self andServerContext:requestCopy];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000100EC;
  v7[3] = &unk_10005D498;
  v7[4] = self;
  [(FMRequest *)v6 setCompletionHandler:v7];
  [(FindBaseServiceProvider *)self enqueueRequest:v6];

  [(FindBaseServiceProvider *)self _endXPCTransaction];
}

- (void)sendCurrentLocation:(id)location isFinished:(BOOL)finished forCmd:(id)cmd withReason:(int64_t)reason andAccuracyChange:(double)change
{
  finishedCopy = finished;
  locationCopy = location;
  cmdCopy = cmd;
  v14 = sub_100002830(cmdCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100036F04(self, v14);
  }

  v16 = sub_10001BA58(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    serviceName = [(FindBaseServiceProvider *)self serviceName];
    [locationCopy horizontalAccuracy];
    v19 = v18;
    [locationCopy coordinate];
    v21 = v20;
    [locationCopy coordinate];
    *buf = 138413059;
    v28 = serviceName;
    v29 = 2049;
    v30 = v19;
    v31 = 2049;
    v32 = v21;
    v33 = 2049;
    v34 = v22;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@: Publishing Location with Accuracy: %{private}f Longitude: %{private}f Latitude: %{private}f", buf, 0x2Au);
  }

  v23 = [[FMRequestCurrentLocation alloc] initWithProvider:self location:locationCopy finalLocation:finishedCopy locateCommand:cmdCopy reason:reason accuracyChange:change];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100010594;
  v26[3] = &unk_10005D498;
  v26[4] = self;
  [(FMRequest *)v23 setCompletionHandler:v26];
  ct_green_tea_logger_create_static();
  v24 = getCTGreenTeaOsLogHandle();
  v25 = v24;
  if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Transmitting Location.", buf, 2u);
  }

  [(FindBaseServiceProvider *)self enqueueRequest:v23];
}

- (void)ackRegisterCommand:(id)command withCompletion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v8 = [commandCopy objectForKeyedSubscript:@"ackURL"];
  if (v8)
  {
    v9 = [NSURL URLWithString:v8];
    v10 = [[FMRequestAckRegister alloc] initWithProvider:self registerCommand:commandCopy ackURL:v9];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000108FC;
    v15 = &unk_10005D4C0;
    selfCopy = self;
    v17 = completionCopy;
    [(FMRequest *)v10 setCompletionHandler:&v12];
    [(FindBaseServiceProvider *)self enqueueRequest:v10, v12, v13, v14, v15, selfCopy];
  }

  else
  {
    v9 = sub_100002830(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      serviceName = [(FindBaseServiceProvider *)self serviceName];
      *buf = 138412290;
      v19 = serviceName;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: Not acking the register command because there is no ack URL", buf, 0xCu);
    }
  }
}

- (void)ackLocateCommand:(id)command withStatusCode:(int64_t)code andStatusMessage:(id)message withCompletion:(id)completion
{
  commandCopy = command;
  messageCopy = message;
  completionCopy = completion;
  v13 = [commandCopy objectForKeyedSubscript:@"ackURL"];
  if (v13)
  {
    v14 = [NSURL URLWithString:v13];
    v15 = [[FMRequestAckLocate alloc] initWithProvider:self locateCommand:commandCopy ackURL:v14 cmdStatusCode:code cmdStatusMessage:messageCopy];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100010CBC;
    v20 = &unk_10005D4C0;
    selfCopy = self;
    v22 = completionCopy;
    [(FMRequest *)v15 setCompletionHandler:&v17];
    [(FindBaseServiceProvider *)self enqueueRequest:v15, v17, v18, v19, v20, selfCopy];
  }

  else
  {
    v14 = sub_100002830(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      serviceName = [(FindBaseServiceProvider *)self serviceName];
      *buf = 138412290;
      v24 = serviceName;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@: Not acking the locate command because there is no ack URL", buf, 0xCu);
    }
  }
}

- (void)handleQueueCheckResponseWithStatus:(int64_t)status andBody:(id)body
{
  bodyCopy = body;
  v7 = bodyCopy;
  if (bodyCopy && [bodyCopy count])
  {
    v8 = [v7 objectForKeyedSubscript:@"cmd"];
    v9 = sub_100002830(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = [(FindBaseServiceProvider *)self serviceName];
      v23 = 138412546;
      v24 = serviceName;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Command Received: %@", &v23, 0x16u);
    }

    v11 = [(FindBaseServiceProvider *)self copyHandlerForCommand:v8 params:v7];
    v12 = v11;
    if (v11)
    {
      v13 = sub_100002830([v11 executeCommand]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        serviceName2 = [(FindBaseServiceProvider *)self serviceName];
        v23 = 138412546;
        v24 = serviceName2;
        v25 = 2112;
        v26 = v8;
        v15 = "%@: Successfully finished command %@";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, &v23, 0x16u);
      }
    }

    else
    {
      v13 = sub_100002830(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        serviceName2 = [(FindBaseServiceProvider *)self serviceName];
        v23 = 138412546;
        v24 = serviceName2;
        v25 = 2112;
        v26 = v8;
        v15 = "%@: No handler found for command %@";
        goto LABEL_11;
      }
    }

    v16 = +[StartupRegisterManager sharedInstance];
    [v16 eventDidOccur:8];

    if (status == 210 || status == 204)
    {
      v18 = sub_100002830(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        serviceName3 = [(FindBaseServiceProvider *)self serviceName];
        v23 = 138412290;
        v24 = serviceName3;
        v22 = "%@: No more pending messages on the server...";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v22, &v23, 0xCu);
      }
    }

    else
    {
      if (status != 200)
      {
LABEL_23:

        goto LABEL_24;
      }

      v18 = sub_100002830(v17);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (v12)
      {
        if (v19)
        {
          serviceName4 = [(FindBaseServiceProvider *)self serviceName];
          v23 = 138412290;
          v24 = serviceName4;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%@: More messages pending - checking now...", &v23, 0xCu);
        }

        [(FindBaseServiceProvider *)self sendQueueCheckRequest:0];
        goto LABEL_23;
      }

      if (v19)
      {
        serviceName3 = [(FindBaseServiceProvider *)self serviceName];
        v23 = 138412290;
        v24 = serviceName3;
        v22 = "%@: Not checking for new messages - previous command was not successful or duplicate";
        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  v8 = +[StartupRegisterManager sharedInstance];
  [v8 eventDidOccur:8];
LABEL_24:
}

- (BOOL)isProviderEnabledForLocations
{
  v3 = sub_100002830(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FindBaseServiceProvider *)self fm_logID];
    v6 = 138412290;
    v7 = fm_logID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ isProviderEnabledForLocations should be handled in a subclass", &v6, 0xCu);
  }

  return 0;
}

- (unsigned)essentialServerInfoMissingError
{
  authInvalidError = [(FindBaseServiceProvider *)self authInvalidError];
  if (authInvalidError == 1196379972)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    apsToken = [(FindBaseServiceProvider *)selfCopy apsToken];

    if (apsToken)
    {
      authInvalidError = 1196379972;
    }

    else
    {
      authInvalidError = 1480675411;
    }

    objc_sync_exit(selfCopy);
  }

  return authInvalidError;
}

- (unsigned)authInvalidError
{
  account = [(ServiceProvider *)self account];

  if (!account)
  {
    return 1480672067;
  }

  account2 = [(ServiceProvider *)self account];
  username = [account2 username];
  v6 = [username length];

  if (!v6)
  {
    return 1481986898;
  }

  account3 = [(ServiceProvider *)self account];
  authToken = [account3 authToken];
  v9 = [authToken length];

  if (!v9)
  {
    return 1481920331;
  }

  account4 = [(ServiceProvider *)self account];
  authId = [account4 authId];
  v12 = [authId length];

  if (v12)
  {
    return 1196379972;
  }

  else
  {
    return 1482639684;
  }
}

- (void)tryToFetchAuthToken
{
  account = [(ServiceProvider *)self account];
  authToken = [account authToken];
  [authToken length];
}

- (id)copyHandlerForCommand:(id)command params:(id)params
{
  v4 = sub_100002830(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Base copyHandlerForCommand should not be called", v6, 2u);
  }

  return 0;
}

- (void)showAlertFromServerResponse:(id)response
{
  responseCopy = response;
  v4 = sub_100002830(responseCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100036F9C(responseCopy, v4);
  }

  v5 = [responseCopy objectForKeyedSubscript:@"title"];
  v30 = [responseCopy objectForKeyedSubscript:@"text"];
  v29 = [responseCopy objectForKeyedSubscript:@"okButtonTitle"];
  v6 = [responseCopy objectForKeyedSubscript:@"okButtonURL"];
  v7 = [responseCopy objectForKeyedSubscript:@"okButtonAction"];
  v8 = [responseCopy objectForKeyedSubscript:@"cancelButtonTitle"];
  v9 = [responseCopy objectForKeyedSubscript:@"cancelButtonURL"];
  v10 = [responseCopy objectForKeyedSubscript:@"cancelButtonAction"];
  v11 = [responseCopy objectForKeyedSubscript:@"delay"];
  [v11 doubleValue];
  v13 = v12;

  if (v5)
  {
    v14 = objc_alloc_init(FMAlert);
    [v14 setCategory:qword_10006FAF8];
    [v14 setMsgTitle:v5];
    [v14 setMsgText:v30];
    [v14 setShowMsgInLockScreen:1];
    [v14 setDismissMsgOnUnlock:0];
    [v14 setDismissMsgOnLock:0];
    [v14 setDefaultButtonTitle:v29];
    if (v6)
    {
      v15 = v7 == 0;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v7 = @"open-url";
    }

    if (v9)
    {
      v16 = v10 == 0;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v10 = @"open-url";
    }

    if (v7)
    {
      v17 = [(FindBaseServiceProvider *)self alertActionInfoForAction:v7 andURL:v6];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100011A54;
      v36[3] = &unk_10005D6E0;
      v37 = v7;
      v38 = v17;
      v18 = v17;
      [v14 setDefaultButtonAction:v36];
    }

    v27 = v8;
    [v14 setAlternateButtonTitle:v8];
    if (v10)
    {
      v19 = [(FindBaseServiceProvider *)self alertActionInfoForAction:v10 andURL:v9];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100011B0C;
      v33[3] = &unk_10005D6E0;
      v34 = v10;
      v35 = v19;
      v20 = v19;
      [v14 setAlternateButtonAction:v33];
    }

    defaultButtonTitle = [v14 defaultButtonTitle];
    if (defaultButtonTitle)
    {
    }

    else
    {
      alternateButtonTitle = [v14 alternateButtonTitle];

      if (!alternateButtonTitle)
      {
        v26 = sub_100002830(v22);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Received a server alert without an button. Not showing it", buf, 2u);
        }

        goto LABEL_26;
      }
    }

    if (v13 <= 0.0)
    {
      v26 = +[FMAlertManager sharedInstance];
      [v26 activateAlert:v14];
    }

    else
    {
      v24 = sub_100002830(v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v40 = v13;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Showing alert after %.2f seconds...", buf, 0xCu);
      }

      v25 = dispatch_time(0, (v13 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100011BC4;
      block[3] = &unk_10005D2B0;
      v32 = v14;
      dispatch_after(v25, &_dispatch_main_q, block);
      v26 = v32;
    }

LABEL_26:

    v8 = v27;
  }
}

- (id)alertActionInfoForAction:(id)action andURL:(id)l
{
  actionCopy = action;
  lCopy = l;
  if ([actionCopy isEqualToString:@"appleid"])
  {

    lCopy = @"prefs:root=APPLE_ACCOUNT";
    v7 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT"];
    v19[0] = @"url";
    v19[1] = @"sensitive";
    v20[0] = v7;
    v20[1] = &__kCFBooleanTrue;
    v8 = v20;
    v9 = v19;
LABEL_10:
    v11 = [NSDictionary dictionaryWithObjects:v8 forKeys:v9 count:2];

    goto LABEL_11;
  }

  if ([actionCopy isEqualToString:@"settings"])
  {

    lCopy = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE";
    v7 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
    v17[0] = @"url";
    v17[1] = @"sensitive";
    v18[0] = v7;
    v18[1] = &__kCFBooleanTrue;
    v8 = v18;
    v9 = v17;
    goto LABEL_10;
  }

  if ([actionCopy isEqualToString:@"sml-settings"])
  {

    lCopy = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/LOCATION_SHARING";
    v7 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/LOCATION_SHARING"];
    v15[0] = @"url";
    v15[1] = @"sensitive";
    v16[0] = v7;
    v16[1] = &__kCFBooleanTrue;
    v8 = v16;
    v9 = v15;
    goto LABEL_10;
  }

  v10 = [actionCopy isEqualToString:@"open-url"];
  v11 = 0;
  if (lCopy && v10)
  {
    v7 = [NSURL URLWithString:lCopy];
    v13[0] = @"url";
    v13[1] = @"sensitive";
    v14[0] = v7;
    v14[1] = &__kCFBooleanFalse;
    v8 = v14;
    v9 = v13;
    goto LABEL_10;
  }

LABEL_11:

  return v11;
}

- (void)appInstallStateChanged:(id)changed
{
  v4 = sub_10001BB68(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMFAppStateObserver", v5, 2u);
  }

  [(FindBaseServiceProvider *)self registerDeviceWithCause:@"AppStateChanged"];
}

- (BOOL)enqueueRequest:(id)request
{
  requestCopy = request;
  allowServerRequests = [(FindBaseServiceProvider *)self allowServerRequests];
  v32 = allowServerRequests;
  if (allowServerRequests)
  {
    selfCopy = self;
    requestModifierLock = [(FindBaseServiceProvider *)self requestModifierLock];
    [requestModifierLock lock];

    v7 = sub_100002830(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [(FindBaseServiceProvider *)selfCopy fm_logID];
      fm_logID2 = [requestCopy fm_logID];
      *buf = 138412546;
      v44 = fm_logID;
      v45 = 2112;
      v46 = fm_logID2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Enqueueing request %@", buf, 0x16u);
    }

    [requestCopy setDelegate:selfCopy];
    v10 = +[NSMutableArray array];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    requests = [(FindBaseServiceProvider *)selfCopy requests];
    v12 = [requests countByEnumeratingWithState:&v39 objects:v50 count:16];
    if (v12)
    {
      v13 = *v40;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v40 != v13)
          {
            objc_enumerationMutation(requests);
          }

          v15 = *(*(&v39 + 1) + 8 * i);
          if ([requestCopy canReplace:v15])
          {
            [v10 addObject:v15];
          }
        }

        v12 = [requests countByEnumeratingWithState:&v39 objects:v50 count:16];
      }

      while (v12);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = v10;
    cancel = [v16 countByEnumeratingWithState:&v35 objects:v49 count:16];
    v18 = cancel;
    if (cancel)
    {
      v19 = *v36;
      do
      {
        v20 = 0;
        do
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v35 + 1) + 8 * v20);
          v22 = sub_100002830(cancel);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            fm_logID3 = [(FindBaseServiceProvider *)selfCopy fm_logID];
            fm_logID4 = [v21 fm_logID];
            fm_logID5 = [requestCopy fm_logID];
            *buf = 138412802;
            v44 = fm_logID3;
            v45 = 2112;
            v46 = fm_logID4;
            v47 = 2112;
            v48 = fm_logID5;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%@ Discarding %@ because a newer request %@ can replace this one", buf, 0x20u);
          }

          cancel = [v21 cancel];
          v20 = v20 + 1;
        }

        while (v18 != v20);
        cancel = [v16 countByEnumeratingWithState:&v35 objects:v49 count:16];
        v18 = cancel;
      }

      while (cancel);
    }

    requests2 = [(FindBaseServiceProvider *)selfCopy requests];
    [requests2 addObject:requestCopy];

    [requestCopy send];
    requestModifierLock2 = [(FindBaseServiceProvider *)selfCopy requestModifierLock];
    [requestModifierLock2 unlock];
  }

  else
  {
    v28 = sub_100002830(allowServerRequests);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      fm_logID6 = [(FindBaseServiceProvider *)self fm_logID];
      fm_logID7 = [requestCopy fm_logID];
      *buf = 138412546;
      v44 = fm_logID6;
      v45 = 2112;
      v46 = fm_logID7;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%@: Not sending request %@ to server since the provider is not allowing server requests", buf, 0x16u);
    }
  }

  return v32;
}

- (void)didReceiveResponseFor:(id)for
{
  forCopy = for;
  if ([forCopy responseErrorType] == 257)
  {
    [(FindBaseServiceProvider *)self didReceiveAuthFailureForRequest:forCopy];
  }

  alertFromServerResponse = [forCopy alertFromServerResponse];

  if (alertFromServerResponse)
  {
    alertFromServerResponse2 = [forCopy alertFromServerResponse];
    [(FindBaseServiceProvider *)self showAlertFromServerResponse:alertFromServerResponse2];
  }

  willRetry = [forCopy willRetry];
  if ((willRetry & 1) == 0)
  {
    v8 = sub_100002830(willRetry);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      fm_logID = [(FindBaseServiceProvider *)self fm_logID];
      fm_logID2 = [forCopy fm_logID];
      v14 = 138412546;
      v15 = fm_logID;
      v16 = 2112;
      v17 = fm_logID2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ Removing request %@ from the queue as it was completed or it exhausted its retries", &v14, 0x16u);
    }

    requestModifierLock = [(FindBaseServiceProvider *)self requestModifierLock];
    [requestModifierLock lock];

    [forCopy deinitializeRequest];
    requests = [(FindBaseServiceProvider *)self requests];
    [requests removeObject:forCopy];

    requestModifierLock2 = [(FindBaseServiceProvider *)self requestModifierLock];
    [requestModifierLock2 unlock];
  }
}

- (void)didCancelRequest:(id)request
{
  requestCopy = request;
  v5 = sub_100002830(requestCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    fm_logID = [(FindBaseServiceProvider *)self fm_logID];
    fm_logID2 = [requestCopy fm_logID];
    v11 = 138412546;
    v12 = fm_logID;
    v13 = 2112;
    v14 = fm_logID2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ Removing request %@ from the queue as it was cancelled", &v11, 0x16u);
  }

  requestModifierLock = [(FindBaseServiceProvider *)self requestModifierLock];
  [requestModifierLock lock];

  [requestCopy deinitializeRequest];
  requests = [(FindBaseServiceProvider *)self requests];
  [requests removeObject:requestCopy];

  requestModifierLock2 = [(FindBaseServiceProvider *)self requestModifierLock];
  [requestModifierLock2 unlock];
}

- (void)_beginXPCTransaction
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 beginTransaction:v6];
}

- (void)_endXPCTransaction
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 endTransaction:v6];
}

@end